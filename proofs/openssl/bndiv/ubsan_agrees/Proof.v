From OssFuzzTheorems.openssl.bndiv Require Statements.
From OssFuzzTheorems.Proofs.openssl.bndiv.lib Require Theorems.

Theorem ubsan_agrees_holds : OssFuzzTheorems.openssl.bndiv.Statements.ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.openssl.bndiv.lib.Theorems.strong_universal_error_free_bndiv_ubsan. Qed.
