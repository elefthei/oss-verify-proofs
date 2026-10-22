From OssFuzzTheorems.leptonica.jpegiostub_fuzzer Require Statements.
From OssFuzzTheorems.Proofs.leptonica.jpegiostub_fuzzer.lib Require Theorems.

Theorem asan_agrees_holds : OssFuzzTheorems.leptonica.jpegiostub_fuzzer.Statements.asan_agrees.
Proof. exact OssFuzzTheorems.Proofs.leptonica.jpegiostub_fuzzer.lib.Theorems.strong_universal_error_free_jpegiostub_fuzzer_asan. Qed.
