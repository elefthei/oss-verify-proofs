From OssFuzzTheorems.openssl.punycode Require Statements.
From OssFuzzTheorems.Proofs.openssl.punycode.lib Require Theorems.

Theorem plain_halts_holds : OssFuzzTheorems.openssl.punycode.Statements.plain_halts.
Proof. exact OssFuzzTheorems.Proofs.openssl.punycode.lib.Theorems.halts_allowed_openssl_punycode_halts_plain. Qed.
