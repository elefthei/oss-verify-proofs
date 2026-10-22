(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From Stdlib Require Lia.
(* [comment removed for export] *)
From Stdlib Require ZArith NArith List Lia Bool.
From stdpp Require gmap.
From LinuxProcessSemantics.LinuxProcessSem Require BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require PropExec MState Mem Cells Exec Step Frame Arr Tac ITree Nodes Decode.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA Require ExecF ITreeA StepF.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require STree.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA Require AsanCtrl AsanEmbed.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AImg AProto ABase.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ABytes__A3W.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AQConst.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AKitQ__A3W.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AMalloc_iface.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ADepot_iface__A3W.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ALayout__A3W.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AHeapP__A3W.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ASec__A3W.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AFreeModel__A3W.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AFreeModelR AFreeRep AFreeRead.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ARealloc_iface__A3W.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ARefillP.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require F_afree_arep__A3W.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ASF_fast__A3W.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ASF_store__A3W.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ADfnS_fast__A3W.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AFreeRefillP__A3W.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AQrecP__A3W.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ASF_storeC__A3W.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ADfn_recP__A3W.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ASecSlog__A3W.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AKitR__A3W.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ADfn_storeC__A3W.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ADfnS_storeRC.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ADfnS_mid.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA Require RunDraw.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require NDestr.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AHolesD.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ADepot_tabscan__A3W.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AFake_iface AFake_arep.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

(* [comment removed for export] *)
Module ADfnS_allC.
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From stdpp Require Import gmap.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require Import PropExec MState Mem Cells Exec Step Frame Arr Tac ITree Nodes Decode.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA Require Import ExecF ITreeA StepF.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require Import STree.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA Require Import AsanCtrl AsanEmbed.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AImg AProto ABase. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ABytes__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AQConst. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AKitQ__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AMalloc_iface. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ADepot_iface__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ALayout__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AHeapP__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ASec__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AFreeModel__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AFreeModelR AFreeRep AFreeRead. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ARealloc_iface__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ARefillP. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require F_afree_arep__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ASF_fast__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ASF_store__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ADfnS_fast__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AFreeRefillP__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AQrecP__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ASF_storeC__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ADfn_recP__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ASecSlog__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AKitR__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ADfn_storeC__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ADfnS_storeRC. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ADfnS_mid. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AImg OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AProto OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABase OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABytes__A3W.ABytes OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQConst OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKitQ__A3W.AKitQ OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AMalloc_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADepot_iface__A3W.ADepot_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ARep OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ARepQ OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKitQ__A3W.ARepQP OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ALayout OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AHeapP__A3W.AHeapP OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASec__A3W.ASec OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeModel__A3W.AFreeModel OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeModelR OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRep OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRead OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ARealloc_iface__A3W.ARefill_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ARefillP OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_afree_arep__A3W.F_afree_arep OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASec__A3W.ASF_kit OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_fast__A3W.ASF_fast OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_store__A3W.ASF_store OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_fast__A3W.ASF_refill OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_store__A3W.ASF_mid OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_store__A3W.ASF_storeR OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfnS_fast__A3W.ASF_big OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRefillP__A3W.ASF_all OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeC_kit_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.ASF_C_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_storeC__A3W.ASF_storeC OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_storeC__A3W.ASF_storeRC OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeBack OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_recP__A3W.ASF_fastC OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_recP__A3W.ASF_refillC OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRefillP__A3W.ASF_all OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASecSlog__A3W.AFn_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKitR__A3W.ADeallocFn_kit OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.ADfnC_kit_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.ADfnS_C_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.ADfn_back OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_storeC__A3W.ADfnS_storeC OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfnS_storeRC OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfnS_fast__A3W.ADfnS_fast OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfnS_fast__A3W.ADfnS_refill OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfnS_mid OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfnS_fast__A3W.ADfnS_big OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_recP__A3W.ADfnS_fastC OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_recP__A3W.ADfnS_refillC OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRefillP__A3W.ADfnS_all.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA Require Import RunDraw.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require Import NDestr.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

Section CANSEC1. Context {rc : runConstT} {tlsI : ABase.atlsT}.
(* [comment removed for export] *)
#[using="Type"] Local Lemma aobj_int : forall a n, aobj a n -> 0x10000 <= n ->
  6303744 <= a /\ a + n <= ATOP /\ exists k, 0 <= k <= 1 /\ a + n <= 2147446784 + k * 18446744073709551616 /\ 17594333495296 * k <= a.
Proof.
  intros a n H Hn. unfold aobj, sclr, iclr, KLS, AIMG_LO, AIMG_HI in H. pose proof atop_range. (nd_pre H 5%nat; intros H1 H2 H3 H4 H5; nd_post).
  split; [lia|]. split; [lia|]. destruct H4; [exists 0 | exists 1]; lia.
Qed.
#[using="Type"] Local Lemma aobj4_int : forall a, aobj a 4096 ->
  4096 <= a /\ a + 4096 <= ATOP
  /\ (exists k, 0 <= k <= 1 /\ a + 4096 <= 2147446784 + k * 18446744073709551616 /\ 17594333495296 * k <= a)
  /\ (exists j, 0 <= j <= 1 /\ a + 4096 <= 65536 + j * 18446744073709551616 /\ 6303744 * j <= a).
Proof.
  intros a H. unfold aobj, sclr, iclr, KLS, AIMG_LO, AIMG_HI in H. pose proof atop_range. (nd_pre H 5%nat; intros H1 H2 H3 H4 H5; nd_post).
  split; [lia|]. split; [lia|]. split; [destruct H4; [exists 0 | exists 1]; lia | destruct H5 as [_ [H5|H5]]; [exists 0 | exists 1]; lia].
Qed.

Section S.
Variable DI : ADepotIface.
Variable AFK : alayout -> list ablock -> amem -> Prop.
Hypothesis HL : ahole_laws (AHQ DI ASEC_of AFK).
Variable CI : list (Z * Z).
Hypothesis CI_OK : Forall (fun iv => 0x10000 <= fst iv /\ (snd iv <= ADEPOT_LO \/ ADEPOT_HI <= fst iv) /\ snd iv <= AIMG_HI
                                  /\ (snd iv <= 0xab270 \/ 0xab330 <= fst iv)
                                  /\ (snd iv <= 0xaf800 \/ 0x130830 <= fst iv)
                                  /\ (snd iv <= 0x13e088 \/ 0x13e08c <= fst iv)) CI.
Hypothesis CI_OK2 : Forall (fun iv => snd iv <= AINSTANCE \/ AINSTANCE + 728 <= fst iv) CI.
Hypothesis DEPD : depot_frameD_law (ADEPOT DI).
Hypothesis AFKD : fake_frameD_law AFK.

Definition dfn_sec_recfastP :=
  dfn_sec_recfast DI AFK HL CI CI_OK CI_OK2 DEPD AFKD (dfn_store_freeSC DI AFK HL CI CI_OK) (dfn_back DI AFK CI).
Definition dfn_sec_recrefillP :=
  dfn_sec_recrefill DI AFK HL CI CI_OK CI_OK2 DEPD AFKD (dfn_mid_kitS DI AFK HL CI CI_OK) (dfn_store_freeSRC DI AFK HL CI CI_OK)
                      (OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRefillP__A3W.ASF_all.REFILLS DI AFK HL) (dfn_back DI AFK CI).

(* [comment removed for export] *)
#[using="HL CI_OK CI_OK2 DEPD AFKD"] Theorem dfn_sec_recycle : forall (L : alayout) (RNG : footprint)
    (ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 : word)
    (F : bvmap 5 word) (fc : bv 32) (m : amem) (st : astate) (LB : list ablock) (p : aptr) (A n lo SO pc : Z) (trt : list Z) (tb : list word) (mb ms : Z),
  (a_live st) !! p = Some (CSec mb ms n) -> n <= Q_MAX ->
  let st1 := set_live (delete p (a_live st)) st in
  let st2 := st_enq st1 (CSec mb ms n) in
  Q_CACHE < a_qloc_bytes st2 -> Q_MAX < a_qglob_bytes st2 + a_qloc_bytes st2 ->
  AHEAP_P (AHQ DI ASEC_of AFK) L RNG st LB m -> In (HB p A n) LB ->
  mem_inv asegs m ->
  stk asegs m lo (bv_unsigned sp) -> ATOP + 4096 <= lo -> lo <= bv_unsigned sp - AFREE_STACK ->
  tp = Z_to_bv 64 ATP ->
  a0 = Z_to_bv 64 AINSTANCE -> a1 = Z_to_bv 64 A -> a2 = Z_to_bv 64 0 -> a3 = Z_to_bv 64 0 -> a4 = Z_to_bv 64 SO -> a5 = Z_to_bv 64 1 ->
  rw_cells asegs m 0x13e088 [C1 (Z_to_bv 8 1); C1 (Z_to_bv 8 0); C1 (Z_to_bv 8 0); C1 (Z_to_bv 8 0)] ->
  bv_unsigned sp <= SO -> SO + 2056 <= 2^47 ->
  rw_cells asegs m SO [C8 (Z_to_bv 64 (SO + 16)); C4 (Z_to_bv 64 (1 + Z.of_nat (length trt))); C4 (Z_to_bv 64 0)] ->
  u64arr asegs m (SO + 16) tb -> length tb = 255%nat ->
  map bv_unsigned (firstn (Datatypes.S (length trt)) tb) = pc :: trt ->
  In (pc :: trt) (al_U L) -> (length trt <= 29)%nat ->
  rng RNG lo (bv_unsigned sp - lo) -> rng RNG SO 2056 ->
  implS asegs RNG (aembed ATOP (afree st (Some p)))
        (epostF (afree_post CI (AHEAP_P (AHQ DI ASEC_of AFK)) L RNG ra sp gp tp s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 F fc st LB p lo m))
        (MS (mkR ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6)
            F (Z_to_bv 64 DEALLOCATE_ENTRY) fc None m (seg_rom asegs)).
Proof.
  intros until ms. intros LIVE NQM st1 st2 QC1 REC. intros.
  destruct (Z.lt_ge_cases 0 (c_count (get_cls st K_BATCH_CLASS))) as [POS|Z0].
  - eapply dfn_sec_recfastP; try eassumption. intros _. exact POS.
  - destruct (enq_is_app st) eqn:EA.
    + eapply dfn_sec_recfastP; try eassumption. intros E. exfalso.
      assert (EA1 : enq_is_app st1 = true) by exact EA. destruct (proj1 (enq_is_app_spec st1 (CSec mb ms n)) EA1) as [s Hs].
      change (enq_app st1 (CSec mb ms n) = None) in E. congruence.
    + assert (CNT0 : c_count (get_cls st K_BATCH_CLASS) = 0).
      { pose proof H as AH. (nd_pre AH 4%nat; intros _ _ [X [AR _]] _; nd_post). destruct AR as (WF & _).
        (nd_pre WF 7%nat; intros _ _ _ _ _ PERC _; nd_post). (nd_pre (PERC K_BATCH_CLASS (K24)) 11%nat; intros _ _ _ _ _ _ _ _ _ CNTB _; nd_post). lia. }
      assert (EAPP : enq_app (set_live (delete p (a_live st)) st) (CSec mb ms n) = None).
      { destruct (enq_app _ _) as [s'|] eqn:E; [exfalso| reflexivity].
        assert (EA1 : enq_is_app (set_live (delete p (a_live st)) st) = true) by (apply (proj2 (enq_is_app_spec _ (CSec mb ms n))); eexists; exact E).
        change (enq_is_app (set_live (delete p (a_live st)) st)) with (enq_is_app st) in EA1. congruence. }
      (pose proof (enq_new_core (CSec mb ms n) (set_live (delete p (a_live st)) st)) as ndP__; nd_pre ndP__ 7%nat; intros _ G1 G2 _ _ L2 _; nd_post).
      subst st2 st1. unfold st_enq in QC1, REC. rewrite EAPP in QC1, REC. rewrite L2 in QC1. rewrite G2, L2 in REC. cbn [chunk_size] in QC1, REC.
      change (a_qloc_bytes (set_live (delete p (a_live st)) st)) with (a_qloc_bytes st) in QC1, REC.
      change (a_qglob_bytes (set_live (delete p (a_live st)) st)) with (a_qglob_bytes st) in REC.
      eapply dfn_sec_recrefillP; try eassumption.
      * unfold Q_BATCH_BYTES in QC1. generalize QC1; clear; intros; lia.
      * unfold Q_BATCH_BYTES in QC1, REC. generalize REC; clear; intros; lia.
Qed.

(* [comment removed for export] *)
#[using="HL CI_OK CI_OK2 DEPD AFKD"] Theorem dfn_sec_total : forall (L : alayout) (RNG : footprint)
    (ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 : word)
    (F : bvmap 5 word) (fc : bv 32) (m : amem) (st : astate) (LB : list ablock) (p : aptr) (A n lo SO pc : Z) (trt : list Z) (tb : list word) (mb ms : Z),
  (a_live st) !! p = Some (CSec mb ms n) ->
  AHEAP_P (AHQ DI ASEC_of AFK) L RNG st LB m -> In (HB p A n) LB ->
  mem_inv asegs m ->
  stk asegs m lo (bv_unsigned sp) -> ATOP + 4096 <= lo -> lo <= bv_unsigned sp - AFREE_STACK ->
  tp = Z_to_bv 64 ATP ->
  a0 = Z_to_bv 64 AINSTANCE -> a1 = Z_to_bv 64 A -> a2 = Z_to_bv 64 0 -> a3 = Z_to_bv 64 0 -> a4 = Z_to_bv 64 SO -> a5 = Z_to_bv 64 1 ->
  rw_cells asegs m 0x13e088 [C1 (Z_to_bv 8 1); C1 (Z_to_bv 8 0); C1 (Z_to_bv 8 0); C1 (Z_to_bv 8 0)] ->
  bv_unsigned sp <= SO -> SO + 2056 <= 2^47 ->
  rw_cells asegs m SO [C8 (Z_to_bv 64 (SO + 16)); C4 (Z_to_bv 64 (1 + Z.of_nat (length trt))); C4 (Z_to_bv 64 0)] ->
  u64arr asegs m (SO + 16) tb -> length tb = 255%nat ->
  map bv_unsigned (firstn (Datatypes.S (length trt)) tb) = pc :: trt ->
  In (pc :: trt) (al_U L) -> (length trt <= 29)%nat ->
  rng RNG lo (bv_unsigned sp - lo) -> rng RNG SO 2056 ->
  4096 <= bv_unsigned ra ->
  implS asegs RNG (aembed ATOP (afree st (Some p)))
        (epostF (afree_post CI (AHEAP_P (AHQ DI ASEC_of AFK)) L RNG ra sp gp tp s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 F fc st LB p lo m))
        (MS (mkR ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6)
            F (Z_to_bv 64 DEALLOCATE_ENTRY) fc None m (seg_rom asegs)).
Proof.
  intros until ms. intros LIVE. intros.
  destruct (Z.le_gt_cases n Q_MAX) as [LE|GT].
  - set (st2 := st_enq (set_live (delete p (a_live st)) st) (CSec mb ms n)).
    destruct (Z.lt_ge_cases Q_CACHE (a_qloc_bytes st2)) as [QC1|NQC].
    + destruct (Z.lt_ge_cases Q_MAX (a_qglob_bytes st2 + a_qloc_bytes st2)) as [REC|NREC].
      * eapply dfn_sec_recycle; try eassumption.
      * eapply (dfn_sec_norecycle DI AFK HL CI CI_OK CI_OK2); try eassumption. intros _. exact NREC.
    + eapply (dfn_sec_norecycle DI AFK HL CI CI_OK CI_OK2); try eassumption. intros QC'. exfalso. subst st2. generalize QC' NQC; clear; intros; lia.
  - eapply (dfn_sec_big DI AFK HL DEPD AFKD CI CI_OK CI_OK2); try eassumption; lia.
Qed.
End S.
End CANSEC1.

(* [comment removed for export] *)

Module TwB.
(* [comment removed for export] *)
(* [comment removed for export] *)
Import Stdlib.ZArith.ZArith Stdlib.NArith.NArith Stdlib.Lists.List Stdlib.micromega.Lia Stdlib.Bool.Bool.
Import stdpp.gmap.
Import LinuxProcessSemantics.LinuxProcessSem.BvBase LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics LinuxProcessSemantics.LinuxProcessSem.MemImageType LinuxProcessSemantics.LinuxProcessSem.State LinuxProcessSemantics.LinuxProcessSem.Run.
Import LinuxProcessSemantics.Riscv.Prelude LinuxProcessSemantics.Riscv.Instr LinuxProcessSemantics.Riscv.Decode LinuxProcessSemantics.Riscv.DecodeC LinuxProcessSemantics.Riscv.Sem LinuxProcessSemantics.Riscv.Fpu.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.PropExec OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.MState OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Mem OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Cells OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Exec OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Step OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Frame OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Arr OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Tac OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.ITree OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Nodes OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Decode.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.ExecF OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.ITreeA OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.StepF.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.STree.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA.AsanCtrl OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA.AsanEmbed.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AImg.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AProto.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABase.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABytes__A3W.ABytes.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQConst.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKitQ__A3W.AKitQ.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AMalloc_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADepot_iface__A3W.ADepot_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ARep.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ARepQ.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKitQ__A3W.ARepQP.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ALayout.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AHeapP__A3W.AHeapP.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASec__A3W.ASec.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeModel__A3W.AFreeModel.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeModelR.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRep.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRead.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ARealloc_iface__A3W.ARefill_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ARefillP.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_afree_arep__A3W.F_afree_arep.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASec__A3W.ASF_kit.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_fast__A3W.ASF_fast.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_store__A3W.ASF_store.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_fast__A3W.ASF_refill.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_store__A3W.ASF_mid.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_store__A3W.ASF_storeR.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfnS_fast__A3W.ASF_big.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRefillP__A3W.ASF_all.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeC_kit_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.ASF_C_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_storeC__A3W.ASF_storeC.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_storeC__A3W.ASF_storeRC.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeBack.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_recP__A3W.ASF_fastC.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_recP__A3W.ASF_refillC.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRefillP__A3W.ASF_all.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASecSlog__A3W.AFn_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKitR__A3W.ADeallocFn_kit.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.ADfnC_kit_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.ADfnS_C_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.ADfn_back.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_storeC__A3W.ADfnS_storeC.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfnS_storeRC.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfnS_fast__A3W.ADfnS_fast.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfnS_fast__A3W.ADfnS_refill.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfnS_mid.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfnS_fast__A3W.ADfnS_big.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_recP__A3W.ADfnS_fastC.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_recP__A3W.ADfnS_refillC.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRefillP__A3W.ADfnS_all.TwB.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.RunDraw. Local Ltac Zify.zify_pre_hook ::= OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABase.TwB.twm_hook_1. Local Ltac OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Step.addr_diff E A ::= OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKit2.TwB.twm_hook_1 E A. Local Ltac OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.ZBridge.flia ::= OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_arecyc1.TwB.twm_hook_1.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

Section CANSEC1. Context {rc : runConstT} {tlsI : A3W.ABase.TwB.atlsT}.
(* [comment removed for export] *)
#[using="Type"] Local Lemma aobj_int : forall a n, aobj a n -> 0x10000 <= n ->
  6307840 <= a /\ a + n <= ATOP /\ exists k, 0 <= k <= 1 /\ a + n <= 2147446784 + k * 18446744073709551616 /\ 17594333495296 * k <= a.
Proof.
  intros a n H Hn. unfold aobj, sclr, iclr, KLS, AIMG_LO, AIMG_HI in H. pose proof atop_range. (nd_pre H 5%nat; intros H1 H2 H3 H4 H5; nd_post).
  split; [lia|]. split; [lia|]. destruct H4; [exists 0 | exists 1]; lia.
Qed.
#[using="Type"] Local Lemma aobj4_int : forall a, aobj a 4096 ->
  4096 <= a /\ a + 4096 <= ATOP
  /\ (exists k, 0 <= k <= 1 /\ a + 4096 <= 2147446784 + k * 18446744073709551616 /\ 17594333495296 * k <= a)
  /\ (exists j, 0 <= j <= 1 /\ a + 4096 <= 65536 + j * 18446744073709551616 /\ 6307840 * j <= a).
Proof.
  intros a H. unfold aobj, sclr, iclr, KLS, AIMG_LO, AIMG_HI in H. pose proof atop_range. (nd_pre H 5%nat; intros H1 H2 H3 H4 H5; nd_post).
  split; [lia|]. split; [lia|]. split; [destruct H4; [exists 0 | exists 1]; lia | destruct H5 as [_ [H5|H5]]; [exists 0 | exists 1]; lia].
Qed.

Section S.
Variable DI : ADepotIface.
Variable AFK : alayout -> list ablock -> amem -> Prop.
Hypothesis HL : ahole_laws (AHQ DI ASEC_of AFK).
Variable CI : list (Z * Z).
Hypothesis CI_OK : Forall (fun iv => 0x10000 <= fst iv /\ (snd iv <= ADEPOT_LO \/ ADEPOT_HI <= fst iv) /\ snd iv <= AIMG_HI
                                  /\ (snd iv <= 0xab670 \/ 0xab730 <= fst iv)
                                  /\ (snd iv <= 0xafc00 \/ 0x130c30 <= fst iv)
                                  /\ (snd iv <= 0x13e488 \/ 0x13e48c <= fst iv)) CI.
Hypothesis CI_OK2 : Forall (fun iv => snd iv <= AINSTANCE \/ AINSTANCE + 728 <= fst iv) CI.
Hypothesis DEPD : depot_frameD_law (ADEPOT DI).
Hypothesis AFKD : fake_frameD_law AFK.

Definition dfn_sec_recfastP :=
  dfn_sec_recfast DI AFK HL CI CI_OK CI_OK2 DEPD AFKD (dfn_store_freeSC DI AFK HL CI CI_OK) (dfn_back DI AFK CI).
Definition dfn_sec_recrefillP :=
  dfn_sec_recrefill DI AFK HL CI CI_OK CI_OK2 DEPD AFKD (dfn_mid_kitS DI AFK HL CI CI_OK) (dfn_store_freeSRC DI AFK HL CI CI_OK)
                      (OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRefillP__A3W.ASF_all.TwB.REFILLS DI AFK HL) (dfn_back DI AFK CI).

(* [comment removed for export] *)
#[using="HL CI_OK CI_OK2 DEPD AFKD"] Theorem dfn_sec_recycle : forall (L : alayout) (RNG : footprint)
    (ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 : word)
    (F : bvmap 5 word) (fc : bv 32) (m : amem) (st : astate) (LB : list ablock) (p : aptr) (A n lo SO pc : Z) (trt : list Z) (tb : list word) (mb ms : Z),
  (a_live st) !! p = Some (CSec mb ms n) -> n <= Q_MAX ->
  let st1 := set_live (delete p (a_live st)) st in
  let st2 := st_enq st1 (CSec mb ms n) in
  Q_CACHE < a_qloc_bytes st2 -> Q_MAX < a_qglob_bytes st2 + a_qloc_bytes st2 ->
  AHEAP_P (AHQ DI ASEC_of AFK) L RNG st LB m -> In (HB p A n) LB ->
  mem_inv asegs m ->
  stk asegs m lo (bv_unsigned sp) -> ATOP + 4096 <= lo -> lo <= bv_unsigned sp - AFREE_STACK ->
  tp = Z_to_bv 64 ATP ->
  a0 = Z_to_bv 64 AINSTANCE -> a1 = Z_to_bv 64 A -> a2 = Z_to_bv 64 0 -> a3 = Z_to_bv 64 0 -> a4 = Z_to_bv 64 SO -> a5 = Z_to_bv 64 1 ->
  rw_cells asegs m 0x13e488 [C1 (Z_to_bv 8 1); C1 (Z_to_bv 8 0); C1 (Z_to_bv 8 0); C1 (Z_to_bv 8 0)] ->
  bv_unsigned sp <= SO -> SO + 2056 <= 2^47 ->
  rw_cells asegs m SO [C8 (Z_to_bv 64 (SO + 16)); C4 (Z_to_bv 64 (1 + Z.of_nat (length trt))); C4 (Z_to_bv 64 0)] ->
  u64arr asegs m (SO + 16) tb -> length tb = 255%nat ->
  map bv_unsigned (firstn (Datatypes.S (length trt)) tb) = pc :: trt ->
  In (pc :: trt) (al_U L) -> (length trt <= 29)%nat ->
  rng RNG lo (bv_unsigned sp - lo) -> rng RNG SO 2056 ->
  implS asegs RNG (aembed ATOP (afree st (Some p)))
        (epostF (afree_post CI (AHEAP_P (AHQ DI ASEC_of AFK)) L RNG ra sp gp tp s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 F fc st LB p lo m))
        (MS (mkR ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6)
            F (Z_to_bv 64 DEALLOCATE_ENTRY) fc None m (seg_rom asegs)).
Proof.
  intros until ms. intros LIVE NQM st1 st2 QC1 REC. intros.
  destruct (Z.lt_ge_cases 0 (c_count (get_cls st K_BATCH_CLASS))) as [POS|Z0].
  - eapply dfn_sec_recfastP; try eassumption. intros _. exact POS.
  - destruct (enq_is_app st) eqn:EA.
    + eapply dfn_sec_recfastP; try eassumption. intros E. exfalso.
      assert (EA1 : enq_is_app st1 = true) by exact EA. destruct (proj1 (enq_is_app_spec st1 (CSec mb ms n)) EA1) as [s Hs].
      change (enq_app st1 (CSec mb ms n) = None) in E. congruence.
    + assert (CNT0 : c_count (get_cls st K_BATCH_CLASS) = 0).
      { pose proof H as AH. (nd_pre AH 4%nat; intros _ _ [X [AR _]] _; nd_post). destruct AR as (WF & _).
        (nd_pre WF 7%nat; intros _ _ _ _ _ PERC _; nd_post). (nd_pre (PERC K_BATCH_CLASS (K24)) 11%nat; intros _ _ _ _ _ _ _ _ _ CNTB _; nd_post). lia. }
      assert (EAPP : enq_app (set_live (delete p (a_live st)) st) (CSec mb ms n) = None).
      { destruct (enq_app _ _) as [s'|] eqn:E; [exfalso| reflexivity].
        assert (EA1 : enq_is_app (set_live (delete p (a_live st)) st) = true) by (apply (proj2 (enq_is_app_spec _ (CSec mb ms n))); eexists; exact E).
        change (enq_is_app (set_live (delete p (a_live st)) st)) with (enq_is_app st) in EA1. congruence. }
      (pose proof (enq_new_core (CSec mb ms n) (set_live (delete p (a_live st)) st)) as ndP__; nd_pre ndP__ 7%nat; intros _ G1 G2 _ _ L2 _; nd_post).
      subst st2 st1. unfold st_enq in QC1, REC. rewrite EAPP in QC1, REC. rewrite L2 in QC1. rewrite G2, L2 in REC. cbn [chunk_size] in QC1, REC.
      change (a_qloc_bytes (set_live (delete p (a_live st)) st)) with (a_qloc_bytes st) in QC1, REC.
      change (a_qglob_bytes (set_live (delete p (a_live st)) st)) with (a_qglob_bytes st) in REC.
      eapply dfn_sec_recrefillP; try eassumption.
      * unfold Q_BATCH_BYTES in QC1. generalize QC1; clear; intros; lia.
      * unfold Q_BATCH_BYTES in QC1, REC. generalize REC; clear; intros; lia.
Qed.

(* [comment removed for export] *)
#[using="HL CI_OK CI_OK2 DEPD AFKD"] Theorem dfn_sec_total : forall (L : alayout) (RNG : footprint)
    (ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 : word)
    (F : bvmap 5 word) (fc : bv 32) (m : amem) (st : astate) (LB : list ablock) (p : aptr) (A n lo SO pc : Z) (trt : list Z) (tb : list word) (mb ms : Z),
  (a_live st) !! p = Some (CSec mb ms n) ->
  AHEAP_P (AHQ DI ASEC_of AFK) L RNG st LB m -> In (HB p A n) LB ->
  mem_inv asegs m ->
  stk asegs m lo (bv_unsigned sp) -> ATOP + 4096 <= lo -> lo <= bv_unsigned sp - AFREE_STACK ->
  tp = Z_to_bv 64 ATP ->
  a0 = Z_to_bv 64 AINSTANCE -> a1 = Z_to_bv 64 A -> a2 = Z_to_bv 64 0 -> a3 = Z_to_bv 64 0 -> a4 = Z_to_bv 64 SO -> a5 = Z_to_bv 64 1 ->
  rw_cells asegs m 0x13e488 [C1 (Z_to_bv 8 1); C1 (Z_to_bv 8 0); C1 (Z_to_bv 8 0); C1 (Z_to_bv 8 0)] ->
  bv_unsigned sp <= SO -> SO + 2056 <= 2^47 ->
  rw_cells asegs m SO [C8 (Z_to_bv 64 (SO + 16)); C4 (Z_to_bv 64 (1 + Z.of_nat (length trt))); C4 (Z_to_bv 64 0)] ->
  u64arr asegs m (SO + 16) tb -> length tb = 255%nat ->
  map bv_unsigned (firstn (Datatypes.S (length trt)) tb) = pc :: trt ->
  In (pc :: trt) (al_U L) -> (length trt <= 29)%nat ->
  rng RNG lo (bv_unsigned sp - lo) -> rng RNG SO 2056 ->
  4096 <= bv_unsigned ra ->
  implS asegs RNG (aembed ATOP (afree st (Some p)))
        (epostF (afree_post CI (AHEAP_P (AHQ DI ASEC_of AFK)) L RNG ra sp gp tp s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 F fc st LB p lo m))
        (MS (mkR ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6)
            F (Z_to_bv 64 DEALLOCATE_ENTRY) fc None m (seg_rom asegs)).
Proof.
  intros until ms. intros LIVE. intros.
  destruct (Z.le_gt_cases n Q_MAX) as [LE|GT].
  - set (st2 := st_enq (set_live (delete p (a_live st)) st) (CSec mb ms n)).
    destruct (Z.lt_ge_cases Q_CACHE (a_qloc_bytes st2)) as [QC1|NQC].
    + destruct (Z.lt_ge_cases Q_MAX (a_qglob_bytes st2 + a_qloc_bytes st2)) as [REC|NREC].
      * eapply dfn_sec_recycle; try eassumption.
      * eapply (dfn_sec_norecycle DI AFK HL CI CI_OK CI_OK2); try eassumption. intros _. exact NREC.
    + eapply (dfn_sec_norecycle DI AFK HL CI CI_OK CI_OK2); try eassumption. intros QC'. exfalso. subst st2. generalize QC' NQC; clear; intros; lia.
  - eapply (dfn_sec_big DI AFK HL DEPD AFKD CI CI_OK CI_OK2); try eassumption; lia.
Qed.
End S.
End CANSEC1.
End TwB.
End ADfnS_allC.

(* [comment removed for export] *)
Module ASF_allC.
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From stdpp Require Import gmap.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require Import PropExec MState Mem Cells Exec Step Frame Arr Tac ITree Nodes Decode.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA Require Import ExecF ITreeA StepF.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require Import STree.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA Require Import AsanCtrl AsanEmbed.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AImg AProto ABase. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ABytes__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AQConst. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AKitQ__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AMalloc_iface. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ADepot_iface__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ALayout__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AHeapP__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ASec__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AFreeModel__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AFreeModelR AFreeRep AFreeRead. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ARealloc_iface__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ARefillP. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require F_afree_arep__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ASF_fast__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ASF_store__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ADfnS_fast__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AFreeRefillP__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AQrecP__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ASF_storeC__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ADfn_recP__A3W. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AImg OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AProto OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABase OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABytes__A3W.ABytes OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQConst OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKitQ__A3W.AKitQ OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AMalloc_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADepot_iface__A3W.ADepot_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ARep OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ARepQ OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKitQ__A3W.ARepQP OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ALayout OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AHeapP__A3W.AHeapP OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASec__A3W.ASec OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeModel__A3W.AFreeModel OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeModelR OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRep OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRead OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ARealloc_iface__A3W.ARefill_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ARefillP OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_afree_arep__A3W.F_afree_arep OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASec__A3W.ASF_kit OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_fast__A3W.ASF_fast OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_store__A3W.ASF_store OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_fast__A3W.ASF_refill OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_store__A3W.ASF_mid OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_store__A3W.ASF_storeR OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfnS_fast__A3W.ASF_big OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRefillP__A3W.ASF_all OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeC_kit_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.ASF_C_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_storeC__A3W.ASF_storeC OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_storeC__A3W.ASF_storeRC OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeBack OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_recP__A3W.ASF_fastC OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_recP__A3W.ASF_refillC.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA Require Import RunDraw.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require Import NDestr.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

Section CANSEC1. Context {rc : runConstT} {tlsI : ABase.atlsT}.
(* [comment removed for export] *)
#[using="Type"] Local Lemma aobj_int : forall a n, aobj a n -> 0x10000 <= n ->
  6303744 <= a /\ a + n <= ATOP /\ exists k, 0 <= k <= 1 /\ a + n <= 2147446784 + k * 18446744073709551616 /\ 17594333495296 * k <= a.
Proof.
  intros a n H Hn. unfold aobj, sclr, iclr, KLS, AIMG_LO, AIMG_HI in H. pose proof atop_range. (nd_pre H 5%nat; intros H1 H2 H3 H4 H5; nd_post).
  split; [lia|]. split; [lia|]. destruct H4; [exists 0 | exists 1]; lia.
Qed.
#[using="Type"] Local Lemma aobj4_int : forall a, aobj a 4096 ->
  4096 <= a /\ a + 4096 <= ATOP
  /\ (exists k, 0 <= k <= 1 /\ a + 4096 <= 2147446784 + k * 18446744073709551616 /\ 17594333495296 * k <= a)
  /\ (exists j, 0 <= j <= 1 /\ a + 4096 <= 65536 + j * 18446744073709551616 /\ 6303744 * j <= a).
Proof.
  intros a H. unfold aobj, sclr, iclr, KLS, AIMG_LO, AIMG_HI in H. pose proof atop_range. (nd_pre H 5%nat; intros H1 H2 H3 H4 H5; nd_post).
  split; [lia|]. split; [lia|]. split; [destruct H4; [exists 0 | exists 1]; lia | destruct H5 as [_ [H5|H5]]; [exists 0 | exists 1]; lia].
Qed.

Section S.
Variable DI : ADepotIface.
Variable AFK : alayout -> list ablock -> amem -> Prop.
Hypothesis HL : ahole_laws (AHQ DI ASEC_of AFK).
Variable CI : list (Z * Z).
Hypothesis CI_OK : Forall (fun iv => 0x10000 <= fst iv /\ (snd iv <= ADEPOT_LO \/ ADEPOT_HI <= fst iv) /\ snd iv <= AIMG_HI
                                  /\ (snd iv <= 0xab270 \/ 0xab330 <= fst iv)
                                  /\ (snd iv <= 0xaf800 \/ 0x130830 <= fst iv)
                                  /\ (snd iv <= 0x13e088 \/ 0x13e08c <= fst iv)) CI.
Hypothesis CI_OK2 : Forall (fun iv => snd iv <= AINSTANCE \/ AINSTANCE + 728 <= fst iv) CI.
Hypothesis DEPD : depot_frameD_law (ADEPOT DI).
Hypothesis AFKD : fake_frameD_law AFK.

Definition afree_sec_recfastP :=
  afree_sec_recfast DI AFK HL CI CI_OK CI_OK2 DEPD AFKD (store_freeSC DI AFK HL CI CI_OK) (afree_back DI AFK CI).
Definition afree_sec_recrefillP :=
  afree_sec_recrefill DI AFK HL CI CI_OK CI_OK2 DEPD AFKD (mid_kitS DI AFK HL CI CI_OK) (store_freeSRC DI AFK HL CI CI_OK)
                      (REFILLS DI AFK HL) (afree_back DI AFK CI).

(* [comment removed for export] *)
#[using="HL CI_OK CI_OK2 DEPD AFKD"] Theorem afree_sec_recycle : forall (L : alayout) (RNG : footprint)
    (ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 : word)
    (F : bvmap 5 word) (fc : bv 32) (m : amem) (st : astate) (LB : list ablock) (p : aptr) (A n lo : Z) (tr : list Z) (mb ms : Z),
  (a_live st) !! p = Some (CSec mb ms n) -> n <= Q_MAX ->
  let st1 := set_live (delete p (a_live st)) st in
  let st2 := st_enq st1 (CSec mb ms n) in
  Q_CACHE < a_qloc_bytes st2 -> Q_MAX < a_qglob_bytes st2 + a_qloc_bytes st2 ->
  AHEAP_P (AHQ DI ASEC_of AFK) L RNG st LB m -> In (HB p A n) LB ->
  mem_inv asegs m ->
  stk asegs m lo (bv_unsigned sp) -> ATOP + 4096 <= lo -> lo <= bv_unsigned sp - AFREE_STACK ->
  tp = Z_to_bv 64 ATP ->
  a0 = Z_to_bv 64 A ->
  aunw m L RNG lo AFREE_PC sp s0 ra tr ->
  bv_unsigned s0 <> bv_unsigned sp + 8 -> 4096 <= bv_unsigned ra -> bv_unsigned ra <> AFREE_PC ->
  bv_unsigned sp mod 16 = 0 ->
  rng RNG lo (bv_unsigned sp - lo) ->
  implS asegs RNG (aembed ATOP (afree st (Some p)))
        (epostF (afree_post CI (AHEAP_P (AHQ DI ASEC_of AFK)) L RNG ra sp gp tp s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 F fc st LB p lo m))
        (MS (mkR ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6)
            F (Z_to_bv 64 AFREE_SYM) fc None m (seg_rom asegs)).
Proof.
  intros until ms. intros LIVE NQM st1 st2 QC1 REC. intros.
  destruct (Z.lt_ge_cases 0 (c_count (get_cls st K_BATCH_CLASS))) as [POS|Z0].
  - eapply afree_sec_recfastP; try eassumption. intros _. exact POS.
  - destruct (enq_is_app st) eqn:EA.
    + eapply afree_sec_recfastP; try eassumption. intros E. exfalso.
      assert (EA1 : enq_is_app st1 = true) by exact EA. destruct (proj1 (enq_is_app_spec st1 (CSec mb ms n)) EA1) as [s Hs].
      change (enq_app st1 (CSec mb ms n) = None) in E. congruence.
    + assert (CNT0 : c_count (get_cls st K_BATCH_CLASS) = 0).
      { pose proof H as AH. (nd_pre AH 4%nat; intros _ _ [X [AR _]] _; nd_post). destruct AR as (WF & _).
        (nd_pre WF 7%nat; intros _ _ _ _ _ PERC _; nd_post). (nd_pre (PERC K_BATCH_CLASS (K24)) 11%nat; intros _ _ _ _ _ _ _ _ _ CNTB _; nd_post). lia. }
      assert (EAPP : enq_app (set_live (delete p (a_live st)) st) (CSec mb ms n) = None).
      { destruct (enq_app _ _) as [s'|] eqn:E; [exfalso| reflexivity].
        assert (EA1 : enq_is_app (set_live (delete p (a_live st)) st) = true) by (apply (proj2 (enq_is_app_spec _ (CSec mb ms n))); eexists; exact E).
        change (enq_is_app (set_live (delete p (a_live st)) st)) with (enq_is_app st) in EA1. congruence. }
      (pose proof (enq_new_core (CSec mb ms n) (set_live (delete p (a_live st)) st)) as ndP__; nd_pre ndP__ 7%nat; intros _ G1 G2 _ _ L2 _; nd_post).
      subst st2 st1. unfold st_enq in QC1, REC. rewrite EAPP in QC1, REC. rewrite L2 in QC1. rewrite G2, L2 in REC. cbn [chunk_size] in QC1, REC.
      change (a_qloc_bytes (set_live (delete p (a_live st)) st)) with (a_qloc_bytes st) in QC1, REC.
      change (a_qglob_bytes (set_live (delete p (a_live st)) st)) with (a_qglob_bytes st) in REC.
      eapply afree_sec_recrefillP; try eassumption.
      * unfold Q_BATCH_BYTES in QC1. generalize QC1; clear; intros; lia.
      * unfold Q_BATCH_BYTES in QC1, REC. generalize REC; clear; intros; lia.
Qed.

(* [comment removed for export] *)
#[using="HL CI_OK CI_OK2 DEPD AFKD"] Theorem afree_sec_total : forall (L : alayout) (RNG : footprint)
    (ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 : word)
    (F : bvmap 5 word) (fc : bv 32) (m : amem) (st : astate) (LB : list ablock) (p : aptr) (A n lo : Z) (tr : list Z) (mb ms : Z),
  (a_live st) !! p = Some (CSec mb ms n) ->
  AHEAP_P (AHQ DI ASEC_of AFK) L RNG st LB m -> In (HB p A n) LB ->
  mem_inv asegs m ->
  stk asegs m lo (bv_unsigned sp) -> ATOP + 4096 <= lo -> lo <= bv_unsigned sp - AFREE_STACK ->
  tp = Z_to_bv 64 ATP ->
  a0 = Z_to_bv 64 A ->
  aunw m L RNG lo AFREE_PC sp s0 ra tr ->
  bv_unsigned s0 <> bv_unsigned sp + 8 -> 4096 <= bv_unsigned ra -> bv_unsigned ra <> AFREE_PC ->
  bv_unsigned sp mod 16 = 0 ->
  rng RNG lo (bv_unsigned sp - lo) ->
  implS asegs RNG (aembed ATOP (afree st (Some p)))
        (epostF (afree_post CI (AHEAP_P (AHQ DI ASEC_of AFK)) L RNG ra sp gp tp s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 F fc st LB p lo m))
        (MS (mkR ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6)
            F (Z_to_bv 64 AFREE_SYM) fc None m (seg_rom asegs)).
Proof.
  intros until ms. intros LIVE. intros.
  destruct (Z.le_gt_cases n Q_MAX) as [LE|GT].
  - set (st2 := st_enq (set_live (delete p (a_live st)) st) (CSec mb ms n)).
    destruct (Z.lt_ge_cases Q_CACHE (a_qloc_bytes st2)) as [QC1|NQC].
    + destruct (Z.lt_ge_cases Q_MAX (a_qglob_bytes st2 + a_qloc_bytes st2)) as [REC|NREC].
      * eapply afree_sec_recycle; try eassumption.
      * eapply (afree_sec_norecycle DI AFK HL CI CI_OK CI_OK2); try eassumption. intros _. exact NREC.
    + eapply (afree_sec_norecycle DI AFK HL CI CI_OK CI_OK2); try eassumption. intros QC'. exfalso. subst st2. generalize QC' NQC; clear; intros; lia.
  - eapply (afree_sec_big DI AFK HL DEPD AFKD CI CI_OK CI_OK2); try eassumption; lia.
Qed.
End S.
End CANSEC1.

(* [comment removed for export] *)

Module TwB.
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
Import Stdlib.ZArith.ZArith Stdlib.NArith.NArith Stdlib.Lists.List Stdlib.micromega.Lia Stdlib.Bool.Bool.
Import stdpp.gmap.
Import LinuxProcessSemantics.LinuxProcessSem.BvBase LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics LinuxProcessSemantics.LinuxProcessSem.MemImageType LinuxProcessSemantics.LinuxProcessSem.State LinuxProcessSemantics.LinuxProcessSem.Run.
Import LinuxProcessSemantics.Riscv.Prelude LinuxProcessSemantics.Riscv.Instr LinuxProcessSemantics.Riscv.Decode LinuxProcessSemantics.Riscv.DecodeC LinuxProcessSemantics.Riscv.Sem LinuxProcessSemantics.Riscv.Fpu.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.PropExec OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.MState OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Mem OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Cells OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Exec OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Step OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Frame OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Arr OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Tac OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.ITree OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Nodes OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Decode.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.ExecF OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.ITreeA OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.StepF.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.STree.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA.AsanCtrl OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA.AsanEmbed.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AImg.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AProto.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABase.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABytes__A3W.ABytes.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQConst.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKitQ__A3W.AKitQ.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AMalloc_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADepot_iface__A3W.ADepot_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ARep.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ARepQ.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKitQ__A3W.ARepQP.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ALayout.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AHeapP__A3W.AHeapP.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASec__A3W.ASec.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeModel__A3W.AFreeModel.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeModelR.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRep.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRead.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ARealloc_iface__A3W.ARefill_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ARefillP.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_afree_arep__A3W.F_afree_arep.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASec__A3W.ASF_kit.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_fast__A3W.ASF_fast.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_store__A3W.ASF_store.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_fast__A3W.ASF_refill.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_store__A3W.ASF_mid.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_store__A3W.ASF_storeR.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfnS_fast__A3W.ASF_big.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRefillP__A3W.ASF_all.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeC_kit_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.ASF_C_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_storeC__A3W.ASF_storeC.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_storeC__A3W.ASF_storeRC.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeBack.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_recP__A3W.ASF_fastC.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_recP__A3W.ASF_refillC.TwB.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.RunDraw. Local Ltac Zify.zify_pre_hook ::= OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABase.TwB.twm_hook_1. Local Ltac OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Step.addr_diff E A ::= OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKit2.TwB.twm_hook_1 E A. Local Ltac OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.ZBridge.flia ::= OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_arecyc1.TwB.twm_hook_1.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

Section CANSEC1. Context {rc : runConstT} {tlsI : A3W.ABase.TwB.atlsT}.
(* [comment removed for export] *)
#[using="Type"] Local Lemma aobj_int : forall a n, aobj a n -> 0x10000 <= n ->
  6307840 <= a /\ a + n <= ATOP /\ exists k, 0 <= k <= 1 /\ a + n <= 2147446784 + k * 18446744073709551616 /\ 17594333495296 * k <= a.
Proof.
  intros a n H Hn. unfold aobj, sclr, iclr, KLS, AIMG_LO, AIMG_HI in H. pose proof atop_range. (nd_pre H 5%nat; intros H1 H2 H3 H4 H5; nd_post).
  split; [lia|]. split; [lia|]. destruct H4; [exists 0 | exists 1]; lia.
Qed.
#[using="Type"] Local Lemma aobj4_int : forall a, aobj a 4096 ->
  4096 <= a /\ a + 4096 <= ATOP
  /\ (exists k, 0 <= k <= 1 /\ a + 4096 <= 2147446784 + k * 18446744073709551616 /\ 17594333495296 * k <= a)
  /\ (exists j, 0 <= j <= 1 /\ a + 4096 <= 65536 + j * 18446744073709551616 /\ 6307840 * j <= a).
Proof.
  intros a H. unfold aobj, sclr, iclr, KLS, AIMG_LO, AIMG_HI in H. pose proof atop_range. (nd_pre H 5%nat; intros H1 H2 H3 H4 H5; nd_post).
  split; [lia|]. split; [lia|]. split; [destruct H4; [exists 0 | exists 1]; lia | destruct H5 as [_ [H5|H5]]; [exists 0 | exists 1]; lia].
Qed.

Section S.
Variable DI : ADepotIface.
Variable AFK : alayout -> list ablock -> amem -> Prop.
Hypothesis HL : ahole_laws (AHQ DI ASEC_of AFK).
Variable CI : list (Z * Z).
Hypothesis CI_OK : Forall (fun iv => 0x10000 <= fst iv /\ (snd iv <= ADEPOT_LO \/ ADEPOT_HI <= fst iv) /\ snd iv <= AIMG_HI
                                  /\ (snd iv <= 0xab670 \/ 0xab730 <= fst iv)
                                  /\ (snd iv <= 0xafc00 \/ 0x130c30 <= fst iv)
                                  /\ (snd iv <= 0x13e488 \/ 0x13e48c <= fst iv)) CI.
Hypothesis CI_OK2 : Forall (fun iv => snd iv <= AINSTANCE \/ AINSTANCE + 728 <= fst iv) CI.
Hypothesis DEPD : depot_frameD_law (ADEPOT DI).
Hypothesis AFKD : fake_frameD_law AFK.

Definition afree_sec_recfastP :=
  afree_sec_recfast DI AFK HL CI CI_OK CI_OK2 DEPD AFKD (store_freeSC DI AFK HL CI CI_OK) (afree_back DI AFK CI).
Definition afree_sec_recrefillP :=
  afree_sec_recrefill DI AFK HL CI CI_OK CI_OK2 DEPD AFKD (mid_kitS DI AFK HL CI CI_OK) (store_freeSRC DI AFK HL CI CI_OK)
                      (REFILLS DI AFK HL) (afree_back DI AFK CI).

(* [comment removed for export] *)
#[using="HL CI_OK CI_OK2 DEPD AFKD"] Theorem afree_sec_recycle : forall (L : alayout) (RNG : footprint)
    (ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 : word)
    (F : bvmap 5 word) (fc : bv 32) (m : amem) (st : astate) (LB : list ablock) (p : aptr) (A n lo : Z) (tr : list Z) (mb ms : Z),
  (a_live st) !! p = Some (CSec mb ms n) -> n <= Q_MAX ->
  let st1 := set_live (delete p (a_live st)) st in
  let st2 := st_enq st1 (CSec mb ms n) in
  Q_CACHE < a_qloc_bytes st2 -> Q_MAX < a_qglob_bytes st2 + a_qloc_bytes st2 ->
  AHEAP_P (AHQ DI ASEC_of AFK) L RNG st LB m -> In (HB p A n) LB ->
  mem_inv asegs m ->
  stk asegs m lo (bv_unsigned sp) -> ATOP + 4096 <= lo -> lo <= bv_unsigned sp - AFREE_STACK ->
  tp = Z_to_bv 64 ATP ->
  a0 = Z_to_bv 64 A ->
  aunw m L RNG lo AFREE_PC sp s0 ra tr ->
  bv_unsigned s0 <> bv_unsigned sp + 8 -> 4096 <= bv_unsigned ra -> bv_unsigned ra <> AFREE_PC ->
  bv_unsigned sp mod 16 = 0 ->
  rng RNG lo (bv_unsigned sp - lo) ->
  implS asegs RNG (aembed ATOP (afree st (Some p)))
        (epostF (afree_post CI (AHEAP_P (AHQ DI ASEC_of AFK)) L RNG ra sp gp tp s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 F fc st LB p lo m))
        (MS (mkR ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6)
            F (Z_to_bv 64 AFREE_SYM) fc None m (seg_rom asegs)).
Proof.
  intros until ms. intros LIVE NQM st1 st2 QC1 REC. intros.
  destruct (Z.lt_ge_cases 0 (c_count (get_cls st K_BATCH_CLASS))) as [POS|Z0].
  - eapply afree_sec_recfastP; try eassumption. intros _. exact POS.
  - destruct (enq_is_app st) eqn:EA.
    + eapply afree_sec_recfastP; try eassumption. intros E. exfalso.
      assert (EA1 : enq_is_app st1 = true) by exact EA. destruct (proj1 (enq_is_app_spec st1 (CSec mb ms n)) EA1) as [s Hs].
      change (enq_app st1 (CSec mb ms n) = None) in E. congruence.
    + assert (CNT0 : c_count (get_cls st K_BATCH_CLASS) = 0).
      { pose proof H as AH. (nd_pre AH 4%nat; intros _ _ [X [AR _]] _; nd_post). destruct AR as (WF & _).
        (nd_pre WF 7%nat; intros _ _ _ _ _ PERC _; nd_post). (nd_pre (PERC K_BATCH_CLASS (K24)) 11%nat; intros _ _ _ _ _ _ _ _ _ CNTB _; nd_post). lia. }
      assert (EAPP : enq_app (set_live (delete p (a_live st)) st) (CSec mb ms n) = None).
      { destruct (enq_app _ _) as [s'|] eqn:E; [exfalso| reflexivity].
        assert (EA1 : enq_is_app (set_live (delete p (a_live st)) st) = true) by (apply (proj2 (enq_is_app_spec _ (CSec mb ms n))); eexists; exact E).
        change (enq_is_app (set_live (delete p (a_live st)) st)) with (enq_is_app st) in EA1. congruence. }
      (pose proof (enq_new_core (CSec mb ms n) (set_live (delete p (a_live st)) st)) as ndP__; nd_pre ndP__ 7%nat; intros _ G1 G2 _ _ L2 _; nd_post).
      subst st2 st1. unfold st_enq in QC1, REC. rewrite EAPP in QC1, REC. rewrite L2 in QC1. rewrite G2, L2 in REC. cbn [chunk_size] in QC1, REC.
      change (a_qloc_bytes (set_live (delete p (a_live st)) st)) with (a_qloc_bytes st) in QC1, REC.
      change (a_qglob_bytes (set_live (delete p (a_live st)) st)) with (a_qglob_bytes st) in REC.
      eapply afree_sec_recrefillP; try eassumption.
      * unfold Q_BATCH_BYTES in QC1. generalize QC1; clear; intros; lia.
      * unfold Q_BATCH_BYTES in QC1, REC. generalize REC; clear; intros; lia.
Qed.

(* [comment removed for export] *)
#[using="HL CI_OK CI_OK2 DEPD AFKD"] Theorem afree_sec_total : forall (L : alayout) (RNG : footprint)
    (ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 : word)
    (F : bvmap 5 word) (fc : bv 32) (m : amem) (st : astate) (LB : list ablock) (p : aptr) (A n lo : Z) (tr : list Z) (mb ms : Z),
  (a_live st) !! p = Some (CSec mb ms n) ->
  AHEAP_P (AHQ DI ASEC_of AFK) L RNG st LB m -> In (HB p A n) LB ->
  mem_inv asegs m ->
  stk asegs m lo (bv_unsigned sp) -> ATOP + 4096 <= lo -> lo <= bv_unsigned sp - AFREE_STACK ->
  tp = Z_to_bv 64 ATP ->
  a0 = Z_to_bv 64 A ->
  aunw m L RNG lo AFREE_PC sp s0 ra tr ->
  bv_unsigned s0 <> bv_unsigned sp + 8 -> 4096 <= bv_unsigned ra -> bv_unsigned ra <> AFREE_PC ->
  bv_unsigned sp mod 16 = 0 ->
  rng RNG lo (bv_unsigned sp - lo) ->
  implS asegs RNG (aembed ATOP (afree st (Some p)))
        (epostF (afree_post CI (AHEAP_P (AHQ DI ASEC_of AFK)) L RNG ra sp gp tp s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 F fc st LB p lo m))
        (MS (mkR ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6)
            F (Z_to_bv 64 AFREE_SYM) fc None m (seg_rom asegs)).
Proof.
  intros until ms. intros LIVE. intros.
  destruct (Z.le_gt_cases n Q_MAX) as [LE|GT].
  - set (st2 := st_enq (set_live (delete p (a_live st)) st) (CSec mb ms n)).
    destruct (Z.lt_ge_cases Q_CACHE (a_qloc_bytes st2)) as [QC1|NQC].
    + destruct (Z.lt_ge_cases Q_MAX (a_qglob_bytes st2 + a_qloc_bytes st2)) as [REC|NREC].
      * eapply afree_sec_recycle; try eassumption.
      * eapply (afree_sec_norecycle DI AFK HL CI CI_OK CI_OK2); try eassumption. intros _. exact NREC.
    + eapply (afree_sec_norecycle DI AFK HL CI CI_OK CI_OK2); try eassumption. intros QC'. exfalso. subst st2. generalize QC' NQC; clear; intros; lia.
  - eapply (afree_sec_big DI AFK HL DEPD AFKD CI CI_OK CI_OK2); try eassumption; lia.
Qed.
End S.
End CANSEC1.
End TwB.
End ASF_allC.

(* [comment removed for export] *)
Module ADeallocFn.
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From stdpp Require Import gmap.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require Import PropExec MState Mem Cells Exec Step Frame Arr Tac ITree Nodes Decode.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA Require Import ExecF ITreeA StepF.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require Import STree.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA Require Import AsanCtrl AsanEmbed.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AImg AProto ABase. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ABytes__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AQConst. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AKitQ__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AMalloc_iface. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ADepot_iface__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ALayout__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AHeapP__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AFreeModel__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AFreeModelR AFreeRep AFreeRead. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ASec__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require F_afree_arep__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ASF_fast__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AFreeRefillP__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AQrecP__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AHolesD. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ADfn_recP__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ADepot_tabscan__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AFake_iface AFake_arep. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ASecSlog__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AKitR__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ADfn_storeC__A3W. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AImg OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AProto OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABase OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABytes__A3W.ABytes OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQConst OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKitQ__A3W.AKitQ OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AMalloc_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADepot_iface__A3W.ADepot_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ARep OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ARepQ OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKitQ__A3W.ARepQP OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ALayout OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AHeapP__A3W.AHeapP OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeModel__A3W.AFreeModel OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeModelR OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRep OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRead OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASec__A3W.ASec OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_afree_arep__A3W.F_afree_arep OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_fast__A3W.F_afree_arepR OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRefillP__A3W.AFreeRefillP OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeC_kit_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeRC_kit_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeStoreC OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeStoreRC OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeBack OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASec__A3W.ASF_kit OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AHolesD OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_recP__A3W.AFreeRecP OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_recP__A3W.AFreeRecRP OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfnS_allC__A3W.ASF_allC OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADepot_tabscan__A3W.F_adepot OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFake_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFake_arep OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASecSlog__A3W.AFn_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKitR__A3W.ADeallocFn_kit OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.ADfnC_kit_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.ADfnRC_kit_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.ADfn_back OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_storeC__A3W.ADfn_storeC OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_storeC__A3W.ADfn_storeRC OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRefillP__A3W.ADfn_refillP OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_recP__A3W.ADfn_recP OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_recP__A3W.ADfn_recRP OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfnS_allC__A3W.ADfnS_allC.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA Require Import RunDraw.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require Import NDestr.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

Section CANSEC1. Context {rc : runConstT} {tlsI : ABase.atlsT}.
Section S.
Variable DI : ADepotIface.
Variable AFK : alayout -> list ablock -> amem -> Prop.
Hypothesis HL : ahole_laws (AHQ DI ASEC_of AFK).
Variable CI : list (Z * Z).
Hypothesis CI_OK : Forall (fun iv => 0x10000 <= fst iv /\ (snd iv <= ADEPOT_LO \/ ADEPOT_HI <= fst iv) /\ snd iv <= AIMG_HI
                                  /\ (snd iv <= 0xab270 \/ 0xab330 <= fst iv)
                                  /\ (snd iv <= 0xaf800 \/ 0x130830 <= fst iv)
                                  /\ (snd iv <= 0x13e088 \/ 0x13e08c <= fst iv)) CI.
Hypothesis CI_OK2 : Forall (fun iv => snd iv <= AINSTANCE \/ AINSTANCE + 728 <= fst iv) CI.
Hypothesis DEPD : depot_frameD_law (ADEPOT DI).
Hypothesis AFKD : fake_frameD_law AFK.

Definition dfn_recPP :=
  dfn_recP DI AFK HL CI CI_OK CI_OK2 DEPD AFKD (dfn_store_freeC DI AFK HL CI CI_OK) (dfn_back DI AFK CI).
Definition dfn_recRPP :=
  dfn_recRP DI AFK HL CI CI_OK CI_OK2 DEPD AFKD (dfn_store_freeRC DI AFK HL CI CI_OK) (dfn_back DI AFK CI).

(* [comment removed for export] *)
#[using="HL CI_OK CI_OK2 DEPD AFKD"] Theorem dfn_prim_total : forall (L : alayout) (RNG : footprint)
    (ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 : word)
    (F : bvmap 5 word) (fc : bv 32) (m : amem) (st : astate) (LB : list ablock) (p : aptr) (A n lo SO pc : Z) (trt : list Z) (tb : list word) (c : Z),
  (a_live st) !! p = Some (CPrim c n) -> 1 <= n ->
  AHEAP_P (AHQ DI ASEC_of AFK) L RNG st LB m -> In (HB p A n) LB ->
  mem_inv asegs m ->
  stk asegs m lo (bv_unsigned sp) -> ATOP + 4096 <= lo -> lo <= bv_unsigned sp - AFREE_STACK ->
  tp = Z_to_bv 64 ATP ->
  a0 = Z_to_bv 64 AINSTANCE -> a1 = Z_to_bv 64 A -> a2 = Z_to_bv 64 0 -> a3 = Z_to_bv 64 0 -> a4 = Z_to_bv 64 SO -> a5 = Z_to_bv 64 1 ->
  rw_cells asegs m 0x13e088 [C1 (Z_to_bv 8 1); C1 (Z_to_bv 8 0); C1 (Z_to_bv 8 0); C1 (Z_to_bv 8 0)] ->
  bv_unsigned sp <= SO -> SO + 2056 <= 2^47 ->
  rw_cells asegs m SO [C8 (Z_to_bv 64 (SO + 16)); C4 (Z_to_bv 64 (1 + Z.of_nat (length trt))); C4 (Z_to_bv 64 0)] ->
  u64arr asegs m (SO + 16) tb -> length tb = 255%nat ->
  map bv_unsigned (firstn (Datatypes.S (length trt)) tb) = pc :: trt ->
  In (pc :: trt) (al_U L) -> (length trt <= 29)%nat ->
  rng RNG lo (bv_unsigned sp - lo) -> rng RNG SO 2056 ->
  implS asegs RNG (aembed ATOP (afree st (Some p)))
        (epostF (afree_post CI (AHEAP_P (AHQ DI ASEC_of AFK)) L RNG ra sp gp tp s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 F fc st LB p lo m))
        (MS (mkR ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6)
            F (Z_to_bv 64 DEALLOCATE_ENTRY) fc None m (seg_rom asegs)).
Proof.
  intros until c. intros LIVE N1. intros.
  set (st1 := set_live (delete p (a_live st)) st).
  set (st2 := st_enq st1 (CPrim c n)).
  destruct (Z.lt_ge_cases Q_CACHE (a_qloc_bytes st2)) as [QC1|QC0];
    [destruct (Z.lt_ge_cases Q_MAX (a_qglob_bytes st2 + a_qloc_bytes st2)) as [REC|NR]|].
  - (* [comment removed for export] *)
    destruct (Z.lt_ge_cases 0 (c_count (get_cls st K_BATCH_CLASS))) as [POS|Z0].
    + eapply dfn_recPP; try eassumption. intros _. exact POS.
    + destruct (enq_is_app st) eqn:EA.
      * eapply dfn_recPP; try eassumption. intros E. exfalso.
        assert (EA1 : enq_is_app st1 = true) by exact EA. destruct (proj1 (enq_is_app_spec st1 (CPrim c n)) EA1) as [s Hs].
        change (enq_app st1 (CPrim c n) = None) in E. congruence.
      * assert (CNT0 : c_count (get_cls st K_BATCH_CLASS) = 0).
        { pose proof H as AH. (nd_pre AH 4%nat; intros _ _ [X [AR _]] _; nd_post). destruct AR as (WF & _).
          (nd_pre WF 7%nat; intros _ _ _ _ _ PERC _; nd_post). (nd_pre (PERC K_BATCH_CLASS (K24)) 11%nat; intros _ _ _ _ _ _ _ _ _ CNTB _; nd_post). lia. }
        eapply dfn_recRPP; try eassumption.
  - (* [comment removed for export] *)
    eapply (dfn_norecycle DI ASEC_of AFK HL CI CI_OK CI_OK2); try eassumption. intros _. exact NR.
  - (* [comment removed for export] *)
    eapply (dfn_norecycle DI ASEC_of AFK HL CI CI_OK CI_OK2); try eassumption. intros LT. exfalso. subst st2 st1. lia.
Qed.

(* [comment removed for export] *)
#[using="HL CI_OK CI_OK2 DEPD AFKD"] Theorem deallocfn_total : deallocfn_stmt CI (AHEAP_P (AHQ DI ASEC_of AFK)).
Proof.
  unfold deallocfn_stmt. intros until tb. intros AH HIN. intros.
  pose proof AH as AH0. (nd_pre AH0 4%nat; intros ALO ARNG [X [AR BL]] HFK; nd_post).
  destruct (proj1 BL p A n HIN) as [(b & Hb & Sb & Ub & Nb)|(mb & ms & Lp & _)].
  - pose proof AR as AR0. destruct AR0 as (WF & _). pose proof WF as WF0. (nd_pre WF0 9%nat; intros _ _ _ _ _ _ _ BUSY _; nd_post).
    destruct (BUSY b Hb) as [CLb M]. rewrite Sb in M. (nd_pre M 6%nat; intros Nb1 _ _ _ _ LIVE; nd_post). rewrite Nb in Nb1, LIVE.
    eapply dfn_prim_total with (c := xb_class b); try eassumption. lia.
  - eapply (dfn_sec_total DI AFK HL CI CI_OK CI_OK2 DEPD AFKD); eassumption.
Qed.
End S.

End CANSEC1.

(* [comment removed for export] *)

Module TwB.
(* [comment removed for export] *)
(* [comment removed for export] *)
Import Stdlib.ZArith.ZArith Stdlib.NArith.NArith Stdlib.Lists.List Stdlib.micromega.Lia Stdlib.Bool.Bool.
Import stdpp.gmap.
Import LinuxProcessSemantics.LinuxProcessSem.BvBase LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics LinuxProcessSemantics.LinuxProcessSem.MemImageType LinuxProcessSemantics.LinuxProcessSem.State LinuxProcessSemantics.LinuxProcessSem.Run.
Import LinuxProcessSemantics.Riscv.Prelude LinuxProcessSemantics.Riscv.Instr LinuxProcessSemantics.Riscv.Decode LinuxProcessSemantics.Riscv.DecodeC LinuxProcessSemantics.Riscv.Sem LinuxProcessSemantics.Riscv.Fpu.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.PropExec OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.MState OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Mem OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Cells OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Exec OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Step OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Frame OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Arr OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Tac OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.ITree OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Nodes OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Decode.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.ExecF OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.ITreeA OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.StepF.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.STree.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA.AsanCtrl OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA.AsanEmbed.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AImg.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AProto.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABase.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABytes__A3W.ABytes.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQConst.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKitQ__A3W.AKitQ.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AMalloc_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADepot_iface__A3W.ADepot_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ARep.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ARepQ.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKitQ__A3W.ARepQP.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ALayout.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AHeapP__A3W.AHeapP.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeModel__A3W.AFreeModel.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeModelR.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRep.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRead.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASec__A3W.ASec.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_afree_arep__A3W.F_afree_arep.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_fast__A3W.F_afree_arepR.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRefillP__A3W.AFreeRefillP.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeC_kit_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeRC_kit_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeStoreC.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeStoreRC.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeBack.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASec__A3W.ASF_kit.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AHolesD.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_recP__A3W.AFreeRecP.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_recP__A3W.AFreeRecRP.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfnS_allC__A3W.ASF_allC.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADepot_tabscan__A3W.F_adepot.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFake_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFake_arep.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASecSlog__A3W.AFn_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKitR__A3W.ADeallocFn_kit.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.ADfnC_kit_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.ADfnRC_kit_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.ADfn_back.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_storeC__A3W.ADfn_storeC.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_storeC__A3W.ADfn_storeRC.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRefillP__A3W.ADfn_refillP.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_recP__A3W.ADfn_recP.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_recP__A3W.ADfn_recRP.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfnS_allC__A3W.ADfnS_allC.TwB.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.RunDraw. Local Ltac Zify.zify_pre_hook ::= OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABase.TwB.twm_hook_1. Local Ltac OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Step.addr_diff E A ::= OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKit2.TwB.twm_hook_1 E A. Local Ltac OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.ZBridge.flia ::= OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_arecyc1.TwB.twm_hook_1.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

Section CANSEC1. Context {rc : runConstT} {tlsI : A3W.ABase.TwB.atlsT}.
Section S.
Variable DI : ADepotIface.
Variable AFK : alayout -> list ablock -> amem -> Prop.
Hypothesis HL : ahole_laws (AHQ DI ASEC_of AFK).
Variable CI : list (Z * Z).
Hypothesis CI_OK : Forall (fun iv => 0x10000 <= fst iv /\ (snd iv <= ADEPOT_LO \/ ADEPOT_HI <= fst iv) /\ snd iv <= AIMG_HI
                                  /\ (snd iv <= 0xab670 \/ 0xab730 <= fst iv)
                                  /\ (snd iv <= 0xafc00 \/ 0x130c30 <= fst iv)
                                  /\ (snd iv <= 0x13e488 \/ 0x13e48c <= fst iv)) CI.
Hypothesis CI_OK2 : Forall (fun iv => snd iv <= AINSTANCE \/ AINSTANCE + 728 <= fst iv) CI.
Hypothesis DEPD : depot_frameD_law (ADEPOT DI).
Hypothesis AFKD : fake_frameD_law AFK.

Definition dfn_recPP :=
  dfn_recP DI AFK HL CI CI_OK CI_OK2 DEPD AFKD (dfn_store_freeC DI AFK HL CI CI_OK) (dfn_back DI AFK CI).
Definition dfn_recRPP :=
  dfn_recRP DI AFK HL CI CI_OK CI_OK2 DEPD AFKD (dfn_store_freeRC DI AFK HL CI CI_OK) (dfn_back DI AFK CI).

(* [comment removed for export] *)
#[using="HL CI_OK CI_OK2 DEPD AFKD"] Theorem dfn_prim_total : forall (L : alayout) (RNG : footprint)
    (ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 : word)
    (F : bvmap 5 word) (fc : bv 32) (m : amem) (st : astate) (LB : list ablock) (p : aptr) (A n lo SO pc : Z) (trt : list Z) (tb : list word) (c : Z),
  (a_live st) !! p = Some (CPrim c n) -> 1 <= n ->
  AHEAP_P (AHQ DI ASEC_of AFK) L RNG st LB m -> In (HB p A n) LB ->
  mem_inv asegs m ->
  stk asegs m lo (bv_unsigned sp) -> ATOP + 4096 <= lo -> lo <= bv_unsigned sp - AFREE_STACK ->
  tp = Z_to_bv 64 ATP ->
  a0 = Z_to_bv 64 AINSTANCE -> a1 = Z_to_bv 64 A -> a2 = Z_to_bv 64 0 -> a3 = Z_to_bv 64 0 -> a4 = Z_to_bv 64 SO -> a5 = Z_to_bv 64 1 ->
  rw_cells asegs m 0x13e488 [C1 (Z_to_bv 8 1); C1 (Z_to_bv 8 0); C1 (Z_to_bv 8 0); C1 (Z_to_bv 8 0)] ->
  bv_unsigned sp <= SO -> SO + 2056 <= 2^47 ->
  rw_cells asegs m SO [C8 (Z_to_bv 64 (SO + 16)); C4 (Z_to_bv 64 (1 + Z.of_nat (length trt))); C4 (Z_to_bv 64 0)] ->
  u64arr asegs m (SO + 16) tb -> length tb = 255%nat ->
  map bv_unsigned (firstn (Datatypes.S (length trt)) tb) = pc :: trt ->
  In (pc :: trt) (al_U L) -> (length trt <= 29)%nat ->
  rng RNG lo (bv_unsigned sp - lo) -> rng RNG SO 2056 ->
  implS asegs RNG (aembed ATOP (afree st (Some p)))
        (epostF (afree_post CI (AHEAP_P (AHQ DI ASEC_of AFK)) L RNG ra sp gp tp s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 F fc st LB p lo m))
        (MS (mkR ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6)
            F (Z_to_bv 64 DEALLOCATE_ENTRY) fc None m (seg_rom asegs)).
Proof.
  intros until c. intros LIVE N1. intros.
  set (st1 := set_live (delete p (a_live st)) st).
  set (st2 := st_enq st1 (CPrim c n)).
  destruct (Z.lt_ge_cases Q_CACHE (a_qloc_bytes st2)) as [QC1|QC0];
    [destruct (Z.lt_ge_cases Q_MAX (a_qglob_bytes st2 + a_qloc_bytes st2)) as [REC|NR]|].
  - (* [comment removed for export] *)
    destruct (Z.lt_ge_cases 0 (c_count (get_cls st K_BATCH_CLASS))) as [POS|Z0].
    + eapply dfn_recPP; try eassumption. intros _. exact POS.
    + destruct (enq_is_app st) eqn:EA.
      * eapply dfn_recPP; try eassumption. intros E. exfalso.
        assert (EA1 : enq_is_app st1 = true) by exact EA. destruct (proj1 (enq_is_app_spec st1 (CPrim c n)) EA1) as [s Hs].
        change (enq_app st1 (CPrim c n) = None) in E. congruence.
      * assert (CNT0 : c_count (get_cls st K_BATCH_CLASS) = 0).
        { pose proof H as AH. (nd_pre AH 4%nat; intros _ _ [X [AR _]] _; nd_post). destruct AR as (WF & _).
          (nd_pre WF 7%nat; intros _ _ _ _ _ PERC _; nd_post). (nd_pre (PERC K_BATCH_CLASS (K24)) 11%nat; intros _ _ _ _ _ _ _ _ _ CNTB _; nd_post). lia. }
        eapply dfn_recRPP; try eassumption.
  - (* [comment removed for export] *)
    eapply (dfn_norecycle DI ASEC_of AFK HL CI CI_OK CI_OK2); try eassumption. intros _. exact NR.
  - (* [comment removed for export] *)
    eapply (dfn_norecycle DI ASEC_of AFK HL CI CI_OK CI_OK2); try eassumption. intros LT. exfalso. subst st2 st1. lia.
Qed.

(* [comment removed for export] *)
#[using="HL CI_OK CI_OK2 DEPD AFKD"] Theorem deallocfn_total : deallocfn_stmt CI (AHEAP_P (AHQ DI ASEC_of AFK)).
Proof.
  unfold deallocfn_stmt. intros until tb. intros AH HIN. intros.
  pose proof AH as AH0. (nd_pre AH0 4%nat; intros ALO ARNG [X [AR BL]] HFK; nd_post).
  destruct (proj1 BL p A n HIN) as [(b & Hb & Sb & Ub & Nb)|(mb & ms & Lp & _)].
  - pose proof AR as AR0. destruct AR0 as (WF & _). pose proof WF as WF0. (nd_pre WF0 9%nat; intros _ _ _ _ _ _ _ BUSY _; nd_post).
    destruct (BUSY b Hb) as [CLb M]. rewrite Sb in M. (nd_pre M 6%nat; intros Nb1 _ _ _ _ LIVE; nd_post). rewrite Nb in Nb1, LIVE.
    eapply dfn_prim_total with (c := xb_class b); try eassumption. lia.
  - eapply (dfn_sec_total DI AFK HL CI CI_OK CI_OK2 DEPD AFKD); eassumption.
Qed.
End S.

End CANSEC1.
End TwB.
End ADeallocFn.

(* [comment removed for export] *)
Module AFreeAll.
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From stdpp Require Import gmap.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require Import PropExec MState Mem Cells Exec Step Frame Arr Tac ITree Nodes Decode.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA Require Import ExecF ITreeA StepF.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require Import STree.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA Require Import AsanCtrl AsanEmbed.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AImg AProto ABase. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ABytes__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AQConst. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AKitQ__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AMalloc_iface. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ADepot_iface__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ALayout__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AHeapP__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AFreeModel__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AFreeModelR AFreeRep AFreeRead. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ASec__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require F_afree_arep__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ASF_fast__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AFreeRefillP__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AQrecP__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AHolesD. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ADfn_recP__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ADepot_tabscan__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AFake_iface AFake_arep. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AImg OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AProto OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABase OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABytes__A3W.ABytes OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQConst OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKitQ__A3W.AKitQ OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AMalloc_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADepot_iface__A3W.ADepot_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ARep OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ARepQ OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKitQ__A3W.ARepQP OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ALayout OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AHeapP__A3W.AHeapP OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeModel__A3W.AFreeModel OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeModelR OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRep OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRead OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASec__A3W.ASec OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_afree_arep__A3W.F_afree_arep OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_fast__A3W.F_afree_arepR OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRefillP__A3W.AFreeRefillP OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeC_kit_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeRC_kit_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeStoreC OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeStoreRC OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeBack OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASec__A3W.ASF_kit OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AHolesD OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_recP__A3W.AFreeRecP OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_recP__A3W.AFreeRecRP OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfnS_allC__A3W.ASF_allC OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADepot_tabscan__A3W.F_adepot OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFake_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFake_arep.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA Require Import RunDraw.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require Import NDestr.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

Section CANSEC1. Context {rc : runConstT} {tlsI : ABase.atlsT}.
Section S.
Variable DI : ADepotIface.
Variable AFK : alayout -> list ablock -> amem -> Prop.
Hypothesis HL : ahole_laws (AHQ DI ASEC_of AFK).
Variable CI : list (Z * Z).
Hypothesis CI_OK : Forall (fun iv => 0x10000 <= fst iv /\ (snd iv <= ADEPOT_LO \/ ADEPOT_HI <= fst iv) /\ snd iv <= AIMG_HI
                                  /\ (snd iv <= 0xab270 \/ 0xab330 <= fst iv)
                                  /\ (snd iv <= 0xaf800 \/ 0x130830 <= fst iv)
                                  /\ (snd iv <= 0x13e088 \/ 0x13e08c <= fst iv)) CI.
Hypothesis CI_OK2 : Forall (fun iv => snd iv <= AINSTANCE \/ AINSTANCE + 728 <= fst iv) CI.
Hypothesis DEPD : depot_frameD_law (ADEPOT DI).
Hypothesis AFKD : fake_frameD_law AFK.

Definition afree_recPP :=
  afree_recP DI AFK HL CI CI_OK CI_OK2 DEPD AFKD (store_freeC DI AFK HL CI CI_OK) (afree_back DI AFK CI).
Definition afree_recRPP :=
  afree_recRP DI AFK HL CI CI_OK CI_OK2 DEPD AFKD (store_freeRC DI AFK HL CI CI_OK) (afree_back DI AFK CI).

(* [comment removed for export] *)
#[using="HL CI_OK CI_OK2 DEPD AFKD"] Theorem afree_prim_total : forall (L : alayout) (RNG : footprint)
    (ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 : word)
    (F : bvmap 5 word) (fc : bv 32) (m : amem) (st : astate) (LB : list ablock) (p : aptr) (A n lo : Z) (tr : list Z) (c : Z),
  (a_live st) !! p = Some (CPrim c n) -> 1 <= n ->
  AHEAP_P (AHQ DI ASEC_of AFK) L RNG st LB m -> In (HB p A n) LB ->
  mem_inv asegs m ->
  stk asegs m lo (bv_unsigned sp) -> ATOP + 4096 <= lo -> lo <= bv_unsigned sp - AFREE_STACK ->
  tp = Z_to_bv 64 ATP ->
  a0 = Z_to_bv 64 A ->
  aunw m L RNG lo AFREE_PC sp s0 ra tr ->
  bv_unsigned s0 <> bv_unsigned sp + 8 -> 4096 <= bv_unsigned ra -> bv_unsigned ra <> AFREE_PC ->
  bv_unsigned sp mod 16 = 0 ->
  rng RNG lo (bv_unsigned sp - lo) ->
  implS asegs RNG (aembed ATOP (afree st (Some p)))
        (epostF (afree_post CI (AHEAP_P (AHQ DI ASEC_of AFK)) L RNG ra sp gp tp s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 F fc st LB p lo m))
        (MS (mkR ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6)
            F (Z_to_bv 64 AFREE_SYM) fc None m (seg_rom asegs)).
Proof.
  intros until c. intros LIVE N1. intros.
  set (st1 := set_live (delete p (a_live st)) st).
  set (st2 := st_enq st1 (CPrim c n)).
  destruct (Z.lt_ge_cases Q_CACHE (a_qloc_bytes st2)) as [QC1|QC0];
    [destruct (Z.lt_ge_cases Q_MAX (a_qglob_bytes st2 + a_qloc_bytes st2)) as [REC|NR]|].
  - (* [comment removed for export] *)
    destruct (Z.lt_ge_cases 0 (c_count (get_cls st K_BATCH_CLASS))) as [POS|Z0].
    + eapply afree_recPP; try eassumption. intros _. exact POS.
    + destruct (enq_is_app st) eqn:EA.
      * eapply afree_recPP; try eassumption. intros E. exfalso.
        assert (EA1 : enq_is_app st1 = true) by exact EA. destruct (proj1 (enq_is_app_spec st1 (CPrim c n)) EA1) as [s Hs].
        change (enq_app st1 (CPrim c n) = None) in E. congruence.
      * assert (CNT0 : c_count (get_cls st K_BATCH_CLASS) = 0).
        { pose proof H as AH. (nd_pre AH 4%nat; intros _ _ [X [AR _]] _; nd_post). destruct AR as (WF & _).
          (nd_pre WF 7%nat; intros _ _ _ _ _ PERC _; nd_post). (nd_pre (PERC K_BATCH_CLASS (K24)) 11%nat; intros _ _ _ _ _ _ _ _ _ CNTB _; nd_post). lia. }
        eapply afree_recRPP; try eassumption.
  - (* [comment removed for export] *)
    eapply (afree_norecycle DI ASEC_of AFK HL CI CI_OK CI_OK2); try eassumption. intros _. exact NR.
  - (* [comment removed for export] *)
    eapply (afree_norecycle DI ASEC_of AFK HL CI CI_OK CI_OK2); try eassumption. intros LT. exfalso. subst st2 st1. lia.
Qed.

(* [comment removed for export] *)
#[using="HL CI_OK CI_OK2 DEPD AFKD"] Theorem afree_total : afree_stmt CI (AHEAP_P (AHQ DI ASEC_of AFK)).
Proof.
  unfold afree_stmt. intros until tr. intros AH HIN. intros.
  pose proof AH as AH0. (nd_pre AH0 4%nat; intros ALO ARNG [X [AR BL]] HFK; nd_post).
  destruct (proj1 BL p A n HIN) as [(b & Hb & Sb & Ub & Nb)|(mb & ms & Lp & _)].
  - pose proof AR as AR0. destruct AR0 as (WF & _). pose proof WF as WF0. (nd_pre WF0 9%nat; intros _ _ _ _ _ _ _ BUSY _; nd_post).
    destruct (BUSY b Hb) as [CLb M]. rewrite Sb in M. (nd_pre M 6%nat; intros Nb1 _ _ _ _ LIVE; nd_post). rewrite Nb in Nb1, LIVE.
    eapply afree_prim_total with (c := xb_class b); try eassumption. lia.
  - eapply (afree_sec_total DI AFK HL CI CI_OK CI_OK2 DEPD AFKD); eassumption.
Qed.
End S.

(* [comment removed for export] *)
End CANSEC1.

(* [comment removed for export] *)

Module TwB.
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
Import Stdlib.ZArith.ZArith Stdlib.NArith.NArith Stdlib.Lists.List Stdlib.micromega.Lia Stdlib.Bool.Bool.
Import stdpp.gmap.
Import LinuxProcessSemantics.LinuxProcessSem.BvBase LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics LinuxProcessSemantics.LinuxProcessSem.MemImageType LinuxProcessSemantics.LinuxProcessSem.State LinuxProcessSemantics.LinuxProcessSem.Run.
Import LinuxProcessSemantics.Riscv.Prelude LinuxProcessSemantics.Riscv.Instr LinuxProcessSemantics.Riscv.Decode LinuxProcessSemantics.Riscv.DecodeC LinuxProcessSemantics.Riscv.Sem LinuxProcessSemantics.Riscv.Fpu.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.PropExec OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.MState OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Mem OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Cells OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Exec OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Step OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Frame OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Arr OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Tac OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.ITree OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Nodes OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Decode.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.ExecF OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.ITreeA OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.StepF.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.STree.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA.AsanCtrl OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.SpecA.AsanEmbed.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AImg.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AProto.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABase.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABytes__A3W.ABytes.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQConst.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKitQ__A3W.AKitQ.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AMalloc_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADepot_iface__A3W.ADepot_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ARep.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ARepQ.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKitQ__A3W.ARepQP.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ALayout.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AHeapP__A3W.AHeapP.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeModel__A3W.AFreeModel.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeModelR.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRep.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRead.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASec__A3W.ASec.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_afree_arep__A3W.F_afree_arep.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASF_fast__A3W.F_afree_arepR.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeRefillP__A3W.AFreeRefillP.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeC_kit_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeRC_kit_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeStoreC.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeStoreRC.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AQrecP__A3W.AFreeBack.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASec__A3W.ASF_kit.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AHolesD.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_recP__A3W.AFreeRecP.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfn_recP__A3W.AFreeRecRP.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADfnS_allC__A3W.ASF_allC.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADepot_tabscan__A3W.F_adepot.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFake_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFake_arep.TwB.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.RunDraw. Local Ltac Zify.zify_pre_hook ::= OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABase.TwB.twm_hook_1. Local Ltac OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Step.addr_diff E A ::= OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKit2.TwB.twm_hook_1 E A. Local Ltac OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.ZBridge.flia ::= OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_arecyc1.TwB.twm_hook_1.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

Section CANSEC1. Context {rc : runConstT} {tlsI : A3W.ABase.TwB.atlsT}.
Section S.
Variable DI : ADepotIface.
Variable AFK : alayout -> list ablock -> amem -> Prop.
Hypothesis HL : ahole_laws (AHQ DI ASEC_of AFK).
Variable CI : list (Z * Z).
Hypothesis CI_OK : Forall (fun iv => 0x10000 <= fst iv /\ (snd iv <= ADEPOT_LO \/ ADEPOT_HI <= fst iv) /\ snd iv <= AIMG_HI
                                  /\ (snd iv <= 0xab670 \/ 0xab730 <= fst iv)
                                  /\ (snd iv <= 0xafc00 \/ 0x130c30 <= fst iv)
                                  /\ (snd iv <= 0x13e488 \/ 0x13e48c <= fst iv)) CI.
Hypothesis CI_OK2 : Forall (fun iv => snd iv <= AINSTANCE \/ AINSTANCE + 728 <= fst iv) CI.
Hypothesis DEPD : depot_frameD_law (ADEPOT DI).
Hypothesis AFKD : fake_frameD_law AFK.

Definition afree_recPP :=
  afree_recP DI AFK HL CI CI_OK CI_OK2 DEPD AFKD (store_freeC DI AFK HL CI CI_OK) (afree_back DI AFK CI).
Definition afree_recRPP :=
  afree_recRP DI AFK HL CI CI_OK CI_OK2 DEPD AFKD (store_freeRC DI AFK HL CI CI_OK) (afree_back DI AFK CI).

(* [comment removed for export] *)
#[using="HL CI_OK CI_OK2 DEPD AFKD"] Theorem afree_prim_total : forall (L : alayout) (RNG : footprint)
    (ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 : word)
    (F : bvmap 5 word) (fc : bv 32) (m : amem) (st : astate) (LB : list ablock) (p : aptr) (A n lo : Z) (tr : list Z) (c : Z),
  (a_live st) !! p = Some (CPrim c n) -> 1 <= n ->
  AHEAP_P (AHQ DI ASEC_of AFK) L RNG st LB m -> In (HB p A n) LB ->
  mem_inv asegs m ->
  stk asegs m lo (bv_unsigned sp) -> ATOP + 4096 <= lo -> lo <= bv_unsigned sp - AFREE_STACK ->
  tp = Z_to_bv 64 ATP ->
  a0 = Z_to_bv 64 A ->
  aunw m L RNG lo AFREE_PC sp s0 ra tr ->
  bv_unsigned s0 <> bv_unsigned sp + 8 -> 4096 <= bv_unsigned ra -> bv_unsigned ra <> AFREE_PC ->
  bv_unsigned sp mod 16 = 0 ->
  rng RNG lo (bv_unsigned sp - lo) ->
  implS asegs RNG (aembed ATOP (afree st (Some p)))
        (epostF (afree_post CI (AHEAP_P (AHQ DI ASEC_of AFK)) L RNG ra sp gp tp s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 F fc st LB p lo m))
        (MS (mkR ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6)
            F (Z_to_bv 64 AFREE_SYM) fc None m (seg_rom asegs)).
Proof.
  intros until c. intros LIVE N1. intros.
  set (st1 := set_live (delete p (a_live st)) st).
  set (st2 := st_enq st1 (CPrim c n)).
  destruct (Z.lt_ge_cases Q_CACHE (a_qloc_bytes st2)) as [QC1|QC0];
    [destruct (Z.lt_ge_cases Q_MAX (a_qglob_bytes st2 + a_qloc_bytes st2)) as [REC|NR]|].
  - (* [comment removed for export] *)
    destruct (Z.lt_ge_cases 0 (c_count (get_cls st K_BATCH_CLASS))) as [POS|Z0].
    + eapply afree_recPP; try eassumption. intros _. exact POS.
    + destruct (enq_is_app st) eqn:EA.
      * eapply afree_recPP; try eassumption. intros E. exfalso.
        assert (EA1 : enq_is_app st1 = true) by exact EA. destruct (proj1 (enq_is_app_spec st1 (CPrim c n)) EA1) as [s Hs].
        change (enq_app st1 (CPrim c n) = None) in E. congruence.
      * assert (CNT0 : c_count (get_cls st K_BATCH_CLASS) = 0).
        { pose proof H as AH. (nd_pre AH 4%nat; intros _ _ [X [AR _]] _; nd_post). destruct AR as (WF & _).
          (nd_pre WF 7%nat; intros _ _ _ _ _ PERC _; nd_post). (nd_pre (PERC K_BATCH_CLASS (K24)) 11%nat; intros _ _ _ _ _ _ _ _ _ CNTB _; nd_post). lia. }
        eapply afree_recRPP; try eassumption.
  - (* [comment removed for export] *)
    eapply (afree_norecycle DI ASEC_of AFK HL CI CI_OK CI_OK2); try eassumption. intros _. exact NR.
  - (* [comment removed for export] *)
    eapply (afree_norecycle DI ASEC_of AFK HL CI CI_OK CI_OK2); try eassumption. intros LT. exfalso. subst st2 st1. lia.
Qed.

(* [comment removed for export] *)
#[using="HL CI_OK CI_OK2 DEPD AFKD"] Theorem afree_total : afree_stmt CI (AHEAP_P (AHQ DI ASEC_of AFK)).
Proof.
  unfold afree_stmt. intros until tr. intros AH HIN. intros.
  pose proof AH as AH0. (nd_pre AH0 4%nat; intros ALO ARNG [X [AR BL]] HFK; nd_post).
  destruct (proj1 BL p A n HIN) as [(b & Hb & Sb & Ub & Nb)|(mb & ms & Lp & _)].
  - pose proof AR as AR0. destruct AR0 as (WF & _). pose proof WF as WF0. (nd_pre WF0 9%nat; intros _ _ _ _ _ _ _ BUSY _; nd_post).
    destruct (BUSY b Hb) as [CLb M]. rewrite Sb in M. (nd_pre M 6%nat; intros Nb1 _ _ _ _ LIVE; nd_post). rewrite Nb in Nb1, LIVE.
    eapply afree_prim_total with (c := xb_class b); try eassumption. lia.
  - eapply (afree_sec_total DI AFK HL CI CI_OK CI_OK2 DEPD AFKD); eassumption.
Qed.
End S.

(* [comment removed for export] *)
End CANSEC1.
End TwB.
End AFreeAll.
