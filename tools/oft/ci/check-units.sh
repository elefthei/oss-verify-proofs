#!/bin/bash
# tools/oft/ci/check-units.sh: what one CI check job does for a set of harnesses.
# pr.yml and weekly.yml run it from a trusted copy of the tools (the base
# branch's, or main's); it never runs code from the tree it checks.
#
#   WORK      the tree whose statements are checked: for a pull request, a
#             worktree of the base branch with only the pull request's proofs/
#             and counterexamples/ laid over it
#   TOOLS     the trusted tools/ directory
#   UNITS     PROJECT/HARNESS ...; PROJECTS: their projects; CX_UNITS: those
#             with counterexamples (may be empty)
#   ASSETS    a directory for the downloaded release assets
#   PYDEPS    PyYAML for the checker container (pip install --target); the
#             runner image has its own
#   CACHE     a dune cache directory, restored or empty
#   GH_TOKEN  the workflow's own read-only token, for `gh release download`
#             (needed only while the repository is not public)
#
# Every step fails loudly; `oft check` itself fails on a unit it examined
# nothing in.
set -euo pipefail
: "${WORK:?}" "${TOOLS:?}" "${UNITS:?}" "${PROJECTS:?}" "${ASSETS:?}" "${PYDEPS:?}" "${CACHE:?}"
read -r -a units <<< "$UNITS"
read -r -a projects <<< "$PROJECTS"
read -r -a cx_units <<< "${CX_UNITS:-}"
oft() { PYTHONPATH="$TOOLS" python3 -m oft --root "$WORK" "$@"; }
image() {  # the image release.yaml pins, by digest
  python3 -c 'import sys, yaml; print(yaml.safe_load(open(sys.argv[1]))["images"][sys.argv[2]])' \
    "$WORK/release.yaml" "$1"
}

# 1. The binaries: each project's release asset, then `oft fetch`, which checks
#    the archive's SHA-256 and every file's before it moves anything into place.
mkdir -p -- "$ASSETS"
oft fetch --list "${projects[@]}" > "$ASSETS/list.txt"
[ -s "$ASSETS/list.txt" ] || { echo "no assets listed for: $PROJECTS"; exit 1; }
while read -r rel file _; do
  case "$file" in
    *-bin.tar.zst)
      [ -e "$ASSETS/$file" ] || gh release download "$rel" --repo "$GITHUB_REPOSITORY" --pattern "$file" --dir "$ASSETS" ;;
  esac
done < "$ASSETS/list.txt"
oft fetch --source "$ASSETS" "${projects[@]}"

# 2. Statements and proofs in the checker image, with no network.
checker="$(image checker)"
docker pull --quiet "$checker"
mkdir -p -- "$CACHE"
# The cache is a mount of its own, so dune's default storage, a hard link into it, fails and it stores nothing;
# copy mode stores a copy of each file.
docker run --rm --network none -u "$(id -u):$(id -g)" \
  -e HOME=/tmp -e XDG_CACHE_HOME=/cache -e DUNE_CACHE=enabled -e DUNE_CACHE_STORAGE_MODE=copy \
  -e PYTHONDONTWRITEBYTECODE=1 -e PYTHONPATH=/tools:/pydeps \
  -v "$WORK:/work" -v "$TOOLS:/tools:ro" -v "$PYDEPS:/pydeps:ro" -v "$CACHE:/cache" -w /work \
  "$checker" python3 -m oft --root /work check "${units[@]}" --parts statements,proofs

# 3. Counterexamples, in the pinned runner image (toolchain/runner.Dockerfile),
#    with no network, by the trusted tools.  `oft check` runs inside the
#    container, so qemu-riscv64 is its child.  Run as the container's first
#    process instead, qemu cannot die of the signal it passes on from the
#    program (the kernel drops a signal with no handler sent to a namespace's
#    first process), and a counterexample that ends in SIGABRT hangs until the
#    timeout instead of reproducing.
if [ "${#cx_units[@]}" -gt 0 ]; then
  runner="$(image runner)"
  docker pull --quiet "$runner"
  docker run --rm --network none -u "$(id -u):$(id -g)" \
    -e HOME=/tmp -e PYTHONDONTWRITEBYTECODE=1 -e PYTHONPATH=/tools:/opt/oss-fuzz-theorems/pydeps \
    -v "$WORK:/work:ro" -v "$TOOLS:/tools:ro" -w /work \
    "$runner" python3 -m oft --root /work check "${cx_units[@]}" --parts counterexamples
fi
