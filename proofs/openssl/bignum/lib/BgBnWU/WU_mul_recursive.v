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
From OssFuzzTheorems.Proofs.openssl.bignum.lib.BnW Require Import BnTac BnTacX BnMem BnArith BnLoop BnCmp BnKaraX BnKaraMem.
From OssFuzzTheorems.Proofs.openssl.bignum.lib.BgBnW Require Import W_cmp_words W_mul_normal BnCalls W_mul_recursive.
From OssFuzzTheorems.Proofs.openssl.bignum.lib.BnWU Require Import BnUTac.
From OssFuzzTheorems.Proofs.openssl.bignum.lib.BgBnWU Require Import BnCallsU.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Local Ltac Z.euclidean_division_equations_cleanup ::= idtac.
Open Scope bv_scope.

Definition bn_mul_recursive_uentry := 0x1013e4%Z.

Lemma munch_add_stack_u : forall (D L8 FB : Z) (m1 m2 : word -> option byte),
  munch [(D, D + L8)]%Z m1 m2 -> munch [(D, D + L8); (FB - 0, FB)]%Z m1 m2.
Proof.
  intros D L8 FB m1 m2 H. eapply munch_weaken; [|exact H]. unfold sub_fp. cbn [outside]. intros x (H1 & _ & H3). split; [exact H1 | exact H3].
Qed.

Lemma lxor_signbit : forall x, (0 <= x < 9223372036854775808 -> Z.lxor x 9223372036854775808 = x + 9223372036854775808)%Z.
Proof.
  intros x Hx. symmetry. apply Z.add_nocarry_lxor.
  apply Z.bits_inj'. intros i Hi. rewrite Z.land_spec, Z.bits_0. change 9223372036854775808%Z with (2^63)%Z. rewrite Z.pow2_bits_eqb by lia.
  destruct (Z.eqb_spec 63 i) as [<-|]; [|apply andb_false_r]. rewrite andb_true_r.
  destruct (Z.eq_dec x 0) as [->|]; [apply Z.bits_0|]. apply Z.bits_above_log2; [lia|]. apply Z.log2_lt_pow2; lia.
Qed.

Lemma lxor_ones64 : forall x, (0 <= x < 18446744073709551616 -> Z.lxor x 18446744073709551615 = 18446744073709551615 - x)%Z.
Proof.
  intros x Hx. change 18446744073709551615%Z with (Z.ones 64) at 1.
  assert (E : Z.lxor x (Z.ones 64) = Z.land (Z.lnot x) (Z.ones 64)).
  { apply Z.bits_inj'. intros i Hi. rewrite Z.lxor_spec, Z.land_spec, Z.lnot_spec by lia.
    destruct (Z.lt_ge_cases i 64) as [H|H].
    - rewrite Z.ones_spec_low by lia. rewrite andb_true_r, xorb_true_r. reflexivity.
    - rewrite Z.ones_spec_high by lia. rewrite andb_false_r, xorb_false_r.
      destruct (Z.eq_dec x 0) as [->|Nx]; [apply Z.bits_0|].
      apply Z.bits_above_log2; [lia|]. assert (Z.log2 x < 64)%Z by (apply Z.log2_lt_pow2; lia). lia. }
  rewrite E, Z.land_ones by lia. unfold Z.lnot, Z.pred. change (2 ^ 64)%Z with 18446744073709551616%Z. Z.div_mod_to_equations. lia.
Qed.

Definition rec_ustack (L : Z) (k : nat) : Z := (160 * Z.of_nat (S k) + L)%Z.


Section CallURec.
  Variable POST : machine_state -> Prop.
  Variables (wsp gp tp t0 t1 t2 s0 s1 w0 w1 w2 w3 w4 w5 w6 w7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 : word)
            (F : bvmap 5 word) (fc : bv 32) (m : word -> option byte) (lo SPz RET : Z).
  Hypothesis ESP : bv_unsigned wsp = SPz.
  Hypothesis ERET : ret_pc (Z_to_bv 64 RET) = Z_to_bv 64 RET.



  End CallURec.

