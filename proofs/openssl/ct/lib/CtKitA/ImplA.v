(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.openssl.ct.lib.CtLib Require Import ImageCtA.
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool Permutation.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType Fs State Monad Specs Run.
From OssFuzzTheorems.Proofs.openssl.ct.lib.AS Require Import ShapeAlg AsanAcct.
From OssFuzzTheorems.Proofs.openssl.ct.lib.Lib Require Import PropExec MState Mem Frame Cells Step Arr Exec Nodes RzCPS NodesA. 
From OssFuzzTheorems.Proofs.openssl.ct.lib.Spec Require Import Prelim Prog BnBase BnModel BnTree LibProg ApBase ApLogic Malloc CtLogic.
From OssFuzzTheorems.Proofs.openssl.ct.lib.A Require Import Shadow.
From OssFuzzTheorems.Proofs.openssl.ct.lib.CtA Require Import Layout RT_iface D_defs.
From OssFuzzTheorems.Proofs.openssl.ct.lib.CtKitA Require Import LibKitA ARun.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
Definition okA {ptr} (X : list (ptr * Z)) (n : Z) : Prop := okC X n.
Definition REQ_MAX : Z := CT_MAXREQ.

Lemma okA_facts : forall {ptr} (X : list (ptr * Z)) n, okA X n -> zlength X < CT_NBT /\ 0 <= n <= REQ_MAX.
Proof.
  intros ptr X n (H1 & H2 & H3 & H4 & H5 & H6 & H7 & H8). unfold REQ_MAX. split; [lia|]. split; [exact H1| exact H8].
Qed.

(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
Section Safe.
Context {ptr : Type}.

Fixpoint safe {A} (t : btree ptr A) (X : list (ptr * Z)) (Q : A -> list (ptr * Z) -> Prop) : Prop :=
  match t with
  | TRet a => Q a X
  | TUnr => False
  | TMalloc n k => okA X n /\ forall p, ~ In p (map fst X) -> safe (k (Some p)) ((p, n) :: X) Q
  | TFree p k => exists m X', Permutation X ((p, m) :: X') /\ safe k X' Q
  end.

Lemma safe_of_bwp : forall {A} (t : btree ptr A) X Q, bwp okA t X Q -> safe t X Q.
Proof.
  intros A t. induction t as [a| |n k IH|p k IH]; intros X Q H; cbn [bwp safe] in *.
  - exact H.
  - exact H.
  - destruct H as (_ & Hok & _ & H). split; [exact Hok|]. intros q Hq. apply IH. apply H. exact Hq.
  - destruct H as (m & X' & E & H). exists m, X'. split; [exact E|]. apply IH. exact H.
Qed.

Lemma safe_mono : forall {A} (t : btree ptr A) X (Q Q' : A -> list (ptr * Z) -> Prop),
  safe t X Q -> (forall a X', Q a X' -> Q' a X') -> safe t X Q'.
Proof.
  intros A t. induction t as [a| |n k IH|p k IH]; intros X Q Q' H HQ; cbn [safe] in *.
  - apply HQ. exact H.
  - exact H.
  - destruct H as (Hn & H). split; [exact Hn|]. intros q Hq. eapply IH; [apply H; exact Hq| exact HQ].
  - destruct H as (m & X' & E & H). exists m, X'. split; [exact E|]. eapply IH; [exact H| exact HQ].
Qed.

Lemma safe_bind : forall {A B} (m : btree ptr A) (f : A -> btree ptr B) X Q,
  safe m X (fun a X' => safe (f a) X' Q) -> safe (tbind m f) X Q.
Proof.
  intros A B m. induction m as [a| |n k IH|p k IH]; intros f X Q H; cbn [safe tbind] in *.
  - exact H.
  - exact H.
  - destruct H as (Hn & H). split; [exact Hn|]. intros q Hq. apply IH. apply H. exact Hq.
  - destruct H as (m & X' & E & H). exists m, X'. split; [exact E|]. apply IH. exact H.
Qed.

Lemma safe_bind_inv : forall {A B} (m : btree ptr A) (f : A -> btree ptr B) X Q,
  safe (tbind m f) X Q -> safe m X (fun a X' => safe (f a) X' Q).
Proof.
  intros A B m. induction m as [a| |n k IH|p k IH]; intros f X Q H; cbn [safe tbind] in *.
  - exact H.
  - exact H.
  - destruct H as (Hn & H). split; [exact Hn|]. intros q Hq. apply IH. apply H. exact Hq.
  - destruct H as (m & X' & E & H). exists m, X'. split; [exact E|]. apply IH. exact H.
Qed.

Lemma safe_leaves : forall {A} (t : btree ptr A) (phi : A -> Prop) X Q,
  leaves t phi -> safe t X Q -> safe t X (fun a X' => Q a X' /\ phi a).
Proof.
  intros A t phi. induction t as [a| |n k IH|p k IH]; intros X Q HL H; cbn [safe leaves] in *.
  - split; [exact H | exact HL].
  - exact H.
  - destruct H as (Hn & H). split; [exact Hn|]. intros q Hq. apply IH; [apply HL | apply H; exact Hq].
  - destruct H as (m & X' & E & H). exists m, X'. split; [exact E|]. apply IH; [exact HL | exact H].
Qed.

(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
Fixpoint asafe {A} (t : aprog ptr A) (X : list (ptr * Z)) (Q : A -> list (ptr * Z) -> Prop) : Prop :=
  match t with
  | ARet a => Q a X
  | AUnr => False
  | AMalloc n k => okA X n /\ forall p, ~ In p (map fst X) -> asafe (k (Some p)) ((p, n) :: X) Q
  | AFree p k => exists m X', Permutation X ((p, m) :: X') /\ asafe k X' Q
  | ARealloc p n k => exists m X', Permutation X ((p, m) :: X') /\ okA X n /\ forall q, ~ In q (map fst X) -> asafe (k (Some q)) ((q, n) :: X') Q
  | AReallocS p n k => exists m X', Permutation X ((p, m) :: X') /\ okA X n /\ forall q, ~ In q (map fst X) -> asafe (k (Some q)) ((q, n) :: X') Q
  | ASys o k => forall r, asafe (k r) X Q
  | AReallocI p n k => exists m X', Permutation X ((p, m) :: X') /\ okA X n /\ forall q, ~ In q (map fst X) -> asafe (k (Some q)) ((q, n) :: X') Q   (* [comment removed for export] *)
  end.

Lemma asafe_of_awp : forall rc rcS rcI spre {A} (t : aprog ptr A) X Q, awp okA rc rcS rcI spre t X Q -> asafe t X Q.
Proof.
  intros rc rcS rcI spre A t. induction t as [a| |n k IH|p k IH|p n k IH|p n k IH|o k IH|p n k IH]; intros X Q H; cbn [awp asafe] in *.
  - exact H.
  - exact H.
  - destruct H as (_ & Hok & _ & H). split; [exact Hok|]. intros q Hq. apply IH. apply H. exact Hq.
  - destruct H as (m & X' & E & H). exists m, X'. split; [exact E|]. apply IH. exact H.
  - destruct H as (m & X' & E & _ & _ & Hok & _ & H). exists m, X'. split; [exact E|]. split; [exact Hok|]. intros q Hq. apply IH. apply H. exact Hq.
  - destruct H as (m & X' & E & _ & _ & Hok & _ & H). exists m, X'. split; [exact E|]. split; [exact Hok|]. intros q Hq. apply IH. apply H. exact Hq.
  - destruct H as [_ H]. intros r. apply IH. apply H.
  - destruct H as (m & X' & E & _ & _ & Hok & _ & H). exists m, X'. split; [exact E|]. split; [exact Hok|]. intros q Hq. apply IH. apply H. right. exact Hq.
Qed.

Lemma asafe_mono : forall {A} (t : aprog ptr A) X (Q Q' : A -> list (ptr * Z) -> Prop),
  asafe t X Q -> (forall a X', Q a X' -> Q' a X') -> asafe t X Q'.
Proof.
  intros A t. induction t as [a| |n k IH|p k IH|p n k IH|p n k IH|o k IH|p n k IH]; intros X Q Q' H HQ; cbn [asafe] in *.
  - apply HQ. exact H.
  - exact H.
  - destruct H as (Hn & H). split; [exact Hn|]. intros q Hq. eapply IH; [apply H; exact Hq| exact HQ].
  - destruct H as (m & X' & E & H). exists m, X'. split; [exact E|]. eapply IH; [exact H| exact HQ].
  - destruct H as (m & X' & E & Hn & H). exists m, X'. split; [exact E|]. split; [exact Hn|]. intros q Hq. eapply IH; [apply H; exact Hq| exact HQ].
  - destruct H as (m & X' & E & Hn & H). exists m, X'. split; [exact E|]. split; [exact Hn|]. intros q Hq. eapply IH; [apply H; exact Hq| exact HQ].
  - intros r. eapply IH; [apply H| exact HQ].
  - destruct H as (m & X' & E & Hn & H). exists m, X'. split; [exact E|]. split; [exact Hn|]. intros q Hq. eapply IH; [apply H; exact Hq| exact HQ].
Qed.

Lemma asafe_bind : forall {A B} (m : aprog ptr A) (f : A -> aprog ptr B) X Q,
  asafe m X (fun a X' => asafe (f a) X' Q) -> asafe (apbind m f) X Q.
Proof.
  intros A B m. induction m as [a| |n k IH|p k IH|p n k IH|p n k IH|o k IH|p n k IH]; intros f X Q H; cbn [asafe apbind] in *.
  - exact H.
  - exact H.
  - destruct H as (Hn & H). split; [exact Hn|]. intros q Hq. apply IH. apply H. exact Hq.
  - destruct H as (m & X' & E & H). exists m, X'. split; [exact E|]. apply IH. exact H.
  - destruct H as (m & X' & E & Hn & H). exists m, X'. split; [exact E|]. split; [exact Hn|]. intros q Hq. apply IH. apply H. exact Hq.
  - destruct H as (m & X' & E & Hn & H). exists m, X'. split; [exact E|]. split; [exact Hn|]. intros q Hq. apply IH. apply H. exact Hq.
  - intros r. apply IH. apply H.
  - destruct H as (m & X' & E & Hn & H). exists m, X'. split; [exact E|]. split; [exact Hn|]. intros q Hq. apply IH. apply H. exact Hq.
Qed.

Lemma asafe_bind_inv : forall {A B} (m : aprog ptr A) (f : A -> aprog ptr B) X Q,
  asafe (apbind m f) X Q -> asafe m X (fun a X' => asafe (f a) X' Q).
Proof.
  intros A B m. induction m as [a| |n k IH|p k IH|p n k IH|p n k IH|o k IH|p n k IH]; intros f X Q H; cbn [asafe apbind] in *.
  - exact H.
  - exact H.
  - destruct H as (Hn & H). split; [exact Hn|]. intros q Hq. apply IH. apply H. exact Hq.
  - destruct H as (m & X' & E & H). exists m, X'. split; [exact E|]. apply IH. exact H.
  - destruct H as (m & X' & E & Hn & H). exists m, X'. split; [exact E|]. split; [exact Hn|]. intros q Hq. apply IH. apply H. exact Hq.
  - destruct H as (m & X' & E & Hn & H). exists m, X'. split; [exact E|]. split; [exact Hn|]. intros q Hq. apply IH. apply H. exact Hq.
  - intros r. apply IH. apply H.
  - destruct H as (m & X' & E & Hn & H). exists m, X'. split; [exact E|]. split; [exact Hn|]. intros q Hq. apply IH. apply H. exact Hq.
Qed.

Lemma asafe_leaves : forall {A} (t : aprog ptr A) (phi : A -> Prop) X Q,
  aleaves t phi -> asafe t X Q -> asafe t X (fun a X' => Q a X' /\ phi a).
Proof.
  intros A t phi. induction t as [a| |n k IH|p k IH|p n k IH|p n k IH|o k IH|p n k IH]; intros X Q HL H; cbn [asafe aleaves] in *.
  - split; [exact H | exact HL].
  - exact H.
  - destruct H as (Hn & H). split; [exact Hn|]. intros q Hq. apply IH; [apply HL | apply H; exact Hq].
  - destruct H as (m & X' & E & H). exists m, X'. split; [exact E|]. apply IH; [exact HL | exact H].
  - destruct H as (m & X' & E & Hn & H). exists m, X'. split; [exact E|]. split; [exact Hn|]. intros q Hq. apply IH; [apply HL | apply H; exact Hq].
  - destruct H as (m & X' & E & Hn & H). exists m, X'. split; [exact E|]. split; [exact Hn|]. intros q Hq. apply IH; [apply HL | apply H; exact Hq].
  - intros r. apply IH; [apply HL | apply H].
  - destruct H as (m & X' & E & Hn & H). exists m, X'. split; [exact E|]. split; [exact Hn|]. intros q Hq. apply IH; [apply HL | apply H; exact Hq].
Qed.

(* [comment removed for export] *)
Lemma asafe_bt_embed : forall {A} (t : btree ptr A) X Q, asafe (bt_embed t) X Q -> safe t X Q.
Proof.
  intros A t. induction t as [a| |n k IH|p k IH]; intros X Q H; cbn [asafe bt_embed safe] in *.
  - exact H.
  - exact H.
  - destruct H as (Hn & H). split; [exact Hn|]. intros q Hq. apply IH. apply H. exact Hq.
  - destruct H as (m & X' & E & H). exists m, X'. split; [exact E|]. apply IH. exact H.
Qed.

Lemma safe_bt_embed : forall {A} (t : btree ptr A) X Q, safe t X Q -> asafe (bt_embed t) X Q.
Proof.
  intros A t. induction t as [a| |n k IH|p k IH]; intros X Q H; cbn [asafe bt_embed safe] in *.
  - exact H.
  - exact H.
  - destruct H as (Hn & H). split; [exact Hn|]. intros q Hq. apply IH. apply H. exact Hq.
  - destruct H as (m & X' & E & H). exists m, X'. split; [exact E|]. apply IH. exact H.
Qed.

End Safe.

(* [comment removed for export] *)
Lemma bptr_fresh : forall l : list bptr, exists p : bptr, ~ In p l.
Proof.
  intros l.
  assert (H : forall l : list bptr, exists z : Z, forall q, In q l -> snd q < z).
  { induction l0 as [|q l0 [z Hz]]; [exists 0; intros q []|].
    exists (Z.max z (snd q + 1)). intros q' [<-|Hin]; [lia| specialize (Hz q' Hin); lia]. }
  destruct (H l) as [z Hz]. exists ((0%N, 0), z). intros Hin. specialize (Hz _ Hin). cbn in Hz. lia.
Qed.

(* [comment removed for export] *)
Lemma bptr_fresh_sz : forall (l : list bptr) (n : Z), exists p : bptr, ~ In p l /\ gsz p = n.
Proof.
  intros l n.
  assert (H : forall l : list bptr, exists z : Z, forall q, In q l -> snd q < z).
  { induction l0 as [|q l0 [z Hz]]; [exists 0; intros q []|].
    exists (Z.max z (snd q + 1)). intros q' [<-|Hin]; [lia| specialize (Hz q' Hin); lia]. }
  destruct (H l) as [z Hz]. exists ((0%N, n), z). split; [| reflexivity]. intros Hin. specialize (Hz _ Hin). cbn in Hz. lia.
Qed.

Lemma zlength_cons : forall {A} (x : A) l, zlength (x :: l) = zlength l + 1.
Proof. intros. unfold zlength. cbn [length]. lia. Qed.

(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
Section ImplA.



(* [comment removed for export] *)



(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
Fixpoint lwsum (l : list Z) : Z := match l with nil => 0 | n :: l' => lw n + lwsum l' end.
Fixpoint bigcnt (l : list Z) : Z := match l with nil => 0 | n :: l' => (if 64512 <? n then 1 else 0) + bigcnt l' end.
Lemma psum_sizes : forall l, psum l = lwsum (map snd l).
Proof. induction l as [|e l IH]; cbn [psum lwsum map]; [reflexivity|]. rewrite IH. reflexivity. Qed.
Lemma nbig_sizes : forall l, nbig l = bigcnt (map snd l).
Proof. induction l as [|e l IH]; [reflexivity|]. rewrite nbig_cons, IH. unfold isbig. cbn [map bigcnt]. reflexivity. Qed.
Lemma lwsum_app : forall l1 l2, lwsum (l1 ++ l2) = lwsum l1 + lwsum l2.
Proof. induction l1 as [|n l1 IH]; intros l2; cbn [lwsum app]; [lia|]. rewrite IH. lia. Qed.
Lemma bigcnt_app : forall l1 l2, bigcnt (l1 ++ l2) = bigcnt l1 + bigcnt l2.
Proof. induction l1 as [|n l1 IH]; intros l2; cbn [bigcnt app]; [lia|]. rewrite IH. lia. Qed.
Lemma lwsum_perm : forall l l', Permutation l l' -> lwsum l = lwsum l'.
Proof. intros l l' H. induction H; cbn [lwsum] in *; lia. Qed.
Lemma bigcnt_perm : forall l l', Permutation l l' -> bigcnt l = bigcnt l'.
Proof. intros l l' H. induction H; cbn [bigcnt] in *; lia. Qed.
Lemma lw_le_sm : forall n, 0 <= n -> lw n <= 4 * smsz n + 32.
Proof.
  intros n Hn. unfold lw, smsz, MMAP_THRESHOLD. destruct (Z.leb_spec n 64512); destruct (Z.ltb_spec n 131052); lia.
Qed.
Lemma big_issec : forall n, (if 64512 <? n then 1 else 0) = issec n.
Proof. intros n. unfold issec, ASAN_SEC_MIN. destruct (Z.ltb_spec 64512 n); destruct (Z.leb_spec 64513 n); lia. Qed.
Lemma lwsum_blocks : forall {ptr} (X : list (ptr * Z)), bnonneg X -> lwsum (map snd X) <= 4 * smsum X + 32 * zlength X.
Proof.
  intros ptr X HB. unfold smsum. induction X as [|x X IH].
  - rewrite msum_nil. unfold zlength. cbn. lia.
  - apply Forall_cons_iff in HB as [Hx HB]. specialize (IH HB). cbn [map lwsum]. rewrite msum_cons, zlength_cons.
    pose proof (lw_le_sm (snd x) Hx). lia.
Qed.
Lemma bigcnt_blocks : forall {ptr} (X : list (ptr * Z)), bigcnt (map snd X) = nsec X.
Proof.
  intros ptr X. unfold nsec. induction X as [|x X IH]; [rewrite msum_nil; reflexivity|].
  cbn [map bigcnt]. rewrite msum_cons, IH, big_issec. reflexivity.
Qed.

(* [comment removed for export] *)
Definition room0 (S0 : list Z) : Prop :=
  Z.of_nat (length S0) + CT_NBT <= LIVE_MAX /\ lwsum S0 + (4 * CT_SMB + 32 * CT_NBT) <= PBYTES_MAX /\ bigcnt S0 + CT_NSEC <= NSEC_LIVE.

Lemma room0_of_lroom3 : forall (L : list (Z * Z)) c p b, lroom3 L c p b -> CT_NBT <= c -> 4 * CT_SMB + 32 * CT_NBT <= p -> CT_NSEC <= b -> room0 (map snd L).
Proof.
  intros L c p b (H1 & H2 & H3) Hc Hp Hb. unfold room0. rewrite length_map, <- psum_sizes, <- nbig_sizes. lia.
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

(* [comment removed for export] *)


(* [comment removed for export] *)
(* [comment removed for export] *)

End ImplA.
