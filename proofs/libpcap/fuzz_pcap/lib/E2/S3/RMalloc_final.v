(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool Permutation.
From stdpp Require Import gmap.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require Import Tac Image ZBridge SysStep ITree Nodes Decode Arr.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA Require Import SFModel.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require Import ImgSrc3.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require STree Malloc MallocCtrl Monad. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require AllocBridge__Spec. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require MI_Realloc2__Spec. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require Prog HeapFull. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.STree OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.Malloc OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.MallocCtrl OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.Monad OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.AllocBridge__Spec.AllocBridge OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.MI_Realloc2__Spec.ProgFull OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.Prog OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.HeapFull.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA Require TlsBase MallocHINV. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA Require MallocFacts_A__MA. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.TlsBase OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.MallocHINV OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.MallocFacts_A__MA.Malloc_iface.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3 Require RMallocRep__S3. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3 Require RF_malloc_entry__S3. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3 Require RMalloc_ifaceP__S3. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3 Require RF_free__S3. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RMallocRep__S3.RMallocRep OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RMallocRep__S3.RMallocTree OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RF_malloc_entry__S3.RMalloc_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RF_malloc_entry__S3.RMalloc_ifaceB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RMalloc_ifaceP__S3.RMalloc_ifaceP OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RF_malloc_entry__S3.RMalloc_ifaceT OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RF_malloc_entry__S3.RMalloc_ifaceTB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RF_free__S3.RF_malloc_spec OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RF_free__S3.RF_free_spec OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RF_free__S3.RF_calloc_spec.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3 Require RF_free__S3.
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
Section Generic.
Context {PState : Type} {AS : AllocSt PState}.

Theorem rmalloc_spec_u : rmalloc_stmt_u (PState:=PState) (AS:=AS).
Proof using Type. pin_using tt. ceil_facts. msec_facts. apply rmalloc_stmt_of_class. intros TB. apply rmalloc_spec. Qed.

Theorem rfree_spec_u : rfree_stmt_u (PState:=PState) (AS:=AS).
Proof using Type. pin_using tt. ceil_facts. msec_facts. apply rfree_stmt_of_class. intros TB. apply rfree_spec_proof. Qed.

Theorem rcalloc_spec_u : rcalloc_stmt_u (PState:=PState) (AS:=AS).
Proof using Type. pin_using tt. ceil_facts. msec_facts. apply rcalloc_stmt_of_class. intros TB. apply rcalloc_spec. Qed.

Theorem rrealloc_spec_u : rrealloc_stmt_u (PState:=PState) (AS:=AS).
Proof using Type. pin_using tt. ceil_facts. msec_facts. apply rrealloc_stmt_of_class. intros TB. apply OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RF_free__S3.RF_realloc_spec.rrealloc_spec. Qed.

Theorem RHEAP_frame : forall TB : TlsBase, RHEAP_frame_stmt (PState:=PState) (AS:=AS) (TB:=TB).
Proof using Type. pin_using tt. ceil_facts. msec_facts. intros TB. apply RHEAP_frame_proof. Qed.
Theorem RHEAP_init : forall TB : TlsBase, RHEAP_init_stmt (PState:=PState) (AS:=AS) (TB:=TB).
Proof using Type. pin_using tt. ceil_facts. msec_facts. intros TB. apply RHEAP_init_proof. Qed.
Theorem RHEAP_block_range : forall TB : TlsBase, RHEAP_block_range_stmt (PState:=PState) (AS:=AS) (TB:=TB).
Proof using Type. pin_using tt. ceil_facts. msec_facts. intros TB. apply RHEAP_block_range_proof. Qed.
Theorem RHEAP_blocks_disjoint : forall TB : TlsBase, RHEAP_blocks_disjoint_stmt (PState:=PState) (AS:=AS) (TB:=TB).
Proof using Type. pin_using tt. ceil_facts. msec_facts. intros TB. apply RHEAP_blocks_disjoint_proof. Qed.
Theorem RHEAP_blocks_nodup : forall TB : TlsBase, RHEAP_blocks_nodup_stmt (PState:=PState) (AS:=AS) (TB:=TB).
Proof using Type. pin_using tt. ceil_facts. msec_facts. intros TB. apply RHEAP_blocks_nodup_proof. Qed.

End Generic.

(* [comment removed for export] *)
Theorem hmalloc_spec : hmalloc_stmt.
Proof using Type. pin_using tt. ceil_facts. msec_facts. apply hmalloc_of_rmalloc. apply rmalloc_spec_u. Qed.

Theorem HEAPT_addr : forall h utp LB m q A n, HEAPT h utp LB m -> In (q, A, n) LB -> hf_addr h q = A.
Proof using Type. pin_using tt. ceil_facts. msec_facts. exact (HEAPT_addr_of RHEAP_block_range). Qed.

Theorem HEAPT_range : forall h utp LB m q A n, HEAPT h utp LB m -> In (q, A, n) LB -> rblock_rangeu utp A n.
Proof using Type. pin_using tt. ceil_facts. msec_facts. exact (HEAPT_range_of RHEAP_block_range). Qed.

Theorem HEAPT_disjoint : forall h utp LB m t1 t2, HEAPT h utp LB m -> In t1 LB -> In t2 LB -> tb_tok t1 <> tb_tok t2 ->
  tb_addr t1 + tb_size t1 <= tb_addr t2 \/ tb_addr t2 + tb_size t2 <= tb_addr t1.
Proof using Type. pin_using tt. ceil_facts. msec_facts. exact (HEAPT_disjoint_of RHEAP_blocks_disjoint RHEAP_blocks_nodup). Qed.

Theorem HEAPT_frame : forall h utp LB m m' W,
  HEAPT h utp LB m -> munch W m m' -> wmono ssegs m m' -> Forall (client_write_okT utp LB) W -> HEAPT h utp LB m'.
Proof using Type. pin_using tt. ceil_facts. msec_facts. exact (HEAPT_frame_of RHEAP_frame). Qed.

Theorem HEAPT_init : forall utp m, tls_ok (utp - 200) -> rheap_init_mem m ->
  HEAPT (fheap_init msecret (reservedZ ssegs ++ [(utp - 200, 4096)])) utp [] m.
Proof using Type. pin_using tt. ceil_facts. msec_facts. intros utp m H IM. exact (HEAPT_init_of RHEAP_init utp m H IM). Qed.

Theorem hfree_spec : hfree_stmt.
Proof using Type. pin_using tt. ceil_facts. msec_facts. apply hfree_of_rfree; [apply rfree_spec_u | apply RHEAP_blocks_nodup]. Qed.

Theorem hcalloc_spec : hcalloc_stmt.
Proof using Type. pin_using tt. ceil_facts. msec_facts. apply hcalloc_of_rcalloc. apply rcalloc_spec_u. Qed.

Theorem hrealloc_spec : hrealloc_stmt.
Proof using Type. pin_using tt. ceil_facts. msec_facts. apply hrealloc_of_rrealloc; [apply rrealloc_spec_u | apply RHEAP_blocks_nodup]. Qed.

(* [comment removed for export] *)

End WithCeil.

(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require ImgTgtUbsan.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA Require TlsBaseU.
Module TwB.
(* [comment removed for export] *)
(* [comment removed for export] *)
Import Stdlib.ZArith.ZArith Stdlib.NArith.NArith Stdlib.Lists.List Stdlib.micromega.Lia Stdlib.Bool.Bool Stdlib.Sorting.Permutation.
Import stdpp.gmap.
Import LinuxProcessSemantics.LinuxProcessSem.BvBase LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics LinuxProcessSemantics.LinuxProcessSem.MemImageType LinuxProcessSemantics.LinuxProcessSem.State LinuxProcessSemantics.LinuxProcessSem.Run.
Import LinuxProcessSemantics.Riscv.Prelude LinuxProcessSemantics.Riscv.Instr LinuxProcessSemantics.Riscv.Decode LinuxProcessSemantics.Riscv.DecodeC LinuxProcessSemantics.Riscv.Sem LinuxProcessSemantics.Riscv.Fpu.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Tac OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Image OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.ZBridge OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.SysStep OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.ITree OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Nodes OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Decode OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Arr.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.SFModel.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.ImgTgtUbsan.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.STree OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.Malloc OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.MallocCtrl OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.Monad OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.AllocBridge__Spec.AllocBridge OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.MI_Realloc2__Spec.ProgFull OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.Prog OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.HeapFull.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.TlsBaseU OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.MallocHINV OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.MA.MallocFacts_A__MA.Malloc_iface.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RMallocRep__S3.RMallocRep.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RMallocRep__S3.RMallocTree.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RF_malloc_entry__S3.RMalloc_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RF_malloc_entry__S3.RMalloc_ifaceB.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RMalloc_ifaceP__S3.RMalloc_ifaceP.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RF_malloc_entry__S3.RMalloc_ifaceT.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RF_malloc_entry__S3.RMalloc_ifaceTB.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RF_free__S3.RF_malloc_spec.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RF_free__S3.RF_free_spec.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RF_free__S3.RF_calloc_spec.TwB.
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
Section Generic.
Context {PState : Type} {AS : AllocSt PState}.

Theorem rmalloc_spec_u : rmalloc_stmt_u (PState:=PState) (AS:=AS).
Proof using Type. pin_using tt. ceil_facts. msec_facts. apply rmalloc_stmt_of_class. intros TB. apply rmalloc_spec. Qed.

Theorem rfree_spec_u : rfree_stmt_u (PState:=PState) (AS:=AS).
Proof using Type. pin_using tt. ceil_facts. msec_facts. apply rfree_stmt_of_class. intros TB. apply rfree_spec_proof. Qed.

Theorem rcalloc_spec_u : rcalloc_stmt_u (PState:=PState) (AS:=AS).
Proof using Type. pin_using tt. ceil_facts. msec_facts. apply rcalloc_stmt_of_class. intros TB. apply rcalloc_spec. Qed.

Theorem rrealloc_spec_u : rrealloc_stmt_u (PState:=PState) (AS:=AS).
Proof using Type. pin_using tt. ceil_facts. msec_facts. apply rrealloc_stmt_of_class. intros TB. apply OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.RF_free__S3.RF_realloc_spec.TwB.rrealloc_spec. Qed.

Theorem RHEAP_frame : forall TB : TlsBase, RHEAP_frame_stmt (PState:=PState) (AS:=AS) (TB:=TB).
Proof using Type. pin_using tt. ceil_facts. msec_facts. intros TB. apply RHEAP_frame_proof. Qed.
Theorem RHEAP_init : forall TB : TlsBase, RHEAP_init_stmt (PState:=PState) (AS:=AS) (TB:=TB).
Proof using Type. pin_using tt. ceil_facts. msec_facts. intros TB. apply RHEAP_init_proof. Qed.
Theorem RHEAP_block_range : forall TB : TlsBase, RHEAP_block_range_stmt (PState:=PState) (AS:=AS) (TB:=TB).
Proof using Type. pin_using tt. ceil_facts. msec_facts. intros TB. apply RHEAP_block_range_proof. Qed.
Theorem RHEAP_blocks_disjoint : forall TB : TlsBase, RHEAP_blocks_disjoint_stmt (PState:=PState) (AS:=AS) (TB:=TB).
Proof using Type. pin_using tt. ceil_facts. msec_facts. intros TB. apply RHEAP_blocks_disjoint_proof. Qed.
Theorem RHEAP_blocks_nodup : forall TB : TlsBase, RHEAP_blocks_nodup_stmt (PState:=PState) (AS:=AS) (TB:=TB).
Proof using Type. pin_using tt. ceil_facts. msec_facts. intros TB. apply RHEAP_blocks_nodup_proof. Qed.

End Generic.

(* [comment removed for export] *)
Theorem hmalloc_spec : hmalloc_stmt.
Proof using Type. pin_using tt. ceil_facts. msec_facts. apply hmalloc_of_rmalloc. apply rmalloc_spec_u. Qed.

Theorem HEAPT_addr : forall h utp LB m q A n, HEAPT h utp LB m -> In (q, A, n) LB -> hf_addr h q = A.
Proof using Type. pin_using tt. ceil_facts. msec_facts. exact (HEAPT_addr_of RHEAP_block_range). Qed.

Theorem HEAPT_range : forall h utp LB m q A n, HEAPT h utp LB m -> In (q, A, n) LB -> rblock_rangeu utp A n.
Proof using Type. pin_using tt. ceil_facts. msec_facts. exact (HEAPT_range_of RHEAP_block_range). Qed.

Theorem HEAPT_disjoint : forall h utp LB m t1 t2, HEAPT h utp LB m -> In t1 LB -> In t2 LB -> tb_tok t1 <> tb_tok t2 ->
  tb_addr t1 + tb_size t1 <= tb_addr t2 \/ tb_addr t2 + tb_size t2 <= tb_addr t1.
Proof using Type. pin_using tt. ceil_facts. msec_facts. exact (HEAPT_disjoint_of RHEAP_blocks_disjoint RHEAP_blocks_nodup). Qed.

Theorem HEAPT_frame : forall h utp LB m m' W,
  HEAPT h utp LB m -> munch W m m' -> wmono usegs m m' -> Forall (client_write_okT utp LB) W -> HEAPT h utp LB m'.
Proof using Type. pin_using tt. ceil_facts. msec_facts. exact (HEAPT_frame_of RHEAP_frame). Qed.

Theorem HEAPT_init : forall utp m, tls_ok (utp - 200) -> rheap_init_mem m ->
  HEAPT (fheap_init msecret (reservedZ usegs ++ [(utp - 200, 4096)])) utp [] m.
Proof using Type. pin_using tt. ceil_facts. msec_facts. intros utp m H IM. exact (HEAPT_init_of RHEAP_init utp m H IM). Qed.

Theorem hfree_spec : hfree_stmt.
Proof using Type. pin_using tt. ceil_facts. msec_facts. apply hfree_of_rfree; [apply rfree_spec_u | apply RHEAP_blocks_nodup]. Qed.

Theorem hcalloc_spec : hcalloc_stmt.
Proof using Type. pin_using tt. ceil_facts. msec_facts. apply hcalloc_of_rcalloc. apply rcalloc_spec_u. Qed.

Theorem hrealloc_spec : hrealloc_stmt.
Proof using Type. pin_using tt. ceil_facts. msec_facts. apply hrealloc_of_rrealloc; [apply rrealloc_spec_u | apply RHEAP_blocks_nodup]. Qed.

(* [comment removed for export] *)

End WithCeil.
End TwB.
