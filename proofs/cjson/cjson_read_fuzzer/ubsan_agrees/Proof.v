From OssFuzzTheorems.cjson.cjson_read_fuzzer Require Statements.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib Require Theorems.

Theorem ubsan_agrees_holds : OssFuzzTheorems.cjson.cjson_read_fuzzer.Statements.ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Theorems.strong_universal_error_free_cjson_read_fuzzer_ubsan. Qed.
