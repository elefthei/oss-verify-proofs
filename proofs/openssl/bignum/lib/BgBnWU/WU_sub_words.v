(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.openssl.bignum.lib.BgLib Require Import ImageBg.

From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.openssl.bignum.lib.Lib Require Import Tac Arr.
From OssFuzzTheorems.Proofs.openssl.bignum.lib.Spec Require Import BnBase BnWords.
From OssFuzzTheorems.Proofs.openssl.bignum.lib.BnW Require Import BnTac BnMem BnArith BnLoop.
From OssFuzzTheorems.Proofs.openssl.bignum.lib.BgBnW Require Import W_sub_words.
From OssFuzzTheorems.Proofs.openssl.bignum.lib.BnWU Require Import BnUTac.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Local Ltac Z.euclidean_division_equations_cleanup ::= idtac.
Open Scope bv_scope.

Definition bn_sub_words_uentry := 0x103698%Z.


Section Proofs.
  Variables (ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 : word)
            (F : bvmap 5 word) (fc : bv 32) (m : word -> option byte) (a b : list Z) (lo : Z).
  Notation rp := (bv_unsigned a0).
  Notation ap := (bv_unsigned a1).
  Notation bp := (bv_unsigned a2).
  Notation n := (Z.of_nat (length a)).
  Notation SP := (bv_unsigned sp).
  Notation W := [(bv_unsigned a0, bv_unsigned a0 + 8 * Z.of_nat (length a)); (bv_unsigned sp - 80, bv_unsigned sp)]%Z.
  Hypothesis LA : limbs a.
  Hypothesis LB : limbs b.
  Hypothesis LEN : length b = length a.
  Hypothesis N31 : (n < 2^31)%Z.
  Hypothesis A3 : bv_unsigned a3 = n.



  Hypothesis ALA : alias_ok rp ap n.
  Hypothesis ALB : alias_ok rp bp n.

  Hypothesis LO : (lo <= SP - 80)%Z.
  Hypothesis SEPR : (rp + 8 * n <= SP - 80 \/ SP <= rp)%Z.
  Hypothesis SEPA : (ap + 8 * n <= SP - 80 \/ SP <= ap)%Z.
  Hypothesis SEPB : (bp + 8 * n <= SP - 80 \/ SP <= bp)%Z.


  Hypothesis UBR : ub_ptr_ok n rp.
  Hypothesis UBA : ub_ptr_ok n ap.
  Hypothesis UBB : ub_ptr_ok n bp.


  Notation SPF := (Z_to_bv 64 (bv_unsigned sp + -80)).
  Notation FCELLS jb := [CB 8 jb; C8 s7; C8 s6; C8 s5; C8 s4; C8 s3; C8 s2; C8 s1; C8 s0; C8 ra].

  Lemma FBE : (bv_unsigned sp + -80 = bv_unsigned sp - 80)%Z. Proof. lia. Qed.




  Ltac w64eq := unfold sub_fl; clear; apply Z_to_bv_eqm; change (2 ^ 64)%Z with 18446744073709551616%Z; rewrite ?BW_lit; Z.div_mod_to_equations; lia.



  Ltac cy_arith Rx Ry Hc Ecn cn := clear - Rx Ry Hc Ecn; subst cn; unfold sub_fc; case_ltb; Z.div_mod_to_equations; lia.

  Ltac carry r x y c Rx Ry Hc cn Ecn H :=
    let v := reg_val r in
    lazymatch v with
    | Z_to_bv 64 ?e => let E := fresh "E" in assert (E : e = cn) by (cy_arith Rx Ry Hc Ecn cn); rewrite E; clear E
    end;
    assert (H : (0 <= cn <= 1)%Z) by (clear - Rx Ry Hc Ecn; subst cn; apply sub_fc_range; assumption);
    clear Ecn.

  Ltac norm_bw r xn x y c Rx Ry Hc cn Ecn H :=
    let v := reg_val r in
    lazymatch v with
    | Z_to_bv 64 ?e =>
        let E := fresh "E" in
        assert (E : Z_to_bv 64 e = Z_to_bv 64 (xn - cn))
          by (apply Z_to_bv_eqm; change (2 ^ 64)%Z with 18446744073709551616%Z; cy_arith Rx Ry Hc Ecn cn);
        rewrite E; clear E
    end;
    assert (H : (0 <= cn <= 1)%Z) by (clear - Rx Ry Hc Ecn; subst cn; apply sub_fc_range; assumption);
    clear Ecn.

  End Proofs.
