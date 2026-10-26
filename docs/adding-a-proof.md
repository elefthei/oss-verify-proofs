# Adding a proof

Anyone can add a proof at any time. It enters the repository when its pull
request meets every requirement below; [proving.md](proving.md) says how to
write one.

## Requirements

1. **Binaries.** The proof is about binaries this repository publishes: the
   ones `harness.yaml` pins by SHA-256. New binaries, built with the release's
   recipe and builder images (`release.yaml`), enter only through a release
   pull request. A rebuild from the published recipe and sources gives the same
   SHA-256 for each.
2. **Statements.** The release's statements, unedited, on the LPS version
   that `release.yaml` names. A proof does not change LPS.
3. **Check.** In the checker image, with PyYAML from tools/oft/requirements.txt
   on PYTHONPATH, `./oft check <project>/<harness> --parts statements,proofs` passes:
   every proof compiles on Rocq 9.2.0 and assumes only the axioms in
   [toolchain/allowed-axioms.txt](../toolchain/allowed-axioms.txt)
   ([checking.md](checking.md)).
4. **Programs.** No patch fixes or reveals a bug that is not yet disclosed
   upstream ([SECURITY.md](../SECURITY.md)). Build glue is allowed, and the
   build record labels it.
5. **Text.** Comments and names hold nothing private: no internal names and no
   paths from the machine the proof was written on.
6. **Records.** `proofs/<project>/<harness>/provenance/` holds the binaries'
   build record (`PROVENANCE.yaml`, `PROVENANCE.md`, `recipe/`) and the licence
   of every program in them (`LICENSES/`). GPL and LGPL code has its source
   archive in the source release.

## Steps

1. On a branch, put the proofs in `proofs/<project>/<harness>/`: one directory
   per statement ([proving.md](proving.md)), and the `.v` files they share, if
   any, in `lib/`, at any depth. A file `lib/A/B.v` is the module
   `OssFuzzTheorems.Proofs.<project>.<harness>.lib.A.B`, as in the harness's
   `rocq:` field. In the project and harness names, each character other than
   a letter, a digit or `_` is written as `_` (knot-dns is `knot_dns`), and a
   name that starts with a digit gets `h_` in front (`64bit_fuzzer` is
   `h_64bit_fuzzer`).
2. Run what CI runs, and commit what `oft generate` renders. Commit first, so
   that `git diff` lists every changed path:

       ./oft fetch <project>
       ./oft generate
       git diff --name-only origin/main HEAD > changed.txt
       ./oft lint --changed changed.txt --pr-kind contributor
       python3 -m pip install --require-hashes --target "$HOME/oft-pydeps" -r tools/oft/requirements.txt
       docker run --rm --network none --ulimit stack=-1:-1 -u "$(id -u):$(id -g)" -e HOME=/tmp -e PYTHONPATH=/pydeps \
         -v "$HOME/oft-pydeps:/pydeps:ro" -v "$PWD:/work" -w /work <checker image of release.yaml> \
         ./oft check <project>/<harness> --parts statements,proofs

   A harness's counterexamples are checked in the runner image with
   `--parts counterexamples`.

3. Open a pull request. CI runs the same checks
   ([checking.md](checking.md#what-ci-runs)). A maintainer reviews the proof
   and its build record, and merges it. If the harness has no build record yet,
   the maintainer adds it.
