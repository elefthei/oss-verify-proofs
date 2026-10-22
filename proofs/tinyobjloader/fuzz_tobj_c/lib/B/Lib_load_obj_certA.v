(* Machine-generated data computed from the task's compiled program image (decoder-built tables and encoded data blocks); may contain fragments of third-party object code - see NOTICE. No Anthropic licence header applies to this file. *)

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@Corelib.Init.Datatypes"; "pair"; "cons"; "nat"; "prod"; "nil"; "app"; "bool"; "list"; "true"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "axst"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJA"; "ndesc"; "@Corelib.Numbers.BinNums"; "Z"; "positive"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "sv"; "sprop"; "SPUle"; "SVar"; "SLit"; "SAlu"; "valuation"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_load_obj_bud"; "RL"; "VLA"; "ndA1"; "z0"; "ndX0"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJAF"; "efnode"; "ejcertAF"; "@Corelib.Lists.ListDef"; "map"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_load_obj_certA"; "cutsA"; "exitsA"; "FUEL_A"; "H_ecertA_ok"; "PhisA"; "keep_ecertA_ok"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_load_obj_defs"; "NP"; "@Corelib.Init.Logic"; "eq"; "@LinuxProcessSemantics.Riscv.Instr"; "ALU_SUB"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Code"; "segs"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_load_obj_disp"; "X_dp"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_load_obj_exitsR"; "K_after0R"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_load_obj_lglue"; "V_B"; "V_L"; "tblB"; "tblL"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_load_obj_loop"; "K_body"; "K_l2l"; "K_loop"; "K_tk"; "K_ws"; "X_bodyN"; "X_latch"; "X_latch7"; "cps_loop"; "pE"; "pQ"; "pR"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.HideA"; "hideN"; "hide_set"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith NArith List Bool PArith Lia.
From stdpp Require Import bitvector.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw Require Import Safety.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import
  SymState SymStep SymSoundA SymSoundB SymSoundV SymSoundI SymSoundL SymSoundM SymSoundR
  SymComplete SymFrame SymEntail SymCFG SymSummary SymObj ExampleMemcpy Glue3.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import Virt StepA SoundA EntailA CFGA GlueA SummaryA SummaryA2.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require Import SumConv CursorGlue TobjJV ObjXform ObjUnbase.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require Import Geometry Budget Model Iface.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocB Require RtCells.
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
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB Require HideA.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.p1.TobjJAX OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJAR OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJAS OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.TobjJAF OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.p5.TobjJAK OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.p3.ObjZeroA OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibB.HideA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require Import ObjEmptyA PinA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Code Lib_scan_double Lib_vec_reserve.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require np.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Lib_builderH_defs.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Code OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_scan_double OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_vec_reserve OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.np.Lib_builder_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B.Lib_builderH_defs.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A Require Import Lib_rom_defs.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.B Require Import Lib_load_obj_defs Lib_load_obj_pro Lib_load_obj_pro2 Lib_load_obj_loop Lib_load_obj_disp Lib_load_obj_lglue Lib_load_obj_hv0 Lib_load_obj_bud Lib_load_obj_exits Lib_load_obj_exitsR.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib Require LiaFast.
Import ListNotations.
Close Scope bv_scope.
Open Scope Z_scope.
Import ScanDoubleAddr LOAddr LOLAddr HVAddr.

Definition PhisA : list (list positive * (valuation -> Prop)) := ltac2:(tb__ "0|3|
S1S3S7ScA1M0S13OFrho;M1A2M2S0G0G1S29S2bA4S1G2S0G0G1S28S2aA4S4G2A1A3A3").

Definition cutsA : list efnode := ltac2:(tb__ "0|6|
S1S3S3S3S9SaA2M0S2A2M1S3SbSdA2M2A2M3S0G1G2S0G0S2S0S9SaS2eS16A4U0A4S0SbSdS14S15Z1aS17A2A4A4S1G3S0G1G2S0G0S2S0S9SaS2cS16A4U1M4A4S0SbSdS14S15Z18S17A2A4A4S1G3S0G1G2S0G0S2S0S9SaS30S16A4G4A4S0SbSdS14S15Z17M5S37A2A4A4S1G3S0G1G2S0G0S2S0S9SaS2fS16A4G4A4S0SbSdS14S15Z16S12S24S35S36A3A2A4A4S1G3S0G1G2S0G0S2S0S9SaS2dS16A4G4A4S0SbSdS14S15G5S17A2A4A4S4G3A1A3A3A3A3A3").
Definition exitsA : list efnode := ltac2:(tb__ "0|7|
S1S3S3S3S9SaA2M0S2A2M1S3SbSdA2M2A2M3S0G1G2S0G0S2S0S9SaS31S16A4U0M4A4S0SbSdS14S15Z19S17A2A4A4S1G3S0G1G2S0G0S2S0S9SaS27S16A4G4A4S0SbSdZ190S17A4A4S1G3S0G1G2S0G0S2S0S9SaS26S16A4U1M5A4S0SbSdS14S15Z15S17A2A4A4S1G3S0G1G2S0G0S2S0S9SaS32S18A4G5A4S0SbSdS14S15Z1S17A2A4M6A4S1G3S0G1G2S0G0S2S0S9SaS33S18A4G5A4G6A4S4G3A1A3A3A3A3A3").
Definition FUEL_A : nat := 150%nat.

Definition keep_ecertA_ok : list sprop := ltac2:(tb__ "0|5|
S1SeSfS10P1d3A1M0S10P1d4A1M1A2S1SeSfS10P1d2A1S11Z800000000000A1M2A2S1SeSfG1S11ZffffffffA1A2S1SeSfG0S10PeA1M3A2S1SeSfS11Z1000A1S10PdA1M4A2S1SeSfG4G2A2S1SeSfG3S11Z4000000A1A2S4SeA1A3A3A3A3A3A3A3").
Definition H_ecertA_ok : list sprop := ltac2:(tb__ "0|0|
S39S21S5S19S1cS1dA3A2").
Lemma ecertA_ok : ltac2:(tb__ "0|1|
S23S6S1aS25S22S20S1eS34S22S1bS19S19S38S1fA1M0S1cA4S1bS19S19G0S1dA4A8S8A3").
Proof. vm_cast_no_check (@eq_refl bool true). Qed.
