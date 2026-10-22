From OssFuzzTheorems.leptonica.kernel_fuzzer Require Statements.
From OssFuzzTheorems.Proofs.leptonica.kernel_fuzzer.lib Require Theorems.

Theorem ubsan_agrees_holds : OssFuzzTheorems.leptonica.kernel_fuzzer.Statements.ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.leptonica.kernel_fuzzer.lib.Theorems.strong_universal_error_free_kernel_fuzzer_ubsan. Qed.
