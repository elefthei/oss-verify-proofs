From OssFuzzTheorems.leptonica.colorfill_fuzzer Require Statements.
From OssFuzzTheorems.Proofs.leptonica.colorfill_fuzzer.lib Require Theorems.

Theorem asan_agrees_holds : OssFuzzTheorems.leptonica.colorfill_fuzzer.Statements.asan_agrees.
Proof. exact OssFuzzTheorems.Proofs.leptonica.colorfill_fuzzer.lib.Theorems.strong_universal_error_free_colorfill_fuzzer_asan. Qed.
