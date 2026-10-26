From OssFuzzTheorems.mbedtls.fuzz_pkcs7 Require Statements.
From OssFuzzTheorems.Proofs.mbedtls.fuzz_pkcs7.lib Require Theorems.

Theorem asan_halts_holds : OssFuzzTheorems.mbedtls.fuzz_pkcs7.Statements.asan_halts.
Proof. exact OssFuzzTheorems.Proofs.mbedtls.fuzz_pkcs7.lib.Theorems.halts_allowed_mbedtls_fuzz_pkcs7_halts_asan. Qed.
