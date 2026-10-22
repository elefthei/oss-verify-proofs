From OssFuzzTheorems.simdjson.fuzz_atpointer Require Statements.
From OssFuzzTheorems.Proofs.simdjson.fuzz_atpointer.lib Require Theorems.

Theorem asan_ubsan_agrees_holds : OssFuzzTheorems.simdjson.fuzz_atpointer.Statements.asan_ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.simdjson.fuzz_atpointer.lib.Theorems.strong_universal_error_free_fuzz_atpointer_both. Qed.
