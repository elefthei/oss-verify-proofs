# Changelog

## 2026.10.1 (2026-10-27), a patch release

The second release. 1,381 OSS-Fuzz projects, 427 of them available, with 2,148 harnesses; 8,578 binaries, all attached to v2026.10.0, and 0 withheld. 20,164 statements: 202 proved, 5 known false (witnessed), 229 blocked by the model, 0 withheld; the other 19,728 are open. 2026.10.0 had no statement known false.

The 202 proved statements cover 61 fuzz targets in 26 projects. This release adds 64 of them, all halts statements, the first proofs of that kind here: 63 on 24 fuzz targets that had proofs in 2026.10.0, and the proof of zlib's `checksum_fuzzer` `plain_halts`, described below. More statements of these fuzz targets are proved but are not in this release; they come in a later one.

Five statements of libarchive_xar_fuzzer that let a memory request fail are now false (witnessed); analyses/known-issues.md gives the run that shows each. A statement may now allow exit 78 where a fuzz target lists its rejects; no fuzz target lists any yet. Statement fingerprints are now version 2: each hashes the code of `Shapes.v` and `Images.v`, not their comments or layout. So every fingerprint changes, and `oft revisions` with `--write-pins` wrote each of the 138 published pins again in version 2. No statement published in 2026.10.0 changes its meaning.

Rares Buhai contributed the proof of `zlib/checksum_fuzzer/plain_halts` on the public repository ([theorem-labs/oss-verify-proofs#3](https://github.com/theorem-labs/oss-verify-proofs/pull/3)), the first proof from outside Theorem Labs. Its library reuses files of the cgif and Varnish proofs, which stay under Apache-2.0 OR MIT; each file he changed says so in a line under its licence header, and the build record says where each part came from.

The release machinery is new: CI reads draft releases, a release can be uploaded in parts, `oft release-tree` cuts a release to the proofs an approvals file lists, and `oft approvals` writes that file. The adding-a-proof skill is new, and docs/licensing.md and NOTICE are revised.

This release attaches no binaries and no source trees of its own. Every binary and source tree it pins stays attached to v2026.10.0, v2026.10.0-src or sources-v1. It publishes proofs and documents only, with no v2026.10.1-src release beside it.

## 2026.10.0 (2026-10-22)

The first release. 1,381 OSS-Fuzz projects, 427 of them available, with 2,148 harnesses; 8,578 binaries attached and 0 withheld. 20,164 statements: 138 proved, 229 blocked by the model, 0 withheld; the other 19,797 are open.

The 138 proved statements cover 60 fuzz targets in 25 projects. Their proofs were made from proofs that Anthropic licensed under the Apache License 2.0 or the MIT licence, ported to this release's binaries; each such file says so in a line under its licence header. Two projects, mariadb and wazuh, are held from this release because their only binary combines an Apache-2.0 harness with GPL-2.0-only code.
