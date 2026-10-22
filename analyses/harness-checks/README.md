# Harness checks

`checks.tsv` has one row per check a fuzz target makes beyond not crashing:
an assertion, an explicit `abort()`, a trap, an exit status, or a check it only
prints. It is generated from the harness pages' facts.

| column | meaning |
|---|---|
| project, harness | where the check is |
| kind | algebraic, api-contract, differential, idempotence, invariant, reference-oracle, roundtrip or self-validation |
| strength | full, partial or weak: how much of the property the check pins down |
| stops_with | how a failed check ends the process: abort, assert, trap, throw, panic, exit, print-only or return-only |
| text_in_binary | yes when the check's assertion text or message was found in the binary's bytes; compiled out when a reading of the build found it compiled out and the bytes agree; not found otherwise, which often means only that the check has no searchable text (an `assert(false)`), not that it is compiled out |
| binds | halts when a failure of the check contradicts the harness's halts statements, so that a proof of one proves the check on every input it covers |
| where | the lines of the harness source |
| what | the property, in words |

A source reading alone never marks a check as found in the binary, and no
statement relies on a check that is not.
