(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.openssl.ct.lib.CtLib Require Import ImageCtA.
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool Permutation.
From stdpp Require Import gmap.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.Proofs.openssl.ct.lib.Lib Require Import PropExec MState Mem Frame Cells Step Arr. 
From OssFuzzTheorems.Proofs.openssl.ct.lib.Malloc Require Import MallocBlocks Malloc_iface.
From OssFuzzTheorems.Proofs.openssl.ct.lib.Spec Require Import Malloc Prog.
From OssFuzzTheorems.Proofs.openssl.ct.lib.A Require Import Shadow.
From OssFuzzTheorems.Proofs.openssl.ct.lib.CtA Require Import Layout RT_iface D_kit.
From OssFuzzTheorems.Proofs.openssl.ct.lib.BnAsan Require Import AsKit.
From OssFuzzTheorems.Proofs.openssl.ct.lib.CtKitA Require Import LibKitA ARun.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

(* [comment removed for export] *)
(* [comment removed for export] *)

Lemma bptr_eqb_refl : forall p, bptr_eqb p p = true.
Proof. intros [[r o] z]. unfold bptr_eqb, aptr_eqb. cbn. rewrite N.eqb_refl, !Z.eqb_refl. reflexivity. Qed.

Lemma bptr_eqb_eq : forall p q, bptr_eqb p q = true -> p = q.
Proof.
  intros [[r o] z] [[r' o'] z'] H. unfold bptr_eqb, aptr_eqb in H. cbn in H.
  apply andb_true_iff in H. destruct H as [H1 H2]. apply andb_true_iff in H1. destruct H1 as [H0 H1].
  apply N.eqb_eq in H0. apply Z.eqb_eq in H1. apply Z.eqb_eq in H2. subst. reflexivity.
Qed.

Lemma lb_remove_notin : forall p LB, ~ In p (map blk_id LB) -> lb_remove p LB = LB.
Proof.
  intros p LB. unfold lb_remove. induction LB as [|b LB IH]; intros H; [reflexivity|].
  rewrite filter_cons. cbn [map In] in H. destruct (decide _) as [Y|N].
  - rewrite IH; [reflexivity|]. intros H'. apply H. right. exact H'.
  - exfalso. destruct (bptr_eqb (blk_id b) p) eqn:E.
    + apply H. left. apply bptr_eqb_eq in E. exact E.
    + apply N. cbn [negb]. exact I.
Qed.

Lemma lb_remove_head : forall b LB, List.NoDup (map blk_id (b :: LB)) -> lb_remove (blk_id b) (b :: LB) = LB.
Proof.
  intros b LB ND. cbn [map] in ND. apply NoDup_cons_iff in ND. destruct ND as [NI _].
  unfold lb_remove. rewrite filter_cons, bptr_eqb_refl. destruct (decide _) as [Y|N]; [exfalso; exact Y|].
  apply (lb_remove_notin (blk_id b) LB). exact NI.
Qed.


Lemma bptr_eqb_neq : forall p q, p <> q -> bptr_eqb p q = false.
Proof. intros p q H. destruct (bptr_eqb p q) eqn:E; [|reflexivity]. exfalso. apply H. apply bptr_eqb_eq. exact E. Qed.

Lemma lb_remove_cons : forall p b L,
  lb_remove p (b :: L) = if bptr_eqb (blk_id b) p then lb_remove p L else b :: lb_remove p L.
Proof.
  intros p b L. unfold lb_remove. rewrite filter_cons. destruct (bptr_eqb (blk_id b) p); cbn [negb];
    destruct (decide _) as [Y|N]; try reflexivity; [exfalso; exact Y| exfalso; apply N; exact I].
Qed.

Lemma lb_remove_In : forall p L b, In b (lb_remove p L) <-> In b L /\ blk_id b <> p.
Proof.
  intros p L b. induction L as [|c L IH]; [cbn; tauto|].
  rewrite lb_remove_cons. destruct (bptr_eqb (blk_id c) p) eqn:E.
  - apply bptr_eqb_eq in E. rewrite IH. cbn [In]. split; [intros [H N]; split; [right; exact H| exact N]|].
    intros [[<-|H] N]; [contradiction| split; assumption].
  - cbn [In]. rewrite IH. split; [intros [<-|[H N]]; [split; [left; reflexivity|]| split; [right; exact H| exact N]]|].
    + intros E2. rewrite E2, bptr_eqb_refl in E. discriminate.
    + intros [[<-|H] N]; [left; reflexivity| right; split; assumption].
Qed.

Lemma lb_remove_app : forall p L1 L2, lb_remove p (L1 ++ L2) = lb_remove p L1 ++ lb_remove p L2.
Proof.
  intros p L1 L2. induction L1 as [|c L1 IH]; [reflexivity|].
  cbn [app]. rewrite !lb_remove_cons. destruct (bptr_eqb (blk_id c) p); [exact IH| cbn [app]; rewrite IH; reflexivity].
Qed.

Lemma lb_remove_incl : forall p L b, In b (lb_remove p L) -> In b L.
Proof. intros p L b H. apply lb_remove_In in H. tauto. Qed.

(* [comment removed for export] *)
Lemma lb_remove_length : forall p (L : list block), List.NoDup (map blk_id L) -> In p (map blk_id L) ->
  S (length (lb_remove p L)) = length L.
Proof.
  intros p L. induction L as [|b L IH]; intros ND Hin; [destruct Hin|].
  cbn [map] in ND. apply NoDup_cons_iff in ND as [N1 N2]. rewrite lb_remove_cons. destruct (bptr_eqb (blk_id b) p) eqn:E.
  - apply bptr_eqb_eq in E. subst p. rewrite (lb_remove_notin _ _ N1). reflexivity.
  - cbn [length]. f_equal. apply IH; [exact N2|]. destruct Hin as [Hin|Hin]; [|exact Hin].
    rewrite Hin, bptr_eqb_refl in E. discriminate.
Qed.

Lemma lb_remove_app_l : forall p OW LB, List.NoDup (map blk_id (OW ++ LB)) -> In p (map blk_id OW) ->
  lb_remove p (OW ++ LB) = lb_remove p OW ++ LB.
Proof.
  intros p OW LB ND Hin. rewrite lb_remove_app. f_equal. apply lb_remove_notin.
  rewrite map_app in ND. intros H. revert ND Hin H. generalize (map blk_id OW) (map blk_id LB). clear.
  intros l1 l2 ND H1 H2. induction l1 as [|x l1 IH]; [contradiction|].
  cbn [app] in ND. apply NoDup_cons_iff in ND. destruct ND as [Hx ND]. destruct H1 as [->|H1]; [|auto].
  apply Hx. apply in_or_app. right. exact H2.
Qed.

Lemma nodup_app_l : forall {A} (l1 l2 : list A), List.NoDup (l1 ++ l2) -> List.NoDup l1.
Proof. intros A l1 l2 H. induction l1 as [|x l1 IH]; [constructor|]. cbn in H. apply NoDup_cons_iff in H. destruct H as [Hx H].
  constructor; [intros Hin; apply Hx; apply in_or_app; left; exact Hin| auto]. Qed.

Lemma nodup_app_r : forall {A} (l1 l2 : list A), List.NoDup (l1 ++ l2) -> List.NoDup l2.
Proof. intros A l1 l2 H. induction l1 as [|x l1 IH]; [exact H|]. cbn in H. apply NoDup_cons_iff in H. tauto. Qed.

Lemma nodup_app_disj : forall {A} (l1 l2 : list A) x, List.NoDup (l1 ++ l2) -> In x l1 -> In x l2 -> False.
Proof.
  intros A l1 l2 x H H1 H2. induction l1 as [|y l1 IH]; [contradiction|]. cbn in H. apply NoDup_cons_iff in H. destruct H as [Hy H].
  destruct H1 as [->|H1]; [apply Hy; apply in_or_app; right; exact H2| auto].
Qed.


(* [comment removed for export] *)
Lemma AH_addr_unique : forall (OW : list block) p A n A' n',
  List.NoDup (map blk_id OW) -> In (p, A, n) OW -> In (p, A', n') OW -> A = A' /\ n = n'.
Proof.
  intros OW p A n A' n' ND H1 H2. induction OW as [|c OW IH]; [contradiction|].
  cbn [map] in ND. apply NoDup_cons_iff in ND. destruct ND as [Hc ND].
  destruct H1 as [->|H1], H2 as [E|H2].
  - inversion E. auto.
  - exfalso. apply Hc. apply (in_map blk_id) in H2. exact H2.
  - subst c. exfalso. apply Hc. apply (in_map blk_id) in H1. exact H1.
  - auto.
Qed.


Lemma lb_remove_In_map : forall p (L : list block) b, In b L -> blk_id b <> p -> In b (lb_remove p L).
Proof. intros p L b H N. apply lb_remove_In. auto. Qed.

(* [comment removed for export] *)
(* [comment removed for export] *)

Section WithRT.







Definition blk_okA (b : block) : Prop := blk_addr b mod 16 = 0 /\ 0 < blk_size b /\ gsz (blk_id b) = blk_size b. (* [comment removed for export] *)
(* [comment removed for export] *)


Definition blk_apart (b b' : block) : Prop :=
  blk_addr b + blk_size b <= blk_addr b' \/ blk_addr b' + blk_size b' <= blk_addr b.
Fixpoint apartl (l : list block) : Prop :=
  match l with [] => True | b :: l' => Forall (blk_apart b) l' /\ apartl l' end.
(* [comment removed for export] *)

(* [comment removed for export] *)


(* [comment removed for export] *)
 (* [comment removed for export] *)
(* [comment removed for export] *)









(* [comment removed for export] *)


(* [comment removed for export] *)

(* [comment removed for export] *)




(* [comment removed for export] *)



Lemma fs_size_div8 : forall k, fs_size k = 8 * (fs_size k / 8) /\ 0 < fs_size k / 8.
Proof.
  intros k. unfold fs_size. rewrite Z.shiftl_mul_pow2 by lia. pose proof (Z.pow_pos_nonneg 2 (Z.of_nat k) ltac:(lia) ltac:(lia)) as P.
  replace (64 * 2 ^ Z.of_nat k) with (8 * 2 ^ Z.of_nat k * 8) by lia. rewrite Z.div_mul by lia. lia.
Qed.





(* [comment removed for export] *)


(* [comment removed for export] *)

(* [comment removed for export] *)


(* [comment removed for export] *)




(* [comment removed for export] *)



(* [comment removed for export] *)


(* [comment removed for export] *)

(* [comment removed for export] *)

(* [comment removed for export] *)

(* [comment removed for export] *)

(* [comment removed for export] *)

(* [comment removed for export] *)


Lemma in_split_ne : forall (L : list block) b1 b2, In b1 L -> In b2 L -> b1 <> b2 ->
  exists l1 l2, L = l1 ++ b1 :: l2 /\ In b2 (l1 ++ l2).
Proof.
  intros L b1 b2 H1 H2 NE. destruct (in_split _ _ H1) as (l1 & l2 & ->). exists l1, l2. split; [reflexivity|].
  apply in_app_or in H2. apply in_or_app. destruct H2 as [H2|[H2|H2]]; [left; exact H2 | congruence | right; exact H2].
Qed.

Lemma apartl_In : forall l b1 b2, apartl l -> In b1 l -> In b2 l -> b1 <> b2 -> blk_apart b1 b2.
Proof.
  induction l as [|c l IH]; intros b1 b2 AP H1 H2 NE; [contradiction|].
  cbn [apartl] in AP. destruct AP as [F AP]. destruct H1 as [->|H1], H2 as [->|H2].
  - congruence.
  - exact (proj1 (Forall_forall _ _) F b2 H2).
  - pose proof (proj1 (Forall_forall _ _) F b1 H1) as X. unfold blk_apart in *. lia.
  - exact (IH b1 b2 AP H1 H2 NE).
Qed.



(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)


Lemma live_remove_cons : forall A e l,
  live_remove A (e :: l) = if fst e =? A then live_remove A l else e :: live_remove A l.
Proof.
  intros A e l. unfold live_remove. rewrite filter_cons. destruct (fst e =? A); cbn [negb];
    destruct (decide _) as [Y|N]; try reflexivity; [exfalso; exact Y| exfalso; apply N; exact I].
Qed.

Lemma live_remove_perm : forall A l l', Permutation l l' -> Permutation (live_remove A l) (live_remove A l').
Proof.
  intros A l l' H. induction H as [| e l l' H IH | e1 e2 l | l1 l2 l3 H1 IH1 H2 IH2].
  - apply Permutation_refl.
  - rewrite !live_remove_cons. destruct (fst e =? A); [exact IH | apply perm_skip; exact IH].
  - rewrite !live_remove_cons. destruct (fst e1 =? A), (fst e2 =? A); try apply Permutation_refl. apply perm_swap.
  - eapply Permutation_trans; eassumption.
Qed.

Lemma live_remove_map : forall p A (L : list block),
  (forall b, In b L -> blk_addr b = A -> blk_id b = p) -> (forall b, In b L -> blk_id b = p -> blk_addr b = A) ->
  live_remove A (map blk_an L) = map blk_an (lb_remove p L).
Proof.
  intros p A L. induction L as [|b L IH]; intros H1 H2; [reflexivity|].
  assert (IH' := IH (fun b' Hb' => H1 b' (or_intror Hb')) (fun b' Hb' => H2 b' (or_intror Hb'))).
  rewrite lb_remove_cons. cbn [map]. rewrite live_remove_cons.
  change (fst (blk_an b)) with (blk_addr b).
  destruct (bptr_eqb (blk_id b) p) eqn:E.
  - apply bptr_eqb_eq in E. rewrite (H2 b (or_introl eq_refl) E), Z.eqb_refl. exact IH'.
  - assert (NA : blk_addr b <> A) by (intros EA; rewrite (H1 b (or_introl eq_refl) EA), bptr_eqb_refl in E; discriminate).
    apply Z.eqb_neq in NA. rewrite NA. cbn [map]. rewrite IH'. reflexivity.
Qed.

Lemma nodup_ids_perm : forall (L L' : list block), Permutation L L' -> List.NoDup (map blk_id L) -> List.NoDup (map blk_id L').
Proof. intros L L' P ND. eapply Permutation_NoDup; [apply Permutation_map; exact P | exact ND]. Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)



End WithRT.
