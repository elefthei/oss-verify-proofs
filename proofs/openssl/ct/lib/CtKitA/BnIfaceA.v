(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.openssl.ct.lib.CtLib Require Import ImageCtA.
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool Permutation.
From stdpp Require Import gmap.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType Fs State Monad Specs Run.
From OssFuzzTheorems.Proofs.openssl.ct.lib.Lib Require Import PropExec MState Mem Frame Cells Step Arr Exec RzCPS. 
From OssFuzzTheorems.Proofs.openssl.ct.lib.Malloc Require Import MallocRep MallocBlocks Malloc_iface.
From OssFuzzTheorems.Proofs.openssl.ct.lib.Spec Require Import Malloc Prog BnBase BnModel BnTree BnInv BnSpecs BnMInv.
From OssFuzzTheorems.Proofs.openssl.ct.lib.Spec Require BgInv.
From OssFuzzTheorems.Proofs.openssl.ct.lib.A Require Import Shadow.
From OssFuzzTheorems.Proofs.openssl.ct.lib.CtA Require Import Layout RT_iface D_defs.
From OssFuzzTheorems.Proofs.openssl.ct.lib.BnW Require Import BnMem.
From OssFuzzTheorems.Proofs.openssl.ct.lib.BnAsan Require Import AsKit.
From OssFuzzTheorems.Proofs.openssl.ct.lib.CtKitA Require Import LibKitA ARun BnHeapA BnRepDefs BnRepA ImplA.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

(* [comment removed for export] *)
Definition MC : Z := 0.     (* [comment removed for export] *)

Lemma mcost_le_MC : forall n, 0 <= n <= BgInv.BG_BSZ -> 0 <= mcost n <= MC.
Proof. intros n Hn. unfold mcost, MC, BgInv.BG_BSZ in *. destruct (Z.leb_spec n 64512); lia. Qed.

(* [comment removed for export] *)
Definition refs_stable (ls : lstate bptr) (OW : list block) (ls' : lstate bptr) (OW' : list block) (AD : bn_addrs) : Prop :=
  forall r a, ref_at ls OW AD r a -> ref_at ls' OW' AD r a.

Lemma refs_stable_refl : forall ls OW AD, refs_stable ls OW ls OW AD.
Proof. intros ls OW AD r a H. exact H. Qed.
Lemma refs_stable_trans : forall ls1 OW1 ls2 OW2 ls3 OW3 AD,
  refs_stable ls1 OW1 ls2 OW2 AD -> refs_stable ls2 OW2 ls3 OW3 AD -> refs_stable ls1 OW1 ls3 OW3 AD.
Proof. intros until AD. intros H1 H2 r a H. apply H2, H1, H. Qed.

(* [comment removed for export] *)
(* [comment removed for export] *)

Lemma bn_blocks_le1 : forall (b : bignum bptr), (length (bn_blocks b) <= 1)%nat.
Proof. intros b. unfold bn_blocks. destruct (bn_d b); cbn; lia. Qed.

Lemma concat_blocks_le : forall (l : list (bignum bptr)), (length (concat (map bn_blocks l)) <= length l)%nat.
Proof.
  induction l as [|b l IH]; cbn [map concat length]; [lia|]. rewrite length_app. pose proof (bn_blocks_le1 b). lia.
Qed.

Lemma blocks_of_le23 : forall ls : lstate bptr, st_okm ls -> (length (blocks_of ls) <= 23)%nat.
Proof.
  intros ls (_ & _ & _ & _ & _ & HP & _). unfold blocks_of. rewrite !length_app.
  pose proof (bn_blocks_le1 (ls_b1 ls)). pose proof (bn_blocks_le1 (ls_b2 ls)). pose proof (bn_blocks_le1 (ls_b3 ls)).
  pose proof (bn_blocks_le1 (ls_b4 ls)). pose proof (bn_blocks_le1 (ls_b5 ls)).
  pose proof (concat_blocks_le (cx_vals (ls_ctx ls))) as HC.
  assert (HV : (length (cx_vals (ls_ctx ls)) <= 16)%nat) by (destruct HP as [->|[-> _]]; cbn; lia).
  assert (HO : forall (o : option bptr) n, (length (opt_block o n) <= 1)%nat) by (intros [q|] n; cbn; lia).
  pose proof (HO (cx_head (ls_ctx ls)) POOL_ITEM_BYTES). pose proof (HO (cx_indexes (ls_ctx ls)) (4 * Z.of_nat BN_CTX_START_FRAMES)). lia.
Qed.

(* [comment removed for export] *)
Definition cnt_bal (ls : lstate bptr) (OW : list block) : Z := Z.of_nat (length OW) - Z.of_nat (length (blocks_of ls)).
Definition cnt_eq (ls : lstate bptr) (OW : list block) (ls' : lstate bptr) (OW' : list block) : Prop := cnt_bal ls' OW' = cnt_bal ls OW.
Definition cnt_ok (ls : lstate bptr) (OW LB : list block) : Prop := cnt_bal ls OW + Z.of_nat (length LB) + 25 <= LIVE_MAX.

Lemma cnt_eq_refl : forall ls OW, cnt_eq ls OW ls OW.
Proof. intros. reflexivity. Qed.
Lemma cnt_eq_trans : forall ls1 OW1 ls2 OW2 ls3 OW3, cnt_eq ls1 OW1 ls2 OW2 -> cnt_eq ls2 OW2 ls3 OW3 -> cnt_eq ls1 OW1 ls3 OW3.
Proof. unfold cnt_eq. intros. congruence. Qed.
Lemma cnt_ok_eq : forall ls OW ls' OW' LB, cnt_ok ls OW LB -> cnt_eq ls OW ls' OW' -> cnt_ok ls' OW' LB.
Proof. unfold cnt_ok, cnt_eq. intros. lia. Qed.

(* [comment removed for export] *)
Lemma cnt_bal_setbn : forall r b' (ls : lstate bptr) OW OW', valid_refm r ls ->
  cnt_bal (setbn r b' ls) OW' = cnt_bal ls OW + (Z.of_nat (length OW') - Z.of_nat (length OW))
                                - (Z.of_nat (length (bn_blocks b')) - Z.of_nat (length (bn_blocks (getbn r ls)))).
Proof.
  intros r b' ls OW OW' HV. destruct (blocks_setbn_m r ls HV) as (R & P1 & P2). unfold cnt_bal.
  rewrite (Permutation_length (P2 b')), (Permutation_length P1), !length_app. lia.
Qed.

(* [comment removed for export] *)
Lemma cnt_ok_live : forall ls OW LB (X : list block) k, st_okm ls -> cnt_ok ls OW LB -> Z.of_nat (length X) = Z.of_nat (length OW) + k -> k <= 1 ->
  Z.of_nat (length (map blk_an (X ++ LB))) < LIVE_MAX.
Proof.
  intros ls OW LB X k HS HC HX Hk. pose proof (blocks_of_le23 ls HS) as B. unfold cnt_ok, cnt_bal in HC.
  rewrite length_map, length_app, Nat2Z.inj_add. lia.
Qed.

Section WithRT.






(* [comment removed for export] *)
Definition ax_client (LB : list block) (SP : Z) (X : list (Z * Z)) (a : Z) : Prop := ~ rin_ivs X a /\ aclient_addr LB SP a.
Definition ax_pres (LB : list block) (SP : Z) (X : list (Z * Z)) (m m' : mem) : Prop := agree_on (ax_client LB SP X) m m'.

Lemma ax_pres_refl : forall LB SP X m, ax_pres LB SP X m m.
Proof. intros. apply agree_on_refl. Qed.
Lemma ax_pres_trans : forall LB SP X m1 m2 m3, ax_pres LB SP X m1 m2 -> ax_pres LB SP X m2 m3 -> ax_pres LB SP X m1 m3.
Proof. intros LB SP X m1 m2 m3. apply agree_on_trans. Qed.
Lemma ax_pres_weaken : forall LB SP SP' X m m', ax_pres LB SP X m m' -> SP <= SP' -> ax_pres LB SP' X m m'.
Proof.
  intros LB SP SP' X m m' H HS. eapply agree_on_mono; [exact H|]. intros a [H1 H2]. split; [exact H1|].
  destruct H2 as [H2|[H2|H2]]; [left; lia | right; left; exact H2 | right; right; exact H2].
Qed.
(* [comment removed for export] *)



(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)
Definition w_lib (OW : list block) (lo sp : Z) (iv : Z * Z) : Prop :=
  (lo <= fst iv /\ snd iv <= sp) \/ (exists b, In b OW /\ blk_addr b <= fst iv /\ snd iv <= blk_addr b + blk_size b).

(* [comment removed for export] *)

(* [comment removed for export] *)


(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)


Lemma agree_client_weaken : forall (L L2 : list block) sp sp' m m',
  agree_on (aclient_addr L sp') m m' -> sp' <= sp -> (forall b, In b L2 -> In b L) -> agree_on (aclient_addr L2 sp) m m'.
Proof.
  intros L L2 sp sp' m m' H HS HL. eapply agree_on_mono; [exact H|].
  intros a [Ha|[Ha|(b & Hb & Hr)]]; [left; lia | right; left; exact Ha | right; right; exists b; split; [exact (HL b Hb) | exact Hr]].
Qed.
(* [comment removed for export] *)


End WithRT.
