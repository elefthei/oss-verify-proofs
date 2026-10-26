From OssFuzzTheorems.openssl.ct Require Statements.
From OssFuzzTheorems.Proofs.openssl.ct.lib Require Theorems.

Theorem asan_ubsan_halts_holds : OssFuzzTheorems.openssl.ct.Statements.asan_ubsan_halts.
Proof. exact OssFuzzTheorems.Proofs.openssl.ct.lib.Theorems.halts_allowed_openssl_ct_halts_both. Qed.
