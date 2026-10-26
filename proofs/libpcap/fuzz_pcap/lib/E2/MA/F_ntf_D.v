(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require AllocBridge__Spec. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.AllocBridge__Spec.AllocBridge.
From Stdlib Require Import ZArith NArith List Lia Bool.
From stdpp Require Import gmap.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require Import Tac Image ZBridge SysStep Arr.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA Require Import SFModel.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA Require MallocRep. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA Require F_malloc_free__MA. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA Require MallocTree. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.MallocRep OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.F_malloc_free__MA.F_malloc_free OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.MallocTree.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require Import STree Malloc MallocCtrl.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA Require MallocBlocks__MA. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.MallocBlocks__MA.MallocKit_B OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.MallocBlocks__MA.MallocModel_B OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.MallocBlocks__MA.F_ntf_A OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.MallocBlocks__MA.F_ntf_B OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.MallocBlocks__MA.F_ntf_C.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA Require MallocBlocks__MA. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.MallocBlocks__MA.MallocKit_B3.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope bv_scope.
Open Scope Z_scope.

(* [comment removed for export] *)
