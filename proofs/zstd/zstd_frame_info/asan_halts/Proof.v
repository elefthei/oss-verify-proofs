From OssFuzzTheorems.zstd.zstd_frame_info Require Statements.
From OssFuzzTheorems.Proofs.zstd.zstd_frame_info.lib Require Theorems.

Theorem asan_halts_holds : OssFuzzTheorems.zstd.zstd_frame_info.Statements.asan_halts.
Proof. exact OssFuzzTheorems.Proofs.zstd.zstd_frame_info.lib.Theorems.halts_allowed_zstd_zstd_frame_info_halts_asan. Qed.
