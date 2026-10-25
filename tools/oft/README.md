# tools/oft

The tools of this repository: Python 3, PyYAML and, for `./oft lint`, idna
(`requirements.txt`, pinned by hash), nothing else.  Run them as
`./oft <command>` from the repository root.

| command | what it does |
|---|---|
| `./oft generate [--check]` | renders every generated file from the facts; `--check` compares instead of writing, and is what CI runs |
| `./oft lint [--changed-only BASE] [--jobs N]` | the repository's rules (below), with the per-file text rules spread over every CPU the process may run on (its affinity set, so `taskset` narrows it; `--jobs` sets how many processes, 1 or more); `--changed-only` runs the per-file rules only over the files that differ from commit `BASE`, or over every file when a fact (a file [`paths.py`](paths.py) classes as facts) or a finding's `finding.yaml` differs from it, since the facts and the findings decide what a file may hold, while the rules over the whole tree still run |
| `./oft ledger --base REV [--tip REV]` | the findings ledger over the history `REV..TIP` (below) |
| `./oft fetch <project>...` | downloads a project's binaries from its release asset and checks the archive's SHA-256 and every file's; `--findings` fetches the unpatched binaries its findings run on instead, into `findings/<project>/bin/` |
| `./oft verify-sha <project>...` | checks fetched binaries against their `harness.yaml` |
| `./oft check <project>/<harness>...` | builds the images and statements, checks every proof through a wrapper and every assumption the wrapper prints against `toolchain/allowed-axioms.txt`, and re-runs every counterexample; `--parts findings` re-runs every finding on the unpatched binaries and compares each run with its record, and `--record` prints the runs of a finding that has none yet, only when its input shows each statement false and its control shows none false; `--rocqchk` adds an independent re-check with `rocqchk`, which can take hours for one proof and is not part of the verdict |
| `./oft plan --changed FILE` | the harnesses a change affects, as JSON for CI |
| `./oft release-tree` | turns a checkout into the files of a release, in place: keeps the proof of each statement `approvals.yaml` lists, with its fuzz target's whole `lib/` and build record, removes every other proof, turns each private project (`release: private` in its `project.yaml`) that OSS-Fuzz has into a held project (its `project.yaml` rewritten to `schema`, `project`, `homepage`, `language`, `oss_fuzz`, `status: held`, `reason: held`, and the rest of `projects/<p>/`, its `counterexamples/<p>/`, `patches/<p>/`, `notes/<p>.md` and proofs removed), removes a private project OSS-Fuzz does not have whole, writes `release.yaml`'s `counts` and `oss_fuzz.projects` as the cut leaves them, drops each `image_libraries` entry no remaining build links, removes `findings/` entirely and the files only this repository has (`approvals.yaml`, `.github/CODEOWNERS`, `.github/workflows/facts-review.yml` and `.claude/skills/review-facts/SKILL.md`), and renders again; it reports a listed statement with no proof, each fuzz target whose `lib/` it keeps while removing some of its statement directories, and each file in `proofs/lib/`, and changes nothing, since every check runs before the first change, when the facts have an error (an entry of a held or private project or a listed refutation among them), a finding holds back a project that is not private, a file the release keeps holds, as UTF-8 or UTF-16 and in a binary file too, a private project's fuzz target as `<project>/<harness>` (or with `%2F`) or its Rocq module, or the slug or a patch file name of a finding that holds its project back, git tracks a file at an ignored path, the facts as the release will have them have an error, the generated files are not current, `proofs/` or `findings/` holds a symbolic link, `proofs/` holds a stray file, or a kept statement directory holds anything but `Proof.v`, `proof.yaml` and `dune` |
| `./oft approvals FILE --approved-by LOGIN --date DATE` | writes `approvals.yaml`: one entry for each fuzz target FILE lists that has a proof in the checkout, naming every statement it has a proof of, or only those a submission's record covers (a line with a record must name them, and each must be a statement of the fuzz target); a refutation, or a fuzz target of a project a finding holds back or of a private project, is never listed, and an existing entry whose content is unchanged keeps its approver and date |
| `./oft revisions PREVIOUS [--write-pins]` | fingerprints this tree and `PREVIOUS`, a checkout of the previous release, with the same tools, and gives each statement's meaning (same, changed, re-rendered: these tools render other code for it than `PREVIOUS`'s did, or model-changed: the model's name, version or commit, or the Rocq package or version, differs), the revision it must have and what happens to its proof; fails when a revision is wrong; `--write-pins` sets the pin of each proof that carries forward to its statement's fingerprint here ([docs/versioning.md](../../docs/versioning.md)) |

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

`approvals.yaml`, in a checkout that has one, lists the proofs a release
carries, by fuzz target and statement
([`schemas/approvals.yaml`](schemas/approvals.yaml)). `./oft release-tree`
removes it, so a release never holds it.

