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
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require Import Geometry Budget Model Iface.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require BudA TobjJA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require h0.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.BudA OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.TobjJA OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.h0.JcertCutA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A Require Code Lib_tess_scale2d.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A Require e1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A Require Lib_tess_polygon_states.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A Require ee.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A Require eh.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.Code OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.Lib_tess_scale2d OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.e1.Lib_tess_run2d_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.Lib_tess_polygon_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.ee.Lib_tess_polygon_cstates OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.eh.Lib_tess_polygon_chk0.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib Require LiaFast.
Import ListNotations.
Close Scope bv_scope.
Open Scope Z_scope.
Import TessPolygonAddr.
Lemma cc_10 : CC 10 Knw2 = true. Proof. vm_cast_no_check (@eq_refl bool true). Qed.
