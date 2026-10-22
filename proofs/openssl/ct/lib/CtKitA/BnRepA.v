(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.openssl.ct.lib.CtLib Require Import ImageCtA.
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool Permutation.
From stdpp Require Import gmap.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.Proofs.openssl.ct.lib.Lib Require Import PropExec MState Mem Frame Cells Step Arr. 
From OssFuzzTheorems.Proofs.openssl.ct.lib.Malloc Require Import MallocRep MallocBlocks Malloc_iface.
From OssFuzzTheorems.Proofs.openssl.ct.lib.Spec Require Import Malloc Prog BnBase BnModel BnTree BnInv BnSpecs BnMInv.
From OssFuzzTheorems.Proofs.openssl.ct.lib.A Require Import Shadow.
From OssFuzzTheorems.Proofs.openssl.ct.lib.CtA Require Import Layout RT_iface.
From OssFuzzTheorems.Proofs.openssl.ct.lib.BnW Require Import BnMem.
From OssFuzzTheorems.Proofs.openssl.ct.lib.BnAsan Require Import AsKit.
From OssFuzzTheorems.Proofs.openssl.ct.lib.CtKitA Require Import LibKitA ARun BnHeapA BnRepDefs.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

(* [comment removed for export] *)
(* [comment removed for export] *)

Section WithRT0. 








Lemma wlimbs_length : forall l, length (wlimbs l) = length l.
Proof. intros. unfold wlimbs. apply length_map. Qed.
(* [comment removed for export] *)


(* [comment removed for export] *)


(* [comment removed for export] *)
(* [comment removed for export] *)

Lemma bns_gen_impl : forall (R R' : bnR) l a i,
  (forall j b, nth_error l j = Some b -> R (a + 24 * Z.of_nat j) b (RPool (i + j)) -> R' (a + 24 * Z.of_nat j) b (RPool (i + j))) ->
  bns_gen R a l i -> bns_gen R' a l i.
Proof.
  intros R R' l. induction l as [|b l IH]; intros a i H HG; [exact I|].
  cbn [bns_gen] in *. destruct HG as [H1 H2]. split.
  - specialize (H 0%nat b eq_refl). rewrite Z.mul_0_r, Z.add_0_r, Nat.add_0_r in H. apply H. exact H1.
  - apply IH; [|exact H2]. intros j b' Hj HR. specialize (H (S j) b' Hj).
    replace (a + 24 * Z.of_nat (S j)) with (a + 24 + 24 * Z.of_nat j) in H by lia.
    replace (i + S j)%nat with (S i + j)%nat in H by lia. apply H. exact HR.
Qed.

Lemma bns_gen_nth : forall (R : bnR) l a i j d, bns_gen R a l i -> (j < length l)%nat ->
  R (a + 24 * Z.of_nat j) (nth j l d) (RPool (i + j)).
Proof.
  intros R l. induction l as [|b l IH]; intros a i j d HG Hj; cbn in Hj; [lia|].
  cbn [bns_gen] in HG. destruct HG as [H1 H2]. destruct j as [|j].
  - cbn [nth]. rewrite Z.mul_0_r, Z.add_0_r, Nat.add_0_r. exact H1.
  - cbn [nth]. replace (a + 24 * Z.of_nat (S j)) with (a + 24 + 24 * Z.of_nat j) by lia.
    replace (i + S j)%nat with (S i + j)%nat by lia. apply IH; [exact H2| lia].
Qed.

Lemma bns_gen_set : forall (R : bnR) l a i j b', bns_gen R a l i -> (j < length l)%nat ->
  R (a + 24 * Z.of_nat j) b' (RPool (i + j)) -> bns_gen R a (list_set l j b') i.
Proof.
  intros R l. induction l as [|b l IH]; intros a i j b' HG Hj HR; cbn in Hj; [lia|].
  cbn [bns_gen] in HG. destruct HG as [H1 H2]. destruct j as [|j]; cbn [list_set bns_gen].
  - rewrite Z.mul_0_r, Z.add_0_r, Nat.add_0_r in HR. split; assumption.
  - split; [exact H1|]. apply IH; [exact H2| lia|].
    replace (a + 24 + 24 * Z.of_nat j) with (a + 24 * Z.of_nat (S j)) by lia.
    replace (S i + j)%nat with (i + S j)%nat by lia. exact HR.
Qed.

Lemma nth_error_nth_d : forall {A} (l : list A) j b d, nth_error l j = Some b -> nth j l d = b.
Proof. intros A l j b d H. apply nth_error_nth. exact H. Qed.



Lemma ctx_cells_set_vals : forall H Cu I c v, ctx_cells H Cu I (ctx_set_vals c v) = ctx_cells H Cu I c.
Proof. reflexivity. Qed.





End WithRT0.

(* [comment removed for export] *)
(* [comment removed for export] *)

Section WithRT1. 







Definition libw (a : Z) : Prop := rin_ivs LIBW_A a.

(* [comment removed for export] *)

(* [comment removed for export] *)


Ltac in_libw := intros ? ?; unfold libw, LIBW_A; cbn [rin_ivs fst snd]; cbn in *; lia.




(* [comment removed for export] *)

(* [comment removed for export] *)



End WithRT1.


(* [comment removed for export] *)
(* [comment removed for export] *)

Section WithRT2. 







Definition ids_ok (ls : lstate bptr) (AD : bn_addrs) (EA : err_addrs) : Prop :=
  List.NoDup (ad_ids AD ++ ea_ids EA ++ map fst (blocks_of ls)).

(* [comment removed for export] *)
Definition ref_sid (ls : lstate bptr) (AD : bn_addrs) (r : bnref) : option bptr :=
  match r with
  | RB1 => Some (ad_p1 AD) | RB2 => Some (ad_p2 AD) | RB3 => Some (ad_p3 AD) | RB4 => Some (ad_p4 AD) | RB5 => Some (ad_p5 AD)
  | RPool _ => cx_head (ls_ctx ls)
  end.


(* [comment removed for export] *)
Lemma ref_sid_cases : forall ls AD r q, ref_sid ls AD r = Some q ->
  (In q [ad_p1 AD; ad_p2 AD; ad_p3 AD; ad_p4 AD; ad_p5 AD] /\ (forall i, r <> RPool i)) \/ (cx_head (ls_ctx ls) = Some q /\ exists i, r = RPool i).
Proof.
  intros ls AD r q H. destruct r as [| | | | |i]; cbn [ref_sid] in H; try (injection H as <-; left; split; [cbn; tauto| congruence]).
  right. split; [exact H| exists i; reflexivity].
Qed.

Lemma ref_sid_inj : forall ls AD r r' q, List.NoDup (ad_ids AD) -> ref_sid ls AD r = Some q -> ref_sid ls AD r' = Some q ->
  (forall i, r <> RPool i) -> (forall i, r' <> RPool i) -> r = r'.
Proof.
  intros ls AD r r' q ND E E' Hn Hn'. unfold ad_ids in ND.
  assert (N : ad_p1 AD <> ad_p2 AD /\ ad_p1 AD <> ad_p3 AD /\ ad_p1 AD <> ad_p4 AD /\ ad_p1 AD <> ad_p5 AD
              /\ ad_p2 AD <> ad_p3 AD /\ ad_p2 AD <> ad_p4 AD /\ ad_p2 AD <> ad_p5 AD
              /\ ad_p3 AD <> ad_p4 AD /\ ad_p3 AD <> ad_p5 AD /\ ad_p4 AD <> ad_p5 AD).
  { repeat (apply NoDup_cons_iff in ND; destruct ND as [? ND]). cbn [In] in *. clear - H H0 H1 H2 H3. intuition congruence. }
  clear ND. destruct N as (N12 & N13 & N14 & N15 & N23 & N24 & N25 & N34 & N35 & N45).
  destruct r as [| | | | |j]; try (exfalso; eapply Hn; reflexivity); destruct r' as [| | | | |j']; try (exfalso; eapply Hn'; reflexivity);
    try reflexivity; cbn [ref_sid] in E, E'; exfalso; clear Hn Hn'; congruence.
Qed.

Lemma ids_ad_ea : forall ls AD EA q q', ids_ok ls AD EA -> In q (ad_ids AD) -> In q' (ea_ids EA) -> q <> q'.
Proof.
  intros ls AD EA q q' ND H1 H2 E. subst q'. unfold ids_ok in ND.
  eapply (nodup_app_disj _ _ q ND H1). apply in_or_app. left. exact H2.
Qed.
Lemma ids_ad_m : forall ls AD EA q q', ids_ok ls AD EA -> In q (ad_ids AD) -> In q' (map fst (blocks_of ls)) -> q <> q'.
Proof.
  intros ls AD EA q q' ND H1 H2 E. subst q'. unfold ids_ok in ND.
  eapply (nodup_app_disj _ _ q ND H1). apply in_or_app. right. exact H2.
Qed.
Lemma ids_ea_m : forall ls AD EA q q', ids_ok ls AD EA -> In q (ea_ids EA) -> In q' (map fst (blocks_of ls)) -> q <> q'.
Proof.
  intros ls AD EA q q' ND H1 H2 E. subst q'. unfold ids_ok in ND. apply nodup_app_r in ND.
  eapply (nodup_app_disj _ _ q ND H1). exact H2.
Qed.
Lemma ids_m_nodup : forall ls AD EA, ids_ok ls AD EA -> List.NoDup (map fst (blocks_of ls)).
Proof. intros ls AD EA ND. unfold ids_ok in ND. apply nodup_app_r in ND. apply nodup_app_r in ND. exact ND. Qed.
Lemma ids_ad_nodup : forall ls AD EA, ids_ok ls AD EA -> List.NoDup (ad_ids AD).
Proof. intros ls AD EA ND. unfold ids_ok in ND. apply nodup_app_l in ND. exact ND. Qed.

Lemma in5_ad : forall AD q, In q [ad_p1 AD; ad_p2 AD; ad_p3 AD; ad_p4 AD; ad_p5 AD] -> In q (ad_ids AD).
Proof. intros AD q H. unfold ad_ids. cbn in *. tauto. Qed.

Lemma in5_neq_pc : forall ls AD EA q, ids_ok ls AD EA -> In q [ad_p1 AD; ad_p2 AD; ad_p3 AD; ad_p4 AD; ad_p5 AD] -> q <> ad_pc AD.
Proof.
  intros ls AD EA q ND H E. apply ids_ad_nodup in ND. unfold ad_ids in ND.
  change [ad_p1 AD; ad_p2 AD; ad_p3 AD; ad_p4 AD; ad_p5 AD; ad_pc AD] with ([ad_p1 AD; ad_p2 AD; ad_p3 AD; ad_p4 AD; ad_p5 AD] ++ [ad_pc AD]) in ND.
  eapply (nodup_app_disj _ _ q ND H). left. symmetry. exact E.
Qed.

Lemma head_in_m : forall (ls : lstate bptr) h, cx_head (ls_ctx ls) = Some h -> In h (map fst (blocks_of ls)).
Proof. intros ls h H. apply blocks_of_In_head in H. apply (in_map fst) in H. exact H. Qed.
Lemma idx_in_m : forall (ls : lstate bptr) q, cx_indexes (ls_ctx ls) = Some q -> In q (map fst (blocks_of ls)).
Proof. intros ls q H. apply blocks_of_In_idx in H. apply (in_map fst) in H. exact H. Qed.
Lemma bn_in_m : forall r (ls : lstate bptr) p, valid_refm r ls -> bn_d (getbn r ls) = Some p -> In p (map fst (blocks_of ls)).
Proof. intros r ls p Hv H. apply (blocks_of_In_bn r ls p Hv) in H. apply (in_map fst) in H. exact H. Qed.

Section Disj.






  Variables (ls : lstate bptr) (AD : bn_addrs) (EA : err_addrs).
  Hypothesis IDS : ids_ok ls AD EA.

(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)


(* [comment removed for export] *)

(* [comment removed for export] *)


(* [comment removed for export] *)

(* [comment removed for export] *)


  Local Ltac std_lia__ := lia.

(* [comment removed for export] *)

(* [comment removed for export] *)

(* [comment removed for export] *)



(* [comment removed for export] *)

(* [comment removed for export] *)


End Disj.
End WithRT2.


(* [comment removed for export] *)
(* [comment removed for export] *)

Section WithRT3. 







Definition all_ids (ls : lstate bptr) (AD : bn_addrs) (EA : err_addrs) : list bptr := ad_ids AD ++ ea_ids EA ++ map fst (blocks_of ls).

(* [comment removed for export] *)

(* [comment removed for export] *)




(* [comment removed for export] *)


(* [comment removed for export] *)
Lemma ctx_okm_setbn : forall r b' (ls : lstate bptr), ctx_okm (ls_ctx ls) -> ctx_okm (ls_ctx (setbn r b' ls)).
Proof.
  intros r b' ls H. destruct r as [| | | | |i]; try exact H.
  cbn [setbn set_ctx ls_ctx]. unfold ctx_okm, ctx_set_vals in *. cbn [cx_pused cx_used cx_psize cx_vals cx_frames cx_ssize cx_current cx_head].
  rewrite list_set_length. exact H.
