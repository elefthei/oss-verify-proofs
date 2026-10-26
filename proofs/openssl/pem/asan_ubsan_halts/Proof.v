From OssFuzzTheorems.openssl.pem Require Statements.
From OssFuzzTheorems.Proofs.openssl.pem.lib Require Theorems.

Theorem asan_ubsan_halts_holds : OssFuzzTheorems.openssl.pem.Statements.asan_ubsan_halts.
Proof. exact OssFuzzTheorems.Proofs.openssl.pem.lib.Theorems.halts_allowed_openssl_pem_halts_both. Qed.
