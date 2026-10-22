(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
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
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB Require Import AcAst AcHA AcFam AcSubst AcSubstR AcPri AcFam2 AcFam3 AcFam3Ok AcMALlib AcShmRd.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require FxMchr AsanQcsX AsanPNodes FxPNodesX AsanTblH2 AsanBodyE AsanBNodes AsanBodyFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanTblH2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanCallTE AsanCallTP AsanCallTL AsanBodyIf.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxMchr OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanQcsX OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanPNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxPNodesX OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanTblH2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBodyE OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBodyFam OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanTblH2.AsanTailDefs OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanCallTE OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanCallTP OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanCallTL OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBodyIf.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB Require M4Pure HarnEnt HarnDev.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanCallTE.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB Require HETH.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanCallTP.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB Require HPFP HPTH HPFHARN.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.M4Pure OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HarnEnt OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HarnDev OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanCallTE.HEFP OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HETH OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanCallTP.HEFH OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HPFP OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HPTH OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HPFHARN.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB Require HarnSubsE HarnSubs.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HLB Require HarnSubs.
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
  - apply some_inj4 in Hj. destruct Hj as (<- & <- & <- & <-). first [exact (M4HB.HarnSubs.harn_prep_sub_ok cfg Hanode3 (cls_shadow_readable LIM) Hcons) | exact (M4HB.HarnSubs.harn_prep_sub_ok cfg Hoff Hanode3 (cls_shadow_readable LIM) Hcons)].
  - apply some_inj4 in Hj. destruct Hj as (<- & <- & <- & <-). first [exact (M4HLB.HarnSubs.harn_prep_sub_ok cfg Hanode3 (cls_shadow_readable LIM) Hcons) | exact (M4HLB.HarnSubs.harn_prep_sub_ok cfg Hoff Hanode3 (cls_shadow_readable LIM) Hcons)].
  - apply some_inj4 in Hj. destruct Hj as (<- & <- & <- & <-). exact (HarnSubsE.harn_sub_ok cfg Hanode3 (cls_shadow_readable LIM) Hcons).
  - apply some_inj4 in Hj. destruct Hj as (<- & <- & <- & <-). first [exact (M4HB.HarnSubs.harn_sub_ok cfg Hanode3 (cls_shadow_readable LIM) Hcons) | exact (M4HB.HarnSubs.harn_sub_ok cfg Hoff Hanode3 (cls_shadow_readable LIM) Hcons)].
  - apply some_inj4 in Hj. destruct Hj as (<- & <- & <- & <-). first [exact (M4HLB.HarnSubs.harn_sub_ok cfg Hanode3 (cls_shadow_readable LIM) Hcons) | exact (M4HLB.HarnSubs.harn_sub_ok cfg Hoff Hanode3 (cls_shadow_readable LIM) Hcons)].
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
(* [comment removed for export] *)
