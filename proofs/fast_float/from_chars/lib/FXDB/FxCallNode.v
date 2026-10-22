(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run Fs.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require Import PropExec SeqExec ShapeSet RealizesCfg AsanAcct PlacementCount AllocNodesCfg.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLin FxCore.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxSound.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxSound FxMem FxRgs FxFacts FxStep.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLoop.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxSubst FxEnt FxLoop FxPlan FxFrame FxEcall.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChDen.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxDrv.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLin OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxCore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSound.FxGlue OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSound OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxMem OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxRgs OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFacts OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxStep OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop.FxExplore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSubst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxEnt OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFrame OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxEcall OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChDen.FxAcct OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxDrv.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxBacking FxChDen FxChLib.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChNull.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChSep.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChNull.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChEnt FxChStart FxChWv FxChFam.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxBacking OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChDen OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChLib OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChNull.FxChSeg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChSep OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChNull.FxChNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChEnt OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChStart OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChWv OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require Import FxRunPost FxRunPostM.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

Section Call.
Variable segs : list Segment.
Variable cfg : SpuriousCfg.
Variable LIMIT : Z.
Hypothesis Hwx : wx_segs_nowrap segs.

(* [comment removed for export] *)
Definition call_rule (S K : sst) : Prop :=
  forall E ms, sden segs E S ms ->
  exists ms'' E'', isteps segs ms ms'' /\ sden segs E'' K ms'' /\ agree (s_next S) E E'' /\
    (forall x, fr_pt E (s_rgs S) x -> ms_mem ms'' x = ms_mem ms x).

#[using="Hwx"] Theorem den_call_gen : forall model0 mem0 E S M ms model T K,
  DEN segs LIMIT model0 mem0 E S M ms model ->
  call_rule S K -> (s_next S <= s_next K)%positive -> shape (s_rgs K) = shape (s_rgs S) ->
  (forall E' ms' model', agree (s_next S) E E' -> DEN segs LIMIT model0 mem0 E' K M ms' model' -> realizes_cfg segs cfg (mkCfg ms' model') T) ->
  realizes_cfg segs cfg (mkCfg ms model) T.
Proof. LiaFast.lf_pins (fun (Hwx : LiaFast.U) => LiaFast.u0).
  intros model0 mem0 E S M ms model T K Hd Hrule Hn Hsh Hk.
  destruct (Hrule E (restrict (Hof E M model) ms) (dn_sden _ _ _ _ _ _ _ _ _ Hd)) as (ms'' & E'' & Hst & HdK & Ha & Hfr).
  apply (den_isteps_m segs cfg LIMIT model0 mem0 Hwx E S M ms model T K ms'' E'' Hd Hst HdK Ha Hn); [| exact Hsh |].
  - intros x Hx. apply Hfr. left. exact Hx.
  - intros E' ms' model' Hd' Ha' _. exact (Hk E' ms' model' Ha' Hd').
Qed.

(* [comment removed for export] *)
Context {P : Type}.
Variable ppost : P -> sst -> smodel -> option sst.
Hypothesis Hppost : forall p S M K, ppost p S M = Some K ->
  call_rule S K /\ (s_next S <= s_next K)%positive /\ shape (s_rgs K) = shape (s_rgs S).

#[using="Hwx Hppost"] Theorem pnode_of_call : forall p, pnode_ok segs cfg LIMIT ppost p.
Proof. LiaFast.lf_pins (fun (Hwx Hppost : LiaFast.U) => LiaFast.u0).
  intros p S M S' Hp model0 mem0 E ms model T Hd Hk.
  destruct (Hppost p S M S' Hp) as (Hr & Hn & Hsh).
  exact (den_call_gen model0 mem0 E S M ms model T S' Hd Hr Hn Hsh Hk).
Qed.
End Call.
(* [comment removed for export] *)
