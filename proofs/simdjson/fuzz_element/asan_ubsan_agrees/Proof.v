From OssFuzzTheorems.simdjson.fuzz_element Require Statements.
From OssFuzzTheorems.Proofs.simdjson.fuzz_element.lib Require Theorems.

Theorem asan_ubsan_agrees_holds : OssFuzzTheorems.simdjson.fuzz_element.Statements.asan_ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.simdjson.fuzz_element.lib.Theorems.strong_universal_error_free_fuzz_element_both. Qed.
