From OssFuzzTheorems.glaze.binary_reflection Require Statements.
From OssFuzzTheorems.Proofs.glaze.binary_reflection.lib Require Theorems.

Theorem asan_agrees_holds : OssFuzzTheorems.glaze.binary_reflection.Statements.asan_agrees.
Proof. exact OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Theorems.strong_universal_error_free_binary_reflection_asan. Qed.
