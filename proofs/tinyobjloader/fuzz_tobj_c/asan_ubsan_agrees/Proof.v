From OssFuzzTheorems.tinyobjloader.fuzz_tobj_c Require Statements.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib Require Theorems.

Theorem asan_ubsan_agrees_holds : OssFuzzTheorems.tinyobjloader.fuzz_tobj_c.Statements.asan_ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Theorems.strong_universal_error_free_fuzz_tobj_c_both. Qed.
