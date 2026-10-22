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
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanMainSF AsanMainWF AsanMainP AsanLit AsanCpSW AsanPhases3 AsanPhCTA.

Module AsanPhKCA.
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
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanLit AsanCpSW AsanPhases3 AsanPhCTA.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanPhLeafA1p.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanPhLeafA1p.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanPhLeafA1p.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanPhLeafA1p.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanPhLeafA1p.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanPhLeafA1p.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanPhLeafA1p.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanPhLeafA1p.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanPhLeafA1p.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanPhLeafA1p.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanImgScan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTbl OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTblM OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTblMd OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTblML OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanEntry OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanFinC.AsanStart OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanFinC OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTMain2.AsanShort OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTMain2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanMainSF.AsanSpecF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanMainSF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanMainWF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanMainP.AsanMainG1F OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanMainP.AsanPhases OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanMainP OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhases3.AsanPhases2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanLit OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanCpSW OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhases3 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhCTA OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhLeafA1p.AsanPhLeafA0h OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhLeafA1p.AsanPhLeafA0p OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhLeafA1p.AsanPhLeafA1h OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhLeafA1p OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhLeafA1p.AsanPhLeafA2h OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhLeafA1p.AsanPhLeafA2p OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhLeafA1p.AsanPhLeafA3h OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhLeafA1p.AsanPhLeafA3p OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhLeafA1p.AsanPhLeafA4h OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhLeafA1p.AsanPhLeafA4p.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require Import AsanPNodes.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC Require Import AcAst AcFam AcSubst AcMALlib.
Import ListNotations.
Local Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Definition CONTSCA : list (sst * smodel * fstate * shp * ast) := [BLFA0h_C; BLFA0p_C; BLFA1h_C; BLFA1p_C; BLFA2h_C; BLFA2p_C; BLFA3h_C; BLFA3p_C; BLFA4h_C; BLFA4p_C].
Definition LNBA (i : nat) : positive := match nth_error CONTSCA i with Some c => s_next (fst (fst (fst (fst c)))) | None => 1%positive end.
Definition CHAINCA : MCW := KCLOSECT (fun g => MCont (2 * g) (LNBA (2 * g))) (fun g => MCont (2 * g + 1) (LNBA (2 * g + 1))).
Definition phca_res : option (list (sst * smodel * fstate * shp * ast)) :=
  mcheck ASEGS LIM TBLM IMGMd PV 6 PHI false (Some H0) apostW anil aeqb awf acopy_alloc asubst ag_ok alins_a aset_a amod_a [] CONTSCA CHAINCA CTA_S CTA_M CTA_FS CTA_SH CTA_A.
End AsanPhKCA.


Module AsanPhKCACert.
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Bool.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require Import FxCore.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require Import FxChDen FxChain FxChMain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC Require Import AcAst.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhKCAThm.AsanPhKCA.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Lemma phca_ok : phca_res = Some nil.
Proof. vm_cast_no_check (eq_refl (Some (@nil (sst * smodel * fstate * shp * ast)))). Qed.
End AsanPhKCACert.

Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanImgScan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTbl OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTblM OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTblMd OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTblML OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanEntry OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanFinC.AsanStart OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanFinC OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTMain2.AsanShort OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanEntry.AsanSegs OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTMain2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanMainSF.AsanSpecF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanMainSF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanMainWF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanMainP OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanLit OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanCpSW OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhases3 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhCTA OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhKCAThm.AsanPhKCA OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPhKCAThm.AsanPhKCACert.
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
Hypothesis HFL : 6 <= Z.of_nat (length data0) <= PHI.

#[using="Hoff Hanode2"] Lemma anodeW_ok : forall nk, anode_ok ASEGS cfg LIM apostW awf HA nk.
Proof. LiaFast.lf_pins (fun (Hoff Hanode2 : LiaFast.U) => LiaFast.u0).
  exact (anodeP_ok ASEGS cfg LIM apostF awf HA (ppostW IMGMd) alloc_HA_agree
           (anodeP_ok ASEGS cfg LIM (apost_alloc2 LIM) awf HA (ppostA IMGMd QSITES_P MCSITES_P) alloc_HA_agree
              Hanode2
              (pnodeA_ok cfg LIM IMGMd QSITES_P MCSITES_P A_wx IMGMd_ok QSITES_P_ok MCSITES_P_ok))
           (pnodeW_ok cfg LIM IMGMd A_wx)).
