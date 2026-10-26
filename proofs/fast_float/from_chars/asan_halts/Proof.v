From OssFuzzTheorems.fast_float.from_chars Require Statements.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib Require Theorems.

Theorem asan_halts_holds : OssFuzzTheorems.fast_float.from_chars.Statements.asan_halts.
Proof. exact OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Theorems.halts_allowed_fast_float_from_chars_halts_asan. Qed.
