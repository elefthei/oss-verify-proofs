(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.openssl.ct.lib.CtLib Require Import ImageCtA.
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.Proofs.openssl.ct.lib.Lib Require Import PropExec MState Mem Frame Cells Step Arr. 
From OssFuzzTheorems.Proofs.openssl.ct.lib.Malloc Require Import MallocRep MallocBlocks.
From OssFuzzTheorems.Proofs.openssl.ct.lib.Spec Require Import Prog BnBase BnModel BnTree BnInv BnSpecs BnMInv.
From OssFuzzTheorems.Proofs.openssl.ct.lib.BnW Require Import BnMem.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

Notation mem := (word -> option byte).
Notation wz := MallocRep.wz.

(* [comment removed for export] *)
(* [comment removed for export] *)

Definition BN_B1 : Z := 0xba8180.   Definition BN_B2 : Z := 0xba81a0.   Definition BN_B3 : Z := 0xba81c0.
Definition BN_B4 : Z := 0xba81e0.   Definition BN_B5 : Z := 0xba8200.   Definition BN_CTX : Z := 0xba8220.
(* [comment removed for export] *)
Definition CR_MALLOC_IMPL : Z := 0x5aec00.   (* [comment removed for export] *)
Definition CR_FREE_IMPL : Z := 0x5aec40.     (* [comment removed for export] *)
Definition CR_GOT_MALLOC : Z := 0x5aa888.    (* [comment removed for export] *)
Definition CR_GOT_FREE : Z := 0x5aa8a0.      (* [comment removed for export] *)
Definition CR_MEMSET_FUNC : Z := 0x5aec80.   (* [comment removed for export] *)
Definition CR_NO_CUSTOMIZE : Z := 0xba4cc0.  (* [comment removed for export] *)
Definition CRYPTO_MALLOC : Z := 0x1fce24.
Definition CRYPTO_FREE : Z := 0x1fd334.
Definition MEMSET : Z := 0x1c29c8.           (* [comment removed for export] *)
(* [comment removed for export] *)
Definition OI_STOPPED : Z := 0xba4700.       (* [comment removed for export] *)
Definition OI_OPTSDONE : Z := 0xba47a0.      (* [comment removed for export] *)
Definition OI_BASE_ONCE : Z := 0xba47c0.     (* [comment removed for export] *)
Definition OI_BASE_RET : Z := 0xba47e0.      (* [comment removed for export] *)
Definition TL_MASTER_ONCE : Z := 0xba4a00.   (* [comment removed for export] *)
Definition TL_MASTER_KEY : Z := 0xba4a20.    (* [comment removed for export] *)
Definition TL_MASTER_KEY_IDX : Z := 3.       (* [comment removed for export] *)
Definition TSD_MAIN : Z := 0xbca798.         (* [comment removed for export] *)
(* [comment removed for export] *)
Definition OSSL_BASE_INITED : Z := 0xba46c0.
Definition OSSL_DO_GLOBAL_CLEANUP : Z := 0xba46e0.


(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)

Definition bn_cells (D : Z) (b : bignum bptr) : list cell :=
  [C8 (wz D); C4 (wz (Z.of_nat (bn_top b))); C4 (wz (Z.of_nat (bn_dmax b))); C4 (wz (Z.b2z (bn_neg b))); C4 (wz (bn_flags b))].
(* [comment removed for export] *)



(* [comment removed for export] *)
Definition bnR : Type := Z -> bignum bptr -> bnref -> Prop.



(* [comment removed for export] *)
Fixpoint bns_gen (R : bnR) (a : Z) (l : list (bignum bptr)) (i : nat) : Prop :=
  match l with
  | [] => True
  | b :: l' => R a b (RPool i) /\ bns_gen R (a + 24) l' (S i)
  end.

(* [comment removed for export] *)
(* [comment removed for export] *)

Definition ctx_cells (H Cu I : Z) (c : bn_ctx bptr) : list cell :=
  [C8 (wz H); C8 (wz Cu); C8 (wz H);
   C4 (wz (Z.of_nat (cx_pused c))); C4 (wz (Z.of_nat (cx_psize c)));
   C8 (wz I); C4 (wz (Z.of_nat (length (cx_frames c)))); C4 (wz (Z.of_nat (cx_ssize c)));
   C4 (wz (Z.of_nat (cx_used c))); C4 (wz (Z.of_nat (cx_err_stack c))); C4 (wz (Z.b2z (cx_too_many c)));
   C4 (wz 0); C8 (wz 0)].
(* [comment removed for export] *)
(* [comment removed for export] *)


(* [comment removed for export] *)



(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)
Record bn_addrs : Type := mkAD {
  ad_b1 : Z; ad_b2 : Z; ad_b3 : Z; ad_b4 : Z; ad_b5 : Z; ad_ctx : Z;
  ad_p1 : bptr; ad_p2 : bptr; ad_p3 : bptr; ad_p4 : bptr; ad_p5 : bptr; ad_pc : bptr }.

Definition ad_ids (AD : bn_addrs) : list bptr := [ad_p1 AD; ad_p2 AD; ad_p3 AD; ad_p4 AD; ad_p5 AD; ad_pc AD].

Definition ad_blocks (OW : list block) (AD : bn_addrs) : Prop :=
  In (ad_p1 AD, ad_b1 AD, 24) OW /\ In (ad_p2 AD, ad_b2 AD, 24) OW /\ In (ad_p3 AD, ad_b3 AD, 24) OW
  /\ In (ad_p4 AD, ad_b4 AD, 24) OW /\ In (ad_p5 AD, ad_b5 AD, 24) OW /\ In (ad_pc AD, ad_ctx AD, 72) OW.
(* [comment removed for export] *)




(* [comment removed for export] *)
Definition ref_at (ls : lstate bptr) (OW : list block) (AD : bn_addrs) (r : bnref) (a : Z) : Prop :=
  match r with
  | RB1 => a = ad_b1 AD | RB2 => a = ad_b2 AD | RB3 => a = ad_b3 AD | RB4 => a = ad_b4 AD | RB5 => a = ad_b5 AD
  | RPool i => exists p H, cx_head (ls_ctx ls) = Some p /\ In (p, H, 400) OW /\ (i < 16)%nat /\ a = H + 24 * Z.of_nat i
  end.
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)


(* [comment removed for export] *)
Definition ES_CLEARED : list byte :=
  repeat (Z_to_bv 8 0) 704 ++ repeat (Z_to_bv 8 255) 64 ++ repeat (Z_to_bv 8 0) 136.

(* [comment removed for export] *)
Record err_addrs : Type := mkEA {
  ea_MK : Z; ea_SA : Z; ea_ND : Z; ea_ES : Z;
  ea_pk : bptr; ea_ps : bptr; ea_pn : bptr; ea_pe : bptr }.

Definition ea_ids (EA : err_addrs) : list bptr := [ea_pk EA; ea_ps EA; ea_pn EA; ea_pe EA].
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

Definition BN_NEW_BYTES : list byte := repeat (Z_to_bv 8 0) 20 ++ [Z_to_bv 8 1; Z_to_bv 8 0; Z_to_bv 8 0; Z_to_bv 8 0].


