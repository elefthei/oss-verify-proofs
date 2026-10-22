(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.openssl.ct.lib.CtLib Require Import ImageCtA.
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.Proofs.openssl.ct.lib.Lib Require Import PropExec MState Mem Frame Cells Step Arr. 
From OssFuzzTheorems.Proofs.openssl.ct.lib.Malloc Require Import MallocBlocks Malloc_iface.
From OssFuzzTheorems.Proofs.openssl.ct.lib.CtA Require Import RT_iface D_kit.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

Notation mem := (word -> option byte).

Definition agree_on (P : Z -> Prop) (m m' : mem) : Prop :=
  forall a, 0 <= a < 2^64 -> P a -> m' (wa a) = m (wa a).

Lemma agree_on_refl : forall P m, agree_on P m m.
Proof. intros P m a _ _. reflexivity. Qed.
Lemma agree_on_trans : forall P m1 m2 m3, agree_on P m1 m2 -> agree_on P m2 m3 -> agree_on P m1 m3.
Proof. intros P m1 m2 m3 H1 H2 a Ha HP. rewrite (H2 a Ha HP). exact (H1 a Ha HP). Qed.
Lemma agree_on_mono : forall (P P' : Z -> Prop) m m', agree_on P m m' -> (forall a, P' a -> P a) -> agree_on P' m m'.
Proof. intros P P' m m' H HP a Ha Hp. apply H; auto. Qed.

(* [comment removed for export] *)
Lemma agree_on_D : forall P m m', agree_on P m m' -> D_kit.agree_on P m m'.
Proof.
  intros P m m' H a Ha. pose proof (bv_unsigned_in_range 64 a) as R. change (bv_modulus 64) with (2^64) in R.
  specialize (H (bv_unsigned a) R Ha). unfold wa in H. rewrite Z_to_bv_bv_unsigned in H. exact H.
Qed.
Lemma agree_on_of_D : forall P m m', D_kit.agree_on P m m' -> agree_on P m m'.
Proof. intros P m m' H a Ha HP. apply H. unfold wa. rewrite unsigned_lit by lia. exact HP. Qed.

Lemma agree_on_of_munch_nw : forall W m m', munch W m m' -> agree_on (fun a => outside W a) m m'.
Proof. intros W m m' MU a Ha Ho. apply MU. unfold wa. rewrite unsigned_lit by lia. exact Ho. Qed.









(* [comment removed for export] *)
(* [comment removed for export] *)

Fixpoint rin_ivs (X : list (Z * Z)) (a : Z) : Prop :=
  match X with [] => False | iv :: X' => (fst iv <= a < snd iv) \/ rin_ivs X' a end.

Definition blk_an (b : block) : Z * Z := (blk_addr b, blk_size b).
(* [comment removed for export] *)
Definition gsz (p : Prog.bptr) : Z := snd (fst p).

(* [comment removed for export] *)
Definition aclient_addr (L : list block) (SP : Z) (a : Z) : Prop :=
  (SP <= a < USTACK_TOP) \/ client_static a \/ in_block L a.

Lemma in_live_blocks : forall (L : list block) a, in_live (map blk_an L) a <-> in_block L a.
Proof.
  intros L a. unfold in_live, in_block. split.
  - intros (p & n & Hin & Hr). apply in_map_iff in Hin as (b & E & Hb). unfold blk_an in E. injection E as <- <-. exists b. auto.
  - intros (b & Hb & Hr). exists (blk_addr b), (blk_size b). split; [|exact Hr]. apply in_map_iff. exists b. auto.
Qed.

Lemma aclient_of_addr : forall L SP a, aclient_addr L SP a -> aclient (map blk_an L) [] SP a.
Proof.
  intros L SP a [H|[H|H]]; [left; exact H | right; left; exact H | right; right; left; apply in_live_blocks; exact H].
Qed.

(* [comment removed for export] *)
Lemma aclient_of_addr_incl : forall live L SP a, (forall e, In e (map blk_an L) -> In e live) -> aclient_addr L SP a -> aclient live [] SP a.
Proof.
  intros live L SP a HI [H|[H|H]]; [left; exact H | right; left; exact H | right; right; left].
  apply in_live_blocks in H. destruct H as (p & n & Hin & Hr). exists p, n. split; [exact (HI _ Hin) | exact Hr].
Qed.

Lemma agree_of_rt_pres_incl : forall live L SP m m', (forall e, In e (map blk_an L) -> In e live) ->
  rt_pres live [] SP m m' -> agree_on (aclient_addr L SP) m m'.
Proof.
  intros live L SP m m' HI H a Ha Hc. apply H. unfold wa. rewrite unsigned_lit by lia. eapply aclient_of_addr_incl; eauto.
Qed.

Lemma agree_of_rt_pres_ex_incl : forall live L SP d n m m', (forall e, In e (map blk_an L) -> In e live) ->
  rt_pres_ex live [] SP d n m m' -> agree_on (fun a => aclient_addr L SP a /\ ~ (d <= a < d + n)) m m'.
Proof.
  intros live L SP d n m m' HI H a Ha [Hc Hd]. apply H; unfold wa; rewrite unsigned_lit by lia; [eapply aclient_of_addr_incl; eauto | exact Hd].
Qed.

Lemma agree_of_rt_pres_fp_incl : forall live L SP W m m', (forall e, In e (map blk_an L) -> In e live) ->
  rt_pres_fp live [] SP W m m' -> agree_on (fun a => aclient_addr L SP a /\ outside W a) m m'.
Proof.
  intros live L SP W m m' HI H a Ha [Hc Hd]. apply H; unfold wa; rewrite unsigned_lit by lia; [eapply aclient_of_addr_incl; eauto | exact Hd].
Qed.

Lemma agree_of_rt_pres : forall L SP m m', rt_pres (map blk_an L) [] SP m m' -> agree_on (aclient_addr L SP) m m'.
Proof.
  intros L SP m m' H a Ha Hc. apply H. unfold wa. rewrite unsigned_lit by lia. apply aclient_of_addr. exact Hc.
Qed.

Lemma agree_of_rt_pres_ex : forall L SP d n m m', rt_pres_ex (map blk_an L) [] SP d n m m' ->
  agree_on (fun a => aclient_addr L SP a /\ ~ (d <= a < d + n)) m m'.
Proof.
  intros L SP d n m m' H a Ha [Hc Hd]. apply H; unfold wa; rewrite unsigned_lit by lia; [apply aclient_of_addr; exact Hc | exact Hd].
Qed.

Lemma agree_of_rt_pres_fp : forall L SP W m m', rt_pres_fp (map blk_an L) [] SP W m m' ->
  agree_on (fun a => aclient_addr L SP a /\ outside W a) m m'.
Proof.
  intros L SP W m m' H a Ha [Hc Hd]. apply H; unfold wa; rewrite unsigned_lit by lia; [apply aclient_of_addr; exact Hc | exact Hd].
Qed.
(* [comment removed for export] *)

