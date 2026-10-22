From OssFuzzTheorems.simdjson.fuzz_ondemand Require Statements.
From OssFuzzTheorems.Proofs.simdjson.fuzz_ondemand.lib Require Theorems.

Theorem asan_ubsan_agrees_holds : OssFuzzTheorems.simdjson.fuzz_ondemand.Statements.asan_ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.simdjson.fuzz_ondemand.lib.Theorems.strong_universal_error_free_fuzz_ondemand_both. Qed.
