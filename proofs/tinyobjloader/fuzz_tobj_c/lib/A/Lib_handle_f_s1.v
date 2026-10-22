(* Machine-generated data computed from the task's compiled program image (decoder-built tables and encoded data blocks); may contain fragments of third-party object code - see NOTICE. No Anthropic licence header applies to this file. *)

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@Corelib.Init.Datatypes"; "nat"; "cons"; "app"; "nil"; "pair"; "prod"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "SAlu"; "sv"; "SLit"; "sprop"; "SPUle"; "ss_facts"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "ax_S"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.AxXform"; "axform"; "AXSplit"; "@Corelib.Lists.ListDef"; "seq"; "@LinuxProcessSemantics.Riscv.Instr"; "ALU_ADD"; "ALU_SUB"; "@Corelib.Numbers.BinNums"; "positive"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymCFG"; "infer_sub"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.Lib_builderH_defs"; "kb"; "tL"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.e7.Lib_diag_append"; "Pre_da"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.Lib_handle_f_defs"; "pA"; "pD2"; "slot"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.Lib_handle_f_s1"; "E_da"; "E_pc"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.Lib_parse_corner2"; "Pre_pc"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.CFGA"; "ax_add_facts"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.SummaryA"; "import_postA"].
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
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require Import Geometry Budget Model Iface.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require RtCells.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require BudA CfgGenTA SummaryA3 TobjJA TobjJAM.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require h1.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require AxXform.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require h0.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA Require TobjJAS ResidualA.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.BudA OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.CfgGenTA OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.SummaryA3 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.TobjJA OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.TobjJAM OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.h1.TobjJAC OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.AxXform OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.h0.TobjJAX OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.TobjJAS OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.LibA.ResidualA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A Require Code Lib_scan_double Lib_parse_corner2.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A Require e7.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.Code OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.Lib_scan_double OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.Lib_parse_corner2 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.e7.Lib_diag_append.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A Require e9.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A Require Lib_vec_reserve.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A Require ee.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A Require Lib_builderH_defs Lib_handle_f_defs.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.Lib_vec_reserve OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.ee.Lib_builder_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.Lib_builderH_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A.Lib_handle_f_defs.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A Require e6.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.A Require Lib_tess_polygon_states.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib Require LiaFast.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast2.
Import ListNotations.
Import ScanDoubleAddr VRAddr RA.ReallocAddr ParseCornerAddr DiagAppendAddr HFAddr.
Close Scope bv_scope.
Open Scope Z_scope.

