(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@Corelib.Init.Datatypes"; "prod"; "list"; "cons"; "nat"; "bool"; "nil"; "pair"; "None"; "app"; "false"; "fst"; "snd"; "true"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "axst"; "ax_S"; "@Corelib.Numbers.BinNums"; "Z"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.Code"; "segs"; "A_globals"; "mkA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "sobj"; "sv"; "valuation"; "SVar"; "FcsrFrm0"; "SLit"; "mkSS"; "swf"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.TobjJA"; "ndesc"; "PTrue"; "JA_pre"; "JLA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.e6.Lib_fuzz_iface"; "P0_fz"; "Pre_fz"; "nd_fz0"; "O_F_fz"; "O_W_fz"; "O_pay"; "X_fz"; "fz_facts"; "nd_fz1"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.SumConv"; "NF"; "post_regs"; "setregs"; "@stdpp.bitvector.definitions"; "bv"; "@Corelib.Init.Nat"; "add"; "@Corelib.Lists.ListDef"; "map"; "seq"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.Lib_fuzz_iface2"; "P_fz"; "NPOST_FZ"; "PD_fz"; "fcallee_saved"; "post_fregs_fz"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.Lib_fuzz_iface2.Stmt"; "Posts_fz"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SoundA"; "SPA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SummaryA"; "LQPA"; "jpostA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.BudA"; "BXok_d"; "bxt"; "@Stdlib.PArith.BinPos.Pos"; "of_nat"; "@Corelib.Init.Logic"; "eq"; "@LinuxProcessSemantics.LinuxProcessSem.State"; "Model"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.e6.Lib_fuzz_iface.FZAddr"; "fz_ret"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw.Safety"; "etriple"; "triple"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Model"; "AA"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith NArith List Bool PArith Lia.
From stdpp Require Import bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw Require Import Safety.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import
  SymState SymStep SymSoundA SymSoundB SymSoundV SymSoundI SymSoundL SymSoundM SymSoundR
  SymComplete SymFrame SymEntail SymCFG SymSummary SymObj Glue3.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import Virt StepA SoundA EntailA CFGA GlueA SummaryA SummaryA2.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require Import SumConv CursorGlue TobjJV.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require Import Geometry Budget Model Iface.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require BudA CfgGenTA SummaryA3 TobjJA TobjJAM.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require h1.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.BudA OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.CfgGenTA OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.SummaryA3 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.TobjJA OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.TobjJAM OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.h1.TobjJAC.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A Require Import Code.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A Require e6.
Export OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.e6.Lib_fuzz_iface.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.
Import ListNotations.
Close Scope bv_scope.
Open Scope Z_scope.
Import FZAddr.

Definition fcallee_saved (r : nat) : bool :=
  match r with 8 | 9 | 18 | 19 | 20 | 21 | 22 | 23 | 24 | 25 | 26 | 27 => true | _ => false end%nat.
Definition post_fregs_fz : list sv := ltac2:(tb__ "0|0|
S2dS3S14S3S4S14L_;S32R1A1S16S3aS2cU3cR1A2A1A1S16S3aS2cU8cR1A2A1A1X4x2Lr;S2eU0U20A2A4").
Definition NPOST_FZ : positive := 172%positive.
Definition P_fz : axst := ltac2:(tb__ "0|1|
S12S19S3dS2aS29S28A1S2S0S3S14A2M0S6S3S14UaS18Z0A1A4S5G0A1A3A2S33S17S7S14A1S8S13S2S13S22S2S13S23S2S13S24S5S13A1A3A3A3S11A3S26S30S9A9S25A2").
Definition PD_fz : list (axst * ndesc) := ltac2:(tb__ "0|1|
S2S0SdS1bA2M0S6SdS1bS2fS27A4S5G0A1A3").
Lemma P_fz_swf : ltac2:(tb__ "0|0|
S3bS4S1aSeS2fA1A1ScA3"). Proof. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc. Qed.

Section Stmt.
Variable AInv : ltac2:(tb__ "0|0|
S40S15S1S2bQ40A1A1S3cOF_;F_;F_;F_;").
Variables CST XGL : list (Z * Z).
Variable Kc : KcA.
Definition Posts_fz (FB : list (Z * Z)) (FF : list (Z * Z * Z)) (BX : bxt) : list (axst * jpostA) := ltac2:(tb__ "0|1|
S2dS0SdS1bA2M0S0SdS37A2G0S6SdS37SaSdS1bR1A3S1eVAInv;VCST;VXGL;VKc;S1fVCST;VFB;VFF;A3VFB;VFF;VBX;S1cSbSdS1bR1A3AaA4Ld;S31A4").
Definition fuzz_one_sumT (ok : world -> Prop) : Prop := ltac2:(tb__ "0|1|
S1S0SfSfA2M0A1S1S0G0SfA2A1S39S15S1S2bQ40A1A1S38Z8R3A2S3fS10Vok;S35S10S1dVAInv;VCST;VXGL;VKc;S1fVCST;R6R5A3R6R5R4S1cS21AaS20R3R2A5S36S10S28R3R2S34R6R5R4A3A5A4F_;Ftp0;Frho0;FBX;FFF;FFB;").
Definition fuzz_one_sumE : Prop := ltac2:(tb__ "0|1|
S1S0SfSfA2M0A1S1S0G0SfA2A1S39S15S1S2bQ40A1A1S38Z8R3A2S3eS10S35S10S1dVAInv;VCST;VXGL;VKc;S1fVCST;R6R5A3R6R5R4S1cS21AaS20R3R2A5S36S10S28R3R2S34R6R5R4A3A5A3F_;Ftp0;Frho0;FBX;FFF;FFB;").
End Stmt.
