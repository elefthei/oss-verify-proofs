From OssFuzzTheorems.simdjson.fuzz_print_json Require Statements.
From OssFuzzTheorems.Proofs.simdjson.fuzz_print_json.lib Require Theorems.

Theorem asan_agrees_holds : OssFuzzTheorems.simdjson.fuzz_print_json.Statements.asan_agrees.
Proof. exact OssFuzzTheorems.Proofs.simdjson.fuzz_print_json.lib.Theorems.fuzz_print_json_asan_cfg. Qed.
