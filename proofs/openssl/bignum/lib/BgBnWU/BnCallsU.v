(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.openssl.bignum.lib.BgLib Require Import ImageBg.

From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.openssl.bignum.lib.Lib Require Import Tac Arr.
From OssFuzzTheorems.Proofs.openssl.bignum.lib.Spec Require Import BnBase BnWords BnWordsCorrect.
From OssFuzzTheorems.Proofs.openssl.bignum.lib.BgU Require Import F_memset.
From OssFuzzTheorems.Proofs.openssl.bignum.lib.BnW Require Import BnTac BnTacX BnMem BnLoop.
From OssFuzzTheorems.Proofs.openssl.bignum.lib.BgBnW Require Import W_cmp_words W_mul_normal BnCalls.
From OssFuzzTheorems.Proofs.openssl.bignum.lib.BnWU Require Import BnUTac.
From OssFuzzTheorems.Proofs.openssl.bignum.lib.BgBnWU Require Import WU_add_words WU_sub_words.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope bv_scope.






Section CallsU.
  Variable POST : machine_state -> Prop.
  Variables (wsp gp tp t0 t1 t2 s0 s1 w0 w1 w2 w3 w4 w5 w6 w7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 : word)
            (F : bvmap 5 word) (fc : bv 32) (m : word -> option byte) (lo SPz RET : Z).
  Hypothesis ESP : bv_unsigned wsp = SPz.
  Hypothesis ERET : ret_pc (Z_to_bv 64 RET) = Z_to_bv 64 RET.






  End CallsU.
