From OssFuzzTheorems.varnish.esi_parse_fuzzer Require Statements.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib Require Theorems.

Theorem asan_agrees_holds : OssFuzzTheorems.varnish.esi_parse_fuzzer.Statements.asan_agrees.
Proof. exact OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Theorems.strong_universal_error_free_esi_parse_fuzzer_asan. Qed.
