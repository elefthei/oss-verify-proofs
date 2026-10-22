(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require Import PropExec MState Mem Cells Step Frame Arr.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA Require Import ExecF ITreeA.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AImg AProto ABase AMalloc_iface. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ADepot_iface__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ALayout__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AHeapP__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AKitQ__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ASec__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ADepot_tabscan__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require F_memchr__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AFake_iface AFake_arep. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require F_acallocS__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AInstanceF__A3W. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AImg OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AProto OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABase OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AMalloc_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADepot_iface__A3W.ADepot_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ARep OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ALayout OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AHeapP__A3W.AHeapP OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ARepQ OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKitQ__A3W.ARepQP OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASec__A3W.ASec OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADepot_tabscan__A3W.F_adepot OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_memchr__A3W.FsKit OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFake_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFake_arep OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_acallocS__A3W.AInstance OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_acallocS__A3W.AInstanceM OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AInstanceF__A3W.AInstanceF.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P Require MonadG GIA PcapRepA UnwKit. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P Require MonadGX__A3P. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P Require Pcap_ifaceA Pcap_iface_gotA GioaReal. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.MonadG OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.GIA OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.PcapRepA OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.UnwKit OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.MonadGX__A3P.TracesA OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.Pcap_ifaceA OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.Pcap_iface_gotA OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.GioaReal.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA Require Import RunDraw.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require Import NDestr.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

Section CANSEC1. Context {rc : runConstT} {tlsI : ABase.atlsT}.
Section Inst.
Variable CI : list (Z * Z).
Hypothesis CIB : ci_okb CI = true.
Let CI1 : forall iv, In iv CI -> 0 <= fst iv /\ snd iv <= AIMG_HI := aci_ok1 CI CIB.

#[using="CI1"] Theorem afake_inst : AFakeIface (AI_of CI CIB).
Proof.
  constructor.
  - (* [comment removed for export] *)
    intros L RNG st LB m c F n AH Hin. change (AHEAP (AI_of CI CIB)) with (AHEAP_P AHI) in AH.
    (pose proof AH as ndP__; nd_pre ndP__ 4%nat; intros ALO ARNG _ HFK; nd_post). cbn [AHI ah_fake] in HFK.
    (pose proof (afake_lb L LB m c F n HFK Hin) as ndP__; nd_pre ndP__ 9%nat; intros Hc Hn Npos F64 FLO FHI FK FC _; nd_post).
    (pose proof HFK as ndP__; nd_pre ndP__ 8%nat; intros G _ _ _ _ _ DC2 _; nd_post). (nd_pre G 4%nat; intros G1 G2 G3 _; nd_post).
    (nd_pre ARNG 9%nat; intros _ _ _ _ _ _ RF RSF _; nd_post).
    (pose proof (ablk_lin _ _ G2) as ndP__; nd_pre ndP__ 4%nat; intros GL1 GL2 GL3 GL4; nd_post). unfold FAKESZ, AIMG_HI in *.
    assert (SHG : shad (al_fake L) <= shad F /\ shad F + n / 8 <= shad (al_fake L) + shlen 11571200 /\ 0 <= n / 8).
    { unfold shad, shlen, ASHOFF. rewrite !Z.shiftr_div_pow2 by lia. change (2^3) with 8. clear -G1 GL1 FLO FHI F64 Npos. Z.div_mod_to_equations. lia. }
    (nd_pre SHG 3%nat; intros SH1 SH2 SH3; nd_post).
    split; [exact Hc|]. split; [exact Hn|]. split; [exact F64|]. split; [exact FK|]. split; [exact FC|].
    split; [eapply rng_sub'; [exact RF| clear -FLO FHI; lia]|].
    split; [eapply rng_sub'; [exact RSF| clear -SH1 SH2; lia]|].
    pose proof (dc_sub m (shad (al_fake L)) (shlen 11571200) (shad F) (n / 8) DC2 SH1 SH3 SH2) as [bs DB].
    apply (SysStep.rw_cells_wr_at asegs m _ _ (n / 8) DB). cbn [cells_size csize Nat.add]. rewrite Nat.add_0_r, Z2Nat.id by exact SH3. lia.
  - (* [comment removed for export] *)
    intros L RNG st LB m c F n AH Hin. change (AHEAP (AI_of CI CIB)) with (AHEAP_P AHI) in AH.
    (nd_pre (fake_flag_P adepot_iface AQUAR ASEC_of CI CI1 L RNG st LB m c F n AH Hin) 6%nat; intros H1 H2 H3 H4 H5 _; nd_post).
    split; [exact H1|]. split; [exact H2|]. split; [exact H3|]. split; [exact H4| exact H5].
  - (* [comment removed for export] *)
    intros L RNG st LB m AH. change (AHEAP (AI_of CI CIB)) with (AHEAP_P AHI) in AH. (nd_pre AH 3%nat; intros _ ARNG _; nd_post).
    (nd_pre ARNG 10%nat; intros _ _ _ _ _ _ RF RSF RD _; nd_post). unfold afake_rng, FAKESZ. split; [exact RF|]. split; [exact RSF| exact RD].
  - (* [comment removed for export] *)
    intros L RNG st LB m m' c F n spz AH SPZ MU WM FL1. change (AHEAP (AI_of CI CIB)) with (AHEAP_P AHI) in AH |- *.
    exact (fake_release_gen_P adepot_iface AQUAR ASEC_of AHI_laws CI CI1 L RNG st LB m m' c F n spz AH SPZ MU WM FL1).
  - (* [comment removed for export] *)
    intros c SYM HC L RNG ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 FR fc m st LB lo
           AH CNT MI ST BOT LO SPT TP RSTK RIMG RTLS RFK.
    change (AHEAP (AI_of CI CIB)) with (AHEAP_P AHI) in AH |- *.
    destruct HC as [[-> ->]|[-> ->]].
    + eapply evtF_mono; [eapply (stack_malloc_0_P adepot_iface AQUAR ASEC_of AHI_laws CI CI1); eassumption|].
      intros ms' PO. unfold sm_postP in PO. (nd_pre PO 21%nat; intros F t0' t1' t2' a1' a2' a3' a4' a5' a6' a7' t3' t4' t5' t6' m' j0 j1 j2 junk PO; nd_post).
      (nd_pre PO 13%nat; intros E P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 P11 _; nd_post).
      exists F, t0', t1', t2', a1', a2', a3', a4', a5', a6', a7', t3', t4', t5', t6', m', j0, j1, j2, junk.
      change (fk_fsize 0) with 64. repeat (split; [assumption|]). assumption.
    + eapply evtF_mono; [eapply (stack_malloc_1_P adepot_iface AQUAR ASEC_of AHI_laws CI CI1); eassumption|].
      intros ms' PO. unfold sm_postP in PO. (nd_pre PO 21%nat; intros F t0' t1' t2' a1' a2' a3' a4' a5' a6' a7' t3' t4' t5' t6' m' j0 j1 j2 junk PO; nd_post).
      (nd_pre PO 13%nat; intros E P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 P11 _; nd_post).
      exists F, t0', t1', t2', a1', a2', a3', a4', a5', a6', a7', t3', t4', t5', t6', m', j0, j1, j2, junk.
      change (fk_fsize 1) with 128. repeat (split; [assumption|]). assumption.
  - (* [comment removed for export] *)
    intros L RNG req ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 FR fc m st LB lo
           AH CNT EA0 REQ REQ8 MI ST BOT LO SPT TP RSTK RIMG RTLS RFK.
    change (AHEAP (AI_of CI CIB)) with (AHEAP_P AHI) in AH |- *.
    eapply evtF_mono; [eapply (stack_malloc_7_P adepot_iface AQUAR ASEC_of AHI_laws CI CI1); eassumption|].
    intros ms' PO. unfold sm7_postP in PO.
    (nd_pre PO 22%nat; intros F t0' t1' t2' a1' a2' a3' a4' a5' a6' a7' t3' t4' t5' t6' m' j0 j1 j2 junk sjunk PO; nd_post).
    (nd_pre PO 14%nat; intros E P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 P11 P12 _; nd_post).
    exists F, t0', t1', t2', a1', a2', a3', a4', a5', a6', a7', t3', t4', t5', t6', m', j0, j1, j2, junk, sjunk.
    repeat (split; [assumption|]). assumption.
  - (* [comment removed for export] *)
    intros L RNG req ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 FR fc m st LB lo F
           AH EA0 EA1 REQ REQ8 LAST MI ST BOT LO SPT RSTK RIMG RTLS RFK.
    change (AHEAP (AI_of CI CIB)) with (AHEAP_P AHI) in AH |- *.
    eapply evtF_mono; [eapply (stack_free_7_P adepot_iface AQUAR ASEC_of AHI_laws CI CI1); eassumption|].
    intros ms' PO. unfold sf7_postP in PO.
    (nd_pre PO 22%nat; intros t0' t1' t2' a0' a1' a2' a3' a4' a5' a6' a7' t3' t4' t5' t6' m' E P1 P2 P3 P4 _; nd_post).
    exists t0', t1', t2', a0', a1', a2', a3', a4', a5', a6', a7', t3', t4', t5', t6', m'.
    repeat (split; [assumption|]). assumption.
Qed.
End Inst.
End CANSEC1.

(* [comment removed for export] *)

Module TwB.
(* [comment removed for export] *)
(* [comment removed for export] *)
Import Stdlib.ZArith.ZArith Stdlib.NArith.NArith Stdlib.Lists.List Stdlib.micromega.Lia Stdlib.Bool.Bool.
Import LinuxProcessSemantics.LinuxProcessSem.BvBase LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics LinuxProcessSemantics.LinuxProcessSem.MemImageType LinuxProcessSemantics.LinuxProcessSem.State LinuxProcessSemantics.LinuxProcessSem.Run.
Import LinuxProcessSemantics.Riscv.Prelude.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.PropExec OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.MState OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Mem OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Cells OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Step OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Frame OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Arr.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.ExecF OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.ITreeA.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AImg.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AProto.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABase.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AMalloc_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADepot_iface__A3W.ADepot_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ARep.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ALayout.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AHeapP__A3W.AHeapP.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ARepQ.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKitQ__A3W.ARepQP.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASec__A3W.ASec.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADepot_tabscan__A3W.F_adepot.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_memchr__A3W.FsKit.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFake_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFake_arep.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_acallocS__A3W.AInstance.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_acallocS__A3W.AInstanceM.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AInstanceF__A3W.AInstanceF.TwB.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.MonadG.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.GIA.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.PcapRepA.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.UnwKit.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.MonadGX__A3P.TracesA.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.Pcap_ifaceA.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.Pcap_iface_gotA.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3P.GioaReal.TwB.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.RunDraw. Local Ltac Zify.zify_pre_hook ::= OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABase.TwB.twm_hook_1. Local Ltac OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Step.addr_diff E A ::= OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKit2.TwB.twm_hook_1 E A. Local Ltac OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.ZBridge.flia ::= OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_arecyc1.TwB.twm_hook_1.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

Section CANSEC1. Context {rc : runConstT} {tlsI : A3W.ABase.TwB.atlsT}.
Section Inst.
Variable CI : list (Z * Z).
Hypothesis CIB : ci_okb CI = true.
Let CI1 : forall iv, In iv CI -> 0 <= fst iv /\ snd iv <= AIMG_HI := aci_ok1 CI CIB.

#[using="CI1"] Theorem afake_inst : AFakeIface (AI_of CI CIB).
Proof.
  constructor.
  - (* [comment removed for export] *)
    intros L RNG st LB m c F n AH Hin. change (AHEAP (AI_of CI CIB)) with (AHEAP_P AHI) in AH.
    (pose proof AH as ndP__; nd_pre ndP__ 4%nat; intros ALO ARNG _ HFK; nd_post). cbn [AHI ah_fake] in HFK.
    (pose proof (afake_lb L LB m c F n HFK Hin) as ndP__; nd_pre ndP__ 9%nat; intros Hc Hn Npos F64 FLO FHI FK FC _; nd_post).
    (pose proof HFK as ndP__; nd_pre ndP__ 8%nat; intros G _ _ _ _ _ DC2 _; nd_post). (nd_pre G 4%nat; intros G1 G2 G3 _; nd_post).
    (nd_pre ARNG 9%nat; intros _ _ _ _ _ _ RF RSF _; nd_post).
    (pose proof (ablk_lin _ _ G2) as ndP__; nd_pre ndP__ 4%nat; intros GL1 GL2 GL3 GL4; nd_post). unfold FAKESZ, AIMG_HI in *.
    assert (SHG : shad (al_fake L) <= shad F /\ shad F + n / 8 <= shad (al_fake L) + shlen 11571200 /\ 0 <= n / 8).
    { unfold shad, shlen, ASHOFF. rewrite !Z.shiftr_div_pow2 by lia. change (2^3) with 8. clear -G1 GL1 FLO FHI F64 Npos. Z.div_mod_to_equations. lia. }
    (nd_pre SHG 3%nat; intros SH1 SH2 SH3; nd_post).
    split; [exact Hc|]. split; [exact Hn|]. split; [exact F64|]. split; [exact FK|]. split; [exact FC|].
    split; [eapply rng_sub'; [exact RF| clear -FLO FHI; lia]|].
    split; [eapply rng_sub'; [exact RSF| clear -SH1 SH2; lia]|].
    pose proof (dc_sub m (shad (al_fake L)) (shlen 11571200) (shad F) (n / 8) DC2 SH1 SH3 SH2) as [bs DB].
    apply (SysStep.rw_cells_wr_at asegs m _ _ (n / 8) DB). cbn [cells_size csize Nat.add]. rewrite Nat.add_0_r, Z2Nat.id by exact SH3. lia.
  - (* [comment removed for export] *)
    intros L RNG st LB m c F n AH Hin. change (AHEAP (AI_of CI CIB)) with (AHEAP_P AHI) in AH.
    (nd_pre (fake_flag_P adepot_iface AQUAR ASEC_of CI CI1 L RNG st LB m c F n AH Hin) 6%nat; intros H1 H2 H3 H4 H5 _; nd_post).
    split; [exact H1|]. split; [exact H2|]. split; [exact H3|]. split; [exact H4| exact H5].
  - (* [comment removed for export] *)
    intros L RNG st LB m AH. change (AHEAP (AI_of CI CIB)) with (AHEAP_P AHI) in AH. (nd_pre AH 3%nat; intros _ ARNG _; nd_post).
    (nd_pre ARNG 10%nat; intros _ _ _ _ _ _ RF RSF RD _; nd_post). unfold afake_rng, FAKESZ. split; [exact RF|]. split; [exact RSF| exact RD].
  - (* [comment removed for export] *)
    intros L RNG st LB m m' c F n spz AH SPZ MU WM FL1. change (AHEAP (AI_of CI CIB)) with (AHEAP_P AHI) in AH |- *.
    exact (fake_release_gen_P adepot_iface AQUAR ASEC_of AHI_laws CI CI1 L RNG st LB m m' c F n spz AH SPZ MU WM FL1).
  - (* [comment removed for export] *)
    intros c SYM HC L RNG ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 FR fc m st LB lo
           AH CNT MI ST BOT LO SPT TP RSTK RIMG RTLS RFK.
    change (AHEAP (AI_of CI CIB)) with (AHEAP_P AHI) in AH |- *.
    destruct HC as [[-> ->]|[-> ->]].
    + eapply evtF_mono; [eapply (stack_malloc_0_P adepot_iface AQUAR ASEC_of AHI_laws CI CI1); eassumption|].
      intros ms' PO. unfold sm_postP in PO. (nd_pre PO 21%nat; intros F t0' t1' t2' a1' a2' a3' a4' a5' a6' a7' t3' t4' t5' t6' m' j0 j1 j2 junk PO; nd_post).
      (nd_pre PO 13%nat; intros E P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 P11 _; nd_post).
      exists F, t0', t1', t2', a1', a2', a3', a4', a5', a6', a7', t3', t4', t5', t6', m', j0, j1, j2, junk.
      change (fk_fsize 0) with 64. repeat (split; [assumption|]). assumption.
    + eapply evtF_mono; [eapply (stack_malloc_1_P adepot_iface AQUAR ASEC_of AHI_laws CI CI1); eassumption|].
      intros ms' PO. unfold sm_postP in PO. (nd_pre PO 21%nat; intros F t0' t1' t2' a1' a2' a3' a4' a5' a6' a7' t3' t4' t5' t6' m' j0 j1 j2 junk PO; nd_post).
      (nd_pre PO 13%nat; intros E P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 P11 _; nd_post).
      exists F, t0', t1', t2', a1', a2', a3', a4', a5', a6', a7', t3', t4', t5', t6', m', j0, j1, j2, junk.
      change (fk_fsize 1) with 128. repeat (split; [assumption|]). assumption.
  - (* [comment removed for export] *)
    intros L RNG req ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 FR fc m st LB lo
           AH CNT EA0 REQ REQ8 MI ST BOT LO SPT TP RSTK RIMG RTLS RFK.
    change (AHEAP (AI_of CI CIB)) with (AHEAP_P AHI) in AH |- *.
    eapply evtF_mono; [eapply (stack_malloc_7_P adepot_iface AQUAR ASEC_of AHI_laws CI CI1); eassumption|].
    intros ms' PO. unfold sm7_postP in PO.
    (nd_pre PO 22%nat; intros F t0' t1' t2' a1' a2' a3' a4' a5' a6' a7' t3' t4' t5' t6' m' j0 j1 j2 junk sjunk PO; nd_post).
    (nd_pre PO 14%nat; intros E P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 P11 P12 _; nd_post).
    exists F, t0', t1', t2', a1', a2', a3', a4', a5', a6', a7', t3', t4', t5', t6', m', j0, j1, j2, junk, sjunk.
    repeat (split; [assumption|]). assumption.
  - (* [comment removed for export] *)
    intros L RNG req ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 FR fc m st LB lo F
           AH EA0 EA1 REQ REQ8 LAST MI ST BOT LO SPT RSTK RIMG RTLS RFK.
    change (AHEAP (AI_of CI CIB)) with (AHEAP_P AHI) in AH |- *.
    eapply evtF_mono; [eapply (stack_free_7_P adepot_iface AQUAR ASEC_of AHI_laws CI CI1); eassumption|].
    intros ms' PO. unfold sf7_postP in PO.
    (nd_pre PO 22%nat; intros t0' t1' t2' a0' a1' a2' a3' a4' a5' a6' a7' t3' t4' t5' t6' m' E P1 P2 P3 P4 _; nd_post).
    exists t0', t1', t2', a0', a1', a2', a3', a4', a5', a6', a7', t3', t4', t5', t6', m'.
    repeat (split; [assumption|]). assumption.
Qed.
End Inst.
End CANSEC1.
End TwB.
