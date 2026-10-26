From OssFuzzTheorems.zstd.zstd_frame_info Require Statements.
From OssFuzzTheorems.Proofs.zstd.zstd_frame_info.lib Require Theorems.

Theorem asan_ubsan_halts_holds : OssFuzzTheorems.zstd.zstd_frame_info.Statements.asan_ubsan_halts.
Proof. exact OssFuzzTheorems.Proofs.zstd.zstd_frame_info.lib.Theorems.halts_allowed_zstd_zstd_frame_info_halts_both. Qed.
