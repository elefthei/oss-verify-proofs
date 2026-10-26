From OssFuzzTheorems.openssl.pem Require Statements.
From OssFuzzTheorems.Proofs.openssl.pem.lib Require Theorems.

Theorem plain_halts_holds : OssFuzzTheorems.openssl.pem.Statements.plain_halts.
Proof. exact OssFuzzTheorems.Proofs.openssl.pem.lib.Theorems.halts_allowed_openssl_pem_halts_plain. Qed.
