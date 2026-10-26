From OssFuzzTheorems.openssl.punycode Require Statements.
From OssFuzzTheorems.Proofs.openssl.punycode.lib Require Theorems.

Theorem asan_ubsan_halts_holds : OssFuzzTheorems.openssl.punycode.Statements.asan_ubsan_halts.
Proof. exact OssFuzzTheorems.Proofs.openssl.punycode.lib.Theorems.halts_allowed_openssl_punycode_halts_both. Qed.
