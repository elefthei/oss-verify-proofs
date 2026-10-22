From OssFuzzTheorems.simdjson.fuzz_minifyimpl Require Statements.
From OssFuzzTheorems.Proofs.simdjson.fuzz_minifyimpl.lib Require Theorems.

Theorem asan_agrees_holds : OssFuzzTheorems.simdjson.fuzz_minifyimpl.Statements.asan_agrees.
Proof. exact OssFuzzTheorems.Proofs.simdjson.fuzz_minifyimpl.lib.Theorems.strong_universal_error_free_fuzz_minifyimpl_asan. Qed.
