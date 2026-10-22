From OssFuzzTheorems.skcms.iccprofile_info Require Statements.
From OssFuzzTheorems.Proofs.skcms.iccprofile_info.lib Require Theorems.

Theorem asan_ubsan_agrees_holds : OssFuzzTheorems.skcms.iccprofile_info.Statements.asan_ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.skcms.iccprofile_info.lib.Theorems.strong_universal_error_free_fuzz_iccprofile_info_both. Qed.