Qed.

(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)

(* [comment removed for export] *)


(* [comment removed for export] *)
Lemma ids_ok_set_ctx_same : forall ls AD EA c', ids_ok ls AD EA ->
  cx_head c' = cx_head (ls_ctx ls) -> cx_indexes c' = cx_indexes (ls_ctx ls) -> cx_vals c' = cx_vals (ls_ctx ls) ->
  ids_ok (set_ctx c' ls) AD EA.
Proof.
  intros ls AD EA c' H E1 E2 E3. unfold ids_ok, blocks_of in *. cbn [set_ctx ls_b1 ls_b2 ls_b3 ls_b4 ls_b5 ls_ctx]. rewrite E1, E2, E3. exact H.
Qed.

Lemma nodup_insert : forall {A} (l1 l2 : list A) x, List.NoDup (l1 ++ l2) -> ~ In x (l1 ++ l2) -> List.NoDup (l1 ++ x :: l2).
Proof.
  intros A l1 l2 x ND Hn. eapply Permutation_NoDup; [apply Permutation_middle|]. constructor; assumption.
Qed.

(* [comment removed for export] *)
Lemma ids_ok_set_ctx_new_idx : forall ls AD EA c' q, ids_ok ls AD EA ->
  cx_head c' = cx_head (ls_ctx ls) -> cx_vals c' = cx_vals (ls_ctx ls) -> cx_indexes (ls_ctx ls) = None -> cx_indexes c' = Some q ->
  ~ In q (all_ids ls AD EA) -> ids_ok (set_ctx c' ls) AD EA.
Proof.
  intros ls AD EA c' q H E1 E3 EN EQ Hn. unfold ids_ok, all_ids, blocks_of in *. cbn [set_ctx ls_b1 ls_b2 ls_b3 ls_b4 ls_b5 ls_ctx].
  rewrite E1, E3, EQ. rewrite EN in H, Hn. cbn [opt_block] in *. rewrite ?app_nil_r in H, Hn.
  rewrite !map_app in *. cbn [map fst]. rewrite !app_assoc in *.
  apply nodup_insert; rewrite ?app_nil_r; assumption.
Qed.

(* [comment removed for export] *)
Lemma ids_ok_set_ctx_new_head : forall ls AD EA c' p, ids_ok ls AD EA ->
  cx_indexes c' = cx_indexes (ls_ctx ls) -> cx_head (ls_ctx ls) = None -> cx_vals (ls_ctx ls) = [] ->
  cx_head c' = Some p -> cx_vals c' = repeat (bn_nil 0) 16 ->
  ~ In p (all_ids ls AD EA) -> ids_ok (set_ctx c' ls) AD EA.
Proof.
  intros ls AD EA c' p H E2 EN EV EP EV' Hn. unfold ids_ok, all_ids, blocks_of in *. cbn [set_ctx ls_b1 ls_b2 ls_b3 ls_b4 ls_b5 ls_ctx].
  rewrite E2, EP, EV'. rewrite EN, EV in H, Hn. rewrite concat_nil_blocks. cbn [opt_block map concat app] in *.
  rewrite !map_app in *. cbn [map fst app]. rewrite !app_assoc in *.
  apply nodup_insert; assumption.
Qed.

(* [comment removed for export] *)
Lemma ids_ok_setbn_same : forall ls AD EA r b', ids_ok ls AD EA -> valid_refm r ls ->
  bn_blocks b' = bn_blocks (getbn r ls) -> ids_ok (setbn r b' ls) AD EA.
Proof.
  intros ls AD EA r b' S3 HV HBL. unfold ids_ok in *.
  destruct (blocks_setbn_m r ls HV) as (R & P1 & P2). specialize (P2 b'). rewrite HBL in P2.
  assert (PP : Permutation (map fst (blocks_of ls)) (map fst (blocks_of (setbn r b' ls)))).
  { apply Permutation_map. eapply Permutation_trans; [exact P1| apply Permutation_sym; exact P2]. }
  eapply Permutation_NoDup; [|exact S3]. apply Permutation_app_head. apply Permutation_app_head. exact PP.
Qed.

Lemma ids_ok_setbn_new : forall ls AD EA r b' p', ids_ok ls AD EA -> valid_refm r ls ->
  bn_d b' = Some p' -> ~ In p' (all_ids ls AD EA) -> ids_ok (setbn r b' ls) AD EA.
Proof.
  intros ls AD EA r b' p' S3 HV Hd Hn. unfold ids_ok, all_ids in *.
  destruct (blocks_setbn_m r ls HV) as (R & P1 & P2). specialize (P2 b'). unfold bn_blocks at 1 in P2. rewrite Hd in P2. cbn [app] in P2.
  apply (Permutation_map fst) in P1. apply (Permutation_map fst) in P2. rewrite map_app in P1. cbn [map fst] in P2.
  (* [comment removed for export] *)
  assert (S4 : List.NoDup (ad_ids AD ++ ea_ids EA ++ map fst (bn_blocks (getbn r ls)) ++ map fst R)).
  { eapply Permutation_NoDup; [|exact S3]. apply Permutation_app_head. apply Permutation_app_head. exact P1. }
  assert (Hn4 : ~ In p' (ad_ids AD ++ ea_ids EA ++ map fst (bn_blocks (getbn r ls)) ++ map fst R)).
  { intros Hin. apply Hn. rewrite !in_app_iff in *. destruct Hin as [H|[H|H]]; [tauto| tauto|]. right; right.
    eapply Permutation_in; [apply Permutation_sym; exact P1|]. rewrite in_app_iff. exact H. }
  eapply Permutation_NoDup with (l := p' :: ad_ids AD ++ ea_ids EA ++ map fst R).
  { eapply Permutation_trans; [apply Permutation_middle|]. apply Permutation_app_head.
    eapply Permutation_trans; [apply Permutation_middle|]. apply Permutation_app_head. apply Permutation_sym. exact P2. }
  constructor.
  - intros Hin. apply Hn4. rewrite !in_app_iff in *. tauto.
  - rewrite !app_assoc in S4. apply NoDup_remove_1 with (a := p') in S4 || idtac.
    clear - S4. rewrite <- !app_assoc in S4.
    (* [comment removed for export] *)
    revert S4. generalize (ad_ids AD) (ea_ids EA) (map fst (bn_blocks (getbn r ls))) (map fst R). clear.
    intros l1 l2 X l3 H. rewrite app_assoc in H. rewrite app_assoc.
    induction (l1 ++ l2) as [|x l IH]; cbn [app] in *; [eapply nodup_app_r; exact H|].
    apply NoDup_cons_iff in H. destruct H as [Hx H]. constructor; [|auto].
    intros Hin. apply Hx. rewrite !in_app_iff in *. tauto.
Qed.

(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)

(* [comment removed for export] *)

(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)


End WithRT3.












(* [comment removed for export] *)
(* [comment removed for export] *)

Section WithRT4. 









(* [comment removed for export] *)

(* [comment removed for export] *)


End WithRT4.
