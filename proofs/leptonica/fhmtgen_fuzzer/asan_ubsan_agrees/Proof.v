From OssFuzzTheorems.leptonica.fhmtgen_fuzzer Require Statements.
From OssFuzzTheorems.Proofs.leptonica.fhmtgen_fuzzer.lib Require Theorems.

Theorem asan_ubsan_agrees_holds : OssFuzzTheorems.leptonica.fhmtgen_fuzzer.Statements.asan_ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.leptonica.fhmtgen_fuzzer.lib.Theorems.fhmtgen_fuzzer_asan_ubsan_agrees. Qed.
