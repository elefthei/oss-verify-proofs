(* Machine-generated data computed from the task's compiled program image (decoder-built tables and encoded data blocks); may contain fragments of third-party object code - see NOTICE. No Anthropic licence header applies to this file. *)

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@Corelib.Init.Logic"; "eq"; "and"; "@Corelib.Init.Datatypes"; "bool"; "true"; "pair"; "prod"; "nat"; "cons"; "nil"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJA"; "ndesc"; "nd_am"; "nd_bd"; "nd_fr"; "nd_tv"; "am_eqb"; "am_subst"; "fr_sub_eqb"; "nd_below"; "@Corelib.Numbers.BinNums"; "Z"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "sv"; "ss_facts"; "ss_next"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "axst"; "ax_S"; "entailsA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_load_obj_defs"; "NP"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_load_obj_certE"; "ndE0d"; "s_l7"; "cutsE2g"; "cutsE3"; "exitsE2g"; "exitsE3"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_load_obj_bud"; "z0"; "ndX0"; "ndXE"; "RL"; "VLA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_load_obj_loopEf"; "ndE0f"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJAF"; "wsub_id_on"; "bud_le2"; "ejcertAF"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_load_obj_epiD1"; "s_dispA"; "s_dispX"; "La_errx"; "cps_epi"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_load_obj_epiD_eqs"; "nd_d0"; "V_ld"; "PhisD"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_load_obj_loop"; "X_latch7"; "cps_loop"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_load_obj_loopE"; "s_E"; "K_afterE2"; "X_errxE2"; "X_latchE2"; "K_loopE2"; "X_bodyE2"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJV"; "tv_sub_eqb"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.BudA"; "bd_subst"; "@Stdlib.PArith.BinPos.Pos"; "leb"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Code"; "segs"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_load_obj_lglue"; "V_B"; "V_L"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymCFG"; "infer_sub"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymFrame"; "wsub_id_below"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith NArith List Bool PArith Lia.
From stdpp Require Import bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw Require Import Safety.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import
  SymState SymStep SymSoundA SymSoundB SymSoundV SymSoundI SymSoundL SymSoundM SymSoundR
  SymComplete SymFrame SymEntail SymCFG SymSummary SymObj ExampleMemcpy Glue3.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import Virt StepA SoundA EntailA CFGA GlueA SummaryA SummaryA2 MemoFast.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require Import SumConv CursorGlue TobjJV TobjArena ObjXform ObjUnbase.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require Import Geometry Budget Model Iface.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require Import BudA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import CfgGenTA SummaryA3.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require TobjJA TobjJAM.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require p2.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJA OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJAM OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.p2.TobjJAC.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import AxXform.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require p1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require TobjJAR TobjJAS TobjJAF.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require p5.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require p3.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.p1.TobjJAX OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJAR OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJAS OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJAF OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.p5.TobjJAK OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.p5.TobjJAG OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.p3.CertGlueA OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.p3.ObjZeroA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import ObjEmptyA PinA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Code Lib_scan_double Lib_vec_reserve.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require np.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Lib_builderH_defs.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Code OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_scan_double OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_vec_reserve OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.np.Lib_builder_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_builderH_defs.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A Require Import Lib_rom_defs.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Import Lib_load_obj_defs Lib_load_obj_pro Lib_load_obj_pro2 Lib_load_obj_loop Lib_load_obj_disp Lib_load_obj_lglue Lib_load_obj_hv0 Lib_load_obj_bud Lib_load_obj_exits Lib_load_obj_loopE Lib_load_obj_loopEf.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Import Lib_load_obj_epiD1 Lib_load_obj_epiD_eqs.
Import ListNotations.
Close Scope bv_scope.
Open Scope Z_scope.
Import ScanDoubleAddr LOAddr LOLAddr HVAddr.

Definition cutsE2g : list efnode := ltac2:(tb__ "0|5|
S7S5S5S5S16S9A2M0S6A2M1S5S12S13A2M2A2M3S4G1G2S4G0S6S4S16S9S36S25A4U0M4A4S4S12S13S23S24Z1aS20A2A4A4S7G3S4G1G2S4G0S6S4S16S9S37S25A4G4A4S4S12S13S23S24Z19S20A2A4A4S8G3A1A3A3").
Definition exitsE2g : list efnode := ltac2:(tb__ "0|5|
S7S5S5S5S16S9A2M0S6A2M1S5S12S13A2M2A2M3S4G1G2S4G0S6S4S16S9S33S25A4U0M4A4S4S12S13Z190S20A4A4S7G3S4G1G2S4G0S6S4S16S9S34S25A4G4A4S4S12S13Z18bS20A4A4S8G3A1A3A3").
Lemma ecertE2g_ok : ltac2:(tb__ "0|0|
S0S2S28S3bS19S2fU96S31S19S1cS1eA8S3A3").
Proof. vm_cast_no_check (@eq_refl bool true). Qed.

Definition cutsE3 : list efnode := ltac2:(tb__ "0|4|
S7S5S5S5S16S9A2M0S6A2M1S5S12S13A2M2A2M3S4G1G2S4G0S6S4S16S9S33S25A4U0A4S4S12S13Z190S20A4A4S8G3A1A3").
Definition exitsE3 : list efnode := ltac2:(tb__ "0|4|
S7S5S5S5S16S9A2M0S6A2M1S5S12S13A2M2A2M3S4G1G2S4G0S6S4S16S9S2bS25A4U0A4S4S12S13Z18bS20A4A4S8G3A1A3").
Lemma ecertE3_ok : ltac2:(tb__ "0|0|
S0S2S28S3bS19S2fU12cS2cS19S1dS1fA8S3A3").
Proof. vm_cast_no_check (@eq_refl bool true). Qed.

Definition ndE0d : ndesc := ndEp tvL bd_disp.
Definition s_l7 : wsub := ltac2:(tb__ "0|0|
S3eS19S17S30A1S17S35A1A3").

Lemma certE_checks_disp : ltac2:(tb__ "0|c|
S1S0S9S2dS1aA3S1S0S2S3aS19S15S17S2bA1M0A1M1A2S3A3S1S0S2S11G1S1aA2S3A3S1S0S2S38S29SdS1aA1M2SdS2dA1M3A3S3A3S1S0S2S10S29ScS1aA1M4ScS2dA1M5A3S3A3S1S0S2S27S14G0A1S39S29SbS2dA1M6A2SbS1aA1M7A3S3A3S1S0S2SeSfS29SaS2dA1M8A2SaS1aA1M9A2S3A3S1S0S2S26S2eS29A2S3A3S1S0S2S3aS19S15S17S34A1MaA1MbA2S3A3S1S0S2S11GbS1aA2S3A3S1S0S2S38S2aG2G3A3S3A3S1S0S2S10S2aG4G5A3S3A3S1S0S2S27S14GaA1S39S2aG6A2G7A3S3A3S1S0S2SeSfS2aG8A2G9A2S3A3S0S2S26S2eS2aA2S3A3A2A2A2A2A2A2A2A2A2A2A2A2A2A2").
Proof. conj_vmc. Qed.

Lemma certE_checks_l7 : ltac2:(tb__ "0|2|
S1S0S2S18S30S35S1bA3S3A3S1S0S2S3fS1bS19A2S3A3S1S0S2S3aS19S15S17S30A1M0A1M1A2S3A3S1S0S2S11G1S21A2S3A3S1S0S2S38S1bSdS21A1SdS22A1A3S3A3S1S0S2S10S1bScS21A1ScS22A1A3S3A3S1S0S2S27S14G0A1S39S1bSbS22A1A2SbS21A1A3S3A3S1S0S2SeSfS1bSaS22A1A2SaS21A1A2S3A3S0S2S26S3cS1bA2S3A3A2A2A2A2A2A2A2A2").
Proof. conj_vmc. Qed.

Lemma certE_checks_sE : ltac2:(tb__ "0|0|
S1S0S2S26S3cS32A2S3A3S1S0S2S26S2eS32A2S3A3S0S2S26S3dS32A2S3A3A2A2").
Proof. conj_vmc. Qed.
