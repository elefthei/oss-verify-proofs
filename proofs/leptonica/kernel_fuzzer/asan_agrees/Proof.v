From OssFuzzTheorems.leptonica.kernel_fuzzer Require Statements.
From OssFuzzTheorems.Proofs.leptonica.kernel_fuzzer.lib Require Theorems.

Theorem asan_agrees_holds : OssFuzzTheorems.leptonica.kernel_fuzzer.Statements.asan_agrees.
Proof. exact OssFuzzTheorems.Proofs.leptonica.kernel_fuzzer.lib.Theorems.strong_universal_error_free_kernel_fuzzer_asan. Qed.
