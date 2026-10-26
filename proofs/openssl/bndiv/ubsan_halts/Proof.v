From OssFuzzTheorems.openssl.bndiv Require Statements.
From OssFuzzTheorems.Proofs.openssl.bndiv.lib Require Theorems.

Theorem ubsan_halts_holds : OssFuzzTheorems.openssl.bndiv.Statements.ubsan_halts.
Proof. exact OssFuzzTheorems.Proofs.openssl.bndiv.lib.Theorems.halts_allowed_openssl_bndiv_halts_ubsan. Qed.
