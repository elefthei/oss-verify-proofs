#!/usr/bin/env bash
# liveness/check.sh EVIDENCE [LIBRARY...]
#
# The one shared liveness gate.  For each LIBRARY it first checks the
# published ELFs against their pinned SHA-256s.  It then loads the installed
# proof stack in one closure (LinuxProcessSemantics.Liveness of
# rocq-linux-process-semantics-liveness, with TICL and CTrees) and records
# the assumptions of its theorems and the hashes of every library it
# resolved, in the fresh empty directory EVIDENCE.  Finally it builds every
# published harness's Images.vo.  Validation only: never installs,
# downloads or repairs anything.
# Run it in the selected switch, e.g.
#   env -u COQPATH -u ROCQPATH opam exec --switch=lps-ctree -- bash liveness/check.sh DIR zlib
set -euo pipefail
unset COQPATH ROCQPATH
here=$(cd -- "$(dirname -- "$0")" && pwd)
root=$(dirname -- "$here")
die() { echo "liveness/check.sh: $*" >&2; exit 1; }

[ $# -ge 1 ] || die "usage: liveness/check.sh EVIDENCE [LIBRARY...]"
evidence=$1; shift
[ -d "$evidence" ] || die "evidence directory missing: $evidence"
[ -z "$(ls -A -- "$evidence")" ] || die "evidence directory is not empty: $evidence"
evidence=$(cd -- "$evidence" && pwd)
for cmd in rocq dune opam python3 sha256sum; do
  command -v "$cmd" >/dev/null || die "missing command: $cmd"
done

# step NAME CMD...: stream CMD's output, keep it in NAME.log, record the exit status.
step() {
  local name=$1 status; shift
  printf '$ %s\n' "$*" >>"$evidence/commands.log"
  set +e; "$@" 2>&1 | tee "$evidence/$name.log"; status=${PIPESTATUS[0]}; set -e
  printf 'exit %d\n' "$status" >>"$evidence/commands.log"
  [ "$status" -eq 0 ] || die "$name failed (exit $status); see $evidence/$name.log"
}

# `opam exec --switch=S` sets OPAM_SWITCH_PREFIX, not the switch `opam list` reports on.
switch=$(basename -- "${OPAM_SWITCH_PREFIX:?run under opam exec --switch=...}")
step provenance sh -c 'echo "switch $1"; rocq --version; rocq -where
  opam list --switch="$1" --installed --columns=name,installed-version,pin' sh "$switch"

if [ $# -gt 0 ]; then  # the asset gate first: missing or altered bytes fail before any compile
  cd -- "$root"
  step facts env PYTHONDONTWRITEBYTECODE=1 python3 - "$root" "$evidence/images.targets" "$@" <<'PY'
import os, sys
root, out, libraries = sys.argv[1], sys.argv[2], sys.argv[3:]
sys.path.insert(0, os.path.join(root, "tools"))
from oft import facts
tree = facts.load(root)
if tree.errors:
    sys.exit("fact errors:\n" + "\n".join(tree.errors))
targets = []
for name in libraries:
    project = tree.projects.get(name)
    if project is None:
        sys.exit("unknown library: " + name)
    published = sorted((h for h in project.harnesses.values() if h.builds()), key=lambda h: h.name)
    if not published:
        sys.exit("no published builds: " + name)
    for harness in sorted(project.harnesses.values(), key=lambda h: h.name):
        shown = [b for b, _ in harness.builds()]
        held = [b for b, _ in harness.builds(published_only=False) if b not in shown]
        print(harness.dir, "published:", " ".join(shown) or "-", "unpublished:", " ".join(held) or "-")
        if shown:
            if not os.path.isfile(os.path.join(root, harness.dir, "Images.v")):
                sys.exit("missing " + os.path.join(harness.dir, "Images.v"))
            targets.append(os.path.join(harness.dir, "Images.vo"))
with open(out, "w") as f:
    f.write("\n".join(targets) + "\n")
PY
  step verify-sha sh -c '"$0" verify-sha "$@" ||
    { echo "prepare the published assets outside the workflow: ./oft fetch $*"; exit 1; }' "$root/oft" "$@"
fi

cd -- "$evidence"
cat >Preflight.v <<'EOF'
(* Loads the installed liveness stack in one closure and records it. *)
From TICL Require Lang.CSL.Mod CTree.Interp.CSL.Mod.
From LinuxProcessSemantics.CTreeModel Require InfWitness Block.
From LinuxProcessSemantics.EquivalenceDefinition Require HaltsAllowed OmniEquivalence.
From LinuxProcessSemantics.Liveness Require AF Checks.

Locate Library Corelib.Init.Prelude.
Locate Library CTree.CTree.
Locate Library TICL.Logic.Semantics.
Locate Library TICL.CTree.Logic.Iter.
Locate Library TICL.Lang.CSL.Mod.
Locate Library TICL.CTree.Interp.CSL.Mod.
Locate Library LinuxProcessSemantics.CTreeModel.Proc.
Locate Library LinuxProcessSemantics.CTreeModel.Behavior.
Locate Library LinuxProcessSemantics.CTreeModel.RunRefine.
Locate Library LinuxProcessSemantics.CTreeModel.InfRefine.
Locate Library LinuxProcessSemantics.CTreeModel.InfWitness.
Locate Library LinuxProcessSemantics.CTreeModel.Block.
Locate Library LinuxProcessSemantics.EquivalenceDefinition.MustExit.
Locate Library LinuxProcessSemantics.EquivalenceDefinition.HaltsAllowed.
Locate Library LinuxProcessSemantics.EquivalenceDefinition.OmniEquivalence.
Locate Library LinuxProcessSemantics.Common.CatSim.
Locate Library LinuxProcessSemantics.Liveness.AF.
Locate Library LinuxProcessSemantics.Liveness.Checks.

Set Printing Fully Qualified.
Check LinuxProcessSemantics.Liveness.AF.must_exit_with_af.
Check LinuxProcessSemantics.Liveness.AF.no_reachable_divergence.
Check LinuxProcessSemantics.Liveness.AF.image_no_reachable_divergence.
Check LinuxProcessSemantics.Liveness.AF.must_exit_no_reachable_divergence.
Print Assumptions TICL.Logic.Semantics.af_done_accessible.
Print Assumptions TICL.CTree.Logic.Iter.afr_iterS_done.
Print Assumptions LinuxProcessSemantics.CTreeModel.InfRefine.proc_no_silent_divergence.
Print Assumptions LinuxProcessSemantics.Liveness.AF.must_exit_at_af.
Print Assumptions LinuxProcessSemantics.Liveness.AF.must_exit_with_af.
Print Assumptions LinuxProcessSemantics.Liveness.AF.af_done_no_reachable_divergence.
Print Assumptions LinuxProcessSemantics.Liveness.AF.must_exit_no_reachable_divergence.
Print Assumptions LinuxProcessSemantics.Liveness.Checks.rwx_source_must_exit_five.
Print Assumptions LinuxProcessSemantics.Liveness.Checks.rwx_source_af_halts.
Print Assumptions LinuxProcessSemantics.Liveness.Checks.rwx_source_no_reachable_divergence.
Print Assumptions LinuxProcessSemantics.Liveness.Checks.loop_not_af.
EOF
step preflight rocq compile Preflight.v
# Every library the closure loaded, by the file it was loaded from.
tr '\n' ' ' <preflight.log | grep -oE 'loaded from[[:space:]]+file[[:space:]]+[^[:space:]]+\.vo' |
  sed -E 's/^loaded from[[:space:]]+file[[:space:]]+//' | sort -u >libraries.txt
[ -s libraries.txt ] || die "preflight.log names no loaded library"
xargs -d '\n' sha256sum <libraries.txt >libraries.sha256

[ $# -gt 0 ] || exit 0
mapfile -t targets <"$evidence/images.targets"
# A build directory of its own, so this switch never invalidates _build/default.
step images dune build --root "$root" --build-dir "$root/_build/lps-ctree" "${targets[@]}"
