(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase MemImageType RiscvSemantics State Run Specs Fs.
From LinuxProcessSemantics.LinuxProcessSem.Sys Require Import Uapi Syscall.
From LinuxProcessSemantics.LinuxProcessSem.Sys.Fs Require Import Open Namei.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr.
From OssFuzzTheorems.fast_float.from_chars.images Require Import Asan.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require ShapeSet RealizesCfg AsanAcct FxLin FxCore FxSound FxStep.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLoop.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxImg FxSubst FxLoop FxPlan FxFrame FxFacts FxEcall.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.ShapeSet OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.RealizesCfg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.AsanAcct OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLin OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxCore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSound OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxStep OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop.FxExplore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSubst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFrame OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFacts OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxEcall.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxBacking FxChDen FxChNull FxChain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxWvC FxChMain FxChFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChFam.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxBacking OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChDen OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChNull OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChain.FxChSys OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxWvC OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChMain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChFam OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChFam.FxChMap.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanImgScan AsanImg AsanTbl AsanTblM AsanTblMd AsanTblML AsanEntry AsanPlan.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanFinC.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanFinC.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanTMain2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanEntry.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanTMain2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanMainSF.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanMainSF AsanMainWF AsanMainP AsanLit AsanCpSW AsanPhases3.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanPhCTA.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanPhCTA.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanPhCTA AsanPhCTANB AsanPhCTB.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanPhCTANB.

Module AsanPhK5.
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase MemImageType RiscvSemantics State Run Specs Fs.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr.
From OssFuzzTheorems.fast_float.from_chars.images Require Import Asan.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require ShapeSet RealizesCfg AsanAcct FxLin FxCore FxSound FxStep.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLoop.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxImg FxSubst FxLoop FxPlan FxFrame FxFacts FxEcall.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.ShapeSet OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.RealizesCfg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.AsanAcct OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLin OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxCore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSound OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxStep OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop.FxExplore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSubst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFrame OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFacts OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxEcall.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxBacking FxChDen FxChNull FxChain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxWvC FxChMain FxChFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChFam.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxBacking OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChDen OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChNull OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChain.FxChSys OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxWvC OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChMain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChFam OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChFam.FxChMap.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanImgScan AsanImg AsanTbl AsanTblM AsanTblMd AsanTblML AsanEntry AsanPlan.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanFinC.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanFinC.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanTMain2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanTMain2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanMainSF.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanMainSF AsanMainWF.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanMainP.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanMainP.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanMainP.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanPhases3.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanLit AsanCpSW AsanPhases3.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanPhCTA.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanPhL5NB.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanPhCTA.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanPhCTA.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanPhCTA AsanPhCTANB AsanPhCTB.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanPhCTANB.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanPhCTZA.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanPhCTZA.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanImgScan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTbl OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTblM OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTblMd OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTblML OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanEntry OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanFinC.AsanStart OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanFinC OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTMain2.AsanShort OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTMain2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanMainSF.AsanSpecF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanMainSF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanMainWF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanMainP.AsanMainG1F OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanMainP.AsanPhases OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanMainP OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhases3.AsanPhases2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanLit OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanCpSW OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhases3 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhCTA.AsanPhL5 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhL5NB OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhCTA.AsanPhT5 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhCTA.AsanPhT6 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhCTA OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhCTANB OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhCTB OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhCTANB.AsanPhCTBNB OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhCTZA OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhCTZA.AsanPhCTZB.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require Import AsanPNodes.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC Require Import AcAst AcFam AcSubst AcMALlib.
Import ListNotations.
Local Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Definition CONTS5 : list (sst * smodel * fstate * shp * ast) := [PHT6_C; CTA_C; CTB_C].
Definition NB6 : positive := Eval vm_compute in s_next PHT6_S.
Definition CHAIN5 : MCW := PHWCL 5 PHL5_S PHL5_N0 PHL5_FS PHL5_SH PHL5_MEAS (GC (MCont 0 NB6)) (KCT2 1 2 CTA_NB CTB_NB (CTZA 5) (CTZB 5)).
Definition ph5_res : option (list (sst * smodel * fstate * shp * ast)) :=
  mcheck ASEGS LIM TBLM IMGMd PV 65536 GHI false (Some H0) apostW anil aeqb awf acopy_alloc asubst ag_ok alins_a aset_a amod_a [] CONTS5 CHAIN5 PHT5_S PHT5_M PHT5_FS PHT5_SH PHT5_A.
Definition ph5_chk : bool := is_some ph5_res.
End AsanPhK5.


Module AsanPhK5Cert.
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Bool.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require Import FxCore.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require Import FxChDen FxChain FxChMain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC Require Import AcAst.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhK5Thm.AsanPhK5.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Lemma ph5_ok : ph5_res = Some nil.
Proof. vm_cast_no_check (eq_refl (Some (@nil (sst * smodel * fstate * shp * ast)))). Qed.
Lemma ph5_chk_true : ph5_chk = true.
Proof. unfold ph5_chk. rewrite ph5_ok. reflexivity. Qed.
End AsanPhK5Cert.

Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanImgScan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTbl OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTblM OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTblMd OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTblML OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanEntry OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanFinC.AsanStart OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanFinC OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTMain2.AsanShort OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanEntry.AsanSegs OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTMain2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanMainSF.AsanSpecF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanMainSF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanMainWF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanMainP OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanLit OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanCpSW OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhases3 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhCTA.AsanPhT5 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhCTA.AsanPhT6 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhCTA OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhCTANB OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhCTB OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhCTANB.AsanPhCTBNB OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhK5Thm.AsanPhK5 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhK5Thm.AsanPhK5Cert.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC Require Import AcAst AcHA AcFam AcSubst AcMALlib AcFam2 AcFam2Ok.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require Import AsanPNodes.
Import ListNotations.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Strategy opaque [TBLM TBLMd IMGMd mcheck].

Section Ph.
Variable cfg : SpuriousCfg.
Hypothesis Hoff : sc_alloc cfg = false.
Hypothesis Hfs : sc_fs cfg = true.
(* [comment removed for export] *)
Let Hanode2 : forall nk, anode_ok ASEGS cfg LIM (apost_alloc2 LIM) awf HA nk := alloc2_anode_ok cfg LIM A_wx A_segb Hoff A_respos A_reswf.
Variables (path0 : path) (data0 : list byte) (fs0 : Fs.Fs) (argv0 : list byte).
Hypothesis Hp1 : path_eqb path0 [] = false.
Hypothesis Hp2 : path_has_slash path0 = false.
Hypothesis Hp3 : path_is_dirref path0 = false.
Hypothesis Hp4 : (length path0 < path_max)%nat.
Hypothesis Hp5 : Forall (fun b => b <> Z_to_bv 8 0) path0.
Hypothesis HFL : 65536 <= Z.of_nat (length data0).

#[using="Hoff Hanode2"] Lemma anodeW_ok : forall nk, anode_ok ASEGS cfg LIM apostW awf HA nk.
Proof. LiaFast.lf_pins (fun (Hoff Hanode2 : LiaFast.U) => LiaFast.u0).
  exact (anodeP_ok ASEGS cfg LIM apostF awf HA (ppostW IMGMd) alloc_HA_agree
           (anodeP_ok ASEGS cfg LIM (apost_alloc2 LIM) awf HA (ppostA IMGMd QSITES_P MCSITES_P) alloc_HA_agree
              Hanode2
              (pnodeA_ok cfg LIM IMGMd QSITES_P MCSITES_P A_wx IMGMd_ok QSITES_P_ok MCSITES_P_ok))
           (pnodeW_ok cfg LIM IMGMd A_wx)).
Qed.
Definition cont_okA := cont_ok ASEGS cfg LIM PV path0 data0 fs0 argv0 false (Some H0) awf HA.

#[using="Hoff Hfs Hanode2 Hp1 Hp2 Hp3 Hp4 Hp5 HFL"] Theorem ph5_realizes : forall finals, ph5_res = Some finals -> cont_okA PHT6_C -> cont_okA CTA_C -> cont_okA CTB_C ->
  forall model0 mem0 E ms model, DEN ASEGS LIM model0 mem0 E PHT5_S PHT5_M ms model ->
  INV PV path0 data0 fs0 false (Some H0) mem0 E PHT5_S PHT5_M PHT5_FS model0 -> HAX awf HA E PHT5_S PHT5_M PHT5_A mem0 -> shp_wf (s_next PHT5_S) PHT5_SH = true ->
  (forall S' M' FS' sh' (a' : ast) model0' mem0' E' ms' model', In (S', M', FS', sh', a') finals ->
     DEN ASEGS LIM model0' mem0' E' S' M' ms' model' -> INV PV path0 data0 fs0 false (Some H0) mem0' E' S' M' FS' model0' ->
     HAX awf HA E' S' M' a' mem0' -> shp_wf (s_next S') sh' = true -> agree (s_next PHT5_S) E E' ->
     realizes_cfg ASEGS cfg (mkCfg ms' model') (shp_den path0 fs0 argv0 E' sh')) ->
  realizes_cfg ASEGS cfg (mkCfg ms model) (shp_den path0 fs0 argv0 E PHT5_SH).
Proof. LiaFast.lf_pins (fun (Hoff Hfs Hanode2 Hp1 Hp2 Hp3 Hp4 Hp5 HFL : LiaFast.U) => LiaFast.u0).
  intros finals Hres Hc2 HcA HcB model0 mem0 E ms model Hd Hi HX Hw Hk.
  change (mcheck ASEGS LIM TBLM IMGMd PV 65536 GHI false (Some H0) apostW anil aeqb awf acopy_alloc asubst ag_ok alins_a aset_a amod_a [] CONTS5 CHAIN5 PHT5_S PHT5_M PHT5_FS PHT5_SH PHT5_A = Some finals) in Hres.
  assert (Hcp : forall E M (a : ast) m0, HA E M a m0 -> Forall (sbytes_ok (sarg path0 argv0) E m0) (acopy_alloc a)) by (intros; constructor).
  assert (HC : forall j c, nth_error CONTS5 j = Some c -> cont_okA c).
  { intros j c Hj. destruct j as [|[|[|j]]]; [injection Hj as <-; exact Hc2 | injection Hj as <-; exact HcA | injection Hj as <-; exact HcB | destruct j; discriminate Hj]. }
  exact (mchain_sound ASEGS cfg LIM TBLM IMGMd A_wx A_segb Hoff Hfs A_respos A_reswf TBLM_ok IMGMd_ok TBLM_ecall PV path0 data0 fs0 65536 GHI argv0 false (Some H0)
            Hp1 Hp2 (fun _ => Hp3) Hp4 Hp5 (HFL_lb _ _ HFL) ltac:(unfold GHI; lia) Hseg_asan apostW anil aeqb awf HA acopy_alloc asubst ag_ok alins_a aset_a amod_a [] CONTS5 alloc_awf_mono alloc_aeqb_eq alloc_HA_nil alloc_HA_agree anodeW_ok Hcp HA_subst alloc_HA_mod (subs_nil_ok _) (subs_nil_use _) HC
            CHAIN5 PHT5_S PHT5_M PHT5_FS PHT5_SH PHT5_A finals Hres model0 mem0 E ms model Hd Hi HX Hw Hk).
Qed.

(* [comment removed for export] *)
#[using="Hoff Hfs Hanode2 Hp1 Hp2 Hp3 Hp4 Hp5 HFL"] Corollary ph5_cont : cont_okA PHT6_C -> cont_okA CTA_C -> cont_okA CTB_C -> cont_okA PHT5_C.
Proof. LiaFast.lf_pins (fun (Hoff Hfs Hanode2 Hp1 Hp2 Hp3 Hp4 Hp5 HFL : LiaFast.U) => LiaFast.u0).
  intros Hc2 HcA HcB. unfold cont_okA, cont_ok, PHT5_C. cbn [fst snd]. intros model0 mem0 E ms model Hd Hi HX Hw.
  exact (ph5_realizes nil ph5_ok Hc2 HcA HcB model0 mem0 E ms model Hd Hi HX Hw
           (fun S' M' FS' sh' a' model0' mem0' E' ms' model' Hin => False_ind _ Hin)).
Qed.
End Ph.
