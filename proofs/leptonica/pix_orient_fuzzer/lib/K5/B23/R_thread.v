(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib.K5.Lib Require Import Tac.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib.K5.B23 Require Import ImageA.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib.K5.B23 Require Import Layout R_small.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib.K5.Lib Require Import FarStep.
Ltac2 kr_t_R_thread () := "C4ELinuxProcessSemantics5Riscv7Prelude5bvmapC47Corelib4Init5Logic8eq_ind_rK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1N02I45stdpp9bitvector;definitions2bv00K47Corelib7Numbers7BinNums8positive01I47Corelib4Init9Datatypes6option00C45stdpp9bitvector;definitions7Z_to_bvK6ARocqVerifyHarness?AgentSubmission2K53Lib5Cells4cell01K47Corelib4Init9Datatypes4list01K47Corelib4Init9Datatypes4list02C6ARocqVerifyHarness?AgentSubmission2K53Lib4Step8rw_cellsK47Corelib7Numbers7BinNums1Z02C56Stdlib6ZArith6BinInt1Z3mulC56Stdlib6ZArith6BinInt1Z3addC56Stdlib6ZArith6BinInt1Z3powC56Stdlib6ZArith6BinInt1Z2ltI47Corelib4Init5Logic3and00C56Stdlib6ZArith6BinInt1Z2leC6ARocqVerifyHarness?AgentSubmission2K53Lib3Mem7mem_invC6ARocqVerifyHarness?AgentSubmission2K53Lib5Frame:munch_reflC6ARocqVerifyHarness?AgentSubmission2K53Lib5Frame5munchC6ARocqVerifyHarness?AgentSubmission2K53Lib5Frame:wmono_reflC45stdpp9bitvector;definitions9bv_signedC6ARocqVerifyHarness?AgentSubmission2K56Common8PropExec6v_addiI47Corelib4Init5Logic2eq00K47Corelib4Init5Logic2eq01C45stdpp9bitvector;definitions;bv_unsignedC6ARocqVerifyHarness?AgentSubmission2K53Lib4StepDunsigned_Z_to_bv_addC4ELinuxProcessSemantics5Riscv7Prelude4sextC4ELinuxProcessSemantics5Riscv3Sem5alu64C6ARocqVerifyHarness?AgentSubmission2K56Common8PropExec8alu_addiC6ARocqVerifyHarness?AgentSubmission2K53B237R_small9leaf_postC6ARocqVerifyHarness?AgentSubmission2K53Lib5Frame3mkRK47Corelib4Init9Datatypes6option02C6ARocqVerifyHarness?AgentSubmission2K56Common8PropExec7seg_romK4ELinuxProcessSemantics5Riscv5Instr5instr08K4ELinuxProcessSemantics5Riscv7Prelude4tree01K47Corelib4Init9Datatypes6option01K4ELinuxProcessSemantics5Riscv7Prelude4tree02C6ARocqVerifyHarness?AgentSubmission2K53Lib6MState2MSC4ELinuxProcessSemantics?LinuxProcessSem>RiscvSemantics8is_ecallI47Corelib4Init9Datatypes4prod00C4ELinuxProcessSemantics5Riscv7DecodeC:decode_anyC6ARocqVerifyHarness?AgentSubmission2K53Lib8StepFast8sf_congTK4ELinuxProcessSemantics5Riscv5Instr5instr06C45stdpp9bitvector;definitions6bv_addK47Corelib4Init9Datatypes3nat02I47Corelib4Init9Datatypes4list00C4ELinuxProcessSemantics?LinuxProcessSem6BvBase@le_bytes_to_wordC45stdpp9bitvector;definitions:bv_extractC4ELinuxProcessSemantics5Riscv7Prelude9bvmap_setK4ELinuxProcessSemantics5Riscv3Sem4core01K47Corelib4Init9Datatypes4prod01K4ELinuxProcessSemantics?LinuxProcessSem>RiscvSemantics>machine_result01C56Stdlib6ZArith6BinInt1Z6of_natK47Corelib7Numbers7BinNums1Z03C6ARocqVerifyHarness?AgentSubmission2K56Common8PropExec9b_addsextC47Corelib4Init5Logic8eq_transC6ARocqVerifyHarness?AgentSubmission2K53Lib8StepFast6sf_ad4C6ARocqVerifyHarness?AgentSubmission2K53Lib8StepFast=sf_addr_ztobvC6ARocqVerifyHarness?AgentSubmission2K53Lib8StepFast?sf_load8_directC6ARocqVerifyHarness?AgentSubmission2K53Lib8StepFast7sf_reflC6ARocqVerifyHarness?AgentSubmission2K53Lib8StepFast?sf_install_loadC6ARocqVerifyHarness?AgentSubmission2K56Common8PropExec6v_slliC56Stdlib6ZArith6BinInt1Z6shiftlC56Stdlib6ZArith6BinInt1Z>pow_pos_nonnegC56Stdlib6ZArith6BinInt1Z:pow_nonnegC56Stdlib6ZArith6BinInt1Z7compareK46Stdlib9micromega6VarMap1t02I46Stdlib9micromega6VarMap1t00I46Stdlib9micromega=RingMicromega7Formula00K46Stdlib9micromega7EnvRing5PExpr01K46Stdlib9micromega7EnvRing5PExpr02K46Stdlib9micromega7EnvRing5PExpr07C46Stdlib9micromega5Tauto8BFormulaC46Stdlib9micromega:ZMicromega=ZTautoCheckerC46Stdlib9micromega6VarMap4findC46Stdlib9micromega:ZMicromegaCZTautoChecker_soundC6ARocqVerifyHarness?AgentSubmission2K53Lib7ZBridge6zr_litC6ARocqVerifyHarness?AgentSubmission2K53Lib7ZBridgeBinr64_unsigned_litC4ELinuxProcessSemantics5Riscv7Prelude4zextC6ARocqVerifyHarness?AgentSubmission2K56Common8PropExec8alu_slliK4ELinuxProcessSemantics5Riscv5Instr5instr09C6ARocqVerifyHarness?AgentSubmission2K56Common8PropExec6v_srliC56Stdlib6ZArith6BinInt1Z6moduloC56Stdlib6ZArith6BinInt1Z6shiftrC6ARocqVerifyHarness?AgentSubmission2K53Lib6MStateAunsigned_lit_wrapC6ARocqVerifyHarness?AgentSubmission2K56Common8PropExec8alu_srliC6ARocqVerifyHarness?AgentSubmission2K56Common8PropExec5v_addC6ARocqVerifyHarness?AgentSubmission2K53Lib4StepFunsigned_Z_to_bv_add_rC6ARocqVerifyHarness?AgentSubmission2K56Common8PropExec7alu_addK4ELinuxProcessSemantics5Riscv5Instr5instr0:C56Stdlib6ZArith6BinInt1Z3divK46Stdlib9micromega7EnvRing5PExpr05K46Stdlib9micromega=RingMicromega7Formula01K46Stdlib9micromega6VarMap1t01K46Stdlib9micromega5Tauto8GFormula07C56Stdlib6ZArith6BinInt1Z7div_mulC47Corelib4Init5Logic6eq_indC56Stdlib6ZArith6BinInt1Z?shiftr_div_pow2K46Stdlib9micromega=RingMicromega5Psatz07K46Stdlib9micromega=RingMicromega5Psatz02K46Stdlib9micromega=RingMicromega5Psatz05K46Stdlib9micromega=RingMicromega5Psatz06K46Stdlib9micromega:ZMicromega;ZArithProof02K46Stdlib9micromega:ZMicromega;ZArithProof03C56Stdlib6ZArith6BinInt1Z9mod_smallC56Stdlib6ZArith6BinInt1Z?shiftl_mul_pow2C35stdpp7tactics<f_equal_helpC6ARocqVerifyHarness?AgentSubmission2K53Lib4Exec3evtK46Stdlib9micromega6VarMap1t03K46Stdlib9micromega5Tauto8GFormula03K46Stdlib9micromega7EnvRing5PExpr03C56Stdlib6ZArith6BinInt1Z7add_0_rC47Corelib4Init5Logic7f_equalC45stdpp9bitvector;definitions6bv_notC45stdpp9bitvector;definitions6bv_andC6ARocqVerifyHarness?AgentSubmission2K53Lib6MState6ret_pcC6ARocqVerifyHarness?AgentSubmission2K53Lib6MState;ret_pc_foldC6ARocqVerifyHarness?AgentSubmission2K53Lib4Step@Z_to_bv_lit_selfK4ELinuxProcessSemantics5Riscv5Instr5instr04I47Corelib4Init5Logic2ex00K47Corelib4Init5Logic3and01K47Corelib4Init5Logic2ex01C6ARocqVerifyHarness?AgentSubmission2K53Lib4Exec8evt_doneC6ARocqVerifyHarness?AgentSubmission2K53Lib5Frame5wmonoC45stdpp9bitvector;definitionsDZ_to_bv_obligation_1K45stdpp9bitvector;definitions2bv01C4ELinuxProcessSemantics?LinuxProcessSem>RiscvSemantics:fetch_wordK46Stdlib9micromega5Tauto8GFormula04K46Stdlib9micromega5Tauto8GFormula05K46Stdlib9micromega5Tauto8GFormula08C6ARocqVerifyHarness?AgentSubmission2K53Lib8StepFast;sf_evt_stepK47Corelib7Numbers7BinNums1Z01C6ARocqVerifyHarness?AgentSubmission2K53B236ImageA5asegsI47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool02I4ELinuxProcessSemantics5Riscv5Instr5instr00I47Corelib7Numbers7BinNums1Z00I4ELinuxProcessSemantics?LinuxProcessSem>RiscvSemantics=machine_state00K46Stdlib9micromega=RingMicromega3Op203C46Stdlib9micromega5Tauto5eKindI47Corelib4Init9Datatypes4unit00K46Stdlib9micromega5Tauto4kind01K47Corelib4Init9Datatypes4unit01K46Stdlib9micromega=RingMicromega3Op205K47Corelib7Numbers7BinNums8positive03c6ARocqVerifyHarness?AgentSubmission2K53B238R_thread7pth_tsdI6ARocqVerifyHarness?AgentSubmission2K53Lib5Cells4cell00C6ARocqVerifyHarness?AgentSubmission2K53Lib5Frame3ivlK4ELinuxProcessSemantics5Riscv5Instr5aluop01K4ELinuxProcessSemantics5Riscv5Instr5msize04K47Corelib4Init9Datatypes4bool01K47Corelib4Init9Datatypes3nat01K47Corelib7Numbers7BinNums1N01I4ELinuxProcessSemantics5Riscv3Sem4core00I47Corelib4Init5Logic4True00I47Corelib4Init9Datatypes:comparison00I46Stdlib9micromega:ZMicromega;ZArithProof00K4ELinuxProcessSemantics5Riscv5Instr5aluop03K4ELinuxProcessSemantics5Riscv5Instr5aluop07K46Stdlib9micromega=RingMicromega3Op201I47Corelib4Init5Logic5False00K46Stdlib9micromega:ZMicromega;ZArithProof01C4ELinuxProcessSemantics5Riscv3Sem2w1C6ARocqVerifyHarness?AgentSubmission2K53Lib6MState6w1_litc6ARocqVerifyHarness?AgentSubmission2K53B238R_thread3tpAc6ARocqVerifyHarness?AgentSubmission2K53B238R_thread9tsd_cellsK6ARocqVerifyHarness?AgentSubmission2K53Lib5Cells4cell04K6ARocqVerifyHarness?AgentSubmission2K53Lib5Cells4cell02C6ARocqVerifyHarness?AgentSubmission2K56Common8PropExec7v_auipcC45stdpp9bitvector;definitions9bv_concatC6ARocqVerifyHarness?AgentSubmission2K56Common8PropExec7b_auipcK4ELinuxProcessSemantics5Riscv5Instr5instr02C6ARocqVerifyHarness?AgentSubmission2K53Lib5Cells6cbytesC6ARocqVerifyHarness?AgentSubmission2K53Lib3Mem3zxbC6ARocqVerifyHarness?AgentSubmission2K53Lib3MemAzext_extract_byteC6ARocqVerifyHarness?AgentSubmission2K53Lib5Cells7cell_atC6ARocqVerifyHarness?AgentSubmission2K53Lib5Cells5csizeC6ARocqVerifyHarness?AgentSubmission2K53Lib3Mem2waC6ARocqVerifyHarness?AgentSubmission2K53Lib4Step@rw_cells_read_atC6ARocqVerifyHarness?AgentSubmission2K53Lib8StepFast<sf_load_goalC4ELinuxProcessSemantics5Riscv7Prelude6bv_eqbC6ARocqVerifyHarness?AgentSubmission2K53Lib6MState;lit_add_litK4ELinuxProcessSemantics5Riscv5Instr5instr05C47Corelib4Init9Datatypes3fstC47Corelib4Init9Datatypes3sndC56Stdlib6ZArith6BinInt1Z3eqbC47Corelib4Init5Logic6eq_symC6ARocqVerifyHarness?AgentSubmission2K53Lib3Mem4sx32C6ARocqVerifyHarness?AgentSubmission2K53Lib3Mem3le4C6ARocqVerifyHarness?AgentSubmission2K53Lib3Mem@sext_extract_le4C6ARocqVerifyHarness?AgentSubmission2K53Lib6MState;ret_pc_evenc6ARocqVerifyHarness?AgentSubmission2K53B238R_threadHpthread_getspecific_specC6ARocqVerifyHarness?AgentSubmission2K53B237R_small<sx32_small_AC4ELinuxProcessSemantics?LinuxProcessSem>RiscvSemantics=ov_read_bytesc6ARocqVerifyHarness?AgentSubmission2K53B238R_thread9g_tsd_keyc6ARocqVerifyHarness?AgentSubmission2K53B238R_threadBg_pthread_tsd_mainc6ARocqVerifyHarness?AgentSubmission2K53B238R_thread@g_tsd_key_initedI47Corelib4Init9Datatypes3nat00K4ELinuxProcessSemantics5Riscv5Instr5msize01C4ELinuxProcessSemantics5Riscv3Sem2w0C6ARocqVerifyHarness?AgentSubmission2K53Lib6MState6w0_litK4ELinuxProcessSemantics5Riscv5Instr;branch_cond01K4ELinuxProcessSemantics5Riscv5Instr5msize03c6ARocqVerifyHarness?AgentSubmission2K53B238R_thread<thread_cellsC56Stdlib6ZArith6BinInt1Z3subc6ARocqVerifyHarness?AgentSubmission2K53B238R_thread:frame_postC4ELinuxProcessSemantics?LinuxProcessSem>RiscvSemantics5wviewC47Corelib4Init5Logic3notC6ARocqVerifyHarness?AgentSubmission2K53Lib3Mem3mrdC47Corelib4Init5Logic8iff_reflK46Stdlib9micromega7EnvRing5PExpr04C6ARocqVerifyHarness?AgentSubmission2K53Lib5Frame9stk_carveK4ELinuxProcessSemantics5Riscv5Instr5instr07C6ARocqVerifyHarness?AgentSubmission2K53Lib3Mem3le8C4ELinuxProcessSemantics?LinuxProcessSem6BvBase=Z_to_le_bytesC47Corelib5Lists7ListDef5skipnC6ARocqVerifyHarness?AgentSubmission2K53Lib4StepArw_cells_cb_splitC56Stdlib6ZArith6BinInt1Z9add_assocC6ARocqVerifyHarness?AgentSubmission2K53Lib8StepFast6sf_ad1C6ARocqVerifyHarness?AgentSubmission2K53Lib8StepFast@sf_store8_directC6ARocqVerifyHarness?AgentSubmission2K53Lib8StepFast@sf_install_storeC6ARocqVerifyHarness?AgentSubmission2K53Lib5Cells;cb_split_okC6ARocqVerifyHarness?AgentSubmission2K53Lib5Cells8cb_splitC6ARocqVerifyHarness?AgentSubmission2K53Lib4Step>rw_cells_boundC6ARocqVerifyHarness?AgentSubmission2K53Lib5Cells:cells_sizeC6ARocqVerifyHarness?AgentSubmission2K53Lib4StepArw_cells_store_okC6ARocqVerifyHarness?AgentSubmission2K53Lib4StepDmem_inv_store_cbytesC4ELinuxProcessSemantics?LinuxProcessSem>RiscvSemantics<write_to_memC6ARocqVerifyHarness?AgentSubmission2K53Lib4Step>rw_cells_writeC6ARocqVerifyHarness?AgentSubmission2K53Lib5Cells8cell_updC46Stdlib9micromega;ZifyClasses6eq_iffC46Stdlib9micromega;ZifyClasses9and_morphC46Stdlib9micromega;ZifyClasses7rew_iffC46Stdlib9micromega;ZifyClasses;rew_iff_revC47Corelib4Init9Datatypes6lengthC6ARocqVerifyHarness?AgentSubmission2K53Lib3Mem:length_le8I47Corelib4Init5Logic2or00C46Stdlib9micromega;ZifyClasses8or_morphC6ARocqVerifyHarness?AgentSubmission2K53Lib4Step>rw_cells_frameC6ARocqVerifyHarness?AgentSubmission2K53Lib5Frame6insideC6ARocqVerifyHarness?AgentSubmission2K53Lib5Frame;munch_writeC6ARocqVerifyHarness?AgentSubmission2K53Lib5Frame;wmono_writeC6ARocqVerifyHarness?AgentSubmission2K53Lib5Frame9stk_writeK4ELinuxProcessSemantics5Riscv5Instr5instr03C6ARocqVerifyHarness?AgentSubmission2K53Lib8StepFast7sf_btgtC6ARocqVerifyHarness?AgentSubmission2K53Lib8StepFast8sf_cong1C6ARocqVerifyHarness?AgentSubmission2K53Lib8StepFast:sf_transMRc6ARocqVerifyHarness?AgentSubmission2K53B238R_threadAasan_tsd_get_specC6ARocqVerifyHarness?AgentSubmission2K53Lib5Frame=disjoint_fromC6ARocqVerifyHarness?AgentSubmission2K53Lib5FrameFstk_transport_disjointC6ARocqVerifyHarness?AgentSubmission2K53Lib5Frame7outsideC6ARocqVerifyHarness?AgentSubmission2K53Lib5Frame6sub_fpC6ARocqVerifyHarness?AgentSubmission2K53Lib5Frame<munch_weakenC6ARocqVerifyHarness?AgentSubmission2K53Lib5Frame;munch_transC6ARocqVerifyHarness?AgentSubmission2K53Lib5Frame;wmono_transC6ARocqVerifyHarness?AgentSubmission2K53Lib8StepFast<sf_branch_pcC56Stdlib6ZArith6BinInt1Z7eqb_neqC6ARocqVerifyHarness?AgentSubmission2K53Lib6MState<unsigned_litC6ARocqVerifyHarness?AgentSubmission2K53Lib5Frame;stk_releaseC46Stdlib9micromega;ZifyClasses5mkrelC6ARocqVerifyHarness?AgentSubmission2K53Lib4Exec7evt_cutC6ARocqVerifyHarness?AgentSubmission2K53Lib5Frame3stkC46Stdlib9micromega;ZifyClasses3injC46Stdlib9micromega;ZifyClasses5mkappC46Stdlib9micromega;ZifyClasses6mkapp2K6ARocqVerifyHarness?AgentSubmission2K53Lib5Cells4cell05C47Corelib5Lists7ListDef6firstnK46Stdlib9micromega5Tauto8GFormula06C6ARocqVerifyHarness?AgentSubmission2K53Lib5FrameBrw_cells_transportC46Stdlib9micromega8ZifyInst7Inj_Z_ZK47Corelib4Init5Logic4True01".   (* [comment removed for export] *)
Import ListNotations.
Open Scope bv_scope.
Notation mem := (word -> option byte).

Definition tpA : Z := 0x777e98.
Definition pth_tsd : Z := 0x777e40.          (* [comment removed for export] *)
Definition g_pthread_tsd_main : Z := 0x799240.  (* [comment removed for export] *)
Definition g_tsd_key_inited : Z := 0x244320.
Definition g_tsd_key : Z := 0x244324.

(* [comment removed for export] *)
Lemma pthread_getspecific_spec : forall ra sp gp t0 t1 t2 s0 s1 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6
    (F : bvmap 5 word) fc (m : mem) (tsdp k v : Z),
  rw_cells asegs m pth_tsd [C8 (Z_to_bv 64 tsdp)] ->
  rw_cells asegs m (tsdp + 8 * k) [C8 (Z_to_bv 64 v)] ->
  (0 <= k < 2^32)%Z -> (0 <= tsdp)%Z -> (tsdp + 8 * k + 8 <= 2^64)%Z -> (0 <= v < 2^64)%Z ->
  mem_inv asegs m ->
  evt asegs (leaf_post ra sp gp (Z_to_bv 64 tpA) s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 F fc v m)
    (MS (mkR ra sp gp (Z_to_bv 64 tpA) t0 t1 t2 s0 s1 (Z_to_bv 64 k) a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6)
        F (Z_to_bv 64 0x219d1c) fc None m (seg_rom asegs)).
Proof.
  intros until v. intros TS TK HK HT HTK HV MI. unfold tpA, pth_tsd in *.
  pose proof (munch_refl [] m) as MU. pose proof (wmono_refl asegs m) as WM.
  do 5 zstep.
  replace (Z_to_bv 64 (tsdp + (k ≪ 32 mod 18446744073709551616) ≫ 29)) with (Z_to_bv 64 (tsdp + 8 * k)).
  2:{ f_equal. rewrite Z.shiftl_mul_pow2 by lia. rewrite Z.mod_small by lia.
      rewrite Z.shiftr_div_pow2 by lia. replace (k * 2 ^ 32)%Z with ((8 * k) * 2 ^ 29)%Z by lia.
      rewrite Z.div_mul by lia. reflexivity. }
  assert (HQ : (0 <= tsdp + 8 * k)%Z) by lia. clear HK. set (q := (tsdp + 8 * k)%Z) in *. clearbody q.
  do 2 zstep.
  finish.
Qed.

(* [comment removed for export] *)
Definition tsd_cells (TCX : Z) (m : mem) : Prop :=
  rw_cells asegs m g_tsd_key_inited [C1 (Z_to_bv 8 1)]
  /\ rw_cells asegs m g_tsd_key [C4 (Z_to_bv 64 0)]
  /\ rw_cells asegs m pth_tsd [C8 (Z_to_bv 64 g_pthread_tsd_main)]
  /\ rw_cells asegs m g_pthread_tsd_main [C8 (Z_to_bv 64 TCX)].

(* [comment removed for export] *)
Lemma asan_tsd_get_spec : forall ra sp gp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6
    (F : bvmap 5 word) fc (m : mem) (TCX : Z),
  tsd_cells TCX m -> (0 <= TCX < 2^64)%Z ->
  mem_inv asegs m ->
  evt asegs (leaf_post ra sp gp (Z_to_bv 64 tpA) s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 F fc TCX m)
    (MS (mkR ra sp gp (Z_to_bv 64 tpA) t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6)
        F (Z_to_bv 64 0xcdb28) fc None m (seg_rom asegs)).
Proof.
  intros until TCX. intros (KI & K & TS & T0) HT MI.
  unfold g_tsd_key_inited, g_tsd_key in *.
  do 4 zstep. if_false.
  do 2 zstep.
  rewrite (sx32_small_A 0) by lia.
  eapply (pthread_getspecific_spec _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ F fc m g_pthread_tsd_main 0 TCX);
    try eassumption; unfold g_pthread_tsd_main; try lia.
Qed.

(* [comment removed for export] *)
Definition thread_cells (TCX T : Z) (m : mem) : Prop :=
  tsd_cells TCX m /\ rw_cells asegs m (TCX + 0x98) [C8 (Z_to_bv 64 T)].

Definition frame_post (ra sp gp tp s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 : word) (F : bvmap 5 word) (fc : bv 32)
    (v : Z) (W : list (Z * Z)) (lo : Z) (m : mem) : machine_state -> Prop :=
  fun ms' => exists (t0' t1' t2' a1' a2' a3' a4' a5' a6' a7' t3' t4' t5' t6' : word) (m' : mem),
    ms' = MS (mkR ra sp gp tp t0' t1' t2' s0 s1 (Z_to_bv 64 v) a1' a2' a3' a4' a5' a6' a7' s2 s3 s4 s5 s6 s7 s8 s9 s10 s11
                  t3' t4' t5' t6') F (ret_pc ra) fc None m' (seg_rom asegs)
    /\ munch W m m' /\ wmono asegs m m' /\ mem_inv asegs m' /\ stk asegs m' lo (bv_unsigned sp).

