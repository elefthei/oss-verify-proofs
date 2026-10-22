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
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanMainSF AsanMainWF.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanImgScan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTbl OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTblM OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTblMd OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanEntry OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanStart OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanFinC OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTMain2.AsanShort OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanEntry.AsanSegs OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTMain2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanMainSF.AsanSpecF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanMainSF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanMainWF.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB Require Import AcAst AcHA AcFam AcSubst AcSubstR AcPri AcFam2 AcFam3 AcMALlib.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require Import FxMchr AsanQcsX AsanPNodes FxPNodesX AsanBodyE AsanBNodes.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB Require M4Pure HarnFam HarnChain HarnEnt HarnDev HarnSubCh HarnMain HarnCertFam HarnCertLib HarnPM2 HPFP HPTH HPFHARN HarnPrepCert HarnCrlsCert_G HarnCrlsSub_G.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanCallTP.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanCallTP.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB Require HarnMidCert HarnMainCert.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.M4Pure OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HarnFam OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HarnChain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HarnEnt OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HarnDev OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HarnSubCh OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HarnMain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HarnCertFam OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HarnCertLib OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HarnPM2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HPFP OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HPTH OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HPFHARN OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HarnPrepCert OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HarnCrlsCert_G OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HarnCrlsSub_G OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanCallTP.HPMT OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanCallTP.HPMF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HarnMidCert OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HarnMainCert.
Import ListNotations.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

(* [comment removed for export] *)
Lemma some_inj4 : forall {A B C D : Type} (a a' : A) (b b' : B) (c c' : C) (d d' : D),
  Some (a, b, c, d) = Some (a', b', c', d') -> a = a' /\ b = b' /\ c = c' /\ d = d'.
Proof. intros A B C D a a' b b' c c' d d' H. inversion H. repeat split; reflexivity. Qed.

Section HarnSubs.
Variable cfg : SpuriousCfg.
Hypothesis Hoff : sc_alloc cfg = false.
Hypothesis Hanode3 : forall nk, anode_ok ASEGS cfg LIM (AcFam3.apost_alloc3 LIM) awf HA nk.
Hypothesis Hshm : forall model0 mem0 E S M ms model a, DEN ASEGS LIM model0 mem0 E S M ms model -> HA_on E M a mem0 -> a_pri a <> [] ->
  forall c, In c CLS -> 1 <= z_j (pden E a) c ->
  forall x, z_sh (pden E a) + 536870912 * c <= x < z_sh (pden E a) + 536870912 * c + 32768 ->
  rd1 ASEGS (mrestrict (Hof E M model) (ms_mem ms)) (Z_to_bv 64 x) <> None.
Hypothesis Hcons : Forall (con_ok ASEGS) CONS.

#[using="Hanode3 Hshm Hcons"] Theorem harn_prep_sub_ok : sub_ok ASEGS cfg LIM awf HA ENT_S ENT_M ENT_A PREP_FINS.
Proof. LiaFast.lf_pins (fun (Hanode3 Hshm Hcons : LiaFast.U) => LiaFast.u0).
  refine (sub_ok_of_PCHK cfg Hanode3 Hshm Hcons [] _ HARN_PREP ENT_S ENT_M ENT_A PREP_FINS prep_cert).
  intros j T MT aT fins H. destruct j; discriminate H.
Qed.
#[using="Hanode3 Hshm Hcons"] Lemma mid_subs_ok : forall j T MT aT fins, nth_error MID_SUBS j = Some (T, MT, aT, fins) -> sub_ok ASEGS cfg LIM awf HA T MT aT fins.
Proof. LiaFast.lf_pins (fun (Hanode3 Hshm Hcons : LiaFast.U) => LiaFast.u0).
  intros j T MT aT fins H.
  destruct j as [|j]; cbn [nth_error MID_SUBS] in H; try (destruct j; discriminate H); apply some_inj4 in H; destruct H as (<- & <- & <- & <-).
  exact (crls_sub_ok_G cfg Hanode3 Hshm Hcons).
Qed.
(* [comment removed for export] *)
#[using="Hanode3 Hshm Hcons"] Theorem mid_sub_ok : sub_ok ASEGS cfg LIM awf HA HPMT_S HPMT_M HPMT_A MID_FINS.
Proof. LiaFast.lf_pins (fun (Hanode3 Hshm Hcons : LiaFast.U) => LiaFast.u0).
  exact (sub_ok_of_PCHK cfg Hanode3 Hshm Hcons MID_SUBS mid_subs_ok MID_CH HPMT_S HPMT_M HPMT_A MID_FINS mid_cert).
Qed.
#[using="Hanode3 Hshm Hcons"] Lemma harn_subs_ok : forall j T MT aT fins, nth_error HARN_SUBS j = Some (T, MT, aT, fins) -> sub_ok ASEGS cfg LIM awf HA T MT aT fins.
Proof. LiaFast.lf_pins (fun (Hanode3 Hshm Hcons : LiaFast.U) => LiaFast.u0).
  intros j T MT aT fins H.
  destruct j as [|j]; cbn [nth_error HARN_SUBS] in H; try (destruct j; discriminate H); apply some_inj4 in H; destruct H as (<- & <- & <- & <-).
  exact mid_sub_ok.
Qed.
#[using="Hanode3 Hshm Hcons"] Theorem harn_sub_ok : sub_ok ASEGS cfg LIM awf HA HPTH_S HPTH_M HPTH_A HARN_FINS.
Proof. LiaFast.lf_pins (fun (Hanode3 Hshm Hcons : LiaFast.U) => LiaFast.u0).
  exact (sub_ok_of_PCHK cfg Hanode3 Hshm Hcons HARN_SUBS harn_subs_ok HARN_CH HPTH_S HPTH_M HPTH_A HARN_FINS harn_cert).
Qed.
End HarnSubs.
(* [comment removed for export] *)
