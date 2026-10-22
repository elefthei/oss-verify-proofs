From OssFuzzTheorems.jsoncons.fuzz_ubjson_encoder Require Statements.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_ubjson_encoder.lib Require Theorems.

Theorem ubsan_agrees_holds : OssFuzzTheorems.jsoncons.fuzz_ubjson_encoder.Statements.ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.jsoncons.fuzz_ubjson_encoder.lib.Theorems.strong_universal_error_free_fuzz_ubjson_encoder_ubsan. Qed.
