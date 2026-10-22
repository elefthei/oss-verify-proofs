From OssFuzzTheorems.jsoncons.fuzz_bigint Require Statements.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_bigint.lib Require Theorems.

Theorem asan_agrees_holds : OssFuzzTheorems.jsoncons.fuzz_bigint.Statements.asan_agrees.
Proof. exact OssFuzzTheorems.Proofs.jsoncons.fuzz_bigint.lib.Theorems.fuzz_bigint_asan_agrees. Qed.
