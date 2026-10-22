From OssFuzzTheorems.glaze.binary_reflection Require Statements.
From OssFuzzTheorems.Proofs.glaze.binary_reflection.lib Require Theorems.

Theorem ubsan_agrees_holds : OssFuzzTheorems.glaze.binary_reflection.Statements.ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Theorems.strong_universal_error_free_binary_reflection_ubsan. Qed.
