(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@Corelib.Numbers.BinNums"; "Z"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "sprop"; "valuation"; "sv"; "SVar"; "rw"; "sprop_below"; "swf"; "SLit"; "@Corelib.Init.Logic"; "eq"; "not"; "False"; "@Corelib.Init.Datatypes"; "app"; "bool"; "list"; "true"; "prod"; "nil"; "pair"; "cons"; "Some"; "fst"; "option"; "orb"; "snd"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Iface"; "UStopLe"; "AE_A"; "Wcan"; "Pre_mallocI"; "KcA"; "Kc_ok"; "malloc_depth"; "pre_facts"; "unwind_factsS"; "JL_malloc_ok"; "J_alloc_preT"; "L_malloc_ok"; "Posts_malloc"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw.Safety"; "triple"; "assn"; "world"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SoundA"; "SPA"; "liftKA"; "ok_frameA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.RtCells"; "in_rangesZ"; "@Stdlib.Lists.List"; "forallb"; "In"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.ExampleMemcpy"; "NF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "axst"; "ax_S"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SummaryA"; "LQPA"; "jpostA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SysCallA"; "ok_pframeA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i2.CertFreeNull"; "F_geom_fn"; "NW2"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i5.CertMallocS1"; "E_s1"; "F_s1"; "F_hi"; "F_lo"; "s1_cuts"; "s1_exits"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.CertMallocSP"; "E3r"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Model"; "AA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegD_wf"; "dfp_static"; "MAP1"; "MAP1N"; "STORE"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SpineMallocI"; "cnt_of"; "sa_m"; "sb_m"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ig.SpineMallocS1"; "JG"; "@Stdlib.ZArith.BinInt.Z"; "add"; "leb"; "mul"; "@stdpp.bitvector.definitions"; "bv"; "bv_unsigned"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.Glue3"; "state_diff"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.CFGA"; "check_cfgA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i0.CertStackFree"; "GW"; "segsA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i1.CertStackMalloc"; "TP_A"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.MallocHit0"; "cstD_okb"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.RebuildM"; "IMG_M"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith NArith List Bool PArith Lia.
From stdpp Require Import bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem.
From OssFuzzTheorems.tinyobjloader.fuzz_tobj_c.images Require Import AsanUbsan.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw Require Import Safety.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymSoundA SymObj SymFrame SymEntail SymCFG SymSummary Glue3 ExampleMemcpy.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import Restrict Virt StepA SoundA EntailA CFGA GlueA SummaryA SysCallA GlueZ.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc Require Import Glue.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require Import MuslMemset.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require ImageFacts Str_memcpy.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require n3.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require na.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.ImageFacts OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Str_memcpy OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.n3.Str_memset OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.na.Str_memsetZ.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require Geometry Budget Model RtCells Iface Inv.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i0.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i2.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i3.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i5.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require CertMallocSP.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i9.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require RebuildM SpineMallocI.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ig.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require m8.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ip.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ir.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require it.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require io.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require iy.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require j5.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require SpineMallocS9.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require j7.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require j8.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require j9.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ji.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require SegD_wf.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ic.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require DepotCall.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require k3.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require je.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require k1.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Geometry OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Budget OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Model OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.RtCells OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Iface OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Inv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i0.CertStackFree OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i1.CertStackMalloc OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i2.CertFreeNull OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i3.CertMallocM0 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i5.CertMallocS1 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.CertMallocSP OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i9.CertMallocSPc OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i9.CertMallocSPd OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.RebuildM OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SpineMallocI OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ig.SpineMallocS1 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.m8.SpineMallocS2 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ip.SpineMallocS3 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ir.SpineMallocS3i OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ir.SpineMallocS4 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.it.SpineMallocS5 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.io.SpineMallocS6 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iy.SpineMallocS7 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.j5.SpineMallocS8 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SpineMallocS9 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.j7.SpineMallocS5i OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.j8.SpineMallocS6i OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.j8.SpineMallocS7i OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.j9.SpineMallocS8i OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.j8.SpineMallocS9i OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ji.SpineMallocS9j OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegD_wf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ic.InvFoot OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.DepotCall OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.k3.DepotCallI OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ir.SpineMallocS3c OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.je.SpineMallocS5t OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.k1.MallocHitTail0.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.CfgEdgesA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require jm.
Import ListNotations.
Close Scope bv_scope.
Open Scope Z_scope.

Lemma Wa_0 : ltac2:(tb__ "0|0|
S9SdS7S44S1bU0A1S19A2A1SfA3"). Proof. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc. Qed.
Lemma Da_0 : ltac2:(tb__ "0|5|
S9S16S10SeS10S3S3A2M0A1M1SeS1A1M2A2M3A1S4cS31S1cS1aS1bU0A1M4S19A3A1S44G4S19A2A2S14G3S12G1G2S13G0S12S3S3S4P18A1S8S50A1A4S11G0A1A3S11S1A1A4A2A3"). Proof. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc. Qed.
Lemma Wb_0 : ltac2:(tb__ "0|0|
S9SdS7S45S1bU0A1S19A2A1SfA3"). Proof. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc. Qed.
Lemma Fbh_0 : ltac2:(tb__ "0|0|
S9SdS2dS1S6S36A1ScS1ScS1ScS1ScS1S21S1bU0A1S19A2S20S1fA1A3S35A3S38A3S39A3A3SfA3"). Proof. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc. Qed.
Lemma Fbl_0 : ltac2:(tb__ "0|0|
S9SdS2dS1S6S36A1ScS1ScS1ScS1ScS1S21S1bU0A1S19A2S20S1fA1A3S35A3S38A3S3aA3A3SfA3"). Proof. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc. Qed.

Lemma Cert1_0 : ltac2:(tb__ "0|1|
S9SdS4dS4fUfa0S13S0Z40bacS11S0A1A3S4eS3bU0M0S19A2S3cG0S19Z2A3A6SfA3"). Proof. exact (OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.CfgEdgesA.check_cfgA_of_ecfgA segsA 4000%nat [0x40bac] GW (map (fun c => mkVNA c 1 (SLit 0)) (s1_cuts 0 UStopLe)) (map (fun e => mkVNA e 0 (SLit 0)) (s1_exits 0 UStopLe 2)) (s1_cuts 0 UStopLe) (s1_exits 0 UStopLe 2) eq_refl eq_refl OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.jm.SpineMallocEi.ECert1_0). Qed.

Definition cstD_okb (CST : list (Z * Z)) : bool := ltac2:(tb__ "0|2|
S2dS10S0S0A2M0G0S17S48S47S15S0S0R1A3M1S18S0S0R1A3A2S42A2S48S47S40S49Z8S41A2A2G1A2A2Lr;VCST;A3").
Lemma cstD_okb_sound : ltac2:(tb__ "0|0|
SeS10S0S0A2A1S9SdS51R1A1SfA3S0S2cR3R1A2SaS3fR2A1A1F_;Fa;F_;FCST;").
Proof.
  intros CST H a (b & n & Hin & Ha) Hs. pose proof (proj1 (forallb_forall _ _) H (b, n) Hin) as X. cbn [fst snd] in X.
  pose proof (dstat_range a Hs) as R. apply orb_prop in X as [X|X]; apply Z.leb_le in X; lia.
Qed.

Section HIT0.
Let segs : list Segment := segsA.
Variables CST XGL : list (Z * Z).
Hypothesis HCST : cst_ok CST.
Hypothesis HXGL : xgl_ok XGL.
Hypothesis HCSTM : ltac2:(tb__ "0|0|
S0S2cVCST;R1A2S2cS52R2A2SbF_;F_;Fa;").

Hypothesis HCSTD : ltac2:(tb__ "0|0|
S0S2cVCST;R1A2SaS3fR2A1A1F_;Fa;").
Let AInv : AA -> valuation -> list word -> Model -> Prop := AInvA segs.
Let J (W : list ulink) (st : ustop) (A : AA) (Kc : KcA) : jpredA := ltac2:(tb__ "0|0|
S23VAInv;VW;Vst;VA;VKc;S4PcA1A6").

Let law_die : forall A rho tp md, AInv A rho tp md -> cell_ok (view segs (rm rho)) (mkACell 0x17fbdc 4 0) := AInvA_die.
Let law_inv3 : forall A rho tp md, AInv A rho tp md -> inv3 A := AInvA_inv3.
Let W0 : list ulink := Wcan 0.
Let st0 : ustop := UStopLe.

Theorem malloc_hit_0_P : ltac2:(tb__ "0|4|
S28OF_;S3eS1dS2SeS4aQ40M0A1A1SeS10S30S33A2M1A1S32Vsegs;S2fR3R2R1A5S27S2eG1S12S30S33S24S1aVW0;Vst0;A3S22VAInv;VCST;VXGL;R6R5A5A4R2A3S1eR6A1S2bVsegs;R9S2aR7A1A3S34Vsegs;RaS2aR8A1A3S9S0S43RaS4bG0S5R8PcA2A2A2Z0A3S2S26Vsegs;RdS29Vsegs;S46VW0;Vst0;RcRbRaA5M2S3dVW0;Vst0;Z2M3A3R1R9A5R7A4FrhoE;F_;S2S26Vsegs;RdS29Vsegs;G2S37VW0;Vst0;G3Z8A4R1R9A5R7A4FrhoE;S26Vsegs;RdS29Vsegs;VJ;VW0;Vst0;RcRbA4S1cS1aVW0;Vst0;A3RaR9A5R7A4F_;F_;F_;F_;F_;F_;TQ;FPosts;Ftp;Frho;FKc;FA;Fok;").
Proof.
  intros ok A Kc rho tp Posts Q HPin HKc Hokl Hokpl HREF HSEC.
  assert (Hokf : forall A', ok_frameA segs ok (J W0 st0 A' Kc)).
  { intros A' r t tr ms md msv' HJ. apply (Hokl r t tr ms md msv'). destruct HJ as (_ & HK & _). exact HK. }
  assert (HUS : stopJ_stable W0 st0) by (apply stopJ_stable_le).
  assert (HW : st0 = UStopLeOrPc -> W0 = []) by (intros E; discriminate E).

  apply (spine_s1 law_die 0%nat st0 2 WC1_0 DC1_0 Cert1_0 ok A Kc rho tp Q HW HUS HKc (Hokf A) Wa_0 Da_0 Wb_0 Fbh_0 Fbl_0); [|exact HSEC].
  intros rhoE1.

  apply (spine_s2c 0%nat st0 2 Cert2_0 OVa_0 OVb_0 TABa_0 TABb_0 Wa'_0 Wb'_0 Da'_0 Db'_0 NXa_0 NXb_0 Fa_0 Fb_0 Ga_0 Gb_0 SKa_0 SKb_0 XXa_0 XXb_0 XFa_0 XFb_0
           W1a_0 W1ba_0 W1ca_0 W2a_0 W1ra_0 W2ra_0 W1b_0 W1bb_0 W1cb_0 W2b_0 W1rb_0 W2rb_0 sa_0 sra_0 sb_0 srb_0 ENTa_0 ENTra_0 ENTb_0 ENTrb_0
           SIDa_0 SIDra_0 SIDb_0 SIDrb_0 FB_0 FBr_0 ok A Kc rho tp Q HW HUS HKc (Hokf A)).
  2: { intros Hz0 rhoE2. apply (spine_s3r 0%nat st0 2 Cert3r_0 ok A Kc rho tp Q HUS HKc (Hokf A)). exact (HREF Hz0). }
  intros rhoE2.

  apply (spine_s3p_cert 0%nat st0 2 Cert3p_0 ok A Kc rho tp Q HUS HKc (Hokf A)).
  exact (malloc_hit_tail_0_P CST XGL HCST HXGL HCSTM HCSTD ok A Kc rho tp Posts HPin HKc Hokl Hokpl).
Qed.

Theorem malloc_hit_0 : ltac2:(tb__ "0|3|
S28OF_;S3eS1dS2SeS4aQ40M0A1A1S32Vsegs;S2fR2R1S25S1aVAInv;VCST;VXGL;VW0;Vst0;R4R3A8A5S27S1eR4A1S2bVsegs;R7S2aR5A1A3S34Vsegs;R8S2aR6A1A3S9S0S43R8S4bG0S5R6PcA2A2A2Z0A3S2S26Vsegs;RbS29Vsegs;S46VW0;Vst0;RaR9R8A5M1S3dVW0;Vst0;Z2M2A3R1R7A5R6A4FrhoE;F_;S2S26Vsegs;RbS29Vsegs;G1S37VW0;Vst0;G2Z8A4R1R7A5R6A4FrhoE;S26Vsegs;RbS29Vsegs;VJ;VW0;Vst0;RaR9A4S1cS1aVW0;Vst0;A3R8R7A5R6A4F_;F_;F_;F_;F_;TQ;Ftp;Frho;FKc;FA;Fok;").
Proof.
  intros ok A Kc rho tp. exact (malloc_hit_0_P ok A Kc rho tp (Posts_malloc AE_A AInv CST XGL W0 st0 A Kc) (or_intror (or_introl eq_refl))).
Qed.
End HIT0.
