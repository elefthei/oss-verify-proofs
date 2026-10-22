From OssFuzzTheorems.leptonica.paintcmap_fuzzer Require Statements.
From OssFuzzTheorems.Proofs.leptonica.paintcmap_fuzzer.lib Require Theorems.

Theorem asan_agrees_holds : OssFuzzTheorems.leptonica.paintcmap_fuzzer.Statements.asan_agrees.
Proof. exact OssFuzzTheorems.Proofs.leptonica.paintcmap_fuzzer.lib.Theorems.strong_universal_error_free_paintcmap_fuzzer_asan. Qed.