Definition kara_upre (L : Z) (k' n da db la lb nT : nat) (SK rp tq ap bp SP lo : Z) : Prop :=
  n = Nat.pow 2 k' /\ (1 <= k' <= 25)%nat /\ (8 <= n)%nat /\ (Z.of_nat n <= 33554432)%Z /\ (da <= 1)%nat /\ (db <= 1)%nat /\
  la = (2 * n - da)%nat /\ lb = (2 * n - db)%nat /\ (4 * n + scratch_rec k' <= nT)%nat /\ SK = rec_ustack L k' /\
  (rp + 8 * Z.of_nat (4 * n) <= ap \/ ap + 8 * Z.of_nat la <= rp)%Z /\
  (rp + 8 * Z.of_nat (4 * n) <= bp \/ bp + 8 * Z.of_nat lb <= rp)%Z /\
  (tq + 8 * Z.of_nat nT <= ap \/ ap + 8 * Z.of_nat la <= tq)%Z /\
  (tq + 8 * Z.of_nat nT <= bp \/ bp + 8 * Z.of_nat lb <= tq)%Z /\
  (rp + 8 * Z.of_nat (4 * n) <= tq \/ tq + 8 * Z.of_nat nT <= rp)%Z /\
  (rp + 8 * Z.of_nat (4 * n) <= SP - 160 - SK \/ SP <= rp)%Z /\
  (tq + 8 * Z.of_nat nT <= SP - 160 - SK \/ SP <= tq)%Z /\
  (ap + 8 * Z.of_nat la <= SP - 160 - SK \/ SP <= ap)%Z /\
  (bp + 8 * Z.of_nat lb <= SP - 160 - SK \/ SP <= bp)%Z /\
  (lo <= SP - 160 - SK)%Z /\ (0 <= lo)%Z /\ (80 <= L)%Z.

Section KaraU.
  Variables (L CS8 FSC FSS FSM : Z).
  Hypothesis LEAF : (0 <= CS8 <= L /\ 0 <= FSC <= L /\ 0 <= FSS <= L /\ 0 <= FSM <= L)%Z.




  Variable k' : nat.

  Variables (ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 : word)
            (F : bvmap 5 word) (fc : bv 32) (m : word -> option byte) (a b : list Z) (da db : nat) (lo : Z) (n nT : nat) (SK : Z).
  Notation rp := (bv_unsigned a0).
  Notation ap := (bv_unsigned a1).
  Notation bp := (bv_unsigned a2).
  Notation tq := (bv_unsigned a6).
  Notation SP := (bv_unsigned sp).
  Notation N := (Z.of_nat n).
  Hypothesis PRE : kara_upre L k' n da db (length a) (length b) nT SK (bv_unsigned a0) (bv_unsigned a6) (bv_unsigned a1) (bv_unsigned a2) (bv_unsigned sp) lo.
  Hypothesis LA : limbs a.
  Hypothesis LB : limbs b.
  Hypothesis A3 : bv_unsigned a3 = (2 * N)%Z.
  Hypothesis A4 : a4 = Z_to_bv 64 (- Z.of_nat da).
  Hypothesis A5 : a5 = Z_to_bv 64 (- Z.of_nat db).
  Hypothesis UBR : ub_ptr_ok 1 (bv_unsigned a0).
  Hypothesis UBA : ub_ptr_ok 1 (bv_unsigned a1).
  Hypothesis UBB : ub_ptr_ok 1 (bv_unsigned a2).
  Hypothesis UBT : ub_ptr_ok 1 (bv_unsigned a6).
  Variable RES : list Z * list Z.

  Lemma Hn : n = Nat.pow 2 k'. Proof. apply PRE. Qed.
  Lemma Hk' : (1 <= k' <= 25)%nat. Proof. apply PRE. Qed.
  Lemma Hn8 : (8 <= n)%nat. Proof. apply PRE. Qed.
  Lemma HnB : (N <= 33554432)%Z. Proof. apply PRE. Qed.
  Lemma Hda : (da <= 1)%nat. Proof. apply PRE. Qed.
  Lemma Hdb : (db <= 1)%nat. Proof. apply PRE. Qed.
  Lemma HLA : length a = (2 * n - da)%nat. Proof. apply PRE. Qed.
  Lemma HLB : length b = (2 * n - db)%nat. Proof. apply PRE. Qed.
  Lemma HnT : (4 * n + scratch_rec k' <= nT)%nat. Proof. apply PRE. Qed.
  Lemma HSK : SK = rec_ustack L k'. Proof. apply PRE. Qed.
  Lemma HL80 : (80 <= L)%Z. Proof. apply PRE. Qed.
  Lemma DRA : (rp + 8 * Z.of_nat (4 * n) <= ap \/ ap + 8 * Z.of_nat (length a) <= rp)%Z. Proof. apply PRE. Qed.
  Lemma DRB : (rp + 8 * Z.of_nat (4 * n) <= bp \/ bp + 8 * Z.of_nat (length b) <= rp)%Z. Proof. apply PRE. Qed.
  Lemma DTA : (tq + 8 * Z.of_nat nT <= ap \/ ap + 8 * Z.of_nat (length a) <= tq)%Z. Proof. apply PRE. Qed.
  Lemma DTB : (tq + 8 * Z.of_nat nT <= bp \/ bp + 8 * Z.of_nat (length b) <= tq)%Z. Proof. apply PRE. Qed.
  Lemma DRT : (rp + 8 * Z.of_nat (4 * n) <= tq \/ tq + 8 * Z.of_nat nT <= rp)%Z. Proof. apply PRE. Qed.
  Lemma SEPR : (rp + 8 * Z.of_nat (4 * n) <= SP - 160 - SK \/ SP <= rp)%Z. Proof. apply PRE. Qed.
  Lemma SEPT : (tq + 8 * Z.of_nat nT <= SP - 160 - SK \/ SP <= tq)%Z. Proof. apply PRE. Qed.
  Lemma SEPA : (ap + 8 * Z.of_nat (length a) <= SP - 160 - SK \/ SP <= ap)%Z. Proof. apply PRE. Qed.
  Lemma SEPB : (bp + 8 * Z.of_nat (length b) <= SP - 160 - SK \/ SP <= bp)%Z. Proof. apply PRE. Qed.
  Lemma LO : (lo <= SP - 160 - SK)%Z. Proof. apply PRE. Qed.
  Lemma LO0 : (0 <= lo)%Z. Proof. apply PRE. Qed.
  Lemma SK0 : (0 <= SK)%Z. Proof. rewrite HSK. unfold rec_ustack. pose proof HL80. lia. Qed.
  Lemma SK_ge : (160 + L <= SK)%Z. Proof. rewrite HSK. unfold rec_ustack. lia. Qed.
  Lemma FS0 : (0 <= 160)%Z. Proof. lia. Qed.
  Lemma FBE : (SP + -160 = SP - 160)%Z. Proof. reflexivity. Qed.
  Lemma ESP160 : bv_unsigned (Z_to_bv 64 (SP + -160)) = (SP + -160)%Z.
  Proof.
    apply inr64_unsigned_lit. unfold inr64. change (2 ^ 64)%Z with 18446744073709551616%Z.
    pose proof (zr_word sp) as R. unfold inr64 in R. change (2 ^ 64)%Z with 18446744073709551616%Z in R.
    pose proof LO. pose proof LO0. pose proof SK0. lia.
  Qed.








  Notation FCELLS jb :=
    [CB 8 jb; C8 a1; C8 a2; C8 (Z_to_bv 64 (bv_unsigned a2 + 8 * Z.of_nat n)); C8 (Z_to_bv 64 (bv_unsigned a1 + 8 * Z.of_nat n));
     C8 (Z_to_bv 64 (8 * Z.of_nat n)); C8 a0;
     C8 s11; C8 s10; C8 s9; C8 s8; C8 s7; C8 s6; C8 s5; C8 s4; C8 s3; C8 s2; C8 s1; C8 s0; C8 ra].


  Ltac ret_even := apply ret_pc_even; [lia | reflexivity].
  Ltac ulit := first [ reflexivity | rewrite inr64_unsigned_lit by (unfold inr64; change (2 ^ 64)%Z with 18446744073709551616%Z; lia); lia | lia ].


  Lemma geom : (8 <= N <= 33554432 /\ 0 <= lo /\ lo <= SP - 160 - SK /\ 160 + L <= SK /\ 80 <= L /\
                0 <= CS8 <= L /\ 0 <= FSC <= L /\ 0 <= FSS <= L /\ 0 <= FSM <= L /\
                Z.of_nat (4 * n + scratch_rec k') <= Z.of_nat nT /\ Z.of_nat da <= 1 /\ Z.of_nat db <= 1 /\
                Z.of_nat (length a) = 2 * N - Z.of_nat da /\ Z.of_nat (length b) = 2 * N - Z.of_nat db)%Z.
  Proof.
    pose proof Hn8. pose proof HnB. pose proof LO. pose proof LO0. pose proof SK_ge. pose proof HL80. pose proof LEAF. pose proof HnT.
    pose proof Hda. pose proof Hdb. pose proof HLA. pose proof HLB. lia.
  Qed.

  Lemma ubs : (0 < rp /\ rp mod 8 = 0 /\ 0 < ap /\ ap mod 8 = 0 /\ 0 < bp /\ bp mod 8 = 0 /\ 0 < tq /\ tq mod 8 = 0)%Z.
  Proof. pose proof (UBR ltac:(lia)). pose proof (UBA ltac:(lia)). pose proof (UBB ltac:(lia)). pose proof (UBT ltac:(lia)). tauto. Qed.

  Ltac ub_tac BND G :=
    unfold ub_ptr_ok; intros _; let UB := fresh "UB" in pose proof ubs as UB;
    split; [ clear - UB BND G; lia | clear - UB; Z.div_mod_to_equations; lia ].

  Notation a_lo := (firstn n a).
  Notation a_hi := (slice a n (n - da)).
  Notation b_lo := (firstn n b).
  Notation b_hi := (slice b n (n - db)).

  Notation t0_of sw := (fst (if sw then sub_part_words a_hi a_lo (n - da) else sub_part_words a_lo a_hi (n - da))).
  Notation t1_of sw := (fst (if sw then sub_part_words b_hi b_lo (n - db) else sub_part_words b_lo b_hi (n - db))).




  Ltac litreg r :=
    let v := reg_val r in let z := eval vm_compute in (bv_unsigned v) in
    replace v with (Z_to_bv 64 z) by (apply bv_eq; vm_compute; reflexivity).

  Ltac sw_steps :=
    zstep; litreg 12%Z; zstep; litreg 11%Z; zstep; litreg 12%Z;
    zstep; if_false;
    zstep; litreg 12%Z; zstep; litreg 11%Z; zstep; litreg 10%Z;
    zstep; if_false;
    zstep; litreg 10%Z; zstep; zstep; litreg 10%Z; do 2 zstep;
    zstep; if_false;
    zstep; litreg 10%Z; do 6 zstep.

  Notation FCELLS0 jb48 := [CB 48 jb48; C8 a0; C8 s11; C8 s10; C8 s9; C8 s8; C8 s7; C8 s6; C8 s5; C8 s4; C8 s3; C8 s2; C8 s1; C8 s0; C8 ra].

  End KaraU.

Ltac wnorm :=
  rewrite ?Z_to_bv_unsigned, ?Z.shiftl_mul_pow2 by lia; change (2 ^ 1)%Z with 2%Z; change (2 ^ 3)%Z with 8%Z;
  unfold bv_swrap, bv_wrap, bv_half_modulus, bv_modulus;
  change (2 ^ Z.of_N 64)%Z with 18446744073709551616%Z; change (2 ^ Z.of_N 32)%Z with 4294967296%Z;
  change (4294967296 `div` 2)%Z with 2147483648%Z; change (2 ^ 64)%Z with 18446744073709551616%Z;
  Z.div_mod_to_equations; lia.

Section MainU.
  Variables (L CS8 FSC FSS FSM : Z).
  Hypothesis LEAF : (0 <= CS8 <= L /\ 0 <= FSC <= L /\ 0 <= FSS <= L /\ 0 <= FSM <= L)%Z.
  Hypothesis L80 : (80 <= L)%Z.





  End MainU.
