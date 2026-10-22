From OssFuzzTheorems.leptonica.pix1_fuzzer Require Statements.
From OssFuzzTheorems.Proofs.leptonica.pix1_fuzzer.lib Require Theorems.

Theorem ubsan_agrees_holds : OssFuzzTheorems.leptonica.pix1_fuzzer.Statements.ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.leptonica.pix1_fuzzer.lib.Theorems.strong_universal_error_free_pix1_fuzzer_ubsan. Qed.