A finding, a library bug found while proving, is kept on the proof branch as
`findings/<project>/<harness>/<slug>/`: `finding.yaml` (the statements it shows
false, its state, its summary, its patch and its recorded runs),
`input.bin`, `control.bin` and its patch.  `findings/<project>/unpatched.yaml`
pins the binaries built without the patches, which the findings run on, and
`findings/<project>/<harness>/series` lists the patches in build order.  A
finding's `input.bin` and `control.bin` are whole driver inputs, header and
payload, so they may be as large as 1 MiB (a harness may read a payload of 64
KiB or more); every other file of `findings/` is at most 64 KiB.  A
finding is never deleted.  It stops holding its project only through a checked
state change to `pruned`, `not-a-defect` or `public`.  No rendered file reads
`findings/`, and it never ships: `./oft release-tree` removes it.

A proof branch takes pushes and merges, so a finding could be added and then
deleted or rewritten between the two trees a pull request compares.
`./oft ledger` judges the history instead.  A record (a directory with
`finding.yaml`) is anchored at its first version that is evidence, decided by
its own files alone: its `input.bin` and `control.bin` are regular files of at
most 1 MiB that begin with a complete driver header, each of its `statements`
is an agreement or halts statement by its name, and its input and control each
hold a run of every build those statements name, of the shape `oft check
--record` prints.  Any recorded runs of that shape anchor a record, whether or
not they show its statements false, so a record's runs must come only from
`oft check --record`, which prints them only when each run has that shape (no
timeout, no signal a finding does not record), the input shows each statement
false and the control shows none.  No schema, `harness.yaml` or
`unpatched.yaml` decides it, so neither another file nor a later change to
the tools turns evidence back into a draft.  Before its anchor a record is a
draft, which CI never re-ran, and may change in any way or be renamed or
deleted.  Anchors are found by ancestry, and two that differ in `input.bin`,
`control.bin`, `statements` or recorded runs are refused.  From its
anchor on, every file of the record that a commit of `BASE..TIP` or a parent
of one had is in `TIP`; its `input.bin` and `control.bin` are the anchor's, its
`statements` include the anchor's, and the unpatched pin of each build its
statements name keeps its first value after the anchor (a pin for another
build may be added).  Its recorded runs are the anchor's too: a push to a
proof branch runs no check, so a pin in the anchor commit may already name a
fixed binary, and the same binaries in the same runner give the same runs.
Only a new runner image can change an honest record's runs.  A record anchored
outside `BASE..TIP` is held to where `TIP`'s history meets `BASE`.  For each
merge base of the two (`git merge-base --all`; more than one only after a
criss-cross merge), its entry commit is the oldest commit of `BASE`'s
first-parent line that has it, which passed CI as long as `BASE` takes changes
only through checked pull requests (a branch rule on `BASE` enforces that, not
these tools).  The merge base alone may be a proof-branch commit that no check
judged, put right before main merged it.  So the reference is the merge base
when its entry commit has the same runner and recorded runs (its text may
differ), and otherwise the newest commit of that line that `TIP` has, since
the entry commit then holds main's changes too.  In a pull request both are
`BASE`; on a push to a proof branch, a
branch that lags main is held to what it has.  The record keeps the runs each
reference has, except one whose `images.runner` in `release.yaml` (the image CI
re-runs findings in) differs from `TIP`'s, as in lint's base comparison.  A
record anchored only in `BASE..TIP` keeps its anchor's runs whatever the
runner, since that commit's `release.yaml` was not checked either.  If a new
runner changes such a
record's runs, CI's re-run fails, so its branch cannot merge and its project
stays held.
Each parent of a merge counts.  The rule is net: only `TIP` is judged, so a
file beside a record that `paths.py` does not list (an old `run.sh`) may go,
and restoring what was deleted clears the finding.  No replace ref or graft is
read.  CI runs it in a pull request's lint job and on every push to a
`proofs/` branch, where a forced push fails: a proof branch is never
rewritten.

## The rules (`./oft lint`)

