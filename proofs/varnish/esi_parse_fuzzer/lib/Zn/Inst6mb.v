(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool Permutation Classical_Prop.
From stdpp Require Import gmap.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib Require Import ShapeAlg.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib Require PropExec.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Module HW := OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.PropExec.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Lib Require Tac Image ZBridge SysStep Bytes Walk Arr.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Lib Require Nodes.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Lib Require Nodes Decode.
Import OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Lib.Tac OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Lib.Image OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Lib.ZBridge OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Lib.SysStep OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Lib.Bytes OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Lib.Walk OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Lib.Arr OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Lib.Nodes.ITree OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Lib.Nodes OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Lib.Decode.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib Require Import ImgU RU_mkfg.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zn Require Import MRepAux Mall5lv Mallj6y Mallwlb Mallrkx Malllim Mallzvh.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zn Require Import MTree MRep MRepAux.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zk Require Import STree Malloc Mall7vg Monad MProg MProg.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zn Require Import Mallkgx Mall1es Mall79j.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zk Require KInv MI_Inv.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zk Require MI_WFree.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zk Require KNodes RzImpl KLink KLinkC MSafe KFrame.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Lib Require RzBridge.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zk Require RzAux.
Import OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zk.KInv OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zk.MI_Inv OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zk.MI_WFree.MI_Read OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zk.KNodes OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zk.RzImpl OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zk.KLink OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zk.KLinkC OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zk.MSafe OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zk.KFrame OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Lib.RzBridge.RzEvt OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zk.RzAux.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zn Require W_ge3a6 W_redqm.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zn Require W_rejt8.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zn Require W_rejt8.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zn Require W_rejt8 W_retp0 RF_m8yt Instfes Inst8ld InstDefs InstFree Instjhg Instffk Instrcx Instjk7 Instqy7 Inst41h Instbrv.
Import OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zn.W_ge3a6 OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zn.W_redqm OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zn.W_rejt8.W_re997 OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zn.W_rejt8.W_reagh OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zn.W_rejt8 OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zn.W_retp0 OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zn.RF_m8yt OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zn.Instfes OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zn.Inst8ld OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zn.InstDefs OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zn.InstFree OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zn.Instjhg OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zn.Instffk OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zn.Instrcx OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zn.Instjk7 OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zn.Instqy7 OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zn.Inst41h OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zn.Instbrv.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zn Require Malls6g Mallx0l.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zk Require Import AllocSpec LayoutPU.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zn Require Import Instr3v Instfdk Inste5w.
Import ListNotations.
Import OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Lib.Nodes.ITree.Exc.
Open Scope Z_scope.

Section CEIL.
Context {Clg : Ceiling}.  (* [comment removed for export] *)

Theorem p0_realloc_cps_top :
  forall (ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 : word)
         (m : mem) (md : Model) (A : ias) (p n old : Z) (T : TSet),
    p0_ainv A m md -> mem_inv rsegs m ->
    a0 = wz p -> a1 = wz n -> 0 <= n < 2^32 -> p <> 0 -> p0_live A p = Some old ->
    n <= NREQ_CAP -> p0_livebytes A + n <= LIVE_MAX -> p0_nlive A + 1 <= NLIVE_MAX ->   (* [comment removed for export] *)
    tp = al_tp LayoutPU -> bv_unsigned sp mod 16 = 0 -> bv_unsigned ra mod 4 = 0 ->
    alloc_ceiling <= bv_unsigned sp - AllocSpec.REALLOC_STACK ->
    mapped m (bv_unsigned sp - AllocSpec.REALLOC_STACK) AllocSpec.REALLOC_STACK ->
    (forall (t0' t1' t2' a1' a2' a3' a4' a5' a6' a7' t3' t4' t5' t6' : word) (r : Z) (A' : ias) (m' : mem) (md' : Model),
        p0_ainv A' m' md' -> mem_inv rsegs m' -> md_frame md md' ->
        (* [comment removed for export] *)
        (r <> 0 /\ p0_live A' r = Some n /\ (r = p \/ (p0_live A r = None /\ p0_live A' p = None)) /\
             (forall q, q <> r -> q <> p -> p0_live A' q = p0_live A q) /\
             (forall i, 0 <= i < Z.min n old -> m' (wz (r + i)) = m (wz (p + i))) /\
             p0_livebytes A' = p0_livebytes A + n - old /\ p0_nlive A' = p0_nlive A /\
             frame_ok LayoutPU (p0_owned A) (p0_owned A') (bv_unsigned sp) AllocSpec.REALLOC_STACK (blk p old) (blk r n) m m') ->
        realizes rsegs (mkCfg (HW.mkst (mkR ra sp gp tp t0' t1' t2' s0 s1 (wz r) a1' a2' a3' a4' a5' a6' a7'
                                          s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3' t4' t5' t6') ra m' (seg_rom rsegs)) md') T) ->
    realizes rsegs (mkCfg (HW.mkst (mkR ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7
                                      s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6) (al_realloc_pc LayoutPU) m (seg_rom rsegs)) md) T.
Proof. exact (p0_realloc_cps (@slot_private_proof _) (@stride_small_proof _) (@mremap_path_rz_proof _)).   (* [comment removed for export] *) Qed.

End CEIL.
