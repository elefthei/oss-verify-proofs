(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require AllocBridge__Spec. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.AllocBridge__Spec.AllocBridge.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA Require Import TlsBase.
From Stdlib Require Import ZArith NArith List Lia Bool.
From stdpp Require Import gmap.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require Import Tac Image ZBridge SysStep  ITree Nodes Decode Arr.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA Require Import SFModel.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require Import ImgSrc3.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA Require MallocTree. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA Require MallocFacts_A__MA. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA Require MallocHINV Malloc_fp. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA Require MallocFacts_Bpres__MA. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA Require ASlot_M0. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA Require MallocBlocks__MA. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA Require F_am_F__MA. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.MallocTree OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.MallocFacts_A__MA.MallocFacts_A OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.MallocHINV OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.Malloc_fp OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.MallocFacts_A__MA.MallocFacts_AS OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.MallocFacts_Bpres__MA.ASlot_I OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.ASlot_M0 OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.MallocBlocks__MA.MallocFacts_AM OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.F_am_F__MA.MallocFacts_AMP.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require STree Malloc MallocCtrl Monad. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require AllocBridge__Spec. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require MI_Realloc2__Spec. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.STree OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.Malloc OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.MallocCtrl OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.Monad OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.AllocBridge__Spec.AllocBridge OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.MI_Realloc2__Spec.ProgFull.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3 Require RMallocRep__S3. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3 Require RF_malloc_entry__S3. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3 Require RF_am_P__S3. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3 Require RF_alloc_meta. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3 Require RASlot_M1__S3. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RMallocRep__S3.RMallocRep OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RMallocRep__S3.RMallocTree OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RF_malloc_entry__S3.RMalloc_fp OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RF_malloc_entry__S3.RAllocSlot_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RF_malloc_entry__S3.RASlot_I OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RF_am_P__S3.RF_am_P OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RF_alloc_meta OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RASlot_M1__S3.RASlot_M6.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA Require MallocFacts_inv__MA.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA Require Import MSecret.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require Import LiaPin.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
(* [comment removed for export] *)
Local Ltac lia ::= pinned_lia.
Import ListNotations.
Open Scope Z_scope.

(* [comment removed for export] *)
Section WithCeil.
Context {CEILV : CEIL} {MSECV : MSEC}.
Section PORT.
Context {PState : Type} {AS : AllocSt PState} {TB : TlsBase}.
Let TLSFACTS := the_tb_facts (TB:=TB).

Lemma ras_pre2_intro : forall st LB t sc n, RAREACH st LB -> RMFACTS st LB -> (s_tick st < t)%N -> 0 <= sc < 48 -> 0 <= n < 2^32 ->
  n + 4 <= 16 * size_class sc -> ras_pre2 st (set_tick t st) sc n FUEL.
Proof using Type. pin_using tt. ceil_facts. msec_facts.
  intros st LB t sc n AR MF TT SC N FIT. split; [| split; [| split; [| repeat split; lia]]].
  - exists LB. split; [exact AR| apply ist_top; exact TT].
  - apply ER_refl_tick.
  - apply ALLC_tick; [| exact TT]. exact (mf_cell_ticks _ _ MF).
Qed.

Theorem ralloc_slot_spec : ralloc_slot_stmt ras_pre2 as_inv2.
Proof using Type. pin_using tt. ceil_facts. msec_facts.
  unfold ralloc_slot_stmt. intros fuel.
  exact (ralloc_slot_ok ram_pre ralloc_meta_spec OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.MallocFacts_inv__MA.MallocFacts_inv4.ist_ampre_proof fuel).
Qed.

End PORT.

End WithCeil.

(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require ImgTgtUbsan.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA Require TlsBaseU.
Module TwB.
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.AllocBridge__Spec.AllocBridge.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.TlsBaseU.
Import Stdlib.ZArith.ZArith Stdlib.NArith.NArith Stdlib.Lists.List Stdlib.micromega.Lia Stdlib.Bool.Bool.
Import stdpp.gmap.
Import LinuxProcessSemantics.LinuxProcessSem.BvBase LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics LinuxProcessSemantics.LinuxProcessSem.MemImageType LinuxProcessSemantics.LinuxProcessSem.State LinuxProcessSemantics.LinuxProcessSem.Run.
Import LinuxProcessSemantics.Riscv.Prelude LinuxProcessSemantics.Riscv.Instr LinuxProcessSemantics.Riscv.Decode LinuxProcessSemantics.Riscv.DecodeC LinuxProcessSemantics.Riscv.Sem LinuxProcessSemantics.Riscv.Fpu.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Tac OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Image OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.ZBridge OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.SysStep OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.ITree OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Nodes OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Decode OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Arr.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.SFModel.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.ImgTgtUbsan.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.MallocTree OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.MallocFacts_A__MA.MallocFacts_A OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.MallocHINV OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.Malloc_fp OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.MallocFacts_A__MA.MallocFacts_AS OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.MallocFacts_Bpres__MA.ASlot_I OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.ASlot_M0 OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.MallocBlocks__MA.MallocFacts_AM OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.F_am_F__MA.MallocFacts_AMP.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.STree OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.Malloc OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.MallocCtrl OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.Monad OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.AllocBridge__Spec.AllocBridge OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.MI_Realloc2__Spec.ProgFull.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RMallocRep__S3.RMallocRep.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RMallocRep__S3.RMallocTree.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RF_malloc_entry__S3.RMalloc_fp.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RF_malloc_entry__S3.RAllocSlot_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RF_malloc_entry__S3.RASlot_I.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RF_am_P__S3.RF_am_P.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RF_alloc_meta.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RASlot_M1__S3.RASlot_M6.TwB.
(* [comment removed for export] *)
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.MSecret.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.LiaPin.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
(* [comment removed for export] *)
Local Ltac lia ::= pinned_lia.
Import ListNotations.
Open Scope Z_scope.

(* [comment removed for export] *)
Section WithCeil.
Context {CEILV : CEIL} {MSECV : MSEC}.
Section PORT.
Context {PState : Type} {AS : AllocSt PState} {TB : TlsBase}.
Let TLSFACTS := the_tb_facts (TB:=TB).

Lemma ras_pre2_intro : forall st LB t sc n, RAREACH st LB -> RMFACTS st LB -> (s_tick st < t)%N -> 0 <= sc < 48 -> 0 <= n < 2^32 ->
  n + 4 <= 16 * size_class sc -> ras_pre2 st (set_tick t st) sc n FUEL.
Proof using Type. pin_using tt. ceil_facts. msec_facts.
  intros st LB t sc n AR MF TT SC N FIT. split; [| split; [| split; [| repeat split; lia]]].
  - exists LB. split; [exact AR| apply ist_top; exact TT].
  - apply ER_refl_tick.
  - apply ALLC_tick; [| exact TT]. exact (mf_cell_ticks _ _ MF).
Qed.

Theorem ralloc_slot_spec : ralloc_slot_stmt ras_pre2 as_inv2.
Proof using Type. pin_using tt. ceil_facts. msec_facts.
  unfold ralloc_slot_stmt. intros fuel.
  exact (ralloc_slot_ok ram_pre ralloc_meta_spec OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.MallocFacts_inv__MA.MallocFacts_inv4.ist_ampre_proof fuel).
Qed.

End PORT.

End WithCeil.
End TwB.
