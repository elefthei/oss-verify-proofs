(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.openssl.bignum.lib.BgLib Require Import ImageBg.

From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.openssl.bignum.lib.Lib Require Import Tac Arr.
From OssFuzzTheorems.Proofs.openssl.bignum.lib.Spec Require Import BnBase BnWords BnWordsCorrect BnKara BnKaraCorrect.
From OssFuzzTheorems.Proofs.openssl.bignum.lib.BnW Require Import BnTac BnTacX BnMem BnArith BnLoop BnCmp BnKaraX BnKaraPX BnKaraMem.
From OssFuzzTheorems.Proofs.openssl.bignum.lib.BgBnW Require Import W_cmp_words W_mul_normal BnCalls W_mul_recursive W_mul_part_recursive.
From OssFuzzTheorems.Proofs.openssl.bignum.lib.BnWU Require Import BnUTac.
From OssFuzzTheorems.Proofs.openssl.bignum.lib.BgBnWU Require Import BnCallsU WU_mul_recursive.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Local Ltac Z.euclidean_division_equations_cleanup ::= idtac.
Open Scope bv_scope.

Definition bn_mul_part_recursive_uentry := 0x101ddc%Z.

Definition part_ustack (L : Z) (k : nat) : Z := (144 * Z.of_nat (S k) + rec_ustack L k)%Z.

Lemma part_ustack_rec : forall L k, (rec_ustack L k <= part_ustack L k - 144)%Z.
Proof. intros L k. unfold part_ustack. lia. Qed.


Section CallUPart.
  Variable POST : machine_state -> Prop.
  Variables (wsp gp tp t0 t1 t2 s0 s1 w0 w1 w2 w3 w4 w5 w6 w7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 : word)
            (F : bvmap 5 word) (fc : bv 32) (m : word -> option byte) (lo SPz RET : Z).
  Hypothesis ESP : bv_unsigned wsp = SPz.
  Hypothesis ERET : ret_pc (Z_to_bv 64 RET) = Z_to_bv 64 RET.



  End CallUPart.

Definition kpart_upre (L : Z) (fuel' k n tna tnb la lb nT : nat) (SK rp tq ap bp SP lo : Z) : Prop :=
  n = Nat.pow 2 k /\ (3 <= k <= 26)%nat /\ (k <= S fuel')%nat /\ (8 <= n)%nat /\ (Z.of_nat n <= 67108864)%Z /\
  (tna < n)%nat /\ (tnb < n)%nat /\ (tna <= tnb + 1)%nat /\ (tnb <= tna + 1)%nat /\
  la = (n + tna)%nat /\ lb = (n + tnb)%nat /\ (8 * n <= nT)%nat /\ SK = (part_ustack L k - 144)%Z /\
  (rp + 8 * Z.of_nat (4 * n) <= ap \/ ap + 8 * Z.of_nat la <= rp)%Z /\
  (rp + 8 * Z.of_nat (4 * n) <= bp \/ bp + 8 * Z.of_nat lb <= rp)%Z /\
  (tq + 8 * Z.of_nat nT <= ap \/ ap + 8 * Z.of_nat la <= tq)%Z /\
  (tq + 8 * Z.of_nat nT <= bp \/ bp + 8 * Z.of_nat lb <= tq)%Z /\
  (rp + 8 * Z.of_nat (4 * n) <= tq \/ tq + 8 * Z.of_nat nT <= rp)%Z /\
  (rp + 8 * Z.of_nat (4 * n) <= SP - 144 - SK \/ SP <= rp)%Z /\
  (tq + 8 * Z.of_nat nT <= SP - 144 - SK \/ SP <= tq)%Z /\
  (ap + 8 * Z.of_nat la <= SP - 144 - SK \/ SP <= ap)%Z /\
  (bp + 8 * Z.of_nat lb <= SP - 144 - SK \/ SP <= bp)%Z /\
  (lo <= SP - 144 - SK)%Z /\ (0 <= lo)%Z /\ (80 <= L)%Z.

Section KaraUP.
  Variables (L CS8 FSC FSS FSM : Z).
  Hypothesis LEAF : (0 <= CS8 <= L /\ 0 <= FSC <= L /\ 0 <= FSS <= L /\ 0 <= FSM <= L)%Z.





  Variable fuel' : nat.

  Variables (ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 : word)
            (F : bvmap 5 word) (fc : bv 32) (m : word -> option byte) (a b : list Z) (k tna tnb : nat) (lo : Z) (n nT : nat) (SK : Z).
  Notation rp := (bv_unsigned a0).
  Notation ap := (bv_unsigned a1).
  Notation bp := (bv_unsigned a2).
  Notation tq := (bv_unsigned a6).
  Notation SP := (bv_unsigned sp).
  Notation N := (Z.of_nat n).
  Hypothesis PRE : kpart_upre L fuel' k n tna tnb (length a) (length b) nT SK (bv_unsigned a0) (bv_unsigned a6) (bv_unsigned a1) (bv_unsigned a2) (bv_unsigned sp) lo.
  Hypothesis LA : limbs a.
  Hypothesis LB : limbs b.
  Hypothesis A3 : bv_unsigned a3 = N.
  Hypothesis A4 : bv_unsigned a4 = Z.of_nat tna.
  Hypothesis A5 : bv_unsigned a5 = Z.of_nat tnb.
  Hypothesis UBR : ub_ptr_ok 1 (bv_unsigned a0).
  Hypothesis UBA : ub_ptr_ok 1 (bv_unsigned a1).
  Hypothesis UBB : ub_ptr_ok 1 (bv_unsigned a2).
  Hypothesis UBT : ub_ptr_ok 1 (bv_unsigned a6).
  Variable RES : list Z * list Z.

  Lemma Hn : n = Nat.pow 2 k. Proof. apply PRE. Qed.
  Lemma Hk : (3 <= k <= 26)%nat. Proof. apply PRE. Qed.
  Lemma Hkf : (k <= S fuel')%nat. Proof. apply PRE. Qed.
  Lemma Hn8 : (8 <= n)%nat. Proof. apply PRE. Qed.
  Lemma HnB : (N <= 67108864)%Z. Proof. apply PRE. Qed.
  Lemma Htna : (tna < n)%nat. Proof. apply PRE. Qed.
  Lemma Htnb : (tnb < n)%nat. Proof. apply PRE. Qed.
  Lemma Hd1 : (tna <= tnb + 1)%nat. Proof. apply PRE. Qed.
  Lemma Hd2 : (tnb <= tna + 1)%nat. Proof. apply PRE. Qed.
  Lemma HLA : length a = (n + tna)%nat. Proof. apply PRE. Qed.
  Lemma HLB : length b = (n + tnb)%nat. Proof. apply PRE. Qed.
  Lemma HnT : (8 * n <= nT)%nat. Proof. apply PRE. Qed.
  Lemma HSK : SK = (part_ustack L k - 144)%Z. Proof. apply PRE. Qed.
  Lemma HL80 : (80 <= L)%Z. Proof. apply PRE. Qed.
  Lemma DRA : (rp + 8 * Z.of_nat (4 * n) <= ap \/ ap + 8 * Z.of_nat (length a) <= rp)%Z. Proof. apply PRE. Qed.
  Lemma DRB : (rp + 8 * Z.of_nat (4 * n) <= bp \/ bp + 8 * Z.of_nat (length b) <= rp)%Z. Proof. apply PRE. Qed.
  Lemma DTA : (tq + 8 * Z.of_nat nT <= ap \/ ap + 8 * Z.of_nat (length a) <= tq)%Z. Proof. apply PRE. Qed.
  Lemma DTB : (tq + 8 * Z.of_nat nT <= bp \/ bp + 8 * Z.of_nat (length b) <= tq)%Z. Proof. apply PRE. Qed.
  Lemma DRT : (rp + 8 * Z.of_nat (4 * n) <= tq \/ tq + 8 * Z.of_nat nT <= rp)%Z. Proof. apply PRE. Qed.
  Lemma SEPR : (rp + 8 * Z.of_nat (4 * n) <= SP - 144 - SK \/ SP <= rp)%Z. Proof. apply PRE. Qed.
  Lemma SEPT : (tq + 8 * Z.of_nat nT <= SP - 144 - SK \/ SP <= tq)%Z. Proof. apply PRE. Qed.
  Lemma SEPA : (ap + 8 * Z.of_nat (length a) <= SP - 144 - SK \/ SP <= ap)%Z. Proof. apply PRE. Qed.
  Lemma SEPB : (bp + 8 * Z.of_nat (length b) <= SP - 144 - SK \/ SP <= bp)%Z. Proof. apply PRE. Qed.
  Lemma LO : (lo <= SP - 144 - SK)%Z. Proof. apply PRE. Qed.
  Lemma LO0 : (0 <= lo)%Z. Proof. apply PRE. Qed.
  Lemma SK_rec : (rec_ustack L k <= SK)%Z. Proof. rewrite HSK. apply part_ustack_rec. Qed.
  Lemma SK_ge : (160 + L <= SK)%Z. Proof. pose proof SK_rec. unfold rec_ustack in *. lia. Qed.
  Lemma SK0 : (0 <= SK)%Z. Proof. pose proof SK_ge. pose proof HL80. lia. Qed.
  Lemma FS0 : (0 <= 144)%Z. Proof. lia. Qed.
  Lemma FBE : (SP + -144 = SP - 144)%Z. Proof. reflexivity. Qed.
  Lemma ESP144 : bv_unsigned (Z_to_bv 64 (SP + -144)) = (SP + -144)%Z.
  Proof.
    apply inr64_unsigned_lit. unfold inr64. change (2 ^ 64)%Z with 18446744073709551616%Z.
    pose proof (zr_word sp) as R. unfold inr64 in R. change (2 ^ 64)%Z with 18446744073709551616%Z in R.
    pose proof LO. pose proof LO0. pose proof SK0. lia.
  Qed.

  Lemma geom : (8 <= N <= 67108864 /\ 0 <= lo /\ lo <= SP - 144 - SK /\ 160 + L <= SK /\ 80 <= L /\
                0 <= CS8 <= L /\ 0 <= FSC <= L /\ 0 <= FSS <= L /\ 0 <= FSM <= L /\ rec_ustack L k <= SK /\
                8 * N <= Z.of_nat nT /\ Z.of_nat tna < N /\ Z.of_nat tnb < N /\ Z.of_nat tna <= Z.of_nat tnb + 1 /\ Z.of_nat tnb <= Z.of_nat tna + 1 /\
                Z.of_nat (length a) = N + Z.of_nat tna /\ Z.of_nat (length b) = N + Z.of_nat tnb)%Z.
  Proof.
    pose proof Hn8. pose proof HnB. pose proof LO. pose proof LO0. pose proof SK_ge. pose proof SK_rec. pose proof HnT. pose proof Htna.
    pose proof Htnb. pose proof Hd1. pose proof Hd2. pose proof HLA. pose proof HLB. pose proof HL80. pose proof LEAF. lia.
  Qed.

  Lemma ubs : (0 < rp /\ rp mod 8 = 0 /\ 0 < ap /\ ap mod 8 = 0 /\ 0 < bp /\ bp mod 8 = 0 /\ 0 < tq /\ tq mod 8 = 0)%Z.
  Proof. pose proof (UBR ltac:(lia)). pose proof (UBA ltac:(lia)). pose proof (UBB ltac:(lia)). pose proof (UBT ltac:(lia)). tauto. Qed.

  Ltac ub_tac BND G :=
    unfold ub_ptr_ok; intros _; let UB := fresh "UB" in pose proof ubs as UB;
    split; [ clear - UB BND G; lia | clear - UB; Z.div_mod_to_equations; lia ].







  Notation FCELLS neg :=
    [C8 (Z_to_bv 64 (if neg then 0 else 1)); C8 (Z_to_bv 64 (bv_unsigned a2 + 8 * Z.of_nat n)); C8 (Z_to_bv 64 (8 * Z.of_nat n));
     C8 (Z_to_bv 64 0); C8 (Z_to_bv 64 (8 * Z.of_nat n));
     C8 s11; C8 s10; C8 s9; C8 s8; C8 s7; C8 s6; C8 s5; C8 s4; C8 s3; C8 s2; C8 s1; C8 s0; C8 ra].


  Ltac ret_even := apply ret_pc_even; [lia | reflexivity].
  Ltac ulit := first [ reflexivity | rewrite inr64_unsigned_lit by (unfold inr64; change (2 ^ 64)%Z with 18446744073709551616%Z; lia); lia | lia ].


  Ltac fill_steps G BND :=
    do 2 zstep; rewrite A4, (bn_swrap32_small (2 * N + Z.of_nat tna)) by (clear - G; lia);
    chk ltac:(fun C => clear - C; lia);
    zstep; rewrite (bn_swrap32_small (2 * N + Z.of_nat tna + 0)), Z.add_0_r by (clear - G; lia);
    do 2 zstep; rewrite A5, (bn_swrap32_small (2 * N + Z.of_nat tna + Z.of_nat tnb)) by (clear - G; lia);
    chk ltac:(fun C => clear - C; lia);
    zstep; rewrite (bn_swrap32_small (2 * N + Z.of_nat tna + Z.of_nat tnb + 0)), Z.add_0_r by (clear - G; lia);
    zstep; replace ((2 * N + Z.of_nat tna + Z.of_nat tnb) ≪ 3)%Z with (8 * Z.of_nat (2 * n + tna + tnb))%Z
      by (rewrite Z.shiftl_mul_pow2 by lia; clear; lia);
    zstep;
    chk ltac:(fun C => pose proof ubs as UB; clear - C BND G UB; lia);
    do 4 zstep;
    setreg 11%Z (Z_to_bv 64 1) ltac:(
      replace (rp + 8 * Z.of_nat (2 * n + tna + tnb) <? rp)%Z with false by (symmetry; apply Z.ltb_ge; clear; lia);
      rewrite lxor_signbit by (clear - G; lia);
      replace (2 * N + Z.of_nat tna + Z.of_nat tnb + 9223372036854775808 <? 9223372036854775808)%Z with false
        by (symmetry; apply Z.ltb_ge; clear - G; lia);
      reflexivity);
    zstep; if_false;
    do 2 zstep; rewrite A4, (bn_swrap32_small (2 * N - Z.of_nat tna)) by (clear - G; lia);
    chk ltac:(fun C => clear - C; lia);
    zstep; rewrite (bn_swrap32_small (2 * N - Z.of_nat tna + 0)), Z.add_0_r by (clear - G; lia);
    do 2 zstep; rewrite A5, (bn_swrap32_small (2 * N - Z.of_nat tna - Z.of_nat tnb)) by (clear - G; lia);
    chk ltac:(fun C => clear - C; lia);
    zstep; rewrite (bn_swrap32_small (2 * N - Z.of_nat tna - Z.of_nat tnb + 0)), Z.add_0_r by (clear - G; lia);
    zstep; replace ((2 * N - Z.of_nat tna - Z.of_nat tnb) ≪ 3)%Z with (8 * Z.of_nat (2 * n - tna - tnb))%Z
      by (rewrite Z.shiftl_mul_pow2 by lia; clear - G; lia).

  Notation a_lo := (firstn n a).
  Notation a_hi := (slice a n tna).
  Notation b_lo := (firstn n b).
  Notation b_hi := (slice b n tnb).

  Notation i_ := (Nat.pow 2 (k - 1)).

  Notation JCELLS j144 j120 :=
    [CB 8 j144; C8 (Z_to_bv 64 (bv_unsigned a2 + 8 * Z.of_nat n)); C8 (Z_to_bv 64 (8 * Z.of_nat n));
     CB 8 j120; C8 (Z_to_bv 64 (8 * Z.of_nat n));
     C8 s11; C8 s10; C8 s9; C8 s8; C8 s7; C8 s6; C8 s5; C8 s4; C8 s3; C8 s2; C8 s1; C8 s0; C8 ra].

  Notation t0_of sw := (fst (if sw then sub_part_words a_hi a_lo tna else sub_part_words a_lo a_hi tna)).
  Notation t1_of sw := (fst (if sw then sub_part_words b_hi b_lo tnb else sub_part_words b_lo b_hi tnb)).




  Ltac tn_checks G BND :=
    do 2 zstep;
    chk ltac:(fun C => clear - C BND G; lia);
    chk ltac:(fun C => pose proof ubs as UB; clear - C UB; lia);
    chk ltac:(fun C => pose proof ubs as UB; clear - C BND G UB; lia).

  Ltac litreg r :=
    let v := reg_val r in let z := eval vm_compute in (bv_unsigned v) in
    replace v with (Z_to_bv 64 z) by (apply bv_eq; vm_compute; reflexivity).

  Ltac code_steps :=
    zstep; litreg 12%Z; zstep; litreg 11%Z; zstep; litreg 12%Z;
    zstep; if_false;
    zstep; litreg 12%Z; zstep; litreg 11%Z; zstep; litreg 10%Z;
    zstep; if_false;
    zstep; litreg 11%Z; zstep; litreg 10%Z; do 2 zstep; zstep.

  Ltac bit60 := zstep; zstep; litreg 11%Z; zstep; litreg 11%Z; zstep.
  Ltac bit3 := zstep; zstep; litreg 10%Z; zstep; litreg 10%Z; zstep.

  Notation PCELLS0 jb40 := [CB 40 jb40; C8 s11; C8 s10; C8 s9; C8 s8; C8 s7; C8 s6; C8 s5; C8 s4; C8 s3; C8 s2; C8 s1; C8 s0; C8 ra].

End KaraUP.

Section MainUP.
  Variables (L CS8 FSC FSS FSM : Z).
  Hypothesis LEAF : (0 <= CS8 <= L /\ 0 <= FSC <= L /\ 0 <= FSS <= L /\ 0 <= FSM <= L)%Z.
  Hypothesis L80 : (80 <= L)%Z.






  End MainUP.
