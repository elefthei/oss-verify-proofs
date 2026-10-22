#!/bin/bash
# tests/check.sh: run the proof check CI runs (docs/checking.md) on the controls.
#
#   ./tests/check.sh [--rocqchk] [--full]   (from the repository root, in the
#                                            checker image, after `dune build`)
#
# For each control it
#   1. compiles the candidate proof on its own, against the .vo files that
#      `dune build` made from this tree (in CI: from the base branch);
#   2. writes and compiles a wrapper that ascribes the candidate's theorem to
#      the statement it claims, and prints what the result assumes:
#        Definition certified : <Statements>.<statement> := <Proof>.<theorem>.
#        Print Assumptions certified.
#   3. requires every entry Print Assumptions lists to be an axiom in
#      toolchain/allowed-axioms.txt; anything else it lists (an inductive
#      assumed positive, a fixpoint assumed guarded, an unsafe hierarchy,
#      definitional UIP, a change to the logic) is refused, as `oft check`
#      refuses it (tools/oft/check.py, wrapper_assumptions).
# With --rocqchk it also runs rocqchk, an independent re-check that is not part
# of the verdict, on the wrapper, the candidate's libraries and every library of
# this repository (the installed toolchain libraries are loaded by digest), and
# requires the candidate's libraries to declare no axiom at all, used or not.
# --full implies --rocqchk and then runs rocqchk once more over the whole
# closure of every positive control, installed libraries included, and
# requires every axiom it reports to be in toolchain/allowed-axioms.txt
# (slower, because it checks linux-process-semantics again).
#
# Every proof under tests/proofs/ must pass.  Every directory under
# tests/negative/ must be refused, at the step and for the reason its
# claim.yaml names; a negative control refused for any other reason is a
# broken control and fails this script.  So does a run that checked nothing.
set -euo pipefail

FULL=0; ROCQCHK=0
for a in "$@"; do
  case "$a" in
    --rocqchk) ROCQCHK=1 ;;
    --full) ROCQCHK=1; FULL=1 ;;
    *) echo "usage: tests/check.sh [--rocqchk] [--full]"; exit 2 ;;
  esac
done
ROOT="$(pwd)"
B="$ROOT/_build/default"
ALLOW="$ROOT/toolchain/allowed-axioms.txt"
for f in "$B/theories/Shapes.vo" "$B/tests/toy/exit0/Statements.vo" "$ALLOW"; do
  [ -e "$f" ] || { echo "check.sh: missing $f (run from the repository root after dune build)"; exit 2; }
done
[ -s "$ALLOW" ] || { echo "check.sh: $ALLOW is empty"; exit 2; }
WORK="$(mktemp -d)"
ulimit -s unlimited 2> /dev/null || true

BASE_Q=(-Q "$B/theories" OssFuzzTheorems.Core -Q "$B/tests" OssFuzzTheorems.Tests)
ROCQ=(rocq compile -native-compiler no)
# rocqchk (--rocqchk, --full) checks without its bytecode machine: rocq-core
# 9.2.0's rocqchk refuses the machine code these libraries store
# (toolchain/checker.Dockerfile), and with the machine on it runs the bytecode
# stored in each .vo instead of compiling it from the checked terms.

yaml_field() {  # yaml_field FILE KEY: the value of a top-level `key: value` line
  sed -n "s/^$2: *//p" "$1" | head -1
}

