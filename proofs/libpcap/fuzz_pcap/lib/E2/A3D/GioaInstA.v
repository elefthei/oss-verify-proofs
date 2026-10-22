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
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA Require Import ExecF ITreeA Shadow RunDraw.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA Require AsanCtrl AsanEmbed. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA Require AsanHeap__SpecA. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA.AsanCtrl OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA.AsanEmbed OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA.AsanHeap__SpecA.AsanHeap.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AImg ABase AProto AMalloc_iface AFake_iface. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require F_acalloc_iseg__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ARealloc_iface__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require F_acallocS__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AInstanceF__A3W. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AImg OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABase OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AProto OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AMalloc_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFake_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_acalloc_iseg__A3W.ACalloc_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ARealloc_iface__A3W.ARealloc_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_acalloc_iseg__A3W.F_acalloc_iseg OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_acallocS__A3W.AInstanceM OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AInstanceF__A3W.AInstanceF OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AInstanceF__A3W.AInstanceC.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P Require MonadG GIA PcapRepA UnwKit. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P Require MonadGX__A3P. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P Require Pcap_ifaceA GioaReal GioaAlloc. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.MonadG OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.GIA OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.PcapRepA OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.UnwKit OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.MonadGX__A3P.TracesA OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.Pcap_ifaceA OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.GioaReal OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.GioaAlloc.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3D Require Import Drv_ifaceA FakeInstA GStatKit DrvStatA DrvLawsA StaticsA TlsObjA.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require Import NDestr.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

