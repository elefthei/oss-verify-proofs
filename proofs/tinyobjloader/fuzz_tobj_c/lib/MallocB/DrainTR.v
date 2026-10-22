(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw.Safety"; "assn"; "world"; "etriple"; "triple"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i0.CertStackFree"; "segsA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.DrainTR"; "TRokD"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SoundA"; "liftKA"; "ok_frameA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Iface"; "KcA"; "@Corelib.Init.Datatypes"; "list"; "@LinuxProcessSemantics.LinuxProcessSem.State"; "Model"; "event"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SysCallA"; "ok_pframeA"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool PArith Lia.
From stdpp Require Import bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.tinyobjloader.fuzz_tobj_c.images Require Import AsanUbsan.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw Require Import Safety.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymFrame Glue3.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import Restrict Virt StepA SoundA GlueA SummaryA SysCallA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require Iface.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i0.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require RefillTR.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Iface OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i0.CertStackFree OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.RefillTR.
Import ListNotations.
Local Notation segs := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i0.CertStackFree.segsA.

Record TRokD (Kc : KcA) (TR : assn -> assn -> Prop) : Prop := mkTRokD {
  trd_ok : TRok Kc TR;
  trd_refl : forall P : assn, TR P P }.

Lemma tr_done : ltac2:(tb__ "0|0|
S8S0S0OF_;F_;S5R2R1A2S0S0S1R3R1A1R3R2A1F_;Fw;R5R3R2A2F_;FQ;FP;F_;FTR;FKc;").
Proof. intros Kc TR H P Q HPQ. apply (tr_post Kc TR (trd_ok Kc TR H) P P Q HPQ). apply (trd_refl Kc TR H). Qed.

Theorem TRokD_triple : ltac2:(tb__ "0|0|
S9SbA1SaOF_;F_;S1OF_;S7S4R1S6R2A1A3ScS4R2S6R3A1A3S5R4S3S4R3A2A2F_;F_;Fok;FKc;").
Proof. intros Kc ok H1 H2. split; [exact (TRok_triple Kc ok H1 H2) | intros P; apply triple_refl]. Qed.
Theorem TRokD_etriple : ltac2:(tb__ "0|0|
S8S5R1S2S4A1A2FKc;").
Proof. intros Kc. split; [exact (TRok_etriple Kc) | intros P; apply etriple_refl]. Qed.
