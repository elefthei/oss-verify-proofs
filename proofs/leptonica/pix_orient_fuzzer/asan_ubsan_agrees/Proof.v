From OssFuzzTheorems.leptonica.pix_orient_fuzzer Require Statements.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib Require Theorems.

Theorem asan_ubsan_agrees_holds : OssFuzzTheorems.leptonica.pix_orient_fuzzer.Statements.asan_ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib.Theorems.strong_universal_error_free_pix_orient_fuzzer_both. Qed.
