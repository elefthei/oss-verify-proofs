From OssFuzzTheorems.simdjson.fuzz_parser Require Statements.
From OssFuzzTheorems.Proofs.simdjson.fuzz_parser.lib Require Theorems.

Theorem asan_ubsan_agrees_holds : OssFuzzTheorems.simdjson.fuzz_parser.Statements.asan_ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.simdjson.fuzz_parser.lib.Theorems.fuzz_parser_both_cfg. Qed.
