(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@Corelib.Init.Logic"; "eq"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "sobj"; "DUnknown"; "ss_facts"; "ss_objs"; "@Corelib.Init.Datatypes"; "bool"; "true"; "app"; "cons"; "list"; "nil"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_s8w"; "E_mi4_0_0"; "E_mi4_0_4"; "G3back"; "E_mi4_1w"; "Xw"; "L_win"; "T_g3_0"; "T_g3_4"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_s9"; "E_mi4_1"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "ax_X"; "ax_S"; "axst"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_nodes"; "ndLL"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_builderH_defs"; "hG"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_s6"; "objs_butlast"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJA"; "nd_tv"; "nd_bd"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_g9"; "cells_w0"; "cells_w4"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.oh.Lib_handle_f_gdefs"; "vlF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.ok.Lib_handle_f_gdefs5"; "releaseP_chk"; "reopenC_chk"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_shx"; "gcs"; "shadow_reopen_cells_stateA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.GlueA"; "ax_setX"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.p2.TobjJAC"; "xrs_inclb"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJAS"; "shobj"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith NArith List Bool PArith Lia.
From stdpp Require Import bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw Require Import Safety.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import
  SymState SymStep SymSoundA SymSoundB SymSoundV SymSoundI SymSoundL SymSoundM SymSoundR
  SymComplete SymFrame SymEntail SymCFG SymSummary SymObj ExampleMemcpy Glue3.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import Virt StepA SoundA EntailA CFGA GlueA SummaryA SummaryA2.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require Import SumConv CursorGlue TobjJV ObjXform ObjUnbase TobjJVAz.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require Import Geometry Budget Model Iface.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require RtCells.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require Import BudA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import CfgGenTA SummaryA3.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require TobjJA TobjJAM.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require p2.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJA OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJAM OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.p2.TobjJAM2 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.p2.TobjJAC.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import AxXform.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require p1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require TobjJAR TobjJAS.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require p5.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require p3.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require TobjJAT.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.p1.TobjJAX OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJAR OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJAS OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.p5.TobjJAG OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.p3.CertGlueA OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJAT.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import ResidualA AxArrA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Code Lib_scan_double Lib_parse_corner2.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require n1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Asan_set_shadow_iface.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Code OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_scan_double OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_parse_corner2 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.n1.Lib_diag_append OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Asan_set_shadow_iface.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require ng.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Lib_vec_reserve.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require np.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require ny.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Lib_builderH_defs.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require o1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Lib_handle_f_defs Lib_handle_f_s1 Lib_handle_f_s2 Lib_handle_f_s3 Lib_handle_f_s4 Lib_handle_f_s5 Lib_handle_f_s6.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require oc.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require od.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Lib_handle_f_s9 Lib_handle_f_s9b Lib_handle_f_s10.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require o9.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Lib_handle_f_nodes.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_vec_reserve OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.np.Lib_builder_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.ny.Lib_builder_pf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_builderH_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.o1.Lib_builderH_pf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_s1 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_s2 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_s3 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_s4 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_s5 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_s6 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.oc.Lib_handle_f_s7 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.od.Lib_handle_f_s8 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_s9 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_s9b OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_s10 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.o9.Lib_handle_f_epi OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_nodes.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require n9.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Lib_tess_polygon_states.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require np.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A Require Lib_handle_f_arith.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib Require LiaFast.
Import ListNotations.
Import ScanDoubleAddr VRAddr RA.ReallocAddr ParseCornerAddr DiagAppendAddr HFAddr.
Close Scope bv_scope.
Open Scope Z_scope.
Module PGC. Include OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.np.Lib_tess_polygon_cstates. End PGC.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require p3.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.p3.ObjZeroA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Lib_handle_f_shx Lib_handle_f_s8w.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require oh.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require oj.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require ok.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_shx OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_s8w OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.oh.Lib_handle_f_gdefs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.oj.Lib_handle_f_gdefs2 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.oj.Lib_handle_f_gdefs3 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.ok.Lib_handle_f_gdefs5.
Module AR. Include Lib_handle_f_arith. End AR.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import MemoFast.
Ltac vmr := vmc.

Definition cells_w0 : list cell := Eval vm_compute in ob_cells (sh_last E_mi4_0_0).
Definition cells_w4 : list cell := Eval vm_compute in ob_cells (sh_last E_mi4_0_4).

Section G.
Variable XGL : list (Z * Z).

Lemma G3back_eq : T_g3w = G3back. Proof. vmr. Qed.
Lemma g3_roC : ltac2:(tb__ "0|0|
S0S5S20VXGL;SdSfSdA1S1aS17A1Z1cZ27Ze0Z24A8S6A3"). Proof. vmr. Qed.
Lemma T_g3_0_eq : ltac2:(tb__ "0|0|
S0S16S22SdSfSdA1S18Z1cZ27S21Ze0Z24Z0A3A6S11A3"). Proof. vmr. Qed.
Lemma T_g3_4_eq : ltac2:(tb__ "0|0|
S0S16S22SdSfSdA1S18Z1cZ27S21Ze0Z24Z4A3A6S12A3"). Proof. vmr. Qed.

Lemma w0_robjs : ltac2:(tb__ "0|0|
S0S9S1A1S4S15SbA1A1S7S1S19SbA1S8S1S25S18Z1cZ27S1cS2A5SaS1A1A3A3A3"). Proof. vmr. Qed.
Lemma w0_rel : ltac2:(tb__ "0|0|
S0S5S1fSbS19SbA1Z1cZ27S1cS2S10S1aS17A1S1bS17A1A9S6A3"). Proof. vmr. Qed.
Lemma w0_eq : ltac2:(tb__ "0|0|
S0S16S23SeSbA1S14S13A1A2S13A3"). Proof. vmr. Qed.
Lemma w0_incl : ltac2:(tb__ "0|0|
S0S5S24S14S13A1S14SeSbA1A1A2S6A3"). Proof. vmr. Qed.
Lemma w0_vlF : ltac2:(tb__ "0|0|
S0S5S1eS3S15SbA1A1A1S6A3"). Proof. vmr. Qed.
Lemma w4_robjs : ltac2:(tb__ "0|0|
S0S9S1A1S4S15ScA1A1S7S1S19ScA1S8S1S25S18Z1cZ27S1dS2A5SaS1A1A3A3A3"). Proof. vmr. Qed.
Lemma w4_rel : ltac2:(tb__ "0|0|
S0S5S1fScS19ScA1Z1cZ27S1dS2S10S1aS17A1S1bS17A1A9S6A3"). Proof. vmr. Qed.
Lemma w4_eq : ltac2:(tb__ "0|0|
S0S16S23SeScA1S14S13A1A2S13A3"). Proof. vmr. Qed.
Lemma w4_incl : ltac2:(tb__ "0|0|
S0S5S24S14S13A1S14SeScA1A1A2S6A3"). Proof. vmr. Qed.
Lemma w4_vlF : ltac2:(tb__ "0|0|
S0S5S1eS3S15ScA1A1A1S6A3"). Proof. vmr. Qed.
End G.
