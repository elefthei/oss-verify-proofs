# tools/oft

The tools of this repository: Python 3 and PyYAML (`requirements.txt`, pinned
by hash), nothing else.  Run them as `./oft <command>` from the repository
root.

| command | what it does |
|---|---|
| `./oft generate [--check]` | renders every generated file from the facts; `--check` compares instead of writing, and is what CI runs |
| `./oft lint` | the repository's rules (below) |
| `./oft fetch <project>...` | downloads a project's binaries from its release asset and checks the archive's SHA-256 and every file's |
| `./oft verify-sha <project>...` | checks fetched binaries against their `harness.yaml` |
| `./oft check <project>/<harness>...` | builds the images and statements, checks every proof through a wrapper and every assumption the wrapper prints against `toolchain/allowed-axioms.txt`, and re-runs every counterexample; `--rocqchk` adds an independent re-check with `rocqchk`, which can take hours for one proof and is not part of the verdict |
| `./oft plan --changed FILE` | the harnesses a change affects, as JSON for CI |

## The facts, and what is rendered from them

The facts are `release.yaml`, `projects/<project>/project.yaml`,
`projects/<project>/<harness>/harness.yaml` (with the harness's `source/`
copy and `Distribution.v`), and the proof and counterexample directories.
Their schemas are in [`schemas/`](schemas/), in a small closed vocabulary
that [`schema.py`](schema.py) reads: any key a schema does not list is an
error.  [`rules.py`](rules.py) adds the rules that relate one fact to
another; among them, a statement's name follows from its fields, and the
header of `Distribution.v` must agree with the definitions in its body.

From the facts, `generate` renders `Statements.v`, `Characterise.v`,
`Images.v`, `images/dune`, the per-harness `dune` file, the opam files,
`dune-project`, every README, `index/`, and the header of each
`Distribution.v`.  All of the prose is in [`templates/`](templates/) and
[`phrasebook.yaml`](phrasebook.yaml); [`shapes.py`](shapes.py) is the one
place that maps a statement's fields to the definition of
`theories/Shapes.v` it uses, and refuses a combination it does not list.
Rendering is deterministic, and `render_all` is importable, so a tree and its
preview are rendered by the same code.

Proved, refuted and counterexample statuses are never written in the facts:
they follow from `proofs/` and `counterexamples/`.

## The rules (`./oft lint`)

| rule | what | where it runs |
|---|---|---|
| `paths` | every path matches exactly one entry of [`paths.py`](paths.py), which says who owns it; exported facts change only in a release pull request; a contributor's pull request touches only `proofs/`, `counterexamples/`, `docs/` and generated files; no `.vo`, `.hex`, `.pyc`, ELF file, LFS pointer or symbolic link; notes only for listed projects; size caps | CI |
| `schema` | closed schemas; no repeated YAML key; the rules between facts (counts, names, the images, withheld builds and statements); with `--release`, no placeholder digest is left | CI |
| `private-data` | no host paths, private network addresses, internal host names, e-mail addresses, private keys or access tokens in what this repository wrote; in upstream source copies only paths, keys and tokens count, and a reviewed entry in [`lint-exceptions.yaml`](lint-exceptions.yaml) can clear one occurrence | CI |
| `links` | a link to a `theorem-labs` repository names a public one; in rendered text, docs and facts every link is one the facts record or a fixed public one (the Debian snapshot archive, which the runner image installs from, may be read over http) | CI |
| `free-text` | no free-text field that the rendering has no place for | CI |
| `proofs` | no `Axiom`, `Parameter`, `Admitted`, `admit`, plugin, file effect or `Unset ... Checking` in `proofs/` (comments and strings are skipped by a real lexer); the wrapper's `Print Assumptions` and the allowlist are the authority | CI |
| `withheld` | a withheld item shows no detail: a withheld build has no size, SHA-256 or segment count and ships no binary, a withheld statement has no evidence and no fingerprint, and a project that withholds anything says so, by reason only | CI |

Every rule fails when it examined nothing.  The tests in [`tests/`](tests/)
plant a positive for each rule and require it to fail, and require the
fixture tree and this repository itself to pass.

## CI

The workflows in `.github/workflows/` run these tools from the base branch,
never from the pull request (`pr.yml`); [`ci/check-units.sh`](ci/check-units.sh)
is the part every check job shares: fetch by SHA-256, build and check in the
checker image with no network, and the counterexamples in the runner image.

## Tests

    cd tools && python3 -B -m unittest discover -s oft/tests -t .

