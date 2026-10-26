From OssFuzzTheorems.openssl.hashtable Require Statements.
From OssFuzzTheorems.Proofs.openssl.hashtable.lib Require Theorems.

Theorem asan_halts_holds : OssFuzzTheorems.openssl.hashtable.Statements.asan_halts.
Proof. exact OssFuzzTheorems.Proofs.openssl.hashtable.lib.Theorems.halts_allowed_openssl_hashtable_halts_asan. Qed.
