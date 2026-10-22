From OssFuzzTheorems.openssl.punycode Require Statements.
From OssFuzzTheorems.Proofs.openssl.punycode.lib Require Theorems.

Theorem asan_agrees_holds : OssFuzzTheorems.openssl.punycode.Statements.asan_agrees.
Proof. exact OssFuzzTheorems.Proofs.openssl.punycode.lib.Theorems.strong_universal_error_free_punycode_asan. Qed.
