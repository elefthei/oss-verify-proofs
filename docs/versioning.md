# Versions

Releases are numbered by date, for example `v2026.10.0`, with `-rc.N` for a
release candidate; [release.yaml](../release.yaml) gives this one's number. The
source release that holds the GPL and LGPL sources, `sources-v1`, is named on
its own. A patch release (`.1`) changes no statement's meaning: it is for
proofs, documents, statuses and analyses. Tags and their assets are never moved
or deleted.

A statement's identifier `project/harness/statement` is never reused. Its
**fingerprint** is a SHA-256 over what fixes its meaning, and nothing else: the
identifier, the statement's definition, the SHA-256 of each binary it names, the
SHA-256 of `theories/Shapes.v` and `theories/Images.v`, the LPS version string
(`semantics.version` in release.yaml) and, for a bound, the distribution's
definitions. A docstring edit in a statement file does not change it. An edit
anywhere in `Shapes.v` or `Images.v`, comments included, does, because their
whole bytes are hashed. A withheld statement has no fingerprint.

While LPS is unreleased, its version string is `unreleased`. So a change of
LPS commit does not change a fingerprint, and every fingerprint of a release
candidate changes when LPS is released. Treat the revisions of a release
candidate as provisional. The LPS commit itself is in release.yaml
(`semantics.commit`), and the checker image is built from it.

A maintainer increases a statement's **revision** by one whenever its
fingerprint changes: after a rebuild of its binaries, a change to the shapes, a
new LPS version, or a new distribution. Cite a statement as
`project/harness/statement@r<revision>`.

Every release re-checks every proof. A proof whose statement kept its
fingerprint carries forward; one whose statement changed but still checks has
its fingerprint updated; any other is retired, stays in the old tag, and its
statement is open again. The changelog lists each case.