(* [comment removed for export] *)
Lemma get_current_thread_spec : forall ra sp gp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6
    (F : bvmap 5 word) fc (m : mem) (TCX T lo : Z),
  thread_cells TCX T m -> (0 < TCX)%Z -> (TCX + 0xa0 <= 2^64)%Z -> (0 <= T < 2^64)%Z ->
  stk asegs m lo (bv_unsigned sp) -> (lo <= bv_unsigned sp - 16)%Z ->
  (TCX + 0xa0 <= lo \/ bv_unsigned sp <= TCX + 0x98)%Z ->
  (0x79a000 <= lo)%Z ->
  mem_inv asegs m ->
  evt asegs (frame_post ra sp gp (Z_to_bv 64 tpA) s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 F fc T
               [(bv_unsigned sp - 16, bv_unsigned sp)]%Z lo m)
    (MS (mkR ra sp gp (Z_to_bv 64 tpA) t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6)
        F (Z_to_bv 64 0xd548c) fc None m (seg_rom asegs)).
Proof.
  intros until lo. intros [TS TT] HT0 HT1 HT ST LO SEP ILO MI.
  pose proof (munch_refl [(bv_unsigned sp - 16, bv_unsigned sp)]%Z m) as MU. pose proof (wmono_refl asegs m) as WM.
  assert (LO0 : (0 <= lo)%Z) by (destruct ST as [? _]; assumption).
  destruct TS as (KI & K & TS & T0).
  unfold g_tsd_key_inited, g_tsd_key, pth_tsd, g_pthread_tsd_main in *.
  carve_frame 16%nat ST.
  do 3 zstep.
  call asan_tsd_get_spec.
  1:{ unfold tsd_cells, g_tsd_key_inited, g_tsd_key, pth_tsd, g_pthread_tsd_main.
      split; [exact KI|split; [exact K|split; [exact TS|exact T0]]]. }
  1:{ lia. }
  1:{ assumption. }
  zstep.
  assert (C1 : bv_eqb (Z_to_bv 64 TCX) (Z_to_bv 64 0) = false).
  { unfold bv_eqb. rewrite !unsigned_lit by lia. apply Z.eqb_neq. lia. }
  rewrite C1; cbv iota.
  do 4 zstep.
  release_frame FR ST (bv_unsigned sp). finish.
Qed.
