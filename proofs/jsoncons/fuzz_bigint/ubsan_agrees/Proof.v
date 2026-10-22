From OssFuzzTheorems.jsoncons.fuzz_bigint Require Statements.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_bigint.lib Require Theorems.

Theorem ubsan_agrees_holds : OssFuzzTheorems.jsoncons.fuzz_bigint.Statements.ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.jsoncons.fuzz_bigint.lib.Theorems.fuzz_bigint_ubsan_agrees. Qed.