Qed.
Definition cont_okA := cont_ok ASEGS cfg LIM PV path0 data0 fs0 argv0 false (Some H0) awf HA.

#[using="Hoff Hfs Hanode2 Hp1 Hp2 Hp3 Hp4 Hp5 HFL"] Theorem phca_realizes : forall finals, phca_res = Some finals -> Forall cont_okA CONTSCA ->
  forall model0 mem0 E ms model, DEN ASEGS LIM model0 mem0 E CTA_S CTA_M ms model ->
  INV PV path0 data0 fs0 false (Some H0) mem0 E CTA_S CTA_M CTA_FS model0 -> HAX awf HA E CTA_S CTA_M CTA_A mem0 -> shp_wf (s_next CTA_S) CTA_SH = true ->
  (forall S' M' FS' sh' (a' : ast) model0' mem0' E' ms' model', In (S', M', FS', sh', a') finals ->
     DEN ASEGS LIM model0' mem0' E' S' M' ms' model' -> INV PV path0 data0 fs0 false (Some H0) mem0' E' S' M' FS' model0' ->
     HAX awf HA E' S' M' a' mem0' -> shp_wf (s_next S') sh' = true -> agree (s_next CTA_S) E E' ->
     realizes_cfg ASEGS cfg (mkCfg ms' model') (shp_den path0 fs0 argv0 E' sh')) ->
  realizes_cfg ASEGS cfg (mkCfg ms model) (shp_den path0 fs0 argv0 E CTA_SH).
Proof. LiaFast.lf_pins (fun (Hoff Hfs Hanode2 Hp1 Hp2 Hp3 Hp4 Hp5 HFL : LiaFast.U) => LiaFast.u0).
  intros finals Hres HF model0 mem0 E ms model Hd Hi HX Hw Hk.
  change (mcheck ASEGS LIM TBLM IMGMd PV 6 PHI false (Some H0) apostW anil aeqb awf acopy_alloc asubst ag_ok alins_a aset_a amod_a [] CONTSCA CHAINCA CTA_S CTA_M CTA_FS CTA_SH CTA_A = Some finals) in Hres.
  assert (Hcp : forall E M (a : ast) m0, HA E M a m0 -> Forall (sbytes_ok (sarg path0 argv0) E m0) (acopy_alloc a)) by (intros; constructor).
  assert (HC : forall j c, nth_error CONTSCA j = Some c -> cont_okA c).
  { intros j c Hj. exact (proj1 (Forall_forall _ _) HF c (nth_error_In _ _ Hj)). }
  exact (mchain_sound ASEGS cfg LIM TBLM IMGMd A_wx A_segb Hoff Hfs A_respos A_reswf TBLM_ok IMGMd_ok TBLM_ecall PV path0 data0 fs0 6 PHI argv0 false (Some H0)
            Hp1 Hp2 (fun _ => Hp3) Hp4 Hp5 (HFL_of _ _ _ HFL) ltac:(unfold PHI; lia) Hseg_asan apostW anil aeqb awf HA acopy_alloc asubst ag_ok alins_a aset_a amod_a [] CONTSCA alloc_awf_mono alloc_aeqb_eq alloc_HA_nil alloc_HA_agree anodeW_ok Hcp HA_subst alloc_HA_mod (subs_nil_ok _) (subs_nil_use _) HC
            CHAINCA CTA_S CTA_M CTA_FS CTA_SH CTA_A finals Hres model0 mem0 E ms model Hd Hi HX Hw Hk).
Qed.

(* [comment removed for export] *)
#[using="Hoff Hfs Hanode2 Hp1 Hp2 Hp3 Hp4 Hp5 HFL"] Corollary phca_cont : Forall cont_okA CONTSCA -> cont_okA CTA_C.
Proof. LiaFast.lf_pins (fun (Hoff Hfs Hanode2 Hp1 Hp2 Hp3 Hp4 Hp5 HFL : LiaFast.U) => LiaFast.u0).
  intros HF. unfold cont_okA, cont_ok, CTA_C. cbn [fst snd]. intros model0 mem0 E ms model Hd Hi HX Hw.
  exact (phca_realizes nil phca_ok HF model0 mem0 E ms model Hd Hi HX Hw
           (fun S' M' FS' sh' a' model0' mem0' E' ms' model' Hin => False_ind _ Hin)).
Qed.
End Ph.
