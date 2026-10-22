(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)

From Stdlib Require Import ZArith NArith List Bool PArith Lia.
From stdpp Require Import bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw Require Import Safety.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymCFG SymSummary SymObj.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import StepA SummaryA EntailA CFGA GlueA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require Import SumConv.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require Import Geometry Budget Model Iface.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require BudA TobjJA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require p1.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.BudA OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJA OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.p1.JcertCutA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Code Lib_tess_scale2d.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require n2.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Lib_tess_polygon_states.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require np.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require nt.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Code OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_tess_scale2d OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.n2.Lib_tess_run2d_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_tess_polygon_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.np.Lib_tess_polygon_cstates OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.nt.Lib_tess_polygon_chk0.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib Require LiaFast.
Import ListNotations.
Close Scope bv_scope.
Open Scope Z_scope.
Import TessPolygonAddr.
Lemma cc_0 : CC 0 Pre_pg = true. Proof. vm_cast_no_check (@eq_refl bool true). Qed.
Lemma cc_1 : CC 1 C_pro = true. Proof. vm_cast_no_check (@eq_refl bool true). Qed.
Lemma cc_2 : CC 2 C_pro2 = true. Proof. vm_cast_no_check (@eq_refl bool true). Qed.
Lemma cc_3 : CC 3 C_body0 = true. Proof. vm_cast_no_check (@eq_refl bool true). Qed.
Lemma cc_4 : CC 4 Kfin = true. Proof. vm_cast_no_check (@eq_refl bool true). Qed.
Lemma cc_5 : CC 5 C_c84 = true. Proof. vm_cast_no_check (@eq_refl bool true). Qed.
Lemma cc_6 : CC 6 C_b6cI = true. Proof. vm_cast_no_check (@eq_refl bool true). Qed.
Lemma cc_7 : CC 7 C_s1 = true. Proof. vm_cast_no_check (@eq_refl bool true). Qed.
Lemma cc_8 : CC 8 Kcm = true. Proof. vm_cast_no_check (@eq_refl bool true). Qed.
Lemma cc_9 : CC 9 Knw = true. Proof. vm_cast_no_check (@eq_refl bool true). Qed.
