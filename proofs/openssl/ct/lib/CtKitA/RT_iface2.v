(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.openssl.ct.lib.CtLib Require Import ImageCtA.
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType Fs State Monad Specs Run.
From OssFuzzTheorems.Proofs.openssl.ct.lib.AS Require Import ShapeAlg AsanAcct.
From OssFuzzTheorems.Proofs.openssl.ct.lib.Lib Require Import PropExec MState Mem Frame Cells Step Arr Exec RzCPS. 
From OssFuzzTheorems.Proofs.openssl.ct.lib.A Require Import Shadow.
From OssFuzzTheorems.Proofs.openssl.ct.lib.CtA Require Import Layout RT_iface.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

(* [comment removed for export] *)
Definition e_stack_malloc_g (k : nat) : Z :=
  match k with 0%nat => 0x1a746c | 1%nat => 0x1a75e0 | 2%nat => 0x1a7770 | 3%nat => 0x1a790c | _ => 0x1a7ab8 end.

Lemma e_stack_malloc_g_eq : forall k, (k <= 4)%nat -> e_stack_malloc_g k = e_stack_malloc k.
Proof. intros k Hk. destruct k as [|[|[|[|[|k]]]]]; try reflexivity. Qed.

Section Contracts2.
Variable RT : rt_sig.
(* [comment removed for export] *)

(* [comment removed for export] *)




End Contracts2.
