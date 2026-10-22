(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* The proofs in this file are Anthropic's; the theorem statements were issued by the task authors and are reproduced as issued (see NOTICE). *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)

From Stdlib Require Import NArith List QArith.
Require LinuxProcessSemantics.EquivalenceDefinition.Equivalence.
Require OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer.images.Plain.
Require OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer.images.Asan.
Require OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer.images.Ubsan.
Require OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer.images.AsanUbsan.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Top Require TopLib.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.GlueAsmB.Run Require TopBothAll.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.GlueAsm.Run Require TopAsanAll.

Theorem strong_universal_error_free_unpack_pack_fuzzer_asan :
  LinuxProcessSemantics.EquivalenceDefinition.Equivalence.strong_universal_error_free_T_scfg_budgets_abort
    (LinuxProcessSemantics.LinuxProcessSem.Run.mkSpuriousCfg false true true true true true)
    LinuxProcessSemantics.EquivalenceDefinition.Equivalence.SanitizerBudgets.lim_source
    LinuxProcessSemantics.EquivalenceDefinition.Equivalence.SanitizerBudgets.lim_target
    (LinuxProcessSemantics.LinuxProcessSem.MemImageType.mkImage OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer.images.Plain.M.loaded_segments OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer.images.Plain.M.init_pc OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer.images.Plain.M.phdrs)
    (LinuxProcessSemantics.LinuxProcessSem.MemImageType.mkImage OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer.images.Asan.M.loaded_segments OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer.images.Asan.M.init_pc OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer.images.Asan.M.phdrs).
Proof.
  exact OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.GlueAsm.Run.TopAsanAll.TopAsanAll.asan_base1.
Qed.

Theorem strong_universal_error_free_unpack_pack_fuzzer_ubsan :
  LinuxProcessSemantics.EquivalenceDefinition.Equivalence.strong_universal_error_free_T_scfg_budgets_abort
    (LinuxProcessSemantics.LinuxProcessSem.Run.mkSpuriousCfg false true true true true true)
    LinuxProcessSemantics.EquivalenceDefinition.Equivalence.ShippedBudgets.lim_source
    LinuxProcessSemantics.EquivalenceDefinition.Equivalence.ShippedBudgets.lim_target
    (LinuxProcessSemantics.LinuxProcessSem.MemImageType.mkImage OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer.images.Plain.M.loaded_segments OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer.images.Plain.M.init_pc OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer.images.Plain.M.phdrs)
    (LinuxProcessSemantics.LinuxProcessSem.MemImageType.mkImage OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer.images.Ubsan.M.loaded_segments OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer.images.Ubsan.M.init_pc OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer.images.Ubsan.M.phdrs).
Proof.
  exact OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Top.TopLib.TopLib.base_ubsan.
Qed.

Theorem strong_universal_error_free_unpack_pack_fuzzer_both :
  LinuxProcessSemantics.EquivalenceDefinition.Equivalence.strong_universal_error_free_T_scfg_budgets_abort
    (LinuxProcessSemantics.LinuxProcessSem.Run.mkSpuriousCfg false true true true true true)
    LinuxProcessSemantics.EquivalenceDefinition.Equivalence.SanitizerBudgets.lim_source
    LinuxProcessSemantics.EquivalenceDefinition.Equivalence.SanitizerBudgets.lim_target
    (LinuxProcessSemantics.LinuxProcessSem.MemImageType.mkImage OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer.images.Plain.M.loaded_segments OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer.images.Plain.M.init_pc OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer.images.Plain.M.phdrs)
    (LinuxProcessSemantics.LinuxProcessSem.MemImageType.mkImage OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer.images.AsanUbsan.M.loaded_segments OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer.images.AsanUbsan.M.init_pc OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer.images.AsanUbsan.M.phdrs).
Proof.
  exact OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.GlueAsmB.Run.TopBothAll.TopBothAll.both_base1.
Qed.
