From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder Require Statements.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require Theorems.

Theorem asan_agrees_holds : OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.Statements.asan_agrees.
Proof. exact OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Theorems.strong_universal_error_free_fuzz_msgpack_encoder_asan. Qed.
