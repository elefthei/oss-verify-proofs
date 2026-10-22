From OssFuzzTheorems.leptonica.bilateral_fuzzer Require Statements.
From OssFuzzTheorems.Proofs.leptonica.bilateral_fuzzer.lib Require Theorems.

Theorem asan_agrees_holds : OssFuzzTheorems.leptonica.bilateral_fuzzer.Statements.asan_agrees.
Proof. exact OssFuzzTheorems.Proofs.leptonica.bilateral_fuzzer.lib.Theorems.strong_universal_error_free_bilateral_fuzzer_asan. Qed.
