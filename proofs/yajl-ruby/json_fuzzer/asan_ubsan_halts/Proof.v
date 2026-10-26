From OssFuzzTheorems.yajl_ruby.json_fuzzer Require Statements.
From OssFuzzTheorems.Proofs.yajl_ruby.json_fuzzer.lib Require Theorems.

Theorem asan_ubsan_halts_holds : OssFuzzTheorems.yajl_ruby.json_fuzzer.Statements.asan_ubsan_halts.
Proof. exact OssFuzzTheorems.Proofs.yajl_ruby.json_fuzzer.lib.Theorems.halts_allowed_yajl_ruby_json_fuzzer_halts_both. Qed.
