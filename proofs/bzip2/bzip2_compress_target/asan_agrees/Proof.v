From OssFuzzTheorems.bzip2.bzip2_compress_target Require Statements.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib Require Theorems.

Theorem asan_agrees_holds : OssFuzzTheorems.bzip2.bzip2_compress_target.Statements.asan_agrees.
Proof. exact OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Theorems.strong_universal_error_free_bzip2_compress_target_asan. Qed.