Definition sel_ms : list nat := ltac2:(tb__ "0|1|
S2S0S1S0U0S1S0U4S1S0U5S1S0U2S1S0U3S1S0U6S3S0A1M0A3A3A3A3A3A3S2S0SfU7U11A2S1S0U18S1S0U19S1S0U1aS1S0U1bS1S0U1cS1S0U1dS1S0U1eS1S0U1fS1S0U20S1S0U21S1S0U1S1S0U22S1S0U23S1S0U24S1S0U25G0A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3").
Definition T_ms1 : axst := Eval vm_compute in reshapeA T_ms0 1 (mid_slot pD2 pA DUnknown).
Definition T_ms : axst := Eval vm_compute in optAp (apply_axforms T_ms1 [AXSelect sel_ms; AXMerge 32; AXMerge 32]).
Goal shape T_ms = shape JR_co. Proof. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc. Qed.
Goal lvs T_ms = [(pc_entry, RsCut)]. Proof. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc. Qed.

Definition xslot (d c : sv) : sv * sv := ltac2:(tb__ "0|0|
S4S7S7Vd;S6S11S6S10S19Vd;Vc;A2S8ZcA1A3Vd;A3A4").
Definition xf_pc : list axform := ltac2:(tb__ "0|2|
S1SdSeU0S8N40A1A2S1SdSeU21S14ZcM0S17A2M1A2S1SdSeU22S6S10G1S8G0A1A3A2S3SdA1A3A3A3").
Definition E_pc0 : axst := Eval vm_compute in leaf_at T_ms pc_entry 0.
Definition E_pc1 : axst := Eval vm_compute in optAp (apply_axforms E_pc0 xf_pc).

Definition pc_need (t q : sv) : list sprop := ltac2:(tb__ "0|0|
S1S9SaS6S10Vt;S6S11Vq;Vt;A3A3S15A2S3S9A1A3").
Definition E_pc : axst := Eval vm_compute in ax_add_facts (pc_need pT0 pQ) (ax_setX (reshapeA E_pc1 34 (slot_obj pD2 pA)) (xslot pD2 pA :: ax_X E_pc1)).
Definition s_pc : wsub := ltac2:(tb__ "0|0|
S1S5S12S7A2S4S12S7P38S18A4S13PaScS1bA1ScS1cA1A3A3").
Definition R_pc : list sobj := Eval vm_compute in optR (entails_frA E_pc Pre_pc s_pc).
Goal entails_frA E_pc Pre_pc s_pc = Some R_pc /\ call_checkA E_pc Pre_pc s_pc R_pc (map la_state Posts_pc) = true.
Proof. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast2.conj_vmc2. Qed.
Definition T_pure (Pre Cl : axst) (s : wsub) (R : list sobj) (L : axst) : axst := ltac2:(tb__ "0|0|
S1dSbScVCl;A1A1S1eVs;VPre;VL;VCl;VR;A5A2").
Definition T_pc0 : axst := Eval vm_compute in T_pure Pre_pc E_pc s_pc R_pc P_ret.
Goal lvs T_pc0 = [(hf_H, RsCut); (hf_H, RsCut); (da_entry, RsCut)]. Proof. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc. Qed.

Definition sel_pc : list nat := ltac2:(tb__ "0|1|
S2S0S1S0U5S1S0U0S1S0U6S1S0U7S1S0U3S1S0U4S1S0U8S3S0A1M0A3A3A3A3A3A3A3S2S0SfU9U11A2S1S0U1aS1S0U1bS1S0U1cS1S0U1S1S0U1dS1S0U1eS1S0U1fS1S0U20S1S0U21S1S0U22S1S0U2S1S0U23S1S0U24S1S0U25S1S0U26G0A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3").
Definition T_pc1 : axst := Eval vm_compute in reshapeA T_pc0 2 (mid_slot pD2 pA DUnknown).
Definition T_pc : axst := Eval vm_compute in ax_setX (optAp (apply_axforms T_pc1 [AXSelect sel_pc; AXMerge 0; AXMerge 32; AXMerge 32])) (X_body pD2 pK2).
Goal shape T_pc = shape JR_co. Proof. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc. Qed.
Goal lvs T_pc = [(hf_H, RsCut); (hf_H, RsCut); (da_entry, RsCut)]. Proof. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc. Qed.
Goal map (fun L => leaf_matches1A NPH L H) (leavesA_at FUEL_hf cutpcs_hf T_pc hf_H) = [true; true]. Proof. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc. Qed.

Definition E_da0 : axst := Eval vm_compute in leaf_at T_pc da_entry 0.
Definition E_da : axst := Eval vm_compute in optAp (apply_axforms E_da0 [AXSplit 0 (SLit (-96))]).
Definition s_da : wsub := ltac2:(tb__ "0|0|
S13PaScS1aA1ScS16A1A3").
Definition R_da : list sobj := Eval vm_compute in optR (entails_frA E_da Pre_da s_da).
Goal entails_frA E_da Pre_da s_da = Some R_da /\ call_checkA E_da Pre_da s_da R_da (map la_state Posts_da) = true.
Proof. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast2.conj_vmc2. Qed.
Definition T_da0 : axst := Eval vm_compute in T_pure Pre_da E_da s_da R_da P_da.

Definition sel_da : list nat := ltac2:(tb__ "0|0|
S2S0S1S0U3S1S0U0S1S0U4S1S0U5S1S0U1S1S0U2S3S0A1A3A3A3A3A3A3SfU6U1fA2A3").
Definition T_da : axst := Eval vm_compute in ax_setX (optAp (apply_axforms T_da0 [AXSelect sel_da; AXMerge 0])) (X_body pD2 pK2).
Goal shape T_da = shape JR_co. Proof. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast.vmc. Qed.
Goal lvs T_da = [(hf_H, RsCut)] /\ map (fun L => leaf_matches1A NPH L H) (leavesA_at FUEL_hf cutpcs_hf T_da hf_H) = [true].
Proof. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.MemoFast2.conj_vmc2. Qed.