Section CANSEC1. Context {rc : runConstT} {tlsI : ABase.atlsT}.
Section Inst.
  Variable CI : list (Z * Z).
  Hypothesis CIB : ci_okb CI = true.
  Variable cs : list gcomp.
  #[local] Notation AI := (AI_of CI CIB).
  #[local] Notation AF := (afake_inst CI CIB).
  #[local] Notation GSTAT := (GSTAT_of cs).
  #[local] Notation GIOA := (GIOA_real AI GSTAT).
  #[local] Notation PS := (PState aheap aptr).
  Hypothesis CSOK : Forall (gcomp_ok AI) cs.

  (* [comment removed for export] *)
  #[using="Type"] Lemma inst_block_tls : forall L RNG st LB m b, AHEAP AI L RNG st LB m -> In b LB ->
    ab_addr b + ab_size b <= ATP + -200 \/ ATP + -200 + 504 <= ab_addr b.
  Proof. intros L RNG st LB m b AH Hb. destruct (AHI_block_tls L RNG st LB m b AH Hb) as [D|D]; [left| right]; unfold ATP; lia. Qed.

  Definition inst_GS_client_frame := GS_client_frame AI AF inst_block_tls cs CSOK.
  Definition inst_GS_pres := GS_pres AI cs CSOK.

  (* [comment removed for export] *)
  Hypothesis IN_GLOBALS : In (globals_comp) cs.
  Hypothesis IN_STDINP : In (stdinp_comp) cs.
  Hypothesis IN_STACKSH : In (stacksh_comp) cs.
  Hypothesis IN_TLSOBJ : In tlsobj_comp cs.

  #[using="CSOK IN_GLOBALS IN_STDINP IN_STACKSH IN_TLSOBJ"] Theorem GL_inst : gia_laws (asan_fo site_frameA) GIOA (fflagA_real).
  Proof.
    exact (gioa_real_laws AI AF GSTAT inst_GS_client_frame (GS_globals cs IN_GLOBALS) (GS_tls cs IN_TLSOBJ) (GS_stdin_unp cs IN_STDINP) (GS_stack cs IN_STACKSH) inst_block_tls).
  Qed.

  (* [comment removed for export] *)
  Variables (USP : Z) (SB : list byte).
  Hypothesis USP_lo : ATOP + 64 <= USP.
  Hypothesis SB_16 : 16 <= Z.of_nat (length SB).
  Hypothesis USP_hi : USP + Z.of_nat (length SB) <= 2^47.
  Hypothesis CI_RS : exists iv, In iv CI /\ fst iv <= READ_STAGE /\ READ_STAGE + 65537 <= snd iv.
  Hypothesis IN_ARGS : In (args_comp USP (Z.of_nat (length SB) - 16)) cs.
  Hypothesis IN_UNP : In unp_comp cs.

  #[using="CSOK USP_lo SB_16 USP_hi CI_RS IN_ARGS IN_UNP"] Theorem GD_inst : gia_drv_laws GIOA USP SB.
  Proof. exact (gia_drv_laws_real AI AF inst_block_tls USP SB USP_lo SB_16 USP_hi cs CSOK CI_RS IN_ARGS IN_UNP). Qed.

  (* [comment removed for export] *)
  Variable TP : tparams.
  Hypothesis HCPC : tp_cpc TP = ACALLOC_PC.
  Hypothesis HRPC : tp_rpc TP = AREALLOC_PC.

  Definition malloc_inst : malloc_stmt_o asan_ops GIOA := malloc_o_real AI AF GSTAT inst_GS_pres.
  Definition free_inst : free_stmt_o asan_ops GIOA := free_o_real AI AF GSTAT inst_GS_pres.
  Definition free_null_inst : free_null_stmt_o GIOA := free_null_o_real AI AF GSTAT inst_GS_pres.
  Definition calloc_inst : calloc_stmt_o asan_ops GIOA TP := calloc_o_real AI AF GSTAT inst_GS_pres (AHI_calloc CI CIB) TP HCPC.
  Definition realloc_inst : realloc_stmt_o asan_ops GIOA TP := realloc_o_real AI AF GSTAT inst_GS_pres (AHI_realloc' CI CIB) TP HRPC.

  (* [comment removed for export] *)
  #[using="CSOK"] Theorem malloc_d_inst : malloc_stmt_d asan_ops GIOA.
  Proof.
    red. intros until n. intros PRE -> Hn UNW.
    (nd_pre PRE 13%nat; intros G ST LO BU [SPT T47] MI TPE ALN RSTK RSTK2 RIMG RISH RTLS; nd_post).
    eapply (malloc_core AI AF GSTAT inst_GS_pres); eassumption.
  Qed.
  #[using="CSOK"] Theorem free_d_inst : free_stmt_d asan_ops GIOA.
  Proof.
    red. intros until lo. intros PRE -> UNW.
    (nd_pre PRE 13%nat; intros G ST LO BU [SPT T47] MI TPE ALN RSTK RSTK2 RIMG RISH RTLS; nd_post).
    eapply (free_core AI AF GSTAT inst_GS_pres); eassumption.
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
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.ExecF OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.ITreeA OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.Shadow OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.RunDraw.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA.AsanCtrl OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA.AsanEmbed OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA.AsanHeap__SpecA.AsanHeap.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AImg.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABase.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AProto.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AMalloc_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFake_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_acalloc_iseg__A3W.ACalloc_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ARealloc_iface__A3W.ARealloc_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_acalloc_iseg__A3W.F_acalloc_iseg.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_acallocS__A3W.AInstanceM.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AInstanceF__A3W.AInstanceF.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AInstanceF__A3W.AInstanceC.TwB.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.MonadG.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.GIA.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.PcapRepA.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.UnwKit.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.MonadGX__A3P.TracesA.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.Pcap_ifaceA.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.GioaReal.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.GioaAlloc.TwB.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3D.Drv_ifaceA.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3D.FakeInstA.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3D.GStatKit.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3D.DrvStatA.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3D.DrvLawsA.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3D.StaticsA.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3D.TlsObjA.TwB. Local Ltac Zify.zify_pre_hook ::= OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABase.TwB.twm_hook_1. Local Ltac OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Step.addr_diff E A ::= OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKit2.TwB.twm_hook_1 E A. Local Ltac OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.ZBridge.flia ::= OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_arecyc1.TwB.twm_hook_1.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

Section CANSEC1. Context {rc : runConstT} {tlsI : A3W.ABase.TwB.atlsT}.
Section Inst.
  Variable CI : list (Z * Z).
  Hypothesis CIB : ci_okb CI = true.
  Variable cs : list gcomp.
  #[local] Notation AI := (AI_of CI CIB).
  #[local] Notation AF := (afake_inst CI CIB).
  #[local] Notation GSTAT := (GSTAT_of cs).
  #[local] Notation GIOA := (GIOA_real AI GSTAT).
  #[local] Notation PS := (PState aheap aptr).
  Hypothesis CSOK : Forall (gcomp_ok AI) cs.

  (* [comment removed for export] *)
  #[using="Type"] Lemma inst_block_tls : forall L RNG st LB m b, AHEAP AI L RNG st LB m -> In b LB ->
    ab_addr b + ab_size b <= ATP + -200 \/ ATP + -200 + 504 <= ab_addr b.
  Proof. intros L RNG st LB m b AH Hb. destruct (AHI_block_tls L RNG st LB m b AH Hb) as [D|D]; [left| right]; unfold ATP; lia. Qed.

  Definition inst_GS_client_frame := GS_client_frame AI AF inst_block_tls cs CSOK.
  Definition inst_GS_pres := GS_pres AI cs CSOK.

  (* [comment removed for export] *)
  Hypothesis IN_GLOBALS : In (globals_comp) cs.
  Hypothesis IN_STDINP : In (stdinp_comp) cs.
  Hypothesis IN_STACKSH : In (stacksh_comp) cs.
  Hypothesis IN_TLSOBJ : In tlsobj_comp cs.

  #[using="CSOK IN_GLOBALS IN_STDINP IN_STACKSH IN_TLSOBJ"] Theorem GL_inst : gia_laws (asan_fo site_frameA) GIOA (fflagA_real).
  Proof.
    exact (gioa_real_laws AI AF GSTAT inst_GS_client_frame (GS_globals cs IN_GLOBALS) (GS_tls cs IN_TLSOBJ) (GS_stdin_unp cs IN_STDINP) (GS_stack cs IN_STACKSH) inst_block_tls).
  Qed.

  (* [comment removed for export] *)
  Variables (USP : Z) (SB : list byte).
  Hypothesis USP_lo : ATOP + 64 <= USP.
  Hypothesis SB_16 : 16 <= Z.of_nat (length SB).
  Hypothesis USP_hi : USP + Z.of_nat (length SB) <= 2^47.
  Hypothesis CI_RS : exists iv, In iv CI /\ fst iv <= READ_STAGE /\ READ_STAGE + 65537 <= snd iv.
  Hypothesis IN_ARGS : In (args_comp USP (Z.of_nat (length SB) - 16)) cs.
  Hypothesis IN_UNP : In unp_comp cs.

  #[using="CSOK USP_lo SB_16 USP_hi CI_RS IN_ARGS IN_UNP"] Theorem GD_inst : gia_drv_laws GIOA USP SB.
  Proof. exact (gia_drv_laws_real AI AF inst_block_tls USP SB USP_lo SB_16 USP_hi cs CSOK CI_RS IN_ARGS IN_UNP). Qed.

  (* [comment removed for export] *)
  Variable TP : tparams.
  Hypothesis HCPC : tp_cpc TP = ACALLOC_PC.
  Hypothesis HRPC : tp_rpc TP = AREALLOC_PC.

  Definition malloc_inst : malloc_stmt_o asan_ops GIOA := malloc_o_real AI AF GSTAT inst_GS_pres.
  Definition free_inst : free_stmt_o asan_ops GIOA := free_o_real AI AF GSTAT inst_GS_pres.
  Definition free_null_inst : free_null_stmt_o GIOA := free_null_o_real AI AF GSTAT inst_GS_pres.
  Definition calloc_inst : calloc_stmt_o asan_ops GIOA TP := calloc_o_real AI AF GSTAT inst_GS_pres (AHI_calloc CI CIB) TP HCPC.
  Definition realloc_inst : realloc_stmt_o asan_ops GIOA TP := realloc_o_real AI AF GSTAT inst_GS_pres (AHI_realloc' CI CIB) TP HRPC.

  (* [comment removed for export] *)
  #[using="CSOK"] Theorem malloc_d_inst : malloc_stmt_d asan_ops GIOA.
  Proof.
    red. intros until n. intros PRE -> Hn UNW.
    (nd_pre PRE 13%nat; intros G ST LO BU [SPT T47] MI TPE ALN RSTK RSTK2 RIMG RISH RTLS; nd_post).
    eapply (malloc_core AI AF GSTAT inst_GS_pres); eassumption.
  Qed.
  #[using="CSOK"] Theorem free_d_inst : free_stmt_d asan_ops GIOA.
  Proof.
    red. intros until lo. intros PRE -> UNW.
    (nd_pre PRE 13%nat; intros G ST LO BU [SPT T47] MI TPE ALN RSTK RSTK2 RIMG RISH RTLS; nd_post).
    eapply (free_core AI AF GSTAT inst_GS_pres); eassumption.
  Qed.
End Inst.
End CANSEC1.
End TwB.
