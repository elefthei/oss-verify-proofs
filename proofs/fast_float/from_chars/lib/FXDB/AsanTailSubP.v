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
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB Require Import AcAst AcHA AcFam AcSubst AcSubstR AcPri AcFam2 AcFam3 AcMALlib.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require FxMchr AsanQcsX AsanPNodes FxPNodesX AsanTblH2 AsanBodyE AsanBNodes AsanBodyFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanTblH2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanBodyG.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanBodyG.

Module AsanTailCertP.
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
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB Require AcFam2 AcFam3 AcMALlib.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcAst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcFam OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcSubst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcPri OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcConvA OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcNPop OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcNPopG OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcFam2.AcExt OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcFam2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcFam3 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcMALlib.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require FxMchr.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLoop.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require FxQNode FxMNode AsanQcsX AsanPNodes FxPNodesX AsanTblH2 AsanBodyE AsanBNodes AsanBodyFam AsanTailCh AsanBodyCh AsanBodyCh2 AsanBodyCh2w.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanTblH2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanBodyCertBase.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanBodyG.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanBodyG.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxMchr OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop.FxQChk OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxQNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxMNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanQcsX OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanPNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxPNodesX OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanTblH2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBodyE OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBodyFam OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanTailCh OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBodyCh OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBodyCh2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBodyCh2w OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChFam.FxPChk OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanTblH2.AsanTailDefs OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBodyCertBase OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBodyG.AsanTailTP OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBodyG.AsanTailFP.
Import ListNotations.
Local Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Definition FTP_N0 : positive := Eval vm_compute in s_next FTP_S.
Definition FTP_FINS : list (sst * smodel * ast) := [(FTP_S, FTP_M, FTP_A)].
(* [comment removed for export] *)
Definition OFF_TP : nat := off_pri TTP_S TTP_M TTP_A.
Definition IBT_P : nat := (rg_idx_w (s_rgs TTP_S) 0 - 4)%nat.
(* [comment removed for export] *)
Definition GEN_FTP (L : list (sst * smodel)) (As : list (list lin)) : option (sst * smodel * list lin) := Some (FTP_S, FTP_M, alins_a FTP_A).
Definition KTAILP_CERT : MCB := MJoinG GEN_FTP (TAILF_PW A1B A2B A3B BB (via_of TTP_S) VCT OFF_TP (mp_idx_w (sm_maps TTP_M)) IBT_P MEnd) 0x8fcb8 (MWeaken FTP_S FTP_N0 PFS PSH MEnd).
Definition tailp_res : option (list (sst * smodel * ast)) :=
  pchecku ASEGS TBLH IMGH apostB aeqb awf asubst ag_ok alins_a (aset_a) [] amod_a LIM KTAILP_CERT TTP_S TTP_M TTP_A.
Lemma tailp_cert : tailp_res = Some FTP_FINS.
Proof. vm_cast_no_check (eq_refl (Some FTP_FINS)). Qed.
(* [comment removed for export] *)
End AsanTailCertP.

Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxMchr OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanQcsX OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanPNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxPNodesX OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanTblH2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBodyE OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBodyFam OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChFam.FxPChk OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChFam.FxPChkSound OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanTblH2.AsanTailDefs OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBodyG.AsanTailTP OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBodyG.AsanTailFP OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanTailSubP.AsanTailCertP.
Import ListNotations.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Strategy opaque [TBLH IMGH pchecku].

Section TailSubP.
Variable cfg : SpuriousCfg.
Hypothesis Hoff : sc_alloc cfg = false.
Hypothesis Hanode3 : forall nk, anode_ok ASEGS cfg LIM (apost_alloc3 LIM) awf HA nk.
Hypothesis Hshm : forall model0 mem0 E S M ms model a, DEN ASEGS LIM model0 mem0 E S M ms model -> HA_on E M a mem0 -> a_pri a <> [] ->
  forall c, In c CLS -> 1 <= z_j (pden E a) c ->
  forall x, z_sh (pden E a) + 536870912 * c <= x < z_sh (pden E a) + 536870912 * c + 32768 ->
  rd1 ASEGS (mrestrict (Hof E M model) (ms_mem ms)) (Z_to_bv 64 x) <> None.

#[using="Hanode3 Hshm"] Theorem tailp_sub_ok : sub_ok ASEGS cfg LIM awf HA TTP_S TTP_M TTP_A FTP_FINS.
Proof. LiaFast.lf_pins (fun (Hanode3 Hshm : LiaFast.U) => LiaFast.u0).
  refine (sub_ok_of_pchecku ASEGS cfg LIM TBLH IMGH A_wx TBLH_ok IMGH_ok apostB aeqb awf HA asubst ag_ok alins_a aset_a
           alloc_awf_mono alloc_aeqb_eq alloc_HA_agree (anodeB_ok cfg Hanode3 Hshm) HA_subst [] _ _ amod_a alloc_HA_mod LIM (or_introl eq_refl) KTAILP_CERT TTP_S TTP_M TTP_A FTP_FINS tailp_cert).
  - intros j T MT aT fins H. destruct j; discriminate H.
  - intros H. exfalso. apply H. reflexivity.
Qed.
End TailSubP.
(* [comment removed for export] *)
