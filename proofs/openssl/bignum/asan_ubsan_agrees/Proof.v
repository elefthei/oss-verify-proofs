From OssFuzzTheorems.openssl.bignum Require Statements.
From OssFuzzTheorems.Proofs.openssl.bignum.lib Require Theorems.

Theorem asan_ubsan_agrees_holds : OssFuzzTheorems.openssl.bignum.Statements.asan_ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.openssl.bignum.lib.Theorems.strong_universal_error_free_bignum_both. Qed.
