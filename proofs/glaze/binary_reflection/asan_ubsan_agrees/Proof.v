From OssFuzzTheorems.glaze.binary_reflection Require Statements.
From OssFuzzTheorems.Proofs.glaze.binary_reflection.lib Require Theorems.

Theorem asan_ubsan_agrees_holds : OssFuzzTheorems.glaze.binary_reflection.Statements.asan_ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Theorems.strong_universal_error_free_binary_reflection_both. Qed.