# check LABEL SRC_DIR CLAIM THEOREM KIND [DOCTORED_STATEMENTS]
#   CLAIM is <project>/<harness>/<statement>, KIND is holds or refuted.
#   Prints the step at which the candidate was refused, or "pass".
check() {
  local label="$1" src="$2" claim="$3" thm="$4" kind="$5" doctored="${6:-}"
  local d="$WORK/$label" project harness stmt stmt_mod root main
  project="${claim%%/*}"; stmt="${claim##*/}"; harness="${claim#*/}"; harness="${harness%/*}"
  stmt_mod="OssFuzzTheorems.Tests.$project.$harness.Statements"
  root="Candidate.$label"
  mkdir -p "$d/cand" "$d/wrap"
  cp -- "$src"/*.v "$d/cand/"
  [ ! -e "$d/cand/Statements.v" ] || mv -- "$d/cand/Statements.v" "$d/doctored.v"

  # 1. the candidate, compiled against the base (or, for the doctored-statement
  #    control, against a copy of the base whose statements were replaced).
  local cand_q=("${BASE_Q[@]}")
  if [ -n "$doctored" ]; then
    mkdir -p "$d/base"
    cp -r -- "$B/tests" "$d/base/tests"
    chmod -R u+w -- "$d/base/tests"
    cp -- "$d/doctored.v" "$d/base/tests/$project/$harness/Statements.v"
    "${ROCQ[@]}" -Q "$B/theories" OssFuzzTheorems.Core -Q "$d/base/tests" OssFuzzTheorems.Tests \
      "$d/base/tests/$project/$harness/Statements.v" > "$d/doctored.log" 2>&1 \
      || { echo "setup"; return; }
    cand_q=(-Q "$B/theories" OssFuzzTheorems.Core -Q "$d/base/tests" OssFuzzTheorems.Tests)
  fi
  main="Proof"; [ "$kind" = holds ] || main="Refutation"
  [ -e "$d/cand/$main.v" ] || { echo "compile"; return; }
  local f
  for f in $(cd "$d/cand" && rocq dep -sort -Q . "$root" ./*.v); do
    "${ROCQ[@]}" "${cand_q[@]}" -Q "$d/cand" "$root" "$d/cand/${f#./}" >> "$d/compile.log" 2>&1 \
      || { echo "compile"; return; }
  done

  # 2. the wrapper, always against the base.
  {
    echo "Require $stmt_mod."
    echo "Require $root.$main."
    if [ "$kind" = holds ]; then
      echo "Definition certified : $stmt_mod.$stmt := $root.$main.$thm."
    else
      echo "Definition certified : ~ $stmt_mod.$stmt := $root.$main.$thm."
    fi
    echo "Set Printing Fully Qualified."
    echo "Print Assumptions certified."
  } > "$d/wrap/Wrapper.v"
  "${ROCQ[@]}" "${BASE_Q[@]}" -Q "$d/cand" "$root" -Q "$d/wrap" "Wrap.$label" "$d/wrap/Wrapper.v" \
    > "$d/wrapper.log" 2>&1 || { echo "wrapper"; return; }

  # 3. the assumptions, in the form Rocq 9.2.0 prints them: "Closed under the
  #    global context", or sections ("Axioms:", "Theory:", ...) whose entries
  #    start at column 0.  Under "Axioms:" an axiom is "<name> : <type>";
  #    every other entry is refused.  Nothing parsed is not nothing assumed.
  : > "$d/assumptions.txt"
  : > "$d/outside.txt"
  if ! grep -qx 'Closed under the global context' "$d/wrapper.log"; then
    awk '/^(Transparent constants|Section Variables|Axioms|Opaque constants|Theory):$/ { s = $0; next }
         s == "" { next }
         /^$/ { exit }
         /^[ \t]/ { next }
         s == "Axioms:" && (/^[^ ]+ :$/ || /^[^ ]+ : /) { print "axiom " $1; next }
         { print "other " (s == "Axioms:" ? "" : s " ") $0 }' "$d/wrapper.log" > "$d/entries.txt"
    [ -s "$d/entries.txt" ] || { echo "wrapper"; return; }
    { grep '^axiom ' "$d/entries.txt" || true; } | cut -d' ' -f2 | LC_ALL=C sort -u > "$d/assumptions.txt"
    { grep '^other ' "$d/entries.txt" || true; } | cut -d' ' -f2- > "$d/outside.txt"
  fi
  grep -v '^#' "$ALLOW" | LC_ALL=C sort -u > "$d/allowed.txt"
  LC_ALL=C comm -23 "$d/assumptions.txt" "$d/allowed.txt" >> "$d/outside.txt"

  # 4. (--rocqchk) rocqchk: every library of this repository and of the
  #    candidate is checked (-norec each); the installed ones are loaded by
  #    digest.  The candidate's libraries may declare no axiom, used or not.
  if [ "$ROCQCHK" = 1 ]; then
    local norec=() m
    for m in "${OWN[@]}"; do norec+=(-norec "$m"); done
    for f in $(cd "$d/cand" && find . -name '*.vo' -printf '%P\n' | LC_ALL=C sort); do
      m="${f%.vo}"; norec+=(-norec "$root.${m//\//.}")
    done
    rocqchk -o -bytecode-compiler no "${BASE_Q[@]}" -Q "$d/cand" "$root" -Q "$d/wrap" "Wrap.$label" \
      "${norec[@]}" -norec "Wrap.$label.Wrapper" > "$d/rocqchk.log" 2>&1 || { echo "rocqchk"; return; }
    grep -q 'Modules were successfully checked' "$d/rocqchk.log" || { echo "rocqchk"; return; }
    grep -q "^Checking library: $root.$main" "$d/rocqchk.log" || { echo "rocqchk"; return; }
    grep -A1000000 'CONTEXT SUMMARY' "$d/rocqchk.log" | sed -n '/\* Axioms:/,/\* Constants/p' \
      | sed 's/^ *//' | grep -F -- "$root." >> "$d/outside.txt" || true
  fi
  [ ! -s "$d/outside.txt" ] || { echo "axioms"; return; }
  echo "pass"
}

# This repository's libraries, as built from this tree.
mapfile -t OWN < <(
  { (cd "$B/theories" && find . -name '*.vo' -printf 'OssFuzzTheorems.Core.%P\n')
    (cd "$B/tests" && find . -name '*.vo' -printf 'OssFuzzTheorems.Tests.%P\n'); } \
  | sed 's/\.vo$//; s#/#.#g' | LC_ALL=C sort)
[ "${#OWN[@]}" -gt 3 ] || { echo "check.sh: found only ${#OWN[@]} compiled libraries"; exit 2; }

