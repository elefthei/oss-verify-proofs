From OssFuzzTheorems.cjson.cjson_read_fuzzer Require Statements.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib Require Theorems.

Theorem asan_agrees_holds : OssFuzzTheorems.cjson.cjson_read_fuzzer.Statements.asan_agrees.
Proof. exact OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Theorems.strong_universal_error_free_cjson_read_fuzzer_asan. Qed.
