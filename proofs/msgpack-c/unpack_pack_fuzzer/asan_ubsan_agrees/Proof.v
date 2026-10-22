From OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer Require Statements.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib Require Theorems.

Theorem asan_ubsan_agrees_holds : OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer.Statements.asan_ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Theorems.strong_universal_error_free_unpack_pack_fuzzer_both. Qed.
