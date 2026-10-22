From OssFuzzTheorems.yajl_ruby.json_fuzzer Require Statements.
From OssFuzzTheorems.Proofs.yajl_ruby.json_fuzzer.lib Require Theorems.

Theorem asan_ubsan_agrees_holds : OssFuzzTheorems.yajl_ruby.json_fuzzer.Statements.asan_ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.yajl_ruby.json_fuzzer.lib.Theorems.strong_universal_error_free_json_fuzzer_both. Qed.
