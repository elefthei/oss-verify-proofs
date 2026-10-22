(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)

From Stdlib Require Import ZArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import
  BvBase RiscvSemantics MemImageType StackLayout State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb Require PropExec.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb Require MmapSim.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb Require CatSim.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb Require MmapSim.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb Require StepTac.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb Require MmapSim.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb Require WalkTac StoreOk.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb Require MmapSim.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb Require MemSplit.
Import OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.PropExec OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.MmapSim.CatExec OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.CatSim OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.MmapSim.SeqExec OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.StepTac OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.MmapSim.Hoare OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.WalkTac OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.StoreOk OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.MmapSim.Stre9ts OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.MemSplit.
Import ListNotations.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Open Scope bv_scope.

(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)

(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)

Local Open Scope Z_scope.

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

Lemma Z_to_bv_u_eq : forall (a : word) (z : Z), z = bv_unsigned a -> Z_to_bv 64 z = a.
Proof. intros a z ->. apply bv_eq. rewrite Z_to_bv_unsigned. apply bv_wrap_small. apply bv_unsigned_in_range. Qed.

Lemma Z_to_bv_u_eq_sym : forall (a : word) (z : Z), z = bv_unsigned a -> a = Z_to_bv 64 z.
Proof. intros a z H. symmetry. apply Z_to_bv_u_eq. exact H. Qed.
