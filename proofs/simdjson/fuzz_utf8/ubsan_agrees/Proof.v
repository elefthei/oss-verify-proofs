From OssFuzzTheorems.simdjson.fuzz_utf8 Require Statements.
From OssFuzzTheorems.Proofs.simdjson.fuzz_utf8.lib Require Theorems.

Theorem ubsan_agrees_holds : OssFuzzTheorems.simdjson.fuzz_utf8.Statements.ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.simdjson.fuzz_utf8.lib.Theorems.strong_universal_error_free_fuzz_utf8_ubsan. Qed.
