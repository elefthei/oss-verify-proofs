(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase MemImageType RiscvSemantics State Run Specs Fs.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr.
From OssFuzzTheorems.fast_float.from_chars.images Require Import AsanUbsan.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require ShapeSet RealizesCfg AsanAcct FxLin FxCore FxSound FxStep.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLoop.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxImg FxSubst FxLoop FxPlan FxFrame FxFacts FxEcall FxEnt FxCall.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.ShapeSet OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.RealizesCfg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.AsanAcct OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLin OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxCore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSound OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxStep OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop.FxExplore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSubst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFrame OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFacts OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxEcall OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxEnt OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxCall.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxBacking FxChDen FxChNull FxChain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxWvC FxChEntM FxChSubst FxChMain FxChFam.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxBacking OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChDen OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChNull OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChain.FxChSys OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxWvC OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChEntM OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChSubst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChMain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanImgScan AsanImg AsanTbl AsanTblM AsanTblMd AsanEntry AsanPlan AsanStart AsanFinC.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanTMain2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanEntry.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanTMain2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanMainSF.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanMainSF AsanMainWF AsanLit.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanImgScan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTbl OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTblM OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTblMd OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanEntry OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanStart OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanFinC OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTMain2.AsanShort OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanEntry.AsanSegs OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTMain2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanMainSF.AsanSpecF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanMainSF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanMainWF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanLit.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB Require AcAst AcHA AcFam AcSubst AcPri AcConvA AcNPop AcNPopG.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB Require AcFam2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB Require AcFam2 AcMALlib.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcAst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcHA OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcFam OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcSubst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcPri OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcConvA OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcNPop OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcNPopG OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcFam2.AcExt OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcFam2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcMALlib.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require FxMchr.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLoop.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require FxQNode FxMNode AsanQcsX AsanPNodes FxPNodesX AsanTblH2 AsanBodyE AsanBodyG AsanBNodes AsanPrefixG.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanBodyG.

Module AsanPrefixGCert.
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
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanImgScan AsanImg AsanTbl AsanTblM AsanTblMd AsanEntry AsanPlan AsanStart AsanFinC.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanTMain2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanTMain2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanMainSF.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanMainSF AsanMainWF AsanLit.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanImgScan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTbl OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTblM OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTblMd OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanEntry OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanStart OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanFinC OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTMain2.AsanShort OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTMain2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanMainSF.AsanSpecF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanMainSF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanMainWF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanLit.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB Require AcAst AcFam AcSubst AcPri AcConvA AcNPop AcNPopG.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB Require AcFam2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB Require AcFam2 AcMALlib.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcAst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcFam OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcSubst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcPri OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcConvA OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcNPop OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcNPopG OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcFam2.AcExt OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcFam2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcMALlib.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require FxMchr.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLoop.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require FxQNode FxMNode AsanQcsX AsanPNodes FxPNodesX AsanTblH2 AsanBodyE AsanBodyG AsanBNodes AsanPrefixG.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanBodyG.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxMchr OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop.FxQChk OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxQNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxMNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanQcsX OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanPNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxPNodesX OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanTblH2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBodyE OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBodyG OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanPrefixG OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChFam.FxPChk OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBodyG.AsanPrefixGLit.
Import ListNotations.
Local Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Definition PFING_N0 : positive := Eval vm_compute in s_next PFING_S.
Definition PFING_FINS : list (sst * smodel * ast) := [(PFING_S, PFING_M, PFING_A)].
(* [comment removed for export] *)
Definition GEN_PFING (L : list (sst * smodel)) (As : list (list lin)) : option (sst * smodel * list lin) := Some (PFING_S, PFING_M, alins_a PFING_A).
Definition KPREG_CERT : MCQ := KPRE_ULg GEN_PFING false MVoid MVoid (MWeaken PFING_S PFING_N0 PFS PSH MEnd).
Definition pfing_res : option (list (sst * smodel * ast)) :=
  pcheck ASEGS TBLH IMGH apostQ aeqb awf asubst ag_ok alins_a (aset_a) KPREG_CERT TG_GP TG0_M TG0_A.
Lemma pfing_cert : pfing_res = Some PFING_FINS.
Proof. vm_cast_no_check (eq_refl (Some PFING_FINS)). Qed.
(* [comment removed for export] *)
End AsanPrefixGCert.

Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxMchr OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop.FxQChk OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxQNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxMNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanQcsX OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanPNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxPNodesX OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanTblH2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBodyE OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBodyG OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanPrefixG OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChFam.FxPChk OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChFam.FxPChkSound OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBodyG.AsanPrefixGLit OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanPrefixGSub.AsanPrefixGCert.
Import ListNotations.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Strategy opaque [TBLH IMGH pcheck].

Section GSub.
Variable cfg : SpuriousCfg.
Hypothesis Hoff : sc_alloc cfg = false.
Hypothesis Hanode2 : forall nk, anode_ok ASEGS cfg LIM (apost_alloc2 LIM) awf HA nk.
Hypothesis Hshm : forall model0 mem0 E S M ms model a, DEN ASEGS LIM model0 mem0 E S M ms model -> HA_on E M a mem0 -> a_pri a <> [] ->
  forall c, In c CLS -> 1 <= z_j (pden E a) c ->
  forall x, z_sh (pden E a) + 536870912 * c <= x < z_sh (pden E a) + 536870912 * c + 32768 ->
  rd1 ASEGS (mrestrict (Hof E M model) (ms_mem ms)) (Z_to_bv 64 x) <> None.

(* [comment removed for export] *)
#[using="Hanode2 Hshm"] Lemma anodeQ_ok : forall nk, anode_ok ASEGS cfg LIM apostQ awf HA nk.
Proof. LiaFast.lf_pins (fun (Hanode2 Hshm : LiaFast.U) => LiaFast.u0).
  apply (anodeP_ok ASEGS cfg LIM _ awf HA _ alloc_HA_agree).
  - exact (anodeS_ok cfg LIM IMGMd A_wx IMGMd_ok Hshm (apost_alloc2 LIM) Hanode2).
  - exact (pnodeS_ok ASEGS cfg LIM _ _ (pnodeA_ok cfg LIM IMGMd QSITES_P MCSITES_P A_wx IMGMd_ok QSITES_P_ok MCSITES_P_ok)
                     (pnodeB_ok cfg LIM IMGH A_wx IMGH_ok)).
Qed.

#[using="Hanode2 Hshm"] Theorem pfing_sub_ok : sub_ok ASEGS cfg LIM awf HA TG_GP TG0_M TG0_A PFING_FINS.
Proof. LiaFast.lf_pins (fun (Hanode2 Hshm : LiaFast.U) => LiaFast.u0).
  exact (sub_ok_of_pcheck ASEGS cfg LIM TBLH IMGH A_wx TBLH_ok IMGH_ok apostQ aeqb awf HA asubst ag_ok alins_a aset_a
           alloc_awf_mono alloc_aeqb_eq alloc_HA_agree anodeQ_ok HA_subst KPREG_CERT TG_GP TG0_M TG0_A PFING_FINS pfing_cert).
Qed.
End GSub.
(* [comment removed for export] *)