fail=0; passed=0; refused=0

# The positive controls: every Proof.v and Refutation.v under tests/proofs/.
mapfile -t POS < <(find "$ROOT/tests/proofs" -name 'Proof.v' -o -name 'Refutation.v' | LC_ALL=C sort)
[ "${#POS[@]}" -gt 0 ] || { echo "check.sh: no positive controls found"; exit 1; }
for f in "${POS[@]}"; do
  dir="$(dirname -- "$f")"; rel="${dir#"$ROOT"/tests/proofs/}"
  stmt="${rel##*/}"
  if [ "$(basename -- "$f")" = Proof.v ]; then kind=holds; thm="${stmt}_holds"; else kind=refuted; thm="${stmt}_refuted"; fi
  label="pos_$(echo "$rel" | tr '/-' '__')_$kind"
  got="$(check "$label" "$dir" "$rel" "$thm" "$kind")"
  if [ "$got" = pass ]; then
    passed=$((passed + 1)); echo "PASS    $rel ($kind)"
  else
    fail=1; echo "FAIL    $rel ($kind): refused at $got; see $WORK/$label"
  fi
done

# The negative controls.
mapfile -t NEG < <(find "$ROOT/tests/negative" -mindepth 1 -maxdepth 1 -type d | LC_ALL=C sort)
[ "${#NEG[@]}" -gt 0 ] || { echo "check.sh: no negative controls found"; exit 1; }
for dir in "${NEG[@]}"; do
  name="$(basename -- "$dir")"; y="$dir/claim.yaml"
  [ -e "$y" ] || { fail=1; echo "BROKEN  negative/$name: no claim.yaml"; continue; }
  claim="$(yaml_field "$y" claims)"; thm="$(yaml_field "$y" theorem)"
  want="$(yaml_field "$y" refused_at)"; why="$(yaml_field "$y" because)"
  doctored=""; [ ! -e "$dir/Statements.v" ] || doctored=yes
  label="neg_$name"
  got="$(check "$label" "$dir" "$claim" "$thm" holds "$doctored")"
  d="$WORK/$label"
  case "$got" in
    wrapper) evidence="$d/wrapper.log" ;;
    axioms)  evidence="$d/outside.txt" ;;
    *)       evidence="" ;;
  esac
  if [ "$got" = "$want" ] && [ -n "$evidence" ] && grep -qF -- "$why" "$evidence"; then
    refused=$((refused + 1)); echo "REFUSED negative/$name at $got ($why)"
  elif [ "$got" = pass ]; then
    fail=1; echo "FAIL    negative/$name was ACCEPTED; see $d"
  else
    fail=1; echo "BROKEN  negative/$name refused at $got, expected $want because '$why'; see $d"
  fi
done

if [ "$FULL" = 1 ]; then
  # Every positive control's wrapper and candidate, and everything they need,
  # checked in one rocqchk run with nothing admitted.
  q=("${BASE_Q[@]}"); roots=()
  for d in "$WORK"/pos_*; do
    l="$(basename -- "$d")"
    q+=(-Q "$d/cand" "Candidate.$l" -Q "$d/wrap" "Wrap.$l"); roots+=("Wrap.$l.Wrapper")
  done
  if rocqchk -o -bytecode-compiler no "${q[@]}" "${roots[@]}" > "$WORK/full.log" 2>&1 \
     && grep -q 'Modules were successfully checked' "$WORK/full.log"; then
    grep -A1000000 'CONTEXT SUMMARY' "$WORK/full.log" | sed -n '/\* Axioms:/,/\* Constants/p' \
      | sed '1d;$d' | sed 's/^ *//' | grep -v -e '^<none>$' -e '^$' | LC_ALL=C sort -u > "$WORK/full-axioms.txt"
    grep -v '^#' "$ALLOW" | LC_ALL=C sort -u > "$WORK/allowed.txt"
    LC_ALL=C comm -23 "$WORK/full-axioms.txt" "$WORK/allowed.txt" > "$WORK/full-outside.txt"
    if [ -s "$WORK/full-axioms.txt" ] && [ ! -s "$WORK/full-outside.txt" ]; then
      echo "FULL    rocqchk over the whole closure: $(grep -c '^Checking library' "$WORK/full.log") libraries, $(wc -l < "$WORK/full-axioms.txt") axioms, all allowed"
    else
      fail=1; echo "FAIL    full closure: axioms outside the allowlist (or none parsed); see $WORK/full-outside.txt"
    fi
  else
    fail=1; echo "FAIL    full closure: rocqchk failed; see $WORK/full.log"
  fi
fi

echo "positive controls passed: $passed of ${#POS[@]}; negative controls refused as claimed: $refused of ${#NEG[@]}"
[ "$passed" -eq "${#POS[@]}" ] && [ "$refused" -eq "${#NEG[@]}" ] || fail=1
[ "$fail" = 0 ] && echo "check.sh: all controls behave" || echo "check.sh: FAILED (work files kept in $WORK)"
exit "$fail"
