From OssFuzzTheorems.leptonica.edge_fuzzer Require Statements.
From OssFuzzTheorems.Proofs.leptonica.edge_fuzzer.lib Require Theorems.

Theorem asan_ubsan_agrees_holds : OssFuzzTheorems.leptonica.edge_fuzzer.Statements.asan_ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.leptonica.edge_fuzzer.lib.Theorems.strong_universal_error_free_edge_fuzzer_both. Qed.
