(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType StackLayout Fs State Monad Specs Run.
From LinuxProcessSemantics.EquivalenceDefinition Require Import Equivalence MustExit FinInput Classifier.
From OssFuzzTheorems.openssl.hashtable.images Require Import Plain.
From OssFuzzTheorems.Proofs.openssl.hashtable.lib Require Import ShapeAlg ShapeEF Spec ClaVerdict.
From OssFuzzTheorems.Proofs.openssl.hashtable.lib Require ShapeCfg ConeCfg.   (* [comment removed for export] *)
From OssFuzzTheorems.Proofs.openssl.hashtable.lib Require H0Lim.   (* [comment removed for export] *)
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.

Abbreviation PSEGS := Plain.M.loaded_segments.
Abbreviation PPC := Plain.M.init_pc.
Abbreviation PPH := Plain.M.phdrs.
Definition P0 : Image := mkImage PSEGS PPC PPH.

(* [comment removed for export] *)
(* [comment removed for export] *)
Definition h0_acc_stmt : Prop :=
  forall lim, (H0Lim.LIM <= lim)%Z ->
  forall sp brk mbase rnd (inp : ProcInput),
    valid_sp sp -> valid_brk PSEGS brk -> valid_mmap_base mbase ->
    entry_stack_fits sp (in_argv inp) (in_envp inp) ->
    valid_input inp ->
    drv_verdict (in_argv inp) (in_fs inp) = true ->
    ShapeCfg.realizes_cfg ConeCfg.CFG PSEGS (init_config PSEGS PPC PPH sp brk mbase rnd lim inp) (spec (in_argv inp) (in_fs inp)).

(* [comment removed for export] *)