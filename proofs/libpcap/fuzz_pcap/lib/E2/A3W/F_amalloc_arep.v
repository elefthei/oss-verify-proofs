(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
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
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AImg AProto ABase. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ABytes__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AMalloc_iface. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ADepot_iface__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ALayout__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AHeapP__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ARepKit. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AKit2. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AFreeModel__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require F_apoison__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require ASecSlog__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require F_agbb__A3W. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require F_aalloc__A3W. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AImg OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AProto OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABase OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABytes__A3W.ABytes OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AMalloc_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADepot_iface__A3W.ADepot_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ARep OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ALayout OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AHeapP__A3W.AHeapP OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ARepKit OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADepot_iface__A3W.AKit OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKit2 OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeModel__A3W.AModelFacts OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_apoison__A3W.F_apoison OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASecSlog__A3W.F_aalloc1 OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_agbb__A3W.F_aalloc2 OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_aalloc__A3W.F_aalloc OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_aalloc__A3W.F_amalloc_icpt.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA Require Import RunDraw.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require SecDiet.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W Require AHeapP__A3W. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AHeapP__A3W.ATlsKit.   (* [comment removed for export] *)
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.
Local Ltac Z.euclidean_division_equations_cleanup ::= idtac.

(* [comment removed for export] *)
Ltac chg T x := repeat (match goal with H : context [T] |- _ => progress change T with x in H end); try change T with x.
Section CANSEC1. Context {rc : runConstT} {tlsI : ABase.atlsT}.
Section S.
(* [comment removed for export] *)
Variable DI : ADepotIface.
Variables (AQ ASEC : alayout -> astate -> aconc -> amem -> Prop) (AFK : alayout -> list ablock -> amem -> Prop).
Definition AH : aholes := mkAHoles AQ ASEC (ADEPOT DI) AFK.
Hypothesis HL : ahole_laws AH.
(* [comment removed for export] *)
Variable CI : list (Z * Z).
Hypothesis CI_OK : Forall (fun iv => 0x10000 <= fst iv /\ (snd iv <= ADEPOT_LO \/ ADEPOT_HI <= fst iv) /\ snd iv <= AIMG_HI) CI.

(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
Definition amalloc_fast__stmt : Prop := forall (L : alayout) (RNG : footprint)
    (ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 : word)
    (F : bvmap 5 word) (fc : bv 32) (m : amem) (st : astate) (LB : list ablock) (n lo : Z) (tr : list Z) (RESV : list (Z * Z)),
  (* [comment removed for export] *)
  1 <= n <= 448 -> 0 < c_count (get_cls st (class_id (needed_size n))) ->
  (* [comment removed for export] *)
  AHEAP_P AH L RNG st LB m ->
  mem_inv asegs m ->
  stk asegs m lo (bv_unsigned sp) -> ATOP + 4096 <= lo -> lo <= bv_unsigned sp - AMALLOC_STACK ->
  bv_unsigned sp + 16 < al_top L ->
  tp = Z_to_bv 64 ATP ->
  a0 = Z_to_bv 64 n -> 0 <= n <= AREQMAX ->
  uchain m (al_top L) AMALLOC_PC (bv_unsigned sp) (bv_unsigned s0) UDEPTH tr ->
  In (AMALLOC_PC :: bv_unsigned ra :: tr) (al_U L) ->
  bv_unsigned s0 <> bv_unsigned sp + 8 -> 4096 <= bv_unsigned ra -> bv_unsigned ra <> AMALLOC_PC -> (length tr <= 28)%nat ->
  bv_unsigned sp mod 16 = 0 ->
  rng RNG lo (al_top L - lo) ->
  implS asegs RNG (aembed ATOP (amalloc ATOP RESV st n))
        (epostF (amalloc_post CI (AHEAP_P AH) L RNG ra sp gp tp s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 F fc st LB n lo m))
        (MS (mkR ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6)
            F (Z_to_bv 64 AMALLOC_SYM) fc None m (seg_rom asegs)).


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
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AImg.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AProto.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABase.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABytes__A3W.ABytes.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AMalloc_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADepot_iface__A3W.ADepot_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ARep.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ALayout__A3W.ALayout.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AHeapP__A3W.AHeapP.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ARepKit.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ADepot_iface__A3W.AKit.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKit2.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AFreeModel__A3W.AModelFacts.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_apoison__A3W.F_apoison.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ASecSlog__A3W.F_aalloc1.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_agbb__A3W.F_aalloc2.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_aalloc__A3W.F_aalloc.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.F_aalloc__A3W.F_amalloc_icpt.TwB.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.LibA.RunDraw.
(* [comment removed for export] *)
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AHeapP__A3W.ATlsKit.TwB. Local Ltac Zify.zify_pre_hook ::= OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.ABase.TwB.twm_hook_1. Local Ltac OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Step.addr_diff E A ::= OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.A3W.AKit2.TwB.twm_hook_1 E A.   (* [comment removed for export] *)
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.
Local Ltac Z.euclidean_division_equations_cleanup ::= idtac.

(* [comment removed for export] *)
Ltac chg T x := repeat (match goal with H : context [T] |- _ => progress change T with x in H end); try change T with x.
Section CANSEC1. Context {rc : runConstT} {tlsI : A3W.ABase.TwB.atlsT}.
Section S.
(* [comment removed for export] *)
Variable DI : ADepotIface.
Variables (AQ ASEC : alayout -> astate -> aconc -> amem -> Prop) (AFK : alayout -> list ablock -> amem -> Prop).
Definition AH : aholes := mkAHoles AQ ASEC (ADEPOT DI) AFK.
Hypothesis HL : ahole_laws AH.
(* [comment removed for export] *)
Variable CI : list (Z * Z).
Hypothesis CI_OK : Forall (fun iv => 0x10000 <= fst iv /\ (snd iv <= ADEPOT_LO \/ ADEPOT_HI <= fst iv) /\ snd iv <= AIMG_HI) CI.

(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
Definition amalloc_fast__stmt : Prop := forall (L : alayout) (RNG : footprint)
    (ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 : word)
    (F : bvmap 5 word) (fc : bv 32) (m : amem) (st : astate) (LB : list ablock) (n lo : Z) (tr : list Z) (RESV : list (Z * Z)),
  (* [comment removed for export] *)
  1 <= n <= 448 -> 0 < c_count (get_cls st (class_id (needed_size n))) ->
  (* [comment removed for export] *)
  AHEAP_P AH L RNG st LB m ->
  mem_inv asegs m ->
  stk asegs m lo (bv_unsigned sp) -> ATOP + 4096 <= lo -> lo <= bv_unsigned sp - AMALLOC_STACK ->
  bv_unsigned sp + 16 < al_top L ->
  tp = Z_to_bv 64 ATP ->
  a0 = Z_to_bv 64 n -> 0 <= n <= AREQMAX ->
  uchain m (al_top L) AMALLOC_PC (bv_unsigned sp) (bv_unsigned s0) UDEPTH tr ->
  In (AMALLOC_PC :: bv_unsigned ra :: tr) (al_U L) ->
  bv_unsigned s0 <> bv_unsigned sp + 8 -> 4096 <= bv_unsigned ra -> bv_unsigned ra <> AMALLOC_PC -> (length tr <= 28)%nat ->
  bv_unsigned sp mod 16 = 0 ->
  rng RNG lo (al_top L - lo) ->
  implS asegs RNG (aembed ATOP (amalloc ATOP RESV st n))
        (epostF (amalloc_post CI (AHEAP_P AH) L RNG ra sp gp tp s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 F fc st LB n lo m))
        (MS (mkR ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6)
            F (Z_to_bv 64 AMALLOC_SYM) fc None m (seg_rom asegs)).


End S.
End CANSEC1.
End TwB.
