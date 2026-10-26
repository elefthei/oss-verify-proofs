From OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer Require Statements.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib Require Theorems.

Theorem asan_ubsan_halts_holds : OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer.Statements.asan_ubsan_halts.
Proof. exact OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Theorems.halts_allowed_msgpack_c_unpack_pack_fuzzer_halts_both. Qed.
