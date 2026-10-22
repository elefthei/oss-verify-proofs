From OssFuzzTheorems.fast_float.from_chars Require Statements.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib Require Theorems.

Theorem asan_agrees_holds : OssFuzzTheorems.fast_float.from_chars.Statements.asan_agrees.
Proof. exact OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Theorems.strong_universal_error_free_from_chars_asan. Qed.
