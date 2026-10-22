From OssFuzzTheorems.zstd.zstd_frame_info Require Statements.
From OssFuzzTheorems.Proofs.zstd.zstd_frame_info.lib Require Theorems.

Theorem asan_ubsan_agrees_holds : OssFuzzTheorems.zstd.zstd_frame_info.Statements.asan_ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.zstd.zstd_frame_info.lib.Theorems.strong_universal_error_free_zstd_frame_info_both. Qed.
