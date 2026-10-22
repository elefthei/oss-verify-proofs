(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
From OssFuzzTheorems.Proofs.glaze.binary_reflection.lib Require BvWfKernel.
From OssFuzzTheorems.Proofs.glaze.binary_reflection.lib Require WdZS.
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.EquivalenceDefinition Require Import Equivalence.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType StackLayout Fs State Run.
Require OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Common.StoreOk OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Common.AsanAcctShape OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Spec4 OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.MhDefs OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbMhDefs OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.AsImg OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.BoImg OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.TopProof4. Import OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Common.StoreOk.ShapeAlg OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Common.AsanAcctShape.ShapeRetry OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Common.AsanAcctShape.ShapeRoot OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Spec4 OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Common.AsanAcctShape.Spec4KF OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.MhDefs.RefImg OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbMhDefs.UbImg OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.AsImg OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.BoImg OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.TopProof4.
From OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Common Require Import BudgetMonoRoot.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
#[local] Ltac Zify.zify_convert_to_euclidean_division_equations_flag ::= constr:(true).

Theorem asan_base_of_san : P_root -> A_root ->
  strong_universal_error_free_T_scfg_budgets_abort (alloc_only_cfg false) SanitizerBudgets.lim_source SanitizerBudgets.lim_target
    (mkImage Plain.M.loaded_segments Plain.M.init_pc Plain.M.phdrs)
    (mkImage Asan.M.loaded_segments Asan.M.init_pc Asan.M.phdrs).
Proof.
  intros HP HA.
  exact (rrealizes_universal_ef_sanitizer_budgets_abort PIMG AIMG spec_of HP HA spec_of_kill_free).
Qed.

Theorem both_base_of_san : P_root -> B_root ->
  strong_universal_error_free_T_scfg_budgets_abort (alloc_only_cfg false) SanitizerBudgets.lim_source SanitizerBudgets.lim_target
    (mkImage Plain.M.loaded_segments Plain.M.init_pc Plain.M.phdrs)
    (mkImage AsanUbsan.M.loaded_segments AsanUbsan.M.init_pc AsanUbsan.M.phdrs).
Proof.
  intros HP HB.
  exact (rrealizes_universal_ef_sanitizer_budgets_abort PIMG BIMG spec_of HP HB spec_of_kill_free).
Qed.


