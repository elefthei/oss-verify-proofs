From OssFuzzTheorems.openssl.bignum Require Statements.
From OssFuzzTheorems.Proofs.openssl.bignum.lib Require Theorems.

Theorem asan_ubsan_halts_holds : OssFuzzTheorems.openssl.bignum.Statements.asan_ubsan_halts.
Proof. exact OssFuzzTheorems.Proofs.openssl.bignum.lib.Theorems.halts_allowed_openssl_bignum_halts_both. Qed.
