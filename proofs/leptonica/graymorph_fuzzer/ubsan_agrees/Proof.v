From OssFuzzTheorems.leptonica.graymorph_fuzzer Require Statements.
From OssFuzzTheorems.Proofs.leptonica.graymorph_fuzzer.lib Require Theorems.

Theorem ubsan_agrees_holds : OssFuzzTheorems.leptonica.graymorph_fuzzer.Statements.ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.leptonica.graymorph_fuzzer.lib.Theorems.strong_universal_error_free_graymorph_fuzzer_ubsan. Qed.
