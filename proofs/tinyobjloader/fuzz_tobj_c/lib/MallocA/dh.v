(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
Local Set Warnings "-require-in-module".
(* [comment removed for export] *)
From Stdlib Require ZArith List Bool Lia.
From stdpp Require bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require BvBase MemImageType State.
From OssFuzzTheorems.tinyobjloader.fuzz_tobj_c.images Require Asan.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require cp ar c1 db d1 ck de dy d2.

(* [comment removed for export] *)
Module F0A_a0A.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Iface"; "UStopLe"; "Wcan"; "AE_A"; "Pre_freeI"; "JL_free"; "J_free_preT"; "KcA"; "Kc_ok"; "L_free"; "@Corelib.Init.Logic"; "eq"; "not"; "False"; "and"; "or"; "@Corelib.Numbers.BinNums"; "Z"; "@Corelib.Init.Datatypes"; "true"; "bool"; "list"; "nil"; "pair"; "prod"; "cons"; "Some"; "option"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a0.CertStackFree"; "segsA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.af.F0A_c0A"; "q_0A"; "Ebg_0A"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "axst"; "ax_S"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "rw"; "sv"; "swf"; "sprop"; "valuation"; "SLit"; "SVar"; "sprop_below"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SummaryA"; "jpostA"; "LQPA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_instok"; "rhoF_of"; "j_min"; "junkF"; "qcond"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.RtCells"; "in_rangesZ"; "@stdpp.bitvector.definitions"; "bv_unsigned"; "bv"; "@Stdlib.ZArith.BinInt.Z"; "le"; "sub"; "lt"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw.Safety"; "assn"; "etriple"; "triple"; "world"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.ExampleMemcpy"; "NF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SoundA"; "SPA"; "liftKA"; "ok_frameA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.DepotCall"; "KEEPD"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.c6.F0A_depot"; "tjv_ok"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.av.F0A_inst"; "sa_f"; "XI"; "sb_f"; "sc_f"; "sd_f"; "se_f"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_skel"; "rigF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Geometry"; "SHADOW_BAND_HI"; "kQuarantineMin"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Inv"; "AInvA"; "IA_BEG"; "IA_END"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Model"; "AA"; "aa_internal_inited"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.Glue3"; "state_diff"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SysCallA"; "ok_pframeA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.AxXform"; "apply_axforms"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a4.CertFreeNull"; "NW2"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a1.CertStackMalloc"; "TP_A"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.af.F0A_cls"; "FACTSc"; "P0_fc"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_drain"; "drain_sum"; "drain_sumE"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ar.F0A_i0A"; "contF"; "econtF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_rebuild"; "IMG_F"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.InvQ8"; "QRD_img"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.SegD_wf"; "dfp_static"; "@Stdlib.Lists.List"; "forallb"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool Lia.
From stdpp Require Import bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase MemImageType State.
From OssFuzzTheorems.tinyobjloader.fuzz_tobj_c.images Require Import Asan.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw Require Import Safety.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymFrame SymCFG SymCall SymSummary Glue3 ExampleMemcpy.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import StepA SoundA EntailA CFGA GlueA SummaryA SysCallA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import AxXform.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require Geometry Model RtCells Iface Inv InvLaws.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a0.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a4.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require SpineMallocI SegD_wf DepotCall.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Geometry OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Model OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.RtCells OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Iface OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Inv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.InvLaws OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a0.CertStackFree OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a1.CertStackMalloc OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a4.CertFreeNull OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.SpineMallocI OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.SegD_wf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.DepotCall.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a6.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require F0A_skel.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require af.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require av.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require ac.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require F0A_instok F0A_rebuild.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require c6.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require cp.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require ar.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require c1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require InvQ8 F0A_drain.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require db.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a6.F0A_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_skel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.af.F0A_cls OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.av.F0A_inst OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ac.F0A_laws OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_instok OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_rebuild OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.c6.F0A_depot OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.cp.F0A_asm OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.af.F0A_c0A OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ar.F0A_i0A OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.c6.F0A_xi0A OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.c1.F0A_d0A OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.InvQ8 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_drain OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.db.F0A_q0A.
Import ListNotations.
Close Scope bv_scope.
Open Scope Z_scope.
Ltac vmr := match goal with |- _ = ?r => vm_cast_no_check (@eq_refl _ r) end.

Lemma Wa_0A : ltac2:(tb__ "0|0|
S9S10S1fS3bS1U0A1S0A2A1SfA3"). Proof. vmr. Qed.
Lemma Da_0A : ltac2:(tb__ "0|5|
S9S17S14S11S14S1eS1eA2M0A1M1S11S20A1M2A2M3A1S49S1cS3S2S1U0A1M4S0A3A1S3bG4S0A2A2S16G3S13G1G2S15G0S13S1eS1eS23P18A1S22S4dA1A4S12G0A1A3S12S20A1A4A2A3"). Proof. vmr. Qed.
Lemma Wb_0A : ltac2:(tb__ "0|0|
S9S10S1fS3dS1U0A1S0S19A3A1SfA3"). Proof. vmr. Qed.
Lemma Wc_0A : ltac2:(tb__ "0|0|
S9S10S1fS3eS1U0A1S0S19A3A1SfA3"). Proof. vmr. Qed.
Lemma Wd_0A : ltac2:(tb__ "0|0|
S9S10S1fS3fS1U0A1S0S19A3A1SfA3"). Proof. vmr. Qed.
Lemma Fb_0A : ltac2:(tb__ "0|0|
S9S10S57S20S24S4cA1S4eSfS1U0A1S0S19A4A3SfA3"). Proof. vmr. Qed.
Lemma XI_0A : ltac2:(tb__ "0|2|
S9S17S1bA1S4bS40SfS1U0M0A1M1S0S19A4S3cG0S19A2A2S16S1bS4fSfG1S0S19A4A2A3"). Proof. vmr. Qed.

Section ASM.
Variables CST XGL : list (Z * Z).
Hypothesis HCST : cst_ok CST.
Hypothesis HXGL : xgl_ok XGL.
Hypothesis HCSTF : ltac2:(tb__ "0|0|
SeS2bVCST;R1A2SdS2bS54R2A2ScS2eS45R2A2S30R2S46A2A2A2SbF_;F_;Fa;").
Hypothesis HCSTD : ltac2:(tb__ "0|0|
SeS2bVCST;R1A2SaS56R2A1A1F_;Fa;").
Hypothesis HCSTQ : ltac2:(tb__ "0|0|
SeS2bVCST;R1A2SaS55R2A1A1F_;Fa;").

Theorem free_hi_0A : ltac2:(tb__ "0|4|
S34OF_;S47S6S21S11S2dQ40M0A1A1S2cG0S1dR2PcA2A2SeS2cG0S1dR3PdA2A2SeS26S18S35R4R3S15S14S1bS25A2M1S13S1bS25S8S2S1U0A1M2S0A3S4S44S18A1M3VCST;VXGL;R6R5A5A4S12G1A1A3A5S31S7R6A1S38S18R9S37R7A1A3S4aS18RaS37R8A1A3S2eS42S2fR6Z10A2A2S9S10S48RbA1SfA3S2aS19RcA2SeS29S3aRfRdRbRaR2R1A6S9SeS28R2A1S43A3S41RfS27R11RfRdRcR4R3A6A2S52S39VCST;VXGL;R12A3R13R12R11S27R12R10ReRdR5R4A6S1aRcA7F_;F_;F_;Fjv;Ft;S50RfRdA2S33S18R10S36S18S5G3G2S0RfReA5S3S2G2S0A3RdRcA5R9A4F_;F_;F_;F_;F_;F_;F_;F_;TQ;Tn;Tp;Ftp;Frho;FKc;FA;Fok;").
Proof.
  intros ok A Kc rho tp p n Q HKc Hok Hokp HHI Hii QC HBIG HDS. pose proof (cls_hyp_blk true p n HHI) as HCL.
  apply (triple_pre_pure segsA ok _ _ (budget_ok_free A)); [intros w Hw; exact (entry_budget _ _ A Kc rho tp w Hw)|]. intros HBud.
  apply (triple_pre_pure segsA ok _ _ (entry_pureF true (Wcan 0) UStopLe q_0A A rho)); [intros w Hw; exact (entry_pure true _ _ _ A Kc rho tp w HHI Hii QC Hw)|].
  intros (HL & (tp0 & md0 & HA0) & t & jv & HTJ & HJM & IFF). fold p n in HL, HTJ, IFF.
  intros k Hg w Hw.
  destruct (f_instantiate true 0 UStopLe q_0A Wa_0A Da_0A Wb_0A Wc_0A Wd_0A Fb_0A XI_0A A Kc rho (rhoF_of A rho p n t jv) tp w p n (N8 n)
              ltac:(intros E; discriminate E) (stopJ_stable_le _) (rhoF_agree A rho p n t jv) IFF Hw) as [HR Hw1].
  exact (free_spine_0A (KEEPD CST XGL A) ok A Kc rho (rhoF_of A rho p n t jv) tp Q HKc Hok HR
           (hdf_0A_1 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp) (hdf_0A_2 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp)
           (HBIG t jv HTJ HJM HR)
           (f0_drain_0A CST XGL HCST HXGL HCSTQ HCSTF ok A Kc rho tp p n t jv (KEEPD CST XGL A) HKc Hok HDS HBud eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (f0_exit_0A CST XGL HCST HXGL HCSTF ok A Kc rho tp p n t jv (KEEPD CST XGL A) eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (rhoF_of A rho p n t jv) k Hg w Hw1).
Qed.

Theorem efree_hi_0A : ltac2:(tb__ "0|4|
S47S6S21S11S2dQ40M0A1A1S2cG0S1dR2PcA2A2SeS2cG0S1dR3PdA2A2SeS26S18S35R4R3S15S14S1bS25A2M1S13S1bS25S8S2S1U0A1M2S0A3S4S44S18A1M3VCST;VXGL;R6R5A5A4S12G1A1A3A5S31S7R6A1S2eS42S2fR4Z10A2A2S9S10S48R9A1SfA3S2aS19RaA2SeS29S3aRdRbR9R8R2R1A6S9SeS28R2A1S43A3S41RdS27RfRdRbRaR4R3A6A2S53S39VCST;VXGL;R10A3R10RfS27R10ReRcRbR5R4A6S1aRaA6F_;F_;F_;Fjv;Ft;S51RbA1S32S18S36S18S5G3G2S0RdRcA5S3S2G2S0A3RbRaA5R7A3F_;F_;F_;F_;F_;F_;TQ;Tn;Tp;Ftp;Frho;FKc;FA;").
Proof.
  intros A Kc rho tp p n Q HKc HHI Hii QC HBIG HDS. pose proof (cls_hyp_blk true p n HHI) as HCL.
  apply (etriple_pre_pure segsA _ _ (budget_ok_free A)); [intros w Hw; exact (entry_budget _ _ A Kc rho tp w Hw)|]. intros HBud.
  apply (etriple_pre_pure segsA _ _ (entry_pureF true (Wcan 0) UStopLe q_0A A rho)); [intros w Hw; exact (entry_pure true _ _ _ A Kc rho tp w HHI Hii QC Hw)|].
  intros (HL & (tp0 & md0 & HA0) & t & jv & HTJ & HJM & IFF). fold p n in HL, HTJ, IFF.
  intros w Hw.
  destruct (f_instantiate true 0 UStopLe q_0A Wa_0A Da_0A Wb_0A Wc_0A Wd_0A Fb_0A XI_0A A Kc rho (rhoF_of A rho p n t jv) tp w p n (N8 n)
              ltac:(intros E; discriminate E) (stopJ_stable_le _) (rhoF_agree A rho p n t jv) IFF Hw) as [HR Hw1].
  exact (efree_spine_0A (KEEPD CST XGL A) A Kc rho (rhoF_of A rho p n t jv) tp Q HKc HR
           (hdfe_0A_1 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _) (hdfe_0A_2 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _)
           (HBIG t jv HTJ HJM HR)
           (ef0_drain_0A CST XGL HCST HXGL HCSTQ HCSTF A Kc rho tp p n t jv (KEEPD CST XGL A) HKc HDS HBud eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (ef0_exit_0A CST XGL HCST HXGL HCSTF A Kc rho tp p n t jv (KEEPD CST XGL A) eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (rhoF_of A rho p n t jv) w Hw1).
Qed.
End ASM.

End F0A_a0A.

(* [comment removed for export] *)
Module F0A_a0Be.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Iface"; "UStopLe"; "Wcan"; "AE_A"; "Pre_freeI"; "JL_free"; "J_free_preT"; "KcA"; "Kc_ok"; "L_free"; "@Corelib.Init.Logic"; "eq"; "not"; "False"; "and"; "or"; "@Corelib.Numbers.BinNums"; "Z"; "@Corelib.Init.Datatypes"; "true"; "bool"; "list"; "nil"; "pair"; "prod"; "cons"; "Some"; "option"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a0.CertStackFree"; "segsA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.af.F0A_c0Be"; "q_0Be"; "Ebg_0Be"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "axst"; "ax_S"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "rw"; "sv"; "swf"; "sprop"; "valuation"; "SLit"; "SVar"; "sprop_below"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SummaryA"; "jpostA"; "LQPA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_instok"; "rhoF_of"; "j_min"; "junkF"; "qcond"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.RtCells"; "in_rangesZ"; "@stdpp.bitvector.definitions"; "bv_unsigned"; "bv"; "@Stdlib.ZArith.BinInt.Z"; "le"; "sub"; "lt"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw.Safety"; "assn"; "etriple"; "triple"; "world"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.ExampleMemcpy"; "NF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SoundA"; "SPA"; "liftKA"; "ok_frameA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.DepotCall"; "KEEPD"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.c6.F0A_depot"; "tjv_ok"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.av.F0A_inst"; "sa_f"; "XI"; "sb_f"; "sc_f"; "sd_f"; "se_f"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_skel"; "rigF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Geometry"; "SHADOW_BAND_HI"; "kQuarantineMin"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Inv"; "AInvA"; "IA_BEG"; "IA_END"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Model"; "AA"; "aa_internal_inited"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.Glue3"; "state_diff"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SysCallA"; "ok_pframeA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.AxXform"; "apply_axforms"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a4.CertFreeNull"; "NW2"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a1.CertStackMalloc"; "TP_A"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.af.F0A_cls"; "FACTSc"; "P0_fc"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_drain"; "drain_sum"; "drain_sumE"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ar.F0A_i0Be"; "contF"; "econtF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_rebuild"; "IMG_F"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.InvQ8"; "QRD_img"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.SegD_wf"; "dfp_static"; "@Stdlib.Lists.List"; "forallb"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool Lia.
From stdpp Require Import bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase MemImageType State.
From OssFuzzTheorems.tinyobjloader.fuzz_tobj_c.images Require Import Asan.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw Require Import Safety.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymFrame SymCFG SymCall SymSummary Glue3 ExampleMemcpy.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import StepA SoundA EntailA CFGA GlueA SummaryA SysCallA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import AxXform.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require Geometry Model RtCells Iface Inv InvLaws.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a0.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a4.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require SpineMallocI SegD_wf DepotCall.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Geometry OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Model OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.RtCells OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Iface OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Inv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.InvLaws OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a0.CertStackFree OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a1.CertStackMalloc OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a4.CertFreeNull OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.SpineMallocI OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.SegD_wf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.DepotCall.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a6.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require F0A_skel.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require af.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require av.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require ac.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require F0A_instok F0A_rebuild.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require c6.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require cp.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require ar.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require d1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require ck.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require InvQ8 F0A_drain.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require db.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a6.F0A_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_skel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.af.F0A_cls OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.av.F0A_inst OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ac.F0A_laws OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_instok OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_rebuild OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.c6.F0A_depot OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.cp.F0A_asm OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.af.F0A_c0Be OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ar.F0A_i0Be OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.d1.F0A_xi0Be OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ck.F0A_d0Be OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.InvQ8 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_drain OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.db.F0A_q0Be.
Import ListNotations.
Close Scope bv_scope.
Open Scope Z_scope.
Ltac vmr := match goal with |- _ = ?r => vm_cast_no_check (@eq_refl _ r) end.

Lemma Wa_0Be : ltac2:(tb__ "0|0|
S9S10S1fS3bS1U0A1S0A2A1SfA3"). Proof. vmr. Qed.
Lemma Da_0Be : ltac2:(tb__ "0|5|
S9S17S14S11S14S1eS1eA2M0A1M1S11S20A1M2A2M3A1S49S1cS3S2S1U0A1M4S0A3A1S3bG4S0A2A2S16G3S13G1G2S15G0S13S1eS1eS23P18A1S22S4dA1A4S12G0A1A3S12S20A1A4A2A3"). Proof. vmr. Qed.
Lemma Wb_0Be : ltac2:(tb__ "0|0|
S9S10S1fS3dS1U0A1S0S19A3A1SfA3"). Proof. vmr. Qed.
Lemma Wc_0Be : ltac2:(tb__ "0|0|
S9S10S1fS3eS1U0A1S0S19A3A1SfA3"). Proof. vmr. Qed.
Lemma Wd_0Be : ltac2:(tb__ "0|0|
S9S10S1fS3fS1U0A1S0S19A3A1SfA3"). Proof. vmr. Qed.
Lemma Fb_0Be : ltac2:(tb__ "0|0|
S9S10S57S20S24S4cA1S4eSfS1U0A1S0S19A4A3SfA3"). Proof. vmr. Qed.
Lemma XI_0Be : ltac2:(tb__ "0|2|
S9S17S1bA1S4bS40SfS1U0M0A1M1S0S19A4S3cG0S19A2A2S16S1bS4fSfG1S0S19A4A2A3"). Proof. vmr. Qed.

Section ASM.
Variables CST XGL : list (Z * Z).
Hypothesis HCST : cst_ok CST.
Hypothesis HXGL : xgl_ok XGL.
Hypothesis HCSTF : ltac2:(tb__ "0|0|
SeS2bVCST;R1A2SdS2bS54R2A2ScS2eS45R2A2S30R2S46A2A2A2SbF_;F_;Fa;").
Hypothesis HCSTD : ltac2:(tb__ "0|0|
SeS2bVCST;R1A2SaS56R2A1A1F_;Fa;").
Hypothesis HCSTQ : ltac2:(tb__ "0|0|
SeS2bVCST;R1A2SaS55R2A1A1F_;Fa;").

Theorem free_hi_0Be : ltac2:(tb__ "0|4|
S34OF_;S47S6S21S11S2dQ40M0A1A1S2cG0S1dR2PcA2A2SeS2cG0S1dR3PdA2A2SeS26S18S35R4R3S15S14S1bS25A2M1S13S1bS25S8S2S1U0A1M2S0A3S4S44S18A1M3VCST;VXGL;R6R5A5A4S12G1A1A3A5S31S7R6A1S38S18R9S37R7A1A3S4aS18RaS37R8A1A3S2eS42S2fR6Z10A2A2S9S10S48RbA1SfA3S2aS19RcA2SeS29S3aRfRdRbRaR2R1A6S9SeS28R2A1S43A3S41RfS27R11RfRdRcR4R3A6A2S52S39VCST;VXGL;R12A3R13R12R11S27R12R10ReRdR5R4A6S1aRcA7F_;F_;F_;Fjv;Ft;S50RfRdA2S33S18R10S36S18S5G3G2S0RfReA5S3S2G2S0A3RdRcA5R9A4F_;F_;F_;F_;F_;F_;F_;F_;TQ;Tn;Tp;Ftp;Frho;FKc;FA;Fok;").
Proof.
  intros ok A Kc rho tp p n Q HKc Hok Hokp HHI Hii QC HBIG HDS. pose proof (cls_hyp_blk true p n HHI) as HCL.
  apply (triple_pre_pure segsA ok _ _ (budget_ok_free A)); [intros w Hw; exact (entry_budget _ _ A Kc rho tp w Hw)|]. intros HBud.
  apply (triple_pre_pure segsA ok _ _ (entry_pureF true (Wcan 0) UStopLe q_0Be A rho)); [intros w Hw; exact (entry_pure true _ _ _ A Kc rho tp w HHI Hii QC Hw)|].
  intros (HL & (tp0 & md0 & HA0) & t & jv & HTJ & HJM & IFF). fold p n in HL, HTJ, IFF.
  intros k Hg w Hw.
  destruct (f_instantiate true 0 UStopLe q_0Be Wa_0Be Da_0Be Wb_0Be Wc_0Be Wd_0Be Fb_0Be XI_0Be A Kc rho (rhoF_of A rho p n t jv) tp w p n (N8 n)
              ltac:(intros E; discriminate E) (stopJ_stable_le _) (rhoF_agree A rho p n t jv) IFF Hw) as [HR Hw1].
  exact (free_spine_0Be (KEEPD CST XGL A) ok A Kc rho (rhoF_of A rho p n t jv) tp Q HKc Hok HR
           (hdf_0Be_1 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp) (hdf_0Be_2 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp)
           (HBIG t jv HTJ HJM HR)
           (f0_drain_0Be CST XGL HCST HXGL HCSTQ HCSTF ok A Kc rho tp p n t jv (KEEPD CST XGL A) HKc Hok HDS HBud eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (f0_exit_0Be CST XGL HCST HXGL HCSTF ok A Kc rho tp p n t jv (KEEPD CST XGL A) eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (rhoF_of A rho p n t jv) k Hg w Hw1).
Qed.

Theorem efree_hi_0Be : ltac2:(tb__ "0|4|
S47S6S21S11S2dQ40M0A1A1S2cG0S1dR2PcA2A2SeS2cG0S1dR3PdA2A2SeS26S18S35R4R3S15S14S1bS25A2M1S13S1bS25S8S2S1U0A1M2S0A3S4S44S18A1M3VCST;VXGL;R6R5A5A4S12G1A1A3A5S31S7R6A1S2eS42S2fR4Z10A2A2S9S10S48R9A1SfA3S2aS19RaA2SeS29S3aRdRbR9R8R2R1A6S9SeS28R2A1S43A3S41RdS27RfRdRbRaR4R3A6A2S53S39VCST;VXGL;R10A3R10RfS27R10ReRcRbR5R4A6S1aRaA6F_;F_;F_;Fjv;Ft;S51RbA1S32S18S36S18S5G3G2S0RdRcA5S3S2G2S0A3RbRaA5R7A3F_;F_;F_;F_;F_;F_;TQ;Tn;Tp;Ftp;Frho;FKc;FA;").
Proof.
  intros A Kc rho tp p n Q HKc HHI Hii QC HBIG HDS. pose proof (cls_hyp_blk true p n HHI) as HCL.
  apply (etriple_pre_pure segsA _ _ (budget_ok_free A)); [intros w Hw; exact (entry_budget _ _ A Kc rho tp w Hw)|]. intros HBud.
  apply (etriple_pre_pure segsA _ _ (entry_pureF true (Wcan 0) UStopLe q_0Be A rho)); [intros w Hw; exact (entry_pure true _ _ _ A Kc rho tp w HHI Hii QC Hw)|].
  intros (HL & (tp0 & md0 & HA0) & t & jv & HTJ & HJM & IFF). fold p n in HL, HTJ, IFF.
  intros w Hw.
  destruct (f_instantiate true 0 UStopLe q_0Be Wa_0Be Da_0Be Wb_0Be Wc_0Be Wd_0Be Fb_0Be XI_0Be A Kc rho (rhoF_of A rho p n t jv) tp w p n (N8 n)
              ltac:(intros E; discriminate E) (stopJ_stable_le _) (rhoF_agree A rho p n t jv) IFF Hw) as [HR Hw1].
  exact (efree_spine_0Be (KEEPD CST XGL A) A Kc rho (rhoF_of A rho p n t jv) tp Q HKc HR
           (hdfe_0Be_1 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _) (hdfe_0Be_2 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _)
           (HBIG t jv HTJ HJM HR)
           (ef0_drain_0Be CST XGL HCST HXGL HCSTQ HCSTF A Kc rho tp p n t jv (KEEPD CST XGL A) HKc HDS HBud eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (ef0_exit_0Be CST XGL HCST HXGL HCSTF A Kc rho tp p n t jv (KEEPD CST XGL A) eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (rhoF_of A rho p n t jv) w Hw1).
Qed.
End ASM.

End F0A_a0Be.

(* [comment removed for export] *)
Module F0A_a1A.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Iface"; "UStopLe"; "Wcan"; "AE_A"; "Pre_freeI"; "JL_free"; "J_free_preT"; "KcA"; "Kc_ok"; "L_free"; "@Corelib.Init.Logic"; "eq"; "not"; "False"; "and"; "or"; "@Corelib.Numbers.BinNums"; "Z"; "@Corelib.Init.Datatypes"; "true"; "bool"; "list"; "nil"; "pair"; "prod"; "cons"; "Some"; "option"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a0.CertStackFree"; "segsA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.af.F0A_c1A"; "q_1A"; "Ebg_1A"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "axst"; "ax_S"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "rw"; "sv"; "swf"; "sprop"; "valuation"; "SLit"; "SVar"; "sprop_below"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SummaryA"; "jpostA"; "LQPA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_instok"; "rhoF_of"; "j_min"; "junkF"; "qcond"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.RtCells"; "in_rangesZ"; "@stdpp.bitvector.definitions"; "bv_unsigned"; "bv"; "@Stdlib.ZArith.BinInt.Z"; "le"; "sub"; "lt"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw.Safety"; "assn"; "etriple"; "triple"; "world"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.ExampleMemcpy"; "NF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SoundA"; "SPA"; "liftKA"; "ok_frameA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.DepotCall"; "KEEPD"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.c6.F0A_depot"; "tjv_ok"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.av.F0A_inst"; "sa_f"; "XI"; "sb_f"; "sc_f"; "sd_f"; "se_f"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_skel"; "rigF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Geometry"; "SHADOW_BAND_HI"; "kQuarantineMin"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Inv"; "AInvA"; "IA_BEG"; "IA_END"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Model"; "AA"; "aa_internal_inited"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.Glue3"; "state_diff"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SysCallA"; "ok_pframeA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.AxXform"; "apply_axforms"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a4.CertFreeNull"; "NW2"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a1.CertStackMalloc"; "TP_A"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.af.F0A_cls"; "FACTSc"; "P0_fc"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_drain"; "drain_sum"; "drain_sumE"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ar.F0A_i1A"; "contF"; "econtF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_rebuild"; "IMG_F"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.InvQ8"; "QRD_img"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.SegD_wf"; "dfp_static"; "@Stdlib.Lists.List"; "forallb"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool Lia.
From stdpp Require Import bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase MemImageType State.
From OssFuzzTheorems.tinyobjloader.fuzz_tobj_c.images Require Import Asan.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw Require Import Safety.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymFrame SymCFG SymCall SymSummary Glue3 ExampleMemcpy.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import StepA SoundA EntailA CFGA GlueA SummaryA SysCallA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import AxXform.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require Geometry Model RtCells Iface Inv InvLaws.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a0.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a4.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require SpineMallocI SegD_wf DepotCall.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Geometry OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Model OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.RtCells OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Iface OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Inv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.InvLaws OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a0.CertStackFree OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a1.CertStackMalloc OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a4.CertFreeNull OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.SpineMallocI OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.SegD_wf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.DepotCall.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a6.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require F0A_skel.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require af.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require av.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require ac.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require F0A_instok F0A_rebuild.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require c6.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require cp.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require ar.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require d1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require ck.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require InvQ8 F0A_drain.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require de.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a6.F0A_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_skel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.af.F0A_cls OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.av.F0A_inst OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ac.F0A_laws OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_instok OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_rebuild OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.c6.F0A_depot OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.cp.F0A_asm OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.af.F0A_c1A OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ar.F0A_i1A OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.d1.F0A_xi1A OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ck.F0A_d1A OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.InvQ8 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_drain OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.de.F0A_q1A.
Import ListNotations.
Close Scope bv_scope.
Open Scope Z_scope.
Ltac vmr := match goal with |- _ = ?r => vm_cast_no_check (@eq_refl _ r) end.

Lemma Wa_1A : ltac2:(tb__ "0|0|
S9S10S1fS3bS1U1A1S0A2A1SfA3"). Proof. vmr. Qed.
Lemma Da_1A : ltac2:(tb__ "0|5|
S9S17S14S11S14S1eS1eA2M0A1M1S11S20A1M2A2M3A1S49S1cS3S2S1U1A1M4S0A3A1S3bG4S0A2A2S16G3S13G1G2S15G0S13S1eS1eS23P18A1S22S4dA1A4S12G0A1A3S12S20A1A4A2A3"). Proof. vmr. Qed.
Lemma Wb_1A : ltac2:(tb__ "0|0|
S9S10S1fS3dS1U1A1S0S19A3A1SfA3"). Proof. vmr. Qed.
Lemma Wc_1A : ltac2:(tb__ "0|0|
S9S10S1fS3eS1U1A1S0S19A3A1SfA3"). Proof. vmr. Qed.
Lemma Wd_1A : ltac2:(tb__ "0|0|
S9S10S1fS3fS1U1A1S0S19A3A1SfA3"). Proof. vmr. Qed.
Lemma Fb_1A : ltac2:(tb__ "0|0|
S9S10S57S20S24S4cA1S4eSfS1U1A1S0S19A4A3SfA3"). Proof. vmr. Qed.
Lemma XI_1A : ltac2:(tb__ "0|2|
S9S17S1bA1S4bS40SfS1U1M0A1M1S0S19A4S3cG0S19A2A2S16S1bS4fSfG1S0S19A4A2A3"). Proof. vmr. Qed.

Section ASM.
Variables CST XGL : list (Z * Z).
Hypothesis HCST : cst_ok CST.
Hypothesis HXGL : xgl_ok XGL.
Hypothesis HCSTF : ltac2:(tb__ "0|0|
SeS2bVCST;R1A2SdS2bS54R2A2ScS2eS45R2A2S30R2S46A2A2A2SbF_;F_;Fa;").
Hypothesis HCSTD : ltac2:(tb__ "0|0|
SeS2bVCST;R1A2SaS56R2A1A1F_;Fa;").
Hypothesis HCSTQ : ltac2:(tb__ "0|0|
SeS2bVCST;R1A2SaS55R2A1A1F_;Fa;").

Theorem free_hi_1A : ltac2:(tb__ "0|4|
S34OF_;S47S6S21S11S2dQ40M0A1A1S2cG0S1dR2PcA2A2SeS2cG0S1dR3PdA2A2SeS26S18S35R4R3S15S14S1bS25A2M1S13S1bS25S8S2S1U1A1M2S0A3S4S44S18A1M3VCST;VXGL;R6R5A5A4S12G1A1A3A5S31S7R6A1S38S18R9S37R7A1A3S4aS18RaS37R8A1A3S2eS42S2fR6Z10A2A2S9S10S48RbA1SfA3S2aS19RcA2SeS29S3aRfRdRbRaR2R1A6S9SeS28R2A1S43A3S41RfS27R11RfRdRcR4R3A6A2S52S39VCST;VXGL;R12A3R13R12R11S27R12R10ReRdR5R4A6S1aRcA7F_;F_;F_;Fjv;Ft;S50RfRdA2S33S18R10S36S18S5G3G2S0RfReA5S3S2G2S0A3RdRcA5R9A4F_;F_;F_;F_;F_;F_;F_;F_;TQ;Tn;Tp;Ftp;Frho;FKc;FA;Fok;").
Proof.
  intros ok A Kc rho tp p n Q HKc Hok Hokp HHI Hii QC HBIG HDS. pose proof (cls_hyp_blk true p n HHI) as HCL.
  apply (triple_pre_pure segsA ok _ _ (budget_ok_free A)); [intros w Hw; exact (entry_budget _ _ A Kc rho tp w Hw)|]. intros HBud.
  apply (triple_pre_pure segsA ok _ _ (entry_pureF true (Wcan 1) UStopLe q_1A A rho)); [intros w Hw; exact (entry_pure true _ _ _ A Kc rho tp w HHI Hii QC Hw)|].
  intros (HL & (tp0 & md0 & HA0) & t & jv & HTJ & HJM & IFF). fold p n in HL, HTJ, IFF.
  intros k Hg w Hw.
  destruct (f_instantiate true 1 UStopLe q_1A Wa_1A Da_1A Wb_1A Wc_1A Wd_1A Fb_1A XI_1A A Kc rho (rhoF_of A rho p n t jv) tp w p n (N8 n)
              ltac:(intros E; discriminate E) (stopJ_stable_le _) (rhoF_agree A rho p n t jv) IFF Hw) as [HR Hw1].
  exact (free_spine_1A (KEEPD CST XGL A) ok A Kc rho (rhoF_of A rho p n t jv) tp Q HKc Hok HR
           (hdf_1A_1 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp) (hdf_1A_2 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp) (hdf_1A_3 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp)
           (HBIG t jv HTJ HJM HR)
           (f0_drain_1A CST XGL HCST HXGL HCSTQ HCSTF ok A Kc rho tp p n t jv (KEEPD CST XGL A) HKc Hok HDS HBud eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (f0_exit_1A CST XGL HCST HXGL HCSTF ok A Kc rho tp p n t jv (KEEPD CST XGL A) eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (rhoF_of A rho p n t jv) k Hg w Hw1).
Qed.

Theorem efree_hi_1A : ltac2:(tb__ "0|4|
S47S6S21S11S2dQ40M0A1A1S2cG0S1dR2PcA2A2SeS2cG0S1dR3PdA2A2SeS26S18S35R4R3S15S14S1bS25A2M1S13S1bS25S8S2S1U1A1M2S0A3S4S44S18A1M3VCST;VXGL;R6R5A5A4S12G1A1A3A5S31S7R6A1S2eS42S2fR4Z10A2A2S9S10S48R9A1SfA3S2aS19RaA2SeS29S3aRdRbR9R8R2R1A6S9SeS28R2A1S43A3S41RdS27RfRdRbRaR4R3A6A2S53S39VCST;VXGL;R10A3R10RfS27R10ReRcRbR5R4A6S1aRaA6F_;F_;F_;Fjv;Ft;S51RbA1S32S18S36S18S5G3G2S0RdRcA5S3S2G2S0A3RbRaA5R7A3F_;F_;F_;F_;F_;F_;TQ;Tn;Tp;Ftp;Frho;FKc;FA;").
Proof.
  intros A Kc rho tp p n Q HKc HHI Hii QC HBIG HDS. pose proof (cls_hyp_blk true p n HHI) as HCL.
  apply (etriple_pre_pure segsA _ _ (budget_ok_free A)); [intros w Hw; exact (entry_budget _ _ A Kc rho tp w Hw)|]. intros HBud.
  apply (etriple_pre_pure segsA _ _ (entry_pureF true (Wcan 1) UStopLe q_1A A rho)); [intros w Hw; exact (entry_pure true _ _ _ A Kc rho tp w HHI Hii QC Hw)|].
  intros (HL & (tp0 & md0 & HA0) & t & jv & HTJ & HJM & IFF). fold p n in HL, HTJ, IFF.
  intros w Hw.
  destruct (f_instantiate true 1 UStopLe q_1A Wa_1A Da_1A Wb_1A Wc_1A Wd_1A Fb_1A XI_1A A Kc rho (rhoF_of A rho p n t jv) tp w p n (N8 n)
              ltac:(intros E; discriminate E) (stopJ_stable_le _) (rhoF_agree A rho p n t jv) IFF Hw) as [HR Hw1].
  exact (efree_spine_1A (KEEPD CST XGL A) A Kc rho (rhoF_of A rho p n t jv) tp Q HKc HR
           (hdfe_1A_1 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _) (hdfe_1A_2 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _) (hdfe_1A_3 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _)
           (HBIG t jv HTJ HJM HR)
           (ef0_drain_1A CST XGL HCST HXGL HCSTQ HCSTF A Kc rho tp p n t jv (KEEPD CST XGL A) HKc HDS HBud eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (ef0_exit_1A CST XGL HCST HXGL HCSTF A Kc rho tp p n t jv (KEEPD CST XGL A) eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (rhoF_of A rho p n t jv) w Hw1).
Qed.
End ASM.

End F0A_a1A.

(* [comment removed for export] *)
Module F0A_a0Bf.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Iface"; "UStopLe"; "Wcan"; "AE_A"; "Pre_freeI"; "JL_free"; "J_free_preT"; "KcA"; "Kc_ok"; "L_free"; "@Corelib.Init.Logic"; "eq"; "not"; "False"; "and"; "or"; "@Corelib.Numbers.BinNums"; "Z"; "@Corelib.Init.Datatypes"; "true"; "bool"; "list"; "nil"; "pair"; "prod"; "cons"; "Some"; "option"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a0.CertStackFree"; "segsA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.af.F0A_c0Bf"; "q_0Bf"; "Ebg_0Bf"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "axst"; "ax_S"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "rw"; "sv"; "swf"; "sprop"; "valuation"; "SLit"; "SVar"; "sprop_below"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SummaryA"; "jpostA"; "LQPA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_instok"; "rhoF_of"; "j_min"; "junkF"; "qcond"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.RtCells"; "in_rangesZ"; "@stdpp.bitvector.definitions"; "bv_unsigned"; "bv"; "@Stdlib.ZArith.BinInt.Z"; "le"; "sub"; "lt"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw.Safety"; "assn"; "etriple"; "triple"; "world"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.ExampleMemcpy"; "NF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SoundA"; "SPA"; "liftKA"; "ok_frameA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.DepotCall"; "KEEPD"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.c6.F0A_depot"; "tjv_ok"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.av.F0A_inst"; "sa_f"; "XI"; "sb_f"; "sc_f"; "sd_f"; "se_f"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_skel"; "rigF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Geometry"; "SHADOW_BAND_HI"; "kQuarantineMin"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Inv"; "AInvA"; "IA_BEG"; "IA_END"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Model"; "AA"; "aa_internal_inited"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.Glue3"; "state_diff"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SysCallA"; "ok_pframeA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.AxXform"; "apply_axforms"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a4.CertFreeNull"; "NW2"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a1.CertStackMalloc"; "TP_A"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.af.F0A_cls"; "FACTSc"; "P0_fc"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_drain"; "drain_sum"; "drain_sumE"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ar.F0A_i0Bf"; "contF"; "econtF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_rebuild"; "IMG_F"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.InvQ8"; "QRD_img"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.SegD_wf"; "dfp_static"; "@Stdlib.Lists.List"; "forallb"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool Lia.
From stdpp Require Import bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase MemImageType State.
From OssFuzzTheorems.tinyobjloader.fuzz_tobj_c.images Require Import Asan.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw Require Import Safety.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymFrame SymCFG SymCall SymSummary Glue3 ExampleMemcpy.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import StepA SoundA EntailA CFGA GlueA SummaryA SysCallA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import AxXform.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require Geometry Model RtCells Iface Inv InvLaws.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a0.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a4.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require SpineMallocI SegD_wf DepotCall.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Geometry OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Model OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.RtCells OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Iface OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Inv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.InvLaws OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a0.CertStackFree OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a1.CertStackMalloc OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a4.CertFreeNull OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.SpineMallocI OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.SegD_wf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.DepotCall.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a6.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require F0A_skel.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require af.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require av.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require ac.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require F0A_instok F0A_rebuild.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require c6.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require cp.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require ar.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require d1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require ck.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require InvQ8 F0A_drain.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require db.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a6.F0A_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_skel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.af.F0A_cls OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.av.F0A_inst OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ac.F0A_laws OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_instok OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_rebuild OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.c6.F0A_depot OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.cp.F0A_asm OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.af.F0A_c0Bf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ar.F0A_i0Bf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.d1.F0A_xi0Bf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ck.F0A_d0Bf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.InvQ8 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_drain OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.db.F0A_q0Bf.
Import ListNotations.
Close Scope bv_scope.
Open Scope Z_scope.
Ltac vmr := match goal with |- _ = ?r => vm_cast_no_check (@eq_refl _ r) end.

Lemma Wa_0Bf : ltac2:(tb__ "0|0|
S9S10S1fS3bS1U0A1S0A2A1SfA3"). Proof. vmr. Qed.
Lemma Da_0Bf : ltac2:(tb__ "0|5|
S9S17S14S11S14S1eS1eA2M0A1M1S11S20A1M2A2M3A1S49S1cS3S2S1U0A1M4S0A3A1S3bG4S0A2A2S16G3S13G1G2S15G0S13S1eS1eS23P18A1S22S4dA1A4S12G0A1A3S12S20A1A4A2A3"). Proof. vmr. Qed.
Lemma Wb_0Bf : ltac2:(tb__ "0|0|
S9S10S1fS3dS1U0A1S0S19A3A1SfA3"). Proof. vmr. Qed.
Lemma Wc_0Bf : ltac2:(tb__ "0|0|
S9S10S1fS3eS1U0A1S0S19A3A1SfA3"). Proof. vmr. Qed.
Lemma Wd_0Bf : ltac2:(tb__ "0|0|
S9S10S1fS3fS1U0A1S0S19A3A1SfA3"). Proof. vmr. Qed.
Lemma Fb_0Bf : ltac2:(tb__ "0|0|
S9S10S57S20S24S4cA1S4eSfS1U0A1S0S19A4A3SfA3"). Proof. vmr. Qed.
Lemma XI_0Bf : ltac2:(tb__ "0|2|
S9S17S1bA1S4bS40SfS1U0M0A1M1S0S19A4S3cG0S19A2A2S16S1bS4fSfG1S0S19A4A2A3"). Proof. vmr. Qed.

Section ASM.
Variables CST XGL : list (Z * Z).
Hypothesis HCST : cst_ok CST.
Hypothesis HXGL : xgl_ok XGL.
Hypothesis HCSTF : ltac2:(tb__ "0|0|
SeS2bVCST;R1A2SdS2bS54R2A2ScS2eS45R2A2S30R2S46A2A2A2SbF_;F_;Fa;").
Hypothesis HCSTD : ltac2:(tb__ "0|0|
SeS2bVCST;R1A2SaS56R2A1A1F_;Fa;").
Hypothesis HCSTQ : ltac2:(tb__ "0|0|
SeS2bVCST;R1A2SaS55R2A1A1F_;Fa;").

Theorem free_hi_0Bf : ltac2:(tb__ "0|4|
S34OF_;S47S6S21S11S2dQ40M0A1A1S2cG0S1dR2PcA2A2SeS2cG0S1dR3PdA2A2SeS26S18S35R4R3S15S14S1bS25A2M1S13S1bS25S8S2S1U0A1M2S0A3S4S44S18A1M3VCST;VXGL;R6R5A5A4S12G1A1A3A5S31S7R6A1S38S18R9S37R7A1A3S4aS18RaS37R8A1A3S2eS42S2fR6Z10A2A2S9S10S48RbA1SfA3S2aS19RcA2SeS29S3aRfRdRbRaR2R1A6S9SeS28R2A1S43A3S41RfS27R11RfRdRcR4R3A6A2S52S39VCST;VXGL;R12A3R13R12R11S27R12R10ReRdR5R4A6S1aRcA7F_;F_;F_;Fjv;Ft;S50RfRdA2S33S18R10S36S18S5G3G2S0RfReA5S3S2G2S0A3RdRcA5R9A4F_;F_;F_;F_;F_;F_;F_;F_;TQ;Tn;Tp;Ftp;Frho;FKc;FA;Fok;").
Proof.
  intros ok A Kc rho tp p n Q HKc Hok Hokp HHI Hii QC HBIG HDS. pose proof (cls_hyp_blk true p n HHI) as HCL.
  apply (triple_pre_pure segsA ok _ _ (budget_ok_free A)); [intros w Hw; exact (entry_budget _ _ A Kc rho tp w Hw)|]. intros HBud.
  apply (triple_pre_pure segsA ok _ _ (entry_pureF true (Wcan 0) UStopLe q_0Bf A rho)); [intros w Hw; exact (entry_pure true _ _ _ A Kc rho tp w HHI Hii QC Hw)|].
  intros (HL & (tp0 & md0 & HA0) & t & jv & HTJ & HJM & IFF). fold p n in HL, HTJ, IFF.
  intros k Hg w Hw.
  destruct (f_instantiate true 0 UStopLe q_0Bf Wa_0Bf Da_0Bf Wb_0Bf Wc_0Bf Wd_0Bf Fb_0Bf XI_0Bf A Kc rho (rhoF_of A rho p n t jv) tp w p n (N8 n)
              ltac:(intros E; discriminate E) (stopJ_stable_le _) (rhoF_agree A rho p n t jv) IFF Hw) as [HR Hw1].
  exact (free_spine_0Bf (KEEPD CST XGL A) ok A Kc rho (rhoF_of A rho p n t jv) tp Q HKc Hok HR
           (hdf_0Bf_1 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp) (hdf_0Bf_2 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp)
           (HBIG t jv HTJ HJM HR)
           (f0_drain_0Bf CST XGL HCST HXGL HCSTQ HCSTF ok A Kc rho tp p n t jv (KEEPD CST XGL A) HKc Hok HDS HBud eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (f0_exit_0Bf CST XGL HCST HXGL HCSTF ok A Kc rho tp p n t jv (KEEPD CST XGL A) eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (rhoF_of A rho p n t jv) k Hg w Hw1).
Qed.

Theorem efree_hi_0Bf : ltac2:(tb__ "0|4|
S47S6S21S11S2dQ40M0A1A1S2cG0S1dR2PcA2A2SeS2cG0S1dR3PdA2A2SeS26S18S35R4R3S15S14S1bS25A2M1S13S1bS25S8S2S1U0A1M2S0A3S4S44S18A1M3VCST;VXGL;R6R5A5A4S12G1A1A3A5S31S7R6A1S2eS42S2fR4Z10A2A2S9S10S48R9A1SfA3S2aS19RaA2SeS29S3aRdRbR9R8R2R1A6S9SeS28R2A1S43A3S41RdS27RfRdRbRaR4R3A6A2S53S39VCST;VXGL;R10A3R10RfS27R10ReRcRbR5R4A6S1aRaA6F_;F_;F_;Fjv;Ft;S51RbA1S32S18S36S18S5G3G2S0RdRcA5S3S2G2S0A3RbRaA5R7A3F_;F_;F_;F_;F_;F_;TQ;Tn;Tp;Ftp;Frho;FKc;FA;").
Proof.
  intros A Kc rho tp p n Q HKc HHI Hii QC HBIG HDS. pose proof (cls_hyp_blk true p n HHI) as HCL.
  apply (etriple_pre_pure segsA _ _ (budget_ok_free A)); [intros w Hw; exact (entry_budget _ _ A Kc rho tp w Hw)|]. intros HBud.
  apply (etriple_pre_pure segsA _ _ (entry_pureF true (Wcan 0) UStopLe q_0Bf A rho)); [intros w Hw; exact (entry_pure true _ _ _ A Kc rho tp w HHI Hii QC Hw)|].
  intros (HL & (tp0 & md0 & HA0) & t & jv & HTJ & HJM & IFF). fold p n in HL, HTJ, IFF.
  intros w Hw.
  destruct (f_instantiate true 0 UStopLe q_0Bf Wa_0Bf Da_0Bf Wb_0Bf Wc_0Bf Wd_0Bf Fb_0Bf XI_0Bf A Kc rho (rhoF_of A rho p n t jv) tp w p n (N8 n)
              ltac:(intros E; discriminate E) (stopJ_stable_le _) (rhoF_agree A rho p n t jv) IFF Hw) as [HR Hw1].
  exact (efree_spine_0Bf (KEEPD CST XGL A) A Kc rho (rhoF_of A rho p n t jv) tp Q HKc HR
           (hdfe_0Bf_1 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _) (hdfe_0Bf_2 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _)
           (HBIG t jv HTJ HJM HR)
           (ef0_drain_0Bf CST XGL HCST HXGL HCSTQ HCSTF A Kc rho tp p n t jv (KEEPD CST XGL A) HKc HDS HBud eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (ef0_exit_0Bf CST XGL HCST HXGL HCSTF A Kc rho tp p n t jv (KEEPD CST XGL A) eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (rhoF_of A rho p n t jv) w Hw1).
Qed.
End ASM.

End F0A_a0Bf.

(* [comment removed for export] *)
Module F0A_a1Be.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Iface"; "UStopLe"; "Wcan"; "AE_A"; "Pre_freeI"; "JL_free"; "J_free_preT"; "KcA"; "Kc_ok"; "L_free"; "@Corelib.Init.Logic"; "eq"; "not"; "False"; "and"; "or"; "@Corelib.Numbers.BinNums"; "Z"; "@Corelib.Init.Datatypes"; "true"; "bool"; "list"; "nil"; "pair"; "prod"; "cons"; "Some"; "option"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a0.CertStackFree"; "segsA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.af.F0A_c1Be"; "q_1Be"; "Ebg_1Be"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "axst"; "ax_S"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "rw"; "sv"; "swf"; "sprop"; "valuation"; "SLit"; "SVar"; "sprop_below"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SummaryA"; "jpostA"; "LQPA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_instok"; "rhoF_of"; "j_min"; "junkF"; "qcond"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.RtCells"; "in_rangesZ"; "@stdpp.bitvector.definitions"; "bv_unsigned"; "bv"; "@Stdlib.ZArith.BinInt.Z"; "le"; "sub"; "lt"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw.Safety"; "assn"; "etriple"; "triple"; "world"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.ExampleMemcpy"; "NF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SoundA"; "SPA"; "liftKA"; "ok_frameA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.DepotCall"; "KEEPD"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.c6.F0A_depot"; "tjv_ok"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.av.F0A_inst"; "sa_f"; "XI"; "sb_f"; "sc_f"; "sd_f"; "se_f"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_skel"; "rigF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Geometry"; "SHADOW_BAND_HI"; "kQuarantineMin"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Inv"; "AInvA"; "IA_BEG"; "IA_END"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Model"; "AA"; "aa_internal_inited"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.Glue3"; "state_diff"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SysCallA"; "ok_pframeA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.AxXform"; "apply_axforms"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a4.CertFreeNull"; "NW2"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a1.CertStackMalloc"; "TP_A"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.af.F0A_cls"; "FACTSc"; "P0_fc"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_drain"; "drain_sum"; "drain_sumE"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.dy.F0A_i1Be"; "contF"; "econtF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_rebuild"; "IMG_F"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.InvQ8"; "QRD_img"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.SegD_wf"; "dfp_static"; "@Stdlib.Lists.List"; "forallb"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool Lia.
From stdpp Require Import bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase MemImageType State.
From OssFuzzTheorems.tinyobjloader.fuzz_tobj_c.images Require Import Asan.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw Require Import Safety.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymFrame SymCFG SymCall SymSummary Glue3 ExampleMemcpy.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import StepA SoundA EntailA CFGA GlueA SummaryA SysCallA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import AxXform.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require Geometry Model RtCells Iface Inv InvLaws.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a0.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a4.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require SpineMallocI SegD_wf DepotCall.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Geometry OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Model OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.RtCells OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Iface OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Inv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.InvLaws OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a0.CertStackFree OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a1.CertStackMalloc OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a4.CertFreeNull OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.SpineMallocI OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.SegD_wf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.DepotCall.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a6.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require F0A_skel.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require af.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require av.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require ac.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require F0A_instok F0A_rebuild.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require c6.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require cp.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require dy.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require d2.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require ck.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require InvQ8 F0A_drain.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require de.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a6.F0A_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_skel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.af.F0A_cls OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.av.F0A_inst OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ac.F0A_laws OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_instok OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_rebuild OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.c6.F0A_depot OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.cp.F0A_asm OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.af.F0A_c1Be OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.dy.F0A_i1Be OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.d2.F0A_xi1Be OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ck.F0A_d1Be OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.InvQ8 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_drain OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.de.F0A_q1Be.
Import ListNotations.
Close Scope bv_scope.
Open Scope Z_scope.
Ltac vmr := match goal with |- _ = ?r => vm_cast_no_check (@eq_refl _ r) end.

Lemma Wa_1Be : ltac2:(tb__ "0|0|
S9S10S1fS3bS1U1A1S0A2A1SfA3"). Proof. vmr. Qed.
Lemma Da_1Be : ltac2:(tb__ "0|5|
S9S17S14S11S14S1eS1eA2M0A1M1S11S20A1M2A2M3A1S49S1cS3S2S1U1A1M4S0A3A1S3bG4S0A2A2S16G3S13G1G2S15G0S13S1eS1eS23P18A1S22S4dA1A4S12G0A1A3S12S20A1A4A2A3"). Proof. vmr. Qed.
Lemma Wb_1Be : ltac2:(tb__ "0|0|
S9S10S1fS3dS1U1A1S0S19A3A1SfA3"). Proof. vmr. Qed.
Lemma Wc_1Be : ltac2:(tb__ "0|0|
S9S10S1fS3eS1U1A1S0S19A3A1SfA3"). Proof. vmr. Qed.
Lemma Wd_1Be : ltac2:(tb__ "0|0|
S9S10S1fS3fS1U1A1S0S19A3A1SfA3"). Proof. vmr. Qed.
Lemma Fb_1Be : ltac2:(tb__ "0|0|
S9S10S57S20S24S4cA1S4eSfS1U1A1S0S19A4A3SfA3"). Proof. vmr. Qed.
Lemma XI_1Be : ltac2:(tb__ "0|2|
S9S17S1bA1S4bS40SfS1U1M0A1M1S0S19A4S3cG0S19A2A2S16S1bS4fSfG1S0S19A4A2A3"). Proof. vmr. Qed.

Section ASM.
Variables CST XGL : list (Z * Z).
Hypothesis HCST : cst_ok CST.
Hypothesis HXGL : xgl_ok XGL.
Hypothesis HCSTF : ltac2:(tb__ "0|0|
SeS2bVCST;R1A2SdS2bS54R2A2ScS2eS45R2A2S30R2S46A2A2A2SbF_;F_;Fa;").
Hypothesis HCSTD : ltac2:(tb__ "0|0|
SeS2bVCST;R1A2SaS56R2A1A1F_;Fa;").
Hypothesis HCSTQ : ltac2:(tb__ "0|0|
SeS2bVCST;R1A2SaS55R2A1A1F_;Fa;").

Theorem free_hi_1Be : ltac2:(tb__ "0|4|
S34OF_;S47S6S21S11S2dQ40M0A1A1S2cG0S1dR2PcA2A2SeS2cG0S1dR3PdA2A2SeS26S18S35R4R3S15S14S1bS25A2M1S13S1bS25S8S2S1U1A1M2S0A3S4S44S18A1M3VCST;VXGL;R6R5A5A4S12G1A1A3A5S31S7R6A1S38S18R9S37R7A1A3S4aS18RaS37R8A1A3S2eS42S2fR6Z10A2A2S9S10S48RbA1SfA3S2aS19RcA2SeS29S3aRfRdRbRaR2R1A6S9SeS28R2A1S43A3S41RfS27R11RfRdRcR4R3A6A2S52S39VCST;VXGL;R12A3R13R12R11S27R12R10ReRdR5R4A6S1aRcA7F_;F_;F_;Fjv;Ft;S50RfRdA2S33S18R10S36S18S5G3G2S0RfReA5S3S2G2S0A3RdRcA5R9A4F_;F_;F_;F_;F_;F_;F_;F_;TQ;Tn;Tp;Ftp;Frho;FKc;FA;Fok;").
Proof.
  intros ok A Kc rho tp p n Q HKc Hok Hokp HHI Hii QC HBIG HDS. pose proof (cls_hyp_blk true p n HHI) as HCL.
  apply (triple_pre_pure segsA ok _ _ (budget_ok_free A)); [intros w Hw; exact (entry_budget _ _ A Kc rho tp w Hw)|]. intros HBud.
  apply (triple_pre_pure segsA ok _ _ (entry_pureF true (Wcan 1) UStopLe q_1Be A rho)); [intros w Hw; exact (entry_pure true _ _ _ A Kc rho tp w HHI Hii QC Hw)|].
  intros (HL & (tp0 & md0 & HA0) & t & jv & HTJ & HJM & IFF). fold p n in HL, HTJ, IFF.
  intros k Hg w Hw.
  destruct (f_instantiate true 1 UStopLe q_1Be Wa_1Be Da_1Be Wb_1Be Wc_1Be Wd_1Be Fb_1Be XI_1Be A Kc rho (rhoF_of A rho p n t jv) tp w p n (N8 n)
              ltac:(intros E; discriminate E) (stopJ_stable_le _) (rhoF_agree A rho p n t jv) IFF Hw) as [HR Hw1].
  exact (free_spine_1Be (KEEPD CST XGL A) ok A Kc rho (rhoF_of A rho p n t jv) tp Q HKc Hok HR
           (hdf_1Be_1 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp) (hdf_1Be_2 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp) (hdf_1Be_3 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp)
           (HBIG t jv HTJ HJM HR)
           (f0_drain_1Be CST XGL HCST HXGL HCSTQ HCSTF ok A Kc rho tp p n t jv (KEEPD CST XGL A) HKc Hok HDS HBud eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (f0_exit_1Be CST XGL HCST HXGL HCSTF ok A Kc rho tp p n t jv (KEEPD CST XGL A) eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (rhoF_of A rho p n t jv) k Hg w Hw1).
Qed.

Theorem efree_hi_1Be : ltac2:(tb__ "0|4|
S47S6S21S11S2dQ40M0A1A1S2cG0S1dR2PcA2A2SeS2cG0S1dR3PdA2A2SeS26S18S35R4R3S15S14S1bS25A2M1S13S1bS25S8S2S1U1A1M2S0A3S4S44S18A1M3VCST;VXGL;R6R5A5A4S12G1A1A3A5S31S7R6A1S2eS42S2fR4Z10A2A2S9S10S48R9A1SfA3S2aS19RaA2SeS29S3aRdRbR9R8R2R1A6S9SeS28R2A1S43A3S41RdS27RfRdRbRaR4R3A6A2S53S39VCST;VXGL;R10A3R10RfS27R10ReRcRbR5R4A6S1aRaA6F_;F_;F_;Fjv;Ft;S51RbA1S32S18S36S18S5G3G2S0RdRcA5S3S2G2S0A3RbRaA5R7A3F_;F_;F_;F_;F_;F_;TQ;Tn;Tp;Ftp;Frho;FKc;FA;").
Proof.
  intros A Kc rho tp p n Q HKc HHI Hii QC HBIG HDS. pose proof (cls_hyp_blk true p n HHI) as HCL.
  apply (etriple_pre_pure segsA _ _ (budget_ok_free A)); [intros w Hw; exact (entry_budget _ _ A Kc rho tp w Hw)|]. intros HBud.
  apply (etriple_pre_pure segsA _ _ (entry_pureF true (Wcan 1) UStopLe q_1Be A rho)); [intros w Hw; exact (entry_pure true _ _ _ A Kc rho tp w HHI Hii QC Hw)|].
  intros (HL & (tp0 & md0 & HA0) & t & jv & HTJ & HJM & IFF). fold p n in HL, HTJ, IFF.
  intros w Hw.
  destruct (f_instantiate true 1 UStopLe q_1Be Wa_1Be Da_1Be Wb_1Be Wc_1Be Wd_1Be Fb_1Be XI_1Be A Kc rho (rhoF_of A rho p n t jv) tp w p n (N8 n)
              ltac:(intros E; discriminate E) (stopJ_stable_le _) (rhoF_agree A rho p n t jv) IFF Hw) as [HR Hw1].
  exact (efree_spine_1Be (KEEPD CST XGL A) A Kc rho (rhoF_of A rho p n t jv) tp Q HKc HR
           (hdfe_1Be_1 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _) (hdfe_1Be_2 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _) (hdfe_1Be_3 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _)
           (HBIG t jv HTJ HJM HR)
           (ef0_drain_1Be CST XGL HCST HXGL HCSTQ HCSTF A Kc rho tp p n t jv (KEEPD CST XGL A) HKc HDS HBud eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (ef0_exit_1Be CST XGL HCST HXGL HCSTF A Kc rho tp p n t jv (KEEPD CST XGL A) eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (rhoF_of A rho p n t jv) w Hw1).
Qed.
End ASM.

End F0A_a1Be.

(* [comment removed for export] *)
Module F0A_a1Bf.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Iface"; "UStopLe"; "Wcan"; "AE_A"; "Pre_freeI"; "JL_free"; "J_free_preT"; "KcA"; "Kc_ok"; "L_free"; "@Corelib.Init.Logic"; "eq"; "not"; "False"; "and"; "or"; "@Corelib.Numbers.BinNums"; "Z"; "@Corelib.Init.Datatypes"; "true"; "bool"; "list"; "nil"; "pair"; "prod"; "cons"; "Some"; "option"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a0.CertStackFree"; "segsA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ag.F0A_c1Bf"; "q_1Bf"; "Ebg_1Bf"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "axst"; "ax_S"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "rw"; "sv"; "swf"; "sprop"; "valuation"; "SLit"; "SVar"; "sprop_below"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SummaryA"; "jpostA"; "LQPA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_instok"; "rhoF_of"; "j_min"; "junkF"; "qcond"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.RtCells"; "in_rangesZ"; "@stdpp.bitvector.definitions"; "bv_unsigned"; "bv"; "@Stdlib.ZArith.BinInt.Z"; "le"; "sub"; "lt"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw.Safety"; "assn"; "etriple"; "triple"; "world"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.ExampleMemcpy"; "NF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SoundA"; "SPA"; "liftKA"; "ok_frameA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.DepotCall"; "KEEPD"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.c6.F0A_depot"; "tjv_ok"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.av.F0A_inst"; "sa_f"; "XI"; "sb_f"; "sc_f"; "sd_f"; "se_f"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_skel"; "rigF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Geometry"; "SHADOW_BAND_HI"; "kQuarantineMin"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Inv"; "AInvA"; "IA_BEG"; "IA_END"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Model"; "AA"; "aa_internal_inited"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.Glue3"; "state_diff"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SysCallA"; "ok_pframeA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.AxXform"; "apply_axforms"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a4.CertFreeNull"; "NW2"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a1.CertStackMalloc"; "TP_A"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.af.F0A_cls"; "FACTSc"; "P0_fc"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_drain"; "drain_sum"; "drain_sumE"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.dy.F0A_i1Bf"; "contF"; "econtF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_rebuild"; "IMG_F"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.InvQ8"; "QRD_img"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.SegD_wf"; "dfp_static"; "@Stdlib.Lists.List"; "forallb"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool Lia.
From stdpp Require Import bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase MemImageType State.
From OssFuzzTheorems.tinyobjloader.fuzz_tobj_c.images Require Import Asan.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw Require Import Safety.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymFrame SymCFG SymCall SymSummary Glue3 ExampleMemcpy.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import StepA SoundA EntailA CFGA GlueA SummaryA SysCallA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import AxXform.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require Geometry Model RtCells Iface Inv InvLaws.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a0.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a4.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require SpineMallocI SegD_wf DepotCall.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Geometry OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Model OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.RtCells OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Iface OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.Inv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.InvLaws OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a0.CertStackFree OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a1.CertStackMalloc OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a4.CertFreeNull OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.SpineMallocI OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.SegD_wf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.DepotCall.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a6.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require F0A_skel.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require af.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require av.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require ac.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require F0A_instok F0A_rebuild.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require c6.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require cp.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require ag.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require dy.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require d2.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require ck.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require InvQ8 F0A_drain.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require de.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a6.F0A_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_skel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.af.F0A_cls OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.av.F0A_inst OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ac.F0A_laws OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_instok OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_rebuild OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.c6.F0A_depot OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.cp.F0A_asm OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ag.F0A_c1Bf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.dy.F0A_i1Bf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.d2.F0A_xi1Bf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ck.F0A_d1Bf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.InvQ8 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.F0A_drain OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.de.F0A_q1Bf.
Import ListNotations.
Close Scope bv_scope.
Open Scope Z_scope.
Ltac vmr := match goal with |- _ = ?r => vm_cast_no_check (@eq_refl _ r) end.

Lemma Wa_1Bf : ltac2:(tb__ "0|0|
S9S10S1fS3bS1U1A1S0A2A1SfA3"). Proof. vmr. Qed.
Lemma Da_1Bf : ltac2:(tb__ "0|5|
S9S17S14S11S14S1eS1eA2M0A1M1S11S20A1M2A2M3A1S49S1cS3S2S1U1A1M4S0A3A1S3bG4S0A2A2S16G3S13G1G2S15G0S13S1eS1eS23P18A1S22S4dA1A4S12G0A1A3S12S20A1A4A2A3"). Proof. vmr. Qed.
Lemma Wb_1Bf : ltac2:(tb__ "0|0|
S9S10S1fS3dS1U1A1S0S19A3A1SfA3"). Proof. vmr. Qed.
Lemma Wc_1Bf : ltac2:(tb__ "0|0|
S9S10S1fS3eS1U1A1S0S19A3A1SfA3"). Proof. vmr. Qed.
Lemma Wd_1Bf : ltac2:(tb__ "0|0|
S9S10S1fS3fS1U1A1S0S19A3A1SfA3"). Proof. vmr. Qed.
Lemma Fb_1Bf : ltac2:(tb__ "0|0|
S9S10S57S20S24S4cA1S4eSfS1U1A1S0S19A4A3SfA3"). Proof. vmr. Qed.
Lemma XI_1Bf : ltac2:(tb__ "0|2|
S9S17S1bA1S4bS40SfS1U1M0A1M1S0S19A4S3cG0S19A2A2S16S1bS4fSfG1S0S19A4A2A3"). Proof. vmr. Qed.

Section ASM.
Variables CST XGL : list (Z * Z).
Hypothesis HCST : cst_ok CST.
Hypothesis HXGL : xgl_ok XGL.
Hypothesis HCSTF : ltac2:(tb__ "0|0|
SeS2bVCST;R1A2SdS2bS54R2A2ScS2eS45R2A2S30R2S46A2A2A2SbF_;F_;Fa;").
Hypothesis HCSTD : ltac2:(tb__ "0|0|
SeS2bVCST;R1A2SaS56R2A1A1F_;Fa;").
Hypothesis HCSTQ : ltac2:(tb__ "0|0|
SeS2bVCST;R1A2SaS55R2A1A1F_;Fa;").

Theorem free_hi_1Bf : ltac2:(tb__ "0|4|
S34OF_;S47S6S21S11S2dQ40M0A1A1S2cG0S1dR2PcA2A2SeS2cG0S1dR3PdA2A2SeS26S18S35R4R3S15S14S1bS25A2M1S13S1bS25S8S2S1U1A1M2S0A3S4S44S18A1M3VCST;VXGL;R6R5A5A4S12G1A1A3A5S31S7R6A1S38S18R9S37R7A1A3S4aS18RaS37R8A1A3S2eS42S2fR6Z10A2A2S9S10S48RbA1SfA3S2aS19RcA2SeS29S3aRfRdRbRaR2R1A6S9SeS28R2A1S43A3S41RfS27R11RfRdRcR4R3A6A2S52S39VCST;VXGL;R12A3R13R12R11S27R12R10ReRdR5R4A6S1aRcA7F_;F_;F_;Fjv;Ft;S50RfRdA2S33S18R10S36S18S5G3G2S0RfReA5S3S2G2S0A3RdRcA5R9A4F_;F_;F_;F_;F_;F_;F_;F_;TQ;Tn;Tp;Ftp;Frho;FKc;FA;Fok;").
Proof.
  intros ok A Kc rho tp p n Q HKc Hok Hokp HHI Hii QC HBIG HDS. pose proof (cls_hyp_blk true p n HHI) as HCL.
  apply (triple_pre_pure segsA ok _ _ (budget_ok_free A)); [intros w Hw; exact (entry_budget _ _ A Kc rho tp w Hw)|]. intros HBud.
  apply (triple_pre_pure segsA ok _ _ (entry_pureF true (Wcan 1) UStopLe q_1Bf A rho)); [intros w Hw; exact (entry_pure true _ _ _ A Kc rho tp w HHI Hii QC Hw)|].
  intros (HL & (tp0 & md0 & HA0) & t & jv & HTJ & HJM & IFF). fold p n in HL, HTJ, IFF.
  intros k Hg w Hw.
  destruct (f_instantiate true 1 UStopLe q_1Bf Wa_1Bf Da_1Bf Wb_1Bf Wc_1Bf Wd_1Bf Fb_1Bf XI_1Bf A Kc rho (rhoF_of A rho p n t jv) tp w p n (N8 n)
              ltac:(intros E; discriminate E) (stopJ_stable_le _) (rhoF_agree A rho p n t jv) IFF Hw) as [HR Hw1].
  exact (free_spine_1Bf (KEEPD CST XGL A) ok A Kc rho (rhoF_of A rho p n t jv) tp Q HKc Hok HR
           (hdf_1Bf_1 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp) (hdf_1Bf_2 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp) (hdf_1Bf_3 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp)
           (HBIG t jv HTJ HJM HR)
           (f0_drain_1Bf CST XGL HCST HXGL HCSTQ HCSTF ok A Kc rho tp p n t jv (KEEPD CST XGL A) HKc Hok HDS HBud eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (f0_exit_1Bf CST XGL HCST HXGL HCSTF ok A Kc rho tp p n t jv (KEEPD CST XGL A) eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (rhoF_of A rho p n t jv) k Hg w Hw1).
Qed.

Theorem efree_hi_1Bf : ltac2:(tb__ "0|4|
S47S6S21S11S2dQ40M0A1A1S2cG0S1dR2PcA2A2SeS2cG0S1dR3PdA2A2SeS26S18S35R4R3S15S14S1bS25A2M1S13S1bS25S8S2S1U1A1M2S0A3S4S44S18A1M3VCST;VXGL;R6R5A5A4S12G1A1A3A5S31S7R6A1S2eS42S2fR4Z10A2A2S9S10S48R9A1SfA3S2aS19RaA2SeS29S3aRdRbR9R8R2R1A6S9SeS28R2A1S43A3S41RdS27RfRdRbRaR4R3A6A2S53S39VCST;VXGL;R10A3R10RfS27R10ReRcRbR5R4A6S1aRaA6F_;F_;F_;Fjv;Ft;S51RbA1S32S18S36S18S5G3G2S0RdRcA5S3S2G2S0A3RbRaA5R7A3F_;F_;F_;F_;F_;F_;TQ;Tn;Tp;Ftp;Frho;FKc;FA;").
Proof.
  intros A Kc rho tp p n Q HKc HHI Hii QC HBIG HDS. pose proof (cls_hyp_blk true p n HHI) as HCL.
  apply (etriple_pre_pure segsA _ _ (budget_ok_free A)); [intros w Hw; exact (entry_budget _ _ A Kc rho tp w Hw)|]. intros HBud.
  apply (etriple_pre_pure segsA _ _ (entry_pureF true (Wcan 1) UStopLe q_1Bf A rho)); [intros w Hw; exact (entry_pure true _ _ _ A Kc rho tp w HHI Hii QC Hw)|].
  intros (HL & (tp0 & md0 & HA0) & t & jv & HTJ & HJM & IFF). fold p n in HL, HTJ, IFF.
  intros w Hw.
  destruct (f_instantiate true 1 UStopLe q_1Bf Wa_1Bf Da_1Bf Wb_1Bf Wc_1Bf Wd_1Bf Fb_1Bf XI_1Bf A Kc rho (rhoF_of A rho p n t jv) tp w p n (N8 n)
              ltac:(intros E; discriminate E) (stopJ_stable_le _) (rhoF_agree A rho p n t jv) IFF Hw) as [HR Hw1].
  exact (efree_spine_1Bf (KEEPD CST XGL A) A Kc rho (rhoF_of A rho p n t jv) tp Q HKc HR
           (hdfe_1Bf_1 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _) (hdfe_1Bf_2 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _) (hdfe_1Bf_3 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _)
           (HBIG t jv HTJ HJM HR)
           (ef0_drain_1Bf CST XGL HCST HXGL HCSTQ HCSTF A Kc rho tp p n t jv (KEEPD CST XGL A) HKc HDS HBud eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (ef0_exit_1Bf CST XGL HCST HXGL HCSTF A Kc rho tp p n t jv (KEEPD CST XGL A) eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (rhoF_of A rho p n t jv) w Hw1).
Qed.
End ASM.

End F0A_a1Bf.

