(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.openssl.ct.lib.CtLib Require Import ImageCtA.
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType Fs State Monad Specs Run.
From LinuxProcessSemantics.LinuxProcessSem.Sys Require Import Uapi.
From OssFuzzTheorems.Proofs.openssl.ct.lib.AS Require Import ShapeAlg AsanAcct.
From OssFuzzTheorems.Proofs.openssl.ct.lib.Lib Require Import PropExec MState Mem Frame Cells Step Arr Exec Nodes RzCPS NodesA. 
From OssFuzzTheorems.Proofs.openssl.ct.lib.Spec Require Import Prelim Canon Stdio.
From OssFuzzTheorems.Proofs.openssl.ct.lib.A Require Import Shadow MainSkel.
From OssFuzzTheorems.Proofs.openssl.ct.lib.CtA Require Import Layout RT_iface D_iface.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)

Definition TP_A : Z := 0xba93f0.               (* [comment removed for export] *)
Definition ERRNO_A : Z := TP_A - 164.           (* [comment removed for export] *)
Definition MAIN_RA : Z := 0x51f51c.              (* [comment removed for export] *)
Definition GOT_STDERR : Z := 0x5a9eb8.           (* [comment removed for export] *)
Definition STDERR_VAR : Z := 0x5a9128.           (* [comment removed for export] *)
Definition RET_OPEN : Z := 0x1f3c80.             (* [comment removed for export] *)
Definition GOT_LLVMINIT : Z := 0x5a9ec0.         (* [comment removed for export] *)
Definition TR_INIT : Z := 0xba4690.             (* [comment removed for export] *)
Definition TR_EMPTY : Z := 0xba46a0.            (* [comment removed for export] *)

(* [comment removed for export] *)
Definition fds0 : list (word * FdEntry) :=
  [(Z_to_bv 64 0, FdChannel (Z_to_bv 64 0)); (Z_to_bv 64 1, FdChannel (Z_to_bv 64 1)); (Z_to_bv 64 2, FdChannel (Z_to_bv 64 2))].



(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)

Section Kit.
Variable RT : rt_sig.


Lemma PMfd_mat_stable : forall F0 fs0, mat_stable (PMfd F0 fs0).
Proof. intros F0 fs0. exact (mat_stable_obs (fun fds fs' _ _ _ => fds = F0 /\ fs' = fs0)). Qed.

(* [comment removed for export] *)


(* [comment removed for export] *)
Lemma ASTA_conseq : forall Σ PMc Pm Pm' c, ASTA RT Σ PMc Pm c -> (forall ms, Pm ms -> Pm' ms) -> ASTA RT Σ PMc Pm' c.
Proof. intros Σ PMc Pm Pm' c H HP. unfold ASTA in *. eapply AST_conseq; [exact H| exact HP| auto]. Qed.

Lemma ASTA_ex : forall {X} Σ PMc (Pm : X -> machine_state -> Prop) c,
  ASTA RT Σ PMc (fun ms => exists x, Pm x ms) c -> exists x, ASTA RT Σ PMc (Pm x) c.
Proof. intros X Σ PMc Pm c H. unfold ASTA in *. exact (AST_exI SEGTOP_A (rt_allow RT Σ) Pm _ c H). Qed.

(* [comment removed for export] *)
Lemma ASTA_unpack : forall Σ PMc (Pm : machine_state -> Prop) c, ASTA RT Σ PMc Pm c -> exists ms, Pm ms /\ ASTA RT Σ PMc (eq ms) c.
Proof.
  intros Σ PMc Pm [ms mo] (H1 & H2 & H3 & H4). exists (restrict (HID (rt_allow RT Σ) mo) ms). split; [exact H2|].
  split; [exact H1|]. split; [reflexivity|]. split; [exact H3| exact H4].
Qed.

End Kit.

(* [comment removed for export] *)
Definition fp_local (W : list (Z * Z)) (P : mem -> Prop) : Prop :=
  forall m m', P m -> (forall a : word, in_ranges W (bv_unsigned a) -> m' a = m a) -> P m'. (* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)
Definition S_SHORT : Z := 0x44179.              (* [comment removed for export] *)
Definition S_OVER : Z := 0x212fc. (* [comment removed for export] *)
(* [comment removed for export] *)



(* [comment removed for export] *)
Definition drv_cell (x : Z) : Prop :=
  (ERRNO_A <= x < ERRNO_A + 4) \/ (SSP_GUARD <= x < SSP_GUARD + 8) \/ (g_read_stage <= x < g_read_stage + 65536)
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  \/ (TP_A - 156 <= x < TP_A - 151).

(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)

Section Drv.
Variable RT : rt_sig.
Variable OUT_rep : stdout_st -> mem -> Prop.
Variable ERR_rep : mem -> Prop.
Variable XENV : mem -> Prop.
(* [comment removed for export] *)
Variable LIB : mem -> Prop.
(* [comment removed for export] *)
Variable argvb : list (list byte).
Variable fs : Fs.
(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)


(* [comment removed for export] *)
Definition CREDIT_DRV : Z := 2^34.

(* [comment removed for export] *)
Definition sigma0_ok (Σ : rts RT) (usp : Z) : Prop :=
  rt_live RT Σ = [] /\ rt_frames RT Σ = [] /\ CREDIT_DRV <= rt_credit RT Σ /\ usp <= rt_sp0 RT Σ
  /\ 0x7fff80000000 <= rt_sp0 RT Σ    (* [comment removed for export] *).
(* [comment removed for export] *)

(* [comment removed for export] *)

(* [comment removed for export] *)


(* [comment removed for export] *)
Definition path_b : list byte := nth 1 argvb [].
(* [comment removed for export] *)

(* [comment removed for export] *)

(* [comment removed for export] *)

(* [comment removed for export] *)


(* [comment removed for export] *)
Definition EXIT (code : Z) : config -> Prop := EXITc fs code.

End Drv.
