From OssFuzzTheorems.jsoncons.fuzz_ubjson_encoder Require Statements.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_ubjson_encoder.lib Require Theorems.

Theorem plain_halts_holds : OssFuzzTheorems.jsoncons.fuzz_ubjson_encoder.Statements.plain_halts.
Proof. exact OssFuzzTheorems.Proofs.jsoncons.fuzz_ubjson_encoder.lib.Theorems.halts_allowed_jsoncons_fuzz_ubjson_encoder_halts_plain. Qed.
