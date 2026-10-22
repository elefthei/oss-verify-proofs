(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "sprop"; "sobj"; "@Corelib.Init.Datatypes"; "cons"; "app"; "nil"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_s2"; "qERR"; "q_base"; "q_vfacts"; "NZ32"; "q_acct"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.o9.Lib_handle_f_epi"; "EC2"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_s9"; "sh28o"; "sh38o"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.np.Lib_builder_defs"; "vERR"].
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
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJA OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJAM OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.p2.TobjJAC.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import AxXform.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require p1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require TobjJAS.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.p1.TobjJAX OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJAS.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import ResidualA AxArrA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Code Lib_scan_double Lib_parse_corner2.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require n1.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Code OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_scan_double OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_parse_corner2 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.n1.Lib_diag_append.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require ng.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Lib_vec_reserve.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require np.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Lib_builderH_defs Lib_handle_f_defs Lib_handle_f_s1 Lib_handle_f_s2 Lib_handle_f_s3 Lib_handle_f_s4 Lib_handle_f_s5 Lib_handle_f_s6.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require oc.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require od.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Lib_handle_f_s9 Lib_handle_f_s9b.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require o9.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_vec_reserve OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.np.Lib_builder_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_builderH_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_s1 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_s2 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_s3 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_s4 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_s5 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_s6 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.oc.Lib_handle_f_s7 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.od.Lib_handle_f_s8 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_s9 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_handle_f_s9b OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.o9.Lib_handle_f_epi.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib Require LiaFast.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast2.
Import ListNotations.
Import ScanDoubleAddr VRAddr RA.ReallocAddr ParseCornerAddr DiagAppendAddr HFAddr.
Close Scope bv_scope.
Open Scope Z_scope.

Goal map (fun L => leaf_matches1A NPH L C_Ef2) (leaves_at2 [JF_trg; JF_trb; JF_rp; JF_ts] hf_EPI) = [true; true; true; true; true; true; true; true].
Proof. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc. Qed.

Definition XEo6 : axst := ltac2:(tb__ "0|0|
SaSdS3S0S9S3S0S7S6A3A3S2S1SbS2S1ScS4S1A1A3A3A3").
Definition XEf6a : axst := ltac2:(tb__ "0|0|
SaS5S3S0S2S0S8S5A1S4S0A1A3S3S0S7S6A3A3S2S1ScS2S1SbS4S1A1A3A3A3").
Definition XEf6b : axst := ltac2:(tb__ "0|0|
SaS5S3S0S2S0S8S5A1S4S0A1A3S3S0S7S6A3A3S2S1SbS2S1ScS4S1A1A3A3A3").
Goal map (fun L => leaf_matches1A NPH L XEo6) (leavesA_at FUEL_hf cutpcs_hf JR_sg4 hf_EPI) = [true]
  /\ map (fun L => leaf_matches1A NPH L XEf6a) (leaves_at2 [JF_mi4; JF_fv4] hf_EPI) = [true; true; true; true]
  /\ map (fun L => leaf_matches1A NPH L XEf6b) (leaves_at2 [JF_mm4; JF_sg4] hf_EPI) = [true; true; true; true]
  /\ map (fun L => leaf_matches1A NPH L C_Eo2) (leavesA_at FUEL_hf cutpcs_hf J hf_EPI) = [true].
Proof. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast2.conj_vmc2. Qed.
