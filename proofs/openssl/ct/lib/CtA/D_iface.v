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
From OssFuzzTheorems.Proofs.openssl.ct.lib.A Require Import Shadow.
From OssFuzzTheorems.Proofs.openssl.ct.lib.CtA Require Import Layout RT_iface.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

Definition e_open : Z := 0x51fea0.
Definition e_close : Z := 0x5322b4.
Definition e_exit : Z := 0x51fc2c.
(* [comment removed for export] *)
Definition SSP_GUARD : Z := 0xbc9430.
Definition GOT_SSP : Z := 0x5ab1e0.

Section DIface.
Variable RT : rt_sig.
(* [comment removed for export] *)
Variable XENV : mem -> Prop.
Variable OUT_rep : stdout_st -> mem -> Prop.
Variable ERR_rep : mem -> Prop.
(* [comment removed for export] *)
Variable LIBX : mem -> Prop.
(* [comment removed for export] *)

(* [comment removed for export] *)

(* [comment removed for export] *)

(* [comment removed for export] *)

(* [comment removed for export] *)

(* [comment removed for export] *)


(* [comment removed for export] *)
Definition EXITc (fs0 : Fs) (code : Z) (c : config) : Prop :=
  exists A Pm PM, AST SEGTOP_A A Pm PM c
    /\ (forall ms, Pm ms -> (ms_svc_pending ms = Some (Z_to_bv 64 93) \/ ms_svc_pending ms = Some (Z_to_bv 64 94))
                            /\ areg ms 10 = Z_to_bv 64 code)
    /\ (forall mo, PM mo -> m_fs mo = fs0).
(* [comment removed for export] *)
(* [comment removed for export] *)


End DIface.
