(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase MemImageType RiscvSemantics State Run Specs Fs.
From LinuxProcessSemantics.LinuxProcessSem.Sys Require Import Uapi Syscall.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC.
From OssFuzzTheorems.fast_float.from_chars.images Require Import AsanUbsan.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require PropExec ShapeSet RealizesCfg AsanAcct FxLin FxCore FxSound FxStep.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLoop.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxImg FxSubst FxLoop FxPlan FxFrame FxFacts FxEcall.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.PropExec OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.ShapeSet OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.RealizesCfg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.AsanAcct OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLin OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxCore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSound OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxStep OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop.FxExplore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSubst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFrame OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFacts OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxEcall.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxBacking FxChDen FxChAdd FxChNull FxChEnt FxChain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChSep FxWvC FxChMain FxChFam.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxBacking OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChDen OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChAdd OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChNull OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChEnt OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChain.FxChSys OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChSep OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxWvC OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChMain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanImgScan AsanImg AsanTbl AsanEntry AsanPlan AsanStart AsanFinC.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanTMain2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanTMain2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanMainSF.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanOpenFinF AsanErrT.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanImgScan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTbl OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanEntry OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanStart OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanFinC OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTMain2.AsanShort OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTMain2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanMainSF.AsanSpecF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanOpenFinF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanErrT.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB Require Import AcAst AcHA AcFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanTblU.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLoop.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require FxQNode FxMchr FxMNode AsanQSites FxSNodes AsanSNodes.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanQcsNode.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanPNodes FxSFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanSFam3.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanSFam3.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanTblU OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop.FxQChk OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxQNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxMchr OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxMNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanQSites OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxSNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanSNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanQcsNode.AsanRpNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanPNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxSFam OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanSFam3.AsanCpNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanSFam3.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require FxDirConv AsanRdErr.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanUsageT.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanUsageThmT.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChLib.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require FxChFamI AsanFamU AsanUsageT AsanUsageThmT.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanCoOpenCertT.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanCoOpenCertT.

Module AsanCoOpenThmT.
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase MemImageType RiscvSemantics State Run Specs Fs.
From LinuxProcessSemantics.LinuxProcessSem.Sys Require Import Uapi Syscall.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC.
From OssFuzzTheorems.fast_float.from_chars.images Require Import AsanUbsan.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require PropExec ShapeSet RealizesCfg AsanAcct FxLin FxCore FxSound FxStep.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLoop.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxImg FxSubst FxLoop FxPlan FxFrame FxFacts FxEcall.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.PropExec OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.ShapeSet OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.RealizesCfg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.AsanAcct OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLin OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxCore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSound OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxStep OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop.FxExplore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSubst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFrame OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFacts OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxEcall.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxBacking FxChDen FxChAdd FxChNull FxChEnt FxChain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxWvC FxChMain FxChFam.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxBacking OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChDen OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChAdd OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChNull OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChEnt OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChain.FxChSys OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxWvC OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChMain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanImgScan AsanImg AsanTbl AsanEntry AsanPlan AsanStart AsanFinC.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanTMain2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanTMain2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanMainSF.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanOpenFinF.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanImgScan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTbl OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanEntry OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanStart OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanFinC OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTMain2.AsanShort OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTMain2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanMainSF.AsanSpecF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanOpenFinF.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB Require Import AcAst AcHA AcFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanTblU.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLoop.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require FxQNode FxMchr FxMNode AsanQSites FxSNodes AsanSNodes.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanQcsNode.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanPNodes FxSFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanSFam3.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanSFam3.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanTblU OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop.FxQChk OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxQNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxMchr OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxMNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanQSites OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxSNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanSNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanQcsNode.AsanRpNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanPNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxSFam OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanSFam3.AsanCpNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanSFam3.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require FxDirConv AsanRdErr.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanUsageT.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanUsageThmT.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChLib.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require FxChFamI AsanFamU AsanUsageT AsanUsageThmT.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanCoOpenCertT.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanCoOpenCertT.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxDirConv OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanRdErr OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanUsageT.AsanUsage OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanUsageThmT.AsanLeafLib OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChLib.FxKeep OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxChFamI OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanFamU OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanUsageT OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanUsageThmT OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanCoOpenCertT.AsanCoOpenT OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanCoOpenCertT.
Import ListNotations.
Local Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Strategy opaque [TBLR IMGR mcheck].

Section C.
Variable cfg : SpuriousCfg.
Hypothesis Hoff : sc_alloc cfg = false.
Hypothesis Hfs : sc_fs cfg = true.
Variables (path0 : path) (data0 : list byte) (fs0 : Fs.Fs) (argv0 : list byte).
Hypothesis Hp1 : path_eqb path0 [] = false.
Hypothesis Hp2 : path_has_slash path0 = false.
Hypothesis Hp3 : path_is_dirref path0 = false.
Hypothesis Hp4 : (length path0 < path_max)%nat.
Hypothesis Hp5 : Forall (fun b => b <> Z_to_bv 8 0) path0.

#[using="Hoff Hfs Hp1 Hp2 Hp3 Hp4 Hp5"] Theorem co_realizesT : forall ch S0 sh0 finals,
  mcheck ASEGS LIM TBLR IMGR PV 0 FLHI false (Some H0) apostUT anilUT aeqbUT awfUT acopyUT asubUT agokUT alins_nil aset_id amod_f [] [] ch S0 MMAIN FSClosed sh0 AC0T = Some finals ->
  forall model0 mem0 E ms model, DEN ASEGS LIM model0 mem0 E S0 MMAIN ms model ->
  INV PV path0 data0 fs0 false (Some H0) mem0 E S0 MMAIN FSClosed model0 -> HAX awfUT (HAUT path0 argv0) E S0 MMAIN AC0T mem0 ->
  shp_wf (s_next S0) sh0 = true ->
  (forall S' M' FS' sh' (a' : ast * sfam) model0' mem0' E' ms' model', In (S', M', FS', sh', a') finals ->
     DEN ASEGS LIM model0' mem0' E' S' M' ms' model' -> INV PV path0 data0 fs0 false (Some H0) mem0' E' S' M' FS' model0' ->
     HAX awfUT (HAUT path0 argv0) E' S' M' a' mem0' -> shp_wf (s_next S') sh' = true -> agree (s_next S0) E E' ->
     realizes_cfg ASEGS cfg (mkCfg ms' model') (shp_den path0 fs0 argv0 E' sh')) ->
  realizes_cfg ASEGS cfg (mkCfg ms model) (shp_den path0 fs0 argv0 E sh0).
Proof. LiaFast.lf_pins (fun (Hoff Hfs Hp1 Hp2 Hp3 Hp4 Hp5 : LiaFast.U) => LiaFast.u0).
  intros ch S0 sh0 finals Hres model0 mem0 E ms model Hd Hi HX Hw Hk.
  assert (HFL : 0 <= Z.of_nat (length data0) /\ (0 <= FLHI -> FLHI < FLT -> Z.of_nat (length data0) <= FLHI)) by (unfold FLHI; split; lia).
  exact (mchain_sound ASEGS cfg LIM TBLR IMGR A_wx A_segb Hoff Hfs A_respos A_reswf TBLR_ok IMGR_ok TBLR_ecall PV path0 data0 fs0 0 FLHI argv0 false (Some H0)
           Hp1 Hp2 (fun _ => Hp3) Hp4 Hp5 HFL ltac:(unfold FLHI; lia) Hseg_asan apostUT anilUT aeqbUT awfUT (HAUT path0 argv0) acopyUT asubUT agokUT alins_nil aset_id amod_f [] [] awfUT_mono aeqbUT_eq
           (HAUT_nil path0 argv0) (HAUT_agree path0 argv0) (anode_okUT cfg Hoff path0 argv0) (HAUT_copy path0 argv0) (fun _ _ _ _ _ H _ => ltac:(discriminate H)) (fun _ _ _ _ _ H _ => ltac:(discriminate H)) (subs_nil_ok _) (subs_nil_use _) (conts_nil_ok _)
           ch S0 MMAIN FSClosed sh0 AC0T finals Hres model0 mem0 E ms model Hd Hi HX Hw Hk).
Qed.

(* [comment removed for export] *)
#[using="Type"] Lemma FSC_wfT : Forall (fun g => fwf (s_next T0T) g = true) FSC.
Proof. LiaFast.lf_pins LiaFast.u0. apply Forall_forall. intros g Hg. assert (H : forallb (fwf (s_next T0T)) FSC = true) by (vm_compute; reflexivity).
  rewrite forallb_forall in H. exact (H g Hg). Qed.
#[using="Type"] Theorem den_conv_cT : forall model0 mem0 E ms model, DEN ASEGS LIM model0 mem0 E T0T MMAIN ms model -> Forall (fact_ok E) FSC ->
  DEN ASEGS LIM model0 mem0 E TCT MMAIN ms model.
Proof. LiaFast.lf_pins LiaFast.u0.
  intros model0 mem0 E ms model Hd HF. unfold TCT.
  apply den_add_facts; [exact Hd|].
  pose proof FSC_wfT as W. rewrite Forall_forall in W, HF |- *. intros g Hg. exact (conj (W g Hg) (HF g Hg)).
Qed.
#[using="Type"] Lemma TC_next : s_next TCT = s_next T0T. Proof. LiaFast.lf_pins LiaFast.u0. vm_compute. reflexivity. Qed.
#[using="Type"] Lemma AC0T_wf : awfUT (s_next TCT) AC0T = true. Proof. LiaFast.lf_pins LiaFast.u0. vm_compute. reflexivity. Qed.
#[using="Type"] Lemma SHC_wf : shp_wf (s_next TCT) SH_CANNOT = true. Proof. LiaFast.lf_pins LiaFast.u0. vm_compute. reflexivity. Qed.
#[using="Type"] Lemma SHC2_wf : shp_wf (s_next TCT) SH_CANNOT2 = true. Proof. LiaFast.lf_pins LiaFast.u0. vm_compute. reflexivity. Qed.
#[using="Type"] Lemma lpath_wf : lwf (s_next TCT) LPATH = true. Proof. LiaFast.lf_pins LiaFast.u0. vm_compute. reflexivity. Qed.

#[using="Type"] Lemma SHC2_den : forall E, shp_den path0 fs0 argv0 E SH_CANNOT2 = shp_den path0 fs0 argv0 E SH_CANNOT.
Proof. LiaFast.lf_pins LiaFast.u0.
  intros E. unfold SH_CANNOT, SH_CANNOT2. cbn [shp_den List.map concat pend_evs pd_ch pd_off pd_src src_bytes].
  unfold pend_evs. cbn [pd_ch pd_off pd_src src_bytes].
  assert (H0' : Z.to_nat (uE E (lconst 0)) = O) by (unfold uE; rewrite lden_lconst; reflexivity).
  rewrite !H0'. f_equal. rewrite !app_nil_r, <- !map_app. rewrite !skipn_O. rewrite <- !app_assoc. reflexivity.
Qed.

(* [comment removed for export] *)
#[using="Hoff Hfs Hp1 Hp2 Hp3 Hp4 Hp5"] Theorem co_handoffT : forall model0 mem0 E ms model,
  DEN ASEGS LIM model0 mem0 E T0T MMAIN ms model ->
  INV PV path0 data0 fs0 false (Some H0) mem0 E T0T MMAIN FSClosed model0 ->
  Forall (fact_ok E) FSC ->
  HA E MMAIN AMAIN mem0 ->
  HA3 (sarg path0 argv0) E MMAIN (snd AC0T) mem0 ->
  realizes_cfg ASEGS cfg (mkCfg ms model) (shp_den path0 fs0 argv0 E SH_CANNOT).
Proof. LiaFast.lf_pins (fun (Hoff Hfs Hp1 Hp2 Hp3 Hp4 Hp5 : LiaFast.U) => LiaFast.u0).
  intros model0 mem0 E ms model Hd Hi HF HAa HA.
  pose proof (den_conv_cT model0 mem0 E ms model Hd HF) as Hd1.
  assert (Hi1 : INV PV path0 data0 fs0 false (Some H0) mem0 E TCT MMAIN FSClosed model0)
    by exact (INV_same PV path0 data0 fs0 false (Some H0) mem0 E T0T TCT MMAIN FSClosed model0 Hi TC_next).
  assert (Hn : forall f, s_next (add_fact TCT f) = s_next TCT) by reflexivity.
  pose proof (u_range E LPATH) as RL.
  destruct (Z_le_gt_dec (bv_unsigned (lden E LPATH)) 63) as [Hle|Hgt].
  - apply (co_realizesT CCH_ABT TC_ABT SH_CANNOT [] c_res_ab_nilT model0 mem0 E ms model).
    + unfold TC_ABT. apply den_addfact; [exact Hd1|]. intros E' Ha'. cbn [fact_ok]. rewrite <- (lden_agree (s_next TCT) E E' LPATH lpath_wf Ha'). lia.
    + exact (INV_same PV path0 data0 fs0 false (Some H0) mem0 E TCT TC_ABT MMAIN FSClosed model0 Hi1 (Hn _)).
    + split; [unfold TC_ABT; rewrite Hn; exact AC0T_wf | exact (conj HAa HA)].
    + unfold TC_ABT. rewrite Hn. exact SHC_wf.
    + intros S' M' FS' sh' a' model0' mem0' E' ms' model' Hin. destruct Hin.
  - rewrite <- SHC2_den.
    apply (co_realizesT KCCT TC_CT SH_CANNOT2 [] c_res_c_nilT model0 mem0 E ms model).
    + unfold TC_CT. apply den_addfact; [exact Hd1|]. intros E' Ha'. cbn [fact_ok]. rewrite <- (lden_agree (s_next TCT) E E' LPATH lpath_wf Ha').
      unfold M64, two64 in *. lia.
    + exact (INV_same PV path0 data0 fs0 false (Some H0) mem0 E TCT TC_CT MMAIN FSClosed model0 Hi1 (Hn _)).
    + split; [unfold TC_CT; rewrite Hn; exact AC0T_wf | exact (conj HAa HA)].
    + unfold TC_CT. rewrite Hn. exact SHC2_wf.
    + intros S' M' FS' sh' a' model0' mem0' E' ms' model' Hin. destruct Hin.
Qed.
End C.
(* [comment removed for export] *)
End AsanCoOpenThmT.

Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxDirConv OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanRdErr OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanUsageT.AsanUsage OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanUsageThmT.AsanLeafLib OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChLib.FxKeep OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxChFamI OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanFamU OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanUsageT OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanUsageThmT OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanCoOpenCertT.AsanCoOpenT OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanCoOpenCertT OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanErrLeaf.AsanCoOpenThmT.
Import ListNotations.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Strategy opaque [TBLR IMGR mcheck].

Lemma TERR_TCT : TERR_S = TCT. Proof. vm_compute. reflexivity. Qed.

Section H.
Variable cfg : SpuriousCfg.
Hypothesis Hoff : sc_alloc cfg = false.
Hypothesis Hfs : sc_fs cfg = true.
Variables (path0 : path) (data0 : list byte) (fs0 : Fs.Fs) (argv0 : list byte).
Hypothesis Hp1 : path_eqb path0 [] = false.
Hypothesis Hp2 : path_has_slash path0 = false.
Hypothesis Hp3 : path_is_dirref path0 = false.
Hypothesis Hp4 : (length path0 < path_max)%nat.
Hypothesis Hp5 : Forall (fun b => b <> Z_to_bv 8 0) path0.

(* [comment removed for export] *)

(* [comment removed for export] *)
#[using="Hp4 Hp5"] Lemma ha3_of_inv : forall model0 mem0 E S,
  INV PV path0 data0 fs0 false (Some H0) mem0 E S MMAIN FSClosed model0 ->
  HA3 (sarg path0 argv0) E MMAIN (snd AC0T) mem0.
Proof. LiaFast.lf_pins (fun (Hp4 Hp5 : LiaFast.U) => LiaFast.u0).
  intros model0 mem0 E S Hi.
  destruct Hi as (Hpv & Hfsw & Hfr & (Hm0a & Hm0b) & Hlen & Hlk & Hfs0 & Hfds & Hc1 & Hc2 & Hdv).
  cbn [hv_inv] in Hdv. destruct Hdv as (_ & _ & _ & H17).
  assert (HL : uE E LPATH = Z.of_nat (length path0)).
  { unfold uE, LPATH, hvar. rewrite lden_lvar. exact H17. }
  fold (uE E PV) in Hlen, Hm0a, Hm0b.
  set (B := uE E PV) in *.
  assert (HB0 : 0 <= B) by (unfold B; pose proof (uE_range E PV); lia).
  split; [|constructor].
  apply Forall_cons; [|apply Forall_nil]. cbn [fst snd AC0T sf_strs].
  split.
  - unfold cstr_ok. fold B. rewrite HL. refine (conj _ (conj _ (conj _ _))).
    + unfold wend. pose proof (Z.div_mod (B + Z.of_nat (length path0)) 8 ltac:(lia)) as Hdm.
      pose proof (Z.mod_pos_bound (B + Z.of_nat (length path0)) 8 ltac:(lia)) as Hmb. lia.
    + intros w Hw. exact (Hm0b eq_refl w Hw).
    + intros k Hk. pose proof (Hm0a eq_refl (Z.to_nat k) ltac:(lia)) as Hb. rewrite Z2Nat.id in Hb by lia.
      rewrite app_nth1 in Hb by lia.
      eexists. split; [exact Hb|]. intros Hc.
      rewrite Forall_forall in Hp5. apply (Hp5 (nth (Z.to_nat k) path0 (Z_to_bv 8 0))); [apply nth_In; lia|].
      apply bv_eq. rewrite Hc. reflexivity.
    + pose proof (Hm0a eq_refl (length path0) ltac:(lia)) as Hb. rewrite app_nth2 in Hb by lia. rewrite Nat.sub_diag in Hb. exact Hb.
  - unfold sbytes_ok. cbn [sarg]. fold B. rewrite HL. split; [reflexivity|].
    intros i Hi. pose proof (Hm0a eq_refl (Z.to_nat i) ltac:(lia)) as Hb. rewrite Z2Nat.id in Hb by lia.
    rewrite app_nth1 in Hb by lia. exact Hb.
Qed.

(* [comment removed for export] *)
#[using="Hoff Hfs Hp1 Hp2 Hp3 Hp4 Hp5"] Theorem herr : cont_ok ASEGS cfg LIM PV path0 data0 fs0 argv0 false (Some H0) awf HA TERR_C.
Proof. LiaFast.lf_pins (fun (Hoff Hfs Hp1 Hp2 Hp3 Hp4 Hp5 : LiaFast.U) => LiaFast.u0).
  intros model0 mem0 E ms model Hd Hi HX Hw.
  cbn [fst snd TERR_C] in Hd, Hi, HX, Hw |- *.
  rewrite TERR_TCT in Hd, Hi, HX, Hw.
  destruct HX as [_ HAa].
  pose proof (ha3_of_inv model0 mem0 E TCT Hi) as H3.
  assert (Hn : forall f, s_next (add_fact TCT f) = s_next TCT) by reflexivity.
  pose proof (u_range E LPATH) as RL.
  destruct (Z_le_gt_dec (bv_unsigned (lden E LPATH)) 63) as [Hle|Hgt].
  - apply (co_realizesT cfg Hoff Hfs path0 data0 fs0 argv0 Hp1 Hp2 Hp3 Hp4 Hp5 CCH_ABT TC_ABT SH_CANNOT [] c_res_ab_nilT model0 mem0 E ms model).
    + unfold TC_ABT. apply den_addfact; [exact Hd|]. intros E' Ha'. cbn [fact_ok]. rewrite <- (lden_agree (s_next TCT) E E' LPATH lpath_wf Ha'). lia.
    + exact (INV_same PV path0 data0 fs0 false (Some H0) mem0 E TCT TC_ABT MMAIN FSClosed model0 Hi (Hn _)).
    + split; [unfold TC_ABT; rewrite Hn; exact AC0T_wf | exact (conj HAa H3)].
    + unfold TC_ABT. rewrite Hn. exact SHC_wf.
    + intros S' M' FS' sh' a' model0' mem0' E' ms' model' Hin. destruct Hin.
  - rewrite <- (SHC2_den path0 fs0 argv0).
    apply (co_realizesT cfg Hoff Hfs path0 data0 fs0 argv0 Hp1 Hp2 Hp3 Hp4 Hp5 KCCT TC_CT SH_CANNOT2 [] c_res_c_nilT model0 mem0 E ms model).
    + unfold TC_CT. apply den_addfact; [exact Hd|]. intros E' Ha'. cbn [fact_ok]. rewrite <- (lden_agree (s_next TCT) E E' LPATH lpath_wf Ha').
      unfold M64, two64 in *. lia.
    + exact (INV_same PV path0 data0 fs0 false (Some H0) mem0 E TCT TC_CT MMAIN FSClosed model0 Hi (Hn _)).
    + split; [unfold TC_CT; rewrite Hn; exact AC0T_wf | exact (conj HAa H3)].
    + unfold TC_CT. rewrite Hn. exact SHC2_wf.
    + intros S' M' FS' sh' a' model0' mem0' E' ms' model' Hin. destruct Hin.
Qed.
End H.
(* [comment removed for export] *)
