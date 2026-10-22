(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* The proofs in this file are Anthropic's; the theorem statements were issued by the task authors and are reproduced as issued (see NOTICE). *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)

From Stdlib Require Import NArith List QArith.
Require LinuxProcessSemantics.EquivalenceDefinition.Equivalence.
Require LinuxProcessSemantics.EquivalenceDefinition.MustExit.
Require LinuxProcessSemantics.EquivalenceDefinition.FinInput.
Require LinuxProcessSemantics.EquivalenceDefinition.Classifier.
Require LinuxProcessSemantics.EquivalenceDefinition.Measure.
Require LinuxProcessSemantics.EquivalenceDefinition.PatchClassifySpec.
Require LinuxProcessSemantics.EquivalenceDefinition.HaltsAllowed.
Require OssFuzzTheorems.jsoncons.fuzz_bson_parser_max.images.Plain.
Require OssFuzzTheorems.jsoncons.fuzz_bson_parser_max.images.Asan.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_bson_parser_max.lib.BsonPmAsanBase.

Module SpuriousCfgM <: LinuxProcessSemantics.EquivalenceDefinition.Equivalence.SPURIOUS_CFG.
  Definition cfg := LinuxProcessSemantics.LinuxProcessSem.Run.mkSpuriousCfg false true true true true true.
End SpuriousCfgM.

Theorem strong_universal_error_free_fuzz_bson_parser_max_asan :
  LinuxProcessSemantics.EquivalenceDefinition.Equivalence.strong_universal_error_free_T_scfg_budgets_abort
    SpuriousCfgM.cfg
    LinuxProcessSemantics.EquivalenceDefinition.Equivalence.SanitizerBudgets.lim_source
    LinuxProcessSemantics.EquivalenceDefinition.Equivalence.SanitizerBudgets.lim_target
    (LinuxProcessSemantics.LinuxProcessSem.MemImageType.mkImage OssFuzzTheorems.jsoncons.fuzz_bson_parser_max.images.Plain.M.loaded_segments OssFuzzTheorems.jsoncons.fuzz_bson_parser_max.images.Plain.M.init_pc OssFuzzTheorems.jsoncons.fuzz_bson_parser_max.images.Plain.M.phdrs)
    (LinuxProcessSemantics.LinuxProcessSem.MemImageType.mkImage OssFuzzTheorems.jsoncons.fuzz_bson_parser_max.images.Asan.M.loaded_segments OssFuzzTheorems.jsoncons.fuzz_bson_parser_max.images.Asan.M.init_pc OssFuzzTheorems.jsoncons.fuzz_bson_parser_max.images.Asan.M.phdrs).
Proof.
exact OssFuzzTheorems.Proofs.jsoncons.fuzz_bson_parser_max.lib.BsonPmAsanBase.bson_pm_asan_base_abort.
Qed.
