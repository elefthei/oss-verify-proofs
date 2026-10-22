(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase MemImageType RiscvSemantics State Run Specs Fs.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr.
From OssFuzzTheorems.fast_float.from_chars.images Require Import Asan.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require ShapeSet RealizesCfg AsanAcct FxLin FxCore FxSound FxStep.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLoop.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxImg FxSubst FxLoop FxPlan FxFrame FxFacts FxEcall FxEnt FxCall.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.ShapeSet OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.RealizesCfg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.AsanAcct OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLin OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxCore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSound OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxStep OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop.FxExplore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSubst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFrame OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFacts OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxEcall OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxEnt OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxCall.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxBacking FxChDen FxChNull FxChain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxWvC FxChEntM FxChSubst FxChMain FxChFam.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxBacking OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChDen OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChNull OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChain.FxChSys OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxWvC OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChEntM OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChSubst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChMain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanImgScan AsanImg AsanTbl AsanTblM AsanTblMd AsanEntry AsanPlan.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanFinC.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanFinC.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanTMain2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanEntry.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanTMain2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanMainSF.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanMainSF AsanMainWF AsanLit.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanImgScan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTbl OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTblM OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTblMd OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanEntry OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanFinC.AsanStart OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanFinC OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTMain2.AsanShort OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanEntry.AsanSegs OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTMain2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanMainSF.AsanSpecF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanMainSF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanMainWF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanLit.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC Require Import AcAst AcHA AcFam AcSubst AcSubstR AcPri AcFam2 AcFam3 AcMALlib.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require FxMchr AsanQcsX AsanPNodes FxPNodesX AsanTblH2 AsanBodyE AsanBNodes AsanBodyFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require FxBDec.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require FxBDec.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require AsanTblH2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require AsanBodyG.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require AsanBodyG.

Module AsanTailCertE.
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLin FxCore FxSound FxStep.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLoop.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxImg FxSubst FxLoop FxPlan FxFrame FxFacts FxEcall FxEnt FxCall.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLin OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxCore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSound OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxStep OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop.FxExplore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSubst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFrame OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFacts OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxEcall OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxEnt OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxCall.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxBacking FxChDen FxChNull FxChain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxWvC FxChEntM FxChSubst FxChMain FxChFam.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxBacking OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChDen OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChNull OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChain.FxChSys OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxWvC OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChEntM OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChSubst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChMain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanImgScan AsanImg AsanTbl AsanTblM AsanTblMd AsanEntry AsanPlan.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanFinC.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanFinC.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanTMain2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanTMain2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanMainSF.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanMainSF AsanMainWF AsanLit.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanImgScan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTbl OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTblM OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTblMd OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanEntry OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanFinC.AsanStart OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanFinC OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTMain2.AsanShort OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTMain2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanMainSF.AsanSpecF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanMainSF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanMainWF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanLit.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC Require AcAst AcFam AcSubst AcPri AcConvA AcNPop AcNPopG.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC Require AcFam2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC Require AcFam2 AcFam3 AcMALlib.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC.AcAst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC.AcFam OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC.AcSubst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC.AcPri OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC.AcConvA OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC.AcNPop OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC.AcNPopG OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC.AcFam2.AcExt OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC.AcFam2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC.AcFam3 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC.AcMALlib.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require FxMchr.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxPlan.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require FxQNode FxMNode AsanQcsX AsanPNodes FxPNodesX AsanTblH2 AsanBodyE AsanBNodes AsanBodyFam AsanTailCh AsanBodyCh AsanBodyCh2 AsanBodyCh2w.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require FxBDec.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require AsanTblH2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require AsanBodyCertBase.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require AsanBodyG.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require AsanBodyG.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.FxMchr OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxPlan.FxQChk OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.FxQNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.FxMNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanQcsX OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanPNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.FxPNodesX OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanTblH2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanBodyE OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanBNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanBodyFam OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanTailCh OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanBodyCh OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanBodyCh2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanBodyCh2w OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.FxBDec.FxPChk OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanTblH2.AsanTailDefs OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanBodyCertBase OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanBodyG.AsanTailTE OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanBodyG.AsanTailFE.
Import ListNotations.
Local Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Definition FTE_N0 : positive := Eval vm_compute in s_next FTE_S.
Definition FTE_FINS : list (sst * smodel * ast) := [(FTE_S, FTE_M, FTE_A)].
Definition IBT_E : nat := rg_idx_w (s_rgs TTE_S) 0.
(* [comment removed for export] *)
Definition GEN_FTE (L : list (sst * smodel)) (As : list (list lin)) : option (sst * smodel * list lin) := Some (FTE_S, FTE_M, alins_a FTE_A).
Definition KTAILE_CERT : MCB := MJoinG GEN_FTE (TAILF_EW A1B A2B A3B BB (via_of TTE_S) VCT (mp_idx_w (sm_maps TTE_M)) IBT_E MEnd) 0x8fcc4 (MWeaken FTE_S FTE_N0 PFS PSH MEnd).
Definition taile_res : option (list (sst * smodel * ast)) :=
  pchecku ASEGS TBLH IMGH apostB aeqb awf asubst ag_ok alins_a (aset_a) [] amod_a LIM KTAILE_CERT TTE_S TTE_M TTE_A.
Lemma taile_cert : taile_res = Some FTE_FINS.
Proof. vm_cast_no_check (eq_refl (Some FTE_FINS)). Qed.
End AsanTailCertE.

Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.FxMchr OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanQcsX OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanPNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.FxPNodesX OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanTblH2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanBodyE OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanBNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanBodyFam OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.FxBDec.FxPChk OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.FxBDec.FxPChkSound OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanTblH2.AsanTailDefs OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanBodyG.AsanTailTE OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanBodyG.AsanTailFE OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanTailSubE.AsanTailCertE.
Import ListNotations.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Strategy opaque [TBLH IMGH pchecku].

Section TailSubE.
Variable cfg : SpuriousCfg.
Hypothesis Hoff : sc_alloc cfg = false.
Hypothesis Hanode3 : forall nk, anode_ok ASEGS cfg LIM (apost_alloc3 LIM) awf HA nk.
Hypothesis Hshm : forall model0 mem0 E S M ms model a, DEN ASEGS LIM model0 mem0 E S M ms model -> HA_on E M a mem0 -> a_pri a <> [] ->
  forall c, In c CLS -> 1 <= z_j (pden E a) c ->
  forall x, z_sh (pden E a) + 536870912 * c <= x < z_sh (pden E a) + 536870912 * c + 32768 ->
  rd1 ASEGS (mrestrict (Hof E M model) (ms_mem ms)) (Z_to_bv 64 x) <> None.

#[using="Hanode3 Hshm"] Theorem taile_sub_ok : sub_ok ASEGS cfg LIM awf HA TTE_S TTE_M TTE_A FTE_FINS.
Proof. LiaFast.lf_pins (fun (Hanode3 Hshm : LiaFast.U) => LiaFast.u0).
  refine (sub_ok_of_pchecku ASEGS cfg LIM TBLH IMGH A_wx TBLH_ok IMGH_ok apostB aeqb awf HA asubst ag_ok alins_a aset_a
           alloc_awf_mono alloc_aeqb_eq alloc_HA_agree (anodeB_ok cfg Hanode3 Hshm) HA_subst [] _ _ amod_a alloc_HA_mod LIM (or_introl eq_refl) KTAILE_CERT TTE_S TTE_M TTE_A FTE_FINS taile_cert).
  - intros j T MT aT fins H. destruct j; discriminate H.
  - intros H. exfalso. apply H. reflexivity.
Qed.
End TailSubE.
