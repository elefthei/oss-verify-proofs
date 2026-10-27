# Changelog

## Unreleased

- Add the per-library Junco liveness workflow using Linux CTrees and TICL/CSL,
  GPT-6.1-sol verifiers, Opus 5.5 proof review/minimization with feedback, and
  independently reviewed multi-location counter-example CSV output. This adds
  a proof workflow, not new proved liveness claims for the release.
- The liveness workflow now runs one shared gate, `liveness/check.sh`, before
  acquiring any model: published-binary hashes, the installed
  `rocq-linux-process-semantics-liveness` theory (which now holds the shared
  LPS/TICL liveness definitions and real-image checks) loaded in one closure,
  and every published `Images.vo`. Members persist across review rounds while
  each round's graph is closed; cancellation and failures publish an
  INCOMPLETE report, never a verdict.

## 2026.10.0 (2026-10-22)

The first release. 1,381 OSS-Fuzz projects, 427 of them available, with 2,148 harnesses; 8,578 binaries attached and 0 withheld. 20,164 statements: 138 proved, 229 blocked by the model, 0 withheld; the other 19,797 are open.

The 138 proved statements cover 60 fuzz targets in 25 projects. Their proofs were made from proofs that Anthropic licensed under the Apache License 2.0 or the MIT licence, ported to this release's binaries; each such file says so in a line under its licence header. Two projects, mariadb and wazuh, are held from this release because their only binary combines an Apache-2.0 harness with GPL-2.0-only code.
