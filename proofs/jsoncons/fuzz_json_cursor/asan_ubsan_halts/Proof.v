From OssFuzzTheorems.jsoncons.fuzz_json_cursor Require Statements.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_json_cursor.lib Require Theorems.

Theorem asan_ubsan_halts_holds : OssFuzzTheorems.jsoncons.fuzz_json_cursor.Statements.asan_ubsan_halts.
Proof. exact OssFuzzTheorems.Proofs.jsoncons.fuzz_json_cursor.lib.Theorems.halts_allowed_jsoncons_fuzz_json_cursor_halts_both. Qed.
