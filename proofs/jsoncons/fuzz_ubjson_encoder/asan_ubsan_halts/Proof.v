From OssFuzzTheorems.jsoncons.fuzz_ubjson_encoder Require Statements.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_ubjson_encoder.lib Require Theorems.

Theorem asan_ubsan_halts_holds : OssFuzzTheorems.jsoncons.fuzz_ubjson_encoder.Statements.asan_ubsan_halts.
Proof. exact OssFuzzTheorems.Proofs.jsoncons.fuzz_ubjson_encoder.lib.Theorems.halts_allowed_jsoncons_fuzz_ubjson_encoder_halts_both. Qed.
