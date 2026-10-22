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

Require OssFuzzTheorems.cgif.cgif_file_fuzzer.images.Asan.
Require OssFuzzTheorems.cgif.cgif_file_fuzzer.images.AsanUbsan.
Require OssFuzzTheorems.cgif.cgif_file_fuzzer.images.Plain.
Require OssFuzzTheorems.Proofs.cgif.cgif_file_fuzzer.lib.YZ05.

Theorem strong_universal_error_free_cgif_file_fuzzer_both :
  LinuxProcessSemantics.EquivalenceDefinition.Equivalence.strong_universal_error_free_T_scfg_budgets
    (LinuxProcessSemantics.LinuxProcessSem.Run.alloc_only_cfg false)
    LinuxProcessSemantics.EquivalenceDefinition.Equivalence.SanitizerBudgets.lim_source
    LinuxProcessSemantics.EquivalenceDefinition.Equivalence.SanitizerBudgets.lim_target
    (LinuxProcessSemantics.LinuxProcessSem.MemImageType.mkImage OssFuzzTheorems.cgif.cgif_file_fuzzer.images.Plain.M.loaded_segments OssFuzzTheorems.cgif.cgif_file_fuzzer.images.Plain.M.init_pc OssFuzzTheorems.cgif.cgif_file_fuzzer.images.Plain.M.phdrs)
    (LinuxProcessSemantics.LinuxProcessSem.MemImageType.mkImage OssFuzzTheorems.cgif.cgif_file_fuzzer.images.AsanUbsan.M.loaded_segments OssFuzzTheorems.cgif.cgif_file_fuzzer.images.AsanUbsan.M.init_pc OssFuzzTheorems.cgif.cgif_file_fuzzer.images.AsanUbsan.M.phdrs).
Proof.
exact OssFuzzTheorems.Proofs.cgif.cgif_file_fuzzer.lib.YZ05.strong_universal_error_free_cgif_file_fuzzer_both_closed.
Qed.
