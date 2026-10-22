From OssFuzzTheorems.leptonica.jpegiostub_fuzzer Require Statements.
From OssFuzzTheorems.Proofs.leptonica.jpegiostub_fuzzer.lib Require Theorems.

Theorem ubsan_agrees_holds : OssFuzzTheorems.leptonica.jpegiostub_fuzzer.Statements.ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.leptonica.jpegiostub_fuzzer.lib.Theorems.strong_universal_error_free_jpegiostub_fuzzer_ubsan. Qed.
