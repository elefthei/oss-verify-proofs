(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "sprop"; "SPUle"; "SVar"; "SLit"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJAF"; "efnode"; "ejcertAF"; "@Corelib.Init.Datatypes"; "cons"; "app"; "bool"; "nil"; "true"; "@Corelib.Lists.ListDef"; "map"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_load_obj_defs"; "NP"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_load_obj_epiS_eqs"; "cutsS2b"; "exitsS2b"; "@Corelib.Init.Logic"; "eq"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Code"; "segs"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_load_obj_epiS2"; "cps_b"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_load_obj_epiS_eqs2"; "H_ecertS2b_ok"; "keep_ecertS2b_ok"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_load_obj_exitsR"; "PhisS"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.HideA"; "hideN"; "hide_set"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith NArith List Bool PArith Lia.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymCFG SymSummary SymObj SymFrame.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import StepA EntailA CFGA GlueA SummaryA SummaryA2 MemoFast.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require Import SumConv ObjXform ObjUnbase TobjJV.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require Import Geometry Budget Model Iface.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require Import BudA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import CfgGenTA SummaryA3.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require TobjJA TobjJAM.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require p2.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJA OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJAM OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.p2.TobjJAC.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import AxXform.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require p1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require TobjJAR TobjJAS TobjJAF.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require p3.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require p5.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require p4.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require HideA.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.p1.TobjJAX OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJAR OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJAS OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJAF OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.p3.TobjJAH OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.p5.TobjJAK OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.p5.TobjJAG OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.p4.TobjJAD OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.p3.ObjZeroA OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.HideA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import ObjEmptyA PinA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Code Lib_scan_double Lib_vec_reserve.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require np.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Lib_builderH_defs.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Code OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_scan_double OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_vec_reserve OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.np.Lib_builder_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_builderH_defs.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Import Lib_load_obj_defs Lib_load_obj_pro Lib_load_obj_pro2 Lib_load_obj_loop Lib_load_obj_disp Lib_load_obj_lglue Lib_load_obj_hv0 Lib_load_obj_bud Lib_load_obj_exits Lib_load_obj_loopE Lib_load_obj_armkit Lib_load_obj_armkit2 Lib_load_obj_avn Lib_load_obj_hvkit.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require n8.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.n8.Asan_memcpyR_iface.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Lib_vec_finalize.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require ni.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Import Lib_load_obj_exitsR Lib_load_obj_epiD1 Lib_load_obj_epiD2 Lib_load_obj_epiS1 Lib_load_obj_epiS2 Lib_load_obj_epiS3 Lib_load_obj_epiS_st1 Lib_load_obj_epiS_st2 Lib_load_obj_epiS4 Lib_load_obj_epiS_st3 Lib_load_obj_epiS_eqs.
Import ListNotations. Close Scope bv_scope. Open Scope Z_scope. Import ScanDoubleAddr LOAddr LOLAddr.
Module VF. Include Lib_vec_finalize. End VF. Module VFP. Include OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.ni.Lib_vec_finalize_pf. End VFP.

Definition keep_ecertS2b_ok : list sprop := ltac2:(tb__ "0|3|
S6S0S1S2P1d1A1M0S3Z7fffff800000A1M1A2S6S0S1S2PcA1S3Z800000000000A1A2S6S0S1G0S2P1eA1M2A2S6S0S1G2G1A2S9S0A1A3A3A3A3").
Definition H_ecertS2b_ok : list sprop := ltac2:(tb__ "0|0|
S16S13S7S4SdSeA3A2").
Lemma ecertS2b_ok : ltac2:(tb__ "0|1|
SfS8S5S10ScS14U12cS11ScSbS4S4S15S12A1M0SdA4SbS4S4G0SeA4A8SaA3").
Proof. vm_cast_no_check (@eq_refl bool true). Qed.
