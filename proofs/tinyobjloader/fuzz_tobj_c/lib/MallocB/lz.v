(* Machine-generated data computed from the task's compiled program image (decoder-built tables and encoded data blocks); may contain fragments of third-party object code - see NOTICE. No Anthropic licence header applies to this file. *)
(* [comment removed for export] *)
Local Set Warnings "-require-in-module".
(* [comment removed for export] *)
From Stdlib Require ZArith List Bool.
From stdpp Require bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Instr.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require SegQIF_mdefs.
From Stdlib Require Lia Permutation FunctionalExtensionality.
From LinuxProcessSemantics.Riscv Require Prelude Sem.
From OssFuzzTheorems.tinyobjloader.fuzz_tobj_c.images Require AsanUbsan.

(* [comment removed for export] *)
Module SegQIF_m3.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@Corelib.Init.Datatypes"; "bool"; "false"; "true"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.lz.SegQIF_m3"; "N"; "D_fa"; "D_fb"; "D_ga"; "D_gb"; "C1_fa"; "C1_fb"; "C1_ga"; "C1_gb"; "D_of"; "L1_fa"; "L1_fb"; "L1_ga"; "L1_gb"; "Lx_fa"; "Lx_fb"; "Lx_ga"; "Lx_gb"; "RF_fa"; "RF_fb"; "RF_ga"; "RF_gb"; "S0_fa"; "S0_fb"; "S0_ga"; "S0_gb"; "T1f_fa"; "T1f_fb"; "T1f_ga"; "T1f_gb"; "XC_fa"; "XC_fb"; "XC_ga"; "XC_gb"; "XX_fa"; "XX_fb"; "XX_ga"; "XX_gb"; "sF_fa"; "sF_fb"; "sF_ga"; "sF_gb"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQIF_mdefs"; "mcert"; "mkMD"; "mdata"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool.
From stdpp Require Import bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Instr.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw Require Import Safety SysSpec SysStep.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymFrame SymCFG SymCall SymSummary ExampleMemcpy Glue3.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import Virt StepA SoundA EntailA CompleteA CFGA SysCallA SummaryA GlueA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc Require Import Glue.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import AxXform.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require Geometry Model Inv Iface.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i0.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i5.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require CertMallocSP.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ia.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Geometry OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Model OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Inv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Iface OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i0.CertStackFree OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i1.CertStackMalloc OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i5.CertMallocS1 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.CertMallocSP OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ia.CertMallocSR.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require Import GlueM.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i6.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i6.SegD_glue.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require Import F0A_zones.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i5.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i2.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i6.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i7.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ib.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require m7.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require SegQtr.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ig.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ih.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require im.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ia.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i4.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require io.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require iq.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require iu.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require iv.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require SegQ3M_glue SegQS_lib RefillModel DrainModel.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require iy.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require j5.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require DepotCall.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i9.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require SegQIF_env SegQIF_mdefs.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i1.SegQ1_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i5.SegQ3_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i2.SegQlib OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i6.SegQpiece OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i7.SegQ3R_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ib.SegQ3D_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.m7.SegQ3G_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i5.SegQpieceM OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQtr OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ig.SegQ3RM OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ih.SegQ3DM OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.im.SegQ3D_skel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ia.SegQI_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i4.SegQC_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.io.SegQ3D_qi_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iq.SegQ3D_qi_arith OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iu.SegQ3D_qip OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iv.SegQS_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQ3M_glue OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQS_lib OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.RefillModel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.DrainModel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iy.DrainS OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.j5.DrainSG OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.DepotCall OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i9.SegQIP_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iq.SegQIF_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQIF_env OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQIF_mdefs.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ls.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.
Import ListNotations.
Open Scope Z_scope.
Ltac vmr := match goal with |- _ = ?r => vm_cast_no_check (@eq_refl _ r) end.

Definition N : Z := 3.

Definition S0_fa : axst := Eval vm_compute in (bumpM (S0M_of N false false) NXM).
Definition L1_fa : axst := Eval vm_compute in (leaf 0 (runA 300 [DH_ENT] S0_fa)).
Definition XC_fa : list axform := Eval vm_compute in (XC_of false false L1_fa).
Definition C1_fa : axst := Eval vm_compute in (optA L1_fa (apply_axforms L1_fa XC_fa)).
Definition sF_fa : wsub := Eval vm_compute in (sF_of N false C1_fa).
Definition RF_fa : list sobj := Eval vm_compute in (optR (entails_frA C1_fa (PreD N false) sF_fa)).
Definition T1f_fa : axst := Eval vm_compute in (T1f_of N false C1_fa sF_fa RF_fa).
Definition XX_fa : list axform := Eval vm_compute in (XX_of N false false T1f_fa).
Definition Lx_fa : axst := Eval vm_compute in (optA T1f_fa (apply_axforms T1f_fa XX_fa)).
Definition D_fa : mdata := ltac2:(tb__ "0|0|
S2eS19SdS21S8S29S15S1dS25S11A9").
Lemma cert_fa : ltac2:(tb__ "0|0|
S2dS3S1S1S4A4").
Proof.
  constructor; cbn [m_S0 m_L1 m_XC m_C1 m_sF m_RF m_T1f m_XX m_Lx].
  - vm_cast_no_check (eq_refl true).
  - split; [reflexivity | vm_cast_no_check (eq_refl true)].
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - repeat split; OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - intros pce. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
Qed.

Definition S0_fb : axst := Eval vm_compute in (bumpM (S0M_of N false true) NXM).
Definition L1_fb : axst := Eval vm_compute in (leaf 0 (runA 300 [DH_ENT] S0_fb)).
Definition XC_fb : list axform := Eval vm_compute in (XC_of false true L1_fb).
Definition C1_fb : axst := Eval vm_compute in (optA L1_fb (apply_axforms L1_fb XC_fb)).
Definition sF_fb : wsub := Eval vm_compute in (sF_of N false C1_fb).
Definition RF_fb : list sobj := Eval vm_compute in (optR (entails_frA C1_fb (PreD N false) sF_fb)).
Definition T1f_fb : axst := Eval vm_compute in (T1f_of N false C1_fb sF_fb RF_fb).
Definition XX_fb : list axform := Eval vm_compute in (XX_of N false true T1f_fb).
Definition Lx_fb : axst := Eval vm_compute in (optA T1f_fb (apply_axforms T1f_fb XX_fb)).
Definition D_fb : mdata := ltac2:(tb__ "0|0|
S2eS1aSeS22S9S2aS16S1eS26S12A9").
Lemma cert_fb : ltac2:(tb__ "0|0|
S2dS3S1S2S5A4").
Proof.
  constructor; cbn [m_S0 m_L1 m_XC m_C1 m_sF m_RF m_T1f m_XX m_Lx].
  - vm_cast_no_check (eq_refl true).
  - split; [reflexivity | vm_cast_no_check (eq_refl true)].
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - repeat split; OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - intros pce. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
Qed.

Definition S0_ga : axst := Eval vm_compute in (bumpM (S0M_of N true false) NXM).
Definition L1_ga : axst := Eval vm_compute in (leaf 0 (runA 300 [DH_ENT] S0_ga)).
Definition XC_ga : list axform := Eval vm_compute in (XC_of true false L1_ga).
Definition C1_ga : axst := Eval vm_compute in (optA L1_ga (apply_axforms L1_ga XC_ga)).
Definition sF_ga : wsub := Eval vm_compute in (sF_of N true C1_ga).
Definition RF_ga : list sobj := Eval vm_compute in (optR (entails_frA C1_ga (PreD N true) sF_ga)).
Definition T1f_ga : axst := Eval vm_compute in (T1f_of N true C1_ga sF_ga RF_ga).
Definition XX_ga : list axform := Eval vm_compute in (XX_of N true false T1f_ga).
Definition Lx_ga : axst := Eval vm_compute in (optA T1f_ga (apply_axforms T1f_ga XX_ga)).
Definition D_ga : mdata := ltac2:(tb__ "0|0|
S2eS1bSfS23SaS2bS17S1fS27S13A9").
Lemma cert_ga : ltac2:(tb__ "0|0|
S2dS3S2S1S6A4").
Proof.
  constructor; cbn [m_S0 m_L1 m_XC m_C1 m_sF m_RF m_T1f m_XX m_Lx].
  - vm_cast_no_check (eq_refl true).
  - split; [reflexivity | vm_cast_no_check (eq_refl true)].
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - repeat split; OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - intros pce. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
Qed.

Definition S0_gb : axst := Eval vm_compute in (bumpM (S0M_of N true true) NXM).
Definition L1_gb : axst := Eval vm_compute in (leaf 0 (runA 300 [DH_ENT] S0_gb)).
Definition XC_gb : list axform := Eval vm_compute in (XC_of true true L1_gb).
Definition C1_gb : axst := Eval vm_compute in (optA L1_gb (apply_axforms L1_gb XC_gb)).
Definition sF_gb : wsub := Eval vm_compute in (sF_of N true C1_gb).
Definition RF_gb : list sobj := Eval vm_compute in (optR (entails_frA C1_gb (PreD N true) sF_gb)).
Definition T1f_gb : axst := Eval vm_compute in (T1f_of N true C1_gb sF_gb RF_gb).
Definition XX_gb : list axform := Eval vm_compute in (XX_of N true true T1f_gb).
Definition Lx_gb : axst := Eval vm_compute in (optA T1f_gb (apply_axforms T1f_gb XX_gb)).
Definition D_gb : mdata := ltac2:(tb__ "0|0|
S2eS1cS10S24SbS2cS18S20S28S14A9").
Lemma cert_gb : ltac2:(tb__ "0|0|
S2dS3S2S2S7A4").
Proof.
  constructor; cbn [m_S0 m_L1 m_XC m_C1 m_sF m_RF m_T1f m_XX m_Lx].
  - vm_cast_no_check (eq_refl true).
  - split; [reflexivity | vm_cast_no_check (eq_refl true)].
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - repeat split; OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - intros pce. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
Qed.

Definition D_of (g vb : bool) : mdata := ltac2:(tb__ "0|1|
S0S2fLg;Vg;S0S2fLvb;M0Vvb;S7S6X0x2G0Vvb;S5S4X0x2X0x2").
Lemma cert_of : ltac2:(tb__ "0|0|
S0S0S2dS3R2R1ScR2R1A2A4Fvb;Fg;").
Proof. intros [|] [|]; [exact cert_gb | exact cert_ga | exact cert_fb | exact cert_fa]. Qed.
End SegQIF_m3.

(* [comment removed for export] *)
Module SegQIF_m4.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@Corelib.Init.Datatypes"; "bool"; "false"; "true"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.lz.SegQIF_m4"; "N"; "D_fa"; "D_fb"; "D_ga"; "D_gb"; "C1_fa"; "C1_fb"; "C1_ga"; "C1_gb"; "D_of"; "L1_fa"; "L1_fb"; "L1_ga"; "L1_gb"; "Lx_fa"; "Lx_fb"; "Lx_ga"; "Lx_gb"; "RF_fa"; "RF_fb"; "RF_ga"; "RF_gb"; "S0_fa"; "S0_fb"; "S0_ga"; "S0_gb"; "T1f_fa"; "T1f_fb"; "T1f_ga"; "T1f_gb"; "XC_fa"; "XC_fb"; "XC_ga"; "XC_gb"; "XX_fa"; "XX_fb"; "XX_ga"; "XX_gb"; "sF_fa"; "sF_fb"; "sF_ga"; "sF_gb"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQIF_mdefs"; "mcert"; "mkMD"; "mdata"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool.
From stdpp Require Import bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Instr.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw Require Import Safety SysSpec SysStep.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymFrame SymCFG SymCall SymSummary ExampleMemcpy Glue3.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import Virt StepA SoundA EntailA CompleteA CFGA SysCallA SummaryA GlueA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc Require Import Glue.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import AxXform.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require Geometry Model Inv Iface.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i0.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i5.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require CertMallocSP.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ia.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Geometry OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Model OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Inv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Iface OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i0.CertStackFree OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i1.CertStackMalloc OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i5.CertMallocS1 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.CertMallocSP OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ia.CertMallocSR.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require Import GlueM.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i6.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i6.SegD_glue.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require Import F0A_zones.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i5.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i2.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i6.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i7.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ib.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require m7.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require SegQtr.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ig.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ih.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require im.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ia.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i4.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require io.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require iq.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require iu.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require iv.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require SegQ3M_glue SegQS_lib RefillModel DrainModel.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require iy.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require j5.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require DepotCall.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i9.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require SegQIF_env SegQIF_mdefs.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i1.SegQ1_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i5.SegQ3_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i2.SegQlib OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i6.SegQpiece OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i7.SegQ3R_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ib.SegQ3D_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.m7.SegQ3G_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i5.SegQpieceM OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQtr OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ig.SegQ3RM OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ih.SegQ3DM OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.im.SegQ3D_skel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ia.SegQI_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i4.SegQC_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.io.SegQ3D_qi_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iq.SegQ3D_qi_arith OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iu.SegQ3D_qip OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iv.SegQS_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQ3M_glue OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQS_lib OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.RefillModel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.DrainModel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iy.DrainS OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.j5.DrainSG OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.DepotCall OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i9.SegQIP_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iq.SegQIF_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQIF_env OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQIF_mdefs.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ls.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.
Import ListNotations.
Open Scope Z_scope.
Ltac vmr := match goal with |- _ = ?r => vm_cast_no_check (@eq_refl _ r) end.

Definition N : Z := 4.

Definition S0_fa : axst := Eval vm_compute in (bumpM (S0M_of N false false) NXM).
Definition L1_fa : axst := Eval vm_compute in (leaf 0 (runA 300 [DH_ENT] S0_fa)).
Definition XC_fa : list axform := Eval vm_compute in (XC_of false false L1_fa).
Definition C1_fa : axst := Eval vm_compute in (optA L1_fa (apply_axforms L1_fa XC_fa)).
Definition sF_fa : wsub := Eval vm_compute in (sF_of N false C1_fa).
Definition RF_fa : list sobj := Eval vm_compute in (optR (entails_frA C1_fa (PreD N false) sF_fa)).
Definition T1f_fa : axst := Eval vm_compute in (T1f_of N false C1_fa sF_fa RF_fa).
Definition XX_fa : list axform := Eval vm_compute in (XX_of N false false T1f_fa).
Definition Lx_fa : axst := Eval vm_compute in (optA T1f_fa (apply_axforms T1f_fa XX_fa)).
Definition D_fa : mdata := ltac2:(tb__ "0|0|
S2eS19SdS21S8S29S15S1dS25S11A9").
Lemma cert_fa : ltac2:(tb__ "0|0|
S2dS3S1S1S4A4").
Proof.
  constructor; cbn [m_S0 m_L1 m_XC m_C1 m_sF m_RF m_T1f m_XX m_Lx].
  - vm_cast_no_check (eq_refl true).
  - split; [reflexivity | vm_cast_no_check (eq_refl true)].
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - repeat split; OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - intros pce. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
Qed.

Definition S0_fb : axst := Eval vm_compute in (bumpM (S0M_of N false true) NXM).
Definition L1_fb : axst := Eval vm_compute in (leaf 0 (runA 300 [DH_ENT] S0_fb)).
Definition XC_fb : list axform := Eval vm_compute in (XC_of false true L1_fb).
Definition C1_fb : axst := Eval vm_compute in (optA L1_fb (apply_axforms L1_fb XC_fb)).
Definition sF_fb : wsub := Eval vm_compute in (sF_of N false C1_fb).
Definition RF_fb : list sobj := Eval vm_compute in (optR (entails_frA C1_fb (PreD N false) sF_fb)).
Definition T1f_fb : axst := Eval vm_compute in (T1f_of N false C1_fb sF_fb RF_fb).
Definition XX_fb : list axform := Eval vm_compute in (XX_of N false true T1f_fb).
Definition Lx_fb : axst := Eval vm_compute in (optA T1f_fb (apply_axforms T1f_fb XX_fb)).
Definition D_fb : mdata := ltac2:(tb__ "0|0|
S2eS1aSeS22S9S2aS16S1eS26S12A9").
Lemma cert_fb : ltac2:(tb__ "0|0|
S2dS3S1S2S5A4").
Proof.
  constructor; cbn [m_S0 m_L1 m_XC m_C1 m_sF m_RF m_T1f m_XX m_Lx].
  - vm_cast_no_check (eq_refl true).
  - split; [reflexivity | vm_cast_no_check (eq_refl true)].
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - repeat split; OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - intros pce. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
Qed.

Definition S0_ga : axst := Eval vm_compute in (bumpM (S0M_of N true false) NXM).
Definition L1_ga : axst := Eval vm_compute in (leaf 0 (runA 300 [DH_ENT] S0_ga)).
Definition XC_ga : list axform := Eval vm_compute in (XC_of true false L1_ga).
Definition C1_ga : axst := Eval vm_compute in (optA L1_ga (apply_axforms L1_ga XC_ga)).
Definition sF_ga : wsub := Eval vm_compute in (sF_of N true C1_ga).
Definition RF_ga : list sobj := Eval vm_compute in (optR (entails_frA C1_ga (PreD N true) sF_ga)).
Definition T1f_ga : axst := Eval vm_compute in (T1f_of N true C1_ga sF_ga RF_ga).
Definition XX_ga : list axform := Eval vm_compute in (XX_of N true false T1f_ga).
Definition Lx_ga : axst := Eval vm_compute in (optA T1f_ga (apply_axforms T1f_ga XX_ga)).
Definition D_ga : mdata := ltac2:(tb__ "0|0|
S2eS1bSfS23SaS2bS17S1fS27S13A9").
Lemma cert_ga : ltac2:(tb__ "0|0|
S2dS3S2S1S6A4").
Proof.
  constructor; cbn [m_S0 m_L1 m_XC m_C1 m_sF m_RF m_T1f m_XX m_Lx].
  - vm_cast_no_check (eq_refl true).
  - split; [reflexivity | vm_cast_no_check (eq_refl true)].
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - repeat split; OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - intros pce. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
Qed.

Definition S0_gb : axst := Eval vm_compute in (bumpM (S0M_of N true true) NXM).
Definition L1_gb : axst := Eval vm_compute in (leaf 0 (runA 300 [DH_ENT] S0_gb)).
Definition XC_gb : list axform := Eval vm_compute in (XC_of true true L1_gb).
Definition C1_gb : axst := Eval vm_compute in (optA L1_gb (apply_axforms L1_gb XC_gb)).
Definition sF_gb : wsub := Eval vm_compute in (sF_of N true C1_gb).
Definition RF_gb : list sobj := Eval vm_compute in (optR (entails_frA C1_gb (PreD N true) sF_gb)).
Definition T1f_gb : axst := Eval vm_compute in (T1f_of N true C1_gb sF_gb RF_gb).
Definition XX_gb : list axform := Eval vm_compute in (XX_of N true true T1f_gb).
Definition Lx_gb : axst := Eval vm_compute in (optA T1f_gb (apply_axforms T1f_gb XX_gb)).
Definition D_gb : mdata := ltac2:(tb__ "0|0|
S2eS1cS10S24SbS2cS18S20S28S14A9").
Lemma cert_gb : ltac2:(tb__ "0|0|
S2dS3S2S2S7A4").
Proof.
  constructor; cbn [m_S0 m_L1 m_XC m_C1 m_sF m_RF m_T1f m_XX m_Lx].
  - vm_cast_no_check (eq_refl true).
  - split; [reflexivity | vm_cast_no_check (eq_refl true)].
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - repeat split; OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - intros pce. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
Qed.

Definition D_of (g vb : bool) : mdata := ltac2:(tb__ "0|1|
S0S2fLg;Vg;S0S2fLvb;M0Vvb;S7S6X0x2G0Vvb;S5S4X0x2X0x2").
Lemma cert_of : ltac2:(tb__ "0|0|
S0S0S2dS3R2R1ScR2R1A2A4Fvb;Fg;").
Proof. intros [|] [|]; [exact cert_gb | exact cert_ga | exact cert_fb | exact cert_fa]. Qed.
End SegQIF_m4.

(* [comment removed for export] *)
Module SegQIF_m5.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@Corelib.Init.Datatypes"; "bool"; "false"; "true"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.lz.SegQIF_m5"; "N"; "D_fa"; "D_fb"; "D_ga"; "D_gb"; "C1_fa"; "C1_fb"; "C1_ga"; "C1_gb"; "D_of"; "L1_fa"; "L1_fb"; "L1_ga"; "L1_gb"; "Lx_fa"; "Lx_fb"; "Lx_ga"; "Lx_gb"; "RF_fa"; "RF_fb"; "RF_ga"; "RF_gb"; "S0_fa"; "S0_fb"; "S0_ga"; "S0_gb"; "T1f_fa"; "T1f_fb"; "T1f_ga"; "T1f_gb"; "XC_fa"; "XC_fb"; "XC_ga"; "XC_gb"; "XX_fa"; "XX_fb"; "XX_ga"; "XX_gb"; "sF_fa"; "sF_fb"; "sF_ga"; "sF_gb"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQIF_mdefs"; "mcert"; "mkMD"; "mdata"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool.
From stdpp Require Import bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Instr.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw Require Import Safety SysSpec SysStep.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymFrame SymCFG SymCall SymSummary ExampleMemcpy Glue3.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import Virt StepA SoundA EntailA CompleteA CFGA SysCallA SummaryA GlueA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc Require Import Glue.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import AxXform.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require Geometry Model Inv Iface.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i0.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i5.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require CertMallocSP.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ia.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Geometry OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Model OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Inv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Iface OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i0.CertStackFree OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i1.CertStackMalloc OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i5.CertMallocS1 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.CertMallocSP OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ia.CertMallocSR.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require Import GlueM.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i6.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i6.SegD_glue.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require Import F0A_zones.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i5.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i2.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i6.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i7.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ib.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require m7.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require SegQtr.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ig.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ih.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require im.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ia.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i4.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require io.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require iq.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require iu.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require iv.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require SegQ3M_glue SegQS_lib RefillModel DrainModel.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require iy.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require j5.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require DepotCall.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i9.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require SegQIF_env SegQIF_mdefs.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i1.SegQ1_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i5.SegQ3_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i2.SegQlib OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i6.SegQpiece OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i7.SegQ3R_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ib.SegQ3D_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.m7.SegQ3G_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i5.SegQpieceM OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQtr OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ig.SegQ3RM OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ih.SegQ3DM OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.im.SegQ3D_skel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ia.SegQI_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i4.SegQC_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.io.SegQ3D_qi_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iq.SegQ3D_qi_arith OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iu.SegQ3D_qip OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iv.SegQS_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQ3M_glue OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQS_lib OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.RefillModel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.DrainModel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iy.DrainS OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.j5.DrainSG OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.DepotCall OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i9.SegQIP_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iq.SegQIF_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQIF_env OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQIF_mdefs.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ls.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.
Import ListNotations.
Open Scope Z_scope.
Ltac vmr := match goal with |- _ = ?r => vm_cast_no_check (@eq_refl _ r) end.

Definition N : Z := 5.

Definition S0_fa : axst := Eval vm_compute in (bumpM (S0M_of N false false) NXM).
Definition L1_fa : axst := Eval vm_compute in (leaf 0 (runA 300 [DH_ENT] S0_fa)).
Definition XC_fa : list axform := Eval vm_compute in (XC_of false false L1_fa).
Definition C1_fa : axst := Eval vm_compute in (optA L1_fa (apply_axforms L1_fa XC_fa)).
Definition sF_fa : wsub := Eval vm_compute in (sF_of N false C1_fa).
Definition RF_fa : list sobj := Eval vm_compute in (optR (entails_frA C1_fa (PreD N false) sF_fa)).
Definition T1f_fa : axst := Eval vm_compute in (T1f_of N false C1_fa sF_fa RF_fa).
Definition XX_fa : list axform := Eval vm_compute in (XX_of N false false T1f_fa).
Definition Lx_fa : axst := Eval vm_compute in (optA T1f_fa (apply_axforms T1f_fa XX_fa)).
Definition D_fa : mdata := ltac2:(tb__ "0|0|
S2eS19SdS21S8S29S15S1dS25S11A9").
Lemma cert_fa : ltac2:(tb__ "0|0|
S2dS3S1S1S4A4").
Proof.
  constructor; cbn [m_S0 m_L1 m_XC m_C1 m_sF m_RF m_T1f m_XX m_Lx].
  - vm_cast_no_check (eq_refl true).
  - split; [reflexivity | vm_cast_no_check (eq_refl true)].
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - repeat split; OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - intros pce. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
Qed.

Definition S0_fb : axst := Eval vm_compute in (bumpM (S0M_of N false true) NXM).
Definition L1_fb : axst := Eval vm_compute in (leaf 0 (runA 300 [DH_ENT] S0_fb)).
Definition XC_fb : list axform := Eval vm_compute in (XC_of false true L1_fb).
Definition C1_fb : axst := Eval vm_compute in (optA L1_fb (apply_axforms L1_fb XC_fb)).
Definition sF_fb : wsub := Eval vm_compute in (sF_of N false C1_fb).
Definition RF_fb : list sobj := Eval vm_compute in (optR (entails_frA C1_fb (PreD N false) sF_fb)).
Definition T1f_fb : axst := Eval vm_compute in (T1f_of N false C1_fb sF_fb RF_fb).
Definition XX_fb : list axform := Eval vm_compute in (XX_of N false true T1f_fb).
Definition Lx_fb : axst := Eval vm_compute in (optA T1f_fb (apply_axforms T1f_fb XX_fb)).
Definition D_fb : mdata := ltac2:(tb__ "0|0|
S2eS1aSeS22S9S2aS16S1eS26S12A9").
Lemma cert_fb : ltac2:(tb__ "0|0|
S2dS3S1S2S5A4").
Proof.
  constructor; cbn [m_S0 m_L1 m_XC m_C1 m_sF m_RF m_T1f m_XX m_Lx].
  - vm_cast_no_check (eq_refl true).
  - split; [reflexivity | vm_cast_no_check (eq_refl true)].
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - repeat split; OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - intros pce. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
Qed.

Definition S0_ga : axst := Eval vm_compute in (bumpM (S0M_of N true false) NXM).
Definition L1_ga : axst := Eval vm_compute in (leaf 0 (runA 300 [DH_ENT] S0_ga)).
Definition XC_ga : list axform := Eval vm_compute in (XC_of true false L1_ga).
Definition C1_ga : axst := Eval vm_compute in (optA L1_ga (apply_axforms L1_ga XC_ga)).
Definition sF_ga : wsub := Eval vm_compute in (sF_of N true C1_ga).
Definition RF_ga : list sobj := Eval vm_compute in (optR (entails_frA C1_ga (PreD N true) sF_ga)).
Definition T1f_ga : axst := Eval vm_compute in (T1f_of N true C1_ga sF_ga RF_ga).
Definition XX_ga : list axform := Eval vm_compute in (XX_of N true false T1f_ga).
Definition Lx_ga : axst := Eval vm_compute in (optA T1f_ga (apply_axforms T1f_ga XX_ga)).
Definition D_ga : mdata := ltac2:(tb__ "0|0|
S2eS1bSfS23SaS2bS17S1fS27S13A9").
Lemma cert_ga : ltac2:(tb__ "0|0|
S2dS3S2S1S6A4").
Proof.
  constructor; cbn [m_S0 m_L1 m_XC m_C1 m_sF m_RF m_T1f m_XX m_Lx].
  - vm_cast_no_check (eq_refl true).
  - split; [reflexivity | vm_cast_no_check (eq_refl true)].
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - repeat split; OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - intros pce. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
Qed.

Definition S0_gb : axst := Eval vm_compute in (bumpM (S0M_of N true true) NXM).
Definition L1_gb : axst := Eval vm_compute in (leaf 0 (runA 300 [DH_ENT] S0_gb)).
Definition XC_gb : list axform := Eval vm_compute in (XC_of true true L1_gb).
Definition C1_gb : axst := Eval vm_compute in (optA L1_gb (apply_axforms L1_gb XC_gb)).
Definition sF_gb : wsub := Eval vm_compute in (sF_of N true C1_gb).
Definition RF_gb : list sobj := Eval vm_compute in (optR (entails_frA C1_gb (PreD N true) sF_gb)).
Definition T1f_gb : axst := Eval vm_compute in (T1f_of N true C1_gb sF_gb RF_gb).
Definition XX_gb : list axform := Eval vm_compute in (XX_of N true true T1f_gb).
Definition Lx_gb : axst := Eval vm_compute in (optA T1f_gb (apply_axforms T1f_gb XX_gb)).
Definition D_gb : mdata := ltac2:(tb__ "0|0|
S2eS1cS10S24SbS2cS18S20S28S14A9").
Lemma cert_gb : ltac2:(tb__ "0|0|
S2dS3S2S2S7A4").
Proof.
  constructor; cbn [m_S0 m_L1 m_XC m_C1 m_sF m_RF m_T1f m_XX m_Lx].
  - vm_cast_no_check (eq_refl true).
  - split; [reflexivity | vm_cast_no_check (eq_refl true)].
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - repeat split; OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vmr.
  - vm_cast_no_check (eq_refl true).
  - OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - intros pce. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc.
  - vm_cast_no_check (eq_refl true).
  - vm_cast_no_check (eq_refl true).
Qed.

Definition D_of (g vb : bool) : mdata := ltac2:(tb__ "0|1|
S0S2fLg;Vg;S0S2fLvb;M0Vvb;S7S6X0x2G0Vvb;S5S4X0x2X0x2").
Lemma cert_of : ltac2:(tb__ "0|0|
S0S0S2dS3R2R1ScR2R1A2A4Fvb;Fg;").
Proof. intros [|] [|]; [exact cert_gb | exact cert_ga | exact cert_fb | exact cert_fa]. Qed.
End SegQIF_m5.

(* [comment removed for export] *)
Module SegQIF_zones.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@Stdlib.ZArith.BinInt.Z"; "le"; "add"; "pow"; "sub"; "@Corelib.Numbers.BinNums"; "Z"; "@Corelib.Init.Logic"; "or"; "eq"; "not"; "@Corelib.Init.Datatypes"; "nat"; "bool"; "true"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iu.SegQ3D_qip"; "zloQ"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQIF_mdefs"; "ZUM"; "zbM"; "zhiM"; "@Stdlib.Lists.List"; "In"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool Lia Permutation FunctionalExtensionality.
From stdpp Require Import bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Sem.
From OssFuzzTheorems.tinyobjloader.fuzz_tobj_c.images Require Import AsanUbsan.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw Require Import Safety SysSpec SysStep.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymSoundA SymSoundL SymSoundV SymSoundM SymEntail SymFrame SymCFG SymCall SymSummary ExampleMemcpy Glue3 SymObj.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import Virt StepA SoundA EntailA CompleteA CFGA SummaryA GlueA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc Require Import MallocInv Glue ReprGlue.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require Import CursorGlue.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import AxXform.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require Geometry Budget Model RtCells Inv Iface.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i0.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i5.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Geometry OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Budget OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Model OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.RtCells OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Inv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.Iface OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i0.CertStackFree OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i1.CertStackMalloc OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i5.CertMallocS1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require Import GlueM.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i4.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i6.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ic.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require SegQ_defs SegQ_wf2.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i5.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i2.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i7.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ie.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ib.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require m7.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require SegQtr.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ig.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ij.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require SegQ3R_loop.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ih.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require il.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require im.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require CertMallocSP.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ia.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require id.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require io.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require iq.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require m9.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require iu.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i4.GlueMA OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i6.SegD_glue OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ic.InvFoot OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQ_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQ_wf2 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i6.SegQsep OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i1.SegQ1_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i5.SegQ3_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i2.SegQlib OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i6.SegQpiece OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i7.SegQ3 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ie.SegQ3_skel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i7.SegQ3R_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ib.SegQ3D_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.m7.SegQ3G_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i5.SegQpieceM OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQtr OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ig.SegQ3RM OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ij.SegQ3R_skel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQ3R_loop OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ih.SegQ3DM OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.il.SegQ3D_inv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.im.SegQ3D_skel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.CertMallocSP OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ia.SegQI_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.id.SegQI OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ig.SegQI_side OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i4.SegQC_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i6.SegQC OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.io.SegQ3D_loop OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.io.SegQ3D_exit OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.io.SegQ3D_qi_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iq.SegQ3D_qi_arith OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iq.SegQ3D_qc_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.m9.SegQ3D_qc_arith OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iu.SegQ3D_qc.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require Import F0A_zones.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i6.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i3.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require iu.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require je.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require SegQ3M_glue SegQ_wf4.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require iv.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require SegQS_glue SegQS_scan SegQS_lib.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require jk.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require jj.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require jt.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require j4.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require jc.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require jd.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require jb.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require CertMallocSP.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require ia.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require RefillModel DrainModel.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require iy.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require j5.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require jo.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require i9.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require iq.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require SegQIF_env SegQIF_mdefs.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i6.GlueMU OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i3.SegQ_wf3 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iu.SegQ3D_qip OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.je.SegQ3D_qiq OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQ3M_glue OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQ_wf4 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iv.SegQS_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQS_glue OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQS_scan OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQS_lib OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.jk.SegQS_loop OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.jj.SegQS_k OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.jt.SegQS_tail OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.j4.InvQ OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.jc.InvQ3 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.jd.InvQ4 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.jd.InvQ6 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.jb.InvQ9 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.CertMallocSP OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.ia.CertMallocSR OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.RefillModel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.DrainModel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iy.DrainS OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.j5.DrainSG OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.jo.SegQF_lib OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.i9.SegQIP_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.iq.SegQIF_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQIF_env OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB.SegQIF_mdefs.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib Require LiaFast.
Import ListNotations.
Close Scope bv_scope.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Lemma zsepM : ltac2:(tb__ "0|9|
S4S4S4S4S4S4S4S4S4S0Z1000M0R9A2S0S1RaG0A2R5A2S0G0RaA2S0S1RbG0A2R7A2S0Z10007fff8000M1RbA2S0S1S1RcS2Z2Z25A2M2A2G0A2R9A2S0RdRbA2S0S1RcZ10M3A2RdA2S0ReR9A2S0R10RaA2S0S1RbZ20000000A2S1R11G2A2A2S0Z7fff8000RdA2S0S1ReZ1f81A2G1A2S0S1R16Z120A2R10A2S0S1R11Z50A2S1R17Zad0A2A2S5S0S1R18G0A2Z10000A2S0Z643000R18A2A2M4G4S5S0S1R1aG0A2Z7fff7000A2S0G1R1aA2A2M5G5S5S0S1R1cG0A2R1bA2S0S1R1bG0A2R1cA2A2S5S0S1R1dG0A2M6R1bA2S0S1S1R1bG2A2G0A2R1dA2A2S5S0G6R1cA2S0S1S1R1cG2A2G0A2R1dA2A2S9S6S9R1SaA3S0S1R1dG3A2S3R1eG3A2A2F_;S8S8SfS8R2ScR4A1A3SfS8R2ScR5A1A3S7S6S8R4R3A3A1S5S0S1SdR26R25R24R23R22R21R20R1fR1eR5AaM7SeR5A1A2S1SdR26R25R24R23R22R21R20R1fR1eR4AaM8SbR4A1A2A2S0S1G8SeR4A1A2S1G7SbR5A1A2A2A2F_;F_;F_;Fz';Fz;F_;Fvb;F_;F_;F_;F_;F_;F_;F_;F_;F_;F_;F_;F_;F_;F_;F_;F_;F_;F_;F_;F_;F_;F_;FFA;FSHU;FE;FTOP;Fab;Fu;FSB;FCTX;FT;").
Proof.
  intros T CTX SB u ab TOP E SHU FA HT0 HT1 HC0 HC1 HSB HST HAB HU HUF HSF HFA HSH0 HSH1 HE0 HE1 HTI HCI HTB HCB HTC HTS HCS vb HM z z' Hz Hz' NE.
  assert (HM9 : (z = 9%nat \/ z' = 9%nat) -> ab + 16 <= u - 16).
  { intros [EQ9|EQ9]; subst; apply HM; destruct vb; try reflexivity; exfalso; cbn in Hz, Hz'; intuition discriminate. }
  assert (HZ : forall y, In y (ZUM vb) -> In y [0; 1; 2; 3; 4; 5; 6; 7; 12; 9]%nat) by (intros y Hy; destruct vb; cbn in Hy |- *; tauto).
  apply HZ in Hz, Hz'. clear HZ HM. cbn [In] in Hz, Hz'.
  repeat (destruct Hz as [<-|Hz]; [|]); try (exfalso; exact Hz);
    (repeat (destruct Hz' as [<-|Hz']; [|]); try (exfalso; exact Hz'));
    try (exfalso; apply NE; reflexivity); cbn [zbM zbQ zloQ zhiM zhiQ];
    (first [pose proof (HM9 (or_introl eq_refl)) as HM9' | pose proof (HM9 (or_intror eq_refl)) as HM9' | pose proof I as HM9']); clear HM9 NE;
    first [ solve [clear - HT0 HT1 HC0 HC1 HSB HST HAB HU HUF HSF HFA HSH0 HSH1 HE0 HE1 HM9'; lia]
          | solve [clear - HT0 HT1 HC0 HC1 HSB HST HAB HU HUF HSF HFA HSH0 HSH1 HE0 HE1 HM9' HTI; lia]
          | solve [clear - HT0 HT1 HC0 HC1 HSB HST HAB HU HUF HSF HFA HSH0 HSH1 HE0 HE1 HM9' HCI; lia]
          | solve [clear - HT0 HT1 HC0 HC1 HSB HST HAB HU HUF HSF HFA HSH0 HSH1 HE0 HE1 HM9' HTB; lia]
          | solve [clear - HT0 HT1 HC0 HC1 HSB HST HAB HU HUF HSF HFA HSH0 HSH1 HE0 HE1 HM9' HCB; lia]
          | solve [clear - HT0 HT1 HC0 HC1 HSB HST HAB HU HUF HSF HFA HSH0 HSH1 HE0 HE1 HM9' HTC; lia]
          | solve [clear - HT0 HT1 HC0 HC1 HSB HST HAB HU HUF HSF HFA HSH0 HSH1 HE0 HE1 HM9' HTS; lia]
          | solve [clear - HT0 HT1 HC0 HC1 HSB HST HAB HU HUF HSF HFA HSH0 HSH1 HE0 HE1 HM9' HCS; lia] ].
Qed.
End SegQIF_zones.

