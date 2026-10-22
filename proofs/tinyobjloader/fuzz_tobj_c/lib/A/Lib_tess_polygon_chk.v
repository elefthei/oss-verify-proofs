(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@Corelib.Init.Datatypes"; "bool"; "true"; "@Corelib.Init.Logic"; "eq"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.ee.Lib_tess_polygon_cstates"; "cutsE"; "exitsE"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.SumConv"; "NF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.Code"; "segs"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.Lib_tess_polygon_states"; "FUEL_pg"; "cutpcs_pg"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.h0.JcertCutA"; "ejcert_hdr"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.TobjJA"; "ejcertA"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
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
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A Require Lib_tess_polygon_chk1 Lib_tess_polygon_chk2.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A Require eg.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A Require ej.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.Code OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.Lib_tess_scale2d OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.e1.Lib_tess_run2d_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.Lib_tess_polygon_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.ee.Lib_tess_polygon_cstates OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.eh.Lib_tess_polygon_chk0 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.Lib_tess_polygon_chk1 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.Lib_tess_polygon_chk2 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.eg.Lib_tess_polygon_chk3 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.ej.Lib_tess_polygon_chk4.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib Require LiaFast.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.
Import ListNotations.
Close Scope bv_scope.
Open Scope Z_scope.
Import TessPolygonAddr.

Lemma hdr_ok : ltac2:(tb__ "0|0|
S2S0S9S5S3A2S1A3"). Proof. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc. Qed.

Lemma ejcert_pg : ltac2:(tb__ "0|0|
S2S0SaS6S5S7S8P64S3S4A7S1A3").
Proof.
  apply ejcertA_of_cuts; [exact hdr_ok|].

  change (cuts_okE segs FUEL_pg cutpcs_pg 100 PE 0 [Pre_pg; C_pro; C_pro2; C_body0; Kfin; C_c84; C_b6cI; C_s1; Kcm; Knw; Knw2; Kext; Ke1; Ke2; Ke3; Kproj; Kbbp; K708; K830; T_sc3; T_sc4; T_r2; Kaa4; Kb08; Kb14; Kd10; Kb64; Kd60; Ktail; C_fin; C_b6cK; T_sfI; T_sfK] TG = true).
  simple apply cuts_okE_cons; [exact cc_0|].
  simple apply cuts_okE_cons; [exact cc_1|].
  simple apply cuts_okE_cons; [exact cc_2|].
  simple apply cuts_okE_cons; [exact cc_3|].
  simple apply cuts_okE_cons; [exact cc_4|].
  simple apply cuts_okE_cons; [exact cc_5|].
  simple apply cuts_okE_cons; [exact cc_6|].
  simple apply cuts_okE_cons; [exact cc_7|].
  simple apply cuts_okE_cons; [exact cc_8|].
  simple apply cuts_okE_cons; [exact cc_9|].
  simple apply cuts_okE_cons; [exact cc_10|].
  simple apply cuts_okE_cons; [exact cc_11|].
  simple apply cuts_okE_cons; [exact cc_12|].
  simple apply cuts_okE_cons; [exact cc_13|].
  simple apply cuts_okE_cons; [exact cc_14|].
  simple apply cuts_okE_cons; [exact cc_15|].
  simple apply cuts_okE_cons; [exact cc_16|].
  simple apply cuts_okE_cons; [exact cc_17|].
  simple apply cuts_okE_cons; [exact cc_18|].
  simple apply cuts_okE_cons; [exact cc_19|].
  simple apply cuts_okE_cons; [exact cc_20|].
  simple apply cuts_okE_cons; [exact cc_21|].
  simple apply cuts_okE_cons; [exact cc_22|].
  simple apply cuts_okE_cons; [exact cc_23|].
  simple apply cuts_okE_cons; [exact cc_24|].
  simple apply cuts_okE_cons; [exact cc_25|].
  simple apply cuts_okE_cons; [exact cc_26|].
  simple apply cuts_okE_cons; [exact cc_27|].
  simple apply cuts_okE_cons; [exact cc_28|].
  simple apply cuts_okE_cons; [exact cc_29|].
  simple apply cuts_okE_cons; [exact cc_30|].
  simple apply cuts_okE_cons; [exact cc_31|].
  simple apply cuts_okE_cons; [exact cc_32|].
  apply cuts_okE_nil.
Qed.
