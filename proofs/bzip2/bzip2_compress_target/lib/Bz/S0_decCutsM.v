(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib Require Import PropExec.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Lib Require Import Tac WalkLib SegsS0.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz Require BzDefs BzModel BzTac BzTac2 BzInv BzTables BzContracts BzContracts0 DecCut DecAux.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz Require BzTac.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz Require DecAuxM S0_dec_U13.
Import OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz.BzDefs OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz.BzModel OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz.BzTac OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz.BzTac2 OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz.BzInv OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz.BzTables OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz.BzContracts OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz.BzContracts0 OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz.DecCut OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz.DecAux OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz.BzTac.DecAuxB OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz.DecAuxM OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz.S0_dec_U13.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz Require Export S0_decCuts.
From Stdlib Require Lia. Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations. Open Scope bv_scope.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib Require Import ACeil.
Local Ltac Z.euclidean_division_equations_cleanup ::= idtac.
Section ACeilS1. Context {ACEIL__ : ACeil}.


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


End ACeilS1.
