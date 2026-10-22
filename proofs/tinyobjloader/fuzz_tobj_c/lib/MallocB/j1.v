(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
Local Set Warnings "-require-in-module".
(* [comment removed for export] *)
From Stdlib Require ZArith List Bool.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ie ix.
From Stdlib Require NArith PArith Lia.
From stdpp Require bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.tinyobjloader.fuzz_tobj_c.images Require AsanUbsan.

(* [comment removed for export] *)
Module F0A_bL0Bf.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@Corelib.Init.Datatypes"; "bool"; "true"; "@Corelib.Init.Logic"; "eq"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "sprop"; "sprop_eqb"; "ss_facts"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "ax_S"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ix.F0A_bigno"; "big_fact"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ie.F0A_cL0Bf"; "Ebg_L0Bf"; "@Stdlib.Lists.List"; "existsb"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymCFG.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import StepA EntailA CFGA GlueA SummaryA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i7.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ie.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ix.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i7.F0A_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ie.F0A_cL0Bf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ix.F0A_bigno.
Import ListNotations.
Open Scope Z_scope.

Lemma big_fact_L0Bf : ltac2:(tb__ "0|0|
S2S0S9S3S4S7A1S5S6S8A1A1A3S1A3").
Proof. vm_cast_no_check (@eq_refl bool true). Qed.
End F0A_bL0Bf.

(* [comment removed for export] *)
Module F0A_b2A.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@Corelib.Init.Datatypes"; "bool"; "true"; "@Corelib.Init.Logic"; "eq"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "sprop"; "sprop_eqb"; "ss_facts"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "ax_S"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ix.F0A_bigno"; "big_fact"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ib.F0A_c2A"; "Ebg_2A"; "@Stdlib.Lists.List"; "existsb"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymCFG.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import StepA EntailA CFGA GlueA SummaryA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i7.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ib.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ix.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i7.F0A_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ib.F0A_c2A OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ix.F0A_bigno.
Import ListNotations.
Open Scope Z_scope.

Lemma big_fact_2A : ltac2:(tb__ "0|0|
S2S0S9S3S4S7A1S5S6S8A1A1A3S1A3").
Proof. vm_cast_no_check (@eq_refl bool true). Qed.
End F0A_b2A.

(* [comment removed for export] *)
Module F0A_bL1A.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@Corelib.Init.Datatypes"; "bool"; "true"; "@Corelib.Init.Logic"; "eq"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "sprop"; "sprop_eqb"; "ss_facts"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "ax_S"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ix.F0A_bigno"; "big_fact"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ie.F0A_cL1A"; "Ebg_L1A"; "@Stdlib.Lists.List"; "existsb"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymCFG.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import StepA EntailA CFGA GlueA SummaryA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i7.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ie.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ix.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i7.F0A_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ie.F0A_cL1A OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ix.F0A_bigno.
Import ListNotations.
Open Scope Z_scope.

Lemma big_fact_L1A : ltac2:(tb__ "0|0|
S2S0S9S3S4S7A1S5S6S8A1A1A3S1A3").
Proof. vm_cast_no_check (@eq_refl bool true). Qed.
End F0A_bL1A.

(* [comment removed for export] *)
Module F0A_bL1Be.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@Corelib.Init.Datatypes"; "bool"; "true"; "@Corelib.Init.Logic"; "eq"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "sprop"; "sprop_eqb"; "ss_facts"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "ax_S"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ix.F0A_bigno"; "big_fact"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ie.F0A_cL1Be"; "Ebg_L1Be"; "@Stdlib.Lists.List"; "existsb"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymCFG.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import StepA EntailA CFGA GlueA SummaryA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i7.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ie.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ix.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i7.F0A_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ie.F0A_cL1Be OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ix.F0A_bigno.
Import ListNotations.
Open Scope Z_scope.

Lemma big_fact_L1Be : ltac2:(tb__ "0|0|
S2S0S9S3S4S7A1S5S6S8A1A1A3S1A3").
Proof. vm_cast_no_check (@eq_refl bool true). Qed.
End F0A_bL1Be.

(* [comment removed for export] *)
Module UnwT_pres.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@Corelib.Numbers.BinNums"; "Z"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "valuation"; "agree_below"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i0.CertStackFree"; "segsA"; "GW"; "@Corelib.Init.Datatypes"; "list"; "option"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SoundA"; "ok_frameA"; "liftKA"; "stableA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i0.IfaceTol"; "PRES"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Model"; "AA"; "ageom"; "topG"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.j1.UnwT_pres"; "JTw"; "@Stdlib.ZArith.BinInt.Z"; "lt"; "le"; "@stdpp.bitvector.definitions"; "bv"; "Z_to_bv"; "@Corelib.Init.Logic"; "and"; "eq"; "@LinuxProcessSemantics.LinuxProcessSem.MemImageType"; "Segment"; "@LinuxProcessSemantics.LinuxProcessSem.State"; "Model"; "event"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw.Safety"; "world"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.CFGA"; "withGA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ContractFreeNull"; "rt_zone2"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Iface"; "KcA"; "Kc_ok"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Inv"; "geom_ok"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ix.UnwT_node"; "J_free_tol_preT"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith NArith List Bool PArith Lia.
From stdpp Require Import bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.tinyobjloader.fuzz_tobj_c.images Require Import AsanUbsan.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc Require Import Glue.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Import ImageFacts.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import Virt StepA SoundA CFGA GlueA SummaryA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require Geometry Budget Model RtCells Iface Inv InvLaws RebuildSM ContractFreeNull.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i0.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require SpineMallocI.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i7.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require F0A_skel.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ih.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ix.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Geometry OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Budget OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Model OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.RtCells OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Iface OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Inv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.InvLaws OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.RebuildSM OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ContractFreeNull OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i0.CertStackFree OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SpineMallocI OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i7.F0A_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_skel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i0.IfaceTol OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ih.UnwT_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ix.UnwT_node.
Import ListNotations.
Close Scope bv_scope.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Lemma PRES_rm_eq : ltac2:(tb__ "0|4|
S5S15A1S11Q40M0A1S6S11Q8A1A1M1F_;M2G2S0S0S0S13S10R3R1A2SfR1R2A2A2S14G1R5S12G0R2A2M3A1R6G3A1A3F_;Fa;SaR6R5R3R2A4SaR7R5R4R3A4F_;F_;Fhi;Flo;Fm';Fm;Fsegs;").
Proof.
  intros segs m m' lo hi HE HP a Ha. specialize (HP a Ha). unfold wok_of, rd_of in *. rewrite (HE a Ha). exact HP.
Qed.
Lemma rt_zone2_below_top : ltac2:(tb__ "0|0|
ScS0S1dR2A1S1aR3R2A2SfR3SdR4A1A2F_;F_;Fa;FG;").
Proof.
  intros G a HG HZ. pose proof (geom_nums G HG) as (N1 & N2 & _ & N4 & N5 & _ & N7 & N8 & N9 & N10 & _ & _ & _ & NT).
  rewrite FS_total_val in N2. unfold IMG_HI in *.
  unfold rt_zone2, rt_zone, IA_BEG, IA_END, IMG_HI in HZ. clear N4 N7 N9 HG. lia.
Qed.

Definition JTw (A : AA) (Kc : KcA) (rho : valuation) : jpredA := ltac2:(tb__ "0|0|
S19S1S2S4Vrho;R1A3Lr;S1eVA;VKc;A2A2").
Lemma JTw_stable : ltac2:(tb__ "0|0|
SbS1bS1S1cR2A1S9S3S4SeR4R3R2A3A3F_;Frho;FKc;FA;").
Proof.
  intros A Kc rho HKc. unfold JTw. apply stableA_withG; [intros r1 r2 H1 H2; eapply agree_below_trans; eauto|].
  intros r r' tp tr md md' Hag Hme (HJ & HK & HP). split; [|split; [exact HK|]].
  - exact (J_stableA 0%nat UStopLe true A Kc (stopJ_stable_le _) HKc r r' tp tr md md' Hag Hme HJ).
  - rewrite (rm_agree _ _ _ Hag). rewrite <- (proj1 Hag 10%positive) by (unfold GW; lia). exact HP.
Qed.
Lemma JTw_okf : ltac2:(tb__ "0|0|
S18OF_;SbS5S17A1S16OF_;F_;S1S7S3R4S8R2A1A3S7S3R5SeR4R3R2A3A3F_;Frho;FKc;FA;Fok;").
Proof.
  intros ok A Kc rho H r t tr ms md msv' [_ [HJ _]]. apply (H r t tr ms md msv'). destruct HJ as (_ & _ & _ & HK & _). exact HK.
Qed.
End UnwT_pres.

(* [comment removed for export] *)
Module F0A_b2Be.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@Corelib.Init.Datatypes"; "bool"; "true"; "@Corelib.Init.Logic"; "eq"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "sprop"; "sprop_eqb"; "ss_facts"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "ax_S"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ix.F0A_bigno"; "big_fact"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ic.F0A_c2Be"; "Ebg_2Be"; "@Stdlib.Lists.List"; "existsb"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymCFG.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import StepA EntailA CFGA GlueA SummaryA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i7.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ic.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ix.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i7.F0A_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ic.F0A_c2Be OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ix.F0A_bigno.
Import ListNotations.
Open Scope Z_scope.

Lemma big_fact_2Be : ltac2:(tb__ "0|0|
S2S0S9S3S4S7A1S5S6S8A1A1A3S1A3").
Proof. vm_cast_no_check (@eq_refl bool true). Qed.
End F0A_b2Be.

