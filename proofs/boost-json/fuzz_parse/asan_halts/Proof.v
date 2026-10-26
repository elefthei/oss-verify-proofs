From OssFuzzTheorems.boost_json.fuzz_parse Require Statements.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib Require Theorems.

Theorem asan_halts_holds : OssFuzzTheorems.boost_json.fuzz_parse.Statements.asan_halts.
Proof. exact OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Theorems.halts_allowed_boost_json_halts_asan. Qed.
