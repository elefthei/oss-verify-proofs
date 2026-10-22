(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode.
From OssFuzzTheorems.fast_float.from_chars.images Require Import Asan.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require Import PropExec StepTac.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLin FxCore FxSound FxStep.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLoop.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxSubst FxEnt FxImg FxPlan FxLoop FxFrame FxDrv FxCall FxWork.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLin OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxCore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSound OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxStep OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop.FxExplore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSubst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxEnt OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFrame OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxDrv OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxCall OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxWork.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib Require M4A_kfn.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib Require M4A_kfn.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4A_kfn.M4A_tmpl OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4A_kfn.
Import ListNotations.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Open Scope Z_scope.

Definition DCF_R0f : tree lin :=
  rsets (regs_pat 31 TEmpty) [(2, SP); (9, SP); (4, lconst TPV); (21, laddc SLOT4 608); (25, laddc SLOT4 32)].
(* [comment removed for export] *)
Definition dcf_facts_f (frac : bool) : list fact :=
  [ FMod SP 4 0; FRange (laddc SP (- NDC_NEED)) KHI (KTOP - NDC_NEED - 88); spsh_fact 2672;
    FRange (laddc (lvar 126) 64) 0 152; FRange (laddc (lvar 123) 49152) 0 32768 ]
  ++ skipn 5 (dcf_facts frac).
Definition DCF_P0f (frac : bool) : sst := SST 0x9b018 DCF_R0f (DCF_RGS false frac) (dcf_facts_f frac) 200 RNone.
(* [comment removed for export] *)
Definition DCF_Qf (frac : bool) : sst := SST 0 (regs_keepf DCF_R0f 31 240 TEmpty) (DCF_RGS true frac) (dcf_facts_f frac) 280 RNone.
Lemma DCFf_wf : forall frac, state_wf (DCF_P0f frac) = true /\ state_wf (DCF_Qf frac) = true /\ shape_eqb (s_rgs (DCF_P0f frac)) (s_rgs (DCF_Qf frac)) = true.
Proof. intros [|]; vm_compute; repeat split. Qed.