| rule | what | where it runs |
|---|---|---|
| `paths` | every path matches exactly one entry of [`paths.py`](paths.py), which says who owns it; CI compares the proposed findings ledger with its trusted base, file by file, so a finding and its unpatched pins are never deleted, moved or renamed, a base finding's `input.bin` and `control.bin` and the unpatched pin of each build its statements name never change, nor do its recorded runs of those builds unless the proposed `release.yaml` pins another runner image, and its `statements` only grow (its state, summary, `upstream` and patch text may change, and a pin for another build may be added), and `./oft ledger` holds every commit of the change's history to the same rule from each record's anchor, its first version whose `input.bin` and `control.bin` are regular files that begin with a complete driver header and whose `finding.yaml` names agreement or halts statements only and records a run of every build they name, of the shape `oft check --record` prints (a draft before it may change, be renamed or be deleted, two anchors of one record that differ are refused, and only a record anchored in the base's history may record its runs again under another runner image); every finding file is a bounded regular file before the loader reads it, so links and special files are refused before their target can be opened; exported facts change only in a release pull request; a contributor's pull request touches only `proofs/`, `counterexamples/`, `docs/` and generated files; no `.vo`, `.hex`, `.pyc`, ELF file, LFS pointer, symbolic link or other file that is not regular (none is followed, opened or read for the text rules); no LFS filter or `working-tree-encoding` in `.gitattributes` (a checkout in another encoding would hide a file's text from the text rules); no name with a `"`, a `\` or a control character (git lists such a name quoted, and CI could not judge it); notes only for listed projects; size caps (a file over its cap is not read for the text rules) | CI |
| `schema` | closed schemas; no repeated YAML key, no YAML alias and no YAML collection nested more than 64 deep; the rules between facts (counts, names, the images, withheld builds and statements); a finding's recorded input shows each of its statements false (none, once it is pruned) and its control none, a harness's series is exactly the patches of its patched, reported and public findings, a not-a-defect finding's statements are recorded as false, and only a project a finding holds back builds from the port's private prelaunch variant or attaches to `findings-<project>`; `release.yaml`'s counts describe the tree the file is in, and `oft release-tree` writes the release's own into the cut; each `approvals.yaml` entry names an included fuzz target, once, of a project no finding holds back and not private, statements it has, each once, none of them refuted, and a record exactly when it is a submission; with `--release`, no placeholder digest is left | CI |
| `private-data` | in every NUL-free file read as text, link or not: no host path, private key, access token, or `theorem-labs` repository outside the public ones (among them the OSS Verify port, `theorem-labs/oss-verify`) named as `theorem-labs/<name>` or `theorem-labs.github.io/<name>` (after `/`, `\` or `:`, in any case, also written with `%2F` or a character reference, or, in a file GitHub renders as Markdown, split by a backslash escape or an HTML comment); the port's private prelaunch variant is allowed only as the value of a held project's `build.oss_verify.repository`. Outside upstream copies (a fuzz target's source copied from upstream, the licence texts and the recipe slice of a build record), also no private IPv4 address (including Tailscale's shared range, `100.64/10`), e-mail address or private host name (a name under `localhost`, `internal`, `internal.cloudapp.net`, `local`, `corp`, `lan`, `home.arpa` or `ts.net`, in any case). A reviewed entry in [`lint-exceptions.yaml`](lint-exceptions.yaml) can clear one occurrence in an upstream copy or copied port `project.yaml`, or one e-mail address in another copied port project file (such as an author's copyright line; never a URL's user information) | CI |
| `links` | links in the files this repository wrote, in the port's files of a port build record, and in an OSS Verify target's source copy, as a regular expression reads them (in a file whose name GitHub renders as Markdown, in any case, also the forms GitHub renders as a link, and each line read again as GitHub shows its text, without backslash escapes and HTML comments), judged by what a browser opens, as [`urls.py`](urls.py) parses it after the WHATWG URL standard: never a machine on a private network, including through a non-web scheme with a DNS-shaped or IP-literal host, and a `theorem-labs` repository, on any host, only if it is a public one; a URL whose host IDNA refuses is a finding; in rendered text, docs and facts every link is one the facts record or a fixed public one (the Debian snapshot archive, which the runner image installs from, may be read over http). Upstream source copies, licence texts and the recipe slice of a build record are not read for links; port files and an OSS Verify target's source copy are held to the private-host and private-repository checks but not the allowlist. Markdown HTML reads `href`, `src`, `srcset`, `cite` and `longdesc` | CI |
| `free-text` | no free-text field that the rendering has no place for | CI |
| `proofs` | no `Axiom`, `Parameter`, `Admitted`, `admit`, plugin, file effect or `Unset ... Checking` in `proofs/` (comments and strings are skipped by a real lexer); the wrapper's `Print Assumptions` and the allowlist are the authority | CI |
| `withheld` | a withheld item shows no detail: a withheld build has no size, SHA-256 or segment count and ships no binary, a withheld statement has no evidence and no fingerprint, and a project that withholds anything says so, by reason only | CI |

Every rule fails when it examined nothing.  The tests in [`tests/`](tests/)
plant a positive for each rule and require it to fail, and require the
fixture tree and this repository itself to pass.  On a pull request, `pr.yml`
skips the test of this repository when the change leaves `tools/` as it is
outside the test data in `tests/` (no Python file), `ci/` and this README, and
leaves `.github/` and every `.gitattributes` as they are: its lint job then runs
the same code over the same tree.  A push to main runs it.

## CI

The workflows in `.github/workflows/` run these tools from the base branch,
never from the pull request (`pr.yml`); [`ci/check-units.sh`](ci/check-units.sh)
is the part every check job shares: fetch by SHA-256, build and check in the
checker image with no network, and the counterexamples and the findings in the
runner image. In `pr.yml` and `release-check.yml`, the `fetch-drafts` job is
the one job with write access: it reads draft releases' binaries only, and the
check jobs read them from its artifacts.  (`release.yml`'s publish job has write
access too.)  `pr.yml`'s jobs and what each one covers are described at the top
of the workflow.

## Tests

    cd tools && python3 -B -m unittest discover -s oft/tests -t .

