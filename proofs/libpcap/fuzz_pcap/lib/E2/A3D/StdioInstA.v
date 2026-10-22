(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From stdpp Require Import gmap.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Sem.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require Import Tac Arr Bytes ITree Nodes Decode SysStep Ceiling.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require Import Prelim Monad Fmt StdioCore Stdio PcapPrelim PcapTypes PcapPure Pcap Prog.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Musl Require AmoStep__Musl. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Musl Require InitMem. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Musl.AmoStep__Musl.CellsExtra OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Musl.InitMem.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA Require Import ExecF ITreeA Shadow RunDraw.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA Require AsanCtrl AsanEmbed. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA Require AsanHeap__SpecA. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA.AsanCtrl OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA.AsanEmbed OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA.AsanHeap__SpecA.AsanHeap.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AImg ABase AProto RtCells. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require F_apoison__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ARepInit_kit__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AMalloc_iface AFake_iface. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require F_acallocS__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AInstanceF__A3W. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AImg OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABase OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AProto OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.RtCells OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_apoison__A3W.APoisonR_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ARepInit_kit__A3W.ARepInit_kit OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AMalloc_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFake_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_acallocS__A3W.AInstanceM OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AInstanceF__A3W.AInstanceF.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P Require MonadG GIA PcapRepA UnwKit. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P Require MonadGX__A3P. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P Require Pcap_ifaceA GioaReal. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.MonadG OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.GIA OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.PcapRepA OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.UnwKit OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.MonadGX__A3P.TracesA OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.Pcap_ifaceA OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.GioaReal.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3S Require Printf_outsA__A3S. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3S Require StdioKit__A3S. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3S Require Stdio_repA StdioLawsA StdioCompA. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3S.Printf_outsA__A3S.RtCellsS OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3S.StdioKit__A3S.StdioKit OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3S.Stdio_repA OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3S.StdioLawsA OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3S.StdioCompA.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3D Require Import Drv_ifaceA FakeInstA GStatKit StaticsA GioaInstA StdioLawsInstA.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require Import NDestr.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

Section CANSEC1. Context {rc : runConstT} {tlsI : ABase.atlsT}.
Section Inst.
  Variable CI : list (Z * Z).
  Hypothesis CIB : ci_okb CI = true.
  #[local] Notation AI := (AI_of CI CIB).
  #[local] Notation AF := (afake_inst CI CIB).

  #[using="Type"] Lemma inst_block_ahm : forall L RNG st LB m b, AHEAP AI L RNG st LB m -> In b LB -> ab_addr b + ab_size b <= AAHMv \/ AAHMv + AAHM_SZ <= ab_addr b.
  Proof. intros L RNG st LB m b AH Hb. exact (AHI_block_ahm L RNG st LB m b AH Hb). Qed.

  #[using="Type"] Lemma inst_ssc : forall L RNG st LB m, AHEAP AI L RNG st LB m -> rt_ssc m.
  Proof.
    intros L RNG st LB m AH. (pose proof (AHI_premap L RNG st LB m AH) as ndP__; nd_pre ndP__ 6%nat; intros _ _ _ _ SSC _; nd_post).
    recast SSC.
  Qed.

  (* [comment removed for export] *)
  #[using="Type"] Lemma inst_lsan : forall L RNG st LB m, AHEAP AI L RNG st LB m -> rw_cells asegs m (ATP + 16) [C4 (Z_to_bv 64 0)].
  Proof.
    intros L RNG st LB m (_ & _ & [X [AR _]] & _).
    (nd_pre AR 3%nat; intros _ RT _; nd_post).
    (nd_pre RT 28%nat; intros R1 R2 R3 R4 R5 R6 R7 R8 R9 R10 R11 R12 R13 R14 R15 R16 R17 R18 R19 R20 R21 R22 R23 R24 R25 R26 R27 R28; nd_post).
    exact R26.
  Qed.
End Inst.
End CANSEC1.

(* [comment removed for export] *)

Module TwB.
(* [comment removed for export] *)
(* [comment removed for export] *)
Import Stdlib.ZArith.ZArith Stdlib.NArith.NArith Stdlib.Lists.List Stdlib.micromega.Lia Stdlib.Bool.Bool.
Import stdpp.gmap.
Import LinuxProcessSemantics.LinuxProcessSem.BvBase LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics LinuxProcessSemantics.LinuxProcessSem.MemImageType LinuxProcessSemantics.LinuxProcessSem.State LinuxProcessSemantics.LinuxProcessSem.Run.
Import LinuxProcessSemantics.Riscv.Prelude LinuxProcessSemantics.Riscv.Sem.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Tac OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Arr OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Bytes OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.ITree OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Nodes OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Decode OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.SysStep OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Ceiling.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.Prelim OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.Monad OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.Fmt OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.StdioCore OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.Stdio OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.PcapPrelim OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.PcapTypes OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.PcapPure OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.Pcap OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.Prog.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Musl.AmoStep__Musl.CellsExtra OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Musl.InitMem.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.ExecF OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.ITreeA OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.Shadow OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.RunDraw.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA.AsanCtrl OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA.AsanEmbed OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA.AsanHeap__SpecA.AsanHeap.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AImg.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABase.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AProto.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.RtCells.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_apoison__A3W.APoisonR_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ARepInit_kit__A3W.ARepInit_kit.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AMalloc_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFake_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_acallocS__A3W.AInstanceM.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AInstanceF__A3W.AInstanceF.TwB.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.MonadG.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.GIA.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.PcapRepA.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.UnwKit.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.MonadGX__A3P.TracesA.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.Pcap_ifaceA.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.GioaReal.TwB.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3S.Printf_outsA__A3S.RtCellsS.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3S.StdioKit__A3S.StdioKit.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3S.Stdio_repA.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3S.StdioLawsA.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3S.StdioCompA.TwB.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3D.Drv_ifaceA.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3D.FakeInstA.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3D.GStatKit.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3D.StaticsA.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3D.GioaInstA.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3D.StdioLawsInstA.TwB. Local Ltac Zify.zify_pre_hook ::= OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABase.TwB.twm_hook_1. Local Ltac OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Step.addr_diff E A ::= OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKit2.TwB.twm_hook_1 E A. Local Ltac OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.ZBridge.flia ::= OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_arecyc1.TwB.twm_hook_1.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

Section CANSEC1. Context {rc : runConstT} {tlsI : A3W.ABase.TwB.atlsT}.
Section Inst.
  Variable CI : list (Z * Z).
  Hypothesis CIB : ci_okb CI = true.
  #[local] Notation AI := (AI_of CI CIB).
  #[local] Notation AF := (afake_inst CI CIB).

  #[using="Type"] Lemma inst_block_ahm : forall L RNG st LB m b, AHEAP AI L RNG st LB m -> In b LB -> ab_addr b + ab_size b <= AAHMv \/ AAHMv + AAHM_SZ <= ab_addr b.
  Proof. intros L RNG st LB m b AH Hb. exact (AHI_block_ahm L RNG st LB m b AH Hb). Qed.

  #[using="Type"] Lemma inst_ssc : forall L RNG st LB m, AHEAP AI L RNG st LB m -> rt_ssc m.
  Proof.
    intros L RNG st LB m AH. (pose proof (AHI_premap L RNG st LB m AH) as ndP__; nd_pre ndP__ 6%nat; intros _ _ _ _ SSC _; nd_post).
    recast SSC.
  Qed.

  (* [comment removed for export] *)
  #[using="Type"] Lemma inst_lsan : forall L RNG st LB m, AHEAP AI L RNG st LB m -> rw_cells asegs m (ATP + 16) [C4 (Z_to_bv 64 0)].
  Proof.
    intros L RNG st LB m (_ & _ & [X [AR _]] & _).
    (nd_pre AR 3%nat; intros _ RT _; nd_post).
    (nd_pre RT 28%nat; intros R1 R2 R3 R4 R5 R6 R7 R8 R9 R10 R11 R12 R13 R14 R15 R16 R17 R18 R19 R20 R21 R22 R23 R24 R25 R26 R27 R28; nd_post).
    exact R26.
  Qed.
End Inst.
End CANSEC1.
End TwB.
