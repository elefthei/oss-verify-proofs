From OssFuzzTheorems.openssl.bignum Require Statements.
From OssFuzzTheorems.Proofs.openssl.bignum.lib Require Theorems.

Theorem plain_halts_holds : OssFuzzTheorems.openssl.bignum.Statements.plain_halts.
Proof. exact OssFuzzTheorems.Proofs.openssl.bignum.lib.Theorems.halts_allowed_openssl_bignum_halts_plain. Qed.
