(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
Local Set Warnings "-require-in-module".
(* [comment removed for export] *)
From Stdlib Require ZArith List Bool Lia.
From stdpp Require bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require BvBase MemImageType State.
From OssFuzzTheorems.tinyobjloader.fuzz_tobj_c.images Require AsanUbsan.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require kg l8 kl lc la kj l9 lb.

(* [comment removed for export] *)
Module F0A_a2Bf.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Iface"; "UStopLe"; "Wcan"; "AE_A"; "Pre_freeI"; "JL_free"; "J_free_preT"; "KcA"; "Kc_ok"; "L_free"; "@Corelib.Init.Logic"; "eq"; "not"; "False"; "and"; "or"; "@Corelib.Numbers.BinNums"; "Z"; "@Corelib.Init.Datatypes"; "true"; "bool"; "list"; "nil"; "pair"; "prod"; "cons"; "Some"; "option"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i0.CertStackFree"; "segsA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ic.F0A_c2Bf"; "q_2Bf"; "Ebg_2Bf"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "axst"; "ax_S"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "rw"; "sv"; "swf"; "sprop"; "valuation"; "SLit"; "SVar"; "sprop_below"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SummaryA"; "jpostA"; "LQPA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_instok"; "rhoF_of"; "j_min"; "junkF"; "qcond"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.RtCells"; "in_rangesZ"; "@stdpp.bitvector.definitions"; "bv_unsigned"; "bv"; "@Stdlib.ZArith.BinInt.Z"; "le"; "sub"; "lt"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw.Safety"; "assn"; "etriple"; "triple"; "world"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.ExampleMemcpy"; "NF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SoundA"; "SPA"; "liftKA"; "ok_frameA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.DepotCall"; "KEEPD"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.k3.F0A_depot"; "tjv_ok"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iy.F0A_inst"; "sa_f"; "XI"; "sb_f"; "sc_f"; "sd_f"; "se_f"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_skel"; "rigF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Geometry"; "SHADOW_BAND_HI"; "kQuarantineMin"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Inv"; "AInvA"; "IA_BEG"; "IA_END"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Model"; "AA"; "aa_internal_inited"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.Glue3"; "state_diff"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SysCallA"; "ok_pframeA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.AxXform"; "apply_axforms"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i2.CertFreeNull"; "NW2"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i1.CertStackMalloc"; "TP_A"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ic.F0A_cls"; "FACTSc"; "P0_fc"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_drain"; "drain_sum"; "drain_sumE"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ix.F0A_i2Bf"; "contF"; "econtF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_rebuild"; "IMG_F"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.InvQ8"; "QRD_img"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegD_wf"; "dfp_static"; "@Stdlib.Lists.List"; "forallb"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool Lia.
From stdpp Require Import bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase MemImageType State.
From OssFuzzTheorems.tinyobjloader.fuzz_tobj_c.images Require Import AsanUbsan.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw Require Import Safety.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymFrame SymCFG SymCall SymSummary Glue3 ExampleMemcpy.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import StepA SoundA EntailA CFGA GlueA SummaryA SysCallA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import AxXform.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require Geometry Model RtCells Iface Inv InvLaws.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i0.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i2.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require SpineMallocI SegD_wf DepotCall.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Geometry OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Model OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.RtCells OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Iface OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Inv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.InvLaws OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i0.CertStackFree OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i1.CertStackMalloc OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i2.CertFreeNull OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SpineMallocI OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegD_wf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.DepotCall.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i7.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require F0A_skel.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ic.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require iy.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ih.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require F0A_instok F0A_rebuild.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require k3.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require kg.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ix.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require l8.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require kl.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require InvQ8 F0A_drain.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require lc.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i7.F0A_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_skel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ic.F0A_cls OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iy.F0A_inst OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ih.F0A_laws OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_instok OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_rebuild OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.k3.F0A_depot OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.kg.F0A_asm OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ic.F0A_c2Bf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ix.F0A_i2Bf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.l8.F0A_xi2Bf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.kl.F0A_d2Bf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.InvQ8 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_drain OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.lc.F0A_q2Bf.
Import ListNotations.
Close Scope bv_scope.
Open Scope Z_scope.
Ltac vmr := match goal with |- _ = ?r => vm_cast_no_check (@eq_refl _ r) end.

Lemma Wa_2Bf : ltac2:(tb__ "0|0|
S9S10S1fS3bS1U2A1S0A2A1SfA3"). Proof. vmr. Qed.
Lemma Da_2Bf : ltac2:(tb__ "0|5|
S9S17S14S11S14S1eS1eA2M0A1M1S11S20A1M2A2M3A1S49S1cS3S2S1U2A1M4S0A3A1S3bG4S0A2A2S16G3S13G1G2S15G0S13S1eS1eS23P18A1S22S4dA1A4S12G0A1A3S12S20A1A4A2A3"). Proof. vmr. Qed.
Lemma Wb_2Bf : ltac2:(tb__ "0|0|
S9S10S1fS3dS1U2A1S0S19A3A1SfA3"). Proof. vmr. Qed.
Lemma Wc_2Bf : ltac2:(tb__ "0|0|
S9S10S1fS3eS1U2A1S0S19A3A1SfA3"). Proof. vmr. Qed.
Lemma Wd_2Bf : ltac2:(tb__ "0|0|
S9S10S1fS3fS1U2A1S0S19A3A1SfA3"). Proof. vmr. Qed.
Lemma Fb_2Bf : ltac2:(tb__ "0|0|
S9S10S57S20S24S4cA1S4eSfS1U2A1S0S19A4A3SfA3"). Proof. vmr. Qed.
Lemma XI_2Bf : ltac2:(tb__ "0|2|
S9S17S1bA1S4bS40SfS1U2M0A1M1S0S19A4S3cG0S19A2A2S16S1bS4fSfG1S0S19A4A2A3"). Proof. vmr. Qed.

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

Theorem free_hi_2Bf : ltac2:(tb__ "0|4|
S34OF_;S47S6S21S11S2dQ40M0A1A1S2cG0S1dR2PcA2A2SeS2cG0S1dR3PdA2A2SeS26S18S35R4R3S15S14S1bS25A2M1S13S1bS25S8S2S1U2A1M2S0A3S4S44S18A1M3VCST;VXGL;R6R5A5A4S12G1A1A3A5S31S7R6A1S38S18R9S37R7A1A3S4aS18RaS37R8A1A3S2eS42S2fR6Z10A2A2S9S10S48RbA1SfA3S2aS19RcA2SeS29S3aRfRdRbRaR2R1A6S9SeS28R2A1S43A3S41RfS27R11RfRdRcR4R3A6A2S52S39VCST;VXGL;R12A3R13R12R11S27R12R10ReRdR5R4A6S1aRcA7F_;F_;F_;Fjv;Ft;S50RfRdA2S33S18R10S36S18S5G3G2S0RfReA5S3S2G2S0A3RdRcA5R9A4F_;F_;F_;F_;F_;F_;F_;F_;TQ;Tn;Tp;Ftp;Frho;FKc;FA;Fok;").
Proof.
  intros ok A Kc rho tp p n Q HKc Hok Hokp HHI Hii QC HBIG HDS. pose proof (cls_hyp_blk true p n HHI) as HCL.
  apply (triple_pre_pure segsA ok _ _ (budget_ok_free A)); [intros w Hw; exact (entry_budget _ _ A Kc rho tp w Hw)|]. intros HBud.
  apply (triple_pre_pure segsA ok _ _ (entry_pureF true (Wcan 2) UStopLe q_2Bf A rho)); [intros w Hw; exact (entry_pure true _ _ _ A Kc rho tp w HHI Hii QC Hw)|].
  intros (HL & (tp0 & md0 & HA0) & t & jv & HTJ & HJM & IFF). fold p n in HL, HTJ, IFF.
  intros k Hg w Hw.
  destruct (f_instantiate true 2 UStopLe q_2Bf Wa_2Bf Da_2Bf Wb_2Bf Wc_2Bf Wd_2Bf Fb_2Bf XI_2Bf A Kc rho (rhoF_of A rho p n t jv) tp w p n (N8 n)
              ltac:(intros E; discriminate E) (stopJ_stable_le _) (rhoF_agree A rho p n t jv) IFF Hw) as [HR Hw1].
  exact (free_spine_2Bf (KEEPD CST XGL A) ok A Kc rho (rhoF_of A rho p n t jv) tp Q HKc Hok HR
           (hdf_2Bf_1 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp) (hdf_2Bf_2 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp) (hdf_2Bf_3 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp) (hdf_2Bf_4 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp)
           (HBIG t jv HTJ HJM HR)
           (f0_drain_2Bf CST XGL HCST HXGL HCSTQ HCSTF ok A Kc rho tp p n t jv (KEEPD CST XGL A) HKc Hok HDS HBud eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (f0_exit_2Bf CST XGL HCST HXGL HCSTF ok A Kc rho tp p n t jv (KEEPD CST XGL A) eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (rhoF_of A rho p n t jv) k Hg w Hw1).
Qed.

Theorem efree_hi_2Bf : ltac2:(tb__ "0|4|
S47S6S21S11S2dQ40M0A1A1S2cG0S1dR2PcA2A2SeS2cG0S1dR3PdA2A2SeS26S18S35R4R3S15S14S1bS25A2M1S13S1bS25S8S2S1U2A1M2S0A3S4S44S18A1M3VCST;VXGL;R6R5A5A4S12G1A1A3A5S31S7R6A1S2eS42S2fR4Z10A2A2S9S10S48R9A1SfA3S2aS19RaA2SeS29S3aRdRbR9R8R2R1A6S9SeS28R2A1S43A3S41RdS27RfRdRbRaR4R3A6A2S53S39VCST;VXGL;R10A3R10RfS27R10ReRcRbR5R4A6S1aRaA6F_;F_;F_;Fjv;Ft;S51RbA1S32S18S36S18S5G3G2S0RdRcA5S3S2G2S0A3RbRaA5R7A3F_;F_;F_;F_;F_;F_;TQ;Tn;Tp;Ftp;Frho;FKc;FA;").
Proof.
  intros A Kc rho tp p n Q HKc HHI Hii QC HBIG HDS. pose proof (cls_hyp_blk true p n HHI) as HCL.
  apply (etriple_pre_pure segsA _ _ (budget_ok_free A)); [intros w Hw; exact (entry_budget _ _ A Kc rho tp w Hw)|]. intros HBud.
  apply (etriple_pre_pure segsA _ _ (entry_pureF true (Wcan 2) UStopLe q_2Bf A rho)); [intros w Hw; exact (entry_pure true _ _ _ A Kc rho tp w HHI Hii QC Hw)|].
  intros (HL & (tp0 & md0 & HA0) & t & jv & HTJ & HJM & IFF). fold p n in HL, HTJ, IFF.
  intros w Hw.
  destruct (f_instantiate true 2 UStopLe q_2Bf Wa_2Bf Da_2Bf Wb_2Bf Wc_2Bf Wd_2Bf Fb_2Bf XI_2Bf A Kc rho (rhoF_of A rho p n t jv) tp w p n (N8 n)
              ltac:(intros E; discriminate E) (stopJ_stable_le _) (rhoF_agree A rho p n t jv) IFF Hw) as [HR Hw1].
  exact (efree_spine_2Bf (KEEPD CST XGL A) A Kc rho (rhoF_of A rho p n t jv) tp Q HKc HR
           (hdfe_2Bf_1 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _) (hdfe_2Bf_2 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _) (hdfe_2Bf_3 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _) (hdfe_2Bf_4 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _)
           (HBIG t jv HTJ HJM HR)
           (ef0_drain_2Bf CST XGL HCST HXGL HCSTQ HCSTF A Kc rho tp p n t jv (KEEPD CST XGL A) HKc HDS HBud eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (ef0_exit_2Bf CST XGL HCST HXGL HCSTF A Kc rho tp p n t jv (KEEPD CST XGL A) eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (rhoF_of A rho p n t jv) w Hw1).
Qed.
End ASM.

End F0A_a2Bf.

(* [comment removed for export] *)
Module F0A_aL0A.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Iface"; "UStopLe"; "Wcan"; "AE_A"; "Pre_freeI"; "JL_free"; "J_free_preT"; "KcA"; "Kc_ok"; "L_free"; "@Corelib.Init.Logic"; "eq"; "not"; "False"; "and"; "or"; "@Corelib.Numbers.BinNums"; "Z"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i0.CertStackFree"; "segsA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ie.F0A_cL0A"; "q_L0A"; "Ebg_L0A"; "@Corelib.Init.Datatypes"; "bool"; "true"; "list"; "nil"; "pair"; "prod"; "cons"; "false"; "Some"; "option"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "axst"; "ax_S"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "rw"; "sv"; "swf"; "sprop"; "valuation"; "SLit"; "SVar"; "sprop_below"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SummaryA"; "jpostA"; "LQPA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_instok"; "rhoF_of"; "j_min"; "junkF"; "qcond"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.RtCells"; "in_rangesZ"; "@stdpp.bitvector.definitions"; "bv_unsigned"; "bv"; "@Stdlib.ZArith.BinInt.Z"; "le"; "add"; "lt"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw.Safety"; "assn"; "etriple"; "triple"; "world"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.ExampleMemcpy"; "NF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SoundA"; "SPA"; "liftKA"; "ok_frameA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.DepotCall"; "KEEPD"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.k3.F0A_depot"; "tjv_ok"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iy.F0A_inst"; "sa_f"; "XI"; "sb_f"; "sc_f"; "sd_f"; "se_f"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_skel"; "rigF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Geometry"; "SHADOW_BAND_LO"; "kQuarantineMin"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Inv"; "AInvA"; "IA_BEG"; "IA_END"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Model"; "AA"; "aa_internal_inited"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.Glue3"; "state_diff"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SysCallA"; "ok_pframeA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.AxXform"; "apply_axforms"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i2.CertFreeNull"; "NW2"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i1.CertStackMalloc"; "TP_A"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ic.F0A_cls"; "FACTSc"; "P0_fc"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_drain"; "drain_sum"; "drain_sumE"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.m9.F0A_iL0A"; "contF"; "econtF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_rebuild"; "IMG_F"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.InvQ8"; "QRD_img"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegD_wf"; "dfp_static"; "@Stdlib.Lists.List"; "forallb"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool Lia.
From stdpp Require Import bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase MemImageType State.
From OssFuzzTheorems.tinyobjloader.fuzz_tobj_c.images Require Import AsanUbsan.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw Require Import Safety.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymFrame SymCFG SymCall SymSummary Glue3 ExampleMemcpy.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import StepA SoundA EntailA CFGA GlueA SummaryA SysCallA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import AxXform.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require Geometry Model RtCells Iface Inv InvLaws.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i0.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i2.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require SpineMallocI SegD_wf DepotCall.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Geometry OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Model OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.RtCells OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Iface OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Inv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.InvLaws OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i0.CertStackFree OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i1.CertStackMalloc OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i2.CertFreeNull OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SpineMallocI OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegD_wf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.DepotCall.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i7.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require F0A_skel.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ic.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require iy.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ih.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require F0A_instok F0A_rebuild.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require k3.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require kg.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ie.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require m9.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require la.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require kj.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require InvQ8 F0A_drain.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require l9.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i7.F0A_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_skel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ic.F0A_cls OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iy.F0A_inst OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ih.F0A_laws OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_instok OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_rebuild OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.k3.F0A_depot OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.kg.F0A_asm OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ie.F0A_cL0A OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.m9.F0A_iL0A OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.la.F0A_xiL0A OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.kj.F0A_dL0A OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.InvQ8 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_drain OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.l9.F0A_qL0A.
Import ListNotations.
Close Scope bv_scope.
Open Scope Z_scope.
Ltac vmr := match goal with |- _ = ?r => vm_cast_no_check (@eq_refl _ r) end.

Lemma Wa_L0A : ltac2:(tb__ "0|0|
S9S12S20S3cS1U0A1S0A2A1S13A3"). Proof. vmr. Qed.
Lemma Da_L0A : ltac2:(tb__ "0|5|
S9S1bS17S14S17S1fS1fA2M0A1M1S14S21A1M2A2M3A1S4aS1dS3S2S1U0A1M4S0A3A1S3cG4S0A2A2S1aG3S16G1G2S18G0S16S1fS1fS24P18A1S23S4eA1A4S15G0A1A3S15S21A1A4A2A3"). Proof. vmr. Qed.
Lemma Wb_L0A : ltac2:(tb__ "0|0|
S9S12S20S3eS1U0A1S0S10A3A1S13A3"). Proof. vmr. Qed.
Lemma Wc_L0A : ltac2:(tb__ "0|0|
S9S12S20S3fS1U0A1S0S10A3A1S13A3"). Proof. vmr. Qed.
Lemma Wd_L0A : ltac2:(tb__ "0|0|
S9S12S20S40S1U0A1S0S10A3A1S13A3"). Proof. vmr. Qed.
Lemma Fb_L0A : ltac2:(tb__ "0|0|
S9S12S58S21S25S4dA1S4fS19S1U0A1S0S10A4A3S13A3"). Proof. vmr. Qed.
Lemma XI_L0A : ltac2:(tb__ "0|2|
S9S1bS1cA1S4cS41S19S1U0M0A1M1S0S10A4S3dG0S10A2A2S1aS1cS50S19G1S0S10A4A2A3"). Proof. vmr. Qed.

Section ASM.
Variables CST XGL : list (Z * Z).
Hypothesis HCST : cst_ok CST.
Hypothesis HXGL : xgl_ok XGL.
Hypothesis HCSTF : ltac2:(tb__ "0|0|
SeS2cVCST;R1A2SdS2cS55R2A2ScS2fS46R2A2S31R2S47A2A2A2SbF_;F_;Fa;").
Hypothesis HCSTD : ltac2:(tb__ "0|0|
SeS2cVCST;R1A2SaS57R2A1A1F_;Fa;").
Hypothesis HCSTQ : ltac2:(tb__ "0|0|
SeS2cVCST;R1A2SaS56R2A1A1F_;Fa;").

Theorem free_lo_0A : ltac2:(tb__ "0|4|
S35OF_;S48S6S22S14S2eQ40M0A1A1S2dG0S1eR2PcA2A2SeS2dG0S1eR3PdA2A2SeS27SfS36R4R3S18S17S1cS26A2M1S16S1cS26S8S2S1U0A1M2S0A3S4S45SfA1M3VCST;VXGL;R6R5A5A4S15G1A1A3A5S32S7R6A1S39SfR9S38R7A1A3S4bSfRaS38R8A1A3S2fS30R6R5A2S43A2S9S12S49RbA1S13A3S2bS10RcA2SeS2aS3bRfRdRbRaR2R1A6S9SeS29R2A1S44A3S42RfS28R11RfRdRcR4R3A6A2S53S3aVCST;VXGL;R12A3R13R12R11S28R12R10ReRdR5R4A6S11RcA7F_;F_;F_;Fjv;Ft;S51RfRdA2S34SfR10S37SfS5G3G2S0RfReA5S3S2G2S0A3RdRcA5R9A4F_;F_;F_;F_;F_;F_;F_;F_;TQ;Tn;Tp;Ftp;Frho;FKc;FA;Fok;").
Proof.
  intros ok A Kc rho tp p n Q HKc Hok Hokp HHI Hii QC HBIG HDS. pose proof (cls_hyp_blk false p n HHI) as HCL.
  apply (triple_pre_pure segsA ok _ _ (budget_ok_free A)); [intros w Hw; exact (entry_budget _ _ A Kc rho tp w Hw)|]. intros HBud.
  apply (triple_pre_pure segsA ok _ _ (entry_pureF false (Wcan 0) UStopLe q_L0A A rho)); [intros w Hw; exact (entry_pure false _ _ _ A Kc rho tp w HHI Hii QC Hw)|].
  intros (HL & (tp0 & md0 & HA0) & t & jv & HTJ & HJM & IFF). fold p n in HL, HTJ, IFF.
  intros k Hg w Hw.
  destruct (f_instantiate false 0 UStopLe q_L0A Wa_L0A Da_L0A Wb_L0A Wc_L0A Wd_L0A Fb_L0A XI_L0A A Kc rho (rhoF_of A rho p n t jv) tp w p n (N8 n)
              ltac:(intros E; discriminate E) (stopJ_stable_le _) (rhoF_agree A rho p n t jv) IFF Hw) as [HR Hw1].
  exact (free_spine_L0A (KEEPD CST XGL A) ok A Kc rho (rhoF_of A rho p n t jv) tp Q HKc Hok HR
           (hdf_L0A_1 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp) (hdf_L0A_2 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp)
           (HBIG t jv HTJ HJM HR)
           (f0_drain_L0A CST XGL HCST HXGL HCSTQ HCSTF ok A Kc rho tp p n t jv (KEEPD CST XGL A) HKc Hok HDS HBud eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (f0_exit_L0A CST XGL HCST HXGL HCSTF ok A Kc rho tp p n t jv (KEEPD CST XGL A) eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (rhoF_of A rho p n t jv) k Hg w Hw1).
Qed.

Theorem efree_lo_0A : ltac2:(tb__ "0|4|
S48S6S22S14S2eQ40M0A1A1S2dG0S1eR2PcA2A2SeS2dG0S1eR3PdA2A2SeS27SfS36R4R3S18S17S1cS26A2M1S16S1cS26S8S2S1U0A1M2S0A3S4S45SfA1M3VCST;VXGL;R6R5A5A4S15G1A1A3A5S32S7R6A1S2fS30R4R3A2S43A2S9S12S49R9A1S13A3S2bS10RaA2SeS2aS3bRdRbR9R8R2R1A6S9SeS29R2A1S44A3S42RdS28RfRdRbRaR4R3A6A2S54S3aVCST;VXGL;R10A3R10RfS28R10ReRcRbR5R4A6S11RaA6F_;F_;F_;Fjv;Ft;S52RbA1S33SfS37SfS5G3G2S0RdRcA5S3S2G2S0A3RbRaA5R7A3F_;F_;F_;F_;F_;F_;TQ;Tn;Tp;Ftp;Frho;FKc;FA;").
Proof.
  intros A Kc rho tp p n Q HKc HHI Hii QC HBIG HDS. pose proof (cls_hyp_blk false p n HHI) as HCL.
  apply (etriple_pre_pure segsA _ _ (budget_ok_free A)); [intros w Hw; exact (entry_budget _ _ A Kc rho tp w Hw)|]. intros HBud.
  apply (etriple_pre_pure segsA _ _ (entry_pureF false (Wcan 0) UStopLe q_L0A A rho)); [intros w Hw; exact (entry_pure false _ _ _ A Kc rho tp w HHI Hii QC Hw)|].
  intros (HL & (tp0 & md0 & HA0) & t & jv & HTJ & HJM & IFF). fold p n in HL, HTJ, IFF.
  intros w Hw.
  destruct (f_instantiate false 0 UStopLe q_L0A Wa_L0A Da_L0A Wb_L0A Wc_L0A Wd_L0A Fb_L0A XI_L0A A Kc rho (rhoF_of A rho p n t jv) tp w p n (N8 n)
              ltac:(intros E; discriminate E) (stopJ_stable_le _) (rhoF_agree A rho p n t jv) IFF Hw) as [HR Hw1].
  exact (efree_spine_L0A (KEEPD CST XGL A) A Kc rho (rhoF_of A rho p n t jv) tp Q HKc HR
           (hdfe_L0A_1 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _) (hdfe_L0A_2 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _)
           (HBIG t jv HTJ HJM HR)
           (ef0_drain_L0A CST XGL HCST HXGL HCSTQ HCSTF A Kc rho tp p n t jv (KEEPD CST XGL A) HKc HDS HBud eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (ef0_exit_L0A CST XGL HCST HXGL HCSTF A Kc rho tp p n t jv (KEEPD CST XGL A) eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (rhoF_of A rho p n t jv) w Hw1).
Qed.
End ASM.

End F0A_aL0A.

(* [comment removed for export] *)
Module F0A_aL0Be.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Iface"; "UStopLe"; "Wcan"; "AE_A"; "Pre_freeI"; "JL_free"; "J_free_preT"; "KcA"; "Kc_ok"; "L_free"; "@Corelib.Init.Logic"; "eq"; "not"; "False"; "and"; "or"; "@Corelib.Numbers.BinNums"; "Z"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i0.CertStackFree"; "segsA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ie.F0A_cL0Be"; "q_L0Be"; "Ebg_L0Be"; "@Corelib.Init.Datatypes"; "bool"; "true"; "list"; "nil"; "pair"; "prod"; "cons"; "false"; "Some"; "option"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "axst"; "ax_S"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "rw"; "sv"; "swf"; "sprop"; "valuation"; "SLit"; "SVar"; "sprop_below"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SummaryA"; "jpostA"; "LQPA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_instok"; "rhoF_of"; "j_min"; "junkF"; "qcond"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.RtCells"; "in_rangesZ"; "@stdpp.bitvector.definitions"; "bv_unsigned"; "bv"; "@Stdlib.ZArith.BinInt.Z"; "le"; "add"; "lt"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw.Safety"; "assn"; "etriple"; "triple"; "world"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.ExampleMemcpy"; "NF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SoundA"; "SPA"; "liftKA"; "ok_frameA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.DepotCall"; "KEEPD"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.k3.F0A_depot"; "tjv_ok"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iy.F0A_inst"; "sa_f"; "XI"; "sb_f"; "sc_f"; "sd_f"; "se_f"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_skel"; "rigF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Geometry"; "SHADOW_BAND_LO"; "kQuarantineMin"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Inv"; "AInvA"; "IA_BEG"; "IA_END"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Model"; "AA"; "aa_internal_inited"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.Glue3"; "state_diff"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SysCallA"; "ok_pframeA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.AxXform"; "apply_axforms"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i2.CertFreeNull"; "NW2"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i1.CertStackMalloc"; "TP_A"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ic.F0A_cls"; "FACTSc"; "P0_fc"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_drain"; "drain_sum"; "drain_sumE"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.m9.F0A_iL0Be"; "contF"; "econtF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_rebuild"; "IMG_F"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.InvQ8"; "QRD_img"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegD_wf"; "dfp_static"; "@Stdlib.Lists.List"; "forallb"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool Lia.
From stdpp Require Import bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase MemImageType State.
From OssFuzzTheorems.tinyobjloader.fuzz_tobj_c.images Require Import AsanUbsan.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw Require Import Safety.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymFrame SymCFG SymCall SymSummary Glue3 ExampleMemcpy.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import StepA SoundA EntailA CFGA GlueA SummaryA SysCallA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import AxXform.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require Geometry Model RtCells Iface Inv InvLaws.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i0.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i2.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require SpineMallocI SegD_wf DepotCall.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Geometry OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Model OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.RtCells OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Iface OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Inv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.InvLaws OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i0.CertStackFree OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i1.CertStackMalloc OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i2.CertFreeNull OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SpineMallocI OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegD_wf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.DepotCall.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i7.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require F0A_skel.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ic.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require iy.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ih.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require F0A_instok F0A_rebuild.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require k3.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require kg.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ie.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require m9.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require la.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require kj.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require InvQ8 F0A_drain.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require l9.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i7.F0A_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_skel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ic.F0A_cls OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iy.F0A_inst OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ih.F0A_laws OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_instok OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_rebuild OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.k3.F0A_depot OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.kg.F0A_asm OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ie.F0A_cL0Be OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.m9.F0A_iL0Be OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.la.F0A_xiL0Be OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.kj.F0A_dL0Be OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.InvQ8 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_drain OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.l9.F0A_qL0Be.
Import ListNotations.
Close Scope bv_scope.
Open Scope Z_scope.
Ltac vmr := match goal with |- _ = ?r => vm_cast_no_check (@eq_refl _ r) end.

Lemma Wa_L0Be : ltac2:(tb__ "0|0|
S9S12S20S3cS1U0A1S0A2A1S13A3"). Proof. vmr. Qed.
Lemma Da_L0Be : ltac2:(tb__ "0|5|
S9S1bS17S14S17S1fS1fA2M0A1M1S14S21A1M2A2M3A1S4aS1dS3S2S1U0A1M4S0A3A1S3cG4S0A2A2S1aG3S16G1G2S18G0S16S1fS1fS24P18A1S23S4eA1A4S15G0A1A3S15S21A1A4A2A3"). Proof. vmr. Qed.
Lemma Wb_L0Be : ltac2:(tb__ "0|0|
S9S12S20S3eS1U0A1S0S10A3A1S13A3"). Proof. vmr. Qed.
Lemma Wc_L0Be : ltac2:(tb__ "0|0|
S9S12S20S3fS1U0A1S0S10A3A1S13A3"). Proof. vmr. Qed.
Lemma Wd_L0Be : ltac2:(tb__ "0|0|
S9S12S20S40S1U0A1S0S10A3A1S13A3"). Proof. vmr. Qed.
Lemma Fb_L0Be : ltac2:(tb__ "0|0|
S9S12S58S21S25S4dA1S4fS19S1U0A1S0S10A4A3S13A3"). Proof. vmr. Qed.
Lemma XI_L0Be : ltac2:(tb__ "0|2|
S9S1bS1cA1S4cS41S19S1U0M0A1M1S0S10A4S3dG0S10A2A2S1aS1cS50S19G1S0S10A4A2A3"). Proof. vmr. Qed.

Section ASM.
Variables CST XGL : list (Z * Z).
Hypothesis HCST : cst_ok CST.
Hypothesis HXGL : xgl_ok XGL.
Hypothesis HCSTF : ltac2:(tb__ "0|0|
SeS2cVCST;R1A2SdS2cS55R2A2ScS2fS46R2A2S31R2S47A2A2A2SbF_;F_;Fa;").
Hypothesis HCSTD : ltac2:(tb__ "0|0|
SeS2cVCST;R1A2SaS57R2A1A1F_;Fa;").
Hypothesis HCSTQ : ltac2:(tb__ "0|0|
SeS2cVCST;R1A2SaS56R2A1A1F_;Fa;").

Theorem free_lo_0Be : ltac2:(tb__ "0|4|
S35OF_;S48S6S22S14S2eQ40M0A1A1S2dG0S1eR2PcA2A2SeS2dG0S1eR3PdA2A2SeS27SfS36R4R3S18S17S1cS26A2M1S16S1cS26S8S2S1U0A1M2S0A3S4S45SfA1M3VCST;VXGL;R6R5A5A4S15G1A1A3A5S32S7R6A1S39SfR9S38R7A1A3S4bSfRaS38R8A1A3S2fS30R6R5A2S43A2S9S12S49RbA1S13A3S2bS10RcA2SeS2aS3bRfRdRbRaR2R1A6S9SeS29R2A1S44A3S42RfS28R11RfRdRcR4R3A6A2S53S3aVCST;VXGL;R12A3R13R12R11S28R12R10ReRdR5R4A6S11RcA7F_;F_;F_;Fjv;Ft;S51RfRdA2S34SfR10S37SfS5G3G2S0RfReA5S3S2G2S0A3RdRcA5R9A4F_;F_;F_;F_;F_;F_;F_;F_;TQ;Tn;Tp;Ftp;Frho;FKc;FA;Fok;").
Proof.
  intros ok A Kc rho tp p n Q HKc Hok Hokp HHI Hii QC HBIG HDS. pose proof (cls_hyp_blk false p n HHI) as HCL.
  apply (triple_pre_pure segsA ok _ _ (budget_ok_free A)); [intros w Hw; exact (entry_budget _ _ A Kc rho tp w Hw)|]. intros HBud.
  apply (triple_pre_pure segsA ok _ _ (entry_pureF false (Wcan 0) UStopLe q_L0Be A rho)); [intros w Hw; exact (entry_pure false _ _ _ A Kc rho tp w HHI Hii QC Hw)|].
  intros (HL & (tp0 & md0 & HA0) & t & jv & HTJ & HJM & IFF). fold p n in HL, HTJ, IFF.
  intros k Hg w Hw.
  destruct (f_instantiate false 0 UStopLe q_L0Be Wa_L0Be Da_L0Be Wb_L0Be Wc_L0Be Wd_L0Be Fb_L0Be XI_L0Be A Kc rho (rhoF_of A rho p n t jv) tp w p n (N8 n)
              ltac:(intros E; discriminate E) (stopJ_stable_le _) (rhoF_agree A rho p n t jv) IFF Hw) as [HR Hw1].
  exact (free_spine_L0Be (KEEPD CST XGL A) ok A Kc rho (rhoF_of A rho p n t jv) tp Q HKc Hok HR
           (hdf_L0Be_1 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp) (hdf_L0Be_2 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp)
           (HBIG t jv HTJ HJM HR)
           (f0_drain_L0Be CST XGL HCST HXGL HCSTQ HCSTF ok A Kc rho tp p n t jv (KEEPD CST XGL A) HKc Hok HDS HBud eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (f0_exit_L0Be CST XGL HCST HXGL HCSTF ok A Kc rho tp p n t jv (KEEPD CST XGL A) eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (rhoF_of A rho p n t jv) k Hg w Hw1).
Qed.

Theorem efree_lo_0Be : ltac2:(tb__ "0|4|
S48S6S22S14S2eQ40M0A1A1S2dG0S1eR2PcA2A2SeS2dG0S1eR3PdA2A2SeS27SfS36R4R3S18S17S1cS26A2M1S16S1cS26S8S2S1U0A1M2S0A3S4S45SfA1M3VCST;VXGL;R6R5A5A4S15G1A1A3A5S32S7R6A1S2fS30R4R3A2S43A2S9S12S49R9A1S13A3S2bS10RaA2SeS2aS3bRdRbR9R8R2R1A6S9SeS29R2A1S44A3S42RdS28RfRdRbRaR4R3A6A2S54S3aVCST;VXGL;R10A3R10RfS28R10ReRcRbR5R4A6S11RaA6F_;F_;F_;Fjv;Ft;S52RbA1S33SfS37SfS5G3G2S0RdRcA5S3S2G2S0A3RbRaA5R7A3F_;F_;F_;F_;F_;F_;TQ;Tn;Tp;Ftp;Frho;FKc;FA;").
Proof.
  intros A Kc rho tp p n Q HKc HHI Hii QC HBIG HDS. pose proof (cls_hyp_blk false p n HHI) as HCL.
  apply (etriple_pre_pure segsA _ _ (budget_ok_free A)); [intros w Hw; exact (entry_budget _ _ A Kc rho tp w Hw)|]. intros HBud.
  apply (etriple_pre_pure segsA _ _ (entry_pureF false (Wcan 0) UStopLe q_L0Be A rho)); [intros w Hw; exact (entry_pure false _ _ _ A Kc rho tp w HHI Hii QC Hw)|].
  intros (HL & (tp0 & md0 & HA0) & t & jv & HTJ & HJM & IFF). fold p n in HL, HTJ, IFF.
  intros w Hw.
  destruct (f_instantiate false 0 UStopLe q_L0Be Wa_L0Be Da_L0Be Wb_L0Be Wc_L0Be Wd_L0Be Fb_L0Be XI_L0Be A Kc rho (rhoF_of A rho p n t jv) tp w p n (N8 n)
              ltac:(intros E; discriminate E) (stopJ_stable_le _) (rhoF_agree A rho p n t jv) IFF Hw) as [HR Hw1].
  exact (efree_spine_L0Be (KEEPD CST XGL A) A Kc rho (rhoF_of A rho p n t jv) tp Q HKc HR
           (hdfe_L0Be_1 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _) (hdfe_L0Be_2 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _)
           (HBIG t jv HTJ HJM HR)
           (ef0_drain_L0Be CST XGL HCST HXGL HCSTQ HCSTF A Kc rho tp p n t jv (KEEPD CST XGL A) HKc HDS HBud eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (ef0_exit_L0Be CST XGL HCST HXGL HCSTF A Kc rho tp p n t jv (KEEPD CST XGL A) eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (rhoF_of A rho p n t jv) w Hw1).
Qed.
End ASM.

End F0A_aL0Be.

(* [comment removed for export] *)
Module F0A_aL0Bf.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Iface"; "UStopLe"; "Wcan"; "AE_A"; "Pre_freeI"; "JL_free"; "J_free_preT"; "KcA"; "Kc_ok"; "L_free"; "@Corelib.Init.Logic"; "eq"; "not"; "False"; "and"; "or"; "@Corelib.Numbers.BinNums"; "Z"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i0.CertStackFree"; "segsA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ie.F0A_cL0Bf"; "q_L0Bf"; "Ebg_L0Bf"; "@Corelib.Init.Datatypes"; "bool"; "true"; "list"; "nil"; "pair"; "prod"; "cons"; "false"; "Some"; "option"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "axst"; "ax_S"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "rw"; "sv"; "swf"; "sprop"; "valuation"; "SLit"; "SVar"; "sprop_below"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SummaryA"; "jpostA"; "LQPA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_instok"; "rhoF_of"; "j_min"; "junkF"; "qcond"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.RtCells"; "in_rangesZ"; "@stdpp.bitvector.definitions"; "bv_unsigned"; "bv"; "@Stdlib.ZArith.BinInt.Z"; "le"; "add"; "lt"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw.Safety"; "assn"; "etriple"; "triple"; "world"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.ExampleMemcpy"; "NF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SoundA"; "SPA"; "liftKA"; "ok_frameA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.DepotCall"; "KEEPD"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.k3.F0A_depot"; "tjv_ok"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iy.F0A_inst"; "sa_f"; "XI"; "sb_f"; "sc_f"; "sd_f"; "se_f"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_skel"; "rigF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Geometry"; "SHADOW_BAND_LO"; "kQuarantineMin"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Inv"; "AInvA"; "IA_BEG"; "IA_END"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Model"; "AA"; "aa_internal_inited"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.Glue3"; "state_diff"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SysCallA"; "ok_pframeA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.AxXform"; "apply_axforms"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i2.CertFreeNull"; "NW2"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i1.CertStackMalloc"; "TP_A"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ic.F0A_cls"; "FACTSc"; "P0_fc"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_drain"; "drain_sum"; "drain_sumE"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.m9.F0A_iL0Bf"; "contF"; "econtF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_rebuild"; "IMG_F"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.InvQ8"; "QRD_img"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegD_wf"; "dfp_static"; "@Stdlib.Lists.List"; "forallb"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool Lia.
From stdpp Require Import bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase MemImageType State.
From OssFuzzTheorems.tinyobjloader.fuzz_tobj_c.images Require Import AsanUbsan.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw Require Import Safety.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymFrame SymCFG SymCall SymSummary Glue3 ExampleMemcpy.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import StepA SoundA EntailA CFGA GlueA SummaryA SysCallA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import AxXform.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require Geometry Model RtCells Iface Inv InvLaws.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i0.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i2.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require SpineMallocI SegD_wf DepotCall.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Geometry OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Model OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.RtCells OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Iface OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Inv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.InvLaws OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i0.CertStackFree OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i1.CertStackMalloc OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i2.CertFreeNull OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SpineMallocI OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegD_wf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.DepotCall.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i7.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require F0A_skel.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ic.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require iy.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ih.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require F0A_instok F0A_rebuild.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require k3.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require kg.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ie.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require m9.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require la.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require kj.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require InvQ8 F0A_drain.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require l9.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i7.F0A_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_skel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ic.F0A_cls OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iy.F0A_inst OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ih.F0A_laws OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_instok OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_rebuild OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.k3.F0A_depot OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.kg.F0A_asm OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ie.F0A_cL0Bf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.m9.F0A_iL0Bf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.la.F0A_xiL0Bf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.kj.F0A_dL0Bf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.InvQ8 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_drain OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.l9.F0A_qL0Bf.
Import ListNotations.
Close Scope bv_scope.
Open Scope Z_scope.
Ltac vmr := match goal with |- _ = ?r => vm_cast_no_check (@eq_refl _ r) end.

Lemma Wa_L0Bf : ltac2:(tb__ "0|0|
S9S12S20S3cS1U0A1S0A2A1S13A3"). Proof. vmr. Qed.
Lemma Da_L0Bf : ltac2:(tb__ "0|5|
S9S1bS17S14S17S1fS1fA2M0A1M1S14S21A1M2A2M3A1S4aS1dS3S2S1U0A1M4S0A3A1S3cG4S0A2A2S1aG3S16G1G2S18G0S16S1fS1fS24P18A1S23S4eA1A4S15G0A1A3S15S21A1A4A2A3"). Proof. vmr. Qed.
Lemma Wb_L0Bf : ltac2:(tb__ "0|0|
S9S12S20S3eS1U0A1S0S10A3A1S13A3"). Proof. vmr. Qed.
Lemma Wc_L0Bf : ltac2:(tb__ "0|0|
S9S12S20S3fS1U0A1S0S10A3A1S13A3"). Proof. vmr. Qed.
Lemma Wd_L0Bf : ltac2:(tb__ "0|0|
S9S12S20S40S1U0A1S0S10A3A1S13A3"). Proof. vmr. Qed.
Lemma Fb_L0Bf : ltac2:(tb__ "0|0|
S9S12S58S21S25S4dA1S4fS19S1U0A1S0S10A4A3S13A3"). Proof. vmr. Qed.
Lemma XI_L0Bf : ltac2:(tb__ "0|2|
S9S1bS1cA1S4cS41S19S1U0M0A1M1S0S10A4S3dG0S10A2A2S1aS1cS50S19G1S0S10A4A2A3"). Proof. vmr. Qed.

Section ASM.
Variables CST XGL : list (Z * Z).
Hypothesis HCST : cst_ok CST.
Hypothesis HXGL : xgl_ok XGL.
Hypothesis HCSTF : ltac2:(tb__ "0|0|
SeS2cVCST;R1A2SdS2cS55R2A2ScS2fS46R2A2S31R2S47A2A2A2SbF_;F_;Fa;").
Hypothesis HCSTD : ltac2:(tb__ "0|0|
SeS2cVCST;R1A2SaS57R2A1A1F_;Fa;").
Hypothesis HCSTQ : ltac2:(tb__ "0|0|
SeS2cVCST;R1A2SaS56R2A1A1F_;Fa;").

Theorem free_lo_0Bf : ltac2:(tb__ "0|4|
S35OF_;S48S6S22S14S2eQ40M0A1A1S2dG0S1eR2PcA2A2SeS2dG0S1eR3PdA2A2SeS27SfS36R4R3S18S17S1cS26A2M1S16S1cS26S8S2S1U0A1M2S0A3S4S45SfA1M3VCST;VXGL;R6R5A5A4S15G1A1A3A5S32S7R6A1S39SfR9S38R7A1A3S4bSfRaS38R8A1A3S2fS30R6R5A2S43A2S9S12S49RbA1S13A3S2bS10RcA2SeS2aS3bRfRdRbRaR2R1A6S9SeS29R2A1S44A3S42RfS28R11RfRdRcR4R3A6A2S53S3aVCST;VXGL;R12A3R13R12R11S28R12R10ReRdR5R4A6S11RcA7F_;F_;F_;Fjv;Ft;S51RfRdA2S34SfR10S37SfS5G3G2S0RfReA5S3S2G2S0A3RdRcA5R9A4F_;F_;F_;F_;F_;F_;F_;F_;TQ;Tn;Tp;Ftp;Frho;FKc;FA;Fok;").
Proof.
  intros ok A Kc rho tp p n Q HKc Hok Hokp HHI Hii QC HBIG HDS. pose proof (cls_hyp_blk false p n HHI) as HCL.
  apply (triple_pre_pure segsA ok _ _ (budget_ok_free A)); [intros w Hw; exact (entry_budget _ _ A Kc rho tp w Hw)|]. intros HBud.
  apply (triple_pre_pure segsA ok _ _ (entry_pureF false (Wcan 0) UStopLe q_L0Bf A rho)); [intros w Hw; exact (entry_pure false _ _ _ A Kc rho tp w HHI Hii QC Hw)|].
  intros (HL & (tp0 & md0 & HA0) & t & jv & HTJ & HJM & IFF). fold p n in HL, HTJ, IFF.
  intros k Hg w Hw.
  destruct (f_instantiate false 0 UStopLe q_L0Bf Wa_L0Bf Da_L0Bf Wb_L0Bf Wc_L0Bf Wd_L0Bf Fb_L0Bf XI_L0Bf A Kc rho (rhoF_of A rho p n t jv) tp w p n (N8 n)
              ltac:(intros E; discriminate E) (stopJ_stable_le _) (rhoF_agree A rho p n t jv) IFF Hw) as [HR Hw1].
  exact (free_spine_L0Bf (KEEPD CST XGL A) ok A Kc rho (rhoF_of A rho p n t jv) tp Q HKc Hok HR
           (hdf_L0Bf_1 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp) (hdf_L0Bf_2 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp)
           (HBIG t jv HTJ HJM HR)
           (f0_drain_L0Bf CST XGL HCST HXGL HCSTQ HCSTF ok A Kc rho tp p n t jv (KEEPD CST XGL A) HKc Hok HDS HBud eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (f0_exit_L0Bf CST XGL HCST HXGL HCSTF ok A Kc rho tp p n t jv (KEEPD CST XGL A) eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (rhoF_of A rho p n t jv) k Hg w Hw1).
Qed.

Theorem efree_lo_0Bf : ltac2:(tb__ "0|4|
S48S6S22S14S2eQ40M0A1A1S2dG0S1eR2PcA2A2SeS2dG0S1eR3PdA2A2SeS27SfS36R4R3S18S17S1cS26A2M1S16S1cS26S8S2S1U0A1M2S0A3S4S45SfA1M3VCST;VXGL;R6R5A5A4S15G1A1A3A5S32S7R6A1S2fS30R4R3A2S43A2S9S12S49R9A1S13A3S2bS10RaA2SeS2aS3bRdRbR9R8R2R1A6S9SeS29R2A1S44A3S42RdS28RfRdRbRaR4R3A6A2S54S3aVCST;VXGL;R10A3R10RfS28R10ReRcRbR5R4A6S11RaA6F_;F_;F_;Fjv;Ft;S52RbA1S33SfS37SfS5G3G2S0RdRcA5S3S2G2S0A3RbRaA5R7A3F_;F_;F_;F_;F_;F_;TQ;Tn;Tp;Ftp;Frho;FKc;FA;").
Proof.
  intros A Kc rho tp p n Q HKc HHI Hii QC HBIG HDS. pose proof (cls_hyp_blk false p n HHI) as HCL.
  apply (etriple_pre_pure segsA _ _ (budget_ok_free A)); [intros w Hw; exact (entry_budget _ _ A Kc rho tp w Hw)|]. intros HBud.
  apply (etriple_pre_pure segsA _ _ (entry_pureF false (Wcan 0) UStopLe q_L0Bf A rho)); [intros w Hw; exact (entry_pure false _ _ _ A Kc rho tp w HHI Hii QC Hw)|].
  intros (HL & (tp0 & md0 & HA0) & t & jv & HTJ & HJM & IFF). fold p n in HL, HTJ, IFF.
  intros w Hw.
  destruct (f_instantiate false 0 UStopLe q_L0Bf Wa_L0Bf Da_L0Bf Wb_L0Bf Wc_L0Bf Wd_L0Bf Fb_L0Bf XI_L0Bf A Kc rho (rhoF_of A rho p n t jv) tp w p n (N8 n)
              ltac:(intros E; discriminate E) (stopJ_stable_le _) (rhoF_agree A rho p n t jv) IFF Hw) as [HR Hw1].
  exact (efree_spine_L0Bf (KEEPD CST XGL A) A Kc rho (rhoF_of A rho p n t jv) tp Q HKc HR
           (hdfe_L0Bf_1 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _) (hdfe_L0Bf_2 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _)
           (HBIG t jv HTJ HJM HR)
           (ef0_drain_L0Bf CST XGL HCST HXGL HCSTQ HCSTF A Kc rho tp p n t jv (KEEPD CST XGL A) HKc HDS HBud eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (ef0_exit_L0Bf CST XGL HCST HXGL HCSTF A Kc rho tp p n t jv (KEEPD CST XGL A) eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (rhoF_of A rho p n t jv) w Hw1).
Qed.
End ASM.

End F0A_aL0Bf.

(* [comment removed for export] *)
Module F0A_aL1A.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Iface"; "UStopLe"; "Wcan"; "AE_A"; "Pre_freeI"; "JL_free"; "J_free_preT"; "KcA"; "Kc_ok"; "L_free"; "@Corelib.Init.Logic"; "eq"; "not"; "False"; "and"; "or"; "@Corelib.Numbers.BinNums"; "Z"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i0.CertStackFree"; "segsA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ie.F0A_cL1A"; "q_L1A"; "Ebg_L1A"; "@Corelib.Init.Datatypes"; "bool"; "true"; "list"; "nil"; "pair"; "prod"; "cons"; "false"; "Some"; "option"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "axst"; "ax_S"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "rw"; "sv"; "swf"; "sprop"; "valuation"; "SLit"; "SVar"; "sprop_below"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SummaryA"; "jpostA"; "LQPA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_instok"; "rhoF_of"; "j_min"; "junkF"; "qcond"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.RtCells"; "in_rangesZ"; "@stdpp.bitvector.definitions"; "bv_unsigned"; "bv"; "@Stdlib.ZArith.BinInt.Z"; "le"; "add"; "lt"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw.Safety"; "assn"; "etriple"; "triple"; "world"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.ExampleMemcpy"; "NF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SoundA"; "SPA"; "liftKA"; "ok_frameA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.DepotCall"; "KEEPD"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.k3.F0A_depot"; "tjv_ok"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iy.F0A_inst"; "sa_f"; "XI"; "sb_f"; "sc_f"; "sd_f"; "se_f"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_skel"; "rigF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Geometry"; "SHADOW_BAND_LO"; "kQuarantineMin"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Inv"; "AInvA"; "IA_BEG"; "IA_END"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Model"; "AA"; "aa_internal_inited"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.Glue3"; "state_diff"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SysCallA"; "ok_pframeA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.AxXform"; "apply_axforms"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i2.CertFreeNull"; "NW2"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i1.CertStackMalloc"; "TP_A"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ic.F0A_cls"; "FACTSc"; "P0_fc"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_drain"; "drain_sum"; "drain_sumE"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.m9.F0A_iL1A"; "contF"; "econtF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_rebuild"; "IMG_F"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.InvQ8"; "QRD_img"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegD_wf"; "dfp_static"; "@Stdlib.Lists.List"; "forallb"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool Lia.
From stdpp Require Import bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase MemImageType State.
From OssFuzzTheorems.tinyobjloader.fuzz_tobj_c.images Require Import AsanUbsan.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw Require Import Safety.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymFrame SymCFG SymCall SymSummary Glue3 ExampleMemcpy.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import StepA SoundA EntailA CFGA GlueA SummaryA SysCallA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import AxXform.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require Geometry Model RtCells Iface Inv InvLaws.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i0.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i2.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require SpineMallocI SegD_wf DepotCall.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Geometry OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Model OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.RtCells OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Iface OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Inv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.InvLaws OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i0.CertStackFree OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i1.CertStackMalloc OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i2.CertFreeNull OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SpineMallocI OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegD_wf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.DepotCall.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i7.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require F0A_skel.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ic.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require iy.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ih.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require F0A_instok F0A_rebuild.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require k3.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require kg.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ie.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require m9.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require lb.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require kl.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require InvQ8 F0A_drain.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require lc.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i7.F0A_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_skel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ic.F0A_cls OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iy.F0A_inst OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ih.F0A_laws OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_instok OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_rebuild OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.k3.F0A_depot OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.kg.F0A_asm OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ie.F0A_cL1A OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.m9.F0A_iL1A OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.lb.F0A_xiL1A OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.kl.F0A_dL1A OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.InvQ8 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_drain OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.lc.F0A_qL1A.
Import ListNotations.
Close Scope bv_scope.
Open Scope Z_scope.
Ltac vmr := match goal with |- _ = ?r => vm_cast_no_check (@eq_refl _ r) end.

Lemma Wa_L1A : ltac2:(tb__ "0|0|
S9S12S20S3cS1U1A1S0A2A1S13A3"). Proof. vmr. Qed.
Lemma Da_L1A : ltac2:(tb__ "0|5|
S9S1bS17S14S17S1fS1fA2M0A1M1S14S21A1M2A2M3A1S4aS1dS3S2S1U1A1M4S0A3A1S3cG4S0A2A2S1aG3S16G1G2S18G0S16S1fS1fS24P18A1S23S4eA1A4S15G0A1A3S15S21A1A4A2A3"). Proof. vmr. Qed.
Lemma Wb_L1A : ltac2:(tb__ "0|0|
S9S12S20S3eS1U1A1S0S10A3A1S13A3"). Proof. vmr. Qed.
Lemma Wc_L1A : ltac2:(tb__ "0|0|
S9S12S20S3fS1U1A1S0S10A3A1S13A3"). Proof. vmr. Qed.
Lemma Wd_L1A : ltac2:(tb__ "0|0|
S9S12S20S40S1U1A1S0S10A3A1S13A3"). Proof. vmr. Qed.
Lemma Fb_L1A : ltac2:(tb__ "0|0|
S9S12S58S21S25S4dA1S4fS19S1U1A1S0S10A4A3S13A3"). Proof. vmr. Qed.
Lemma XI_L1A : ltac2:(tb__ "0|2|
S9S1bS1cA1S4cS41S19S1U1M0A1M1S0S10A4S3dG0S10A2A2S1aS1cS50S19G1S0S10A4A2A3"). Proof. vmr. Qed.

Section ASM.
Variables CST XGL : list (Z * Z).
Hypothesis HCST : cst_ok CST.
Hypothesis HXGL : xgl_ok XGL.
Hypothesis HCSTF : ltac2:(tb__ "0|0|
SeS2cVCST;R1A2SdS2cS55R2A2ScS2fS46R2A2S31R2S47A2A2A2SbF_;F_;Fa;").
Hypothesis HCSTD : ltac2:(tb__ "0|0|
SeS2cVCST;R1A2SaS57R2A1A1F_;Fa;").
Hypothesis HCSTQ : ltac2:(tb__ "0|0|
SeS2cVCST;R1A2SaS56R2A1A1F_;Fa;").

Theorem free_lo_1A : ltac2:(tb__ "0|4|
S35OF_;S48S6S22S14S2eQ40M0A1A1S2dG0S1eR2PcA2A2SeS2dG0S1eR3PdA2A2SeS27SfS36R4R3S18S17S1cS26A2M1S16S1cS26S8S2S1U1A1M2S0A3S4S45SfA1M3VCST;VXGL;R6R5A5A4S15G1A1A3A5S32S7R6A1S39SfR9S38R7A1A3S4bSfRaS38R8A1A3S2fS30R6R5A2S43A2S9S12S49RbA1S13A3S2bS10RcA2SeS2aS3bRfRdRbRaR2R1A6S9SeS29R2A1S44A3S42RfS28R11RfRdRcR4R3A6A2S53S3aVCST;VXGL;R12A3R13R12R11S28R12R10ReRdR5R4A6S11RcA7F_;F_;F_;Fjv;Ft;S51RfRdA2S34SfR10S37SfS5G3G2S0RfReA5S3S2G2S0A3RdRcA5R9A4F_;F_;F_;F_;F_;F_;F_;F_;TQ;Tn;Tp;Ftp;Frho;FKc;FA;Fok;").
Proof.
  intros ok A Kc rho tp p n Q HKc Hok Hokp HHI Hii QC HBIG HDS. pose proof (cls_hyp_blk false p n HHI) as HCL.
  apply (triple_pre_pure segsA ok _ _ (budget_ok_free A)); [intros w Hw; exact (entry_budget _ _ A Kc rho tp w Hw)|]. intros HBud.
  apply (triple_pre_pure segsA ok _ _ (entry_pureF false (Wcan 1) UStopLe q_L1A A rho)); [intros w Hw; exact (entry_pure false _ _ _ A Kc rho tp w HHI Hii QC Hw)|].
  intros (HL & (tp0 & md0 & HA0) & t & jv & HTJ & HJM & IFF). fold p n in HL, HTJ, IFF.
  intros k Hg w Hw.
  destruct (f_instantiate false 1 UStopLe q_L1A Wa_L1A Da_L1A Wb_L1A Wc_L1A Wd_L1A Fb_L1A XI_L1A A Kc rho (rhoF_of A rho p n t jv) tp w p n (N8 n)
              ltac:(intros E; discriminate E) (stopJ_stable_le _) (rhoF_agree A rho p n t jv) IFF Hw) as [HR Hw1].
  exact (free_spine_L1A (KEEPD CST XGL A) ok A Kc rho (rhoF_of A rho p n t jv) tp Q HKc Hok HR
           (hdf_L1A_1 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp) (hdf_L1A_2 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp) (hdf_L1A_3 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp)
           (HBIG t jv HTJ HJM HR)
           (f0_drain_L1A CST XGL HCST HXGL HCSTQ HCSTF ok A Kc rho tp p n t jv (KEEPD CST XGL A) HKc Hok HDS HBud eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (f0_exit_L1A CST XGL HCST HXGL HCSTF ok A Kc rho tp p n t jv (KEEPD CST XGL A) eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (rhoF_of A rho p n t jv) k Hg w Hw1).
Qed.

Theorem efree_lo_1A : ltac2:(tb__ "0|4|
S48S6S22S14S2eQ40M0A1A1S2dG0S1eR2PcA2A2SeS2dG0S1eR3PdA2A2SeS27SfS36R4R3S18S17S1cS26A2M1S16S1cS26S8S2S1U1A1M2S0A3S4S45SfA1M3VCST;VXGL;R6R5A5A4S15G1A1A3A5S32S7R6A1S2fS30R4R3A2S43A2S9S12S49R9A1S13A3S2bS10RaA2SeS2aS3bRdRbR9R8R2R1A6S9SeS29R2A1S44A3S42RdS28RfRdRbRaR4R3A6A2S54S3aVCST;VXGL;R10A3R10RfS28R10ReRcRbR5R4A6S11RaA6F_;F_;F_;Fjv;Ft;S52RbA1S33SfS37SfS5G3G2S0RdRcA5S3S2G2S0A3RbRaA5R7A3F_;F_;F_;F_;F_;F_;TQ;Tn;Tp;Ftp;Frho;FKc;FA;").
Proof.
  intros A Kc rho tp p n Q HKc HHI Hii QC HBIG HDS. pose proof (cls_hyp_blk false p n HHI) as HCL.
  apply (etriple_pre_pure segsA _ _ (budget_ok_free A)); [intros w Hw; exact (entry_budget _ _ A Kc rho tp w Hw)|]. intros HBud.
  apply (etriple_pre_pure segsA _ _ (entry_pureF false (Wcan 1) UStopLe q_L1A A rho)); [intros w Hw; exact (entry_pure false _ _ _ A Kc rho tp w HHI Hii QC Hw)|].
  intros (HL & (tp0 & md0 & HA0) & t & jv & HTJ & HJM & IFF). fold p n in HL, HTJ, IFF.
  intros w Hw.
  destruct (f_instantiate false 1 UStopLe q_L1A Wa_L1A Da_L1A Wb_L1A Wc_L1A Wd_L1A Fb_L1A XI_L1A A Kc rho (rhoF_of A rho p n t jv) tp w p n (N8 n)
              ltac:(intros E; discriminate E) (stopJ_stable_le _) (rhoF_agree A rho p n t jv) IFF Hw) as [HR Hw1].
  exact (efree_spine_L1A (KEEPD CST XGL A) A Kc rho (rhoF_of A rho p n t jv) tp Q HKc HR
           (hdfe_L1A_1 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _) (hdfe_L1A_2 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _) (hdfe_L1A_3 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _)
           (HBIG t jv HTJ HJM HR)
           (ef0_drain_L1A CST XGL HCST HXGL HCSTQ HCSTF A Kc rho tp p n t jv (KEEPD CST XGL A) HKc HDS HBud eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (ef0_exit_L1A CST XGL HCST HXGL HCSTF A Kc rho tp p n t jv (KEEPD CST XGL A) eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (rhoF_of A rho p n t jv) w Hw1).
Qed.
End ASM.

End F0A_aL1A.

(* [comment removed for export] *)
Module F0A_aL1Be.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Iface"; "UStopLe"; "Wcan"; "AE_A"; "Pre_freeI"; "JL_free"; "J_free_preT"; "KcA"; "Kc_ok"; "L_free"; "@Corelib.Init.Logic"; "eq"; "not"; "False"; "and"; "or"; "@Corelib.Numbers.BinNums"; "Z"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i0.CertStackFree"; "segsA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ie.F0A_cL1Be"; "q_L1Be"; "Ebg_L1Be"; "@Corelib.Init.Datatypes"; "bool"; "true"; "list"; "nil"; "pair"; "prod"; "cons"; "false"; "Some"; "option"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "axst"; "ax_S"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "rw"; "sv"; "swf"; "sprop"; "valuation"; "SLit"; "SVar"; "sprop_below"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SummaryA"; "jpostA"; "LQPA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_instok"; "rhoF_of"; "j_min"; "junkF"; "qcond"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.RtCells"; "in_rangesZ"; "@stdpp.bitvector.definitions"; "bv_unsigned"; "bv"; "@Stdlib.ZArith.BinInt.Z"; "le"; "add"; "lt"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw.Safety"; "assn"; "etriple"; "triple"; "world"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.ExampleMemcpy"; "NF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SoundA"; "SPA"; "liftKA"; "ok_frameA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.DepotCall"; "KEEPD"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.k3.F0A_depot"; "tjv_ok"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iy.F0A_inst"; "sa_f"; "XI"; "sb_f"; "sc_f"; "sd_f"; "se_f"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_skel"; "rigF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Geometry"; "SHADOW_BAND_LO"; "kQuarantineMin"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Inv"; "AInvA"; "IA_BEG"; "IA_END"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Model"; "AA"; "aa_internal_inited"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.Glue3"; "state_diff"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SysCallA"; "ok_pframeA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.AxXform"; "apply_axforms"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i2.CertFreeNull"; "NW2"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i1.CertStackMalloc"; "TP_A"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ic.F0A_cls"; "FACTSc"; "P0_fc"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_drain"; "drain_sum"; "drain_sumE"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.m9.F0A_iL1Be"; "contF"; "econtF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_rebuild"; "IMG_F"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.InvQ8"; "QRD_img"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegD_wf"; "dfp_static"; "@Stdlib.Lists.List"; "forallb"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool Lia.
From stdpp Require Import bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase MemImageType State.
From OssFuzzTheorems.tinyobjloader.fuzz_tobj_c.images Require Import AsanUbsan.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw Require Import Safety.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymFrame SymCFG SymCall SymSummary Glue3 ExampleMemcpy.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import StepA SoundA EntailA CFGA GlueA SummaryA SysCallA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import AxXform.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require Geometry Model RtCells Iface Inv InvLaws.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i0.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i2.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require SpineMallocI SegD_wf DepotCall.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Geometry OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Model OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.RtCells OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Iface OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Inv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.InvLaws OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i0.CertStackFree OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i1.CertStackMalloc OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i2.CertFreeNull OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SpineMallocI OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegD_wf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.DepotCall.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i7.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require F0A_skel.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ic.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require iy.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ih.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require F0A_instok F0A_rebuild.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require k3.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require kg.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ie.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require m9.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require lb.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require kl.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require InvQ8 F0A_drain.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require lc.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i7.F0A_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_skel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ic.F0A_cls OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iy.F0A_inst OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ih.F0A_laws OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_instok OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_rebuild OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.k3.F0A_depot OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.kg.F0A_asm OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ie.F0A_cL1Be OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.m9.F0A_iL1Be OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.lb.F0A_xiL1Be OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.kl.F0A_dL1Be OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.InvQ8 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.F0A_drain OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.lc.F0A_qL1Be.
Import ListNotations.
Close Scope bv_scope.
Open Scope Z_scope.
Ltac vmr := match goal with |- _ = ?r => vm_cast_no_check (@eq_refl _ r) end.

Lemma Wa_L1Be : ltac2:(tb__ "0|0|
S9S12S20S3cS1U1A1S0A2A1S13A3"). Proof. vmr. Qed.
Lemma Da_L1Be : ltac2:(tb__ "0|5|
S9S1bS17S14S17S1fS1fA2M0A1M1S14S21A1M2A2M3A1S4aS1dS3S2S1U1A1M4S0A3A1S3cG4S0A2A2S1aG3S16G1G2S18G0S16S1fS1fS24P18A1S23S4eA1A4S15G0A1A3S15S21A1A4A2A3"). Proof. vmr. Qed.
Lemma Wb_L1Be : ltac2:(tb__ "0|0|
S9S12S20S3eS1U1A1S0S10A3A1S13A3"). Proof. vmr. Qed.
Lemma Wc_L1Be : ltac2:(tb__ "0|0|
S9S12S20S3fS1U1A1S0S10A3A1S13A3"). Proof. vmr. Qed.
Lemma Wd_L1Be : ltac2:(tb__ "0|0|
S9S12S20S40S1U1A1S0S10A3A1S13A3"). Proof. vmr. Qed.
Lemma Fb_L1Be : ltac2:(tb__ "0|0|
S9S12S58S21S25S4dA1S4fS19S1U1A1S0S10A4A3S13A3"). Proof. vmr. Qed.
Lemma XI_L1Be : ltac2:(tb__ "0|2|
S9S1bS1cA1S4cS41S19S1U1M0A1M1S0S10A4S3dG0S10A2A2S1aS1cS50S19G1S0S10A4A2A3"). Proof. vmr. Qed.

Section ASM.
Variables CST XGL : list (Z * Z).
Hypothesis HCST : cst_ok CST.
Hypothesis HXGL : xgl_ok XGL.
Hypothesis HCSTF : ltac2:(tb__ "0|0|
SeS2cVCST;R1A2SdS2cS55R2A2ScS2fS46R2A2S31R2S47A2A2A2SbF_;F_;Fa;").
Hypothesis HCSTD : ltac2:(tb__ "0|0|
SeS2cVCST;R1A2SaS57R2A1A1F_;Fa;").
Hypothesis HCSTQ : ltac2:(tb__ "0|0|
SeS2cVCST;R1A2SaS56R2A1A1F_;Fa;").

Theorem free_lo_1Be : ltac2:(tb__ "0|4|
S35OF_;S48S6S22S14S2eQ40M0A1A1S2dG0S1eR2PcA2A2SeS2dG0S1eR3PdA2A2SeS27SfS36R4R3S18S17S1cS26A2M1S16S1cS26S8S2S1U1A1M2S0A3S4S45SfA1M3VCST;VXGL;R6R5A5A4S15G1A1A3A5S32S7R6A1S39SfR9S38R7A1A3S4bSfRaS38R8A1A3S2fS30R6R5A2S43A2S9S12S49RbA1S13A3S2bS10RcA2SeS2aS3bRfRdRbRaR2R1A6S9SeS29R2A1S44A3S42RfS28R11RfRdRcR4R3A6A2S53S3aVCST;VXGL;R12A3R13R12R11S28R12R10ReRdR5R4A6S11RcA7F_;F_;F_;Fjv;Ft;S51RfRdA2S34SfR10S37SfS5G3G2S0RfReA5S3S2G2S0A3RdRcA5R9A4F_;F_;F_;F_;F_;F_;F_;F_;TQ;Tn;Tp;Ftp;Frho;FKc;FA;Fok;").
Proof.
  intros ok A Kc rho tp p n Q HKc Hok Hokp HHI Hii QC HBIG HDS. pose proof (cls_hyp_blk false p n HHI) as HCL.
  apply (triple_pre_pure segsA ok _ _ (budget_ok_free A)); [intros w Hw; exact (entry_budget _ _ A Kc rho tp w Hw)|]. intros HBud.
  apply (triple_pre_pure segsA ok _ _ (entry_pureF false (Wcan 1) UStopLe q_L1Be A rho)); [intros w Hw; exact (entry_pure false _ _ _ A Kc rho tp w HHI Hii QC Hw)|].
  intros (HL & (tp0 & md0 & HA0) & t & jv & HTJ & HJM & IFF). fold p n in HL, HTJ, IFF.
  intros k Hg w Hw.
  destruct (f_instantiate false 1 UStopLe q_L1Be Wa_L1Be Da_L1Be Wb_L1Be Wc_L1Be Wd_L1Be Fb_L1Be XI_L1Be A Kc rho (rhoF_of A rho p n t jv) tp w p n (N8 n)
              ltac:(intros E; discriminate E) (stopJ_stable_le _) (rhoF_agree A rho p n t jv) IFF Hw) as [HR Hw1].
  exact (free_spine_L1Be (KEEPD CST XGL A) ok A Kc rho (rhoF_of A rho p n t jv) tp Q HKc Hok HR
           (hdf_L1Be_1 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp) (hdf_L1Be_2 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp) (hdf_L1Be_3 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC ok _ Hok Hokp)
           (HBIG t jv HTJ HJM HR)
           (f0_drain_L1Be CST XGL HCST HXGL HCSTQ HCSTF ok A Kc rho tp p n t jv (KEEPD CST XGL A) HKc Hok HDS HBud eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (f0_exit_L1Be CST XGL HCST HXGL HCSTF ok A Kc rho tp p n t jv (KEEPD CST XGL A) eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (rhoF_of A rho p n t jv) k Hg w Hw1).
Qed.

Theorem efree_lo_1Be : ltac2:(tb__ "0|4|
S48S6S22S14S2eQ40M0A1A1S2dG0S1eR2PcA2A2SeS2dG0S1eR3PdA2A2SeS27SfS36R4R3S18S17S1cS26A2M1S16S1cS26S8S2S1U1A1M2S0A3S4S45SfA1M3VCST;VXGL;R6R5A5A4S15G1A1A3A5S32S7R6A1S2fS30R4R3A2S43A2S9S12S49R9A1S13A3S2bS10RaA2SeS2aS3bRdRbR9R8R2R1A6S9SeS29R2A1S44A3S42RdS28RfRdRbRaR4R3A6A2S54S3aVCST;VXGL;R10A3R10RfS28R10ReRcRbR5R4A6S11RaA6F_;F_;F_;Fjv;Ft;S52RbA1S33SfS37SfS5G3G2S0RdRcA5S3S2G2S0A3RbRaA5R7A3F_;F_;F_;F_;F_;F_;TQ;Tn;Tp;Ftp;Frho;FKc;FA;").
Proof.
  intros A Kc rho tp p n Q HKc HHI Hii QC HBIG HDS. pose proof (cls_hyp_blk false p n HHI) as HCL.
  apply (etriple_pre_pure segsA _ _ (budget_ok_free A)); [intros w Hw; exact (entry_budget _ _ A Kc rho tp w Hw)|]. intros HBud.
  apply (etriple_pre_pure segsA _ _ (entry_pureF false (Wcan 1) UStopLe q_L1Be A rho)); [intros w Hw; exact (entry_pure false _ _ _ A Kc rho tp w HHI Hii QC Hw)|].
  intros (HL & (tp0 & md0 & HA0) & t & jv & HTJ & HJM & IFF). fold p n in HL, HTJ, IFF.
  intros w Hw.
  destruct (f_instantiate false 1 UStopLe q_L1Be Wa_L1Be Da_L1Be Wb_L1Be Wc_L1Be Wd_L1Be Fb_L1Be XI_L1Be A Kc rho (rhoF_of A rho p n t jv) tp w p n (N8 n)
              ltac:(intros E; discriminate E) (stopJ_stable_le _) (rhoF_agree A rho p n t jv) IFF Hw) as [HR Hw1].
  exact (efree_spine_L1Be (KEEPD CST XGL A) A Kc rho (rhoF_of A rho p n t jv) tp Q HKc HR
           (hdfe_L1Be_1 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _) (hdfe_L1Be_2 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _) (hdfe_L1Be_3 CST XGL HCST HXGL HCSTD A Kc rho tp0 md0 _ _ t jv HKc HA0 HL HCL eq_refl HTJ QC _)
           (HBIG t jv HTJ HJM HR)
           (ef0_drain_L1Be CST XGL HCST HXGL HCSTQ HCSTF A Kc rho tp p n t jv (KEEPD CST XGL A) HKc HDS HBud eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (ef0_exit_L1Be CST XGL HCST HXGL HCSTF A Kc rho tp p n t jv (KEEPD CST XGL A) eq_refl eq_refl HL HCL Hii QC HR HJM (fun a H => H))
           (rhoF_of A rho p n t jv) w Hw1).
Qed.
End ASM.

End F0A_aL1Be.

