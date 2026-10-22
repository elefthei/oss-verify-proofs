From OssFuzzTheorems.leptonica.grayquant_fuzzer Require Statements.
From OssFuzzTheorems.Proofs.leptonica.grayquant_fuzzer.lib Require Theorems.

Theorem asan_agrees_holds : OssFuzzTheorems.leptonica.grayquant_fuzzer.Statements.asan_agrees.
Proof. exact OssFuzzTheorems.Proofs.leptonica.grayquant_fuzzer.lib.Theorems.strong_universal_error_free_grayquant_fuzzer_asan. Qed.
