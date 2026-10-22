(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
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
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC Require AcAst AcHA AcFam AcSubst AcSubstR AcPri AcFam2 AcFam3 AcFam3Ok AcMALlib.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC Require AcDepDen.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC.AcAst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC.AcHA OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC.AcFam OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC.AcSubst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC.AcSubstR OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC.AcPri OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC.AcFam2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC.AcFam3 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC.AcFam3Ok OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC.AcMALlib OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC.AcDepDen.AcShmRd.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require FxMchr AsanQcsX AsanPNodes FxPNodesX AsanTblH2 AsanBodyE AsanBNodes AsanBodyFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require AsanTblH2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require AsanCallTP.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require AsanCallTP AsanCallTL AsanBodyIf.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.FxMchr OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanQcsX OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanPNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.FxPNodesX OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanTblH2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanBodyE OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanBNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanBodyFam OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanTblH2.AsanTailDefs OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanCallTP.AsanCallTE OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanCallTP OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanCallTL OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanBodyIf.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4H Require M4Pure HarnEnt HarnDev.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require AsanCallTP.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require AsanCallTP.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require AsanCallTP.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4H Require HPFP HPTH HPFHARN.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4H.M4Pure OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4H.HarnEnt OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4H.HarnDev OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanCallTP.HEFP OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanCallTP.HETH OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanCallTP.HEFH OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4H.HPFP OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4H.HPTH OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4H.HPFHARN.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4H Require HarnSubsE HarnSubs.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HL Require HarnSubs.
Import ListNotations.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
(* [comment removed for export] *)
Local Lemma some_inj1 : forall {A : Type} (a a' : A), Some a = Some a' -> a = a'.
Proof. intros A a a' H. inversion H. reflexivity. Qed.
Local Lemma some_inj4 : forall {A B C D : Type} (a a' : A) (b b' : B) (c c' : C) (d d' : D), Some (a, b, c, d) = Some (a', b', c', d') -> a = a' /\ b = b' /\ c = c' /\ d = d'.
Proof. intros A B C D a a' b b' c c' d d' H. inversion H. auto. Qed.

(* [comment removed for export] *)
Definition harn_hyps (cfg : SpuriousCfg) : Prop :=
  Forall (con_ok ASEGS) CONS.

Section IfOk.
Variable cfg : SpuriousCfg.
Hypothesis Hoff : sc_alloc cfg = false.
Hypothesis Hharn : harn_hyps cfg.

#[using="Hoff"] Lemma anodeX_ok : forall nk, anode_ok ASEGS cfg LIM apostX awf HA nk.
Proof. LiaFast.lf_pins (fun (Hoff : LiaFast.U) => LiaFast.u0). exact (anodeB_ok cfg (alloc3_anode_ok cfg LIM A_wx A_segb Hoff A_respos A_reswf) (cls_shadow_readable LIM)). Qed.

#[using="Hoff Hharn"] Lemma subsH_ok : forall j T MT aT fins, nth_error SUBS_H j = Some (T, MT, aT, fins) -> sub_ok ASEGS cfg LIM awf HA T MT aT fins.
Proof. LiaFast.lf_pins (fun (Hoff Hharn : LiaFast.U) => LiaFast.u0).
  intros j T MT aT fins Hj. pose proof Hharn as Hcons. unfold harn_hyps in Hcons.
  pose proof (alloc3_anode_ok cfg LIM A_wx A_segb Hoff A_respos A_reswf) as Hanode3.
  destruct j as [|[|[|[|[|[|j]]]]]]; cbn [nth_error SUBS_H] in Hj.
  - apply some_inj4 in Hj. destruct Hj as (<- & <- & <- & <-). exact (HarnSubsE.harn_prep_sub_ok cfg Hanode3 (cls_shadow_readable LIM) Hcons).
  - apply some_inj4 in Hj. destruct Hj as (<- & <- & <- & <-). first [exact (M4H.HarnSubs.harn_prep_sub_ok cfg Hanode3 (cls_shadow_readable LIM) Hcons) | exact (M4H.HarnSubs.harn_prep_sub_ok cfg Hoff Hanode3 (cls_shadow_readable LIM) Hcons)].
  - apply some_inj4 in Hj. destruct Hj as (<- & <- & <- & <-). first [exact (M4HL.HarnSubs.harn_prep_sub_ok cfg Hanode3 (cls_shadow_readable LIM) Hcons) | exact (M4HL.HarnSubs.harn_prep_sub_ok cfg Hoff Hanode3 (cls_shadow_readable LIM) Hcons)].
  - apply some_inj4 in Hj. destruct Hj as (<- & <- & <- & <-). exact (HarnSubsE.harn_sub_ok cfg Hanode3 (cls_shadow_readable LIM) Hcons).
  - apply some_inj4 in Hj. destruct Hj as (<- & <- & <- & <-). first [exact (M4H.HarnSubs.harn_sub_ok cfg Hanode3 (cls_shadow_readable LIM) Hcons) | exact (M4H.HarnSubs.harn_sub_ok cfg Hoff Hanode3 (cls_shadow_readable LIM) Hcons)].
  - apply some_inj4 in Hj. destruct Hj as (<- & <- & <- & <-). first [exact (M4HL.HarnSubs.harn_sub_ok cfg Hanode3 (cls_shadow_readable LIM) Hcons) | exact (M4HL.HarnSubs.harn_sub_ok cfg Hoff Hanode3 (cls_shadow_readable LIM) Hcons)].
  - destruct j; discriminate Hj.
Qed.
End IfOk.

(* [comment removed for export] *)
Lemma subsH_okU (cfg : SpuriousCfg) (Hoff : sc_alloc cfg = false) (Hharn : harn_hyps cfg) :
  forall j T MT aT fins, nth_error SUBS_H j = Some (T, MT, aT, fins) -> sub_ok ASEGS cfg LIM awf HA T MT aT fins.
Proof. first [exact (subsH_ok cfg Hoff Hharn) | exact (subsH_ok cfg Hharn)]. Qed.
(* [comment removed for export] *)
Lemma subsHE_okU (cfg : SpuriousCfg) (Hoff : sc_alloc cfg = false) (Hharn : harn_hyps cfg) :
  forall j T MT aT fins, nth_error SUBS_HE j = Some (T, MT, aT, fins) -> sub_ok ASEGS cfg LIM awf HA T MT aT fins.
Proof.
  intros j T MT aT fins Hj.
  destruct j as [|j]; [cbn [nth_error SUBS_HE] in Hj; unfold SUBH_E0, SUBH_E1 in Hj; apply some_inj4 in Hj; destruct Hj as (<- & <- & <- & <-); exact (subsH_okU cfg Hoff Hharn 0%nat _ _ _ _ eq_refl)|].
  destruct j as [|j]; [cbn [nth_error SUBS_HE] in Hj; unfold SUBH_E0, SUBH_E1 in Hj; apply some_inj4 in Hj; destruct Hj as (<- & <- & <- & <-); exact (subsH_okU cfg Hoff Hharn 0%nat _ _ _ _ eq_refl)|].
  destruct j as [|j]; [cbn [nth_error SUBS_HE] in Hj; unfold SUBH_E0, SUBH_E1 in Hj; apply some_inj4 in Hj; destruct Hj as (<- & <- & <- & <-); exact (subsH_okU cfg Hoff Hharn 0%nat _ _ _ _ eq_refl)|].
  destruct j as [|j]; [cbn [nth_error SUBS_HE] in Hj; unfold SUBH_E0, SUBH_E1 in Hj; apply some_inj4 in Hj; destruct Hj as (<- & <- & <- & <-); exact (subsH_okU cfg Hoff Hharn 3%nat _ _ _ _ eq_refl)|].
  destruct j as [|j]; [cbn [nth_error SUBS_HE] in Hj; unfold SUBH_E0, SUBH_E1 in Hj; apply some_inj4 in Hj; destruct Hj as (<- & <- & <- & <-); exact (subsH_okU cfg Hoff Hharn 3%nat _ _ _ _ eq_refl)|].
  destruct j as [|j]; [cbn [nth_error SUBS_HE] in Hj; unfold SUBH_E0, SUBH_E1 in Hj; apply some_inj4 in Hj; destruct Hj as (<- & <- & <- & <-); exact (subsH_okU cfg Hoff Hharn 3%nat _ _ _ _ eq_refl)|].
  cbn [nth_error SUBS_HE] in Hj. destruct j; discriminate Hj.
Qed.
Lemma subsHP_okU (cfg : SpuriousCfg) (Hoff : sc_alloc cfg = false) (Hharn : harn_hyps cfg) :
  forall j T MT aT fins, nth_error SUBS_HP j = Some (T, MT, aT, fins) -> sub_ok ASEGS cfg LIM awf HA T MT aT fins.
Proof.
  intros j T MT aT fins Hj.
  destruct j as [|j]; [cbn [nth_error SUBS_HP] in Hj; unfold SUBH_P0, SUBH_P1 in Hj; apply some_inj4 in Hj; destruct Hj as (<- & <- & <- & <-); exact (subsH_okU cfg Hoff Hharn 1%nat _ _ _ _ eq_refl)|].
  destruct j as [|j]; [cbn [nth_error SUBS_HP] in Hj; unfold SUBH_P0, SUBH_P1 in Hj; apply some_inj4 in Hj; destruct Hj as (<- & <- & <- & <-); exact (subsH_okU cfg Hoff Hharn 1%nat _ _ _ _ eq_refl)|].
  destruct j as [|j]; [cbn [nth_error SUBS_HP] in Hj; unfold SUBH_P0, SUBH_P1 in Hj; apply some_inj4 in Hj; destruct Hj as (<- & <- & <- & <-); exact (subsH_okU cfg Hoff Hharn 1%nat _ _ _ _ eq_refl)|].
  destruct j as [|j]; [cbn [nth_error SUBS_HP] in Hj; unfold SUBH_P0, SUBH_P1 in Hj; apply some_inj4 in Hj; destruct Hj as (<- & <- & <- & <-); exact (subsH_okU cfg Hoff Hharn 4%nat _ _ _ _ eq_refl)|].
  destruct j as [|j]; [cbn [nth_error SUBS_HP] in Hj; unfold SUBH_P0, SUBH_P1 in Hj; apply some_inj4 in Hj; destruct Hj as (<- & <- & <- & <-); exact (subsH_okU cfg Hoff Hharn 4%nat _ _ _ _ eq_refl)|].
  destruct j as [|j]; [cbn [nth_error SUBS_HP] in Hj; unfold SUBH_P0, SUBH_P1 in Hj; apply some_inj4 in Hj; destruct Hj as (<- & <- & <- & <-); exact (subsH_okU cfg Hoff Hharn 4%nat _ _ _ _ eq_refl)|].
  cbn [nth_error SUBS_HP] in Hj. destruct j; discriminate Hj.
Qed.
Lemma subsHL_okU (cfg : SpuriousCfg) (Hoff : sc_alloc cfg = false) (Hharn : harn_hyps cfg) :
  forall j T MT aT fins, nth_error SUBS_HL j = Some (T, MT, aT, fins) -> sub_ok ASEGS cfg LIM awf HA T MT aT fins.
Proof.
  intros j T MT aT fins Hj.
  destruct j as [|j]; [cbn [nth_error SUBS_HL] in Hj; unfold SUBH_L0, SUBH_L1 in Hj; apply some_inj4 in Hj; destruct Hj as (<- & <- & <- & <-); exact (subsH_okU cfg Hoff Hharn 2%nat _ _ _ _ eq_refl)|].
  destruct j as [|j]; [cbn [nth_error SUBS_HL] in Hj; unfold SUBH_L0, SUBH_L1 in Hj; apply some_inj4 in Hj; destruct Hj as (<- & <- & <- & <-); exact (subsH_okU cfg Hoff Hharn 2%nat _ _ _ _ eq_refl)|].
  destruct j as [|j]; [cbn [nth_error SUBS_HL] in Hj; unfold SUBH_L0, SUBH_L1 in Hj; apply some_inj4 in Hj; destruct Hj as (<- & <- & <- & <-); exact (subsH_okU cfg Hoff Hharn 2%nat _ _ _ _ eq_refl)|].
  destruct j as [|j]; [cbn [nth_error SUBS_HL] in Hj; unfold SUBH_L0, SUBH_L1 in Hj; apply some_inj4 in Hj; destruct Hj as (<- & <- & <- & <-); exact (subsH_okU cfg Hoff Hharn 5%nat _ _ _ _ eq_refl)|].
  destruct j as [|j]; [cbn [nth_error SUBS_HL] in Hj; unfold SUBH_L0, SUBH_L1 in Hj; apply some_inj4 in Hj; destruct Hj as (<- & <- & <- & <-); exact (subsH_okU cfg Hoff Hharn 5%nat _ _ _ _ eq_refl)|].
  destruct j as [|j]; [cbn [nth_error SUBS_HL] in Hj; unfold SUBH_L0, SUBH_L1 in Hj; apply some_inj4 in Hj; destruct Hj as (<- & <- & <- & <-); exact (subsH_okU cfg Hoff Hharn 5%nat _ _ _ _ eq_refl)|].
  cbn [nth_error SUBS_HL] in Hj. destruct j; discriminate Hj.
Qed.
