#!/bin/bash
# tools/oft/ci/cache-key.sh RELEASE_YAML UNIT...: the actions/cache key of dune's
# cache for a check job of UNITs, as `key=` and `restore=` lines for
# $GITHUB_OUTPUT.  pr.yml, release-check.yml and weekly.yml share it, so a
# pull request can restore what a run on its base branch saved.
#
#   dune-<checker digest>-<hash of the sorted units>-<commit>
#
# The key names the checker image, which holds Rocq, dune and the libraries:
# only that image's runs share a cache.  It does not name the tree's files:
# dune takes a file from its cache only when the file's sources, its
# dependencies and the Rocq binary hash the same as when the cached copy was
# made, so a cache from an older commit is safe and saves whatever did not
# change.  The newest cache of the same checker and units is restored.
set -euo pipefail
[ $# -ge 2 ] || { echo "usage: cache-key.sh RELEASE_YAML UNIT..." >&2; exit 2; }
: "${GITHUB_SHA:?}"
checker="$(python3 -c 'import sys, yaml; print(yaml.safe_load(open(sys.argv[1]))["images"]["checker"])' "$1")"
[[ "$checker" =~ @sha256:([0-9a-f]{64})$ ]] || { echo "the checker in $1 is not pinned by digest: $checker" >&2; exit 1; }
shift
units="$(printf '%s\n' "$@" | sort -u | sha256sum | cut -c1-16)"
echo "restore=dune-${BASH_REMATCH[1]}-$units-"
echo "key=dune-${BASH_REMATCH[1]}-$units-$GITHUB_SHA"
