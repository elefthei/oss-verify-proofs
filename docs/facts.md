# The facts files

`oft generate` renders the README, the index, every project and harness page,
and every `Statements.v`, `Images.v` and `Characterise.v`, from YAML facts:
`release.yaml`, each `project.yaml` and `harness.yaml`, and the `proof.yaml`
and `expect.yaml` files under `proofs/` and `counterexamples/` (plus
`notes/<project>.md` where one exists). It renders only the header of
`Distribution.v`. The pages under `docs/` are written by hand. The exact
schemas of the facts are in [tools/oft/schemas/](../tools/oft/schemas/). This
page says what the fields that a reader needs mean; the schemas list every key.

## `projects/<project>/project.yaml`

| field | meaning |
|---|---|
| `status`, `reason`, `reason_args` | the project status ([status.md](status.md)) and the typed values its sentence is filled from |
| `language` | the language OSS-Fuzz's own `project.yaml` records for the project |
| `library` | the library the fuzz targets are built against: repository, commit (or release archive), version and licence; `patch_count` is how many patches were applied to it, where that is published |
| `patches` | patches whose text and summary are public, with whether upstream has them |
| `withheld` | what the project holds back, by reason only: `source_bundle` (GPL or LGPL builds waiting for their source bundle), `unpublished` (builds or statements not in this release yet) |
| `harnesses` | every OSS-Fuzz fuzz target of the project, and its API driver (`api-driver`) where it has one, included or not, with the reason for each one that is not |
| `assets` | the release archive of the published binaries (`bin`); the upstream source trees they were built from (`src`, required when any build is GPL or LGPL); and `src_manifest`, which says where the build lays each tree down |
| `build` | the library's build system, the clang version, and the builder image |

## `projects/<project>/<harness>/harness.yaml`

| field | meaning |
|---|---|
| `origin` | `oss-fuzz` (the fuzz target is OSS-Fuzz's file), `upstream` (the project's own), `this-repository` (an API driver) |
| `summary` | what the harness does, from a survey of its source |
| `entry` | the function the driver calls, normally `LLVMFuzzerTestOneInput` |
| `source` | the copy of the fuzz target in `source/`, exactly as it was built: where it came from, whether it differs from that file (`modified`), its licence; `pending` when the copy is not in this release yet |
| `library` | as in project.yaml, for this harness's builds |
| `modifications` | how this program differs from what OSS-Fuzz runs |
| `builds` | the builds (four for most harnesses; some have two). A published build has `bytes`, `sha256`, `segments` (how many files each loadable segment's memory image is split into when it is generated; `images/dune` lists them) and `uninstrumented` (the code linked into it that no sanitizer instruments). A withheld build has only its file name and `withheld`, the reason |
| `licence` | the SPDX expression of the binaries, or `NOASSERTION` while it is not recorded |
| `checks` | each check recorded for the harness beyond not crashing (below). The record is not complete yet: some harnesses with proofs make checks that it does not list ([exploring.md](exploring.md)) |
| `distribution` | the input distribution in `Distribution.v`, in words (bound statements only) |
| `model_gap` | features the binaries use on ordinary inputs that LPS does not cover: every statement is "blocked by the model" |
| `statements` | the statements (below) |

### A check

`kind` (what sort of property), `strength` (`full`, `partial` or `weak`: how
much of the property the check pins down; a weak check may be trivially true),
`stops_with` (how a failed check ends the process), `where` (the lines in the
source copy), `what` (the property in words), and `live`: `true` when the
check's assertion text or message was found in the binary's bytes, `false` when
the build was read as compiling it out and the bytes agree, and `unknown`
otherwise. `unknown` is not "compiled out": often the check has no text that can
be searched for (an `assert(false)`, say). No statement relies on a check that
is not `true`.

### A statement

| field | meaning |
|---|---|
| `kind` | `halts`, `agreement`, `bound` (disagrees at most *b*) or `decidability` |
| `builds` | the build it is about; for a pair statement, `plain` and the sanitizer build |
| `reading` | what the environment may refuse. `budget` (halts only): only what the process's state forces, for example a memory request past the budget or an open of a missing file. `may-fail`: every kind of call that LPS lets fail, at any time. `alloc-forced-only`: the same, except that a memory request fails only when the budget is spent or no address range is free |
| `exits` | halts only: the exit statuses allowed, or `any` |
| `budgets` | agreement only: `standard` (16 GiB for the plain build) or `asan` (2 GiB) |
| `abort` | agreement only: `signal` when `abort()` is read as death by SIGABRT rather than as a step that LPS does not interpret; the statement forbids it either way |
| `machine` | `rv64gc` when the process is told its machine has no vector unit |
| `binds_checks` | halts only: whether a check of the harness that ends the process when it fails is excluded by this statement, so that a proof of the statement proves the check |
| `status` | the exported status; `proved`, `refuted` and `counterexample` are derived, never written |
| `basis`, `reason` | why a statement is suspected false (`basis` is always `reading`). A withdrawn statement also has a `reason` |
| `witness` | the run that shows a statement false (witnessed): the build, the input file (its bytes in hex, or its size and SHA-256), the memory request refused (which call, the k-th request of the run, and its size; absent when nothing was refused), how the build ended (a signal, or an exit with a status the statement does not allow), and what ran it |
| `gap` | for a statement "blocked by the model" when the rest of its harness is not: the feature that LPS does not cover |
| `withheld` | why a withheld statement is withheld: `source-bundle` or `not-yet-published` |
| `revision` | the statement's revision, 1 unless its fingerprint changed ([versioning.md](versioning.md)) |

## `counterexamples/<project>/<harness>/<statement>/expect.yaml`

The halts statement it refutes, the observed exit (and signal) of `input.bin`,
the control input that must exit with a status the statement allows, and a
note.
