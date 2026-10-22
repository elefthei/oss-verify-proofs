From OssFuzzTheorems.simdjson.fuzz_minifyimpl Require Statements.
From OssFuzzTheorems.Proofs.simdjson.fuzz_minifyimpl.lib Require Theorems.

Theorem ubsan_agrees_holds : OssFuzzTheorems.simdjson.fuzz_minifyimpl.Statements.ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.simdjson.fuzz_minifyimpl.lib.Theorems.strong_universal_error_free_fuzz_minifyimpl_ubsan. Qed.
