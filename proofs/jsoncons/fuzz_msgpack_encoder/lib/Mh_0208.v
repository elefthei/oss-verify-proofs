(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require Mh_0208_blobs1 Mh_0208_blobs2.
(* [comment removed for export] *)
Set Warnings "-require-in-module".
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0007. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel. From Stdlib Require ZArith List Lia Bool. From stdpp.bitvector Require definitions. From LinuxProcessSemantics.LinuxProcessSem Require BvBase RiscvSemantics MemImageType State Run. From LinuxProcessSemantics.Riscv Require Prelude Instr Decode DecodeC Sem. From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Asan. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BigLinkBase. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0176. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0177. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Module VaSFeP.
(* [comment removed for export] *)
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0007.   (* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From stdpp.bitvector Require Import definitions.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BigLinkBase. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.CatExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030.CatSim OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.SeqExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.StoreOk OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.Hoare OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.ShapeAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.SpinAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.HeapIface OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.AxSymRun3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.BigLinkBase OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.BigLinkGlue OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.L5Defs OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5Kn OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5KnA.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0176. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0177. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0176 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0177.
Import ListNotations. Import AX2. Import AX2B. Import AX2S.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Ltac Zify.zify_convert_to_euclidean_division_equations_flag ::= constr:(false).
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_VaSFeP () := "C47Corelib7Classes9Morphisms6ProperC47Corelib7Classes?RelationClasses9ReflexiveC47Corelib7Classes9Morphisms:forall_defC46Stdlib5Lists4List2hdC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55rangeC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR6regionC47Corelib4Init5Logic8eq_ind_rC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K@nth_error_singleC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K6zagreeI47Corelib4Init9Datatypes6option00C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA6zpolyAK47Corelib4Init9Datatypes6option01I47Corelib4Init5Logic2eq00K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1N02I45stdpp9bitvector;definitions2bv00C56Stdlib6ZArith6BinInt1Z6moduloC45stdpp9bitvector;definitions7Z_to_bvC45stdpp9bitvector;definitions;bv_unsignedC45stdpp9bitvector;definitions5bv_eqC45stdpp9bitvector;definitions7bv_wrapK47Corelib7Numbers7BinNums1Z02C56Stdlib6ZArith6BinInt1Z3powC56Stdlib6ZArith6BinInt1Z>pow_pos_nonnegC56Stdlib6ZArith6BinInt1Z2ltC56Stdlib6ZArith6BinInt1Z2leC56Stdlib6ZArith6BinInt1Z:pow_nonnegK47Corelib4Init9Datatypes4list01I47Corelib4Init9Datatypes4list00K46Stdlib9micromega6VarMap1t01I46Stdlib9micromega6VarMap1t00I46Stdlib9micromega=RingMicromega7Formula00K46Stdlib9micromega7EnvRing5PExpr01K46Stdlib9micromega7EnvRing5PExpr07K46Stdlib9micromega=RingMicromega7Formula01K46Stdlib9micromega5Tauto8GFormula04K46Stdlib9micromega5Tauto8GFormula07C46Stdlib9micromega5Tauto8BFormulaK47Corelib4Init5Logic2eq01C46Stdlib9micromega:ZMicromega=ZTautoCheckerC46Stdlib9micromega6VarMap4findC46Stdlib9micromega:ZMicromegaCZTautoChecker_soundC56Stdlib6ZArith6BinInt1Z7mod_modC45stdpp9bitvector;definitions@Z_to_bv_unsignedC6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26edenotC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA<zpolyA_soundC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG@word_of_unsignedI6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX23env00I47Corelib4Init9Datatypes3nat00I47Corelib7Numbers7BinNums1Z00I6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr00K47Corelib7Numbers7BinNums8positive03C5ARocqVerifyHarness?AgentSubmission;BigLinkBase2BL2MMI47Corelib7Numbers7BinNums1N00I47Corelib4Init5Logic3and00K47Corelib7Numbers7BinNums1Z01I47Corelib4Init5Logic4True00I46Stdlib9micromega:ZMicromega;ZArithProof00C46Stdlib9micromega5Tauto5eKindI47Corelib4Init9Datatypes4unit00K46Stdlib9micromega5Tauto4kind01K46Stdlib9micromega=RingMicromega3Op201K47Corelib4Init9Datatypes4unit01I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01I47Corelib4Init5Logic5False00K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX25saddr01K47Corelib4Init9Datatypes3nat02K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry01C5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S9kentry_okC56Stdlib6ZArith6BinInt1Z3addC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u64_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=u64_of_KWord8C5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsK47Corelib4Init9Datatypes3nat01C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u32_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=u32_of_KWord4C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55u8_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K<u8_of_KWord1I47Corelib4Init5Peano2le00C56Stdlib6ZArith6BinInt1Z6of_natC5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S4flatC6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26adenotC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K8adenot_eC47Corelib4Init5Logic6eq_indC45stdpp9bitvector;definitionsDbv_unsigned_in_rangeC45stdpp9bitvector;definitions:bv_modulusC4ELinuxProcessSemantics?LinuxProcessSem6BvBase=Z_to_le_bytesK46Stdlib9micromega6VarMap1t02K46Stdlib9micromega7EnvRing5PExpr02K46Stdlib9micromega5Tauto8GFormula05K47Corelib4Init9Datatypes6option02K46Stdlib9micromega5Tauto8GFormula08C56Stdlib6ZArith6BinInt1Z9mod_smallK45stdpp9bitvector;definitions2bv01C45stdpp9bitvector;definitions6bv_addC56Stdlib6ZArith6BinInt1Z?add_mod_idemp_lC45stdpp9bitvector;definitions?bv_add_unsignedC56Stdlib6ZArith6BinInt1Z3divK47Corelib4Init9Datatypes4list02C47Corelib4Init5Logic7f_equalC35stdpp7tactics<f_equal_helpC56Stdlib6ZArith6BinInt1Z6shiftrC56Stdlib6ZArith6BinInt1Z?shiftr_div_pow2K47Corelib4Init5Logic3and01C47Corelib4Init5Logic9False_indC4ARocqVerifyHarness?AgentSubmission8PropExec3rdnC4ELinuxProcessSemantics?LinuxProcessSem>RiscvSemantics@word_to_le_bytesC4ARocqVerifyHarness?AgentSubmission8PropExec7seg_romK46Stdlib9micromega=RingMicromega3Op203K46Stdlib9micromega=RingMicromega3Op205K47Corelib4Init5Logic4True01K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry0:C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L57definedC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K?defined_of_KUnkC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA@u8_of_KWord1_modK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry02C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA8zeros_atC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA>zeros_of_KZeroK47Corelib7Numbers7BinNums8positive01C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K9land_le_rC56Stdlib6ZArith6BinInt1Z4landK46Stdlib9micromega=RingMicromega5Psatz02K46Stdlib9micromega=RingMicromega5Psatz06K46Stdlib9micromega:ZMicromega;ZArithProof02K46Stdlib9micromega6VarMap1t03K46Stdlib9micromega5Tauto8GFormula03K46Stdlib9micromega:ZMicromega;ZArithProof01C56Stdlib6ZArith6BinInt1Z3lorC56Stdlib6ZArith6BinInt1Z:lor_nonnegC56Stdlib6ZArith6BinInt1Z6eq_decC47Corelib4Init5Logic3notI47Corelib4Init6Specif7sumbool00C56Stdlib6ZArith6BinInt1Z7lor_0_lC56Stdlib6ZArith6BinInt1Z7lor_0_rC56Stdlib6ZArith6BinInt1Z4log2C56Stdlib6ZArith6BinInt1Z3maxC56Stdlib6ZArith6BinInt1Z<log2_lt_pow2C56Stdlib6ZArith6BinInt1Z:max_lub_ltC56Stdlib6ZArith6BinInt1Z8log2_lorC56Stdlib6ZArith6BinInt1Z>log2_lt_cancelC47Corelib4Init5Logic5proj2C56Stdlib6ZArith6BinInt1Z9land_commC46Stdlib5Lists4List2InC56Stdlib6ZArith6BinInt1Z3ltbC47Corelib4Init9Datatypes4andbC47Corelib5Lists7ListDef3seqC46Stdlib5Lists4List7forallbC47Corelib4Init5Logic3iffC47Corelib7Classes9MorphismsDiff_impl_subrelationC46Stdlib5Lists4List>forallb_forallC56Stdlib6ZArith6BinInt1Z6to_natC47Corelib4Init3Nat3addC47Corelib4Init5Peano2ltC46Stdlib5Lists4List6in_seqC46Stdlib9micromega;ZifyClasses9and_morphC56Stdlib6ZArith6BinInt1Z8max_specI47Corelib4Init5Logic2or00K47Corelib7Numbers7BinNums1Z03K46Stdlib9micromega7EnvRing3Pol01K46Stdlib9micromega=RingMicromega5Psatz04K46Stdlib9micromega5Tauto8GFormula06K46Stdlib9micromega7EnvRing5PExpr03C46Stdlib9micromega;ZifyClasses;rew_iff_revC56Stdlib6ZArith4Znat5Z2Nat2idC47Corelib4Init9Datatypes9andb_propC46Stdlib9micromega9SatDivModCZ_mod_nonneg_nonnegC56Stdlib6ZArith6BinInt1Z7div_modC56Stdlib6ZArith6BinInt1Z3mulC56Stdlib6ZArith6BinInt1Z=mod_pos_boundC56Stdlib6ZArith6BinInt1Z=mod_neg_boundC56Stdlib5omega8PreOmega1Z;div_0_r_extC56Stdlib5omega8PreOmega1Z;mod_0_r_extK46Stdlib9micromega5Tauto8GFormula01C56Stdlib6ZArith6BinInt1Z3lebC46Stdlib9micromega;ZifyClasses5mkappC46Stdlib9micromega;ZifyClasses5mkrelC46Stdlib9micromega;ZifyClasses6mkapp2K46Stdlib9micromega5Tauto8GFormula0:C46Stdlib9micromega8ZifyInst@of_nat_to_nat_eqC56Stdlib6ZArith4Znat5Nat2Z6inj_leC56Stdlib5Arith8PeanoNat3Nat3addC56Stdlib6ZArith4Znat5Nat2Z7inj_addC56Stdlib6ZArith4Znat5Nat2Z6inj_ltK46Stdlib9micromega5Tauto4kind02C6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG7kept_okc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feA5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feA9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9KS_va_feAC46Stdlib5Lists4List2tlC4ELinuxProcessSemantics5Riscv7Prelude5bvmapC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L59img_clearc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7alignedC56Stdlib6ZArith6BinInt1Z3subC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L58writableC47Corelib4Init5Logic5proj1C4ARocqVerifyHarness?AgentSubmission8PropExec4getrK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX23env01C6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX22evC56Stdlib6NArith6BinNat1N6to_natC5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA6za_litC5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA8za_startK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr02C6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG5slotsC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG@regs_ok_of_slotsC5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S7regs_okK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry04K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr01K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry06K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry05K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry07K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry08K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr03C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K;kentry_KImgC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K:zagree_allC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA:zpolyA_valC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KWord8C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KRangeC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KAlignC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K:kentry_KWrK46Stdlib9micromega7EnvRing5PExpr04C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K<kentry_KDisjC46Stdlib9micromega9SatDivModCZ_div_nonneg_nonnegK46Stdlib9micromega=RingMicromega5Psatz07K46Stdlib9micromega=RingMicromega5Psatz05K46Stdlib9micromega7EnvRing5PExpr05C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA<kentry_KZeroK47Corelib5Lists7ListDef6Forall01C5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S7know_okC5ARocqVerifyHarness?AgentSubmission7Mh_00387StoreOk9mem_growsC4ARocqVerifyHarness?AgentSubmission8PropExec4mkstI47Corelib4Init5Logic2ex00C5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP8bfact_okc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feA<seg_sound_axI47Corelib4Init9Datatypes4prod00K47Corelib4Init9Datatypes4prod01C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K9zagree_ltC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=outside_nil_eC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K>outside_cons_eC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG<unsigned_litC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG9kept_regsc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP=word_of_zpolyC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG;edenot_keptC46Stdlib5Lists4List<nth_error_InC5ARocqVerifyHarness?AgentSubmission;BigLinkBase2BL9bvu_rangec6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP>u64_of_KWord8aK47Corelib4Init5Logic2ex01C5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA7za_stepK47Corelib5Lists7ListDef6Forall02I5ARocqVerifyHarness?AgentSubmission7Mh_00306CatSim6msteps00C46Stdlib5Lists4List9nth_errorC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR5ps_pcC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR7ps_regsC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP:regions_okC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP7outsideC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR8ps_cellsC5ARocqVerifyHarness?AgentSubmission7Mh_01129AxSymRun39env_agreeC5ARocqVerifyHarness?AgentSubmission7Mh_01129AxSymRun3<expr_vars_ltC47Corelib5Lists7ListDef3nthC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG7out_regI6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry00I6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR9post_spec00c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feA3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feA2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feA3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feA6cells0I4ARocqVerifyHarness?AgentSubmission8PropExec7FPState00K47Corelib7Numbers7BinNums1N01K4ELinuxProcessSemantics5Riscv5Instr5aluop07c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feA3kn0I5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP5bfact00c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feA3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP<KS_va_feA_okK4ELinuxProcessSemantics5Riscv5Instr5aluop01c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP8Pva_feBp5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP8Pva_feBp9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP:KS_va_feBpC47Corelib4Init5Logic6eq_symC47Corelib4Init5Logic8eq_transc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP8Pva_feBp<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP8Pva_feBp3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP8Pva_feBp2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP8Pva_feBp3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP8Pva_feBp3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP8Pva_feBp3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP=KS_va_feBp_okc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP8Pva_feBn5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP8Pva_feBn9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP:KS_va_feBnc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP8Pva_feBn<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP8Pva_feBn3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP8Pva_feBn2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP8Pva_feBn3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP8Pva_feBn3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP8Pva_feBn3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP=KS_va_feBn_okc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCp15regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCp19regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;KS_va_feCp1c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCp1<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCp13PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCp12F0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCp13NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCp13kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCp13ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP>KS_va_feCp1_okc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCp25regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCp29regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;KS_va_feCp2c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCp2<seg_sound_axK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr05K46Stdlib9micromega:ZMicromega;ZArithProof03c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCp23PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCp22F0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCp23NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCp23kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCp23ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP>KS_va_feCp2_okK4ELinuxProcessSemantics5Riscv5Instr5mulop01c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCp35regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCp39regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;KS_va_feCp3c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCp3<seg_sound_axK5ARocqVerifyHarness?AgentSubmission;BigLinkBase2BL2za02K5ARocqVerifyHarness?AgentSubmission;BigLinkBase2BL2za01K5ARocqVerifyHarness?AgentSubmission;BigLinkBase2BL2za05K5ARocqVerifyHarness?AgentSubmission;BigLinkBase2BL2za07K5ARocqVerifyHarness?AgentSubmission;BigLinkBase2BL2za03C6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX28evars_ltC5ARocqVerifyHarness?AgentSubmission;BigLinkBase2BL5zcompC5ARocqVerifyHarness?AgentSubmission;BigLinkBase2BL2uvC5ARocqVerifyHarness?AgentSubmission;BigLinkBase2BL4zdenC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K9zc_sound'c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCp33PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCp32F0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCp33NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCp33kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCp33ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP>KS_va_feCp3_okI5ARocqVerifyHarness?AgentSubmission;BigLinkBase2BL2za00c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCn15regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCn19regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;KS_va_feCn1c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCn1<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCn13PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCn12F0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCn13NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCn13kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCn13ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP>KS_va_feCn1_okc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCn25regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCn29regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;KS_va_feCn2c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCn2<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCn23PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCn22F0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCn23NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCn23kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCn23ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP>KS_va_feCn2_okc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCn35regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCn39regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;KS_va_feCn3c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCn3<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCn33PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCn32F0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCn33NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCn33kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9Pva_feCn33ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP>KS_va_feCn3_okc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feD5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feD9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9KS_va_feDc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feD<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feD3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feD2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feD3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feD3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feD3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP<KS_va_feD_okc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feG5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feG9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9KS_va_feGc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feG<seg_sound_axK5ARocqVerifyHarness?AgentSubmission;BigLinkBase2BL2za0<c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feG3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feG2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feG3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feG3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feG3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP<KS_va_feG_okK4ELinuxProcessSemantics5Riscv5Instr5aluop0:c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feE5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feE9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9KS_va_feEc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feE<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feE3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feE2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feE3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feE3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feE3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP<KS_va_feE_okc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feF5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feF9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9KS_va_feFc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feF<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feF3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feF2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feF3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feF3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7Pva_feF3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP<KS_va_feF_ok". Local Ltac lia := L5FastLia.plia.

Module VASFEP.
Abbreviation RSEGS := Asan.M.loaded_segments.
Notation reg i := (Z_to_bv 5 (Z.of_nat i)) (only parsing).
Notation st fx R pc M := (@mkst fx R (Z_to_bv 64 pc) M (seg_rom Asan.M.loaded_segments)) (only parsing).

(* [comment removed for export] *)
Lemma word_of_zpoly E Vz e z : L5K.zagree E Vz e -> L5KA.zpolyA Vz e = Some z -> edenot E e = Z_to_bv 64 z.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_001 ())). Qed.
(* [comment removed for export] *)
Lemma u64_of_KWord8a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 8 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> L5.u64_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_002 ())). Qed.
Lemma u32_of_KWord4a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 4 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> L5.u32_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_003 ())). Qed.
Lemma u8_of_KWord1a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 1 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> 0 <= v < 256 -> a' = a + off -> L5.u8_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_004 ())). Qed.
(* [comment removed for export] *)
Lemma u8x2_of_KWord2a E M b off e a v a' v0 v1 : kentry_ok RSEGS E M (KWord (SA b off) 2 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> v0 = v mod 256 -> v1 = (v / 256) mod 256 ->
  L5.u8_at RSEGS M a' v0 /\ L5.u8_at RSEGS M (a' + 1) v1.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_005 ())). Qed.
Lemma defined_of_KUnka E M b off ne a n a' : kentry_ok RSEGS E M (KUnk (SA b off) ne) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E ne) = n -> a' = a + off -> L5.defined M a' n.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_006 ())). Qed.
Lemma u8_of_KWord1ma E M b off e a v a' v' : kentry_ok RSEGS E M (KWord (SA b off) 1 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> v' = v mod 256 -> L5.u8_at RSEGS M a' v'.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_007 ())). Qed.
Lemma zeros_of_KZeroa E M b off ne a n a' : kentry_ok RSEGS E M (KZero (SA b off) ne) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E ne) = n -> a' = a + off -> L5KA.zeros_at M a' n.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_008 ())). Qed.
Lemma land_byte a m : 0 <= a -> 0 <= m <= 255 -> 0 <= Z.land a m < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_009 ())). Qed.
Lemma lor_byte a b : 0 <= a < 256 -> 0 <= b < 256 -> 0 <= Z.lor a b < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_010 ())). Qed.
(* [comment removed for export] *)
Lemma land_le_l a m : 0 <= a -> 0 <= m -> Z.land a m <= a.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_011 ())). Qed.
Local Ltac zfacts :=
  repeat (match goal with |- context [Z.land ?a ?m] =>
    lazymatch goal with _ : 0 <= Z.land a m <= m |- _ => fail | _ => pose proof (L5K.land_le_r a m ltac:(lia) ltac:(lia)); pose proof (land_le_l a m ltac:(lia) ltac:(lia)) end end);
  repeat (match goal with |- context [?a / ?c] =>
    lazymatch goal with _ : 0 <= a / c |- _ => fail | _ => pose proof (Z.div_pos a c ltac:(lia) ltac:(lia)); pose proof (Z.mul_div_le a c ltac:(lia)) end end).
Local Ltac nonneg_tac := first [lia | match goal with |- 0 <= ?x mod ?m => exact (proj1 (Z.mod_pos_bound x m ltac:(clear; lia))) end | (zfacts; lia)].
Lemma setbit1_byte a : 0 <= a < 256 -> 0 <= (Z.land a 18446744073709551613 + 2) mod 2 ^ 64 < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_012 ())). Qed.
Local Ltac byte_go :=
  lazymatch goal with
  | |- 0 <= (Z.land _ 18446744073709551613 + 2) mod _ < 256 => apply setbit1_byte; lia
  | |- 0 <= Z.lor _ _ < 256 => apply lor_byte; byte_go
  | |- 0 <= Z.land _ _ < 256 => apply land_byte; [nonneg_tac | lia]
  | _ => zfacts; first [lia | rewrite !Z.mod_small by (rewrite ?Z.mod_small by lia; lia); lia]
  end.
Local Ltac byte_tac0 k := k; byte_go.
Tactic Notation "byte_tac" tactic(k) := byte_tac0 k.
(* [comment removed for export] *)
(* [comment removed for export] *)
Local Ltac solve_modk k :=
  repeat match goal with |- context [(?x mod 18446744073709551616) / _] => rewrite (Z.mod_small x 18446744073709551616) by (k; zfacts; lia) end;
  first [ rewrite Z.mod_small; [ first [reflexivity | k; lia] | k; L5K.zrange_tac ]
        | symmetry; eapply (Z.mod_unique_pos _ _ (-1)); k; unfold BL.MM; lia
        | symmetry; eapply (Z.mod_unique_pos _ _ 1); k; unfold BL.MM; lia ].
(* [comment removed for export] *)
Local Ltac pvz_hg tac := lazymatch goal with |- ?G0 => let PG := fresh "PGoal" in set (PG := G0); tac; subst PG end.
Local Ltac pvz_fold B k := lazymatch B with | ?A2 /\ ?B2 => pvz_fold B2 ltac:(fun T2 => let T := fresh "pvzT" in pose (T := A2 /\ T2); k T) | _ => k B end.
Local Ltac pvz_linconj := lazymatch goal with |- ?A /\ ?B => pvz_fold B ltac:(fun T => change_no_check (A /\ T)) | _ => idtac end.
Local Ltac pvz_unfold ZA := lazymatch type of ZA with forall j, _ = ?f j => tryif is_var f then unfold f else idtac | _ => idtac end.
Tactic Notation "evalEk" constr(ZA) tactic(k) :=
  L5K.norm_expr; eapply L5KA.zpolyA_val; [ apply (L5K.zagree_all _ _ _ ZA) | cbn [L5KA.zpolyA]; pvz_unfold ZA; reflexivity | solve_modk k ].
Tactic Notation "evalEk'" constr(ZA) constr(AG) tactic(k) :=
  L5K.norm_expr; eapply L5KA.zpolyA_val;
  [ eapply (L5K.zagree_lt _ _ _ _ _ AG); [apply (L5K.zagree_all _ _ _ ZA) | vm_compute; reflexivity] | cbn [L5KA.zpolyA]; pvz_unfold ZA; reflexivity | solve_modk k ].
(* [comment removed for export] *)
Definition aligned (a m : Z) : Prop := a mod m = 0.
Definition srl_range (a c lo hi : Z) : Prop := lo <= a / c <= hi.
(* [comment removed for export] *)
Local Ltac exactA H :=
  first [ exact H
        | lazymatch goal with
          | |- L5.u64_at _ _ ?a _ => lazymatch type of H with L5.u64_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.u8_at _ _ ?a _ => lazymatch type of H with L5.u8_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.u32_at _ _ ?a _ => lazymatch type of H with L5.u32_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.writable _ _ ?a _ => lazymatch type of H with L5.writable _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.defined _ ?a _ => lazymatch type of H with L5.defined _ ?b _ => replace a with b by (clear; lia) end
          | |- L5KA.zeros_at _ ?a _ => lazymatch type of H with L5KA.zeros_at _ ?b _ => replace a with b by (clear; lia) end
          end; exact H ].
(* [comment removed for export] *)
Local Ltac den_tac := first [reflexivity | lia | idtac].
(* [comment removed for export] *)
(* [comment removed for export] *)
Local Ltac apc_norm :=
  repeat match goal with
  | |- context [APC.eadd ?a ?b] => let t := eval vm_compute in (APC.eadd a b) in change (APC.eadd a b) with t
  | |- context [APC.esub ?a ?b] => let t := eval vm_compute in (APC.esub a b) in change (APC.esub a b) with t
  | |- context [APC.escale ?c ?e] => let t := eval vm_compute in (APC.escale c e) in change (APC.escale c e) with t
  | |- context [APC.eaddz ?a ?z] => let t := eval vm_compute in (APC.eaddz a z) in change (APC.eaddz a z) with t
  end.
(* [comment removed for export] *)
Local Ltac zp_norm := repeat (match goal with |- context [(?a <=? ?b) && (?c <? ?d)] => let r := eval vm_compute in ((a <=? b) && (c <? d)) in change ((a <=? b) && (c <? d)) with r end);
  repeat (match goal with |- context [2 ^ ?s] => let r := eval vm_compute in (2 ^ s) in change (2 ^ s) with r end); lazy beta iota zeta.
Local Ltac zp_mods := repeat match goal with |- context [(?x mod 18446744073709551616) / _] => rewrite (Z.mod_small x 18446744073709551616) by (zfacts; lia) end.
Local Ltac slotP ZA :=
  first [ assumption | reflexivity
        | (etransitivity; [eassumption|]; symmetry; eapply word_of_zpoly; [apply (L5K.zagree_all _ _ _ ZA) | cbn [L5KA.zpolyA]; pvz_unfold ZA; zp_norm; f_equal; zp_mods; first [reflexivity | clear; zfacts; lia | zfacts; lia]]) ].
(* [comment removed for export] *)
Local Ltac wordP' ZA AG :=
  eapply word_of_zpoly; [ eapply (L5K.zagree_lt _ _ _ _ _ AG); [apply (L5K.zagree_all _ _ _ ZA) | vm_compute; reflexivity]
                        | cbn [L5KA.zpolyA]; pvz_unfold ZA; zp_norm; f_equal; zp_mods; first [reflexivity | clear; zfacts; lia | zfacts; lia] ].
(* [comment removed for export] *)
Module Pva_feA := BndP_Na_130.LibSegNa_va_feA.
Definition KS_va_feA : list nat := Eval vm_compute in (BG.kept_list 80 Pva_feA.regs0 Pva_feA.regs_out0).
Lemma KS_va_feA_ok : BG.kept_ok 80 Pva_feA.regs0 Pva_feA.regs_out0 KS_va_feA = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_013 ())). Qed.
Lemma va_feA_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 11) = Z_to_bv 64 (V 34%nat) ->
  L5.img_clear M 65536 1409024 -> L5.u64_at RSEGS M 1440376 2147450880 -> 140735332487216 <= (V 2%nat) <= 140737488355328 -> aligned (V 2%nat) 16 ->
  L5.writable RSEGS M ((V 2%nat) - 40) 40 -> (((V 2%nat) - 40) + 40 <= (V 34%nat) \/ (V 34%nat) + 8 <= ((V 2%nat) - 40)) -> 140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 ->
  L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, ~ (((V 2%nat) - 40) <= bv_unsigned a < ((V 2%nat) - 40) + 40) -> M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> ~ (((V 2%nat) - 40) <= i < ((V 2%nat) - 40) + 40) -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbcf08 M) (st fx' R' 0xbcf48 M')
        /\ (forall x, In x KS_va_feA -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 2) = Z_to_bv 64 ((V 2%nat) - 48)
        /\ getr R' (reg 8) = Z_to_bv 64 (V 34%nat)
        /\ getr R' (reg 9) = getr R (reg 10)
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 0
        /\ getr R' (reg 12) = Z_to_bv 64 1440376
        /\ getr R' (reg 18) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880)
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 40) (bv_unsigned (getr R (reg 19)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 32) (bv_unsigned (getr R (reg 18)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 24) (bv_unsigned (getr R (reg 9)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 16) (bv_unsigned (getr R (reg 8)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 8) (bv_unsigned (getr R (reg 1)))).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_014 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_feBp := BndP_Na_130.LibSegNa_va_feBp.
Definition KS_va_feBp : list nat := Eval vm_compute in (BG.kept_list 80 Pva_feBp.regs0 Pva_feBp.regs_out0).
Lemma KS_va_feBp_ok : BG.kept_ok 80 Pva_feBp.regs0 Pva_feBp.regs_out0 KS_va_feBp = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_015 ())). Qed.
Lemma va_feBp_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 48) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 40%nat) -> getr R (reg 10) = Z_to_bv 64 (V 33%nat) -> getr R (reg 18) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) ->
  0 <= (V 40%nat) <= 999 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbcf48 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_feBp -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 773972
        /\ getr R' (reg 11) = Z_to_bv 64 43).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_016 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_feBn := BndP_Na_130.LibSegNa_va_feBn.
Definition KS_va_feBn : list nat := Eval vm_compute in (BG.kept_list 80 Pva_feBn.regs0 Pva_feBn.regs_out0).
Lemma KS_va_feBn_ok : BG.kept_ok 80 Pva_feBn.regs0 Pva_feBn.regs_out0 KS_va_feBn = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_017 ())). Qed.
Lemma va_feBn_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 48) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 40%nat) -> getr R (reg 10) = Z_to_bv 64 (V 33%nat) -> getr R (reg 18) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) ->
  18446744073709550617 <= (V 40%nat) <= 18446744073709551615 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbcf48 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_feBn -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 773984
        /\ getr R' (reg 11) = Z_to_bv 64 45).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_018 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_feCp1 := BndP_Na_130.LibSegNa_va_feCp1.
Definition KS_va_feCp1 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_feCp1.regs0 Pva_feCp1.regs_out0).
Lemma KS_va_feCp1_ok : BG.kept_ok 80 Pva_feCp1.regs0 Pva_feCp1.regs_out0 KS_va_feCp1 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_019 ())). Qed.
Lemma va_feCp1_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 48) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 40%nat) -> getr R (reg 18) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  0 <= (V 40%nat) <= 9 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbcf54 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_feCp1 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 774016
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 48).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_020 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_feCp2 := BndP_Na_130.LibSegNa_va_feCp2.
Definition KS_va_feCp2 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_feCp2.regs0 Pva_feCp2.regs_out0).
Lemma KS_va_feCp2_ok : BG.kept_ok 80 Pva_feCp2.regs0 Pva_feCp2.regs_out0 KS_va_feCp2 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_021 ())). Qed.
Lemma va_feCp2_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 48) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 40%nat) -> getr R (reg 18) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  10 <= (V 40%nat) <= 99 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbcf54 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_feCp2 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 774076
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 (((205 * (V 40%nat)) / 2048) + 48)
        /\ getr R' (reg 12) = Z_to_bv 64 205
        /\ getr R' (reg 19) = Z_to_bv 64 ((205 * (V 40%nat)) / 2048)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_022 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_feCp3 := BndP_Na_130.LibSegNa_va_feCp3.
Definition KS_va_feCp3 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_feCp3.regs0 Pva_feCp3.regs_out0).
Lemma KS_va_feCp3_ok : BG.kept_ok 80 Pva_feCp3.regs0 Pva_feCp3.regs_out0 KS_va_feCp3 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_023 ())). Qed.
Lemma va_feCp3_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 48) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 40%nat) -> getr R (reg 18) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  100 <= (V 40%nat) <= 999 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbcf54 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_feCp3 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 774148
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ bv_unsigned (getr R' (reg 11)) = (((((5243 * (((281474976710656 * (V 40%nat)) mod 2 ^ 64) / 1125899906842624)) mod 2 ^ 64) / 131072) + 48) mod 2 ^ 64)
        /\ bv_unsigned (getr R' (reg 12)) = (((281474976710656 * (V 40%nat)) mod 2 ^ 64) / 1125899906842624)
        /\ bv_unsigned (getr R' (reg 19)) = (((5243 * (((281474976710656 * (V 40%nat)) mod 2 ^ 64) / 1125899906842624)) mod 2 ^ 64) / 131072)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_024 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_feCn1 := BndP_Na_130.LibSegNa_va_feCn1.
Definition KS_va_feCn1 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_feCn1.regs0 Pva_feCn1.regs_out0).
Lemma KS_va_feCn1_ok : BG.kept_ok 80 Pva_feCn1.regs0 Pva_feCn1.regs_out0 KS_va_feCn1 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_025 ())). Qed.
Lemma va_feCn1_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 48) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 40%nat) -> getr R (reg 18) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  18446744073709551607 <= (V 40%nat) <= 18446744073709551615 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbcf60 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_feCn1 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 774016
        /\ getr R' (reg 9) = Z_to_bv 64 ((-1) * (V 40%nat))
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 48).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_026 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_feCn2 := BndP_Na_130.LibSegNa_va_feCn2.
Definition KS_va_feCn2 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_feCn2.regs0 Pva_feCn2.regs_out0).
Lemma KS_va_feCn2_ok : BG.kept_ok 80 Pva_feCn2.regs0 Pva_feCn2.regs_out0 KS_va_feCn2 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_027 ())). Qed.
Lemma va_feCn2_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 48) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 40%nat) -> getr R (reg 18) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  18446744073709551517 <= (V 40%nat) <= 18446744073709551606 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbcf60 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_feCn2 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 774076
        /\ getr R' (reg 9) = Z_to_bv 64 ((-1) * (V 40%nat))
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 (((((-205) * (V 40%nat))) mod 18446744073709551616 / 2048) + 48)
        /\ getr R' (reg 12) = Z_to_bv 64 205
        /\ getr R' (reg 19) = Z_to_bv 64 ((((-205) * (V 40%nat))) mod 18446744073709551616 / 2048)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_028 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_feCn3 := BndP_Na_130.LibSegNa_va_feCn3.
Definition KS_va_feCn3 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_feCn3.regs0 Pva_feCn3.regs_out0).
Lemma KS_va_feCn3_ok : BG.kept_ok 80 Pva_feCn3.regs0 Pva_feCn3.regs_out0 KS_va_feCn3 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_029 ())). Qed.
Lemma va_feCn3_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 48) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 40%nat) -> getr R (reg 18) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  18446744073709550617 <= (V 40%nat) <= 18446744073709551516 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbcf60 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_feCn3 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 774148
        /\ getr R' (reg 9) = Z_to_bv 64 ((-1) * (V 40%nat))
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ bv_unsigned (getr R' (reg 11)) = (((((5243 * (((18446462598732840960 * (V 40%nat)) mod 2 ^ 64) / 1125899906842624)) mod 2 ^ 64) / 131072) + 48) mod 2 ^ 64)
        /\ bv_unsigned (getr R' (reg 12)) = (((18446462598732840960 * (V 40%nat)) mod 2 ^ 64) / 1125899906842624)
        /\ bv_unsigned (getr R' (reg 19)) = (((5243 * (((18446462598732840960 * (V 40%nat)) mod 2 ^ 64) / 1125899906842624)) mod 2 ^ 64) / 131072)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_030 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_feD := BndP_Na_130.LibSegNa_va_feD.
Definition KS_va_feD : list nat := Eval vm_compute in (BG.kept_list 80 Pva_feD.regs0 Pva_feD.regs_out0).
Lemma KS_va_feD_ok : BG.kept_ok 80 Pva_feD.regs0 Pva_feD.regs_out0 KS_va_feD = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_031 ())). Qed.
Lemma va_feD_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 35%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 37%nat) < 2 ^ 64 -> 0 <= (V 38%nat) < 2 ^ 64 -> 0 <= (V 39%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 48) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 40%nat) -> getr R (reg 18) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) ->
  140735332487216 <= (V 2%nat) <= 140737488355328 -> aligned (V 2%nat) 16 -> 140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 ->
  L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 -> L5.u64_at RSEGS M ((V 2%nat) - 8) (V 35%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 16) (V 36%nat) ->
  L5.u64_at RSEGS M ((V 2%nat) - 24) (V 37%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 32) (V 38%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 40) (V 39%nat) -> 0 <= (V 40%nat) <= 9 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbcf80 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_feD -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 (V 35%nat)
        /\ getr R' (reg 2) = Z_to_bv 64 (V 2%nat)
        /\ getr R' (reg 8) = Z_to_bv 64 (V 36%nat)
        /\ getr R' (reg 9) = Z_to_bv 64 (V 37%nat)
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 ((V 40%nat) + 48)
        /\ getr R' (reg 18) = Z_to_bv 64 (V 38%nat)
        /\ getr R' (reg 19) = Z_to_bv 64 (V 39%nat)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_032 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_feG := BndP_Na_131.LibSegNa_va_feG.
Definition KS_va_feG : list nat := Eval vm_compute in (BG.kept_list 80 Pva_feG.regs0 Pva_feG.regs_out0).
Lemma KS_va_feG_ok : BG.kept_ok 80 Pva_feG.regs0 Pva_feG.regs_out0 KS_va_feG = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_033 ())). Qed.
Lemma va_feG_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 35%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 37%nat) < 2 ^ 64 -> 0 <= (V 38%nat) < 2 ^ 64 -> 0 <= (V 39%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 -> 0 <= (V 41%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 48) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 40%nat) -> getr R (reg 18) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) -> getr R (reg 19) = Z_to_bv 64 (V 41%nat) ->
  140735332487216 <= (V 2%nat) <= 140737488355328 -> aligned (V 2%nat) 16 -> 140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 ->
  L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 -> L5.u64_at RSEGS M ((V 2%nat) - 8) (V 35%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 16) (V 36%nat) ->
  L5.u64_at RSEGS M ((V 2%nat) - 24) (V 37%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 32) (V 38%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 40) (V 39%nat) -> 10 <= (V 40%nat) <= 99 ->
  1 <= (V 41%nat) <= 9 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbcfbc M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_feG -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 (V 35%nat)
        /\ getr R' (reg 2) = Z_to_bv 64 (V 2%nat)
        /\ getr R' (reg 8) = Z_to_bv 64 (V 36%nat)
        /\ getr R' (reg 9) = Z_to_bv 64 (V 37%nat)
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ bv_unsigned (getr R' (reg 11)) = (Z.land (((Z.land (((V 40%nat) + ((18446744073709551606 * (V 41%nat)) mod 2 ^ 64)) mod 2 ^ 64) 18446744073709551567) + 48) mod 2 ^ 64) 255)
        /\ getr R' (reg 18) = Z_to_bv 64 (V 38%nat)
        /\ getr R' (reg 19) = Z_to_bv 64 (V 39%nat)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_034 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_feE := BndP_Na_130.LibSegNa_va_feE.
Definition KS_va_feE : list nat := Eval vm_compute in (BG.kept_list 80 Pva_feE.regs0 Pva_feE.regs_out0).
Lemma KS_va_feE_ok : BG.kept_ok 80 Pva_feE.regs0 Pva_feE.regs_out0 KS_va_feE = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_035 ())). Qed.
Lemma va_feE_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 -> 0 <= (V 41%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 48) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 40%nat) -> getr R (reg 18) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) -> getr R (reg 19) = Z_to_bv 64 (V 41%nat) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  100 <= (V 40%nat) <= 999 -> 1 <= (V 41%nat) <= 9 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbd004 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_feE -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 774196
        /\ getr R' (reg 9) = Z_to_bv 64 ((V 40%nat) + ((-100) * (V 41%nat)))
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ bv_unsigned (getr R' (reg 11)) = (((Z.land (((205 * (Z.land (((V 40%nat) + ((18446744073709551516 * (V 41%nat)) mod 2 ^ 64)) mod 2 ^ 64) 255)) mod 2 ^ 64) / 2048) 18446744073709551567) + 48) mod 2 ^ 64)
        /\ bv_unsigned (getr R' (reg 12)) = (Z.land (((V 40%nat) + ((18446744073709551516 * (V 41%nat)) mod 2 ^ 64)) mod 2 ^ 64) 255)
        /\ bv_unsigned (getr R' (reg 19)) = (((205 * (Z.land (((V 40%nat) + ((18446744073709551516 * (V 41%nat)) mod 2 ^ 64)) mod 2 ^ 64) 255)) mod 2 ^ 64) / 2048)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_036 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_feF := BndP_Na_131.LibSegNa_va_feF.
Definition KS_va_feF : list nat := Eval vm_compute in (BG.kept_list 80 Pva_feF.regs0 Pva_feF.regs_out0).
Lemma KS_va_feF_ok : BG.kept_ok 80 Pva_feF.regs0 Pva_feF.regs_out0 KS_va_feF = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_037 ())). Qed.
Lemma va_feF_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 35%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 37%nat) < 2 ^ 64 -> 0 <= (V 38%nat) < 2 ^ 64 -> 0 <= (V 39%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 -> 0 <= (V 41%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 48) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 40%nat) -> getr R (reg 18) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) -> getr R (reg 19) = Z_to_bv 64 (V 41%nat) ->
  140735332487216 <= (V 2%nat) <= 140737488355328 -> aligned (V 2%nat) 16 -> 140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 ->
  L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 -> L5.u64_at RSEGS M ((V 2%nat) - 8) (V 35%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 16) (V 36%nat) ->
  L5.u64_at RSEGS M ((V 2%nat) - 24) (V 37%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 32) (V 38%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 40) (V 39%nat) -> 0 <= (V 40%nat) <= 99 ->
  0 <= (V 41%nat) <= 9 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbd034 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_feF -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 (V 35%nat)
        /\ getr R' (reg 2) = Z_to_bv 64 (V 2%nat)
        /\ getr R' (reg 8) = Z_to_bv 64 (V 36%nat)
        /\ getr R' (reg 9) = Z_to_bv 64 (V 37%nat)
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ bv_unsigned (getr R' (reg 11)) = (Z.land (((Z.land (((V 40%nat) + ((18446744073709551606 * (V 41%nat)) mod 2 ^ 64)) mod 2 ^ 64) 18446744073709551567) + 48) mod 2 ^ 64) 255)
        /\ getr R' (reg 18) = Z_to_bv 64 (V 38%nat)
        /\ getr R' (reg 19) = Z_to_bv 64 (V 39%nat)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeP ()) [] (Mh_0208_blobs1.kr_b_038 ())). Qed.
(* [comment removed for export] *)

End VASFEP.

End VaSFeP.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require LeanFeed2. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.LeanFeed. From Stdlib Require ZArith List Lia Bool FunctionalExtensionality. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0089. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0135. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0092. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0179. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.asan.Mh_0210. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require L5ADetailHR. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0018. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0024. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PgV8. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0225.
Module VaSFe.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require Import LeanFeed2.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.LeanFeed.
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool FunctionalExtensionality.
From stdpp.bitvector Require Import definitions.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0089. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0135. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0092. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0179. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.asan.Mh_0210. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require L5ADetailHR. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0018. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0024. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PgV8. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0225. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.CatExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030.CatSim OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.SeqExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.StoreOk OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.Hoare OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.ShapeAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.SpinAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.AsanAcct OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.HeapIface OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0089.HeapIfaceA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0089.IcptIfaceA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.LibIface OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.L5Defs OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.L5Core OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0135.L5CoreKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5Kn OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5KnA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0092.L5LazyA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0179.L5DefsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.asan.Mh_0210.L5CoreA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.asan.Mh_0210.L5CoreSpecsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.asan.Mh_0210.L5StepAR OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.asan.Mh_0210.L5CoreBR OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.asan.L5ADetailHR OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0018.PmLayout OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0024.PmLayoutA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0018.PnLayout OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0024.PnLayoutA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.PmModel OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.PmModelFacts OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.PmStatics OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0092.PmStaticsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0089.HeapIfaceAMx OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.PmSpecs OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.PmParSpecs OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PmSpecsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PmSpecsAX OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnSpecsAa OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PmModelFactsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnStepA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnASrcKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.PgSrc OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PgV8 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PgSrcA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PgV8A OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnRunBA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PgTxtKitA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0018.PnLayoutQ OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0024.PnLayoutQA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0092.PnQStaticsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0092.PnModelA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnRunA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnVisA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnRunAa OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnAdStrA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0225.VaSpec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0225.VaKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0208.VaSFeP.
Import ListNotations.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_VaSFe () := "C47Corelib7Classes9Morphisms6ProperC47Corelib7Classes?RelationClasses9ReflexiveC47Corelib7Classes9Morphisms:forall_defC46Stdlib5Lists4List2InC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55rangeC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR6regionC47Corelib4Init5Logic8eq_ind_rC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K@nth_error_singleC56Stdlib6ZArith6BinInt1Z6of_natC56Stdlib6ZArith6BinInt1Z3addC47Corelib5Lists7ListDef3seqC46Stdlib5Lists4List7forallbC56Stdlib6ZArith6BinInt1Z2leC56Stdlib6ZArith6BinInt1Z2ltI47Corelib4Init5Logic3and00C47Corelib4Init5Logic3iffC47Corelib7Classes9MorphismsDiff_impl_subrelationC46Stdlib5Lists4List>forallb_forallC56Stdlib6ZArith6BinInt1Z3subC56Stdlib6ZArith6BinInt1Z6to_natI47Corelib4Init5Logic2eq00C47Corelib4Init5Logic8iff_reflC46Stdlib9micromega;ZifyClasses3injC46Stdlib9micromega;ZifyClasses5mkrelC56Stdlib6ZArith4Znat5Nat2Z9is_nonnegC56Stdlib6ZArith6BinInt1Z8max_specI47Corelib4Init5Logic2or00K47Corelib4Init9Datatypes3nat02K46Stdlib9micromega=RingMicromega5Psatz02K47Corelib7Numbers7BinNums1Z03K46Stdlib9micromega7EnvRing3Pol01K46Stdlib9micromega=RingMicromega5Psatz04K47Corelib4Init9Datatypes4list01I47Corelib4Init9Datatypes4list00K46Stdlib9micromega6VarMap1t02K46Stdlib9micromega6VarMap1t03I46Stdlib9micromega6VarMap1t00I46Stdlib9micromega=RingMicromega7Formula00K47Corelib7Numbers7BinNums8positive02K46Stdlib9micromega7EnvRing5PExpr02K47Corelib7Numbers7BinNums8positive01K46Stdlib9micromega7EnvRing5PExpr04K46Stdlib9micromega7EnvRing5PExpr01K47Corelib4Init9Datatypes6option02K46Stdlib9micromega7EnvRing5PExpr03C46Stdlib9micromega5Tauto8BFormulaK47Corelib4Init5Logic2eq01C46Stdlib9micromega:ZMicromega=ZTautoCheckerC46Stdlib9micromega6VarMap4findC46Stdlib9micromega:ZMicromegaCZTautoChecker_soundC46Stdlib9micromega;ZifyClasses;rew_iff_revI47Corelib4Init5Peano2le00C47Corelib4Init3Nat3addC47Corelib4Init5Peano2ltC46Stdlib5Lists4List6in_seqC46Stdlib9micromega;ZifyClasses9and_morphK46Stdlib9micromega6VarMap1t01C47Corelib4Init5Logic6eq_indc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE4allrC56Stdlib6ZArith6BinInt1Z3maxC46Stdlib9micromega;ZifyClasses5mkappC46Stdlib9micromega;ZifyClasses6mkapp2K46Stdlib9micromega=RingMicromega5Psatz06K46Stdlib9micromega:ZMicromega;ZArithProof02K47Corelib4Init9Datatypes4list02K46Stdlib9micromega5Tauto8GFormula03K46Stdlib9micromega=RingMicromega7Formula01K46Stdlib9micromega5Tauto8GFormula04K46Stdlib9micromega5Tauto8GFormula05K46Stdlib9micromega5Tauto8GFormula06K46Stdlib9micromega5Tauto8GFormula08I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01I47Corelib7Numbers7BinNums1Z00K47Corelib7Numbers7BinNums1Z01I47Corelib4Init9Datatypes3nat00C46Stdlib9micromega8ZifyInst@of_nat_to_nat_eqK46Stdlib9micromega:ZMicromega;ZArithProof01I46Stdlib9micromega:ZMicromega;ZArithProof00C46Stdlib9micromega5Tauto5eKindI47Corelib4Init9Datatypes4unit00K46Stdlib9micromega5Tauto4kind01K46Stdlib9micromega=RingMicromega3Op201K47Corelib4Init9Datatypes4unit01K46Stdlib9micromega=RingMicromega3Op203C56Stdlib6ZArith4Znat5Nat2Z6inj_leK47Corelib4Init9Datatypes3nat01C56Stdlib5Arith8PeanoNat3Nat3addC56Stdlib6ZArith4Znat5Nat2Z7inj_addC56Stdlib6ZArith4Znat5Nat2Z6inj_ltK46Stdlib9micromega=RingMicromega3Op205C46Stdlib9micromega8ZifyInst7Inj_Z_ZK47Corelib7Numbers7BinNums8positive03C47Corelib7Classes9Morphisms:respectfulC47Corelib7Classes9MorphismsBsubrelation_properC46Stdlib5Lists4List2hdK47Corelib7Numbers7BinNums1Z02C46Stdlib9micromega;ZifyClasses6eq_iffc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE7allr_okc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE5c_t10c6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE5e_t10C56Stdlib6ZArith6BinInt1Z3divC56Stdlib6ZArith6BinInt1Z3eqbC56Stdlib6ZArith6BinInt1Z3lebC47Corelib4Init9Datatypes4andbC46Stdlib4Bool4Bool=andb_true_iffC47Corelib7Classes9Morphisms@subrelation_reflC47Corelib7Classes9MorphismsFsubrelation_respectfulC47Corelib7Classes9MorphismsIreflexive_reflexive_proxyC47Corelib7Classes9MorphismsFreflexive_proper_proxyC56Stdlib6ZArith6BinInt1Z6eqb_eqC56Stdlib6ZArith6BinInt1Z6leb_leK47Corelib4Init5Logic3and01C47Corelib7Program6Basics4implC47Corelib7Classes>Morphisms_Prop@and_iff_morphismC47Corelib7Classes?RelationClasses=iff_Reflexivec6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE6c_h100c6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE6e_h100C56Stdlib6ZArith6BinInt1Z3powC56Stdlib6ZArith6BinInt1Z6moduloC56Stdlib6ZArith6BinInt1Z3mulC56Stdlib6ZArith6BinInt1Z>pow_pos_nonnegC56Stdlib6ZArith6BinInt1Z:pow_nonnegK47Corelib7Numbers7BinNums1N02K46Stdlib9micromega7EnvRing5PExpr07c6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE6c_t10nc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE6e_t10nI47Corelib4Init5Logic4True00c6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE7c_h100nc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE7e_h100nc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE6c_restc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE6e_c10bc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE6e_restc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE6e_t10bc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE6c_unitc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE6e_unitC46Stdlib9micromega9SatDivModCZ_div_nonneg_nonnegC56Stdlib6ZArith6BinInt1Z7div_modC47Corelib4Init5Logic3notC56Stdlib6ZArith6BinInt1Z=mod_pos_boundC56Stdlib6ZArith6BinInt1Z=mod_neg_boundC56Stdlib5omega8PreOmega1Z;div_0_r_extC56Stdlib5omega8PreOmega1Z;mod_0_r_extI45stdpp9bitvector;definitions2bv00C45stdpp9bitvector;definitions;bv_unsignedC45stdpp9bitvector;definitions5bv_eqC45stdpp9bitvector;definitions7Z_to_bvC45stdpp9bitvector;definitions7bv_wrapC45stdpp9bitvector;definitions@Z_to_bv_unsignedI47Corelib7Numbers7BinNums1N00C45stdpp9bitvector;definitionsCZ_to_bv_bv_unsignedC47Corelib4Init5Logic6eq_symK46Stdlib9micromega7EnvRing5PExpr05K46Stdlib9micromega5Tauto8GFormula07C56Stdlib6ZArith6BinInt1Z7mod_addc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE8zbv_congI47Corelib4Init5Logic5False00C4ELinuxProcessSemantics5Riscv7Prelude5bvmapI47Corelib4Init9Datatypes6option00c6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE3ownc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE5ocellC6ARocqVerifyHarness?AgentSubmission7Mh_00906L5Core3L5C8agree_onC6ARocqVerifyHarness?AgentSubmission7Mh_00906L5Core3L5C<u64_at_agreeC4ARocqVerifyHarness?AgentSubmission8PropExec4getrC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u64_atC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA6fframeC46Stdlib5Lists4List4inclK45stdpp9bitvector;definitions2bv01C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55ra_okC5ARocqVerifyHarness?AgentSubmission7Mh_00188PmLayout5pa_gpC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA5hl_tpC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02107L5CoreA4L5CA4astkC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA;shadow_zeroC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA8ar_sptopC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L57definedC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA<ar_stack_topC46Stdlib9micromega9SatDivModCZ_mod_nonneg_nonnegK46Stdlib9micromega=RingMicromega5Psatz07K46Stdlib9micromega=RingMicromega5Psatz05K46Stdlib9micromega:ZMicromega;ZArithProof03K47Corelib4Init5Logic4True01C5ARocqVerifyHarness?AgentSubmission7Mh_00249PnLayoutA6ADDR_AC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA6FE_SCRC47Corelib4Init9Datatypes3fstC47Corelib4Init9Datatypes3sndC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA6PB_SCRc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE9own_agreec6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE8sp_factsC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA2N1C6ARocqVerifyHarness?AgentSubmission7Mh_02136PnRunA4PQRA3FCMI47Corelib4Init9Datatypes4prod00C6ARocqVerifyHarness?AgentSubmission7Mh_02255VaKit3VAK3invC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L59img_clearC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA4ahidC6ARocqVerifyHarness?AgentSubmission7Mh_01797L5DefsA3L5A4avisC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA8zeros_atC5ARocqVerifyHarness?AgentSubmission7Mh_00368AsanAcct9mrestrictC6ARocqVerifyHarness?AgentSubmission7Mh_00907PmModel2PM6vs_ownC47Corelib4Init9Datatypes3appC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA6vml_ofC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA6ri_invC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02107L5CoreA4L5CA9amodel_okC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA8model_rtK47Corelib4Init9Datatypes4prod01C6ARocqVerifyHarness?AgentSubmission7Mh_00907PmModel2PM7vs_sizeC6ARocqVerifyHarness?AgentSubmission7Mh_02138PmSpecsA5PMSPA2HVC6ARocqVerifyHarness?AgentSubmission7Mh_00928PnModelA4PQMA6pot_ksC5ARocqVerifyHarness?AgentSubmission7Mh_00368AsanAcctAmrestrict_visiblec6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE4GOWNC6ARocqVerifyHarness?AgentSubmission7Mh_02255VaKit3VAK6pfactsC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L58writableC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02108L5StepAR5L5SAR2ekC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02108L5StepAR5L5SAR2dkC6ARocqVerifyHarness?AgentSubmission7Mh_02138PmSpecsA5PMSPA3scAC6ARocqVerifyHarness?AgentSubmission7Mh_0092:PmStaticsA5PMSTA8base_okAC6ARocqVerifyHarness?AgentSubmission7Mh_00907PmSpecs4PMSP;credit_keepC6ARocqVerifyHarness?AgentSubmission7Mh_00928PnModelA4PQMA5ks_okC6ARocqVerifyHarness?AgentSubmission7Mh_00928PnModelA4PQMA7kstr_atC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA6FE_MAXc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE5WIMG0c6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE6HSCR16c6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE3HFRc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE4HSCRc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE4GOCRc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE5NEED1C6ARocqVerifyHarness?AgentSubmission7Mh_02138PmSpecsA5PMSPA4accAI4ELinuxProcessSemantics?LinuxProcessSem5State5Model00I6ARocqVerifyHarness?AgentSubmission7Mh_00907PmModel2PM4vstr00C5ARocqVerifyHarness?AgentSubmission7Mh_00849HeapIface6creditK47Corelib4Init9Datatypes4bool02c6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE2RIC5ARocqVerifyHarness?AgentSubmission7Mh_00849HeapIface>regs_preservedC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02108L5StepAR5L5SAR?cs_of_preservedC6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K9In_of_memC56Stdlib5Arith8PeanoNat3Nat3eqbC46Stdlib5Lists4List7existsbC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02108L5StepAR5L5SAR6cs_allI47Corelib4Init5Logic2ex00C46Stdlib5Lists4List>existsb_existsC56Stdlib5Arith8PeanoNat3Nat6eqb_eqK47Corelib4Init5Logic2or01C47Corelib4Init5Logic9False_indK47Corelib4Init5Logic2or02C47Corelib4Init5Logic6or_indC6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K3rl3C6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K3rl4C5ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs4SCFGC47Corelib4Init5Logic7and_indC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02108L5StepAR5L5SARBpreserved_by_indexC6ARocqVerifyHarness?AgentSubmission7Mh_00907PmSpecs4PMSP3cfgC5ARocqVerifyHarness?AgentSubmission7Mh_00367SpinAlg9srealizesC6ARocqVerifyHarness?AgentSubmission7Mh_02255VaKit3VAK4TAILC4ARocqVerifyHarness?AgentSubmission5BMode;bm_off_instI4ARocqVerifyHarness?AgentSubmission8PropExec7FPState00C6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K3rl1C6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K3rl2C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L5<writable_subc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE6vfactsc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE4ownvC6ARocqVerifyHarness?AgentSubmission7Mh_02255VaKit3VAK7bvu_rngc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7alignedc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;va_feD_concC5ARocqVerifyHarness?AgentSubmission7Mh_00387StoreOk9mem_growsC4ARocqVerifyHarness?AgentSubmission8PropExec7seg_romC4ARocqVerifyHarness?AgentSubmission8PropExec4mkstc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE3FINI5ARocqVerifyHarness?AgentSubmission7Mh_00306CatSim6msteps00C6ARocqVerifyHarness?AgentSubmission7Mh_02255VaKit3VAK8PIECE_roc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9KS_va_feDc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE7unit_okC56Stdlib6ZArith6BinInt1ZBdiv_le_lower_boundC56Stdlib6ZArith6BinInt1ZBdiv_lt_upper_boundc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;va_feG_concc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE?zbv_of_unsignedC56Stdlib6ZArith6BinInt1Z4landc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9KS_va_feGc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;va_feF_concc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9KS_va_feFc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE7h100_okc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE7rest_okc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;va_feE_concc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE8RI_piecec6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE7RI_gptpc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE6ra_litc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE7RI_callC35stdpp7tactics<f_equal_helpc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE6STEP_FC6ARocqVerifyHarness?AgentSubmission7Mh_02255VaKit3VAK4CALLc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9KS_va_feEC46Stdlib6ZArith:ZArith_dec;Z_le_gt_decC56Stdlib6ZArith6BinInt1Z2gtI47Corelib4Init6Specif7sumbool00c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP=va_feCp1_concc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE6STEP_Dc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE6t10_okc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP=va_feCp2_concc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE6STEP_Gc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP=va_feCp3_concc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE6STEP_Ec6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;KS_va_feCp1K46Stdlib9micromega=RingMicromega3Op206c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;KS_va_feCp2c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;KS_va_feCp3c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP=va_feCn1_concc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE7zbv_negc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE7t10n_okc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP=va_feCn2_concc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE8h100n_okc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP=va_feCn3_concc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;KS_va_feCn1c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;KS_va_feCn2c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;KS_va_feCn3c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP<va_feBp_concc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE7STEP_Cpc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP<va_feBn_concc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE7STEP_Cnc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP:KS_va_feBpc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP:KS_va_feBnc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;va_feA_concC6ARocqVerifyHarness?AgentSubmission7Mh_01797L5DefsA3L5A:u64_at_visC47Corelib4Init5Logic5proj1c6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE6STEP_BC6ARocqVerifyHarness?AgentSubmission7Mh_02255VaKit3VAK4INITC6ARocqVerifyHarness?AgentSubmission7Mh_02255VaKit3VAK5PIECEc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9KS_va_feAC6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K4rl10C6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K4rl11C6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA7entryAsC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA7ffroomNC6ARocqVerifyHarness?AgentSubmission7Mh_02138PmSpecsA5PMSPA5ffrsAC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA6rcellAC6ARocqVerifyHarness?AgentSubmission7Mh_02138PmSpecsA5PMSPA5aobjAC6ARocqVerifyHarness?AgentSubmission7Mh_00907PmSpecs4PMSP9credit_leC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02107L5CoreA4L5CA6ahpresc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSFe5VASFE7fe_bodyC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA8fe_specAC5ARocqVerifyHarness?AgentSubmission7Mh_00368ShapeAlg4TSetI4ELinuxProcessSemantics?LinuxProcessSem5State5event00C6ARocqVerifyHarness?AgentSubmission7Mh_02138PnAdStrA5PQASA5SMMAX". Local Ltac lia := L5FastLia.plia.

Module VASFE.
Import L5A L5SAR.
Ltac inl := apply L5K.In_of_mem; vm_compute; reflexivity.
Abbreviation reg i := (Z_to_bv 5 (Z.of_nat i)).
Abbreviation RSEGS := Asan.M.loaded_segments.
Abbreviation mem := (word -> option byte).
Abbreviation AD := PMA.AD.
Abbreviation accA := PMSPA.accA.
Abbreviation kstr_at := (PQMA.kstr_at RSEGS accA).
Abbreviation bvu x := (bv_unsigned x).

(* [comment removed for export] *)
Ltac fd := lazymatch goal with
  | |- _ <= _ <= _ => first [apply VAK.bvu_rng | Lia.lia]
  | |- _ <= _ < _ => first [apply VAK.bvu_rng | Lia.lia]
  | |- _ \/ _ => Lia.lia
  | |- VASFEP.aligned _ _ => unfold VASFEP.aligned; assumption
  | |- _ => assumption
  end.

(* [comment removed for export] *)
Definition allr (f : Z -> bool) (lo : Z) (n : nat) : bool := forallb (fun i => f (lo + Z.of_nat i)) (seq 0 n).
Lemma allr_ok f lo n k : allr f lo n = true -> lo <= k < lo + Z.of_nat n -> f k = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) [] (Mh_0208_blobs1.kr_b_039 ())). Qed.
(* [comment removed for export] *)
Definition e_t10 (k : Z) : Z := (205 * k) / 2048.
Definition e_h100 (k : Z) : Z := ((5243 * (((281474976710656 * k) mod 2 ^ 64) / 1125899906842624)) mod 2 ^ 64) / 131072.
(* [comment removed for export] *)
Definition e_t10n (v : Z) : Z := ((-205) * v) mod 18446744073709551616 / 2048.
Definition e_h100n (v : Z) : Z := ((5243 * (((18446462598732840960 * v) mod 2 ^ 64) / 1125899906842624)) mod 2 ^ 64) / 131072.
(* [comment removed for export] *)
Definition e_rest (k h : Z) : Z := Z.land ((k + ((18446744073709551516 * h) mod 2 ^ 64)) mod 2 ^ 64) 255.
Definition e_t10b (k h : Z) : Z := ((205 * (e_rest k h)) mod 2 ^ 64) / 2048.
Definition e_c10b (k h : Z) : Z := ((Z.land (e_t10b k h) 18446744073709551567) + 48) mod 2 ^ 64.
(* [comment removed for export] *)
Definition e_unit (t d : Z) : Z := Z.land (((Z.land ((t + ((18446744073709551606 * d) mod 2 ^ 64)) mod 2 ^ 64) 18446744073709551567) + 48) mod 2 ^ 64) 255.
Definition c_t10 (k : Z) : bool := (e_t10 k =? k / 10) && (1 <=? k / 10) && (k / 10 <=? 9).
Lemma t10_ok k : 10 <= k <= 99 -> e_t10 k = k / 10 /\ 1 <= k / 10 <= 9.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) [] (Mh_0208_blobs1.kr_b_040 ())). Qed.
Definition c_h100 (k : Z) : bool := (e_h100 k =? k / 100) && (1 <=? k / 100) && (k / 100 <=? 9) && ((e_h100 k + 48) mod 2 ^ 64 =? k / 100 + 48) && (0 <=? k - 100 * (k / 100)) && (k - 100 * (k / 100) <=? 99).
Lemma h100_ok k : 100 <= k <= 999 -> e_h100 k = k / 100 /\ 1 <= k / 100 <= 9 /\ (e_h100 k + 48) mod 2 ^ 64 = k / 100 + 48 /\ 0 <= k - 100 * (k / 100) <= 99.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) [] (Mh_0208_blobs1.kr_b_041 ())). Qed.
Definition c_t10n (v : Z) : bool := (e_t10n v =? (2 ^ 64 - v) / 10) && (1 <=? (2 ^ 64 - v) / 10) && ((2 ^ 64 - v) / 10 <=? 9).
Lemma t10n_ok v : 2 ^ 64 - 99 <= v <= 2 ^ 64 - 10 -> e_t10n v = (2 ^ 64 - v) / 10 /\ 1 <= (2 ^ 64 - v) / 10 <= 9.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) [] (Mh_0208_blobs1.kr_b_042 ())). Qed.
Definition c_h100n (v : Z) : bool := (e_h100n v =? (2 ^ 64 - v) / 100) && (1 <=? (2 ^ 64 - v) / 100) && ((2 ^ 64 - v) / 100 <=? 9) && ((e_h100n v + 48) mod 2 ^ 64 =? (2 ^ 64 - v) / 100 + 48).
Lemma h100n_ok v : 2 ^ 64 - 999 <= v <= 2 ^ 64 - 100 -> e_h100n v = (2 ^ 64 - v) / 100 /\ 1 <= (2 ^ 64 - v) / 100 <= 9 /\ (e_h100n v + 48) mod 2 ^ 64 = (2 ^ 64 - v) / 100 + 48.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) [] (Mh_0208_blobs1.kr_b_043 ())). Qed.
Definition c_rest (k : Z) : bool := let t := k - 100 * (k / 100) in (e_rest k (k / 100) =? t) && (e_t10b k (k / 100) =? t / 10) && (0 <=? t / 10) && (t / 10 <=? 9) && (e_c10b k (k / 100) =? t / 10 + 48).
Lemma rest_ok k : 100 <= k <= 999 ->
  e_rest k (k / 100) = k - 100 * (k / 100) /\ e_t10b k (k / 100) = (k - 100 * (k / 100)) / 10 /\ 0 <= (k - 100 * (k / 100)) / 10 <= 9 /\ e_c10b k (k / 100) = (k - 100 * (k / 100)) / 10 + 48.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) [] (Mh_0208_blobs1.kr_b_044 ())). Qed.
Definition c_unit (t : Z) : bool := (48 <=? e_unit t (t / 10)) && (e_unit t (t / 10) <=? 57).
Lemma unit_ok t : 0 <= t <= 99 -> 48 <= e_unit t (t / 10) <= 57.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) [] (Mh_0208_blobs1.kr_b_045 ())). Qed.
Lemma zbv_cong (a b : Z) : a mod 2 ^ 64 = b mod 2 ^ 64 -> Z_to_bv 64 a = Z_to_bv 64 b.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) [] (Mh_0208_blobs1.kr_b_046 ())). Qed.
Lemma zbv_of_unsigned (w : word) (v : Z) : bv_unsigned w = v -> w = Z_to_bv 64 v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) [] (Mh_0208_blobs1.kr_b_047 ())). Qed.
Lemma zbv_neg (v : Z) : Z_to_bv 64 ((-1) * v) = Z_to_bv 64 (2 ^ 64 - v).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) [] (Mh_0208_blobs1.kr_b_048 ())). Qed.
Lemma ra_lit v : 0 <= v < 2 ^ 47 -> v mod 2 = 0 -> L5.ra_ok v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) [] (Mh_0208_blobs1.kr_b_049 ())). Qed.

(* [comment removed for export] *)
Definition own (E : Z) (R : bvmap 5 word) (M : mem) : Prop :=
  L5.u64_at RSEGS M (E - 8) (bvu (getr R (reg 1))) /\ L5.u64_at RSEGS M (E - 16) (bvu (getr R (reg 8)))
  /\ L5.u64_at RSEGS M (E - 24) (bvu (getr R (reg 9))) /\ L5.u64_at RSEGS M (E - 32) (bvu (getr R (reg 18)))
  /\ L5.u64_at RSEGS M (E - 40) (bvu (getr R (reg 19))).
Definition ocell (E : Z) (a : Z) : Prop := E - 40 <= a < E.
Lemma own_agree E R M1 M1' : 0 <= E - 40 -> E <= 2 ^ 64 ->
  own E R M1 -> (forall a, ocell E a -> M1' (Z_to_bv 64 a) = M1 (Z_to_bv 64 a)) -> own E R M1'.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) [] (Mh_0208_blobs1.kr_b_050 ())). Qed.

Section WithHeap.
Context {SCFG_P : ScfgP}.
Variables (L : asan_layout) (ar : asan_run) (C : asan_statics_cells) (HI : asan_iface).
Hypothesis LY : PMA.layout L C.
Hypothesis HIok : HAJ.asan_iface_okR L ar C SCFG HI.
Hypothesis PB : PQASA.pb_specA RSEGS AD L ar HI 0xf4640.
Abbreviation HV := (PMSPA.HV L ar).

Section Body.
Variables (K : TSet) (R : bvmap 5 word) (M : mem) (model : Model) (LB : list (Z * Z)) (FF LK : list fframe) (Aw : list (Z * Z)) (cr : credit)
          (so os sp r SM g : Z) (x0 : PM.vstr).
Hypothesis HH : ri_inv HI (PM.vs_own x0 ++ LB) FF LK cr Aw M (vml_of model).
Hypothesis AM : L5CA.amodel_ok Aw model.
Hypothesis K0 : K [].
Hypothesis ENT : VA.entryAs AD L ar R M sp r VA.FE_SCR.
Hypothesis FRM : VA.ffroomN VA.N1 FF LK.
Hypothesis FRS : PMSPA.ffrsA FF sp.
Hypothesis RSO : VA.rcellA ar M sp so 8.
Hypothesis SO8 : so mod 8 = 0.
Hypothesis CSO : L5.u64_at RSEGS M so os.
Hypothesis AOS : PMSPA.aobjA FF os 24.
Hypothesis OS8 : os mod 8 = 0.
Hypothesis KS0 : kstr_at M os x0.
Hypothesis KOK0 : PQMA.ks_ok SM x0 g.
Hypothesis SMX : SM <= PQASA.SMMAX.
Hypothesis SZ0 : PM.vs_size x0 + VA.FE_MAX <= SM.
Hypothesis BASE : PMSTA.base_okA RSEGS AD M.
Hypothesis CR0 : PMSP.credit_le (PMSPA.scA L (PQMA.pot_ks HV SM x0 g)) cr.
Hypothesis KONT : forall (fx' : FPState) (R' : bvmap 5 word) (M' : mem) (model' : Model) (LK' : list fframe) (Aw' : list (Z * Z)) (x' : PM.vstr) (g' : Z) (cr' : credit),
    regs_preserved R R' -> True -> kstr_at M' os x' -> PQMA.ks_ok SM x' g' ->
    PM.vs_size x0 <= PM.vs_size x' <= PM.vs_size x0 + VA.FE_MAX ->
    L5CA.ahpres L ar LB FF sp VA.FE_SCR ((os, 24) :: []) M M' ->
    PMSP.credit_keep cr cr' (PMSPA.scA L (PQMA.pot_ks HV SM x0 g)) (PMSPA.scA L (PQMA.pot_ks HV SM x' g')) ->
    model_rt model model' -> incl LK' LK -> incl Aw Aw' -> L5CA.amodel_ok Aw' model' ->
    ri_inv HI (PM.vs_own x' ++ LB) FF LK' cr' Aw' M' (vml_of model') ->
    srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx' R' r M' model') K.

Local Notation OWN := (own sp R).
Local Notation OC := (ocell sp).
Local Notation TT := (fun _ : mem => True).
Local Notation PT := (fun _ : bvmap 5 word => True).

Lemma sp_facts : 140735332487168 + 14384 <= sp /\ sp <= 140737488355328 /\ sp mod 16 = 0 /\ 0 <= r < 2 ^ 47 /\ r mod 2 = 0.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_051 ())). Qed.
Lemma WIMG0 : forall rr : L5.range, In rr [] -> 0 <= fst rr /\ fst rr + snd rr <= 7036928.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_052 ())). Qed.
Lemma HSCR16 : VA.FE_SCR mod 16 = 0.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_053 ())). Qed.
Lemma HFR : 0 <= 48 /\ 48 mod 16 = 0.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_054 ())). Qed.
Lemma HSCR : VA.PB_SCR + 48 <= VA.FE_SCR.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_055 ())). Qed.
Lemma GOCR : forall a, OC a -> sp - 48 <= a < sp.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_056 ())). Qed.
Lemma GOWN : forall M1 M1' : mem, OWN M1 -> (forall a, OC a -> M1' (Z_to_bv 64 a) = M1 (Z_to_bv 64 a)) -> OWN M1'.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_057 ())). Qed.
Lemma NEED1 : forall k, In k PQRA.FCM -> 1 <= VA.N1 k.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_058 ())). Qed.

(* [comment removed for export] *)
Local Notation KIT f := (f L ar C HI LY HIok 0xf4640 PB K R M model LB FF LK Aw cr so os sp r SM g x0 VA.FE_SCR VA.N1 (@nil L5.range) VA.FE_MAX PT
                           HH AM K0 ENT FRM FRS RSO SO8 CSO AOS OS8 KS0 KOK0 SMX SZ0 BASE CR0 KONT WIMG0 HSCR16 48 OC OWN HFR HSCR GOCR GOWN NEED1).
Local Notation INV := (VAK.inv L ar HI M model LB FF LK Aw cr os sp SM g x0 VA.FE_SCR (@nil L5.range)).

(* [comment removed for export] *)
Lemma ownv n M1 model1 LK1 Aw1 x g1 cr1 : INV OWN n M1 model1 LK1 Aw1 x g1 cr1 -> OWN (mrestrict (ahid Aw1 model1) M1).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_059 ())). Qed.

(* [comment removed for export] *)
Definition RI (Rx : bvmap 5 word) : Prop :=
  getr Rx (reg 2) = Z_to_bv 64 (sp - 48) /\ getr Rx (reg 8) = Z_to_bv 64 so /\ getr Rx (reg 18) = Z_to_bv 64 (so / 8 + 2147450880)
  /\ (forall j, In j [3; 4; 20; 21; 22; 23; 24; 25; 26; 27]%nat -> getr Rx (reg j) = getr R (reg j)).
Lemma RI_call R1 R2 : RI R1 -> regs_preserved R1 R2 -> RI R2.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_060 ())). Qed.
Lemma RI_piece R1 R2 (ks : list nat) : RI R1 -> (forall j, In j ks -> getr R2 (reg j) = getr R1 (reg j)) ->
  forallb (fun j => existsb (Nat.eqb j) ks) [2; 8; 18; 3; 4; 20; 21; 22; 23; 24; 25; 26; 27]%nat = true -> RI R2.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_061 ())). Qed.
Lemma RI_gptp R1 : RI R1 -> getr R1 (reg 3) = Z_to_bv 64 (pa_gp AD) /\ getr R1 (reg 4) = Z_to_bv 64 (hl_tp L).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_062 ())). Qed.

(* [comment removed for export] *)
Lemma FIN (n c : Z) (fx1 : FPState) (R1 R2 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) (ks : list nat) :
  INV OWN n M1 model1 LK1 Aw1 x1 g1 cr1 -> 0 <= n < 4 -> RI R1 ->
  (forall j, In j ks -> getr R2 (reg j) = getr R1 (reg j)) ->
  forallb (fun j => existsb (Nat.eqb j) ks) [3; 4; 20; 21; 22; 23; 24; 25; 26; 27]%nat = true ->
  getr R2 (reg 1) = Z_to_bv 64 (bvu (getr R (reg 1))) -> getr R2 (reg 2) = Z_to_bv 64 sp ->
  getr R2 (reg 8) = Z_to_bv 64 (bvu (getr R (reg 8))) -> getr R2 (reg 9) = Z_to_bv 64 (bvu (getr R (reg 9))) ->
  getr R2 (reg 18) = Z_to_bv 64 (bvu (getr R (reg 18))) -> getr R2 (reg 19) = Z_to_bv 64 (bvu (getr R (reg 19))) ->
  getr R2 (reg 10) = Z_to_bv 64 os -> getr R2 (reg 11) = Z_to_bv 64 c -> 0 <= c < 256 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R2 0xf4640 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_063 ())). Qed.

(* [comment removed for export] *)
Lemma vfacts own' n M1 model1 LK1 Aw1 x g1 cr1 :
  INV own' n M1 model1 LK1 Aw1 x g1 cr1 ->
  (L5.img_clear (mrestrict (ahid Aw1 model1) M1) 65536 1409024 /\ L5.u64_at RSEGS (mrestrict (ahid Aw1 model1) M1) 1440376 2147450880)
  /\ L5.writable RSEGS (mrestrict (ahid Aw1 model1) M1) (sp - 40) 40
  /\ (L5.u64_at RSEGS (mrestrict (ahid Aw1 model1) M1) so os /\ L5KA.zeros_at (mrestrict (ahid Aw1 model1) M1) (so / 8 + 2147450880) 1)
  /\ (140735332487216 <= sp <= 140737488355328 /\ sp mod 16 = 0 /\ 140735332487168 <= so <= 140737488355320 /\ (sp - 40 + 40 <= so \/ so + 8 <= sp - 40)
      /\ 0 <= sp < 2 ^ 64 /\ 0 <= os < 2 ^ 64 /\ 0 <= so < 2 ^ 64).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_064 ())). Qed.

(* [comment removed for export] *)
Lemma STEP_D (n kk : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN n M1 model1 LK1 Aw1 x1 g1 cr1 -> 0 <= n < 4 -> RI R1 -> getr R1 (reg 9) = Z_to_bv 64 kk -> 0 <= kk <= 9 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbcf80 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_065 ())). Qed.

(* [comment removed for export] *)
Lemma STEP_G (n t : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN n M1 model1 LK1 Aw1 x1 g1 cr1 -> 0 <= n < 4 -> RI R1 -> getr R1 (reg 9) = Z_to_bv 64 t -> 10 <= t <= 99 -> getr R1 (reg 19) = Z_to_bv 64 (t / 10) ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbcfbc M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_066 ())). Qed.

(* [comment removed for export] *)
Lemma STEP_F (n t : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN n M1 model1 LK1 Aw1 x1 g1 cr1 -> 0 <= n < 4 -> RI R1 -> getr R1 (reg 9) = Z_to_bv 64 t -> 0 <= t <= 99 -> getr R1 (reg 19) = Z_to_bv 64 (t / 10) ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbd034 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_067 ())). Qed.

(* [comment removed for export] *)
Lemma STEP_E (n kk : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN n M1 model1 LK1 Aw1 x1 g1 cr1 -> 0 <= n < 3 -> RI R1 -> getr R1 (reg 9) = Z_to_bv 64 kk -> 100 <= kk <= 999 -> getr R1 (reg 19) = Z_to_bv 64 (kk / 100) ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbd004 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_068 ())). Qed.

(* [comment removed for export] *)
Lemma STEP_Cp (k : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN 1 M1 model1 LK1 Aw1 x1 g1 cr1 -> RI R1 -> getr R1 (reg 9) = Z_to_bv 64 k -> 0 <= k <= 999 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbcf54 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_069 ())). Qed.

(* [comment removed for export] *)
Lemma STEP_Cn (v : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN 1 M1 model1 LK1 Aw1 x1 g1 cr1 -> RI R1 -> getr R1 (reg 9) = Z_to_bv 64 v -> 2 ^ 64 - 999 <= v <= 2 ^ 64 - 1 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbcf60 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_070 ())). Qed.

(* [comment removed for export] *)
Lemma STEP_B (kv : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN 0 M1 model1 LK1 Aw1 x1 g1 cr1 -> RI R1 -> getr R1 (reg 9) = Z_to_bv 64 kv -> getr R1 (reg 10) = Z_to_bv 64 os ->
  (0 <= kv <= 999 \/ 2 ^ 64 - 999 <= kv <= 2 ^ 64 - 1) ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbcf48 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_071 ())). Qed.

(* [comment removed for export] *)
Lemma fe_body (fx : FPState) (k : Z) :
  getr R 10%bv = Z_to_bv 64 k -> -999 <= k <= 999 -> getr R 11%bv = Z_to_bv 64 so ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx R 0xbcf08 M model) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_072 ())). Qed.

End Body.

Theorem fe_ok : VA.fe_specA RSEGS AD L ar HI 0xbcf08.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFe ()) ["WithHeap"] (Mh_0208_blobs1.kr_b_073 ())). Qed.

End WithHeap.
End VASFE.

End VaSFe.
Module VaSPrP1.
(* [comment removed for export] *)
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0007.   (* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From stdpp.bitvector Require Import definitions.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BigLinkBase. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.CatExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030.CatSim OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.SeqExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.StoreOk OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.Hoare OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.ShapeAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.SpinAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.HeapIface OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.AxSymRun3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.BigLinkBase OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.BigLinkGlue OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.L5Defs OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5Kn OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5KnA.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0177. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0177.
Import ListNotations. Import AX2. Import AX2B. Import AX2S.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Ltac Zify.zify_convert_to_euclidean_division_equations_flag ::= constr:(false).
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_VaSPrP1 () := "C47Corelib7Classes9Morphisms6ProperC47Corelib7Classes?RelationClasses9ReflexiveC47Corelib7Classes9Morphisms:forall_defC46Stdlib5Lists4List2hdC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA6fframeC46Stdlib5Lists4List4inclC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55rangeC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR6regionC47Corelib4Init5Logic8eq_ind_rC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K@nth_error_singleC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K6zagreeI47Corelib4Init9Datatypes6option00C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA6zpolyAK47Corelib4Init9Datatypes6option01I47Corelib4Init5Logic2eq00K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1N02I45stdpp9bitvector;definitions2bv00C56Stdlib6ZArith6BinInt1Z6moduloC45stdpp9bitvector;definitions7Z_to_bvC45stdpp9bitvector;definitions;bv_unsignedC45stdpp9bitvector;definitions5bv_eqC45stdpp9bitvector;definitions7bv_wrapK47Corelib7Numbers7BinNums1Z02C56Stdlib6ZArith6BinInt1Z3powC56Stdlib6ZArith6BinInt1Z>pow_pos_nonnegC56Stdlib6ZArith6BinInt1Z2ltC56Stdlib6ZArith6BinInt1Z2leC56Stdlib6ZArith6BinInt1Z:pow_nonnegK47Corelib4Init9Datatypes4list01I47Corelib4Init9Datatypes4list00K46Stdlib9micromega6VarMap1t01I46Stdlib9micromega6VarMap1t00I46Stdlib9micromega=RingMicromega7Formula00K46Stdlib9micromega7EnvRing5PExpr01K46Stdlib9micromega7EnvRing5PExpr07K46Stdlib9micromega=RingMicromega7Formula01K46Stdlib9micromega5Tauto8GFormula04K46Stdlib9micromega5Tauto8GFormula07C46Stdlib9micromega5Tauto8BFormulaK47Corelib4Init5Logic2eq01C46Stdlib9micromega:ZMicromega=ZTautoCheckerC46Stdlib9micromega6VarMap4findC46Stdlib9micromega:ZMicromegaCZTautoChecker_soundC56Stdlib6ZArith6BinInt1Z7mod_modC45stdpp9bitvector;definitions@Z_to_bv_unsignedC6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26edenotC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA<zpolyA_soundC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG@word_of_unsignedI6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX23env00I47Corelib4Init9Datatypes3nat00I47Corelib7Numbers7BinNums1Z00I6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr00K47Corelib7Numbers7BinNums8positive03C5ARocqVerifyHarness?AgentSubmission;BigLinkBase2BL2MMI47Corelib7Numbers7BinNums1N00I47Corelib4Init5Logic3and00K47Corelib7Numbers7BinNums1Z01I47Corelib4Init5Logic4True00I46Stdlib9micromega:ZMicromega;ZArithProof00C46Stdlib9micromega5Tauto5eKindI47Corelib4Init9Datatypes4unit00K46Stdlib9micromega5Tauto4kind01K46Stdlib9micromega=RingMicromega3Op201K47Corelib4Init9Datatypes4unit01I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01I47Corelib4Init5Logic5False00K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX25saddr01K47Corelib4Init9Datatypes3nat02K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry01C5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S9kentry_okC56Stdlib6ZArith6BinInt1Z3addC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u64_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=u64_of_KWord8C5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsK47Corelib4Init9Datatypes3nat01C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u32_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=u32_of_KWord4C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55u8_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K<u8_of_KWord1I47Corelib4Init5Peano2le00C56Stdlib6ZArith6BinInt1Z6of_natC5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S4flatC6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26adenotC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K8adenot_eC47Corelib4Init5Logic6eq_indC45stdpp9bitvector;definitionsDbv_unsigned_in_rangeC45stdpp9bitvector;definitions:bv_modulusC4ELinuxProcessSemantics?LinuxProcessSem6BvBase=Z_to_le_bytesK46Stdlib9micromega6VarMap1t02K46Stdlib9micromega7EnvRing5PExpr02K46Stdlib9micromega5Tauto8GFormula05K47Corelib4Init9Datatypes6option02K46Stdlib9micromega5Tauto8GFormula08C56Stdlib6ZArith6BinInt1Z9mod_smallK45stdpp9bitvector;definitions2bv01C45stdpp9bitvector;definitions6bv_addC56Stdlib6ZArith6BinInt1Z?add_mod_idemp_lC45stdpp9bitvector;definitions?bv_add_unsignedC56Stdlib6ZArith6BinInt1Z3divK47Corelib4Init9Datatypes4list02C47Corelib4Init5Logic7f_equalC35stdpp7tactics<f_equal_helpC56Stdlib6ZArith6BinInt1Z6shiftrC56Stdlib6ZArith6BinInt1Z?shiftr_div_pow2K47Corelib4Init5Logic3and01C47Corelib4Init5Logic9False_indC4ARocqVerifyHarness?AgentSubmission8PropExec3rdnC4ELinuxProcessSemantics?LinuxProcessSem>RiscvSemantics@word_to_le_bytesC4ARocqVerifyHarness?AgentSubmission8PropExec7seg_romK46Stdlib9micromega=RingMicromega3Op203K46Stdlib9micromega=RingMicromega3Op205K47Corelib4Init5Logic4True01K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry0:C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L57definedC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K?defined_of_KUnkC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA@u8_of_KWord1_modK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry02C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA8zeros_atC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA>zeros_of_KZeroK47Corelib7Numbers7BinNums8positive01C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K9land_le_rC56Stdlib6ZArith6BinInt1Z4landK46Stdlib9micromega=RingMicromega5Psatz02K46Stdlib9micromega=RingMicromega5Psatz06K46Stdlib9micromega:ZMicromega;ZArithProof02K46Stdlib9micromega6VarMap1t03K46Stdlib9micromega5Tauto8GFormula03K46Stdlib9micromega:ZMicromega;ZArithProof01C56Stdlib6ZArith6BinInt1Z3lorC56Stdlib6ZArith6BinInt1Z:lor_nonnegC56Stdlib6ZArith6BinInt1Z6eq_decC47Corelib4Init5Logic3notI47Corelib4Init6Specif7sumbool00C56Stdlib6ZArith6BinInt1Z7lor_0_lC56Stdlib6ZArith6BinInt1Z7lor_0_rC56Stdlib6ZArith6BinInt1Z4log2C56Stdlib6ZArith6BinInt1Z3maxC56Stdlib6ZArith6BinInt1Z<log2_lt_pow2C56Stdlib6ZArith6BinInt1Z:max_lub_ltC56Stdlib6ZArith6BinInt1Z8log2_lorC56Stdlib6ZArith6BinInt1Z>log2_lt_cancelC47Corelib4Init5Logic5proj2C56Stdlib6ZArith6BinInt1Z9land_commC46Stdlib5Lists4List2InC56Stdlib6ZArith6BinInt1Z3ltbC47Corelib4Init9Datatypes4andbC47Corelib5Lists7ListDef3seqC46Stdlib5Lists4List7forallbC47Corelib4Init5Logic3iffC47Corelib7Classes9MorphismsDiff_impl_subrelationC46Stdlib5Lists4List>forallb_forallC56Stdlib6ZArith6BinInt1Z6to_natC47Corelib4Init3Nat3addC47Corelib4Init5Peano2ltC46Stdlib5Lists4List6in_seqC46Stdlib9micromega;ZifyClasses9and_morphC56Stdlib6ZArith6BinInt1Z8max_specI47Corelib4Init5Logic2or00K47Corelib7Numbers7BinNums1Z03K46Stdlib9micromega7EnvRing3Pol01K46Stdlib9micromega=RingMicromega5Psatz04K46Stdlib9micromega5Tauto8GFormula06K46Stdlib9micromega7EnvRing5PExpr03C46Stdlib9micromega;ZifyClasses;rew_iff_revC56Stdlib6ZArith4Znat5Z2Nat2idC47Corelib4Init9Datatypes9andb_propC46Stdlib9micromega9SatDivModCZ_mod_nonneg_nonnegC56Stdlib6ZArith6BinInt1Z7div_modC56Stdlib6ZArith6BinInt1Z3mulC56Stdlib6ZArith6BinInt1Z=mod_pos_boundC56Stdlib6ZArith6BinInt1Z=mod_neg_boundC56Stdlib5omega8PreOmega1Z;div_0_r_extC56Stdlib5omega8PreOmega1Z;mod_0_r_extK46Stdlib9micromega5Tauto8GFormula01C56Stdlib6ZArith6BinInt1Z3lebC46Stdlib9micromega;ZifyClasses5mkappC46Stdlib9micromega;ZifyClasses5mkrelC46Stdlib9micromega;ZifyClasses6mkapp2K46Stdlib9micromega5Tauto8GFormula0:C46Stdlib9micromega8ZifyInst@of_nat_to_nat_eqC56Stdlib6ZArith4Znat5Nat2Z6inj_leC56Stdlib5Arith8PeanoNat3Nat3addC56Stdlib6ZArith4Znat5Nat2Z7inj_addC56Stdlib6ZArith4Znat5Nat2Z6inj_ltK46Stdlib9micromega5Tauto4kind02C6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG7kept_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prAp5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prAp9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1:KS_va_prApC46Stdlib5Lists4List2tlC4ELinuxProcessSemantics5Riscv7Prelude5bvmapC56Stdlib6ZArith6BinInt1Z3subC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L59img_clearc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP17alignedC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L58writableC47Corelib4Init5Logic5proj1C4ARocqVerifyHarness?AgentSubmission8PropExec4getrK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX23env01C6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX22evC56Stdlib6NArith6BinNat1N6to_natC5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA6za_litC5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA8za_startK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr02K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr03K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr01C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K:zagree_allc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1=word_of_zpolyC47Corelib4Init5Logic6eq_symC47Corelib4Init5Logic8eq_transC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG5slotsC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG@regs_ok_of_slotsC5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S7regs_okK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry04K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry06K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry05K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry07C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K;kentry_KImgC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA:zpolyA_valC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KWord8C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KRangeC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KAlignC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K:kentry_KWrK47Corelib5Lists7ListDef6Forall01C5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S7know_okC5ARocqVerifyHarness?AgentSubmission7Mh_00387StoreOk9mem_growsC4ARocqVerifyHarness?AgentSubmission8PropExec4mkstI47Corelib4Init5Logic2ex00C5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP8bfact_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prAp<seg_sound_axI47Corelib4Init9Datatypes4prod00K47Corelib4Init9Datatypes4prod01C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K9zagree_ltC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=outside_nil_eC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K>outside_cons_eC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG<unsigned_litC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG9kept_regsK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr05C46Stdlib5Lists4List<nth_error_Inc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1>u64_of_KWord8aK47Corelib4Init5Logic2ex01C5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA7za_stepK47Corelib5Lists7ListDef6Forall02I5ARocqVerifyHarness?AgentSubmission7Mh_00306CatSim6msteps00C46Stdlib5Lists4List9nth_errorC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR5ps_pcC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR7ps_regsC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP:regions_okC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP7outsideC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR8ps_cellsC5ARocqVerifyHarness?AgentSubmission7Mh_01129AxSymRun39env_agreeC5ARocqVerifyHarness?AgentSubmission7Mh_01129AxSymRun3<expr_vars_ltK46Stdlib9micromega7EnvRing5PExpr04C47Corelib5Lists7ListDef3nthC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG7out_regC5ARocqVerifyHarness?AgentSubmission;BigLinkBase2BL9bvu_rangeI6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry00I6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR9post_spec00c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prAp3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prAp2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prAp3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prAp6cells0I4ARocqVerifyHarness?AgentSubmission8PropExec7FPState00K47Corelib7Numbers7BinNums1N01K4ELinuxProcessSemantics5Riscv5Instr5aluop02c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prAp3kn0I5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP5bfact00c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prAp3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1=KS_va_prAp_okK4ELinuxProcessSemantics5Riscv5Instr5aluop01K4ELinuxProcessSemantics5Riscv5Instr5mulop01c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prAn5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prAn9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1:KS_va_prAnc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prAn<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prAn3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prAn2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prAn3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prAn6cells0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prAn3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prAn3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1=KS_va_prAn_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prB15regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prB19regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1:KS_va_prB1C46Stdlib9micromega9SatDivModCZ_div_nonneg_nonnegK46Stdlib9micromega=RingMicromega5Psatz07K46Stdlib9micromega=RingMicromega5Psatz05K46Stdlib9micromega7EnvRing5PExpr05C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA<kentry_KZeroC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KWord1c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prB1<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prB13PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prB12F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prB13NX0K4ELinuxProcessSemantics5Riscv5Instr5aluop07c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prB13kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prB13ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1=KS_va_prB1_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN1c5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN1c9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1;KS_va_prN1cc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN1c<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN1c3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN1c2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN1c3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN1c3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN1c3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1>KS_va_prN1c_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN1z5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN1z9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1;KS_va_prN1zc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN1z<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN1z3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN1z2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN1z3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN1z3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN1z3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1>KS_va_prN1z_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN1p5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN1p9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1;KS_va_prN1pc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN1p<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN1p3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN1p2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN1p3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN1p3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN1p3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1>KS_va_prN1p_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN2c5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN2c9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1;KS_va_prN2cc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN2c<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN2c3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN2c2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN2c3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN2c3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN2c3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1>KS_va_prN2c_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN2e5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN2e9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1;KS_va_prN2ec7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN2e<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN2e3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN2e2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN2e3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN2e3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP19Pva_prN2e3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1>KS_va_prN2e_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prT15regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prT19regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1:KS_va_prT1c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prT1<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prT13PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prT12F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prT13NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prT13kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP18Pva_prT13ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1=KS_va_prT1_ok". Local Ltac lia := L5FastLia.plia.

Module VASPRP1.
Abbreviation RSEGS := Asan.M.loaded_segments.
Notation reg i := (Z_to_bv 5 (Z.of_nat i)) (only parsing).
Notation st fx R pc M := (@mkst fx R (Z_to_bv 64 pc) M (seg_rom Asan.M.loaded_segments)) (only parsing).

(* [comment removed for export] *)
Lemma word_of_zpoly E Vz e z : L5K.zagree E Vz e -> L5KA.zpolyA Vz e = Some z -> edenot E e = Z_to_bv 64 z.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_074 ())). Qed.
(* [comment removed for export] *)
Lemma u64_of_KWord8a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 8 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> L5.u64_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_075 ())). Qed.
Lemma u32_of_KWord4a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 4 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> L5.u32_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_076 ())). Qed.
Lemma u8_of_KWord1a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 1 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> 0 <= v < 256 -> a' = a + off -> L5.u8_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_077 ())). Qed.
(* [comment removed for export] *)
Lemma u8x2_of_KWord2a E M b off e a v a' v0 v1 : kentry_ok RSEGS E M (KWord (SA b off) 2 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> v0 = v mod 256 -> v1 = (v / 256) mod 256 ->
  L5.u8_at RSEGS M a' v0 /\ L5.u8_at RSEGS M (a' + 1) v1.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_078 ())). Qed.
Lemma defined_of_KUnka E M b off ne a n a' : kentry_ok RSEGS E M (KUnk (SA b off) ne) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E ne) = n -> a' = a + off -> L5.defined M a' n.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_079 ())). Qed.
Lemma u8_of_KWord1ma E M b off e a v a' v' : kentry_ok RSEGS E M (KWord (SA b off) 1 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> v' = v mod 256 -> L5.u8_at RSEGS M a' v'.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_080 ())). Qed.
Lemma zeros_of_KZeroa E M b off ne a n a' : kentry_ok RSEGS E M (KZero (SA b off) ne) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E ne) = n -> a' = a + off -> L5KA.zeros_at M a' n.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_081 ())). Qed.
Lemma land_byte a m : 0 <= a -> 0 <= m <= 255 -> 0 <= Z.land a m < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_082 ())). Qed.
Lemma lor_byte a b : 0 <= a < 256 -> 0 <= b < 256 -> 0 <= Z.lor a b < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_083 ())). Qed.
(* [comment removed for export] *)
Lemma land_le_l a m : 0 <= a -> 0 <= m -> Z.land a m <= a.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_084 ())). Qed.
Local Ltac zfacts :=
  repeat (match goal with |- context [Z.land ?a ?m] =>
    lazymatch goal with _ : 0 <= Z.land a m <= m |- _ => fail | _ => pose proof (L5K.land_le_r a m ltac:(lia) ltac:(lia)); pose proof (land_le_l a m ltac:(lia) ltac:(lia)) end end);
  repeat (match goal with |- context [?a / ?c] =>
    lazymatch goal with _ : 0 <= a / c |- _ => fail | _ => pose proof (Z.div_pos a c ltac:(lia) ltac:(lia)); pose proof (Z.mul_div_le a c ltac:(lia)) end end).
Local Ltac nonneg_tac := first [lia | match goal with |- 0 <= ?x mod ?m => exact (proj1 (Z.mod_pos_bound x m ltac:(clear; lia))) end | (zfacts; lia)].
Lemma setbit1_byte a : 0 <= a < 256 -> 0 <= (Z.land a 18446744073709551613 + 2) mod 2 ^ 64 < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_085 ())). Qed.
Local Ltac byte_go :=
  lazymatch goal with
  | |- 0 <= (Z.land _ 18446744073709551613 + 2) mod _ < 256 => apply setbit1_byte; lia
  | |- 0 <= Z.lor _ _ < 256 => apply lor_byte; byte_go
  | |- 0 <= Z.land _ _ < 256 => apply land_byte; [nonneg_tac | lia]
  | _ => zfacts; first [lia | rewrite !Z.mod_small by (rewrite ?Z.mod_small by lia; lia); lia]
  end.
Local Ltac byte_tac0 k := k; byte_go.
Tactic Notation "byte_tac" tactic(k) := byte_tac0 k.
(* [comment removed for export] *)
(* [comment removed for export] *)
Local Ltac solve_modk k :=
  repeat match goal with |- context [(?x mod 18446744073709551616) / _] => rewrite (Z.mod_small x 18446744073709551616) by (k; zfacts; lia) end;
  first [ rewrite Z.mod_small; [ first [reflexivity | k; lia] | k; L5K.zrange_tac ]
        | symmetry; eapply (Z.mod_unique_pos _ _ (-1)); k; unfold BL.MM; lia
        | symmetry; eapply (Z.mod_unique_pos _ _ 1); k; unfold BL.MM; lia ].
(* [comment removed for export] *)
Local Ltac pvz_hg tac := lazymatch goal with |- ?G0 => let PG := fresh "PGoal" in set (PG := G0); tac; subst PG end.
Local Ltac pvz_fold B k := lazymatch B with | ?A2 /\ ?B2 => pvz_fold B2 ltac:(fun T2 => let T := fresh "pvzT" in pose (T := A2 /\ T2); k T) | _ => k B end.
Local Ltac pvz_linconj := lazymatch goal with |- ?A /\ ?B => pvz_fold B ltac:(fun T => change_no_check (A /\ T)) | _ => idtac end.
Local Ltac pvz_unfold ZA := lazymatch type of ZA with forall j, _ = ?f j => tryif is_var f then unfold f else idtac | _ => idtac end.
Tactic Notation "evalEk" constr(ZA) tactic(k) :=
  L5K.norm_expr; eapply L5KA.zpolyA_val; [ apply (L5K.zagree_all _ _ _ ZA) | cbn [L5KA.zpolyA]; pvz_unfold ZA; reflexivity | solve_modk k ].
Tactic Notation "evalEk'" constr(ZA) constr(AG) tactic(k) :=
  L5K.norm_expr; eapply L5KA.zpolyA_val;
  [ eapply (L5K.zagree_lt _ _ _ _ _ AG); [apply (L5K.zagree_all _ _ _ ZA) | vm_compute; reflexivity] | cbn [L5KA.zpolyA]; pvz_unfold ZA; reflexivity | solve_modk k ].
(* [comment removed for export] *)
Definition aligned (a m : Z) : Prop := a mod m = 0.
Definition srl_range (a c lo hi : Z) : Prop := lo <= a / c <= hi.
(* [comment removed for export] *)
Local Ltac exactA H :=
  first [ exact H
        | lazymatch goal with
          | |- L5.u64_at _ _ ?a _ => lazymatch type of H with L5.u64_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.u8_at _ _ ?a _ => lazymatch type of H with L5.u8_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.u32_at _ _ ?a _ => lazymatch type of H with L5.u32_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.writable _ _ ?a _ => lazymatch type of H with L5.writable _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.defined _ ?a _ => lazymatch type of H with L5.defined _ ?b _ => replace a with b by (clear; lia) end
          | |- L5KA.zeros_at _ ?a _ => lazymatch type of H with L5KA.zeros_at _ ?b _ => replace a with b by (clear; lia) end
          end; exact H ].
(* [comment removed for export] *)
Local Ltac den_tac := first [reflexivity | lia | idtac].
(* [comment removed for export] *)
(* [comment removed for export] *)
Local Ltac apc_norm :=
  repeat match goal with
  | |- context [APC.eadd ?a ?b] => let t := eval vm_compute in (APC.eadd a b) in change (APC.eadd a b) with t
  | |- context [APC.esub ?a ?b] => let t := eval vm_compute in (APC.esub a b) in change (APC.esub a b) with t
  | |- context [APC.escale ?c ?e] => let t := eval vm_compute in (APC.escale c e) in change (APC.escale c e) with t
  | |- context [APC.eaddz ?a ?z] => let t := eval vm_compute in (APC.eaddz a z) in change (APC.eaddz a z) with t
  end.
(* [comment removed for export] *)
Local Ltac zp_norm := repeat (match goal with |- context [(?a <=? ?b) && (?c <? ?d)] => let r := eval vm_compute in ((a <=? b) && (c <? d)) in change ((a <=? b) && (c <? d)) with r end);
  repeat (match goal with |- context [2 ^ ?s] => let r := eval vm_compute in (2 ^ s) in change (2 ^ s) with r end); lazy beta iota zeta.
Local Ltac zp_mods := repeat match goal with |- context [(?x mod 18446744073709551616) / _] => rewrite (Z.mod_small x 18446744073709551616) by (zfacts; lia) end.
Local Ltac slotP ZA :=
  first [ assumption | reflexivity
        | (etransitivity; [eassumption|]; symmetry; eapply word_of_zpoly; [apply (L5K.zagree_all _ _ _ ZA) | cbn [L5KA.zpolyA]; pvz_unfold ZA; zp_norm; f_equal; zp_mods; first [reflexivity | clear; zfacts; lia | zfacts; lia]]) ].
(* [comment removed for export] *)
Local Ltac wordP' ZA AG :=
  eapply word_of_zpoly; [ eapply (L5K.zagree_lt _ _ _ _ _ AG); [apply (L5K.zagree_all _ _ _ ZA) | vm_compute; reflexivity]
                        | cbn [L5KA.zpolyA]; pvz_unfold ZA; zp_norm; f_equal; zp_mods; first [reflexivity | clear; zfacts; lia | zfacts; lia] ].
(* [comment removed for export] *)
Module Pva_prAp := BndP_Na_132.LibSegNa_va_prAp.
Definition KS_va_prAp : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prAp.regs0 Pva_prAp.regs_out0).
Lemma KS_va_prAp_ok : BG.kept_ok 80 Pva_prAp.regs0 Pva_prAp.regs_out0 KS_va_prAp = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_086 ())). Qed.
Lemma va_prAp_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 50%nat) < 2 ^ 64 -> 0 <= (V 51%nat) < 2 ^ 64 -> 0 <= (V 53%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 10) = Z_to_bv 64 (V 50%nat) -> getr R (reg 11) = Z_to_bv 64 (V 51%nat) -> getr R (reg 12) = Z_to_bv 64 ((V 53%nat) - (V 51%nat)) -> getr R (reg 13) = Z_to_bv 64 18446744073709551612 -> getr R (reg 14) = Z_to_bv 64 17 -> getr R (reg 15) = Z_to_bv 64 (V 34%nat) ->
  L5.img_clear M 65536 1409024 -> L5.u64_at RSEGS M 1440376 2147450880 -> 140735332487264 <= (V 2%nat) <= 140737488355328 -> aligned (V 2%nat) 16 ->
  L5.writable RSEGS M ((V 2%nat) - 88) 88 -> 0 <= (V 53%nat) <= 1000 -> 1 <= (V 51%nat) <= 21 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, ~ (((V 2%nat) - 88) <= bv_unsigned a < ((V 2%nat) - 88) + 88) -> M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> ~ (((V 2%nat) - 88) <= i < ((V 2%nat) - 88) + 88) -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc1a4 M) (st fx' R' 0xbc1f4 M')
        /\ (forall x, In x KS_va_prAp -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 2) = Z_to_bv 64 ((V 2%nat) - 96)
        /\ getr R' (reg 8) = Z_to_bv 64 (V 34%nat)
        /\ getr R' (reg 9) = Z_to_bv 64 (V 51%nat)
        /\ getr R' (reg 10) = Z_to_bv 64 1440376
        /\ getr R' (reg 18) = Z_to_bv 64 (V 50%nat)
        /\ getr R' (reg 19) = Z_to_bv 64 (((-1) * (V 51%nat)) + (V 53%nat))
        /\ getr R' (reg 21) = Z_to_bv 64 2147450880
        /\ getr R' (reg 22) = Z_to_bv 64 (V 53%nat)
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 88) (bv_unsigned (getr R (reg 25)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 80) (bv_unsigned (getr R (reg 24)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 72) (bv_unsigned (getr R (reg 23)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 64) (bv_unsigned (getr R (reg 22)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 56) (bv_unsigned (getr R (reg 21)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 48) (bv_unsigned (getr R (reg 20)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 40) (bv_unsigned (getr R (reg 19)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 32) (bv_unsigned (getr R (reg 18)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 24) (bv_unsigned (getr R (reg 9)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 16) (bv_unsigned (getr R (reg 8)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 8) (bv_unsigned (getr R (reg 1)))).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_087 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prAn := BndP_Na_131.LibSegNa_va_prAn.
Definition KS_va_prAn : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prAn.regs0 Pva_prAn.regs_out0).
Lemma KS_va_prAn_ok : BG.kept_ok 80 Pva_prAn.regs0 Pva_prAn.regs_out0 KS_va_prAn = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_088 ())). Qed.
Lemma va_prAn_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 50%nat) < 2 ^ 64 -> 0 <= (V 51%nat) < 2 ^ 64 -> 0 <= (V 53%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 10) = Z_to_bv 64 (V 50%nat) -> getr R (reg 11) = Z_to_bv 64 (V 51%nat) -> getr R (reg 12) = Z_to_bv 64 ((V 53%nat) - (V 51%nat)) -> getr R (reg 13) = Z_to_bv 64 18446744073709551612 -> getr R (reg 14) = Z_to_bv 64 17 -> getr R (reg 15) = Z_to_bv 64 (V 34%nat) ->
  L5.img_clear M 65536 1409024 -> L5.u64_at RSEGS M 1440376 2147450880 -> 140735332487264 <= (V 2%nat) <= 140737488355328 -> aligned (V 2%nat) 16 ->
  L5.writable RSEGS M ((V 2%nat) - 88) 88 -> 18446744073709550616 <= (V 53%nat) <= 18446744073709551615 -> 1 <= (V 51%nat) <= 21 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, ~ (((V 2%nat) - 88) <= bv_unsigned a < ((V 2%nat) - 88) + 88) -> M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> ~ (((V 2%nat) - 88) <= i < ((V 2%nat) - 88) + 88) -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc1a4 M) (st fx' R' 0xbc1f4 M')
        /\ (forall x, In x KS_va_prAn -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 2) = Z_to_bv 64 ((V 2%nat) - 96)
        /\ getr R' (reg 8) = Z_to_bv 64 (V 34%nat)
        /\ getr R' (reg 9) = Z_to_bv 64 (V 51%nat)
        /\ getr R' (reg 10) = Z_to_bv 64 1440376
        /\ getr R' (reg 18) = Z_to_bv 64 (V 50%nat)
        /\ getr R' (reg 19) = Z_to_bv 64 (((-1) * (V 51%nat)) + (V 53%nat))
        /\ getr R' (reg 21) = Z_to_bv 64 2147450880
        /\ getr R' (reg 22) = Z_to_bv 64 (V 53%nat)
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 88) (bv_unsigned (getr R (reg 25)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 80) (bv_unsigned (getr R (reg 24)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 72) (bv_unsigned (getr R (reg 23)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 64) (bv_unsigned (getr R (reg 22)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 56) (bv_unsigned (getr R (reg 21)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 48) (bv_unsigned (getr R (reg 20)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 40) (bv_unsigned (getr R (reg 19)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 32) (bv_unsigned (getr R (reg 18)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 24) (bv_unsigned (getr R (reg 9)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 16) (bv_unsigned (getr R (reg 8)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 8) (bv_unsigned (getr R (reg 1)))).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_089 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prB1 := BndP_Na_132.LibSegNa_va_prB1.
Definition KS_va_prB1 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prB1.regs0 Pva_prB1.regs_out0).
Lemma KS_va_prB1_ok : BG.kept_ok 80 Pva_prB1.regs0 Pva_prB1.regs_out0 KS_va_prB1 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_090 ())). Qed.
Lemma va_prB1_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 50%nat) < 2 ^ 64 -> 0 <= (V 51%nat) < 2 ^ 64 -> 0 <= (V 52%nat) < 2 ^ 64 -> 0 <= (V 53%nat) < 2 ^ 64 -> 0 <= (V 56%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 51%nat) -> getr R (reg 12) = Z_to_bv 64 (V 52%nat) -> getr R (reg 13) = Z_to_bv 64 18446744073709551612 -> getr R (reg 14) = Z_to_bv 64 17 -> getr R (reg 18) = Z_to_bv 64 (V 50%nat) -> getr R (reg 19) = Z_to_bv 64 (V 52%nat) -> getr R (reg 21) = Z_to_bv 64 2147450880 -> getr R (reg 22) = Z_to_bv 64 (V 53%nat) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  0 <= (V 52%nat) <= 400 -> 1 <= (V 53%nat) <= 17 -> 1 <= (V 51%nat) <= 21 -> 7036928 <= (V 50%nat) <= 140737488355327 ->
  L5.u8_at RSEGS M (V 50%nat) (V 56%nat) -> 0 <= (V 56%nat) <= 255 -> L5KA.zeros_at M (((V 50%nat) / 8) + 2147450880) 1 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc1f4 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prB1 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 770612
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 (V 56%nat)
        /\ getr R' (reg 20) = Z_to_bv 64 (V 50%nat)
        /\ getr R' (reg 23) = Z_to_bv 64 ((V 34%nat) / 8)
        /\ getr R' (reg 24) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880)
        /\ getr R' (reg 25) = Z_to_bv 64 (V 51%nat)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_091 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prN1c := BndP_Na_133.LibSegNa_va_prN1c.
Definition KS_va_prN1c : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prN1c.regs0 Pva_prN1c.regs_out0).
Lemma KS_va_prN1c_ok : BG.kept_ok 80 Pva_prN1c.regs0 Pva_prN1c.regs_out0 KS_va_prN1c = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_092 ())). Qed.
Lemma va_prN1c_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 54%nat) < 2 ^ 64 -> 0 <= (V 56%nat) < 2 ^ 64 -> 0 <= (V 57%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 18) = Z_to_bv 64 ((V 54%nat) - 1) -> getr R (reg 20) = Z_to_bv 64 ((V 54%nat) - 1) -> getr R (reg 21) = Z_to_bv 64 2147450880 -> getr R (reg 24) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) -> getr R (reg 25) = Z_to_bv 64 (V 57%nat) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  2 <= (V 57%nat) <= 21 -> 7036928 <= (V 54%nat) <= 140737488355327 -> L5.u8_at RSEGS M (V 54%nat) (V 56%nat) -> 0 <= (V 56%nat) <= 255 ->
  L5KA.zeros_at M (((V 54%nat) / 8) + 2147450880) 1 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc234 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prN1c -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 770612
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 (V 56%nat)
        /\ getr R' (reg 18) = Z_to_bv 64 (V 54%nat)
        /\ getr R' (reg 20) = Z_to_bv 64 (V 54%nat)
        /\ getr R' (reg 25) = Z_to_bv 64 ((V 57%nat) - 1)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_093 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prN1z := BndP_Na_133.LibSegNa_va_prN1z.
Definition KS_va_prN1z : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prN1z.regs0 Pva_prN1z.regs_out0).
Lemma KS_va_prN1z_ok : BG.kept_ok 80 Pva_prN1z.regs0 Pva_prN1z.regs_out0 KS_va_prN1z = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_094 ())). Qed.
Lemma va_prN1z_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 52%nat) < 2 ^ 64 -> 0 <= (V 57%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 19) = Z_to_bv 64 (V 52%nat) -> getr R (reg 21) = Z_to_bv 64 2147450880 -> getr R (reg 23) = Z_to_bv 64 ((V 34%nat) / 8) -> getr R (reg 25) = Z_to_bv 64 (V 57%nat) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  1 <= (V 57%nat) <= 1 -> 0 <= (V 52%nat) <= 0 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc234 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prN1z -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 770808
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 46
        /\ getr R' (reg 18) = Z_to_bv 64 ((bv_unsigned (getr R (reg 18))) + 1)
        /\ getr R' (reg 20) = Z_to_bv 64 ((bv_unsigned (getr R (reg 20))) + 1)
        /\ getr R' (reg 21) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880)
        /\ getr R' (reg 25) = Z_to_bv 64 0).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_095 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prN1p := BndP_Na_133.LibSegNa_va_prN1p.
Definition KS_va_prN1p : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prN1p.regs0 Pva_prN1p.regs_out0).
Lemma KS_va_prN1p_ok : BG.kept_ok 80 Pva_prN1p.regs0 Pva_prN1p.regs_out0 KS_va_prN1p = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_096 ())). Qed.
Lemma va_prN1p_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 52%nat) < 2 ^ 64 -> 0 <= (V 57%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 19) = Z_to_bv 64 (V 52%nat) -> getr R (reg 21) = Z_to_bv 64 2147450880 -> getr R (reg 23) = Z_to_bv 64 ((V 34%nat) / 8) -> getr R (reg 25) = Z_to_bv 64 (V 57%nat) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  1 <= (V 57%nat) <= 1 -> 1 <= (V 52%nat) <= 400 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc234 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prN1p -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 770776
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 48
        /\ getr R' (reg 18) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880)
        /\ getr R' (reg 20) = Z_to_bv 64 ((bv_unsigned (getr R (reg 20))) + 1)
        /\ getr R' (reg 25) = Z_to_bv 64 0).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_097 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prN2c := BndP_Na_133.LibSegNa_va_prN2c.
Definition KS_va_prN2c : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prN2c.regs0 Pva_prN2c.regs_out0).
Lemma KS_va_prN2c_ok : BG.kept_ok 80 Pva_prN2c.regs0 Pva_prN2c.regs_out0 KS_va_prN2c = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_098 ())). Qed.
Lemma va_prN2c_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 57%nat) < 2 ^ 64 -> 0 <= (V 58%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 58%nat) -> getr R (reg 18) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) -> getr R (reg 22) = Z_to_bv 64 ((V 58%nat) + (V 57%nat)) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  1 <= (V 58%nat) <= 1000 -> 2 <= (V 57%nat) <= 400 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc2d8 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prN2c -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 770776
        /\ getr R' (reg 9) = Z_to_bv 64 ((V 58%nat) + 1)
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 48).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_099 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prN2e := BndP_Na_133.LibSegNa_va_prN2e.
Definition KS_va_prN2e : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prN2e.regs0 Pva_prN2e.regs_out0).
Lemma KS_va_prN2e_ok : BG.kept_ok 80 Pva_prN2e.regs0 Pva_prN2e.regs_out0 KS_va_prN2e = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_100 ())). Qed.
Lemma va_prN2e_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 57%nat) < 2 ^ 64 -> 0 <= (V 58%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 58%nat) -> getr R (reg 21) = Z_to_bv 64 2147450880 -> getr R (reg 22) = Z_to_bv 64 ((V 58%nat) + (V 57%nat)) -> getr R (reg 23) = Z_to_bv 64 ((V 34%nat) / 8) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  1 <= (V 58%nat) <= 1000 -> 1 <= (V 57%nat) <= 1 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc2d8 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prN2e -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 770808
        /\ getr R' (reg 9) = Z_to_bv 64 ((V 58%nat) + 1)
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 46
        /\ getr R' (reg 21) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_101 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prT1 := BndP_Na_134.LibSegNa_va_prT1.
Definition KS_va_prT1 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prT1.regs0 Pva_prT1.regs_out0).
Lemma KS_va_prT1_ok : BG.kept_ok 80 Pva_prT1.regs0 Pva_prT1.regs_out0 KS_va_prT1 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_102 ())). Qed.
Lemma va_prT1_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 35%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 37%nat) < 2 ^ 64 -> 0 <= (V 38%nat) < 2 ^ 64 -> 0 <= (V 39%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 -> 0 <= (V 41%nat) < 2 ^ 64 -> 0 <= (V 42%nat) < 2 ^ 64 -> 0 <= (V 43%nat) < 2 ^ 64 -> 0 <= (V 44%nat) < 2 ^ 64 -> 0 <= (V 45%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 21) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) ->
  140735332487264 <= (V 2%nat) <= 140737488355328 -> aligned (V 2%nat) 16 -> 140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 ->
  L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 -> L5.u64_at RSEGS M ((V 2%nat) - 8) (V 35%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 16) (V 36%nat) ->
  L5.u64_at RSEGS M ((V 2%nat) - 24) (V 37%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 32) (V 38%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 40) (V 39%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 48) (V 40%nat) ->
  L5.u64_at RSEGS M ((V 2%nat) - 56) (V 41%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 64) (V 42%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 72) (V 43%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 80) (V 44%nat) ->
  L5.u64_at RSEGS M ((V 2%nat) - 88) (V 45%nat) ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc2f8 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prT1 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 (V 35%nat)
        /\ getr R' (reg 2) = Z_to_bv 64 (V 2%nat)
        /\ getr R' (reg 8) = Z_to_bv 64 (V 36%nat)
        /\ getr R' (reg 9) = Z_to_bv 64 (V 37%nat)
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 48
        /\ getr R' (reg 18) = Z_to_bv 64 (V 38%nat)
        /\ getr R' (reg 19) = Z_to_bv 64 (V 39%nat)
        /\ getr R' (reg 20) = Z_to_bv 64 (V 40%nat)
        /\ getr R' (reg 21) = Z_to_bv 64 (V 41%nat)
        /\ getr R' (reg 22) = Z_to_bv 64 (V 42%nat)
        /\ getr R' (reg 23) = Z_to_bv 64 (V 43%nat)
        /\ getr R' (reg 24) = Z_to_bv 64 (V 44%nat)
        /\ getr R' (reg 25) = Z_to_bv 64 (V 45%nat)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP1 ()) [] (Mh_0208_blobs1.kr_b_103 ())). Qed.
(* [comment removed for export] *)

End VASPRP1.

End VaSPrP1.
Module VaSPrP2.
(* [comment removed for export] *)
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0007.   (* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From stdpp.bitvector Require Import definitions.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BigLinkBase. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.CatExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030.CatSim OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.SeqExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.StoreOk OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.Hoare OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.ShapeAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.SpinAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.HeapIface OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.AxSymRun3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.BigLinkBase OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.BigLinkGlue OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.L5Defs OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5Kn OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5KnA.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0177. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0177.
Import ListNotations. Import AX2. Import AX2B. Import AX2S.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Ltac Zify.zify_convert_to_euclidean_division_equations_flag ::= constr:(false).
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_VaSPrP2 () := "C47Corelib7Classes9Morphisms6ProperC47Corelib7Classes?RelationClasses9ReflexiveC47Corelib7Classes9Morphisms:forall_defC46Stdlib5Lists4List2hdC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA6fframeC46Stdlib5Lists4List4inclC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55rangeC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR6regionC47Corelib4Init5Logic8eq_ind_rC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K@nth_error_singleC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K6zagreeI47Corelib4Init9Datatypes6option00C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA6zpolyAK47Corelib4Init9Datatypes6option01I47Corelib4Init5Logic2eq00K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1N02I45stdpp9bitvector;definitions2bv00C56Stdlib6ZArith6BinInt1Z6moduloC45stdpp9bitvector;definitions7Z_to_bvC45stdpp9bitvector;definitions;bv_unsignedC45stdpp9bitvector;definitions5bv_eqC45stdpp9bitvector;definitions7bv_wrapK47Corelib7Numbers7BinNums1Z02C56Stdlib6ZArith6BinInt1Z3powC56Stdlib6ZArith6BinInt1Z>pow_pos_nonnegC56Stdlib6ZArith6BinInt1Z2ltC56Stdlib6ZArith6BinInt1Z2leC56Stdlib6ZArith6BinInt1Z:pow_nonnegK47Corelib4Init9Datatypes4list01I47Corelib4Init9Datatypes4list00K46Stdlib9micromega6VarMap1t01I46Stdlib9micromega6VarMap1t00I46Stdlib9micromega=RingMicromega7Formula00K46Stdlib9micromega7EnvRing5PExpr01K46Stdlib9micromega7EnvRing5PExpr07K46Stdlib9micromega=RingMicromega7Formula01K46Stdlib9micromega5Tauto8GFormula04K46Stdlib9micromega5Tauto8GFormula07C46Stdlib9micromega5Tauto8BFormulaK47Corelib4Init5Logic2eq01C46Stdlib9micromega:ZMicromega=ZTautoCheckerC46Stdlib9micromega6VarMap4findC46Stdlib9micromega:ZMicromegaCZTautoChecker_soundC56Stdlib6ZArith6BinInt1Z7mod_modC45stdpp9bitvector;definitions@Z_to_bv_unsignedC6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26edenotC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA<zpolyA_soundC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG@word_of_unsignedI6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX23env00I47Corelib4Init9Datatypes3nat00I47Corelib7Numbers7BinNums1Z00I6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr00K47Corelib7Numbers7BinNums8positive03C5ARocqVerifyHarness?AgentSubmission;BigLinkBase2BL2MMI47Corelib7Numbers7BinNums1N00I47Corelib4Init5Logic3and00K47Corelib7Numbers7BinNums1Z01I47Corelib4Init5Logic4True00I46Stdlib9micromega:ZMicromega;ZArithProof00C46Stdlib9micromega5Tauto5eKindI47Corelib4Init9Datatypes4unit00K46Stdlib9micromega5Tauto4kind01K46Stdlib9micromega=RingMicromega3Op201K47Corelib4Init9Datatypes4unit01I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01I47Corelib4Init5Logic5False00K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX25saddr01K47Corelib4Init9Datatypes3nat02K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry01C5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S9kentry_okC56Stdlib6ZArith6BinInt1Z3addC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u64_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=u64_of_KWord8C5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsK47Corelib4Init9Datatypes3nat01C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u32_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=u32_of_KWord4C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55u8_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K<u8_of_KWord1I47Corelib4Init5Peano2le00C56Stdlib6ZArith6BinInt1Z6of_natC5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S4flatC6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26adenotC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K8adenot_eC47Corelib4Init5Logic6eq_indC45stdpp9bitvector;definitionsDbv_unsigned_in_rangeC45stdpp9bitvector;definitions:bv_modulusC4ELinuxProcessSemantics?LinuxProcessSem6BvBase=Z_to_le_bytesK46Stdlib9micromega6VarMap1t02K46Stdlib9micromega7EnvRing5PExpr02K46Stdlib9micromega5Tauto8GFormula05K47Corelib4Init9Datatypes6option02K46Stdlib9micromega5Tauto8GFormula08C56Stdlib6ZArith6BinInt1Z9mod_smallK45stdpp9bitvector;definitions2bv01C45stdpp9bitvector;definitions6bv_addC56Stdlib6ZArith6BinInt1Z?add_mod_idemp_lC45stdpp9bitvector;definitions?bv_add_unsignedC56Stdlib6ZArith6BinInt1Z3divK47Corelib4Init9Datatypes4list02C47Corelib4Init5Logic7f_equalC35stdpp7tactics<f_equal_helpC56Stdlib6ZArith6BinInt1Z6shiftrC56Stdlib6ZArith6BinInt1Z?shiftr_div_pow2K47Corelib4Init5Logic3and01C47Corelib4Init5Logic9False_indC4ARocqVerifyHarness?AgentSubmission8PropExec3rdnC4ELinuxProcessSemantics?LinuxProcessSem>RiscvSemantics@word_to_le_bytesC4ARocqVerifyHarness?AgentSubmission8PropExec7seg_romK46Stdlib9micromega=RingMicromega3Op203K46Stdlib9micromega=RingMicromega3Op205K47Corelib4Init5Logic4True01K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry0:C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L57definedC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K?defined_of_KUnkC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA@u8_of_KWord1_modK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry02C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA8zeros_atC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA>zeros_of_KZeroK47Corelib7Numbers7BinNums8positive01C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K9land_le_rC56Stdlib6ZArith6BinInt1Z4landK46Stdlib9micromega=RingMicromega5Psatz02K46Stdlib9micromega=RingMicromega5Psatz06K46Stdlib9micromega:ZMicromega;ZArithProof02K46Stdlib9micromega6VarMap1t03K46Stdlib9micromega5Tauto8GFormula03K46Stdlib9micromega:ZMicromega;ZArithProof01C56Stdlib6ZArith6BinInt1Z3lorC56Stdlib6ZArith6BinInt1Z:lor_nonnegC56Stdlib6ZArith6BinInt1Z6eq_decC47Corelib4Init5Logic3notI47Corelib4Init6Specif7sumbool00C56Stdlib6ZArith6BinInt1Z7lor_0_lC56Stdlib6ZArith6BinInt1Z7lor_0_rC56Stdlib6ZArith6BinInt1Z4log2C56Stdlib6ZArith6BinInt1Z3maxC56Stdlib6ZArith6BinInt1Z<log2_lt_pow2C56Stdlib6ZArith6BinInt1Z:max_lub_ltC56Stdlib6ZArith6BinInt1Z8log2_lorC56Stdlib6ZArith6BinInt1Z>log2_lt_cancelC47Corelib4Init5Logic5proj2C56Stdlib6ZArith6BinInt1Z9land_commC46Stdlib5Lists4List2InC56Stdlib6ZArith6BinInt1Z3ltbC47Corelib4Init9Datatypes4andbC47Corelib5Lists7ListDef3seqC46Stdlib5Lists4List7forallbC47Corelib4Init5Logic3iffC47Corelib7Classes9MorphismsDiff_impl_subrelationC46Stdlib5Lists4List>forallb_forallC56Stdlib6ZArith6BinInt1Z6to_natC47Corelib4Init3Nat3addC47Corelib4Init5Peano2ltC46Stdlib5Lists4List6in_seqC46Stdlib9micromega;ZifyClasses9and_morphC56Stdlib6ZArith6BinInt1Z8max_specI47Corelib4Init5Logic2or00K47Corelib7Numbers7BinNums1Z03K46Stdlib9micromega7EnvRing3Pol01K46Stdlib9micromega=RingMicromega5Psatz04K46Stdlib9micromega5Tauto8GFormula06K46Stdlib9micromega7EnvRing5PExpr03C46Stdlib9micromega;ZifyClasses;rew_iff_revC56Stdlib6ZArith4Znat5Z2Nat2idC47Corelib4Init9Datatypes9andb_propC46Stdlib9micromega9SatDivModCZ_mod_nonneg_nonnegC56Stdlib6ZArith6BinInt1Z7div_modC56Stdlib6ZArith6BinInt1Z3mulC56Stdlib6ZArith6BinInt1Z=mod_pos_boundC56Stdlib6ZArith6BinInt1Z=mod_neg_boundC56Stdlib5omega8PreOmega1Z;div_0_r_extC56Stdlib5omega8PreOmega1Z;mod_0_r_extK46Stdlib9micromega5Tauto8GFormula01C56Stdlib6ZArith6BinInt1Z3lebC46Stdlib9micromega;ZifyClasses5mkappC46Stdlib9micromega;ZifyClasses5mkrelC46Stdlib9micromega;ZifyClasses6mkapp2K46Stdlib9micromega5Tauto8GFormula0:C46Stdlib9micromega8ZifyInst@of_nat_to_nat_eqC56Stdlib6ZArith4Znat5Nat2Z6inj_leC56Stdlib5Arith8PeanoNat3Nat3addC56Stdlib6ZArith4Znat5Nat2Z7inj_addC56Stdlib6ZArith4Znat5Nat2Z6inj_ltK46Stdlib9micromega5Tauto4kind02C6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG7kept_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP28Pva_prB25regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP28Pva_prB29regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2:KS_va_prB2C46Stdlib5Lists4List2tlC4ELinuxProcessSemantics5Riscv7Prelude5bvmapC56Stdlib6ZArith6BinInt1Z3subc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP27alignedC47Corelib4Init5Logic5proj1C4ARocqVerifyHarness?AgentSubmission8PropExec4getrK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX23env01C6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX22evC56Stdlib6NArith6BinNat1N6to_natC5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA8za_startK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr02K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr01K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr03C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K:zagree_allc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2=word_of_zpolyC47Corelib4Init5Logic6eq_symC47Corelib4Init5Logic8eq_transC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG5slotsC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG@regs_ok_of_slotsC5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S7regs_okK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry06K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry05C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA:zpolyA_valC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KRangeC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KAlignC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KWord8C46Stdlib9micromega9SatDivModCZ_div_nonneg_nonnegK46Stdlib9micromega=RingMicromega5Psatz07K46Stdlib9micromega=RingMicromega5Psatz05K46Stdlib9micromega7EnvRing5PExpr05C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA<kentry_KZeroC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KWord1K47Corelib5Lists7ListDef6Forall01C5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S7know_okC5ARocqVerifyHarness?AgentSubmission7Mh_00387StoreOk9mem_growsC4ARocqVerifyHarness?AgentSubmission8PropExec4mkstI47Corelib4Init5Logic2ex00C5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP8bfact_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP28Pva_prB2<seg_sound_axI47Corelib4Init9Datatypes4prod00K47Corelib4Init9Datatypes4prod01C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=outside_nil_eC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG9kept_regsC5ARocqVerifyHarness?AgentSubmission7Mh_01129AxSymRun3<expr_vars_ltC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K9zagree_ltK47Corelib4Init5Logic2ex01C5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA6za_litC5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA7za_stepK47Corelib5Lists7ListDef6Forall02I5ARocqVerifyHarness?AgentSubmission7Mh_00306CatSim6msteps00C46Stdlib5Lists4List9nth_errorC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR5ps_pcC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR7ps_regsC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP:regions_okC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP7outsideC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR8ps_cellsC5ARocqVerifyHarness?AgentSubmission7Mh_01129AxSymRun39env_agreeC47Corelib5Lists7ListDef3nthC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG7out_regI6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry00I6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR9post_spec00c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP28Pva_prB23PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP28Pva_prB22F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP28Pva_prB23NX0I4ARocqVerifyHarness?AgentSubmission8PropExec7FPState00K47Corelib7Numbers7BinNums1N01K4ELinuxProcessSemantics5Riscv5Instr5aluop01K4ELinuxProcessSemantics5Riscv5Instr5aluop07c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP28Pva_prB23kn0I5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP5bfact00c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP28Pva_prB23ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2=KS_va_prB2_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN3c5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN3c9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2;KS_va_prN3cc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN3c<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN3c3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN3c2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN3c3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN3c3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN3c3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2>KS_va_prN3c_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN3e5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN3e9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2;KS_va_prN3ec7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN3e<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN3e3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN3e2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN3e3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN3e3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN3e3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2>KS_va_prN3e_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP28Pva_prD25regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP28Pva_prD29regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2:KS_va_prD2c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP28Pva_prD2<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP28Pva_prD23PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP28Pva_prD22F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP28Pva_prD23NX0K4ELinuxProcessSemantics5Riscv5Instr5aluop02c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP28Pva_prD23kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP28Pva_prD23ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2=KS_va_prD2_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN4c5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN4c9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2;KS_va_prN4cc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN4c<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN4c3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN4c2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN4c3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN4c3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN4c3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2>KS_va_prN4c_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN4e5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN4e9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2;KS_va_prN4ec7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN4e<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN4e3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN4e2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN4e3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN4e3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN4e3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2>KS_va_prN4e_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN6c5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN6c9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2;KS_va_prN6cc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN6c<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN6c3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN6c2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN6c3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN6c3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN6c3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2>KS_va_prN6c_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN6e5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN6e9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2;KS_va_prN6ec7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN6e<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN6e3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN6e2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN6e3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN6e3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP29Pva_prN6e3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2>KS_va_prN6e_ok". Local Ltac lia := L5FastLia.plia.

Module VASPRP2.
Abbreviation RSEGS := Asan.M.loaded_segments.
Notation reg i := (Z_to_bv 5 (Z.of_nat i)) (only parsing).
Notation st fx R pc M := (@mkst fx R (Z_to_bv 64 pc) M (seg_rom Asan.M.loaded_segments)) (only parsing).

(* [comment removed for export] *)
Lemma word_of_zpoly E Vz e z : L5K.zagree E Vz e -> L5KA.zpolyA Vz e = Some z -> edenot E e = Z_to_bv 64 z.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_104 ())). Qed.
(* [comment removed for export] *)
Lemma u64_of_KWord8a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 8 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> L5.u64_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_105 ())). Qed.
Lemma u32_of_KWord4a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 4 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> L5.u32_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_106 ())). Qed.
Lemma u8_of_KWord1a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 1 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> 0 <= v < 256 -> a' = a + off -> L5.u8_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_107 ())). Qed.
(* [comment removed for export] *)
Lemma u8x2_of_KWord2a E M b off e a v a' v0 v1 : kentry_ok RSEGS E M (KWord (SA b off) 2 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> v0 = v mod 256 -> v1 = (v / 256) mod 256 ->
  L5.u8_at RSEGS M a' v0 /\ L5.u8_at RSEGS M (a' + 1) v1.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_108 ())). Qed.
Lemma defined_of_KUnka E M b off ne a n a' : kentry_ok RSEGS E M (KUnk (SA b off) ne) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E ne) = n -> a' = a + off -> L5.defined M a' n.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_109 ())). Qed.
Lemma u8_of_KWord1ma E M b off e a v a' v' : kentry_ok RSEGS E M (KWord (SA b off) 1 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> v' = v mod 256 -> L5.u8_at RSEGS M a' v'.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_110 ())). Qed.
Lemma zeros_of_KZeroa E M b off ne a n a' : kentry_ok RSEGS E M (KZero (SA b off) ne) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E ne) = n -> a' = a + off -> L5KA.zeros_at M a' n.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_111 ())). Qed.
Lemma land_byte a m : 0 <= a -> 0 <= m <= 255 -> 0 <= Z.land a m < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_112 ())). Qed.
Lemma lor_byte a b : 0 <= a < 256 -> 0 <= b < 256 -> 0 <= Z.lor a b < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_113 ())). Qed.
(* [comment removed for export] *)
Lemma land_le_l a m : 0 <= a -> 0 <= m -> Z.land a m <= a.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_114 ())). Qed.
Local Ltac zfacts :=
  repeat (match goal with |- context [Z.land ?a ?m] =>
    lazymatch goal with _ : 0 <= Z.land a m <= m |- _ => fail | _ => pose proof (L5K.land_le_r a m ltac:(lia) ltac:(lia)); pose proof (land_le_l a m ltac:(lia) ltac:(lia)) end end);
  repeat (match goal with |- context [?a / ?c] =>
    lazymatch goal with _ : 0 <= a / c |- _ => fail | _ => pose proof (Z.div_pos a c ltac:(lia) ltac:(lia)); pose proof (Z.mul_div_le a c ltac:(lia)) end end).
Local Ltac nonneg_tac := first [lia | match goal with |- 0 <= ?x mod ?m => exact (proj1 (Z.mod_pos_bound x m ltac:(clear; lia))) end | (zfacts; lia)].
Lemma setbit1_byte a : 0 <= a < 256 -> 0 <= (Z.land a 18446744073709551613 + 2) mod 2 ^ 64 < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_115 ())). Qed.
Local Ltac byte_go :=
  lazymatch goal with
  | |- 0 <= (Z.land _ 18446744073709551613 + 2) mod _ < 256 => apply setbit1_byte; lia
  | |- 0 <= Z.lor _ _ < 256 => apply lor_byte; byte_go
  | |- 0 <= Z.land _ _ < 256 => apply land_byte; [nonneg_tac | lia]
  | _ => zfacts; first [lia | rewrite !Z.mod_small by (rewrite ?Z.mod_small by lia; lia); lia]
  end.
Local Ltac byte_tac0 k := k; byte_go.
Tactic Notation "byte_tac" tactic(k) := byte_tac0 k.
(* [comment removed for export] *)
(* [comment removed for export] *)
Local Ltac solve_modk k :=
  repeat match goal with |- context [(?x mod 18446744073709551616) / _] => rewrite (Z.mod_small x 18446744073709551616) by (k; zfacts; lia) end;
  first [ rewrite Z.mod_small; [ first [reflexivity | k; lia] | k; L5K.zrange_tac ]
        | symmetry; eapply (Z.mod_unique_pos _ _ (-1)); k; unfold BL.MM; lia
        | symmetry; eapply (Z.mod_unique_pos _ _ 1); k; unfold BL.MM; lia ].
(* [comment removed for export] *)
Local Ltac pvz_hg tac := lazymatch goal with |- ?G0 => let PG := fresh "PGoal" in set (PG := G0); tac; subst PG end.
Local Ltac pvz_fold B k := lazymatch B with | ?A2 /\ ?B2 => pvz_fold B2 ltac:(fun T2 => let T := fresh "pvzT" in pose (T := A2 /\ T2); k T) | _ => k B end.
Local Ltac pvz_linconj := lazymatch goal with |- ?A /\ ?B => pvz_fold B ltac:(fun T => change_no_check (A /\ T)) | _ => idtac end.
Local Ltac pvz_unfold ZA := lazymatch type of ZA with forall j, _ = ?f j => tryif is_var f then unfold f else idtac | _ => idtac end.
Tactic Notation "evalEk" constr(ZA) tactic(k) :=
  L5K.norm_expr; eapply L5KA.zpolyA_val; [ apply (L5K.zagree_all _ _ _ ZA) | cbn [L5KA.zpolyA]; pvz_unfold ZA; reflexivity | solve_modk k ].
Tactic Notation "evalEk'" constr(ZA) constr(AG) tactic(k) :=
  L5K.norm_expr; eapply L5KA.zpolyA_val;
  [ eapply (L5K.zagree_lt _ _ _ _ _ AG); [apply (L5K.zagree_all _ _ _ ZA) | vm_compute; reflexivity] | cbn [L5KA.zpolyA]; pvz_unfold ZA; reflexivity | solve_modk k ].
(* [comment removed for export] *)
Definition aligned (a m : Z) : Prop := a mod m = 0.
Definition srl_range (a c lo hi : Z) : Prop := lo <= a / c <= hi.
(* [comment removed for export] *)
Local Ltac exactA H :=
  first [ exact H
        | lazymatch goal with
          | |- L5.u64_at _ _ ?a _ => lazymatch type of H with L5.u64_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.u8_at _ _ ?a _ => lazymatch type of H with L5.u8_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.u32_at _ _ ?a _ => lazymatch type of H with L5.u32_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.writable _ _ ?a _ => lazymatch type of H with L5.writable _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.defined _ ?a _ => lazymatch type of H with L5.defined _ ?b _ => replace a with b by (clear; lia) end
          | |- L5KA.zeros_at _ ?a _ => lazymatch type of H with L5KA.zeros_at _ ?b _ => replace a with b by (clear; lia) end
          end; exact H ].
(* [comment removed for export] *)
Local Ltac den_tac := first [reflexivity | lia | idtac].
(* [comment removed for export] *)
(* [comment removed for export] *)
Local Ltac apc_norm :=
  repeat match goal with
  | |- context [APC.eadd ?a ?b] => let t := eval vm_compute in (APC.eadd a b) in change (APC.eadd a b) with t
  | |- context [APC.esub ?a ?b] => let t := eval vm_compute in (APC.esub a b) in change (APC.esub a b) with t
  | |- context [APC.escale ?c ?e] => let t := eval vm_compute in (APC.escale c e) in change (APC.escale c e) with t
  | |- context [APC.eaddz ?a ?z] => let t := eval vm_compute in (APC.eaddz a z) in change (APC.eaddz a z) with t
  end.
(* [comment removed for export] *)
Local Ltac zp_norm := repeat (match goal with |- context [(?a <=? ?b) && (?c <? ?d)] => let r := eval vm_compute in ((a <=? b) && (c <? d)) in change ((a <=? b) && (c <? d)) with r end);
  repeat (match goal with |- context [2 ^ ?s] => let r := eval vm_compute in (2 ^ s) in change (2 ^ s) with r end); lazy beta iota zeta.
Local Ltac zp_mods := repeat match goal with |- context [(?x mod 18446744073709551616) / _] => rewrite (Z.mod_small x 18446744073709551616) by (zfacts; lia) end.
Local Ltac slotP ZA :=
  first [ assumption | reflexivity
        | (etransitivity; [eassumption|]; symmetry; eapply word_of_zpoly; [apply (L5K.zagree_all _ _ _ ZA) | cbn [L5KA.zpolyA]; pvz_unfold ZA; zp_norm; f_equal; zp_mods; first [reflexivity | clear; zfacts; lia | zfacts; lia]]) ].
(* [comment removed for export] *)
Local Ltac wordP' ZA AG :=
  eapply word_of_zpoly; [ eapply (L5K.zagree_lt _ _ _ _ _ AG); [apply (L5K.zagree_all _ _ _ ZA) | vm_compute; reflexivity]
                        | cbn [L5KA.zpolyA]; pvz_unfold ZA; zp_norm; f_equal; zp_mods; first [reflexivity | clear; zfacts; lia | zfacts; lia] ].
(* [comment removed for export] *)
Module Pva_prB2 := BndP_Na_132.LibSegNa_va_prB2.
Definition KS_va_prB2 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prB2.regs0 Pva_prB2.regs_out0).
Lemma KS_va_prB2_ok : BG.kept_ok 80 Pva_prB2.regs0 Pva_prB2.regs_out0 KS_va_prB2 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_116 ())). Qed.
Lemma va_prB2_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 50%nat) < 2 ^ 64 -> 0 <= (V 51%nat) < 2 ^ 64 -> 0 <= (V 52%nat) < 2 ^ 64 -> 0 <= (V 53%nat) < 2 ^ 64 -> 0 <= (V 56%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 51%nat) -> getr R (reg 12) = Z_to_bv 64 (V 52%nat) -> getr R (reg 13) = Z_to_bv 64 18446744073709551612 -> getr R (reg 14) = Z_to_bv 64 17 -> getr R (reg 18) = Z_to_bv 64 (V 50%nat) -> getr R (reg 19) = Z_to_bv 64 (V 52%nat) -> getr R (reg 21) = Z_to_bv 64 2147450880 -> getr R (reg 22) = Z_to_bv 64 (V 53%nat) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  18446744073709551216 <= (V 52%nat) <= 18446744073709551615 -> 1 <= (V 53%nat) <= 17 -> 1 <= (V 51%nat) <= 21 -> 7036928 <= (V 50%nat) <= 140737488355327 ->
  L5.u8_at RSEGS M (V 50%nat) (V 56%nat) -> 0 <= (V 56%nat) <= 255 -> L5KA.zeros_at M (((V 50%nat) / 8) + 2147450880) 1 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc1f4 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prB2 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 770712
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 (V 56%nat)
        /\ getr R' (reg 20) = Z_to_bv 64 (V 50%nat)
        /\ getr R' (reg 23) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880)
        /\ getr R' (reg 24) = Z_to_bv 64 (V 53%nat)
        /\ getr R' (reg 25) = Z_to_bv 64 (V 50%nat)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_117 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prN3c := BndP_Na_133.LibSegNa_va_prN3c.
Definition KS_va_prN3c : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prN3c.regs0 Pva_prN3c.regs_out0).
Lemma KS_va_prN3c_ok : BG.kept_ok 80 Pva_prN3c.regs0 Pva_prN3c.regs_out0 KS_va_prN3c = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_118 ())). Qed.
Lemma va_prN3c_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 54%nat) < 2 ^ 64 -> 0 <= (V 56%nat) < 2 ^ 64 -> 0 <= (V 57%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 20) = Z_to_bv 64 ((V 54%nat) - 1) -> getr R (reg 21) = Z_to_bv 64 2147450880 -> getr R (reg 23) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) -> getr R (reg 24) = Z_to_bv 64 (V 57%nat) -> getr R (reg 25) = Z_to_bv 64 ((V 54%nat) - 1) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  2 <= (V 57%nat) <= 17 -> 7036928 <= (V 54%nat) <= 140737488355327 -> L5.u8_at RSEGS M (V 54%nat) (V 56%nat) -> 0 <= (V 56%nat) <= 255 ->
  L5KA.zeros_at M (((V 54%nat) / 8) + 2147450880) 1 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc298 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prN3c -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 770712
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 (V 56%nat)
        /\ getr R' (reg 20) = Z_to_bv 64 (V 54%nat)
        /\ getr R' (reg 24) = Z_to_bv 64 ((V 57%nat) - 1)
        /\ getr R' (reg 25) = Z_to_bv 64 (V 54%nat)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_119 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prN3e := BndP_Na_133.LibSegNa_va_prN3e.
Definition KS_va_prN3e : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prN3e.regs0 Pva_prN3e.regs_out0).
Lemma KS_va_prN3e_ok : BG.kept_ok 80 Pva_prN3e.regs0 Pva_prN3e.regs_out0 KS_va_prN3e = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_120 ())). Qed.
Lemma va_prN3e_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 57%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 23) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) -> getr R (reg 24) = Z_to_bv 64 (V 57%nat) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  1 <= (V 57%nat) <= 1 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc298 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prN3e -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 771088
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 46
        /\ getr R' (reg 20) = Z_to_bv 64 ((bv_unsigned (getr R (reg 20))) + 1)
        /\ getr R' (reg 24) = Z_to_bv 64 0
        /\ getr R' (reg 25) = Z_to_bv 64 ((bv_unsigned (getr R (reg 25))) + 1)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_121 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prD2 := BndP_Na_132.LibSegNa_va_prD2.
Definition KS_va_prD2 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prD2.regs0 Pva_prD2.regs_out0).
Lemma KS_va_prD2_ok : BG.kept_ok 80 Pva_prD2.regs0 Pva_prD2.regs_out0 KS_va_prD2 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_122 ())). Qed.
Lemma va_prD2_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 52%nat) < 2 ^ 64 -> 0 <= (V 53%nat) < 2 ^ 64 -> 0 <= (V 54%nat) < 2 ^ 64 -> 0 <= (V 56%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 18) = Z_to_bv 64 ((V 54%nat) - (V 53%nat)) -> getr R (reg 19) = Z_to_bv 64 (V 52%nat) -> getr R (reg 21) = Z_to_bv 64 2147450880 -> getr R (reg 22) = Z_to_bv 64 (V 53%nat) -> getr R (reg 23) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  18446744073709551216 <= (V 52%nat) <= 18446744073709551615 -> 1 <= (V 53%nat) <= 17 -> 7036928 <= (V 54%nat) <= 140737488355327 -> L5.u8_at RSEGS M (V 54%nat) (V 56%nat) ->
  0 <= (V 56%nat) <= 255 -> L5KA.zeros_at M (((V 54%nat) / 8) + 2147450880) 1 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc410 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prD2 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 771352
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 (V 56%nat)
        /\ getr R' (reg 18) = Z_to_bv 64 (V 54%nat)
        /\ getr R' (reg 19) = Z_to_bv 64 (V 54%nat)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_123 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prN4c := BndP_Na_133.LibSegNa_va_prN4c.
Definition KS_va_prN4c : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prN4c.regs0 Pva_prN4c.regs_out0).
Lemma KS_va_prN4c_ok : BG.kept_ok 80 Pva_prN4c.regs0 Pva_prN4c.regs_out0 KS_va_prN4c = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_124 ())). Qed.
Lemma va_prN4c_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 54%nat) < 2 ^ 64 -> 0 <= (V 56%nat) < 2 ^ 64 -> 0 <= (V 57%nat) < 2 ^ 64 -> 0 <= (V 58%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 ((V 58%nat) + (V 57%nat)) -> getr R (reg 18) = Z_to_bv 64 ((V 54%nat) - 1) -> getr R (reg 19) = Z_to_bv 64 ((V 54%nat) - 1) -> getr R (reg 21) = Z_to_bv 64 2147450880 -> getr R (reg 22) = Z_to_bv 64 (V 58%nat) -> getr R (reg 23) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  1 <= (V 58%nat) <= 1000 -> 2 <= (V 57%nat) <= 21 -> 7036928 <= (V 54%nat) <= 140737488355327 -> L5.u8_at RSEGS M (V 54%nat) (V 56%nat) ->
  0 <= (V 56%nat) <= 255 -> L5KA.zeros_at M (((V 54%nat) / 8) + 2147450880) 1 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc518 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prN4c -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 771352
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 (V 56%nat)
        /\ getr R' (reg 18) = Z_to_bv 64 (V 54%nat)
        /\ getr R' (reg 19) = Z_to_bv 64 (V 54%nat)
        /\ getr R' (reg 22) = Z_to_bv 64 ((V 58%nat) + 1)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_125 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prN4e := BndP_Na_133.LibSegNa_va_prN4e.
Definition KS_va_prN4e : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prN4e.regs0 Pva_prN4e.regs_out0).
Lemma KS_va_prN4e_ok : BG.kept_ok 80 Pva_prN4e.regs0 Pva_prN4e.regs_out0 KS_va_prN4e = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_126 ())). Qed.
Lemma va_prN4e_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 35%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 37%nat) < 2 ^ 64 -> 0 <= (V 38%nat) < 2 ^ 64 -> 0 <= (V 39%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 -> 0 <= (V 41%nat) < 2 ^ 64 -> 0 <= (V 42%nat) < 2 ^ 64 -> 0 <= (V 43%nat) < 2 ^ 64 -> 0 <= (V 44%nat) < 2 ^ 64 -> 0 <= (V 45%nat) < 2 ^ 64 -> 0 <= (V 57%nat) < 2 ^ 64 -> 0 <= (V 58%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 ((V 58%nat) + (V 57%nat)) -> getr R (reg 22) = Z_to_bv 64 (V 58%nat) ->
  140735332487264 <= (V 2%nat) <= 140737488355328 -> aligned (V 2%nat) 16 -> L5.u64_at RSEGS M ((V 2%nat) - 8) (V 35%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 16) (V 36%nat) ->
  L5.u64_at RSEGS M ((V 2%nat) - 24) (V 37%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 32) (V 38%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 40) (V 39%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 48) (V 40%nat) ->
  L5.u64_at RSEGS M ((V 2%nat) - 56) (V 41%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 64) (V 42%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 72) (V 43%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 80) (V 44%nat) ->
  L5.u64_at RSEGS M ((V 2%nat) - 88) (V 45%nat) -> 1 <= (V 58%nat) <= 1000 -> 1 <= (V 57%nat) <= 1 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc518 M) (st fx' R' 0xbc444 M')
        /\ (forall x, In x KS_va_prN4e -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 (V 35%nat)
        /\ getr R' (reg 2) = Z_to_bv 64 (V 2%nat)
        /\ getr R' (reg 8) = Z_to_bv 64 (V 36%nat)
        /\ getr R' (reg 9) = Z_to_bv 64 (V 37%nat)
        /\ getr R' (reg 18) = Z_to_bv 64 (V 38%nat)
        /\ getr R' (reg 19) = Z_to_bv 64 (V 39%nat)
        /\ getr R' (reg 20) = Z_to_bv 64 (V 40%nat)
        /\ getr R' (reg 21) = Z_to_bv 64 (V 41%nat)
        /\ getr R' (reg 22) = Z_to_bv 64 (V 42%nat)
        /\ getr R' (reg 23) = Z_to_bv 64 (V 43%nat)
        /\ getr R' (reg 24) = Z_to_bv 64 (V 44%nat)
        /\ getr R' (reg 25) = Z_to_bv 64 (V 45%nat)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_127 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prN6c := BndP_Na_134.LibSegNa_va_prN6c.
Definition KS_va_prN6c : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prN6c.regs0 Pva_prN6c.regs_out0).
Lemma KS_va_prN6c_ok : BG.kept_ok 80 Pva_prN6c.regs0 Pva_prN6c.regs_out0 KS_va_prN6c = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_128 ())). Qed.
Lemma va_prN6c_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 54%nat) < 2 ^ 64 -> 0 <= (V 56%nat) < 2 ^ 64 -> 0 <= (V 57%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 57%nat) -> getr R (reg 18) = Z_to_bv 64 ((V 54%nat) - 1) -> getr R (reg 19) = Z_to_bv 64 ((V 54%nat) - 1) -> getr R (reg 20) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) -> getr R (reg 21) = Z_to_bv 64 2147450880 ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  2 <= (V 57%nat) <= 21 -> 7036928 <= (V 54%nat) <= 140737488355327 -> L5.u8_at RSEGS M (V 54%nat) (V 56%nat) -> 0 <= (V 56%nat) <= 255 ->
  L5KA.zeros_at M (((V 54%nat) / 8) + 2147450880) 1 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc3d8 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prN6c -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 771032
        /\ getr R' (reg 9) = Z_to_bv 64 ((V 57%nat) - 1)
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 (V 56%nat)
        /\ getr R' (reg 18) = Z_to_bv 64 (V 54%nat)
        /\ getr R' (reg 19) = Z_to_bv 64 (V 54%nat)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_129 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prN6e := BndP_Na_134.LibSegNa_va_prN6e.
Definition KS_va_prN6e : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prN6e.regs0 Pva_prN6e.regs_out0).
Lemma KS_va_prN6e_ok : BG.kept_ok 80 Pva_prN6e.regs0 Pva_prN6e.regs_out0 KS_va_prN6e = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_130 ())). Qed.
Lemma va_prN6e_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 35%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 37%nat) < 2 ^ 64 -> 0 <= (V 38%nat) < 2 ^ 64 -> 0 <= (V 39%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 -> 0 <= (V 41%nat) < 2 ^ 64 -> 0 <= (V 42%nat) < 2 ^ 64 -> 0 <= (V 43%nat) < 2 ^ 64 -> 0 <= (V 44%nat) < 2 ^ 64 -> 0 <= (V 45%nat) < 2 ^ 64 -> 0 <= (V 57%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 57%nat) ->
  140735332487264 <= (V 2%nat) <= 140737488355328 -> aligned (V 2%nat) 16 -> L5.u64_at RSEGS M ((V 2%nat) - 8) (V 35%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 16) (V 36%nat) ->
  L5.u64_at RSEGS M ((V 2%nat) - 24) (V 37%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 32) (V 38%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 40) (V 39%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 48) (V 40%nat) ->
  L5.u64_at RSEGS M ((V 2%nat) - 56) (V 41%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 64) (V 42%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 72) (V 43%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 80) (V 44%nat) ->
  L5.u64_at RSEGS M ((V 2%nat) - 88) (V 45%nat) -> 1 <= (V 57%nat) <= 1 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc3d8 M) (st fx' R' 0xbc444 M')
        /\ (forall x, In x KS_va_prN6e -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 (V 35%nat)
        /\ getr R' (reg 2) = Z_to_bv 64 (V 2%nat)
        /\ getr R' (reg 8) = Z_to_bv 64 (V 36%nat)
        /\ getr R' (reg 9) = Z_to_bv 64 (V 37%nat)
        /\ getr R' (reg 18) = Z_to_bv 64 (V 38%nat)
        /\ getr R' (reg 19) = Z_to_bv 64 (V 39%nat)
        /\ getr R' (reg 20) = Z_to_bv 64 (V 40%nat)
        /\ getr R' (reg 21) = Z_to_bv 64 (V 41%nat)
        /\ getr R' (reg 22) = Z_to_bv 64 (V 42%nat)
        /\ getr R' (reg 23) = Z_to_bv 64 (V 43%nat)
        /\ getr R' (reg 24) = Z_to_bv 64 (V 44%nat)
        /\ getr R' (reg 25) = Z_to_bv 64 (V 45%nat)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP2 ()) [] (Mh_0208_blobs1.kr_b_131 ())). Qed.
(* [comment removed for export] *)

End VASPRP2.

End VaSPrP2.
Module VaSPrP3.
(* [comment removed for export] *)
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0007.   (* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From stdpp.bitvector Require Import definitions.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BigLinkBase. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.CatExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030.CatSim OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.SeqExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.StoreOk OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.Hoare OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.ShapeAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.SpinAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.HeapIface OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.AxSymRun3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.BigLinkBase OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.BigLinkGlue OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.L5Defs OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5Kn OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5KnA.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0177. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0177.
Import ListNotations. Import AX2. Import AX2B. Import AX2S.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Ltac Zify.zify_convert_to_euclidean_division_equations_flag ::= constr:(false).
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_VaSPrP3 () := "C47Corelib7Classes9Morphisms6ProperC47Corelib7Classes?RelationClasses9ReflexiveC47Corelib7Classes9Morphisms:forall_defC46Stdlib5Lists4List2hdC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA6fframeC46Stdlib5Lists4List4inclC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55rangeC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR6regionC47Corelib4Init5Logic8eq_ind_rC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K@nth_error_singleC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K6zagreeI47Corelib4Init9Datatypes6option00C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA6zpolyAK47Corelib4Init9Datatypes6option01I47Corelib4Init5Logic2eq00K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1N02I45stdpp9bitvector;definitions2bv00C56Stdlib6ZArith6BinInt1Z6moduloC45stdpp9bitvector;definitions7Z_to_bvC45stdpp9bitvector;definitions;bv_unsignedC45stdpp9bitvector;definitions5bv_eqC45stdpp9bitvector;definitions7bv_wrapK47Corelib7Numbers7BinNums1Z02C56Stdlib6ZArith6BinInt1Z3powC56Stdlib6ZArith6BinInt1Z>pow_pos_nonnegC56Stdlib6ZArith6BinInt1Z2ltC56Stdlib6ZArith6BinInt1Z2leC56Stdlib6ZArith6BinInt1Z:pow_nonnegK47Corelib4Init9Datatypes4list01I47Corelib4Init9Datatypes4list00K46Stdlib9micromega6VarMap1t01I46Stdlib9micromega6VarMap1t00I46Stdlib9micromega=RingMicromega7Formula00K46Stdlib9micromega7EnvRing5PExpr01K46Stdlib9micromega7EnvRing5PExpr07K46Stdlib9micromega=RingMicromega7Formula01K46Stdlib9micromega5Tauto8GFormula04K46Stdlib9micromega5Tauto8GFormula07C46Stdlib9micromega5Tauto8BFormulaK47Corelib4Init5Logic2eq01C46Stdlib9micromega:ZMicromega=ZTautoCheckerC46Stdlib9micromega6VarMap4findC46Stdlib9micromega:ZMicromegaCZTautoChecker_soundC56Stdlib6ZArith6BinInt1Z7mod_modC45stdpp9bitvector;definitions@Z_to_bv_unsignedC6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26edenotC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA<zpolyA_soundC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG@word_of_unsignedI6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX23env00I47Corelib4Init9Datatypes3nat00I47Corelib7Numbers7BinNums1Z00I6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr00K47Corelib7Numbers7BinNums8positive03C5ARocqVerifyHarness?AgentSubmission;BigLinkBase2BL2MMI47Corelib7Numbers7BinNums1N00I47Corelib4Init5Logic3and00K47Corelib7Numbers7BinNums1Z01I47Corelib4Init5Logic4True00I46Stdlib9micromega:ZMicromega;ZArithProof00C46Stdlib9micromega5Tauto5eKindI47Corelib4Init9Datatypes4unit00K46Stdlib9micromega5Tauto4kind01K46Stdlib9micromega=RingMicromega3Op201K47Corelib4Init9Datatypes4unit01I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01I47Corelib4Init5Logic5False00K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX25saddr01K47Corelib4Init9Datatypes3nat02K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry01C5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S9kentry_okC56Stdlib6ZArith6BinInt1Z3addC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u64_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=u64_of_KWord8C5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsK47Corelib4Init9Datatypes3nat01C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u32_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=u32_of_KWord4C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55u8_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K<u8_of_KWord1I47Corelib4Init5Peano2le00C56Stdlib6ZArith6BinInt1Z6of_natC5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S4flatC6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26adenotC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K8adenot_eC47Corelib4Init5Logic6eq_indC45stdpp9bitvector;definitionsDbv_unsigned_in_rangeC45stdpp9bitvector;definitions:bv_modulusC4ELinuxProcessSemantics?LinuxProcessSem6BvBase=Z_to_le_bytesK46Stdlib9micromega6VarMap1t02K46Stdlib9micromega7EnvRing5PExpr02K46Stdlib9micromega5Tauto8GFormula05K47Corelib4Init9Datatypes6option02K46Stdlib9micromega5Tauto8GFormula08C56Stdlib6ZArith6BinInt1Z9mod_smallK45stdpp9bitvector;definitions2bv01C45stdpp9bitvector;definitions6bv_addC56Stdlib6ZArith6BinInt1Z?add_mod_idemp_lC45stdpp9bitvector;definitions?bv_add_unsignedC56Stdlib6ZArith6BinInt1Z3divK47Corelib4Init9Datatypes4list02C47Corelib4Init5Logic7f_equalC35stdpp7tactics<f_equal_helpC56Stdlib6ZArith6BinInt1Z6shiftrC56Stdlib6ZArith6BinInt1Z?shiftr_div_pow2K47Corelib4Init5Logic3and01C47Corelib4Init5Logic9False_indC4ARocqVerifyHarness?AgentSubmission8PropExec3rdnC4ELinuxProcessSemantics?LinuxProcessSem>RiscvSemantics@word_to_le_bytesC4ARocqVerifyHarness?AgentSubmission8PropExec7seg_romK46Stdlib9micromega=RingMicromega3Op203K46Stdlib9micromega=RingMicromega3Op205K47Corelib4Init5Logic4True01K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry0:C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L57definedC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K?defined_of_KUnkC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA@u8_of_KWord1_modK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry02C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA8zeros_atC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA>zeros_of_KZeroK47Corelib7Numbers7BinNums8positive01C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K9land_le_rC56Stdlib6ZArith6BinInt1Z4landK46Stdlib9micromega=RingMicromega5Psatz02K46Stdlib9micromega=RingMicromega5Psatz06K46Stdlib9micromega:ZMicromega;ZArithProof02K46Stdlib9micromega6VarMap1t03K46Stdlib9micromega5Tauto8GFormula03K46Stdlib9micromega:ZMicromega;ZArithProof01C56Stdlib6ZArith6BinInt1Z3lorC56Stdlib6ZArith6BinInt1Z:lor_nonnegC56Stdlib6ZArith6BinInt1Z6eq_decC47Corelib4Init5Logic3notI47Corelib4Init6Specif7sumbool00C56Stdlib6ZArith6BinInt1Z7lor_0_lC56Stdlib6ZArith6BinInt1Z7lor_0_rC56Stdlib6ZArith6BinInt1Z4log2C56Stdlib6ZArith6BinInt1Z3maxC56Stdlib6ZArith6BinInt1Z<log2_lt_pow2C56Stdlib6ZArith6BinInt1Z:max_lub_ltC56Stdlib6ZArith6BinInt1Z8log2_lorC56Stdlib6ZArith6BinInt1Z>log2_lt_cancelC47Corelib4Init5Logic5proj2C56Stdlib6ZArith6BinInt1Z9land_commC46Stdlib5Lists4List2InC56Stdlib6ZArith6BinInt1Z3ltbC47Corelib4Init9Datatypes4andbC47Corelib5Lists7ListDef3seqC46Stdlib5Lists4List7forallbC47Corelib4Init5Logic3iffC47Corelib7Classes9MorphismsDiff_impl_subrelationC46Stdlib5Lists4List>forallb_forallC56Stdlib6ZArith6BinInt1Z6to_natC47Corelib4Init3Nat3addC47Corelib4Init5Peano2ltC46Stdlib5Lists4List6in_seqC46Stdlib9micromega;ZifyClasses9and_morphC56Stdlib6ZArith6BinInt1Z8max_specI47Corelib4Init5Logic2or00K47Corelib7Numbers7BinNums1Z03K46Stdlib9micromega7EnvRing3Pol01K46Stdlib9micromega=RingMicromega5Psatz04K46Stdlib9micromega5Tauto8GFormula06K46Stdlib9micromega7EnvRing5PExpr03C46Stdlib9micromega;ZifyClasses;rew_iff_revC56Stdlib6ZArith4Znat5Z2Nat2idC47Corelib4Init9Datatypes9andb_propC46Stdlib9micromega9SatDivModCZ_mod_nonneg_nonnegC56Stdlib6ZArith6BinInt1Z7div_modC56Stdlib6ZArith6BinInt1Z3mulC56Stdlib6ZArith6BinInt1Z=mod_pos_boundC56Stdlib6ZArith6BinInt1Z=mod_neg_boundC56Stdlib5omega8PreOmega1Z;div_0_r_extC56Stdlib5omega8PreOmega1Z;mod_0_r_extK46Stdlib9micromega5Tauto8GFormula01C56Stdlib6ZArith6BinInt1Z3lebC46Stdlib9micromega;ZifyClasses5mkappC46Stdlib9micromega;ZifyClasses5mkrelC46Stdlib9micromega;ZifyClasses6mkapp2K46Stdlib9micromega5Tauto8GFormula0:C46Stdlib9micromega8ZifyInst@of_nat_to_nat_eqC56Stdlib6ZArith4Znat5Nat2Z6inj_leC56Stdlib5Arith8PeanoNat3Nat3addC56Stdlib6ZArith4Znat5Nat2Z7inj_addC56Stdlib6ZArith4Znat5Nat2Z6inj_ltK46Stdlib9micromega5Tauto4kind02C6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG7kept_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prB3z5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prB3z9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3;KS_va_prB3zC46Stdlib5Lists4List2tlC4ELinuxProcessSemantics5Riscv7Prelude5bvmapC56Stdlib6ZArith6BinInt1Z3subc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP37alignedC47Corelib4Init5Logic5proj1C4ARocqVerifyHarness?AgentSubmission8PropExec4getrK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX23env01C6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX22evC56Stdlib6NArith6BinNat1N6to_natC5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA6za_litC5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA8za_startK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr02K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr01K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr03C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K:zagree_allc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3=word_of_zpolyC47Corelib4Init5Logic6eq_symC47Corelib4Init5Logic8eq_transC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG5slotsC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG@regs_ok_of_slotsC5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S7regs_okK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry06K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry05C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA:zpolyA_valC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KRangeC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KAlignC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KWord8C46Stdlib9micromega9SatDivModCZ_div_nonneg_nonnegK46Stdlib9micromega=RingMicromega5Psatz07K46Stdlib9micromega=RingMicromega5Psatz05K46Stdlib9micromega7EnvRing5PExpr05C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA<kentry_KZeroK47Corelib5Lists7ListDef6Forall01C5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S7know_okC5ARocqVerifyHarness?AgentSubmission7Mh_00387StoreOk9mem_growsC4ARocqVerifyHarness?AgentSubmission8PropExec4mkstI47Corelib4Init5Logic2ex00C5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP8bfact_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prB3z<seg_sound_axI47Corelib4Init9Datatypes4prod00K47Corelib4Init9Datatypes4prod01C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=outside_nil_eC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG9kept_regsC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG7out_regC5ARocqVerifyHarness?AgentSubmission7Mh_01129AxSymRun3<expr_vars_ltC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K9zagree_ltK47Corelib4Init5Logic2ex01C5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA7za_stepK47Corelib5Lists7ListDef6Forall02I5ARocqVerifyHarness?AgentSubmission7Mh_00306CatSim6msteps00C46Stdlib5Lists4List9nth_errorC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR5ps_pcC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR7ps_regsC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP:regions_okC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP7outsideC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR8ps_cellsC5ARocqVerifyHarness?AgentSubmission7Mh_01129AxSymRun39env_agreeC47Corelib5Lists7ListDef3nthI6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry00I6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR9post_spec00c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prB3z3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prB3z2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prB3z3NX0I4ARocqVerifyHarness?AgentSubmission8PropExec7FPState00K47Corelib7Numbers7BinNums1N01K4ELinuxProcessSemantics5Riscv5Instr5aluop01K4ELinuxProcessSemantics5Riscv5Instr5aluop07c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prB3z3kn0I5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP5bfact00c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prB3z3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3>KS_va_prB3z_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prB3n5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prB3n9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3;KS_va_prB3nc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prB3n<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prB3n3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prB3n2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prB3n3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prB3n3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prB3n3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3>KS_va_prB3n_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP38Pva_prC35regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP38Pva_prC39regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3:KS_va_prC3c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP38Pva_prC3<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP38Pva_prC33PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP38Pva_prC32F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP38Pva_prC33NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP38Pva_prC33kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP38Pva_prC33ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3=KS_va_prC3_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prD3z5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prD3z9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3;KS_va_prD3zC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KWord1c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prD3z<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prD3z3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prD3z2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prD3z3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prD3z3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prD3z3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3>KS_va_prD3z_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3:Pva_prD3n15regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3:Pva_prD3n19regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3<KS_va_prD3n1c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3:Pva_prD3n1<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3:Pva_prD3n13PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3:Pva_prD3n12F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3:Pva_prD3n13NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3:Pva_prD3n13kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3:Pva_prD3n13ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3?KS_va_prD3n1_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3:Pva_prD3n25regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3:Pva_prD3n29regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3<KS_va_prD3n2c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3:Pva_prD3n2<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3:Pva_prD3n23PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3:Pva_prD3n22F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3:Pva_prD3n23NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3:Pva_prD3n23kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3:Pva_prD3n23ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3?KS_va_prD3n2_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3:Pva_prD3n35regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3:Pva_prD3n39regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3<KS_va_prD3n3c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3:Pva_prD3n3<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3:Pva_prD3n33PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3:Pva_prD3n32F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3:Pva_prD3n33NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3:Pva_prD3n33kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3:Pva_prD3n33ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3?KS_va_prD3n3_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prN5c5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prN5c9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3;KS_va_prN5cc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prN5c<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prN5c3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prN5c2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prN5c3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prN5c3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prN5c3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3>KS_va_prN5c_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prN5e5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prN5e9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3;KS_va_prN5ec7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prN5e<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prN5e3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prN5e2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prN5e3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prN5e3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP39Pva_prN5e3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3>KS_va_prN5e_ok". Local Ltac lia := L5FastLia.plia.

Module VASPRP3.
Abbreviation RSEGS := Asan.M.loaded_segments.
Notation reg i := (Z_to_bv 5 (Z.of_nat i)) (only parsing).
Notation st fx R pc M := (@mkst fx R (Z_to_bv 64 pc) M (seg_rom Asan.M.loaded_segments)) (only parsing).

(* [comment removed for export] *)
Lemma word_of_zpoly E Vz e z : L5K.zagree E Vz e -> L5KA.zpolyA Vz e = Some z -> edenot E e = Z_to_bv 64 z.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_132 ())). Qed.
(* [comment removed for export] *)
Lemma u64_of_KWord8a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 8 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> L5.u64_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_133 ())). Qed.
Lemma u32_of_KWord4a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 4 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> L5.u32_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_134 ())). Qed.
Lemma u8_of_KWord1a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 1 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> 0 <= v < 256 -> a' = a + off -> L5.u8_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_135 ())). Qed.
(* [comment removed for export] *)
Lemma u8x2_of_KWord2a E M b off e a v a' v0 v1 : kentry_ok RSEGS E M (KWord (SA b off) 2 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> v0 = v mod 256 -> v1 = (v / 256) mod 256 ->
  L5.u8_at RSEGS M a' v0 /\ L5.u8_at RSEGS M (a' + 1) v1.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_136 ())). Qed.
Lemma defined_of_KUnka E M b off ne a n a' : kentry_ok RSEGS E M (KUnk (SA b off) ne) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E ne) = n -> a' = a + off -> L5.defined M a' n.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_137 ())). Qed.
Lemma u8_of_KWord1ma E M b off e a v a' v' : kentry_ok RSEGS E M (KWord (SA b off) 1 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> v' = v mod 256 -> L5.u8_at RSEGS M a' v'.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_138 ())). Qed.
Lemma zeros_of_KZeroa E M b off ne a n a' : kentry_ok RSEGS E M (KZero (SA b off) ne) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E ne) = n -> a' = a + off -> L5KA.zeros_at M a' n.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_139 ())). Qed.
Lemma land_byte a m : 0 <= a -> 0 <= m <= 255 -> 0 <= Z.land a m < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_140 ())). Qed.
Lemma lor_byte a b : 0 <= a < 256 -> 0 <= b < 256 -> 0 <= Z.lor a b < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_141 ())). Qed.
(* [comment removed for export] *)
Lemma land_le_l a m : 0 <= a -> 0 <= m -> Z.land a m <= a.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_142 ())). Qed.
Local Ltac zfacts :=
  repeat (match goal with |- context [Z.land ?a ?m] =>
    lazymatch goal with _ : 0 <= Z.land a m <= m |- _ => fail | _ => pose proof (L5K.land_le_r a m ltac:(lia) ltac:(lia)); pose proof (land_le_l a m ltac:(lia) ltac:(lia)) end end);
  repeat (match goal with |- context [?a / ?c] =>
    lazymatch goal with _ : 0 <= a / c |- _ => fail | _ => pose proof (Z.div_pos a c ltac:(lia) ltac:(lia)); pose proof (Z.mul_div_le a c ltac:(lia)) end end).
Local Ltac nonneg_tac := first [lia | match goal with |- 0 <= ?x mod ?m => exact (proj1 (Z.mod_pos_bound x m ltac:(clear; lia))) end | (zfacts; lia)].
Lemma setbit1_byte a : 0 <= a < 256 -> 0 <= (Z.land a 18446744073709551613 + 2) mod 2 ^ 64 < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_143 ())). Qed.
Local Ltac byte_go :=
  lazymatch goal with
  | |- 0 <= (Z.land _ 18446744073709551613 + 2) mod _ < 256 => apply setbit1_byte; lia
  | |- 0 <= Z.lor _ _ < 256 => apply lor_byte; byte_go
  | |- 0 <= Z.land _ _ < 256 => apply land_byte; [nonneg_tac | lia]
  | _ => zfacts; first [lia | rewrite !Z.mod_small by (rewrite ?Z.mod_small by lia; lia); lia]
  end.
Local Ltac byte_tac0 k := k; byte_go.
Tactic Notation "byte_tac" tactic(k) := byte_tac0 k.
(* [comment removed for export] *)
(* [comment removed for export] *)
Local Ltac solve_modk k :=
  repeat match goal with |- context [(?x mod 18446744073709551616) / _] => rewrite (Z.mod_small x 18446744073709551616) by (k; zfacts; lia) end;
  first [ rewrite Z.mod_small; [ first [reflexivity | k; lia] | k; L5K.zrange_tac ]
        | symmetry; eapply (Z.mod_unique_pos _ _ (-1)); k; unfold BL.MM; lia
        | symmetry; eapply (Z.mod_unique_pos _ _ 1); k; unfold BL.MM; lia ].
(* [comment removed for export] *)
Local Ltac pvz_hg tac := lazymatch goal with |- ?G0 => let PG := fresh "PGoal" in set (PG := G0); tac; subst PG end.
Local Ltac pvz_fold B k := lazymatch B with | ?A2 /\ ?B2 => pvz_fold B2 ltac:(fun T2 => let T := fresh "pvzT" in pose (T := A2 /\ T2); k T) | _ => k B end.
Local Ltac pvz_linconj := lazymatch goal with |- ?A /\ ?B => pvz_fold B ltac:(fun T => change_no_check (A /\ T)) | _ => idtac end.
Local Ltac pvz_unfold ZA := lazymatch type of ZA with forall j, _ = ?f j => tryif is_var f then unfold f else idtac | _ => idtac end.
Tactic Notation "evalEk" constr(ZA) tactic(k) :=
  L5K.norm_expr; eapply L5KA.zpolyA_val; [ apply (L5K.zagree_all _ _ _ ZA) | cbn [L5KA.zpolyA]; pvz_unfold ZA; reflexivity | solve_modk k ].
Tactic Notation "evalEk'" constr(ZA) constr(AG) tactic(k) :=
  L5K.norm_expr; eapply L5KA.zpolyA_val;
  [ eapply (L5K.zagree_lt _ _ _ _ _ AG); [apply (L5K.zagree_all _ _ _ ZA) | vm_compute; reflexivity] | cbn [L5KA.zpolyA]; pvz_unfold ZA; reflexivity | solve_modk k ].
(* [comment removed for export] *)
Definition aligned (a m : Z) : Prop := a mod m = 0.
Definition srl_range (a c lo hi : Z) : Prop := lo <= a / c <= hi.
(* [comment removed for export] *)
Local Ltac exactA H :=
  first [ exact H
        | lazymatch goal with
          | |- L5.u64_at _ _ ?a _ => lazymatch type of H with L5.u64_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.u8_at _ _ ?a _ => lazymatch type of H with L5.u8_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.u32_at _ _ ?a _ => lazymatch type of H with L5.u32_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.writable _ _ ?a _ => lazymatch type of H with L5.writable _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.defined _ ?a _ => lazymatch type of H with L5.defined _ ?b _ => replace a with b by (clear; lia) end
          | |- L5KA.zeros_at _ ?a _ => lazymatch type of H with L5KA.zeros_at _ ?b _ => replace a with b by (clear; lia) end
          end; exact H ].
(* [comment removed for export] *)
Local Ltac den_tac := first [reflexivity | lia | idtac].
(* [comment removed for export] *)
(* [comment removed for export] *)
Local Ltac apc_norm :=
  repeat match goal with
  | |- context [APC.eadd ?a ?b] => let t := eval vm_compute in (APC.eadd a b) in change (APC.eadd a b) with t
  | |- context [APC.esub ?a ?b] => let t := eval vm_compute in (APC.esub a b) in change (APC.esub a b) with t
  | |- context [APC.escale ?c ?e] => let t := eval vm_compute in (APC.escale c e) in change (APC.escale c e) with t
  | |- context [APC.eaddz ?a ?z] => let t := eval vm_compute in (APC.eaddz a z) in change (APC.eaddz a z) with t
  end.
(* [comment removed for export] *)
Local Ltac zp_norm := repeat (match goal with |- context [(?a <=? ?b) && (?c <? ?d)] => let r := eval vm_compute in ((a <=? b) && (c <? d)) in change ((a <=? b) && (c <? d)) with r end);
  repeat (match goal with |- context [2 ^ ?s] => let r := eval vm_compute in (2 ^ s) in change (2 ^ s) with r end); lazy beta iota zeta.
Local Ltac zp_mods := repeat match goal with |- context [(?x mod 18446744073709551616) / _] => rewrite (Z.mod_small x 18446744073709551616) by (zfacts; lia) end.
Local Ltac slotP ZA :=
  first [ assumption | reflexivity
        | (etransitivity; [eassumption|]; symmetry; eapply word_of_zpoly; [apply (L5K.zagree_all _ _ _ ZA) | cbn [L5KA.zpolyA]; pvz_unfold ZA; zp_norm; f_equal; zp_mods; first [reflexivity | clear; zfacts; lia | zfacts; lia]]) ].
(* [comment removed for export] *)
Local Ltac wordP' ZA AG :=
  eapply word_of_zpoly; [ eapply (L5K.zagree_lt _ _ _ _ _ AG); [apply (L5K.zagree_all _ _ _ ZA) | vm_compute; reflexivity]
                        | cbn [L5KA.zpolyA]; pvz_unfold ZA; zp_norm; f_equal; zp_mods; first [reflexivity | clear; zfacts; lia | zfacts; lia] ].
(* [comment removed for export] *)
Module Pva_prB3z := BndP_Na_132.LibSegNa_va_prB3z.
Definition KS_va_prB3z : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prB3z.regs0 Pva_prB3z.regs_out0).
Lemma KS_va_prB3z_ok : BG.kept_ok 80 Pva_prB3z.regs0 Pva_prB3z.regs_out0 KS_va_prB3z = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_144 ())). Qed.
Lemma va_prB3z_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 50%nat) < 2 ^ 64 -> 0 <= (V 51%nat) < 2 ^ 64 -> 0 <= (V 52%nat) < 2 ^ 64 -> 0 <= (V 53%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 51%nat) -> getr R (reg 12) = Z_to_bv 64 (V 52%nat) -> getr R (reg 13) = Z_to_bv 64 18446744073709551612 -> getr R (reg 14) = Z_to_bv 64 17 -> getr R (reg 18) = Z_to_bv 64 (V 50%nat) -> getr R (reg 19) = Z_to_bv 64 (V 52%nat) -> getr R (reg 21) = Z_to_bv 64 2147450880 -> getr R (reg 22) = Z_to_bv 64 (V 53%nat) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  18446744073709551216 <= (V 52%nat) <= 18446744073709551615 -> 0 <= (V 53%nat) <= 0 -> 1 <= (V 51%nat) <= 21 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc1f4 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prB3z -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 770912
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 48
        /\ getr R' (reg 20) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_145 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prB3n := BndP_Na_132.LibSegNa_va_prB3n.
Definition KS_va_prB3n : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prB3n.regs0 Pva_prB3n.regs_out0).
Lemma KS_va_prB3n_ok : BG.kept_ok 80 Pva_prB3n.regs0 Pva_prB3n.regs_out0 KS_va_prB3n = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_146 ())). Qed.
Lemma va_prB3n_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 50%nat) < 2 ^ 64 -> 0 <= (V 51%nat) < 2 ^ 64 -> 0 <= (V 52%nat) < 2 ^ 64 -> 0 <= (V 53%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 51%nat) -> getr R (reg 12) = Z_to_bv 64 (V 52%nat) -> getr R (reg 13) = Z_to_bv 64 18446744073709551612 -> getr R (reg 14) = Z_to_bv 64 17 -> getr R (reg 18) = Z_to_bv 64 (V 50%nat) -> getr R (reg 19) = Z_to_bv 64 (V 52%nat) -> getr R (reg 21) = Z_to_bv 64 2147450880 -> getr R (reg 22) = Z_to_bv 64 (V 53%nat) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  18446744073709551216 <= (V 52%nat) <= 18446744073709551615 -> 18446744073709551613 <= (V 53%nat) <= 18446744073709551615 -> 1 <= (V 51%nat) <= 21 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc1f4 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prB3n -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 770912
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 48
        /\ getr R' (reg 20) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_147 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prC3 := BndP_Na_132.LibSegNa_va_prC3.
Definition KS_va_prC3 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prC3.regs0 Pva_prC3.regs_out0).
Lemma KS_va_prC3_ok : BG.kept_ok 80 Pva_prC3.regs0 Pva_prC3.regs_out0 KS_va_prC3 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_148 ())). Qed.
Lemma va_prC3_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 20) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc360 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prC3 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 770932
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 46).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_149 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prD3z := BndP_Na_132.LibSegNa_va_prD3z.
Definition KS_va_prD3z : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prD3z.regs0 Pva_prD3z.regs_out0).
Lemma KS_va_prD3z_ok : BG.kept_ok 80 Pva_prD3z.regs0 Pva_prD3z.regs_out0 KS_va_prD3z = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_150 ())). Qed.
Lemma va_prD3z_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 50%nat) < 2 ^ 64 -> 0 <= (V 51%nat) < 2 ^ 64 -> 0 <= (V 53%nat) < 2 ^ 64 -> 0 <= (V 56%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 51%nat) -> getr R (reg 18) = Z_to_bv 64 (V 50%nat) -> getr R (reg 20) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) -> getr R (reg 21) = Z_to_bv 64 2147450880 -> getr R (reg 22) = Z_to_bv 64 (V 53%nat) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  0 <= (V 53%nat) <= 0 -> 1 <= (V 51%nat) <= 21 -> 7036928 <= (V 50%nat) <= 140737488355327 -> L5.u8_at RSEGS M (V 50%nat) (V 56%nat) ->
  0 <= (V 56%nat) <= 255 -> L5KA.zeros_at M (((V 50%nat) / 8) + 2147450880) 1 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc374 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prD3z -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 771032
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 (V 56%nat)
        /\ getr R' (reg 19) = Z_to_bv 64 (V 50%nat)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_151 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prD3n1 := BndP_Na_132.LibSegNa_va_prD3n1.
Definition KS_va_prD3n1 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prD3n1.regs0 Pva_prD3n1.regs_out0).
Lemma KS_va_prD3n1_ok : BG.kept_ok 80 Pva_prD3n1.regs0 Pva_prD3n1.regs_out0 KS_va_prD3n1 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_152 ())). Qed.
Lemma va_prD3n1_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 53%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 20) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) -> getr R (reg 22) = Z_to_bv 64 (V 53%nat) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  18446744073709551615 <= (V 53%nat) <= 18446744073709551615 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc374 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prD3n1 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 770980
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 48
        /\ getr R' (reg 19) = Z_to_bv 64 1).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_153 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prD3n2 := BndP_Na_132.LibSegNa_va_prD3n2.
Definition KS_va_prD3n2 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prD3n2.regs0 Pva_prD3n2.regs_out0).
Lemma KS_va_prD3n2_ok : BG.kept_ok 80 Pva_prD3n2.regs0 Pva_prD3n2.regs_out0 KS_va_prD3n2 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_154 ())). Qed.
Lemma va_prD3n2_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 53%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 20) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) -> getr R (reg 22) = Z_to_bv 64 (V 53%nat) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  18446744073709551614 <= (V 53%nat) <= 18446744073709551614 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc374 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prD3n2 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 770980
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 48
        /\ getr R' (reg 19) = Z_to_bv 64 2).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_155 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prD3n3 := BndP_Na_132.LibSegNa_va_prD3n3.
Definition KS_va_prD3n3 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prD3n3.regs0 Pva_prD3n3.regs_out0).
Lemma KS_va_prD3n3_ok : BG.kept_ok 80 Pva_prD3n3.regs0 Pva_prD3n3.regs_out0 KS_va_prD3n3 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_156 ())). Qed.
Lemma va_prD3n3_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 53%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 20) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) -> getr R (reg 22) = Z_to_bv 64 (V 53%nat) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  18446744073709551613 <= (V 53%nat) <= 18446744073709551613 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc374 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prD3n3 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 770980
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 48
        /\ getr R' (reg 19) = Z_to_bv 64 3).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_157 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prN5c := BndP_Na_134.LibSegNa_va_prN5c.
Definition KS_va_prN5c : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prN5c.regs0 Pva_prN5c.regs_out0).
Lemma KS_va_prN5c_ok : BG.kept_ok 80 Pva_prN5c.regs0 Pva_prN5c.regs_out0 KS_va_prN5c = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_158 ())). Qed.
Lemma va_prN5c_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 58%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 19) = Z_to_bv 64 (V 58%nat) -> getr R (reg 20) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  2 <= (V 58%nat) <= 3 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc3a4 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prN5c -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 770980
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 48
        /\ getr R' (reg 19) = Z_to_bv 64 ((V 58%nat) - 1)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_159 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prN5e := BndP_Na_134.LibSegNa_va_prN5e.
Definition KS_va_prN5e : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prN5e.regs0 Pva_prN5e.regs_out0).
Lemma KS_va_prN5e_ok : BG.kept_ok 80 Pva_prN5e.regs0 Pva_prN5e.regs_out0 KS_va_prN5e = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_160 ())). Qed.
Lemma va_prN5e_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 50%nat) < 2 ^ 64 -> 0 <= (V 51%nat) < 2 ^ 64 -> 0 <= (V 56%nat) < 2 ^ 64 -> 0 <= (V 58%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 51%nat) -> getr R (reg 18) = Z_to_bv 64 (V 50%nat) -> getr R (reg 19) = Z_to_bv 64 (V 58%nat) -> getr R (reg 20) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) -> getr R (reg 21) = Z_to_bv 64 2147450880 ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  1 <= (V 58%nat) <= 1 -> 1 <= (V 51%nat) <= 21 -> 7036928 <= (V 50%nat) <= 140737488355327 -> L5.u8_at RSEGS M (V 50%nat) (V 56%nat) ->
  0 <= (V 56%nat) <= 255 -> L5KA.zeros_at M (((V 50%nat) / 8) + 2147450880) 1 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc3a4 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prN5e -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 771032
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 (V 56%nat)
        /\ getr R' (reg 19) = Z_to_bv 64 (V 50%nat)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP3 ()) [] (Mh_0208_blobs1.kr_b_161 ())). Qed.
(* [comment removed for export] *)

End VASPRP3.

End VaSPrP3.
Module VaSPrP4.
(* [comment removed for export] *)
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0007.   (* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From stdpp.bitvector Require Import definitions.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BigLinkBase. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.CatExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030.CatSim OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.SeqExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.StoreOk OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.Hoare OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.ShapeAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.SpinAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.HeapIface OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.AxSymRun3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.BigLinkBase OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.BigLinkGlue OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.L5Defs OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5Kn OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5KnA.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0177. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0177.
Import ListNotations. Import AX2. Import AX2B. Import AX2S.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Ltac Zify.zify_convert_to_euclidean_division_equations_flag ::= constr:(false).
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_VaSPrP4 () := "C47Corelib7Classes9Morphisms6ProperC47Corelib7Classes?RelationClasses9ReflexiveC47Corelib7Classes9Morphisms:forall_defC46Stdlib5Lists4List2hdC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA6fframeC46Stdlib5Lists4List4inclC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55rangeC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR6regionC47Corelib4Init5Logic8eq_ind_rC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K@nth_error_singleC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K6zagreeI47Corelib4Init9Datatypes6option00C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA6zpolyAK47Corelib4Init9Datatypes6option01I47Corelib4Init5Logic2eq00K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1N02I45stdpp9bitvector;definitions2bv00C56Stdlib6ZArith6BinInt1Z6moduloC45stdpp9bitvector;definitions7Z_to_bvC45stdpp9bitvector;definitions;bv_unsignedC45stdpp9bitvector;definitions5bv_eqC45stdpp9bitvector;definitions7bv_wrapK47Corelib7Numbers7BinNums1Z02C56Stdlib6ZArith6BinInt1Z3powC56Stdlib6ZArith6BinInt1Z>pow_pos_nonnegC56Stdlib6ZArith6BinInt1Z2ltC56Stdlib6ZArith6BinInt1Z2leC56Stdlib6ZArith6BinInt1Z:pow_nonnegK47Corelib4Init9Datatypes4list01I47Corelib4Init9Datatypes4list00K46Stdlib9micromega6VarMap1t01I46Stdlib9micromega6VarMap1t00I46Stdlib9micromega=RingMicromega7Formula00K46Stdlib9micromega7EnvRing5PExpr01K46Stdlib9micromega7EnvRing5PExpr07K46Stdlib9micromega=RingMicromega7Formula01K46Stdlib9micromega5Tauto8GFormula04K46Stdlib9micromega5Tauto8GFormula07C46Stdlib9micromega5Tauto8BFormulaK47Corelib4Init5Logic2eq01C46Stdlib9micromega:ZMicromega=ZTautoCheckerC46Stdlib9micromega6VarMap4findC46Stdlib9micromega:ZMicromegaCZTautoChecker_soundC56Stdlib6ZArith6BinInt1Z7mod_modC45stdpp9bitvector;definitions@Z_to_bv_unsignedC6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26edenotC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA<zpolyA_soundC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG@word_of_unsignedI6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX23env00I47Corelib4Init9Datatypes3nat00I47Corelib7Numbers7BinNums1Z00I6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr00K47Corelib7Numbers7BinNums8positive03C5ARocqVerifyHarness?AgentSubmission;BigLinkBase2BL2MMI47Corelib7Numbers7BinNums1N00I47Corelib4Init5Logic3and00K47Corelib7Numbers7BinNums1Z01I47Corelib4Init5Logic4True00I46Stdlib9micromega:ZMicromega;ZArithProof00C46Stdlib9micromega5Tauto5eKindI47Corelib4Init9Datatypes4unit00K46Stdlib9micromega5Tauto4kind01K46Stdlib9micromega=RingMicromega3Op201K47Corelib4Init9Datatypes4unit01I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01I47Corelib4Init5Logic5False00K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX25saddr01K47Corelib4Init9Datatypes3nat02K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry01C5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S9kentry_okC56Stdlib6ZArith6BinInt1Z3addC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u64_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=u64_of_KWord8C5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsK47Corelib4Init9Datatypes3nat01C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u32_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=u32_of_KWord4C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55u8_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K<u8_of_KWord1I47Corelib4Init5Peano2le00C56Stdlib6ZArith6BinInt1Z6of_natC5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S4flatC6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26adenotC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K8adenot_eC47Corelib4Init5Logic6eq_indC45stdpp9bitvector;definitionsDbv_unsigned_in_rangeC45stdpp9bitvector;definitions:bv_modulusC4ELinuxProcessSemantics?LinuxProcessSem6BvBase=Z_to_le_bytesK46Stdlib9micromega6VarMap1t02K46Stdlib9micromega7EnvRing5PExpr02K46Stdlib9micromega5Tauto8GFormula05K47Corelib4Init9Datatypes6option02K46Stdlib9micromega5Tauto8GFormula08C56Stdlib6ZArith6BinInt1Z9mod_smallK45stdpp9bitvector;definitions2bv01C45stdpp9bitvector;definitions6bv_addC56Stdlib6ZArith6BinInt1Z?add_mod_idemp_lC45stdpp9bitvector;definitions?bv_add_unsignedC56Stdlib6ZArith6BinInt1Z3divK47Corelib4Init9Datatypes4list02C47Corelib4Init5Logic7f_equalC35stdpp7tactics<f_equal_helpC56Stdlib6ZArith6BinInt1Z6shiftrC56Stdlib6ZArith6BinInt1Z?shiftr_div_pow2K47Corelib4Init5Logic3and01C47Corelib4Init5Logic9False_indC4ARocqVerifyHarness?AgentSubmission8PropExec3rdnC4ELinuxProcessSemantics?LinuxProcessSem>RiscvSemantics@word_to_le_bytesC4ARocqVerifyHarness?AgentSubmission8PropExec7seg_romK46Stdlib9micromega=RingMicromega3Op203K46Stdlib9micromega=RingMicromega3Op205K47Corelib4Init5Logic4True01K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry0:C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L57definedC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K?defined_of_KUnkC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA@u8_of_KWord1_modK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry02C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA8zeros_atC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA>zeros_of_KZeroK47Corelib7Numbers7BinNums8positive01C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K9land_le_rC56Stdlib6ZArith6BinInt1Z4landK46Stdlib9micromega=RingMicromega5Psatz02K46Stdlib9micromega=RingMicromega5Psatz06K46Stdlib9micromega:ZMicromega;ZArithProof02K46Stdlib9micromega6VarMap1t03K46Stdlib9micromega5Tauto8GFormula03K46Stdlib9micromega:ZMicromega;ZArithProof01C56Stdlib6ZArith6BinInt1Z3lorC56Stdlib6ZArith6BinInt1Z:lor_nonnegC56Stdlib6ZArith6BinInt1Z6eq_decC47Corelib4Init5Logic3notI47Corelib4Init6Specif7sumbool00C56Stdlib6ZArith6BinInt1Z7lor_0_lC56Stdlib6ZArith6BinInt1Z7lor_0_rC56Stdlib6ZArith6BinInt1Z4log2C56Stdlib6ZArith6BinInt1Z3maxC56Stdlib6ZArith6BinInt1Z<log2_lt_pow2C56Stdlib6ZArith6BinInt1Z:max_lub_ltC56Stdlib6ZArith6BinInt1Z8log2_lorC56Stdlib6ZArith6BinInt1Z>log2_lt_cancelC47Corelib4Init5Logic5proj2C56Stdlib6ZArith6BinInt1Z9land_commC46Stdlib5Lists4List2InC56Stdlib6ZArith6BinInt1Z3ltbC47Corelib4Init9Datatypes4andbC47Corelib5Lists7ListDef3seqC46Stdlib5Lists4List7forallbC47Corelib4Init5Logic3iffC47Corelib7Classes9MorphismsDiff_impl_subrelationC46Stdlib5Lists4List>forallb_forallC56Stdlib6ZArith6BinInt1Z6to_natC47Corelib4Init3Nat3addC47Corelib4Init5Peano2ltC46Stdlib5Lists4List6in_seqC46Stdlib9micromega;ZifyClasses9and_morphC56Stdlib6ZArith6BinInt1Z8max_specI47Corelib4Init5Logic2or00K47Corelib7Numbers7BinNums1Z03K46Stdlib9micromega7EnvRing3Pol01K46Stdlib9micromega=RingMicromega5Psatz04K46Stdlib9micromega5Tauto8GFormula06K46Stdlib9micromega7EnvRing5PExpr03C46Stdlib9micromega;ZifyClasses;rew_iff_revC56Stdlib6ZArith4Znat5Z2Nat2idC47Corelib4Init9Datatypes9andb_propC46Stdlib9micromega9SatDivModCZ_mod_nonneg_nonnegC56Stdlib6ZArith6BinInt1Z7div_modC56Stdlib6ZArith6BinInt1Z3mulC56Stdlib6ZArith6BinInt1Z=mod_pos_boundC56Stdlib6ZArith6BinInt1Z=mod_neg_boundC56Stdlib5omega8PreOmega1Z;div_0_r_extC56Stdlib5omega8PreOmega1Z;mod_0_r_extK46Stdlib9micromega5Tauto8GFormula01C56Stdlib6ZArith6BinInt1Z3lebC46Stdlib9micromega;ZifyClasses5mkappC46Stdlib9micromega;ZifyClasses5mkrelC46Stdlib9micromega;ZifyClasses6mkapp2K46Stdlib9micromega5Tauto8GFormula0:C46Stdlib9micromega8ZifyInst@of_nat_to_nat_eqC56Stdlib6ZArith4Znat5Nat2Z6inj_leC56Stdlib5Arith8PeanoNat3Nat3addC56Stdlib6ZArith4Znat5Nat2Z7inj_addC56Stdlib6ZArith4Znat5Nat2Z6inj_ltK46Stdlib9micromega5Tauto4kind02C6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG7kept_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prB4a5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prB4a9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4;KS_va_prB4aC46Stdlib5Lists4List2tlC4ELinuxProcessSemantics5Riscv7Prelude5bvmapC56Stdlib6ZArith6BinInt1Z3subc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP47alignedC47Corelib4Init5Logic5proj1C4ARocqVerifyHarness?AgentSubmission8PropExec4getrK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX23env01C6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX22evC56Stdlib6NArith6BinNat1N6to_natC5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA8za_startK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr02K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr01K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr03C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K:zagree_allc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4=word_of_zpolyC47Corelib4Init5Logic6eq_symC47Corelib4Init5Logic8eq_transC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG5slotsC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG@regs_ok_of_slotsC5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S7regs_okK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry06K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry05C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA:zpolyA_valC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KRangeC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KAlignC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KWord8C46Stdlib9micromega9SatDivModCZ_div_nonneg_nonnegK46Stdlib9micromega=RingMicromega5Psatz07K46Stdlib9micromega=RingMicromega5Psatz05K46Stdlib9micromega7EnvRing5PExpr05C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA<kentry_KZeroC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KWord1K47Corelib5Lists7ListDef6Forall01C5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S7know_okC5ARocqVerifyHarness?AgentSubmission7Mh_00387StoreOk9mem_growsC4ARocqVerifyHarness?AgentSubmission8PropExec4mkstI47Corelib4Init5Logic2ex00C5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP8bfact_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prB4a<seg_sound_axI47Corelib4Init9Datatypes4prod00K47Corelib4Init9Datatypes4prod01C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=outside_nil_eC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG9kept_regsC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG7out_regC5ARocqVerifyHarness?AgentSubmission7Mh_01129AxSymRun3<expr_vars_ltC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K9zagree_ltK47Corelib4Init5Logic2ex01C5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA6za_litC5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA7za_stepK47Corelib5Lists7ListDef6Forall02I5ARocqVerifyHarness?AgentSubmission7Mh_00306CatSim6msteps00C46Stdlib5Lists4List9nth_errorC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR5ps_pcC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR7ps_regsC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP:regions_okC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP7outsideC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR8ps_cellsC5ARocqVerifyHarness?AgentSubmission7Mh_01129AxSymRun39env_agreeC47Corelib5Lists7ListDef3nthI6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry00I6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR9post_spec00c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prB4a3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prB4a2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prB4a3NX0I4ARocqVerifyHarness?AgentSubmission8PropExec7FPState00K47Corelib7Numbers7BinNums1N01K4ELinuxProcessSemantics5Riscv5Instr5aluop01K4ELinuxProcessSemantics5Riscv5Instr5aluop07c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prB4a3kn0I5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP5bfact00c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prB4a3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4>KS_va_prB4a_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prB4b5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prB4b9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4;KS_va_prB4bc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prB4b<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prB4b3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prB4b2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prB4b3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prB4b3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prB4b3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4>KS_va_prB4b_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prB4c5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prB4c9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4;KS_va_prB4cc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prB4c<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prB4c3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prB4c2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prB4c3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prB4c3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prB4c3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4>KS_va_prB4c_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prE15regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prE19regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4:KS_va_prE1c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prE1<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prE13PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prE12F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prE13NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prE13kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prE13ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4=KS_va_prE1_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prE25regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prE29regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4:KS_va_prE2c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prE2<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prE23PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prE22F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prE23NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prE23kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prE23ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4=KS_va_prE2_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP47Pva_prF5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP47Pva_prF9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49KS_va_prFc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP47Pva_prF<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP47Pva_prF3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP47Pva_prF2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP47Pva_prF3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP47Pva_prF3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP47Pva_prF3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4<KS_va_prF_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prN7c5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prN7c9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4;KS_va_prN7cc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prN7c<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prN7c3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prN7c2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prN7c3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prN7c3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prN7c3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4>KS_va_prN7c_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prN7e5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prN7e9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4;KS_va_prN7ec7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prN7e<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prN7e3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prN7e2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prN7e3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prN7e3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49Pva_prN7e3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4>KS_va_prN7e_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prGa5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prGa9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4:KS_va_prGac7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prGa<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prGa3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prGa2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prGa3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prGa3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prGa3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4=KS_va_prGa_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prGb5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prGb9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4:KS_va_prGbc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prGb<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prGb3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prGb2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prGb3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prGb3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP48Pva_prGb3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4=KS_va_prGb_ok". Local Ltac lia := L5FastLia.plia.

Module VASPRP4.
Abbreviation RSEGS := Asan.M.loaded_segments.
Notation reg i := (Z_to_bv 5 (Z.of_nat i)) (only parsing).
Notation st fx R pc M := (@mkst fx R (Z_to_bv 64 pc) M (seg_rom Asan.M.loaded_segments)) (only parsing).

(* [comment removed for export] *)
Lemma word_of_zpoly E Vz e z : L5K.zagree E Vz e -> L5KA.zpolyA Vz e = Some z -> edenot E e = Z_to_bv 64 z.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_162 ())). Qed.
(* [comment removed for export] *)
Lemma u64_of_KWord8a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 8 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> L5.u64_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_163 ())). Qed.
Lemma u32_of_KWord4a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 4 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> L5.u32_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_164 ())). Qed.
Lemma u8_of_KWord1a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 1 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> 0 <= v < 256 -> a' = a + off -> L5.u8_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_165 ())). Qed.
(* [comment removed for export] *)
Lemma u8x2_of_KWord2a E M b off e a v a' v0 v1 : kentry_ok RSEGS E M (KWord (SA b off) 2 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> v0 = v mod 256 -> v1 = (v / 256) mod 256 ->
  L5.u8_at RSEGS M a' v0 /\ L5.u8_at RSEGS M (a' + 1) v1.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_166 ())). Qed.
Lemma defined_of_KUnka E M b off ne a n a' : kentry_ok RSEGS E M (KUnk (SA b off) ne) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E ne) = n -> a' = a + off -> L5.defined M a' n.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_167 ())). Qed.
Lemma u8_of_KWord1ma E M b off e a v a' v' : kentry_ok RSEGS E M (KWord (SA b off) 1 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> v' = v mod 256 -> L5.u8_at RSEGS M a' v'.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_168 ())). Qed.
Lemma zeros_of_KZeroa E M b off ne a n a' : kentry_ok RSEGS E M (KZero (SA b off) ne) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E ne) = n -> a' = a + off -> L5KA.zeros_at M a' n.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_169 ())). Qed.
Lemma land_byte a m : 0 <= a -> 0 <= m <= 255 -> 0 <= Z.land a m < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_170 ())). Qed.
Lemma lor_byte a b : 0 <= a < 256 -> 0 <= b < 256 -> 0 <= Z.lor a b < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_171 ())). Qed.
(* [comment removed for export] *)
Lemma land_le_l a m : 0 <= a -> 0 <= m -> Z.land a m <= a.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_172 ())). Qed.
Local Ltac zfacts :=
  repeat (match goal with |- context [Z.land ?a ?m] =>
    lazymatch goal with _ : 0 <= Z.land a m <= m |- _ => fail | _ => pose proof (L5K.land_le_r a m ltac:(lia) ltac:(lia)); pose proof (land_le_l a m ltac:(lia) ltac:(lia)) end end);
  repeat (match goal with |- context [?a / ?c] =>
    lazymatch goal with _ : 0 <= a / c |- _ => fail | _ => pose proof (Z.div_pos a c ltac:(lia) ltac:(lia)); pose proof (Z.mul_div_le a c ltac:(lia)) end end).
Local Ltac nonneg_tac := first [lia | match goal with |- 0 <= ?x mod ?m => exact (proj1 (Z.mod_pos_bound x m ltac:(clear; lia))) end | (zfacts; lia)].
Lemma setbit1_byte a : 0 <= a < 256 -> 0 <= (Z.land a 18446744073709551613 + 2) mod 2 ^ 64 < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_173 ())). Qed.
Local Ltac byte_go :=
  lazymatch goal with
  | |- 0 <= (Z.land _ 18446744073709551613 + 2) mod _ < 256 => apply setbit1_byte; lia
  | |- 0 <= Z.lor _ _ < 256 => apply lor_byte; byte_go
  | |- 0 <= Z.land _ _ < 256 => apply land_byte; [nonneg_tac | lia]
  | _ => zfacts; first [lia | rewrite !Z.mod_small by (rewrite ?Z.mod_small by lia; lia); lia]
  end.
Local Ltac byte_tac0 k := k; byte_go.
Tactic Notation "byte_tac" tactic(k) := byte_tac0 k.
(* [comment removed for export] *)
(* [comment removed for export] *)
Local Ltac solve_modk k :=
  repeat match goal with |- context [(?x mod 18446744073709551616) / _] => rewrite (Z.mod_small x 18446744073709551616) by (k; zfacts; lia) end;
  first [ rewrite Z.mod_small; [ first [reflexivity | k; lia] | k; L5K.zrange_tac ]
        | symmetry; eapply (Z.mod_unique_pos _ _ (-1)); k; unfold BL.MM; lia
        | symmetry; eapply (Z.mod_unique_pos _ _ 1); k; unfold BL.MM; lia ].
(* [comment removed for export] *)
Local Ltac pvz_hg tac := lazymatch goal with |- ?G0 => let PG := fresh "PGoal" in set (PG := G0); tac; subst PG end.
Local Ltac pvz_fold B k := lazymatch B with | ?A2 /\ ?B2 => pvz_fold B2 ltac:(fun T2 => let T := fresh "pvzT" in pose (T := A2 /\ T2); k T) | _ => k B end.
Local Ltac pvz_linconj := lazymatch goal with |- ?A /\ ?B => pvz_fold B ltac:(fun T => change_no_check (A /\ T)) | _ => idtac end.
Local Ltac pvz_unfold ZA := lazymatch type of ZA with forall j, _ = ?f j => tryif is_var f then unfold f else idtac | _ => idtac end.
Tactic Notation "evalEk" constr(ZA) tactic(k) :=
  L5K.norm_expr; eapply L5KA.zpolyA_val; [ apply (L5K.zagree_all _ _ _ ZA) | cbn [L5KA.zpolyA]; pvz_unfold ZA; reflexivity | solve_modk k ].
Tactic Notation "evalEk'" constr(ZA) constr(AG) tactic(k) :=
  L5K.norm_expr; eapply L5KA.zpolyA_val;
  [ eapply (L5K.zagree_lt _ _ _ _ _ AG); [apply (L5K.zagree_all _ _ _ ZA) | vm_compute; reflexivity] | cbn [L5KA.zpolyA]; pvz_unfold ZA; reflexivity | solve_modk k ].
(* [comment removed for export] *)
Definition aligned (a m : Z) : Prop := a mod m = 0.
Definition srl_range (a c lo hi : Z) : Prop := lo <= a / c <= hi.
(* [comment removed for export] *)
Local Ltac exactA H :=
  first [ exact H
        | lazymatch goal with
          | |- L5.u64_at _ _ ?a _ => lazymatch type of H with L5.u64_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.u8_at _ _ ?a _ => lazymatch type of H with L5.u8_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.u32_at _ _ ?a _ => lazymatch type of H with L5.u32_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.writable _ _ ?a _ => lazymatch type of H with L5.writable _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.defined _ ?a _ => lazymatch type of H with L5.defined _ ?b _ => replace a with b by (clear; lia) end
          | |- L5KA.zeros_at _ ?a _ => lazymatch type of H with L5KA.zeros_at _ ?b _ => replace a with b by (clear; lia) end
          end; exact H ].
(* [comment removed for export] *)
Local Ltac den_tac := first [reflexivity | lia | idtac].
(* [comment removed for export] *)
(* [comment removed for export] *)
Local Ltac apc_norm :=
  repeat match goal with
  | |- context [APC.eadd ?a ?b] => let t := eval vm_compute in (APC.eadd a b) in change (APC.eadd a b) with t
  | |- context [APC.esub ?a ?b] => let t := eval vm_compute in (APC.esub a b) in change (APC.esub a b) with t
  | |- context [APC.escale ?c ?e] => let t := eval vm_compute in (APC.escale c e) in change (APC.escale c e) with t
  | |- context [APC.eaddz ?a ?z] => let t := eval vm_compute in (APC.eaddz a z) in change (APC.eaddz a z) with t
  end.
(* [comment removed for export] *)
Local Ltac zp_norm := repeat (match goal with |- context [(?a <=? ?b) && (?c <? ?d)] => let r := eval vm_compute in ((a <=? b) && (c <? d)) in change ((a <=? b) && (c <? d)) with r end);
  repeat (match goal with |- context [2 ^ ?s] => let r := eval vm_compute in (2 ^ s) in change (2 ^ s) with r end); lazy beta iota zeta.
Local Ltac zp_mods := repeat match goal with |- context [(?x mod 18446744073709551616) / _] => rewrite (Z.mod_small x 18446744073709551616) by (zfacts; lia) end.
Local Ltac slotP ZA :=
  first [ assumption | reflexivity
        | (etransitivity; [eassumption|]; symmetry; eapply word_of_zpoly; [apply (L5K.zagree_all _ _ _ ZA) | cbn [L5KA.zpolyA]; pvz_unfold ZA; zp_norm; f_equal; zp_mods; first [reflexivity | clear; zfacts; lia | zfacts; lia]]) ].
(* [comment removed for export] *)
Local Ltac wordP' ZA AG :=
  eapply word_of_zpoly; [ eapply (L5K.zagree_lt _ _ _ _ _ AG); [apply (L5K.zagree_all _ _ _ ZA) | vm_compute; reflexivity]
                        | cbn [L5KA.zpolyA]; pvz_unfold ZA; zp_norm; f_equal; zp_mods; first [reflexivity | clear; zfacts; lia | zfacts; lia] ].
(* [comment removed for export] *)
Module Pva_prB4a := BndP_Na_132.LibSegNa_va_prB4a.
Definition KS_va_prB4a : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prB4a.regs0 Pva_prB4a.regs_out0).
Lemma KS_va_prB4a_ok : BG.kept_ok 80 Pva_prB4a.regs0 Pva_prB4a.regs_out0 KS_va_prB4a = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_174 ())). Qed.
Lemma va_prB4a_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 50%nat) < 2 ^ 64 -> 0 <= (V 51%nat) < 2 ^ 64 -> 0 <= (V 52%nat) < 2 ^ 64 -> 0 <= (V 53%nat) < 2 ^ 64 -> 0 <= (V 56%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 51%nat) -> getr R (reg 12) = Z_to_bv 64 (V 52%nat) -> getr R (reg 13) = Z_to_bv 64 18446744073709551612 -> getr R (reg 14) = Z_to_bv 64 17 -> getr R (reg 18) = Z_to_bv 64 (V 50%nat) -> getr R (reg 19) = Z_to_bv 64 (V 52%nat) -> getr R (reg 21) = Z_to_bv 64 2147450880 -> getr R (reg 22) = Z_to_bv 64 (V 53%nat) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  0 <= (V 52%nat) <= 400 -> 18 <= (V 53%nat) <= 421 -> 1 <= (V 51%nat) <= 21 -> 7036928 <= (V 50%nat) <= 140737488355327 ->
  L5.u8_at RSEGS M (V 50%nat) (V 56%nat) -> 0 <= (V 56%nat) <= 255 -> L5KA.zeros_at M (((V 50%nat) / 8) + 2147450880) 1 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc1f4 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prB4a -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 771188
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 (V 56%nat)
        /\ getr R' (reg 19) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_175 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prB4b := BndP_Na_132.LibSegNa_va_prB4b.
Definition KS_va_prB4b : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prB4b.regs0 Pva_prB4b.regs_out0).
Lemma KS_va_prB4b_ok : BG.kept_ok 80 Pva_prB4b.regs0 Pva_prB4b.regs_out0 KS_va_prB4b = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_176 ())). Qed.
Lemma va_prB4b_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 50%nat) < 2 ^ 64 -> 0 <= (V 51%nat) < 2 ^ 64 -> 0 <= (V 52%nat) < 2 ^ 64 -> 0 <= (V 53%nat) < 2 ^ 64 -> 0 <= (V 56%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 51%nat) -> getr R (reg 12) = Z_to_bv 64 (V 52%nat) -> getr R (reg 13) = Z_to_bv 64 18446744073709551612 -> getr R (reg 14) = Z_to_bv 64 17 -> getr R (reg 18) = Z_to_bv 64 (V 50%nat) -> getr R (reg 19) = Z_to_bv 64 (V 52%nat) -> getr R (reg 21) = Z_to_bv 64 2147450880 -> getr R (reg 22) = Z_to_bv 64 (V 53%nat) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  18446744073709551216 <= (V 52%nat) <= 18446744073709551615 -> 18 <= (V 53%nat) <= 20 -> 1 <= (V 51%nat) <= 21 -> 7036928 <= (V 50%nat) <= 140737488355327 ->
  L5.u8_at RSEGS M (V 50%nat) (V 56%nat) -> 0 <= (V 56%nat) <= 255 -> L5KA.zeros_at M (((V 50%nat) / 8) + 2147450880) 1 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc1f4 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prB4b -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 771188
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 (V 56%nat)
        /\ getr R' (reg 19) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_177 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prB4c := BndP_Na_132.LibSegNa_va_prB4c.
Definition KS_va_prB4c : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prB4c.regs0 Pva_prB4c.regs_out0).
Lemma KS_va_prB4c_ok : BG.kept_ok 80 Pva_prB4c.regs0 Pva_prB4c.regs_out0 KS_va_prB4c = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_178 ())). Qed.
Lemma va_prB4c_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 50%nat) < 2 ^ 64 -> 0 <= (V 51%nat) < 2 ^ 64 -> 0 <= (V 52%nat) < 2 ^ 64 -> 0 <= (V 53%nat) < 2 ^ 64 -> 0 <= (V 56%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 51%nat) -> getr R (reg 12) = Z_to_bv 64 (V 52%nat) -> getr R (reg 13) = Z_to_bv 64 18446744073709551612 -> getr R (reg 14) = Z_to_bv 64 17 -> getr R (reg 18) = Z_to_bv 64 (V 50%nat) -> getr R (reg 19) = Z_to_bv 64 (V 52%nat) -> getr R (reg 21) = Z_to_bv 64 2147450880 -> getr R (reg 22) = Z_to_bv 64 (V 53%nat) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  18446744073709551216 <= (V 52%nat) <= 18446744073709551615 -> 18446744073709551217 <= (V 53%nat) <= 18446744073709551612 -> 1 <= (V 51%nat) <= 21 -> 7036928 <= (V 50%nat) <= 140737488355327 ->
  L5.u8_at RSEGS M (V 50%nat) (V 56%nat) -> 0 <= (V 56%nat) <= 255 -> L5KA.zeros_at M (((V 50%nat) / 8) + 2147450880) 1 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc1f4 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prB4c -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 771188
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 (V 56%nat)
        /\ getr R' (reg 19) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_179 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prE1 := BndP_Na_133.LibSegNa_va_prE1.
Definition KS_va_prE1 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prE1.regs0 Pva_prE1.regs_out0).
Lemma KS_va_prE1_ok : BG.kept_ok 80 Pva_prE1.regs0 Pva_prE1.regs_out0 KS_va_prE1 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_180 ())). Qed.
Lemma va_prE1_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 51%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 51%nat) -> getr R (reg 19) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  1 <= (V 51%nat) <= 1 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc474 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prE1 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 771408
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 101).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_181 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prE2 := BndP_Na_133.LibSegNa_va_prE2.
Definition KS_va_prE2 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prE2.regs0 Pva_prE2.regs_out0).
Lemma KS_va_prE2_ok : BG.kept_ok 80 Pva_prE2.regs0 Pva_prE2.regs_out0 KS_va_prE2 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_182 ())). Qed.
Lemma va_prE2_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 51%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 51%nat) -> getr R (reg 19) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  2 <= (V 51%nat) <= 21 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc474 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prE2 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 771216
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 46).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_183 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prF := BndP_Na_133.LibSegNa_va_prF.
Definition KS_va_prF : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prF.regs0 Pva_prF.regs_out0).
Lemma KS_va_prF_ok : BG.kept_ok 80 Pva_prF.regs0 Pva_prF.regs_out0 KS_va_prF = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_184 ())). Qed.
Lemma va_prF_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 51%nat) < 2 ^ 64 -> 0 <= (V 54%nat) < 2 ^ 64 -> 0 <= (V 56%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 (V 51%nat) -> getr R (reg 18) = Z_to_bv 64 ((V 54%nat) - 1) -> getr R (reg 19) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) -> getr R (reg 21) = Z_to_bv 64 2147450880 ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  2 <= (V 51%nat) <= 21 -> 7036928 <= (V 54%nat) <= 140737488355327 -> L5.u8_at RSEGS M (V 54%nat) (V 56%nat) -> 0 <= (V 56%nat) <= 255 ->
  L5KA.zeros_at M (((V 54%nat) / 8) + 2147450880) 1 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc490 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prF -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 771272
        /\ getr R' (reg 9) = Z_to_bv 64 (V 54%nat)
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 (V 56%nat)
        /\ getr R' (reg 18) = Z_to_bv 64 (V 54%nat)
        /\ getr R' (reg 20) = Z_to_bv 64 ((V 51%nat) - 1)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_185 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prN7c := BndP_Na_134.LibSegNa_va_prN7c.
Definition KS_va_prN7c : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prN7c.regs0 Pva_prN7c.regs_out0).
Lemma KS_va_prN7c_ok : BG.kept_ok 80 Pva_prN7c.regs0 Pva_prN7c.regs_out0 KS_va_prN7c = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_186 ())). Qed.
Lemma va_prN7c_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 54%nat) < 2 ^ 64 -> 0 <= (V 56%nat) < 2 ^ 64 -> 0 <= (V 57%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 9) = Z_to_bv 64 ((V 54%nat) - 1) -> getr R (reg 18) = Z_to_bv 64 ((V 54%nat) - 1) -> getr R (reg 19) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) -> getr R (reg 20) = Z_to_bv 64 (V 57%nat) -> getr R (reg 21) = Z_to_bv 64 2147450880 ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  2 <= (V 57%nat) <= 21 -> 7036928 <= (V 54%nat) <= 140737488355327 -> L5.u8_at RSEGS M (V 54%nat) (V 56%nat) -> 0 <= (V 56%nat) <= 255 ->
  L5KA.zeros_at M (((V 54%nat) / 8) + 2147450880) 1 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc4c8 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prN7c -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 771272
        /\ getr R' (reg 9) = Z_to_bv 64 (V 54%nat)
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 (V 56%nat)
        /\ getr R' (reg 18) = Z_to_bv 64 (V 54%nat)
        /\ getr R' (reg 20) = Z_to_bv 64 ((V 57%nat) - 1)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_187 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prN7e := BndP_Na_134.LibSegNa_va_prN7e.
Definition KS_va_prN7e : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prN7e.regs0 Pva_prN7e.regs_out0).
Lemma KS_va_prN7e_ok : BG.kept_ok 80 Pva_prN7e.regs0 Pva_prN7e.regs_out0 KS_va_prN7e = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_188 ())). Qed.
Lemma va_prN7e_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 57%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 19) = Z_to_bv 64 (((V 34%nat) / 8) + 2147450880) -> getr R (reg 20) = Z_to_bv 64 (V 57%nat) ->
  140735332487168 <= (V 34%nat) <= 140737488355320 -> aligned (V 34%nat) 8 -> L5.u64_at RSEGS M (V 34%nat) (V 33%nat) -> L5KA.zeros_at M (((V 34%nat) / 8) + 2147450880) 1 ->
  1 <= (V 57%nat) <= 1 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc4c8 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_prN7e -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 771408
        /\ getr R' (reg 9) = Z_to_bv 64 ((bv_unsigned (getr R (reg 9))) + 1)
        /\ getr R' (reg 10) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 101
        /\ getr R' (reg 18) = Z_to_bv 64 ((bv_unsigned (getr R (reg 18))) + 1)
        /\ getr R' (reg 20) = Z_to_bv 64 0).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_189 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prGa := BndP_Na_133.LibSegNa_va_prGa.
Definition KS_va_prGa : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prGa.regs0 Pva_prGa.regs_out0).
Lemma KS_va_prGa_ok : BG.kept_ok 80 Pva_prGa.regs0 Pva_prGa.regs_out0 KS_va_prGa = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_190 ())). Qed.
Lemma va_prGa_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 35%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 37%nat) < 2 ^ 64 -> 0 <= (V 38%nat) < 2 ^ 64 -> 0 <= (V 39%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 -> 0 <= (V 41%nat) < 2 ^ 64 -> 0 <= (V 42%nat) < 2 ^ 64 -> 0 <= (V 43%nat) < 2 ^ 64 -> 0 <= (V 44%nat) < 2 ^ 64 -> 0 <= (V 45%nat) < 2 ^ 64 -> 0 <= (V 53%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 22) = Z_to_bv 64 (V 53%nat) ->
  140735332487264 <= (V 2%nat) <= 140737488355328 -> aligned (V 2%nat) 16 -> L5.u64_at RSEGS M ((V 2%nat) - 8) (V 35%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 16) (V 36%nat) ->
  L5.u64_at RSEGS M ((V 2%nat) - 24) (V 37%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 32) (V 38%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 40) (V 39%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 48) (V 40%nat) ->
  L5.u64_at RSEGS M ((V 2%nat) - 56) (V 41%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 64) (V 42%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 72) (V 43%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 80) (V 44%nat) ->
  L5.u64_at RSEGS M ((V 2%nat) - 88) (V 45%nat) -> 1 <= (V 53%nat) <= 1000 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc550 M) (st fx' R' 0xbcf08 M')
        /\ (forall x, In x KS_va_prGa -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 (V 35%nat)
        /\ getr R' (reg 2) = Z_to_bv 64 (V 2%nat)
        /\ getr R' (reg 8) = Z_to_bv 64 (V 36%nat)
        /\ getr R' (reg 9) = Z_to_bv 64 (V 37%nat)
        /\ getr R' (reg 10) = Z_to_bv 64 ((V 53%nat) - 1)
        /\ getr R' (reg 11) = Z_to_bv 64 (V 34%nat)
        /\ getr R' (reg 18) = Z_to_bv 64 (V 38%nat)
        /\ getr R' (reg 19) = Z_to_bv 64 (V 39%nat)
        /\ getr R' (reg 20) = Z_to_bv 64 (V 40%nat)
        /\ getr R' (reg 21) = Z_to_bv 64 (V 41%nat)
        /\ getr R' (reg 22) = Z_to_bv 64 (V 42%nat)
        /\ getr R' (reg 23) = Z_to_bv 64 (V 43%nat)
        /\ getr R' (reg 24) = Z_to_bv 64 (V 44%nat)
        /\ getr R' (reg 25) = Z_to_bv 64 (V 45%nat)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_191 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_prGb := BndP_Na_133.LibSegNa_va_prGb.
Definition KS_va_prGb : list nat := Eval vm_compute in (BG.kept_list 80 Pva_prGb.regs0 Pva_prGb.regs_out0).
Lemma KS_va_prGb_ok : BG.kept_ok 80 Pva_prGb.regs0 Pva_prGb.regs_out0 KS_va_prGb = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_192 ())). Qed.
Lemma va_prGb_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 35%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 37%nat) < 2 ^ 64 -> 0 <= (V 38%nat) < 2 ^ 64 -> 0 <= (V 39%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 -> 0 <= (V 41%nat) < 2 ^ 64 -> 0 <= (V 42%nat) < 2 ^ 64 -> 0 <= (V 43%nat) < 2 ^ 64 -> 0 <= (V 44%nat) < 2 ^ 64 -> 0 <= (V 45%nat) < 2 ^ 64 -> 0 <= (V 53%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 8) = Z_to_bv 64 (V 34%nat) -> getr R (reg 22) = Z_to_bv 64 (V 53%nat) ->
  140735332487264 <= (V 2%nat) <= 140737488355328 -> aligned (V 2%nat) 16 -> L5.u64_at RSEGS M ((V 2%nat) - 8) (V 35%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 16) (V 36%nat) ->
  L5.u64_at RSEGS M ((V 2%nat) - 24) (V 37%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 32) (V 38%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 40) (V 39%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 48) (V 40%nat) ->
  L5.u64_at RSEGS M ((V 2%nat) - 56) (V 41%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 64) (V 42%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 72) (V 43%nat) -> L5.u64_at RSEGS M ((V 2%nat) - 80) (V 44%nat) ->
  L5.u64_at RSEGS M ((V 2%nat) - 88) (V 45%nat) -> 18446744073709550616 <= (V 53%nat) <= 18446744073709551615 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbc550 M) (st fx' R' 0xbcf08 M')
        /\ (forall x, In x KS_va_prGb -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 (V 35%nat)
        /\ getr R' (reg 2) = Z_to_bv 64 (V 2%nat)
        /\ getr R' (reg 8) = Z_to_bv 64 (V 36%nat)
        /\ getr R' (reg 9) = Z_to_bv 64 (V 37%nat)
        /\ getr R' (reg 10) = Z_to_bv 64 ((V 53%nat) - 1)
        /\ getr R' (reg 11) = Z_to_bv 64 (V 34%nat)
        /\ getr R' (reg 18) = Z_to_bv 64 (V 38%nat)
        /\ getr R' (reg 19) = Z_to_bv 64 (V 39%nat)
        /\ getr R' (reg 20) = Z_to_bv 64 (V 40%nat)
        /\ getr R' (reg 21) = Z_to_bv 64 (V 41%nat)
        /\ getr R' (reg 22) = Z_to_bv 64 (V 42%nat)
        /\ getr R' (reg 23) = Z_to_bv 64 (V 43%nat)
        /\ getr R' (reg 24) = Z_to_bv 64 (V 44%nat)
        /\ getr R' (reg 25) = Z_to_bv 64 (V 45%nat)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrP4 ()) [] (Mh_0208_blobs1.kr_b_193 ())). Qed.
(* [comment removed for export] *)

End VASPRP4.

End VaSPrP4.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0012.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_tL_Mh_0208 () := "C47Corelib7Classes9Morphisms6ProperC47Corelib7Classes?RelationClasses9ReflexiveC47Corelib7Classes9Morphisms:forall_defC46Stdlib5Lists4List2InC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA6fframeC46Stdlib5Lists4List4inclC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55rangeC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR6regionC47Corelib4Init5Logic8eq_ind_rC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K@nth_error_singleK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1N02I45stdpp9bitvector;definitions2bv00C4ELinuxProcessSemantics5Riscv7Prelude5bvmapI47Corelib4Init9Datatypes6option00I47Corelib4Init9Datatypes4list00I47Corelib4Init9Datatypes4prod00K47Corelib7Numbers7BinNums1Z02C56Stdlib6ZArith6BinInt1Z3addK47Corelib7Numbers7BinNums1Z03C56Stdlib6ZArith6BinInt1Z2leK47Corelib4Init9Datatypes3nat02K47Corelib4Init9Datatypes4list01K46Stdlib9micromega=RingMicromega5Psatz02I46Stdlib9micromega=RingMicromega5Psatz00K46Stdlib9micromega7EnvRing3Pol01K46Stdlib9micromega=RingMicromega5Psatz04K46Stdlib9micromega7EnvRing5PExpr02I46Stdlib9micromega7EnvRing5PExpr00c6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR2VMC56Stdlib6ZArith6BinInt1Z2ltI46Stdlib9micromega=RingMicromega7Formula00K46Stdlib9micromega7EnvRing5PExpr01I46Stdlib9micromega5Tauto8GFormula00c6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR2svI47Corelib4Init5Logic2or00I47Corelib4Init5Logic3and00C56Stdlib6ZArith6BinInt1Z3subK46Stdlib9micromega7EnvRing5PExpr04C56Stdlib6ZArith6BinInt1Z3divC56Stdlib6ZArith6BinInt1Z6moduloC56Stdlib6ZArith6BinInt1Z3powK46Stdlib9micromega7EnvRing5PExpr07c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP47alignedC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02107L5CoreA4L5CA4astkC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA;shadow_zeroC45stdpp9bitvector;definitions7Z_to_bvC4ARocqVerifyHarness?AgentSubmission8PropExec4getrC47Corelib4Init5Logic3notC56Stdlib6ZArith6BinInt1Z3mulc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR3ownc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR5ocellI47Corelib4Init5Logic2eq00C5ARocqVerifyHarness?AgentSubmission7Mh_00188PmLayout5pa_gpC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA5hl_tpK47Corelib4Init5Logic2eq01K47Corelib4Init5Logic2or01C45stdpp9bitvector;definitions;bv_unsignedC46Stdlib9micromega9SatDivModCZ_mod_nonneg_nonnegC46Stdlib9micromega9SatDivModCZ_div_nonneg_nonnegC56Stdlib6ZArith6BinInt1Z>pow_pos_nonnegC56Stdlib6ZArith6BinInt1Z:pow_nonnegC56Stdlib6ZArith6BinInt1Z7div_modC56Stdlib6ZArith6BinInt1Z=mod_neg_boundC56Stdlib5omega8PreOmega1Z;div_0_r_extC56Stdlib5omega8PreOmega1Z;mod_0_r_extC6ARocqVerifyHarness?AgentSubmission7Mh_02255VaKit3VAK7bvu_rngK47Corelib4Init5Logic2or02C56Stdlib6ZArith6BinInt1Z=mod_pos_boundC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55ra_okC5ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs4SCFGC6ARocqVerifyHarness?AgentSubmission7Mh_00907PmSpecs4PMSP3cfgC5ARocqVerifyHarness?AgentSubmission7Mh_00367SpinAlg9srealizesC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L59img_clearC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L58writableC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA8zeros_atC6ARocqVerifyHarness?AgentSubmission7Mh_02255VaKit3VAK3invc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR2RCC47Corelib4Init5Logic6or_indC47Corelib4Init5Logic7and_indc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR6vfactsc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR6bfactsK46Stdlib9micromega6VarMap1t02K46Stdlib9micromega6VarMap1t01I46Stdlib9micromega6VarMap1t00K47Corelib4Init9Datatypes6option02C46Stdlib9micromega5Tauto8BFormulaC46Stdlib9micromega:ZMicromega=ZTautoCheckerC46Stdlib9micromega6VarMap4findC46Stdlib9micromega:ZMicromegaCZTautoChecker_soundc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR4ownvC4ARocqVerifyHarness?AgentSubmission8PropExec7seg_romC4ARocqVerifyHarness?AgentSubmission8PropExec4mkstI47Corelib4Init5Logic2ex00c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4<va_prGa_concC5ARocqVerifyHarness?AgentSubmission7Mh_00387StoreOk9mem_growsc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR4inksc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR7inks_okK47Corelib4Init5Logic2ex01c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4<va_prGb_concC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA4ahidC47Corelib4Init5Logic6eq_indC45stdpp9bitvector;definitionsCZ_to_bv_bv_unsignedK46Stdlib9micromega7EnvRing5PExpr05c6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR7zbv_eqmc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR6fe_prec6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR9back_regsC5ARocqVerifyHarness?AgentSubmission7Mh_00849HeapIface>regs_preservedK47Corelib4Init9Datatypes4list02K46Stdlib9micromega=RingMicromega5Psatz06K46Stdlib9micromega7EnvRing5PExpr03K46Stdlib9micromega=RingMicromega7Formula01K46Stdlib9micromega5Tauto8GFormula04K46Stdlib9micromega:ZMicromega;ZArithProof02C56Stdlib6ZArith6BinInt1Z6of_natK46Stdlib9micromega5Tauto8GFormula05K45stdpp9bitvector;definitions2bv01K46Stdlib9micromega5Tauto8GFormula06C5ARocqVerifyHarness?AgentSubmission7Mh_00368AsanAcct9mrestrictC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u64_atC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55u8_atK46Stdlib9micromega6VarMap1t03K46Stdlib9micromega5Tauto8GFormula03K46Stdlib9micromega5Tauto8GFormula08I5ARocqVerifyHarness?AgentSubmission7Mh_00306CatSim6msteps00K47Corelib4Init5Logic3and01C6ARocqVerifyHarness?AgentSubmission7Mh_02255VaKit3VAK5TAILPC6ARocqVerifyHarness?AgentSubmission7Mh_02255VaKit3VAK8PIECE_roI47Corelib7Numbers7BinNums1Z00I47Corelib4Init9Datatypes3nat00K47Corelib7Numbers7BinNums1Z01C46Stdlib9micromega5Tauto5eKindI47Corelib4Init9Datatypes4unit00K46Stdlib9micromega5Tauto4kind01K46Stdlib9micromega=RingMicromega3Op203K47Corelib4Init9Datatypes4unit01K46Stdlib9micromega:ZMicromega;ZArithProof01I46Stdlib9micromega:ZMicromega;ZArithProof00K46Stdlib9micromega=RingMicromega3Op205K47Corelib4Init5Logic4True01C5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsI47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01I4ARocqVerifyHarness?AgentSubmission8PropExec7FPState00K46Stdlib9micromega=RingMicromega3Op201C6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA6PR_SCRC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA2N1C6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA6PR_MAXc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR5WIMG0c6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR6HSCR16c6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR3HFRc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR4HSCRc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR4GOCRc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR5NEED1C6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA6FE_SCRC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA6FE_MAXc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR3FEQc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR8FE_SCR16c6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR7FE_MAX0c6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR7FE_NEEDK47Corelib7Numbers7BinNums8positive03I4ELinuxProcessSemantics?LinuxProcessSem5State5Model00I6ARocqVerifyHarness?AgentSubmission7Mh_00907PmModel2PM4vstr00C5ARocqVerifyHarness?AgentSubmission7Mh_00849HeapIface6creditI47Corelib7Numbers7BinNums1N00K47Corelib4Init9Datatypes3nat01I47Corelib7Numbers7BinNums8positive00I47Corelib4Init5Logic5False00I47Corelib4Init5Logic4True00c6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR4GOWNC5ARocqVerifyHarness?AgentSubmission7Mh_00249PnLayoutA6ADDR_AC4ARocqVerifyHarness?AgentSubmission5BMode;bm_off_instc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR3KUrc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR4KKUrc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR4KEPTI4ELinuxProcessSemantics?LinuxProcessSem>RiscvSemantics=machine_state00c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4:KS_va_prGac6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4:KS_va_prGbC6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K3rl1C6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K3rl2C6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K3rl3C6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K3rl4C6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K4rl11C6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K4rl10C47Corelib4Init5Logic8iff_reflC47Corelib4Init5Logic3iffC56Stdlib5Arith8PeanoNat3Nat3eqbC47Corelib4Init9Datatypes3appC46Stdlib9micromega:ZMicromega=Zeval_formulaC46Stdlib9micromega5Tauto7eval_bfC46Stdlib9micromega;ZifyClasses5mkrelC46Stdlib9micromega;ZifyClasses7rew_iffc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR7RC_gptpc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR6ra_litc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR7RC_callc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR4cregc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4=va_prN7e_concc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR5RC_ksc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR4kregc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR2GKC56Stdlib6ZArith4Znat5Nat2Z9is_nonnegC35stdpp7tactics<f_equal_helpc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4=va_prN7c_concC47Corelib4Init9Datatypes7nat_indC46Stdlib5Lists4List7existsbC6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K9In_of_memC46Stdlib9micromega;ZifyClasses5mkappC6ARocqVerifyHarness?AgentSubmission7Mh_02255VaKit3VAK4CALLC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02108L5StepAR5L5SAR6cs_allC56Stdlib6ZArith4Znat5Nat2Z8inj_succc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4;KS_va_prN7ec6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4;KS_va_prN7cc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR2RDc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4=va_prB4a_concC47Corelib4Init5Logic9False_indc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4=va_prB4b_concc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4=va_prB4c_concc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR2EKc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4;KS_va_prB4ac6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4;KS_va_prB4bc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4;KS_va_prB4cc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP27alignedc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2=va_prN6e_concc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR4RETKc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2=va_prN6c_concc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2;KS_va_prN6ec6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2;KS_va_prN6cC56Stdlib6ZArith6BinInt1Z6to_natC56Stdlib6ZArith6BinInt1Z3maxC56Stdlib6ZArith6BinInt1Z3oppK46Stdlib9micromega7EnvRing5PExpr06c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP37alignedC56Stdlib6ZArith6BinInt1Z6eq_decI47Corelib4Init6Specif7sumbool00c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3=va_prD3z_concC56Stdlib6ZArith6BinInt1Z8max_specC46Stdlib9micromega;ZifyClasses;rew_iff_revC56Stdlib6ZArith6BinInt1Z7add_0_rC56Stdlib6ZArith6BinInt1Z7sub_0_rc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR3L6Kc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3>va_prD3n1_concc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3>va_prD3n2_concc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3>va_prD3n3_concc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR3L5KK46Stdlib9micromega5Tauto8GFormula07C46Stdlib9micromega8ZifyInst@of_nat_to_nat_eqc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3;KS_va_prD3zc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3<KS_va_prD3n1c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3<KS_va_prD3n2c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3<KS_va_prD3n3c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2=va_prN4e_concc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2=va_prN4c_concc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2;KS_va_prN4ec6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2;KS_va_prN4cc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2=va_prN3e_concc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR3D2Kc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2=va_prN3c_concc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2;KS_va_prN3ec6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2;KS_va_prN3cc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP17alignedc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1=va_prN1z_concc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR3T1Kc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1=va_prN1p_concc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR3L2Kc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1=va_prN1c_concc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1;KS_va_prN1cc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1;KS_va_prN1zc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1;KS_va_prN1pc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1<va_prAp_concc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1<va_prAn_concC6ARocqVerifyHarness?AgentSubmission7Mh_01797L5DefsA3L5A4avisC6ARocqVerifyHarness?AgentSubmission7Mh_01797L5DefsA3L5A:u64_at_visC47Corelib4Init5Logic5proj1c6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR8DISPATCHC6ARocqVerifyHarness?AgentSubmission7Mh_02255VaKit3VAK4INITC6ARocqVerifyHarness?AgentSubmission7Mh_02255VaKit3VAK5PIECEc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR3EK2C6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K4rl12C6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K4rl13C6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K4rl14C6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K4rl15c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1:KS_va_prApc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1:KS_va_prAnC46Stdlib5Lists4List2tlK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr02C47Corelib4Init5Peano2ltK47Corelib4Init9Datatypes6option01K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr01K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry05K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX25saddr01K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr03C56Stdlib6ZArith6BinInt1Z3lebC56Stdlib6ZArith6BinInt1Z3ltbC47Corelib4Init9Datatypes4andbK46Stdlib9micromega=RingMicromega5Psatz07K46Stdlib9micromega:ZMicromega;ZArithProof03K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry08K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry07K46Stdlib9micromega=RingMicromega5Psatz05K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry01C56Stdlib6ZArith6BinInt1Z9mod_smallc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP17alignedC47Corelib4Init5Logic5proj2K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX23env01C6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26edenotC6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX22evC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA6zpolyAC56Stdlib6NArith6BinNat1N6to_natC5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA6za_litC47Corelib4Init3Nat3addC5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA8za_startC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K:zagree_allC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K6zagreeC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA:zpolyA_valC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG5slotsC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG@regs_ok_of_slotsC5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S7regs_okC5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S9kentry_okK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry06C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KRangeC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KAlignC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K<kentry_KDisjC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K:kentry_KWrK47Corelib5Lists7ListDef6Forall01K47Corelib5Lists7ListDef6Forall02C5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S7know_okC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP8bfact_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opB1<seg_sound_axC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR5ps_pcK47Corelib4Init9Datatypes4prod01C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K9zagree_ltc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1=word_of_zpolyC56Stdlib6ZArith6BinInt1Z<eq_decidableC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=outside_nil_eC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K>outside_cons_eC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG<unsigned_litC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG9kept_regsC46Stdlib9micromega;ZifyClasses9and_morphC46Stdlib5Lists4List<nth_error_Inc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1>u8_of_KWord1mac6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1>u64_of_KWord8aC5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA7za_stepC46Stdlib5Lists4List9nth_errorC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR7ps_regsC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP:regions_okC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP7outsideC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR8ps_cellsC5ARocqVerifyHarness?AgentSubmission7Mh_01129AxSymRun39env_agreeC47Corelib5Lists7ListDef3nthC5ARocqVerifyHarness?AgentSubmission7Mh_01129AxSymRun3<expr_vars_ltC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG7out_regc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1=u8_of_KWord1aC5ARocqVerifyHarness?AgentSubmission;BigLinkBase2BL2MMI6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR9post_spec00c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opB13PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opB12F0I6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry00c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opB13NX0I6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr00c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opB19regs_out0C56Stdlib6ZArith4Znat5Nat2Z6inj_ltc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opB16cells0I6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX25saddr00K4ELinuxProcessSemantics5Riscv5Instr5aluop07K4ELinuxProcessSemantics5Riscv5Instr5aluop01I6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX23env00K47Corelib7Numbers7BinNums1N01c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opB15regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opB13kn0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1:KS_va_opB1I5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP5bfact00c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opB13ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1=KS_va_opB1_okK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry02c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP57alignedC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u32_atC56Stdlib6ZArith6BinInt1Z7testbitc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5=word_of_zpolyC47Corelib4Init5Logic6eq_symC47Corelib4Init5Logic8eq_transK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry04C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K;kentry_KImgC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KWord8C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KWord4C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA<kentry_KZeroC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KWord1C56Stdlib6ZArith6BinInt1Z4landC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K@land1_bit0_falseC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5KDkentry_KRange_andlitc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5:Pva_vdKdS2<seg_sound_axC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG;edenot_keptc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5>u64_of_KWord8ac6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5=u8_of_KWord1ac7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5:Pva_vdKdS23PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5:Pva_vdKdS22F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5:Pva_vdKdS23NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5:Pva_vdKdS29regs_out0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5:Pva_vdKdS26cells0K4ELinuxProcessSemantics5Riscv5Instr5aluop0:K47Corelib4Init9Datatypes4bool02c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5:Pva_vdKdS25regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5:Pva_vdKdS23kn0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5<KS_va_vdKdS2c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5:Pva_vdKdS23ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5?KS_va_vdKdS2_okC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K?land1_bit0_truec7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5:Pva_vdKdL2<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5:Pva_vdKdL23PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5:Pva_vdKdL22F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5:Pva_vdKdL23NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5:Pva_vdKdL29regs_out0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5:Pva_vdKdL26cells0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5:Pva_vdKdL25regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5:Pva_vdKdL23kn0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5<KS_va_vdKdL2c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5:Pva_vdKdL23ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5?KS_va_vdKdL2_okc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC2VMc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC2svc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC3ownc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC5ocellC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC7bvu_rngC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC3invc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC2RCc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC6vfactsc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC6bfactsc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC4ownvc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC4inksc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC7inks_okc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC7zbv_eqmc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC6fe_prec6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC9back_regsC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC5TAILPC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC8PIECE_roc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC5WIMG0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC6HSCR16c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC3HFRc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC4HSCRc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC4GOCRc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC5NEED1c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC3FEQc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC8FE_SCR16c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC7FE_MAX0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC7FE_NEEDc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC4GOWNc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC3KUrc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC4KKUrc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC4KEPTc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC7RC_gptpc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC6ra_litc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC7RC_callc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC4cregc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC5RC_ksc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC4kregc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC2GKC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC4CALLC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC7buf_clsc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC2RDc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC2EKc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC4RETKc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC3L6Kc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC3L5Kc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC3D2K".
Module VaSPr.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.LeanFeed.
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool FunctionalExtensionality.
From stdpp.bitvector Require Import definitions.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0089. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0135. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0092. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0179. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.asan.Mh_0210. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require L5ADetailHR. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0018. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0024. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PgV8. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0225. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0012. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.CatExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030.CatSim OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.SeqExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.StoreOk OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.Hoare OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.ShapeAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.SpinAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.AsanAcct OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.HeapIface OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0089.HeapIfaceA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0089.IcptIfaceA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.LibIface OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.L5Defs OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.L5Core OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0135.L5CoreKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5Kn OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5KnA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0092.L5LazyA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0179.L5DefsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.asan.Mh_0210.L5CoreA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.asan.Mh_0210.L5CoreSpecsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.asan.Mh_0210.L5StepAR OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.asan.Mh_0210.L5CoreBR OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.asan.L5ADetailHR OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0018.PmLayout OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0024.PmLayoutA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0018.PnLayout OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0024.PnLayoutA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.PmModel OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.PmModelFacts OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.PmStatics OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0092.PmStaticsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0089.HeapIfaceAMx OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.PmSpecs OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.PmParSpecs OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PmSpecsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PmSpecsAX OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnSpecsAa OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PmModelFactsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnStepA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnASrcKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.PgSrc OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PgV8 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PgSrcA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PgV8A OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnRunBA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PgTxtKitA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0018.PnLayoutQ OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0024.PnLayoutQA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0092.PnQStaticsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0092.PnModelA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnRunA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnVisA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnRunAa OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnAdStrA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0225.VaSpec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0225.VaKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0208.VaSPrP1 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0208.VaSPrP2 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0208.VaSPrP3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0208.VaSPrP4 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0012.Na0_code_rbc538_bc53c.
Import ListNotations.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_VaSPr () := "C47Corelib7Classes9Morphisms6ProperC47Corelib7Classes?RelationClasses9ReflexiveC47Corelib7Classes9Morphisms:forall_defC46Stdlib5Lists4List2hdC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA6fframeC46Stdlib5Lists4List4inclC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55rangeC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR6regionC47Corelib4Init5Logic8eq_ind_rC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K@nth_error_singleK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02C56Stdlib6ZArith6BinInt1Z3powC56Stdlib6ZArith6BinInt1Z6moduloI45stdpp9bitvector;definitions2bv00I47Corelib4Init5Logic2eq00C45stdpp9bitvector;definitions;bv_unsignedC45stdpp9bitvector;definitions5bv_eqK47Corelib7Numbers7BinNums1N02C45stdpp9bitvector;definitions7Z_to_bvC45stdpp9bitvector;definitions7bv_wrapC45stdpp9bitvector;definitions@Z_to_bv_unsignedI47Corelib7Numbers7BinNums1Z00K47Corelib7Numbers7BinNums8positive03I47Corelib7Numbers7BinNums1N00I47Corelib4Init5Logic3and00C56Stdlib6ZArith6BinInt1Z3mulC56Stdlib6ZArith6BinInt1Z3addK47Corelib4Init5Logic2eq01C56Stdlib6ZArith6BinInt1Z>pow_pos_nonnegC56Stdlib6ZArith6BinInt1Z2ltC56Stdlib6ZArith6BinInt1Z2leC56Stdlib6ZArith6BinInt1Z:pow_nonnegK47Corelib4Init9Datatypes4list01I47Corelib4Init9Datatypes4list00K46Stdlib9micromega6VarMap1t01I46Stdlib9micromega6VarMap1t00I46Stdlib9micromega=RingMicromega7Formula00K46Stdlib9micromega7EnvRing5PExpr01K46Stdlib9micromega7EnvRing5PExpr07K46Stdlib9micromega=RingMicromega7Formula01K46Stdlib9micromega5Tauto8GFormula04K46Stdlib9micromega5Tauto8GFormula07C46Stdlib9micromega5Tauto8BFormulaC46Stdlib9micromega:ZMicromega=ZTautoCheckerC46Stdlib9micromega6VarMap4findC46Stdlib9micromega:ZMicromegaCZTautoChecker_soundC56Stdlib6ZArith6BinInt1Z7mod_addc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR8zbv_congK47Corelib7Numbers7BinNums1Z01I47Corelib4Init5Logic4True00I46Stdlib9micromega:ZMicromega;ZArithProof00C46Stdlib9micromega5Tauto5eKindI47Corelib4Init9Datatypes4unit00K46Stdlib9micromega5Tauto4kind01K46Stdlib9micromega=RingMicromega3Op201K47Corelib4Init9Datatypes4unit01I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01I47Corelib4Init5Logic5False00C45stdpp9bitvector;definitionsCZ_to_bv_bv_unsignedC47Corelib4Init5Logic6eq_symC47Corelib4Init5Logic6eq_indK47Corelib7Numbers7BinNums8positive01K47Corelib4Init5Logic3and01C46Stdlib5Lists4List2InC56Stdlib5Arith8PeanoNat3Nat3eqbC46Stdlib5Lists4List7forallbC47Corelib4Init5Logic3iffC47Corelib7Classes9MorphismsDiff_impl_subrelationC46Stdlib5Lists4List>forallb_forallC46Stdlib5Lists4List7existsbI47Corelib4Init5Logic2ex00C46Stdlib5Lists4List>existsb_existsC56Stdlib5Arith8PeanoNat3Nat6eqb_eqc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR4inksI47Corelib4Init9Datatypes3nat00C4ELinuxProcessSemantics5Riscv7Prelude5bvmapC56Stdlib6ZArith6BinInt1Z6of_natC4ARocqVerifyHarness?AgentSubmission8PropExec4getrK47Corelib4Init9Datatypes4list02K47Corelib4Init5Logic2or01c6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR7inks_okC5ARocqVerifyHarness?AgentSubmission7Mh_00849HeapIface>regs_preservedC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02108L5StepAR5L5SAR?cs_of_preservedC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02108L5StepAR5L5SAR6cs_allI47Corelib4Init9Datatypes6option00C56Stdlib6ZArith6BinInt1Z3subc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR3ownK47Corelib4Init9Datatypes3nat02c6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR5ocellK46Stdlib9micromega6VarMap1t02K46Stdlib9micromega6VarMap1t03K46Stdlib9micromega7EnvRing5PExpr02K47Corelib4Init9Datatypes6option02C6ARocqVerifyHarness?AgentSubmission7Mh_00906L5Core3L5C8agree_onC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u64_atK46Stdlib9micromega7EnvRing5PExpr04K46Stdlib9micromega7EnvRing5PExpr03K46Stdlib9micromega5Tauto8GFormula05K46Stdlib9micromega5Tauto8GFormula08C6ARocqVerifyHarness?AgentSubmission7Mh_00906L5Core3L5C<u64_at_agreeC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsK46Stdlib9micromega=RingMicromega3Op205K46Stdlib9micromega=RingMicromega3Op203K47Corelib4Init9Datatypes3nat01C6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA6FE_SCRC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA6FE_MAXC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA2N1C56Stdlib6ZArith6BinInt1Z7le_reflC6ARocqVerifyHarness?AgentSubmission7Mh_02136PnRunA4PQRA3FCMC6ARocqVerifyHarness?AgentSubmission7Mh_02255VaKit3VAK7bvu_rngc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR2svK46Stdlib9micromega=RingMicromega5Psatz02K46Stdlib9micromega:ZMicromega;ZArithProof02K47Corelib7Numbers7BinNums1Z03K46Stdlib9micromega7EnvRing3Pol01K46Stdlib9micromega=RingMicromega5Psatz04K46Stdlib9micromega5Tauto8GFormula06I47Corelib4Init5Logic2or00K46Stdlib9micromega=RingMicromega5Psatz06K46Stdlib9micromega:ZMicromega;ZArithProof01K46Stdlib9micromega7EnvRing5PExpr05c6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR7zbv_eqmK45stdpp9bitvector;definitions2bv01C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55ra_okC5ARocqVerifyHarness?AgentSubmission7Mh_00188PmLayout5pa_gpC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA5hl_tpC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02107L5CoreA4L5CA4astkC56Stdlib6ZArith6BinInt1Z3divC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA;shadow_zeroC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA8ar_sptopC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L57definedC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA<ar_stack_topC46Stdlib9micromega9SatDivModCZ_mod_nonneg_nonnegC56Stdlib6ZArith6BinInt1Z7div_modC47Corelib4Init5Logic3notC56Stdlib6ZArith6BinInt1Z=mod_pos_boundC56Stdlib6ZArith6BinInt1Z=mod_neg_boundC56Stdlib5omega8PreOmega1Z;div_0_r_extC56Stdlib5omega8PreOmega1Z;mod_0_r_extK46Stdlib9micromega=RingMicromega5Psatz07K46Stdlib9micromega=RingMicromega5Psatz05K46Stdlib9micromega:ZMicromega;ZArithProof03K46Stdlib9micromega5Tauto8GFormula03K47Corelib4Init5Logic4True01C5ARocqVerifyHarness?AgentSubmission7Mh_00249PnLayoutA6ADDR_AC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA6PR_SCRC47Corelib4Init9Datatypes3fstC47Corelib4Init9Datatypes3sndC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA6PB_SCRc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR9own_agreec6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR8sp_factsI47Corelib4Init9Datatypes4prod00C6ARocqVerifyHarness?AgentSubmission7Mh_02255VaKit3VAK3invC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L59img_clearC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA4ahidC6ARocqVerifyHarness?AgentSubmission7Mh_01797L5DefsA3L5A4avisC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA8zeros_atC5ARocqVerifyHarness?AgentSubmission7Mh_00368AsanAcct9mrestrictC6ARocqVerifyHarness?AgentSubmission7Mh_00907PmModel2PM6vs_ownC47Corelib4Init9Datatypes3appC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA6vml_ofC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA6ri_invC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02107L5CoreA4L5CA9amodel_okC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA8model_rtK47Corelib4Init9Datatypes4prod01C6ARocqVerifyHarness?AgentSubmission7Mh_00907PmModel2PM7vs_sizeC6ARocqVerifyHarness?AgentSubmission7Mh_02138PmSpecsA5PMSPA2HVC6ARocqVerifyHarness?AgentSubmission7Mh_00928PnModelA4PQMA6pot_ksC5ARocqVerifyHarness?AgentSubmission7Mh_00368AsanAcctAmrestrict_visiblec6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR4GOWNC6ARocqVerifyHarness?AgentSubmission7Mh_02255VaKit3VAK6pfactsC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L58writableC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02108L5StepAR5L5SAR2ekC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02108L5StepAR5L5SAR2dkC6ARocqVerifyHarness?AgentSubmission7Mh_02138PmSpecsA5PMSPA3scAC6ARocqVerifyHarness?AgentSubmission7Mh_0092:PmStaticsA5PMSTA8base_okAC6ARocqVerifyHarness?AgentSubmission7Mh_00907PmSpecs4PMSP;credit_keepC6ARocqVerifyHarness?AgentSubmission7Mh_00928PnModelA4PQMA5ks_okC6ARocqVerifyHarness?AgentSubmission7Mh_00928PnModelA4PQMA7kstr_atC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA6PR_MAXc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR5WIMG0c6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR6HSCR16c6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR3HFRc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR4HSCRc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR4GOCRc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR5NEED1C6ARocqVerifyHarness?AgentSubmission7Mh_02138PmSpecsA5PMSPA4accAI4ELinuxProcessSemantics?LinuxProcessSem5State5Model00I6ARocqVerifyHarness?AgentSubmission7Mh_00907PmModel2PM4vstr00C5ARocqVerifyHarness?AgentSubmission7Mh_00849HeapIface6creditK47Corelib4Init9Datatypes4bool02C46Stdlib9micromega9SatDivModCZ_div_nonneg_nonnegC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L5<writable_subC6ARocqVerifyHarness?AgentSubmission7Mh_02255VaKit3VAK3ctxC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55u8_atC6ARocqVerifyHarness?AgentSubmission7Mh_02255VaKit3VAK9buf_factsc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR2RCC6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K9In_of_memc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR4KEPTC47Corelib4Init5Logic7and_indC47Corelib4Init5Logic6or_indK47Corelib4Init5Logic2or02C47Corelib4Init5Logic9False_indC6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K3rl3C6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K3rl4C7ARocqVerifyHarness?AgentSubmission4asan7Mh_02108L5StepAR5L5SARBpreserved_by_indexc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR3sveC6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K3rl2C4ELinuxProcessSemantics?LinuxProcessSem>RiscvSemantics8is_ecallc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR9back_regsC6ARocqVerifyHarness?AgentSubmission7Mh_02255VaKit3VAK3RETC5ARocqVerifyHarness?AgentSubmission7Mh_0012ENa0_code_rbc538_bc53c7W_bc3f4C5ARocqVerifyHarness?AgentSubmission7Mh_0012ENa0_code_rbc538_bc53c7F_bc3f4C5ARocqVerifyHarness?AgentSubmission7Mh_0012ENa0_code_rbc538_bc53c7D_bc3f4I4ARocqVerifyHarness?AgentSubmission8PropExec7FPState00c6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR6vfactsC5ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs4SCFGc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR6bfactsc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR4ownvc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR2VMc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP17alignedc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1<va_prT1_concC5ARocqVerifyHarness?AgentSubmission7Mh_00387StoreOk9mem_growsC4ARocqVerifyHarness?AgentSubmission8PropExec7seg_romC4ARocqVerifyHarness?AgentSubmission8PropExec4mkstC6ARocqVerifyHarness?AgentSubmission7Mh_00907PmSpecs4PMSP3cfgC5ARocqVerifyHarness?AgentSubmission7Mh_00367SpinAlg9srealizesI5ARocqVerifyHarness?AgentSubmission7Mh_00306CatSim6msteps00C6ARocqVerifyHarness?AgentSubmission7Mh_02255VaKit3VAK4TAILC6ARocqVerifyHarness?AgentSubmission7Mh_02255VaKit3VAK8PIECE_roC4ARocqVerifyHarness?AgentSubmission5BMode;bm_off_instc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR3KUrc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR4KKUrc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1:KS_va_prT1C6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K3rl1c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP47alignedc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4;va_prF_concc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR5RC_ksC56Stdlib6ZArith6BinInt1Z6to_natC56Stdlib6ZArith6BinInt1Z3maxC47Corelib4Init5Logic8iff_reflC46Stdlib9micromega;ZifyClasses5mkrelC56Stdlib6ZArith6BinInt1Z8max_specC46Stdlib9micromega;ZifyClasses;rew_iff_revc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR4kregc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR3L7KC46Stdlib9micromega;ZifyClasses5mkappC46Stdlib9micromega8ZifyInst@of_nat_to_nat_eqc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49KS_va_prFC46Stdlib6ZArith:ZArith_dec;Z_lt_le_decI47Corelib4Init6Specif7sumbool00c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4<va_prE1_concc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR7RC_gptpc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR6ra_litc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR7RC_callc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR4cregc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR2GKc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4<va_prE2_concc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR2FKC6ARocqVerifyHarness?AgentSubmission7Mh_02255VaKit3VAK4CALLc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4:KS_va_prE2c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4:KS_va_prE1C56Stdlib6ZArith6BinInt1Z3oppC56Stdlib6ZArith4Znat5Nat2Z9is_nonnegK46Stdlib9micromega7EnvRing5PExpr06c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP37alignedc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3=va_prN5e_concC56Stdlib6ZArith6BinInt1Z7add_0_rC56Stdlib6ZArith6BinInt1Z7sub_0_rc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR3L6Kc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3=va_prN5c_concC47Corelib4Init9Datatypes7nat_indC46Stdlib9micromega;ZifyClasses7rew_iffC56Stdlib6ZArith4Znat5Nat2Z8inj_succc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3;KS_va_prN5ec6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3;KS_va_prN5cc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3<va_prC3_concc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR3D3Kc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3:KS_va_prC3c6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR2RDC56Stdlib6ZArith6BinInt1Z6eq_decc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3=va_prB3z_concK47Corelib4Init5Logic2ex01c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3=va_prB3n_concc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR3C3Kc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3;KS_va_prB3zc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3;KS_va_prB3nC35stdpp7tactics<f_equal_helpc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP27alignedc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2<va_prD2_concc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR3L4Kc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2:KS_va_prD2c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2<va_prB2_concc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR3L3Kc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2:KS_va_prB2c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1=va_prN2e_concc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR3T1Kc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1=va_prN2c_concc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1;KS_va_prN2ec6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1;KS_va_prN2cc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1<va_prB1_concc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR3L1Kc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1:KS_va_prB1c6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR4EXPKc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR3B2Kc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR3B3Kc6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR3B1KC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA7entryAsC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA7ffroomNC6ARocqVerifyHarness?AgentSubmission7Mh_02138PmSpecsA5PMSPA5ffrsAC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA6rcellAC6ARocqVerifyHarness?AgentSubmission7Mh_02138PmSpecsA5PMSPA5aobjAC6ARocqVerifyHarness?AgentSubmission7Mh_00907PmSpecs4PMSP9credit_leC35stdpp4base6decidec6ARocqVerifyHarness?AgentSubmission7Mh_02085VaSPr5VASPR7pr_bodyC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA8pr_specAC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA5rbufAC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02107L5CoreA4L5CA6ahpresC35stdpp4base:decide_relC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA5G_BUFC6ARocqVerifyHarness?AgentSubmission7Mh_02138PnAdStrA5PQASA5SMMAXC45stdpp7numbers1Z6le_decC5ARocqVerifyHarness?AgentSubmission7Mh_00368ShapeAlg4TSetI4ELinuxProcessSemantics?LinuxProcessSem5State5event00". Local Ltac lia := L5FastLia.plia.

Module VASPR.
Import L5A L5SAR.
Ltac inl := apply L5K.In_of_mem; vm_compute; reflexivity.
Abbreviation reg i := (Z_to_bv 5 (Z.of_nat i)).
Abbreviation RSEGS := Asan.M.loaded_segments.
Abbreviation mem := (word -> option byte).
Abbreviation AD := PMA.AD.
Abbreviation accA := PMSPA.accA.
Abbreviation kstr_at := (PQMA.kstr_at RSEGS accA).
Abbreviation bvu x := (bv_unsigned x).

(* [comment removed for export] *)
Ltac fd := lazymatch goal with
  | |- _ <= _ <= _ => first [apply VAK.bvu_rng | Lia.lia]
  | |- _ <= _ < _ => first [apply VAK.bvu_rng | Lia.lia]
  | |- _ \/ _ => Lia.lia
  | |- VASPRP1.aligned _ _ => unfold VASPRP1.aligned; assumption
  | |- VASPRP2.aligned _ _ => unfold VASPRP2.aligned; assumption
  | |- VASPRP3.aligned _ _ => unfold VASPRP3.aligned; assumption
  | |- VASPRP4.aligned _ _ => unfold VASPRP4.aligned; assumption
  | |- getr _ _ = _ => L5SAR.greg
  | |- _ => assumption
  end.

Lemma zbv_cong (a b : Z) : a mod 2 ^ 64 = b mod 2 ^ 64 -> Z_to_bv 64 a = Z_to_bv 64 b.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) [] (Mh_0208_blobs1.kr_b_194 ())). Qed.
Lemma zbv_eqm (a b q : Z) : a = b + q * 2 ^ 64 -> Z_to_bv 64 a = Z_to_bv 64 b.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) [] (Mh_0208_blobs1.kr_b_195 ())). Qed.
Lemma zbv_of_unsigned (w : word) (v : Z) : bv_unsigned w = v -> w = Z_to_bv 64 v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) [] (Mh_0208_blobs1.kr_b_196 ())). Qed.
Lemma ra_lit v : 0 <= v < 2 ^ 47 -> v mod 2 = 0 -> L5.ra_ok v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) [] (Mh_0208_blobs1.kr_b_197 ())). Qed.
Definition inks (l ks : list nat) : bool := forallb (fun j => existsb (Nat.eqb j) ks) l.
Lemma inks_ok l ks : inks l ks = true -> forall j, In j l -> In j ks.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) [] (Mh_0208_blobs1.kr_b_198 ())). Qed.
(* [comment removed for export] *)
Lemma kreg (R1 R2 : bvmap 5 word) (ks : list nat) (j : nat) (v : word) :
  (forall x, In x ks -> getr R2 (reg x) = getr R1 (reg x)) -> inks [j] ks = true -> getr R1 (reg j) = v -> getr R2 (reg j) = v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) [] (Mh_0208_blobs1.kr_b_199 ())). Qed.
(* [comment removed for export] *)
Lemma creg (R1 R2 : bvmap 5 word) (j : nat) (v : word) : regs_preserved R1 R2 -> In j L5SAR.cs_all -> getr R1 (reg j) = v -> getr R2 (reg j) = v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) [] (Mh_0208_blobs1.kr_b_200 ())). Qed.

(* [comment removed for export] *)
Definition own (E : Z) (R : bvmap 5 word) (M : mem) : Prop :=
  L5.u64_at RSEGS M (E - 8) (bvu (getr R (reg 1))) /\ L5.u64_at RSEGS M (E - 16) (bvu (getr R (reg 8)))
  /\ L5.u64_at RSEGS M (E - 24) (bvu (getr R (reg 9))) /\ L5.u64_at RSEGS M (E - 32) (bvu (getr R (reg 18)))
  /\ L5.u64_at RSEGS M (E - 40) (bvu (getr R (reg 19))) /\ L5.u64_at RSEGS M (E - 48) (bvu (getr R (reg 20)))
  /\ L5.u64_at RSEGS M (E - 56) (bvu (getr R (reg 21))) /\ L5.u64_at RSEGS M (E - 64) (bvu (getr R (reg 22)))
  /\ L5.u64_at RSEGS M (E - 72) (bvu (getr R (reg 23))) /\ L5.u64_at RSEGS M (E - 80) (bvu (getr R (reg 24)))
  /\ L5.u64_at RSEGS M (E - 88) (bvu (getr R (reg 25))).
Definition ocell (E : Z) (a : Z) : Prop := E - 88 <= a < E.
Lemma own_agree E R M1 M1' : 0 <= E - 88 -> E <= 2 ^ 64 ->
  own E R M1 -> (forall a, ocell E a -> M1' (Z_to_bv 64 a) = M1 (Z_to_bv 64 a)) -> own E R M1'.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) [] (Mh_0208_blobs1.kr_b_201 ())). Qed.

Local Notation TT := (fun _ : mem => True).
Local Notation PT := (fun _ : bvmap 5 word => True).
Local Notation SBL := 2147450880 (only parsing).

Section WithHeap.
Context {SCFG_P : ScfgP}.
Variables (L : asan_layout) (ar : asan_run) (C : asan_statics_cells) (HI : asan_iface).
Hypothesis LY : PMA.layout L C.
Hypothesis HIok : HAJ.asan_iface_okR L ar C SCFG HI.
Hypothesis PB : PQASA.pb_specA RSEGS AD L ar HI 0xf4640.
Hypothesis FE : VA.fe_specA RSEGS AD L ar HI 0xbcf08.
Abbreviation HV := (PMSPA.HV L ar).

(* [comment removed for export] *)
Definition fe_pre : bvmap 5 word -> mem -> list fframe -> Z -> Z -> Z -> Prop :=
  fun R0 _ _ so0 _ _ => exists k0, getr R0 10%bv = Z_to_bv 64 k0 /\ -999 <= k0 <= 999 /\ getr R0 11%bv = Z_to_bv 64 so0.
Lemma FEQ : VA.pusherA RSEGS AD L ar HI 0xbcf08 VA.FE_SCR VA.N1 (@nil L5.range) VA.FE_MAX fe_pre PT.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"] (Mh_0208_blobs1.kr_b_202 ())). Qed.
Lemma FE_SCR16 : 0 <= VA.FE_SCR /\ VA.FE_SCR mod 16 = 0.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"] (Mh_0208_blobs1.kr_b_203 ())). Qed.
Lemma FE_MAX0 : 0 <= VA.FE_MAX.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"] (Mh_0208_blobs1.kr_b_204 ())). Qed.
Lemma FE_NEED : forall k, In k PQRA.FCM -> VA.N1 k <= VA.N1 k.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"] (Mh_0208_blobs1.kr_b_205 ())). Qed.

Section Body.
Variables (K : TSet) (R : bvmap 5 word) (M : mem) (model : Model) (LB : list (Z * Z)) (FF LK : list fframe) (Aw : list (Z * Z)) (cr : credit)
          (so os sp r SM g : Z) (x0 : PM.vstr) (buf len k ku kku : Z).
Hypothesis HH : ri_inv HI (PM.vs_own x0 ++ LB) FF LK cr Aw M (vml_of model).
Hypothesis AM : L5CA.amodel_ok Aw model.
Hypothesis K0 : K [].
Hypothesis ENT : VA.entryAs AD L ar R M sp r VA.PR_SCR.
Hypothesis FRM : VA.ffroomN VA.N1 FF LK.
Hypothesis FRS : PMSPA.ffrsA FF sp.
Hypothesis RSO : VA.rcellA ar M sp so 8.
Hypothesis SO8 : so mod 8 = 0.
Hypothesis CSO : L5.u64_at RSEGS M so os.
Hypothesis AOS : PMSPA.aobjA FF os 24.
Hypothesis OS8 : os mod 8 = 0.
Hypothesis KS0 : kstr_at M os x0.
Hypothesis KOK0 : PQMA.ks_ok SM x0 g.
Hypothesis SMX : SM <= PQASA.SMMAX.
Hypothesis SZ0 : PM.vs_size x0 + VA.PR_MAX <= SM.
Hypothesis BASE : PMSTA.base_okA RSEGS AD M.
Hypothesis CR0 : PMSP.credit_le (PMSPA.scA L (PQMA.pot_ks HV SM x0 g)) cr.
Hypothesis KONT : forall (fx' : FPState) (R' : bvmap 5 word) (M' : mem) (model' : Model) (LK' : list fframe) (Aw' : list (Z * Z)) (x' : PM.vstr) (g' : Z) (cr' : credit),
    regs_preserved R R' -> True -> kstr_at M' os x' -> PQMA.ks_ok SM x' g' ->
    PM.vs_size x0 <= PM.vs_size x' <= PM.vs_size x0 + VA.PR_MAX ->
    L5CA.ahpres L ar LB FF sp VA.PR_SCR ((os, 24) :: []) M M' ->
    PMSP.credit_keep cr cr' (PMSPA.scA L (PQMA.pot_ks HV SM x0 g)) (PMSPA.scA L (PQMA.pot_ks HV SM x' g')) ->
    model_rt model model' -> incl LK' LK -> incl Aw Aw' -> L5CA.amodel_ok Aw' model' ->
    ri_inv HI (PM.vs_own x' ++ LB) FF LK' cr' Aw' M' (vml_of model') ->
    srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx' R' r M' model') K.
(* [comment removed for export] *)
Hypothesis Hlen : 1 <= len <= 21.
Hypothesis Hk : -400 <= k <= 400.
(* [comment removed for export] *)
Hypothesis Hku : (0 <= k /\ ku = k) \/ (k < 0 /\ ku = k + 2 ^ 64).
Hypothesis Hkku : (0 <= k + len /\ kku = k + len) \/ (k + len < 0 /\ kku = k + len + 2 ^ 64).
Hypothesis RB : VA.rbufA M FF buf VA.G_BUF os.

Local Notation OWN := (own sp R).
Local Notation OC := (ocell sp).
Local Notation SHSO := (so / 8 + 2147450880).

Definition sv (j : nat) : Z := bv_unsigned (getr R (reg j)).
Lemma svr j : 0 <= sv j < 2 ^ 64.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_206 ())). Qed.
Lemma sve j : Z_to_bv 64 (sv j) = getr R (reg j).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_207 ())). Qed.
Lemma KUr : 0 <= ku < 2 ^ 64.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_208 ())). Qed.
Lemma KKUr : 0 <= kku < 2 ^ 64.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_209 ())). Qed.
Lemma EK2 : Z_to_bv 64 (kku - len) = Z_to_bv 64 ku.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_210 ())). Qed.

Lemma sp_facts : 140735332487168 + 14480 <= sp /\ sp <= 140737488355328 /\ sp mod 16 = 0 /\ 0 <= r < 2 ^ 47 /\ r mod 2 = 0.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_211 ())). Qed.
Lemma WIMG0 : forall rr : L5.range, In rr [] -> 0 <= fst rr /\ fst rr + snd rr <= 7036928.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_212 ())). Qed.
Lemma HSCR16 : VA.PR_SCR mod 16 = 0.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_213 ())). Qed.
Lemma HFR : 0 <= 96 /\ 96 mod 16 = 0.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_214 ())). Qed.
Lemma HSCR : VA.PB_SCR + 96 <= VA.PR_SCR.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_215 ())). Qed.
Lemma GOCR : forall a, OC a -> sp - 96 <= a < sp.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_216 ())). Qed.
Lemma GOWN : forall M1 M1' : mem, OWN M1 -> (forall a, OC a -> M1' (Z_to_bv 64 a) = M1 (Z_to_bv 64 a)) -> OWN M1'.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_217 ())). Qed.
Lemma NEED1 : forall k1, In k1 PQRA.FCM -> 1 <= VA.N1 k1.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_218 ())). Qed.

(* [comment removed for export] *)
Local Notation KIT f := (f L ar C HI LY HIok 0xf4640 PB K R M model LB FF LK Aw cr so os sp r SM g x0 VA.PR_SCR VA.N1 (@nil L5.range) VA.PR_MAX PT
                           HH AM K0 ENT FRM FRS RSO SO8 CSO AOS OS8 KS0 KOK0 SMX SZ0 BASE CR0 KONT WIMG0 HSCR16 96 OC OWN HFR HSCR GOCR GOWN NEED1).
Local Notation KITP f := (f L ar C HI LY HIok 0xf4640 PB K R M model LB FF LK Aw cr so os sp r SM g x0 VA.PR_SCR VA.N1 (@nil L5.range) VA.PR_MAX PT
                           HH AM K0 ENT FRM FRS RSO SO8 CSO AOS OS8 KS0 KOK0 SMX SZ0 BASE CR0 KONT WIMG0 HSCR16 96 OC OWN HFR HSCR GOCR GOWN NEED1
                           0xbcf08 VA.FE_SCR VA.N1 VA.FE_MAX fe_pre PT FEQ FE_SCR16 FE_MAX0 FE_NEED).
Local Notation INV := (VAK.inv L ar HI M model LB FF LK Aw cr os sp SM g x0 VA.PR_SCR (@nil L5.range)).

(* [comment removed for export] *)
Lemma ownv p M1 model1 LK1 Aw1 x g1 cr1 : INV OWN p M1 model1 LK1 Aw1 x g1 cr1 -> OWN (mrestrict (ahid Aw1 model1) M1).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_219 ())). Qed.

(* [comment removed for export] *)
Lemma vfacts own' p M1 model1 LK1 Aw1 x g1 cr1 :
  INV own' p M1 model1 LK1 Aw1 x g1 cr1 ->
  (L5.img_clear (mrestrict (ahid Aw1 model1) M1) 65536 1409024 /\ L5.u64_at RSEGS (mrestrict (ahid Aw1 model1) M1) 1440376 2147450880)
  /\ L5.writable RSEGS (mrestrict (ahid Aw1 model1) M1) (sp - 88) 88
  /\ (L5.u64_at RSEGS (mrestrict (ahid Aw1 model1) M1) so os /\ L5KA.zeros_at (mrestrict (ahid Aw1 model1) M1) (so / 8 + 2147450880) 1)
  /\ (140735332487264 <= sp <= 140737488355328 /\ sp mod 16 = 0 /\ 140735332487168 <= so <= 140737488355320
      /\ 0 <= sp < 2 ^ 64 /\ 0 <= os < 2 ^ 64 /\ 0 <= so < 2 ^ 64).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_220 ())). Qed.
(* [comment removed for export] *)
Lemma bfacts own' p M1 model1 LK1 Aw1 x g1 cr1 :
  INV own' p M1 model1 LK1 Aw1 x g1 cr1 ->
  (7036928 <= buf /\ buf + 22 <= 140737488355328 - 18576)
  /\ (forall q, buf <= q < buf + 22 -> exists c, 0 <= c < 256 /\ L5.u8_at RSEGS (mrestrict (ahid Aw1 model1) M1) q c)
  /\ (forall q, buf <= q < buf + 22 -> L5KA.zeros_at (mrestrict (ahid Aw1 model1) M1) (q / 8 + 2147450880) 1).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_221 ())). Qed.

(* [comment removed for export] *)
Definition KEPT : list nat := [3; 4; 26; 27]%nat.
Definition RC (R' : bvmap 5 word) : Prop :=
  getr R' (reg 2) = Z_to_bv 64 (sp - 96) /\ getr R' (reg 8) = Z_to_bv 64 so /\ (forall j, In j KEPT -> getr R' (reg j) = getr R (reg j)).
Lemma RC_call R1 R2 : RC R1 -> regs_preserved R1 R2 -> RC R2.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_222 ())). Qed.
Lemma RC_ks R1 R2 (ks : list nat) : RC R1 -> (forall j, In j ks -> getr R2 (reg j) = getr R1 (reg j)) -> inks ([2; 8]%nat ++ KEPT) ks = true -> RC R2.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_223 ())). Qed.
Lemma RC_gptp R1 : RC R1 -> getr R1 (reg 3) = Z_to_bv 64 (pa_gp AD) /\ getr R1 (reg 4) = Z_to_bv 64 (hl_tp L).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_224 ())). Qed.
(* [comment removed for export] *)
Lemma back_regs (R2 : bvmap 5 word) :
  getr R2 (reg 2) = Z_to_bv 64 sp -> (forall j, In j [8; 9; 18; 19; 20; 21; 22; 23; 24; 25]%nat -> getr R2 (reg j) = Z_to_bv 64 (sv j)) ->
  (forall j, In j KEPT -> getr R2 (reg j) = getr R (reg j)) -> regs_preserved R R2.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_225 ())). Qed.

(* [comment removed for export] *)
Definition VM (q c m i : Z) : nat -> Z := fun j =>
  match j with 2%nat => sp | 33%nat => os | 34%nat => so | 35%nat => sv 1 | 36%nat => sv 8 | 37%nat => sv 9 | 38%nat => sv 18 | 39%nat => sv 19 | 40%nat => sv 20
  | 41%nat => sv 21 | 42%nat => sv 22 | 43%nat => sv 23 | 44%nat => sv 24 | 45%nat => sv 25
  | 50%nat => buf | 51%nat => len | 52%nat => ku | 53%nat => kku | 54%nat => q | 56%nat => c | 57%nat => m | 58%nat => i | _ => 0 end.

(* [comment removed for export] *)
Local Ltac facts IV :=
  destruct (vfacts _ _ _ _ _ _ _ _ _ IV) as ((IMG & SBC) & WSP & (CSOv & ZSO) & (SPR & SP16 & SOR & SPB & OSB & SOB));
  destruct (bfacts _ _ _ _ _ _ _ _ _ IV) as ((BF1 & BF2) & BY & BZ);
  pose proof KUr as KU2; pose proof KKUr as KKU2.
Local Ltac piece P := cbn beta iota delta [VM] in P; unfold sv in P; L5SAR.feed P ltac:(idtac; fd).

(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)
Lemma RETK own' (p : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV own' p M1 model1 LK1 Aw1 x1 g1 cr1 -> 0 <= p <= 27 ->
  getr R1 (reg 1) = Z_to_bv 64 (sv 1) -> getr R1 (reg 2) = Z_to_bv 64 sp ->
  (forall j, In j [8; 9; 18; 19; 20; 21; 22; 23; 24; 25]%nat -> getr R1 (reg j) = Z_to_bv 64 (sv j)) ->
  (forall j, In j KEPT -> getr R1 (reg j) = getr R (reg j)) ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbc444 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_226 ())). Qed.

(* [comment removed for export] *)
Lemma T1K (p : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN p M1 model1 LK1 Aw1 x1 g1 cr1 -> 0 <= p < 27 -> RC R1 -> getr R1 (reg 21) = Z_to_bv 64 SHSO ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbc2f8 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_227 ())). Qed.

(* [comment removed for export] *)
Lemma GK (p : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN p M1 model1 LK1 Aw1 x1 g1 cr1 -> 0 <= p <= 23 -> RC R1 -> getr R1 (reg 22) = Z_to_bv 64 kku -> (18 <= k + len \/ k + len <= -4) ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbc550 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_tL_Mh_0208 ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_228 ())). Qed.

(* [comment removed for export] *)
(* [comment removed for export] *)
Section L7.
Hypothesis Hl2 : 2 <= len.
(* [comment removed for export] *)
Lemma L7K (m : nat) : forall (i p c : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit),
  Z.of_nat m = len - 1 - i -> 1 <= i < len -> INV OWN p M1 model1 LK1 Aw1 x1 g1 cr1 -> p = i + 1 -> RC R1 ->
  getr R1 (reg 9) = Z_to_bv 64 (buf + i) -> getr R1 (reg 18) = Z_to_bv 64 (buf + i) -> getr R1 (reg 19) = Z_to_bv 64 SHSO ->
  getr R1 (reg 20) = Z_to_bv 64 (len - i) -> getr R1 (reg 21) = Z_to_bv 64 SBL -> getr R1 (reg 22) = Z_to_bv 64 kku ->
  getr R1 (reg 1) = Z_to_bv 64 0xbc4c8 -> getr R1 (reg 10) = Z_to_bv 64 os -> getr R1 (reg 11) = Z_to_bv 64 c -> 0 <= c < 256 ->
  (18 <= k + len \/ k + len <= -4) ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xf4640 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_tL_Mh_0208 ()) ["WithHeap"; "Body"; "L7"] (Mh_0208_blobs1.kr_b_229 ())). Qed.

(* [comment removed for export] *)
Lemma FK (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN 2 M1 model1 LK1 Aw1 x1 g1 cr1 -> RC R1 -> getr R1 (reg 9) = Z_to_bv 64 len -> getr R1 (reg 18) = Z_to_bv 64 buf -> getr R1 (reg 19) = Z_to_bv 64 SHSO ->
  getr R1 (reg 21) = Z_to_bv 64 SBL -> getr R1 (reg 22) = Z_to_bv 64 kku ->
  (18 <= k + len \/ k + len <= -4) ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbc490 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"; "L7"] (Mh_0208_blobs1.kr_b_230 ())). Qed.
End L7.

(* [comment removed for export] *)
Lemma EK (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN 1 M1 model1 LK1 Aw1 x1 g1 cr1 -> RC R1 -> getr R1 (reg 9) = Z_to_bv 64 len -> getr R1 (reg 18) = Z_to_bv 64 buf -> getr R1 (reg 19) = Z_to_bv 64 SHSO ->
  getr R1 (reg 21) = Z_to_bv 64 SBL -> getr R1 (reg 22) = Z_to_bv 64 kku ->
  (18 <= k + len \/ k + len <= -4) ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbc474 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_231 ())). Qed.

(* [comment removed for export] *)
Definition RD (R1 : bvmap 5 word) : Prop :=
  RC R1 /\ getr R1 (reg 9) = Z_to_bv 64 len /\ getr R1 (reg 18) = Z_to_bv 64 buf /\ getr R1 (reg 19) = Z_to_bv 64 ku /\ getr R1 (reg 22) = Z_to_bv 64 kku /\
  getr R1 (reg 21) = Z_to_bv 64 SBL /\ getr R1 (reg 12) = Z_to_bv 64 ku /\ getr R1 (reg 13) = Z_to_bv 64 18446744073709551612 /\ getr R1 (reg 14) = Z_to_bv 64 17.

(* [comment removed for export] *)
Lemma EXPK (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN 0 M1 model1 LK1 Aw1 x1 g1 cr1 -> RD R1 -> (18 <= k + len \/ k + len <= -4) ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbc1f4 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_tL_Mh_0208 ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_232 ())). Qed.

(* [comment removed for export] *)
(* [comment removed for export] *)
Section A3.
Hypothesis Hkn : k < 0.
Hypothesis Hkk3 : -3 <= k + len <= 0.

(* [comment removed for export] *)
Lemma L6K (m : nat) : forall (i p c : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit),
  Z.of_nat m = len - 1 - i -> 0 <= i < len -> INV OWN p M1 model1 LK1 Aw1 x1 g1 cr1 -> p = 2 - (k + len) + i -> RC R1 ->
  getr R1 (reg 18) = Z_to_bv 64 (buf + i) -> getr R1 (reg 19) = Z_to_bv 64 (buf + i) -> getr R1 (reg 20) = Z_to_bv 64 SHSO ->
  getr R1 (reg 21) = Z_to_bv 64 SBL -> getr R1 (reg 9) = Z_to_bv 64 (len - i) ->
  getr R1 (reg 1) = Z_to_bv 64 0xbc3d8 -> getr R1 (reg 10) = Z_to_bv 64 os -> getr R1 (reg 11) = Z_to_bv 64 c -> 0 <= c < 256 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xf4640 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_tL_Mh_0208 ()) ["WithHeap"; "Body"; "A3"] (Mh_0208_blobs1.kr_b_233 ())). Qed.

(* [comment removed for export] *)
Lemma L5K (mz : nat) : forall (cz p : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit),
  Z.of_nat mz = cz -> 1 <= cz <= - (k + len) -> INV OWN p M1 model1 LK1 Aw1 x1 g1 cr1 -> p = 2 - (k + len) - cz -> RC R1 ->
  getr R1 (reg 19) = Z_to_bv 64 cz -> getr R1 (reg 20) = Z_to_bv 64 SHSO -> getr R1 (reg 21) = Z_to_bv 64 SBL ->
  getr R1 (reg 9) = Z_to_bv 64 len -> getr R1 (reg 18) = Z_to_bv 64 buf ->
  getr R1 (reg 1) = Z_to_bv 64 0xbc3a4 -> getr R1 (reg 10) = Z_to_bv 64 os -> getr R1 (reg 11) = Z_to_bv 64 48 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xf4640 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"; "A3"] (Mh_0208_blobs1.kr_b_234 ())). Qed.

(* [comment removed for export] *)
Lemma D3K (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN 2 M1 model1 LK1 Aw1 x1 g1 cr1 -> RC R1 -> getr R1 (reg 9) = Z_to_bv 64 len -> getr R1 (reg 18) = Z_to_bv 64 buf -> getr R1 (reg 20) = Z_to_bv 64 SHSO ->
  getr R1 (reg 21) = Z_to_bv 64 SBL -> getr R1 (reg 22) = Z_to_bv 64 kku ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbc374 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_tL_Mh_0208 ()) ["WithHeap"; "Body"; "A3"] (Mh_0208_blobs1.kr_b_235 ())). Qed.

(* [comment removed for export] *)
Lemma C3K (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN 1 M1 model1 LK1 Aw1 x1 g1 cr1 -> RC R1 -> getr R1 (reg 9) = Z_to_bv 64 len -> getr R1 (reg 18) = Z_to_bv 64 buf -> getr R1 (reg 20) = Z_to_bv 64 SHSO ->
  getr R1 (reg 21) = Z_to_bv 64 SBL -> getr R1 (reg 22) = Z_to_bv 64 kku ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbc360 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"; "A3"] (Mh_0208_blobs1.kr_b_236 ())). Qed.

(* [comment removed for export] *)
Lemma B3K (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN 0 M1 model1 LK1 Aw1 x1 g1 cr1 -> RD R1 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbc1f4 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"; "A3"] (Mh_0208_blobs1.kr_b_237 ())). Qed.
End A3.

(* [comment removed for export] *)
(* [comment removed for export] *)
Section A2.
Hypothesis Hkn : k < 0.
Hypothesis Hkk2 : 1 <= k + len <= 17.

(* [comment removed for export] *)
Lemma L4K (m : nat) : forall (i p c : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit),
  Z.of_nat m = len - 1 - i -> k + len <= i < len -> INV OWN p M1 model1 LK1 Aw1 x1 g1 cr1 -> p = i + 1 -> RC R1 ->
  getr R1 (reg 18) = Z_to_bv 64 (buf + i) -> getr R1 (reg 19) = Z_to_bv 64 (buf + i) -> getr R1 (reg 21) = Z_to_bv 64 SBL ->
  getr R1 (reg 22) = Z_to_bv 64 i -> getr R1 (reg 23) = Z_to_bv 64 SHSO -> getr R1 (reg 9) = Z_to_bv 64 len ->
  getr R1 (reg 1) = Z_to_bv 64 0xbc518 -> getr R1 (reg 10) = Z_to_bv 64 os -> getr R1 (reg 11) = Z_to_bv 64 c -> 0 <= c < 256 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xf4640 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_tL_Mh_0208 ()) ["WithHeap"; "Body"; "A2"] (Mh_0208_blobs1.kr_b_238 ())). Qed.

(* [comment removed for export] *)
Lemma D2K (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN (k + len + 1) M1 model1 LK1 Aw1 x1 g1 cr1 -> RC R1 -> getr R1 (reg 18) = Z_to_bv 64 buf -> getr R1 (reg 19) = Z_to_bv 64 ku ->
  getr R1 (reg 21) = Z_to_bv 64 SBL -> getr R1 (reg 22) = Z_to_bv 64 kku -> getr R1 (reg 23) = Z_to_bv 64 SHSO -> getr R1 (reg 9) = Z_to_bv 64 len ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbc410 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"; "A2"] (Mh_0208_blobs1.kr_b_239 ())). Qed.

(* [comment removed for export] *)
Lemma L3K (m : nat) : forall (i p c : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit),
  Z.of_nat m = k + len - 1 - i -> 0 <= i < k + len -> INV OWN p M1 model1 LK1 Aw1 x1 g1 cr1 -> p = i -> RC R1 ->
  getr R1 (reg 20) = Z_to_bv 64 (buf + i) -> getr R1 (reg 25) = Z_to_bv 64 (buf + i) -> getr R1 (reg 21) = Z_to_bv 64 SBL ->
  getr R1 (reg 23) = Z_to_bv 64 SHSO -> getr R1 (reg 24) = Z_to_bv 64 (k + len - i) ->
  getr R1 (reg 18) = Z_to_bv 64 buf -> getr R1 (reg 19) = Z_to_bv 64 ku -> getr R1 (reg 22) = Z_to_bv 64 kku -> getr R1 (reg 9) = Z_to_bv 64 len ->
  getr R1 (reg 1) = Z_to_bv 64 0xbc298 -> getr R1 (reg 10) = Z_to_bv 64 os -> getr R1 (reg 11) = Z_to_bv 64 c -> 0 <= c < 256 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xf4640 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_tL_Mh_0208 ()) ["WithHeap"; "Body"; "A2"] (Mh_0208_blobs1.kr_b_240 ())). Qed.

(* [comment removed for export] *)
Lemma B2K (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN 0 M1 model1 LK1 Aw1 x1 g1 cr1 -> RD R1 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbc1f4 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"; "A2"] (Mh_0208_blobs1.kr_b_241 ())). Qed.
End A2.

(* [comment removed for export] *)
(* [comment removed for export] *)
Section A1.
Hypothesis Hkp : 0 <= k.
Hypothesis Hkk1 : k + len <= 17.

(* [comment removed for export] *)
Lemma L2K (m : nat) : forall (i p : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit),
  Z.of_nat m = k + len - 1 - i -> len <= i < k + len -> INV OWN p M1 model1 LK1 Aw1 x1 g1 cr1 -> p = i -> RC R1 ->
  getr R1 (reg 9) = Z_to_bv 64 i -> getr R1 (reg 18) = Z_to_bv 64 SHSO -> getr R1 (reg 21) = Z_to_bv 64 SBL ->
  getr R1 (reg 22) = Z_to_bv 64 kku -> getr R1 (reg 23) = Z_to_bv 64 (so / 8) ->
  getr R1 (reg 1) = Z_to_bv 64 0xbc2d8 -> getr R1 (reg 10) = Z_to_bv 64 os -> getr R1 (reg 11) = Z_to_bv 64 48 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xf4640 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"; "A1"] (Mh_0208_blobs1.kr_b_242 ())). Qed.

(* [comment removed for export] *)
Lemma L1K (m : nat) : forall (i p c : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit),
  Z.of_nat m = len - 1 - i -> 0 <= i < len -> INV OWN p M1 model1 LK1 Aw1 x1 g1 cr1 -> p = i -> RC R1 ->
  getr R1 (reg 18) = Z_to_bv 64 (buf + i) -> getr R1 (reg 20) = Z_to_bv 64 (buf + i) -> getr R1 (reg 21) = Z_to_bv 64 SBL ->
  getr R1 (reg 24) = Z_to_bv 64 SHSO -> getr R1 (reg 25) = Z_to_bv 64 (len - i) -> getr R1 (reg 9) = Z_to_bv 64 len ->
  getr R1 (reg 19) = Z_to_bv 64 ku -> getr R1 (reg 22) = Z_to_bv 64 kku -> getr R1 (reg 23) = Z_to_bv 64 (so / 8) ->
  getr R1 (reg 1) = Z_to_bv 64 0xbc234 -> getr R1 (reg 10) = Z_to_bv 64 os -> getr R1 (reg 11) = Z_to_bv 64 c -> 0 <= c < 256 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xf4640 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_tL_Mh_0208 ()) ["WithHeap"; "Body"; "A1"] (Mh_0208_blobs1.kr_b_243 ())). Qed.

(* [comment removed for export] *)
Lemma B1K (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN 0 M1 model1 LK1 Aw1 x1 g1 cr1 -> RD R1 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbc1f4 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"; "A1"] (Mh_0208_blobs1.kr_b_244 ())). Qed.
End A1.

(* [comment removed for export] *)
Lemma DISPATCH (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN 0 M1 model1 LK1 Aw1 x1 g1 cr1 -> RD R1 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbc1f4 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_245 ())). Qed.

(* [comment removed for export] *)
Lemma pr_body (fx : FPState) :
  getr R 10%bv = Z_to_bv 64 buf -> getr R 11%bv = Z_to_bv 64 len -> getr R 12%bv = Z_to_bv 64 k ->
  getr R 13%bv = Z_to_bv 64 (-4) -> getr R 14%bv = Z_to_bv 64 17 -> getr R 15%bv = Z_to_bv 64 so ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx R 0xbc1a4 M model) K.
Proof.
ltac2:(KReplay.run1 (kr_tL_Mh_0208 ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_246 ())). Qed.

End Body.

Theorem pr_ok : VA.pr_specA RSEGS AD L ar HI 0xbc1a4.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPr ()) ["WithHeap"] (Mh_0208_blobs1.kr_b_247 ())). Qed.

End WithHeap.
End VASPR.

End VaSPr.
Module VaSOpP1.
(* [comment removed for export] *)
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0007.   (* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From stdpp.bitvector Require Import definitions.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BigLinkBase. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.CatExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030.CatSim OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.SeqExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.StoreOk OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.Hoare OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.ShapeAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.SpinAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.HeapIface OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.AxSymRun3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.BigLinkBase OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.BigLinkGlue OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.L5Defs OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5Kn OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5KnA.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0177. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0177.
Import ListNotations. Import AX2. Import AX2B. Import AX2S.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Ltac Zify.zify_convert_to_euclidean_division_equations_flag ::= constr:(false).
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_VaSOpP1 () := "C47Corelib7Classes9Morphisms6ProperC47Corelib7Classes?RelationClasses9ReflexiveC47Corelib7Classes9Morphisms:forall_defC46Stdlib5Lists4List2hdC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA6fframeC46Stdlib5Lists4List4inclC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55rangeC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR6regionC47Corelib4Init5Logic8eq_ind_rC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K@nth_error_singleC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K6zagreeI47Corelib4Init9Datatypes6option00C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA6zpolyAK47Corelib4Init9Datatypes6option01I47Corelib4Init5Logic2eq00K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1N02I45stdpp9bitvector;definitions2bv00C56Stdlib6ZArith6BinInt1Z6moduloC45stdpp9bitvector;definitions7Z_to_bvC45stdpp9bitvector;definitions;bv_unsignedC45stdpp9bitvector;definitions5bv_eqC45stdpp9bitvector;definitions7bv_wrapK47Corelib7Numbers7BinNums1Z02C56Stdlib6ZArith6BinInt1Z3powC56Stdlib6ZArith6BinInt1Z>pow_pos_nonnegC56Stdlib6ZArith6BinInt1Z2ltC56Stdlib6ZArith6BinInt1Z2leC56Stdlib6ZArith6BinInt1Z:pow_nonnegK47Corelib4Init9Datatypes4list01I47Corelib4Init9Datatypes4list00K46Stdlib9micromega6VarMap1t01I46Stdlib9micromega6VarMap1t00I46Stdlib9micromega=RingMicromega7Formula00K46Stdlib9micromega7EnvRing5PExpr01K46Stdlib9micromega7EnvRing5PExpr07K46Stdlib9micromega=RingMicromega7Formula01K46Stdlib9micromega5Tauto8GFormula04K46Stdlib9micromega5Tauto8GFormula07C46Stdlib9micromega5Tauto8BFormulaK47Corelib4Init5Logic2eq01C46Stdlib9micromega:ZMicromega=ZTautoCheckerC46Stdlib9micromega6VarMap4findC46Stdlib9micromega:ZMicromegaCZTautoChecker_soundC56Stdlib6ZArith6BinInt1Z7mod_modC45stdpp9bitvector;definitions@Z_to_bv_unsignedC6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26edenotC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA<zpolyA_soundC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG@word_of_unsignedI6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX23env00I47Corelib4Init9Datatypes3nat00I47Corelib7Numbers7BinNums1Z00I6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr00K47Corelib7Numbers7BinNums8positive03C5ARocqVerifyHarness?AgentSubmission;BigLinkBase2BL2MMI47Corelib7Numbers7BinNums1N00I47Corelib4Init5Logic3and00K47Corelib7Numbers7BinNums1Z01I47Corelib4Init5Logic4True00I46Stdlib9micromega:ZMicromega;ZArithProof00C46Stdlib9micromega5Tauto5eKindI47Corelib4Init9Datatypes4unit00K46Stdlib9micromega5Tauto4kind01K46Stdlib9micromega=RingMicromega3Op201K47Corelib4Init9Datatypes4unit01I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01I47Corelib4Init5Logic5False00K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX25saddr01K47Corelib4Init9Datatypes3nat02K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry01C5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S9kentry_okC56Stdlib6ZArith6BinInt1Z3addC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u64_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=u64_of_KWord8C5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsK47Corelib4Init9Datatypes3nat01C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u32_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=u32_of_KWord4C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55u8_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K<u8_of_KWord1I47Corelib4Init5Peano2le00C56Stdlib6ZArith6BinInt1Z6of_natC5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S4flatC6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26adenotC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K8adenot_eC47Corelib4Init5Logic6eq_indC45stdpp9bitvector;definitionsDbv_unsigned_in_rangeC45stdpp9bitvector;definitions:bv_modulusC4ELinuxProcessSemantics?LinuxProcessSem6BvBase=Z_to_le_bytesK46Stdlib9micromega6VarMap1t02K46Stdlib9micromega7EnvRing5PExpr02K46Stdlib9micromega5Tauto8GFormula05K47Corelib4Init9Datatypes6option02K46Stdlib9micromega5Tauto8GFormula08C56Stdlib6ZArith6BinInt1Z9mod_smallK45stdpp9bitvector;definitions2bv01C45stdpp9bitvector;definitions6bv_addC56Stdlib6ZArith6BinInt1Z?add_mod_idemp_lC45stdpp9bitvector;definitions?bv_add_unsignedC56Stdlib6ZArith6BinInt1Z3divK47Corelib4Init9Datatypes4list02C47Corelib4Init5Logic7f_equalC35stdpp7tactics<f_equal_helpC56Stdlib6ZArith6BinInt1Z6shiftrC56Stdlib6ZArith6BinInt1Z?shiftr_div_pow2K47Corelib4Init5Logic3and01C47Corelib4Init5Logic9False_indC4ARocqVerifyHarness?AgentSubmission8PropExec3rdnC4ELinuxProcessSemantics?LinuxProcessSem>RiscvSemantics@word_to_le_bytesC4ARocqVerifyHarness?AgentSubmission8PropExec7seg_romK46Stdlib9micromega=RingMicromega3Op203K46Stdlib9micromega=RingMicromega3Op205K47Corelib4Init5Logic4True01K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry0:C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L57definedC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K?defined_of_KUnkC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA@u8_of_KWord1_modK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry02C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA8zeros_atC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA>zeros_of_KZeroK47Corelib7Numbers7BinNums8positive01C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K9land_le_rC56Stdlib6ZArith6BinInt1Z4landK46Stdlib9micromega=RingMicromega5Psatz02K46Stdlib9micromega=RingMicromega5Psatz06K46Stdlib9micromega:ZMicromega;ZArithProof02K46Stdlib9micromega6VarMap1t03K46Stdlib9micromega5Tauto8GFormula03K46Stdlib9micromega:ZMicromega;ZArithProof01C56Stdlib6ZArith6BinInt1Z3lorC56Stdlib6ZArith6BinInt1Z:lor_nonnegC56Stdlib6ZArith6BinInt1Z6eq_decC47Corelib4Init5Logic3notI47Corelib4Init6Specif7sumbool00C56Stdlib6ZArith6BinInt1Z7lor_0_lC56Stdlib6ZArith6BinInt1Z7lor_0_rC56Stdlib6ZArith6BinInt1Z4log2C56Stdlib6ZArith6BinInt1Z3maxC56Stdlib6ZArith6BinInt1Z<log2_lt_pow2C56Stdlib6ZArith6BinInt1Z:max_lub_ltC56Stdlib6ZArith6BinInt1Z8log2_lorC56Stdlib6ZArith6BinInt1Z>log2_lt_cancelC47Corelib4Init5Logic5proj2C56Stdlib6ZArith6BinInt1Z9land_commC46Stdlib5Lists4List2InC56Stdlib6ZArith6BinInt1Z3ltbC47Corelib4Init9Datatypes4andbC47Corelib5Lists7ListDef3seqC46Stdlib5Lists4List7forallbC47Corelib4Init5Logic3iffC47Corelib7Classes9MorphismsDiff_impl_subrelationC46Stdlib5Lists4List>forallb_forallC56Stdlib6ZArith6BinInt1Z6to_natC47Corelib4Init3Nat3addC47Corelib4Init5Peano2ltC46Stdlib5Lists4List6in_seqC46Stdlib9micromega;ZifyClasses9and_morphC56Stdlib6ZArith6BinInt1Z8max_specI47Corelib4Init5Logic2or00K47Corelib7Numbers7BinNums1Z03K46Stdlib9micromega7EnvRing3Pol01K46Stdlib9micromega=RingMicromega5Psatz04K46Stdlib9micromega5Tauto8GFormula06K46Stdlib9micromega7EnvRing5PExpr03C46Stdlib9micromega;ZifyClasses;rew_iff_revC56Stdlib6ZArith4Znat5Z2Nat2idC47Corelib4Init9Datatypes9andb_propC46Stdlib9micromega9SatDivModCZ_mod_nonneg_nonnegC56Stdlib6ZArith6BinInt1Z7div_modC56Stdlib6ZArith6BinInt1Z3mulC56Stdlib6ZArith6BinInt1Z=mod_pos_boundC56Stdlib6ZArith6BinInt1Z=mod_neg_boundC56Stdlib5omega8PreOmega1Z;div_0_r_extC56Stdlib5omega8PreOmega1Z;mod_0_r_extK46Stdlib9micromega5Tauto8GFormula01C56Stdlib6ZArith6BinInt1Z3lebC46Stdlib9micromega;ZifyClasses5mkappC46Stdlib9micromega;ZifyClasses5mkrelC46Stdlib9micromega;ZifyClasses6mkapp2K46Stdlib9micromega5Tauto8GFormula0:C46Stdlib9micromega8ZifyInst@of_nat_to_nat_eqC56Stdlib6ZArith4Znat5Nat2Z6inj_leC56Stdlib5Arith8PeanoNat3Nat3addC56Stdlib6ZArith4Znat5Nat2Z7inj_addC56Stdlib6ZArith4Znat5Nat2Z6inj_ltK46Stdlib9micromega5Tauto4kind02C6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG7kept_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1:Pva_opA1_05regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1:Pva_opA1_09regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1<KS_va_opA1_0C46Stdlib5Lists4List2tlC4ELinuxProcessSemantics5Riscv7Prelude5bvmapC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L59img_clearc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP17alignedC56Stdlib6ZArith6BinInt1Z3subC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L58writableC47Corelib4Init5Logic5proj1C4ARocqVerifyHarness?AgentSubmission8PropExec4getrK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX23env01C6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX22evC56Stdlib6NArith6BinNat1N6to_natC5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA6za_litC5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA8za_startK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr02C6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG5slotsC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG@regs_ok_of_slotsC5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S7regs_okK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry04K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr01K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry06K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry05K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry07C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K;kentry_KImgC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K:zagree_allC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA:zpolyA_valC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KWord8C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KWord4C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KRangeC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KAlignC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K:kentry_KWrK47Corelib5Lists7ListDef6Forall01C5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S7know_okC5ARocqVerifyHarness?AgentSubmission7Mh_00387StoreOk9mem_growsC4ARocqVerifyHarness?AgentSubmission8PropExec4mkstI47Corelib4Init5Logic2ex00C5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP8bfact_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1:Pva_opA1_0<seg_sound_axI47Corelib4Init9Datatypes4prod00K47Corelib4Init9Datatypes4prod01C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K9zagree_ltC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=outside_nil_eC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K>outside_cons_eC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG<unsigned_litC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG9kept_regsC47Corelib5Lists7ListDef3nthK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr03c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1=word_of_zpolyC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG7out_regC46Stdlib5Lists4List<nth_error_Inc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1>u64_of_KWord8aK47Corelib4Init5Logic2ex01C5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA7za_stepK47Corelib5Lists7ListDef6Forall02I5ARocqVerifyHarness?AgentSubmission7Mh_00306CatSim6msteps00C46Stdlib5Lists4List9nth_errorC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR5ps_pcC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR7ps_regsC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP:regions_okC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP7outsideC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR8ps_cellsC5ARocqVerifyHarness?AgentSubmission7Mh_01129AxSymRun39env_agreeC5ARocqVerifyHarness?AgentSubmission7Mh_01129AxSymRun3<expr_vars_ltK46Stdlib9micromega7EnvRing5PExpr04C5ARocqVerifyHarness?AgentSubmission;BigLinkBase2BL9bvu_rangeI6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry00I6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR9post_spec00c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1:Pva_opA1_03PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1:Pva_opA1_02F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1:Pva_opA1_03NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1:Pva_opA1_06cells0I4ARocqVerifyHarness?AgentSubmission8PropExec7FPState00K47Corelib7Numbers7BinNums1N01c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1:Pva_opA1_03kn0I5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP5bfact00c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1:Pva_opA1_03ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1?KS_va_opA1_0_okK4ELinuxProcessSemantics5Riscv5Instr5aluop01c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1;Pva_opA1_165regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1;Pva_opA1_169regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1=KS_va_opA1_16C47Corelib4Init5Logic6eq_symC47Corelib4Init5Logic8eq_transc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1;Pva_opA1_16<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1;Pva_opA1_163PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1;Pva_opA1_162F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1;Pva_opA1_163NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1;Pva_opA1_166cells0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1;Pva_opA1_163kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1;Pva_opA1_163ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1@KS_va_opA1_16_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1:Pva_opA2_05regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1:Pva_opA2_09regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1<KS_va_opA2_0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1:Pva_opA2_0<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1:Pva_opA2_03PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1:Pva_opA2_02F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1:Pva_opA2_03NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1:Pva_opA2_03kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1:Pva_opA2_03ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1?KS_va_opA2_0_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1;Pva_opA2_165regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1;Pva_opA2_169regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1=KS_va_opA2_16c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1;Pva_opA2_16<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1;Pva_opA2_163PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1;Pva_opA2_162F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1;Pva_opA2_163NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1;Pva_opA2_163kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1;Pva_opA2_163ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1@KS_va_opA2_16_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opA35regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opA39regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1:KS_va_opA3c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opA3<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opA33PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opA32F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opA33NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opA33kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opA33ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1=KS_va_opA3_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opB15regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opB19regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1:KS_va_opB1c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opB25regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opB29regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1:KS_va_opB2K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry08C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K<kentry_KDisjC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KWord1C46Stdlib9micromega9SatDivModCZ_div_nonneg_nonnegK46Stdlib9micromega=RingMicromega5Psatz07K46Stdlib9micromega=RingMicromega5Psatz05K46Stdlib9micromega7EnvRing5PExpr05C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA<kentry_KZeroc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opB2<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opB23PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opB22F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opB23NX0K4ELinuxProcessSemantics5Riscv5Instr5aluop07c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opB23kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opB23ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP1=KS_va_opB2_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP17VASOPP18Pva_opB26cells0". Local Ltac lia := L5FastLia.plia.

Module VASOPP1.
Abbreviation RSEGS := Asan.M.loaded_segments.
Notation reg i := (Z_to_bv 5 (Z.of_nat i)) (only parsing).
Notation st fx R pc M := (@mkst fx R (Z_to_bv 64 pc) M (seg_rom Asan.M.loaded_segments)) (only parsing).

(* [comment removed for export] *)
Lemma word_of_zpoly E Vz e z : L5K.zagree E Vz e -> L5KA.zpolyA Vz e = Some z -> edenot E e = Z_to_bv 64 z.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP1 ()) [] (Mh_0208_blobs1.kr_b_248 ())). Qed.
(* [comment removed for export] *)
Lemma u64_of_KWord8a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 8 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> L5.u64_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP1 ()) [] (Mh_0208_blobs1.kr_b_249 ())). Qed.
Lemma u32_of_KWord4a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 4 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> L5.u32_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP1 ()) [] (Mh_0208_blobs1.kr_b_250 ())). Qed.
Lemma u8_of_KWord1a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 1 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> 0 <= v < 256 -> a' = a + off -> L5.u8_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP1 ()) [] (Mh_0208_blobs1.kr_b_251 ())). Qed.
(* [comment removed for export] *)
Lemma u8x2_of_KWord2a E M b off e a v a' v0 v1 : kentry_ok RSEGS E M (KWord (SA b off) 2 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> v0 = v mod 256 -> v1 = (v / 256) mod 256 ->
  L5.u8_at RSEGS M a' v0 /\ L5.u8_at RSEGS M (a' + 1) v1.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP1 ()) [] (Mh_0208_blobs1.kr_b_252 ())). Qed.
Lemma defined_of_KUnka E M b off ne a n a' : kentry_ok RSEGS E M (KUnk (SA b off) ne) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E ne) = n -> a' = a + off -> L5.defined M a' n.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP1 ()) [] (Mh_0208_blobs1.kr_b_253 ())). Qed.
Lemma u8_of_KWord1ma E M b off e a v a' v' : kentry_ok RSEGS E M (KWord (SA b off) 1 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> v' = v mod 256 -> L5.u8_at RSEGS M a' v'.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP1 ()) [] (Mh_0208_blobs1.kr_b_254 ())). Qed.
Lemma zeros_of_KZeroa E M b off ne a n a' : kentry_ok RSEGS E M (KZero (SA b off) ne) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E ne) = n -> a' = a + off -> L5KA.zeros_at M a' n.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP1 ()) [] (Mh_0208_blobs1.kr_b_255 ())). Qed.
Lemma land_byte a m : 0 <= a -> 0 <= m <= 255 -> 0 <= Z.land a m < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP1 ()) [] (Mh_0208_blobs1.kr_b_256 ())). Qed.
Lemma lor_byte a b : 0 <= a < 256 -> 0 <= b < 256 -> 0 <= Z.lor a b < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP1 ()) [] (Mh_0208_blobs1.kr_b_257 ())). Qed.
(* [comment removed for export] *)
Lemma land_le_l a m : 0 <= a -> 0 <= m -> Z.land a m <= a.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP1 ()) [] (Mh_0208_blobs1.kr_b_258 ())). Qed.
Local Ltac zfacts :=
  repeat (match goal with |- context [Z.land ?a ?m] =>
    lazymatch goal with _ : 0 <= Z.land a m <= m |- _ => fail | _ => pose proof (L5K.land_le_r a m ltac:(lia) ltac:(lia)); pose proof (land_le_l a m ltac:(lia) ltac:(lia)) end end);
  repeat (match goal with |- context [?a / ?c] =>
    lazymatch goal with _ : 0 <= a / c |- _ => fail | _ => pose proof (Z.div_pos a c ltac:(lia) ltac:(lia)); pose proof (Z.mul_div_le a c ltac:(lia)) end end).
Local Ltac nonneg_tac := first [lia | match goal with |- 0 <= ?x mod ?m => exact (proj1 (Z.mod_pos_bound x m ltac:(clear; lia))) end | (zfacts; lia)].
Lemma setbit1_byte a : 0 <= a < 256 -> 0 <= (Z.land a 18446744073709551613 + 2) mod 2 ^ 64 < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP1 ()) [] (Mh_0208_blobs1.kr_b_259 ())). Qed.
Local Ltac byte_go :=
  lazymatch goal with
  | |- 0 <= (Z.land _ 18446744073709551613 + 2) mod _ < 256 => apply setbit1_byte; lia
  | |- 0 <= Z.lor _ _ < 256 => apply lor_byte; byte_go
  | |- 0 <= Z.land _ _ < 256 => apply land_byte; [nonneg_tac | lia]
  | _ => zfacts; first [lia | rewrite !Z.mod_small by (rewrite ?Z.mod_small by lia; lia); lia]
  end.
Local Ltac byte_tac0 k := k; byte_go.
Tactic Notation "byte_tac" tactic(k) := byte_tac0 k.
(* [comment removed for export] *)
(* [comment removed for export] *)
Local Ltac solve_modk k :=
  repeat match goal with |- context [(?x mod 18446744073709551616) / _] => rewrite (Z.mod_small x 18446744073709551616) by (k; zfacts; lia) end;
  first [ rewrite Z.mod_small; [ first [reflexivity | k; lia] | k; L5K.zrange_tac ]
        | symmetry; eapply (Z.mod_unique_pos _ _ (-1)); k; unfold BL.MM; lia
        | symmetry; eapply (Z.mod_unique_pos _ _ 1); k; unfold BL.MM; lia ].
(* [comment removed for export] *)
Local Ltac pvz_hg tac := lazymatch goal with |- ?G0 => let PG := fresh "PGoal" in set (PG := G0); tac; subst PG end.
Local Ltac pvz_fold B k := lazymatch B with | ?A2 /\ ?B2 => pvz_fold B2 ltac:(fun T2 => let T := fresh "pvzT" in pose (T := A2 /\ T2); k T) | _ => k B end.
Local Ltac pvz_linconj := lazymatch goal with |- ?A /\ ?B => pvz_fold B ltac:(fun T => change_no_check (A /\ T)) | _ => idtac end.
Local Ltac pvz_unfold ZA := lazymatch type of ZA with forall j, _ = ?f j => tryif is_var f then unfold f else idtac | _ => idtac end.
Tactic Notation "evalEk" constr(ZA) tactic(k) :=
  L5K.norm_expr; eapply L5KA.zpolyA_val; [ apply (L5K.zagree_all _ _ _ ZA) | cbn [L5KA.zpolyA]; pvz_unfold ZA; reflexivity | solve_modk k ].
Tactic Notation "evalEk'" constr(ZA) constr(AG) tactic(k) :=
  L5K.norm_expr; eapply L5KA.zpolyA_val;
  [ eapply (L5K.zagree_lt _ _ _ _ _ AG); [apply (L5K.zagree_all _ _ _ ZA) | vm_compute; reflexivity] | cbn [L5KA.zpolyA]; pvz_unfold ZA; reflexivity | solve_modk k ].
(* [comment removed for export] *)
Definition aligned (a m : Z) : Prop := a mod m = 0.
Definition srl_range (a c lo hi : Z) : Prop := lo <= a / c <= hi.
(* [comment removed for export] *)
Local Ltac exactA H :=
  first [ exact H
        | lazymatch goal with
          | |- L5.u64_at _ _ ?a _ => lazymatch type of H with L5.u64_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.u8_at _ _ ?a _ => lazymatch type of H with L5.u8_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.u32_at _ _ ?a _ => lazymatch type of H with L5.u32_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.writable _ _ ?a _ => lazymatch type of H with L5.writable _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.defined _ ?a _ => lazymatch type of H with L5.defined _ ?b _ => replace a with b by (clear; lia) end
          | |- L5KA.zeros_at _ ?a _ => lazymatch type of H with L5KA.zeros_at _ ?b _ => replace a with b by (clear; lia) end
          end; exact H ].
(* [comment removed for export] *)
Local Ltac den_tac := first [reflexivity | lia | idtac].
(* [comment removed for export] *)
(* [comment removed for export] *)
Local Ltac apc_norm :=
  repeat match goal with
  | |- context [APC.eadd ?a ?b] => let t := eval vm_compute in (APC.eadd a b) in change (APC.eadd a b) with t
  | |- context [APC.esub ?a ?b] => let t := eval vm_compute in (APC.esub a b) in change (APC.esub a b) with t
  | |- context [APC.escale ?c ?e] => let t := eval vm_compute in (APC.escale c e) in change (APC.escale c e) with t
  | |- context [APC.eaddz ?a ?z] => let t := eval vm_compute in (APC.eaddz a z) in change (APC.eaddz a z) with t
  end.
(* [comment removed for export] *)
Local Ltac zp_norm := repeat (match goal with |- context [(?a <=? ?b) && (?c <? ?d)] => let r := eval vm_compute in ((a <=? b) && (c <? d)) in change ((a <=? b) && (c <? d)) with r end);
  repeat (match goal with |- context [2 ^ ?s] => let r := eval vm_compute in (2 ^ s) in change (2 ^ s) with r end); lazy beta iota zeta.
Local Ltac zp_mods := repeat match goal with |- context [(?x mod 18446744073709551616) / _] => rewrite (Z.mod_small x 18446744073709551616) by (zfacts; lia) end.
Local Ltac slotP ZA :=
  first [ assumption | reflexivity
        | (etransitivity; [eassumption|]; symmetry; eapply word_of_zpoly; [apply (L5K.zagree_all _ _ _ ZA) | cbn [L5KA.zpolyA]; pvz_unfold ZA; zp_norm; f_equal; zp_mods; first [reflexivity | clear; zfacts; lia | zfacts; lia]]) ].
(* [comment removed for export] *)
Local Ltac wordP' ZA AG :=
  eapply word_of_zpoly; [ eapply (L5K.zagree_lt _ _ _ _ _ AG); [apply (L5K.zagree_all _ _ _ ZA) | vm_compute; reflexivity]
                        | cbn [L5KA.zpolyA]; pvz_unfold ZA; zp_norm; f_equal; zp_mods; first [reflexivity | clear; zfacts; lia | zfacts; lia] ].
(* [comment removed for export] *)
Module Pva_opA1_0 := BndP_Na_131.LibSegNa_va_opA1_0.
Definition KS_va_opA1_0 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_opA1_0.regs0 Pva_opA1_0.regs_out0).
Lemma KS_va_opA1_0_ok : BG.kept_ok 80 Pva_opA1_0.regs0 Pva_opA1_0.regs_out0 KS_va_opA1_0 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP1 ()) [] (Mh_0208_blobs1.kr_b_260 ())). Qed.
Lemma va_opA1_0_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 10) = Z_to_bv 64 (V 33%nat) -> getr R (reg 11) = Z_to_bv 64 (V 34%nat) ->
  L5.img_clear M 65536 1409024 -> L5.u64_at RSEGS M 1440376 2147450880 -> L5.u32_at RSEGS M 1440384 1 -> 140735332487264 <= (V 2%nat) <= 140737488355328 ->
  aligned (V 2%nat) 32 -> L5.writable RSEGS M ((V 2%nat) - 96) 96 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, ~ (((V 2%nat) - 96) <= bv_unsigned a < ((V 2%nat) - 96) + 96) -> M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> ~ (((V 2%nat) - 96) <= i < ((V 2%nat) - 96) + 96) -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xba7f8 M) (st fx' R' 0xba828 M')
        /\ (forall x, In x KS_va_opA1_0 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 2) = Z_to_bv 64 ((V 2%nat) - 96)
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 80) (bv_unsigned (getr R (reg 24)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 72) (bv_unsigned (getr R (reg 23)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 64) (bv_unsigned (getr R (reg 22)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 56) (bv_unsigned (getr R (reg 21)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 48) (bv_unsigned (getr R (reg 20)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 40) (bv_unsigned (getr R (reg 19)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 32) (bv_unsigned (getr R (reg 18)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 24) (bv_unsigned (getr R (reg 9)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 16) (bv_unsigned (getr R (reg 8)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 8) (bv_unsigned (getr R (reg 1)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 96) 0).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP1 ()) [] (Mh_0208_blobs1.kr_b_261 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_opA1_16 := BndP_Na_131.LibSegNa_va_opA1_16.
Definition KS_va_opA1_16 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_opA1_16.regs0 Pva_opA1_16.regs_out0).
Lemma KS_va_opA1_16_ok : BG.kept_ok 80 Pva_opA1_16.regs0 Pva_opA1_16.regs_out0 KS_va_opA1_16 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP1 ()) [] (Mh_0208_blobs1.kr_b_262 ())). Qed.
Lemma va_opA1_16_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) + 16) -> getr R (reg 10) = Z_to_bv 64 (V 33%nat) -> getr R (reg 11) = Z_to_bv 64 (V 34%nat) ->
  L5.img_clear M 65536 1409024 -> L5.u64_at RSEGS M 1440376 2147450880 -> L5.u32_at RSEGS M 1440384 1 -> 140735332487264 <= (V 2%nat) <= 140737488355312 ->
  aligned (V 2%nat) 32 -> L5.writable RSEGS M ((V 2%nat) - 96) 112 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, ~ (((V 2%nat) - 80) <= bv_unsigned a < ((V 2%nat) - 80) + 96) -> M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> ~ (((V 2%nat) - 80) <= i < ((V 2%nat) - 80) + 96) -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xba7f8 M) (st fx' R' 0xba828 M')
        /\ (forall x, In x KS_va_opA1_16 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 2) = Z_to_bv 64 ((V 2%nat) - 80)
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 64) (bv_unsigned (getr R (reg 24)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 56) (bv_unsigned (getr R (reg 23)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 48) (bv_unsigned (getr R (reg 22)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 40) (bv_unsigned (getr R (reg 21)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 32) (bv_unsigned (getr R (reg 20)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 24) (bv_unsigned (getr R (reg 19)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 16) (bv_unsigned (getr R (reg 18)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 8) (bv_unsigned (getr R (reg 9)))
        /\ L5.u64_at RSEGS M' (V 2%nat) (bv_unsigned (getr R (reg 8)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) + 8) (bv_unsigned (getr R (reg 1)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 80) 0).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP1 ()) [] (Mh_0208_blobs1.kr_b_263 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_opA2_0 := BndP_Na_131.LibSegNa_va_opA2_0.
Definition KS_va_opA2_0 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_opA2_0.regs0 Pva_opA2_0.regs_out0).
Lemma KS_va_opA2_0_ok : BG.kept_ok 80 Pva_opA2_0.regs0 Pva_opA2_0.regs_out0 KS_va_opA2_0 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP1 ()) [] (Mh_0208_blobs1.kr_b_264 ())). Qed.
Lemma va_opA2_0_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 10) = Z_to_bv 64 (V 33%nat) -> getr R (reg 11) = Z_to_bv 64 (V 34%nat) ->
  L5.img_clear M 65536 1409024 -> L5.u64_at RSEGS M 1440376 2147450880 -> L5.u32_at RSEGS M 1440384 1 -> 140735332487264 <= (V 2%nat) <= 140737488355328 ->
  aligned (V 2%nat) 32 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xba82c M) (st fx' R' 0xba83c M')
        /\ (forall x, In x KS_va_opA2_0 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 8) = Z_to_bv 64 (V 2%nat)
        /\ getr R' (reg 9) = Z_to_bv 64 ((V 2%nat) - 96)
        /\ getr R' (reg 20) = Z_to_bv 64 (V 34%nat)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP1 ()) [] (Mh_0208_blobs1.kr_b_265 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_opA2_16 := BndP_Na_131.LibSegNa_va_opA2_16.
Definition KS_va_opA2_16 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_opA2_16.regs0 Pva_opA2_16.regs_out0).
Lemma KS_va_opA2_16_ok : BG.kept_ok 80 Pva_opA2_16.regs0 Pva_opA2_16.regs_out0 KS_va_opA2_16 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP1 ()) [] (Mh_0208_blobs1.kr_b_266 ())). Qed.
Lemma va_opA2_16_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 80) -> getr R (reg 10) = Z_to_bv 64 (V 33%nat) -> getr R (reg 11) = Z_to_bv 64 (V 34%nat) ->
  L5.img_clear M 65536 1409024 -> L5.u64_at RSEGS M 1440376 2147450880 -> L5.u32_at RSEGS M 1440384 1 -> 140735332487264 <= (V 2%nat) <= 140737488355328 ->
  aligned (V 2%nat) 32 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xba82c M) (st fx' R' 0xba83c M')
        /\ (forall x, In x KS_va_opA2_16 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 2) = Z_to_bv 64 ((V 2%nat) - 96)
        /\ getr R' (reg 8) = Z_to_bv 64 ((V 2%nat) + 16)
        /\ getr R' (reg 9) = Z_to_bv 64 ((V 2%nat) - 96)
        /\ getr R' (reg 20) = Z_to_bv 64 (V 34%nat)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP1 ()) [] (Mh_0208_blobs1.kr_b_267 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_opA3 := BndP_Na_131.LibSegNa_va_opA3.
Definition KS_va_opA3 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_opA3.regs0 Pva_opA3.regs_out0).
Lemma KS_va_opA3_ok : BG.kept_ok 80 Pva_opA3.regs0 Pva_opA3.regs_out0 KS_va_opA3 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP1 ()) [] (Mh_0208_blobs1.kr_b_268 ())). Qed.
Lemma va_opA3_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 10) = Z_to_bv 64 (V 33%nat) ->
  L5.img_clear M 65536 1409024 -> L5.u64_at RSEGS M 1440376 2147450880 -> L5.u32_at RSEGS M 1440384 1 -> 140735332487264 <= (V 2%nat) <= 140737488355328 ->
  aligned (V 2%nat) 32 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xba840 M) (st fx' R' 0x64e38 M')
        /\ (forall x, In x KS_va_opA3 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 764008
        /\ getr R' (reg 10) = Z_to_bv 64 768
        /\ getr R' (reg 11) = Z_to_bv 64 1440376
        /\ getr R' (reg 12) = Z_to_bv 64 1
        /\ getr R' (reg 21) = Z_to_bv 64 (V 33%nat)
        /\ getr R' (reg 24) = Z_to_bv 64 2147450880).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP1 ()) [] (Mh_0208_blobs1.kr_b_269 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_opB1 := BndP_Na_131.LibSegNa_va_opB1.
Definition KS_va_opB1 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_opB1.regs0 Pva_opB1.regs_out0).
Lemma KS_va_opB1_ok : BG.kept_ok 80 Pva_opB1.regs0 Pva_opB1.regs_out0 KS_va_opB1 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP1 ()) [] (Mh_0208_blobs1.kr_b_270 ())). Qed.
Lemma va_opB1_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 50%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 10) = Z_to_bv 64 (V 50%nat) -> getr R (reg 21) = Z_to_bv 64 (V 33%nat) -> getr R (reg 24) = Z_to_bv 64 2147450880 ->
  7036928 <= (V 50%nat) <= 140737488354304 -> aligned (V 50%nat) 32 -> (2147446784 + 17592186048512 <= (V 50%nat) \/ (V 50%nat) + 1024 <= 2147446784) -> L5.writable RSEGS M (V 50%nat) 24 ->
  L5.writable RSEGS M (((V 50%nat) / 8) + 2147450880) 128 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, ~ (((V 50%nat) + 0) <= bv_unsigned a < ((V 50%nat) + 0) + 24) -> ~ (((((V 50%nat) / 8) + 2147450880) + 0) <= bv_unsigned a < ((((V 50%nat) / 8) + 2147450880) + 0) + 96) -> M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> ~ (((V 50%nat) + 0) <= i < ((V 50%nat) + 0) + 24) -> ~ (((((V 50%nat) / 8) + 2147450880) + 0) <= i < ((((V 50%nat) / 8) + 2147450880) + 0) + 96) -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xba868 M) (st fx' R' 0xbaa94 M')
        /\ (forall x, In x KS_va_opB1 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 10) = Z_to_bv 64 18446744073709551608
        /\ getr R' (reg 11) = Z_to_bv 64 18446744073709551602
        /\ getr R' (reg 12) = Z_to_bv 64 ((V 33%nat) / 8)
        /\ getr R' (reg 13) = Z_to_bv 64 763896
        /\ getr R' (reg 14) = Z_to_bv 64 18446744073709551601
        /\ getr R' (reg 18) = Z_to_bv 64 (V 50%nat)
        /\ getr R' (reg 19) = Z_to_bv 64 (((V 50%nat) / 8) + 2147450880)
        /\ getr R' (reg 23) = Z_to_bv 64 (V 50%nat)
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450908) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450907) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450906) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450905) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450900) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450899) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450898) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450897) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450896) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450895) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450894) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450893) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450887) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450968) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450967) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450966) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450965) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450960) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450959) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450958) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450957) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450964) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450963) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450962) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450961) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450952) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450951) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450950) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450949) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450956) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450955) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450954) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450953) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450944) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450943) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450942) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450941) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450948) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450947) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450946) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450945) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450936) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450935) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450934) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450933) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450940) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450939) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450938) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450937) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450928) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450927) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450926) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450925) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450932) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450931) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450930) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450929) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450920) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450919) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450918) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450917) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450924) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450923) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450922) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450921) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450912) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450911) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450910) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450909) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450916) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450915) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450914) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450913) 242
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450904) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450903) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450902) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450901) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450892) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450891) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450890) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450889) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450888) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450886) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450885) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450884) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450972) 243
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450971) 243
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450970) 243
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450969) 243
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450975) 243
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450974) 243
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450973) 243
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450883) 241
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450882) 241
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450881) 241
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450880) 241
        /\ L5.u64_at RSEGS M' ((V 50%nat) + 16) 763896
        /\ L5.u64_at RSEGS M' ((V 50%nat) + 8) 81373
        /\ L5.u64_at RSEGS M' (V 50%nat) 1102416563).
Proof.
ltac2:(KReplay.run1 (kr_tL_Mh_0208 ()) [] (Mh_0208_blobs1.kr_b_271 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_opB2 := BndP_Na_131.LibSegNa_va_opB2.
Definition KS_va_opB2 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_opB2.regs0 Pva_opB2.regs_out0).
Lemma KS_va_opB2_ok : BG.kept_ok 80 Pva_opB2.regs0 Pva_opB2.regs_out0 KS_va_opB2 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP1 ()) [] (Mh_0208_blobs1.kr_b_272 ())). Qed.
Lemma va_opB2_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 33%nat) < 2 ^ 64 -> 0 <= (V 35%nat) < 2 ^ 64 -> 0 <= (V 50%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 9) = Z_to_bv 64 ((V 2%nat) - 96) -> getr R (reg 12) = Z_to_bv 64 ((V 33%nat) / 8) -> getr R (reg 21) = Z_to_bv 64 (V 33%nat) -> getr R (reg 23) = Z_to_bv 64 (V 50%nat) -> getr R (reg 24) = Z_to_bv 64 2147450880 ->
  140735332487264 <= (V 2%nat) <= 140737488355328 -> aligned (V 2%nat) 32 -> L5.writable RSEGS M ((V 2%nat) - 96) 8 -> 140735332487168 <= (V 33%nat) <= 140737488355316 ->
  (2147446784 + 17592186048512 <= (V 33%nat) \/ (V 33%nat) + 12 <= 2147446784) -> L5.u8_at RSEGS M (V 33%nat) 0 -> L5.u32_at RSEGS M ((V 33%nat) + 4) 0 -> L5.u8_at RSEGS M ((V 33%nat) + 8) (V 35%nat) ->
  0 <= (V 35%nat) <= 255 -> L5KA.zeros_at M (((V 33%nat) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 33%nat) + 4) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 33%nat) + 8) / 8) + 2147450880) 1 ->
  (((V 2%nat) - 96) + 8 <= (V 33%nat) \/ (V 33%nat) + 12 <= ((V 2%nat) - 96)) ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, ~ (((V 2%nat) - 96) <= bv_unsigned a < ((V 2%nat) - 96) + 8) -> M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> ~ (((V 2%nat) - 96) <= i < ((V 2%nat) - 96) + 8) -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbaa94 M) (st fx' R' 0xbadb0 M')
        /\ (forall x, In x KS_va_opB2 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 10) = Z_to_bv 64 (V 35%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 0
        /\ getr R' (reg 12) = Z_to_bv 64 (((V 33%nat) / 8) + 2147450880)
        /\ getr R' (reg 13) = Z_to_bv 64 0
        /\ getr R' (reg 22) = Z_to_bv 64 ((V 50%nat) + 32)
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 96) (V 50%nat)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP1 ()) [] (Mh_0208_blobs1.kr_b_273 ())). Qed.
(* [comment removed for export] *)

End VASOPP1.

End VaSOpP1.
Module VaSOpP2.
(* [comment removed for export] *)
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0007.   (* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From stdpp.bitvector Require Import definitions.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BigLinkBase. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.CatExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030.CatSim OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.SeqExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.StoreOk OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.Hoare OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.ShapeAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.SpinAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.HeapIface OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.AxSymRun3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.BigLinkBase OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.BigLinkGlue OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.L5Defs OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5Kn OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5KnA.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0177. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0177.
Import ListNotations. Import AX2. Import AX2B. Import AX2S.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Ltac Zify.zify_convert_to_euclidean_division_equations_flag ::= constr:(false).
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_VaSOpP2 () := "C47Corelib7Classes9Morphisms6ProperC47Corelib7Classes?RelationClasses9ReflexiveC47Corelib7Classes9Morphisms:forall_defC46Stdlib5Lists4List2hdC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA6fframeC46Stdlib5Lists4List4inclC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55rangeC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR6regionC47Corelib4Init5Logic8eq_ind_rC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K@nth_error_singleC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K6zagreeI47Corelib4Init9Datatypes6option00C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA6zpolyAK47Corelib4Init9Datatypes6option01I47Corelib4Init5Logic2eq00K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1N02I45stdpp9bitvector;definitions2bv00C56Stdlib6ZArith6BinInt1Z6moduloC45stdpp9bitvector;definitions7Z_to_bvC45stdpp9bitvector;definitions;bv_unsignedC45stdpp9bitvector;definitions5bv_eqC45stdpp9bitvector;definitions7bv_wrapK47Corelib7Numbers7BinNums1Z02C56Stdlib6ZArith6BinInt1Z3powC56Stdlib6ZArith6BinInt1Z>pow_pos_nonnegC56Stdlib6ZArith6BinInt1Z2ltC56Stdlib6ZArith6BinInt1Z2leC56Stdlib6ZArith6BinInt1Z:pow_nonnegK47Corelib4Init9Datatypes4list01I47Corelib4Init9Datatypes4list00K46Stdlib9micromega6VarMap1t01I46Stdlib9micromega6VarMap1t00I46Stdlib9micromega=RingMicromega7Formula00K46Stdlib9micromega7EnvRing5PExpr01K46Stdlib9micromega7EnvRing5PExpr07K46Stdlib9micromega=RingMicromega7Formula01K46Stdlib9micromega5Tauto8GFormula04K46Stdlib9micromega5Tauto8GFormula07C46Stdlib9micromega5Tauto8BFormulaK47Corelib4Init5Logic2eq01C46Stdlib9micromega:ZMicromega=ZTautoCheckerC46Stdlib9micromega6VarMap4findC46Stdlib9micromega:ZMicromegaCZTautoChecker_soundC56Stdlib6ZArith6BinInt1Z7mod_modC45stdpp9bitvector;definitions@Z_to_bv_unsignedC6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26edenotC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA<zpolyA_soundC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG@word_of_unsignedI6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX23env00I47Corelib4Init9Datatypes3nat00I47Corelib7Numbers7BinNums1Z00I6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr00K47Corelib7Numbers7BinNums8positive03C5ARocqVerifyHarness?AgentSubmission;BigLinkBase2BL2MMI47Corelib7Numbers7BinNums1N00I47Corelib4Init5Logic3and00K47Corelib7Numbers7BinNums1Z01I47Corelib4Init5Logic4True00I46Stdlib9micromega:ZMicromega;ZArithProof00C46Stdlib9micromega5Tauto5eKindI47Corelib4Init9Datatypes4unit00K46Stdlib9micromega5Tauto4kind01K46Stdlib9micromega=RingMicromega3Op201K47Corelib4Init9Datatypes4unit01I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01I47Corelib4Init5Logic5False00K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX25saddr01K47Corelib4Init9Datatypes3nat02K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry01C5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S9kentry_okC56Stdlib6ZArith6BinInt1Z3addC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u64_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=u64_of_KWord8C5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsK47Corelib4Init9Datatypes3nat01C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u32_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=u32_of_KWord4C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55u8_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K<u8_of_KWord1I47Corelib4Init5Peano2le00C56Stdlib6ZArith6BinInt1Z6of_natC5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S4flatC6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26adenotC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K8adenot_eC47Corelib4Init5Logic6eq_indC45stdpp9bitvector;definitionsDbv_unsigned_in_rangeC45stdpp9bitvector;definitions:bv_modulusC4ELinuxProcessSemantics?LinuxProcessSem6BvBase=Z_to_le_bytesK46Stdlib9micromega6VarMap1t02K46Stdlib9micromega7EnvRing5PExpr02K46Stdlib9micromega5Tauto8GFormula05K47Corelib4Init9Datatypes6option02K46Stdlib9micromega5Tauto8GFormula08C56Stdlib6ZArith6BinInt1Z9mod_smallK45stdpp9bitvector;definitions2bv01C45stdpp9bitvector;definitions6bv_addC56Stdlib6ZArith6BinInt1Z?add_mod_idemp_lC45stdpp9bitvector;definitions?bv_add_unsignedC56Stdlib6ZArith6BinInt1Z3divK47Corelib4Init9Datatypes4list02C47Corelib4Init5Logic7f_equalC35stdpp7tactics<f_equal_helpC56Stdlib6ZArith6BinInt1Z6shiftrC56Stdlib6ZArith6BinInt1Z?shiftr_div_pow2K47Corelib4Init5Logic3and01C47Corelib4Init5Logic9False_indC4ARocqVerifyHarness?AgentSubmission8PropExec3rdnC4ELinuxProcessSemantics?LinuxProcessSem>RiscvSemantics@word_to_le_bytesC4ARocqVerifyHarness?AgentSubmission8PropExec7seg_romK46Stdlib9micromega=RingMicromega3Op203K46Stdlib9micromega=RingMicromega3Op205K47Corelib4Init5Logic4True01K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry0:C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L57definedC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K?defined_of_KUnkC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA@u8_of_KWord1_modK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry02C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA8zeros_atC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA>zeros_of_KZeroK47Corelib7Numbers7BinNums8positive01C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K9land_le_rC56Stdlib6ZArith6BinInt1Z4landK46Stdlib9micromega=RingMicromega5Psatz02K46Stdlib9micromega=RingMicromega5Psatz06K46Stdlib9micromega:ZMicromega;ZArithProof02K46Stdlib9micromega6VarMap1t03K46Stdlib9micromega5Tauto8GFormula03K46Stdlib9micromega:ZMicromega;ZArithProof01C56Stdlib6ZArith6BinInt1Z3lorC56Stdlib6ZArith6BinInt1Z:lor_nonnegC56Stdlib6ZArith6BinInt1Z6eq_decC47Corelib4Init5Logic3notI47Corelib4Init6Specif7sumbool00C56Stdlib6ZArith6BinInt1Z7lor_0_lC56Stdlib6ZArith6BinInt1Z7lor_0_rC56Stdlib6ZArith6BinInt1Z4log2C56Stdlib6ZArith6BinInt1Z3maxC56Stdlib6ZArith6BinInt1Z<log2_lt_pow2C56Stdlib6ZArith6BinInt1Z:max_lub_ltC56Stdlib6ZArith6BinInt1Z8log2_lorC56Stdlib6ZArith6BinInt1Z>log2_lt_cancelC47Corelib4Init5Logic5proj2C56Stdlib6ZArith6BinInt1Z9land_commC46Stdlib5Lists4List2InC56Stdlib6ZArith6BinInt1Z3ltbC47Corelib4Init9Datatypes4andbC47Corelib5Lists7ListDef3seqC46Stdlib5Lists4List7forallbC47Corelib4Init5Logic3iffC47Corelib7Classes9MorphismsDiff_impl_subrelationC46Stdlib5Lists4List>forallb_forallC56Stdlib6ZArith6BinInt1Z6to_natC47Corelib4Init3Nat3addC47Corelib4Init5Peano2ltC46Stdlib5Lists4List6in_seqC46Stdlib9micromega;ZifyClasses9and_morphC56Stdlib6ZArith6BinInt1Z8max_specI47Corelib4Init5Logic2or00K47Corelib7Numbers7BinNums1Z03K46Stdlib9micromega7EnvRing3Pol01K46Stdlib9micromega=RingMicromega5Psatz04K46Stdlib9micromega5Tauto8GFormula06K46Stdlib9micromega7EnvRing5PExpr03C46Stdlib9micromega;ZifyClasses;rew_iff_revC56Stdlib6ZArith4Znat5Z2Nat2idC47Corelib4Init9Datatypes9andb_propC46Stdlib9micromega9SatDivModCZ_mod_nonneg_nonnegC56Stdlib6ZArith6BinInt1Z7div_modC56Stdlib6ZArith6BinInt1Z3mulC56Stdlib6ZArith6BinInt1Z=mod_pos_boundC56Stdlib6ZArith6BinInt1Z=mod_neg_boundC56Stdlib5omega8PreOmega1Z;div_0_r_extC56Stdlib5omega8PreOmega1Z;mod_0_r_extK46Stdlib9micromega5Tauto8GFormula01C56Stdlib6ZArith6BinInt1Z3lebC46Stdlib9micromega;ZifyClasses5mkappC46Stdlib9micromega;ZifyClasses5mkrelC46Stdlib9micromega;ZifyClasses6mkapp2K46Stdlib9micromega5Tauto8GFormula0:C46Stdlib9micromega8ZifyInst@of_nat_to_nat_eqC56Stdlib6ZArith4Znat5Nat2Z6inj_leC56Stdlib5Arith8PeanoNat3Nat3addC56Stdlib6ZArith4Znat5Nat2Z7inj_addC56Stdlib6ZArith4Znat5Nat2Z6inj_ltK46Stdlib9micromega5Tauto4kind02C6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG7kept_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP27Pva_opC5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP27Pva_opC9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP29KS_va_opCC46Stdlib5Lists4List2tlC4ELinuxProcessSemantics5Riscv7Prelude5bvmapC47Corelib4Init5Logic5proj1C4ARocqVerifyHarness?AgentSubmission8PropExec4getrK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX23env01C6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX22evC56Stdlib6NArith6BinNat1N6to_natC5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA6za_litC5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA8za_startK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr02C6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG5slotsC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG@regs_ok_of_slotsC5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S7regs_okK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry06C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K:zagree_allC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA:zpolyA_valC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KRangeK47Corelib5Lists7ListDef6Forall01K47Corelib5Lists7ListDef6Forall02C5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S7know_okC5ARocqVerifyHarness?AgentSubmission7Mh_00387StoreOk9mem_growsC4ARocqVerifyHarness?AgentSubmission8PropExec4mkstI47Corelib4Init5Logic2ex00C5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP8bfact_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP27Pva_opC<seg_sound_axI47Corelib4Init9Datatypes4prod00K47Corelib4Init9Datatypes4prod01C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=outside_nil_eC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG9kept_regsK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr01C6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG7out_regC5ARocqVerifyHarness?AgentSubmission7Mh_01129AxSymRun3<expr_vars_ltC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K9zagree_ltc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP2=word_of_zpolyK47Corelib4Init5Logic2ex01C5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA7za_stepI5ARocqVerifyHarness?AgentSubmission7Mh_00306CatSim6msteps00C46Stdlib5Lists4List9nth_errorC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR5ps_pcC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR7ps_regsC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP:regions_okC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP7outsideC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR8ps_cellsC5ARocqVerifyHarness?AgentSubmission7Mh_01129AxSymRun39env_agreeC47Corelib5Lists7ListDef3nthI6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR9post_spec00c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP27Pva_opC3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP27Pva_opC2F0I6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry00c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP27Pva_opC3NX0I4ARocqVerifyHarness?AgentSubmission8PropExec7FPState00K47Corelib7Numbers7BinNums1N01c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP27Pva_opC3kn0I5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP5bfact00c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP27Pva_opC3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP2<KS_va_opC_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP27Pva_opD5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP27Pva_opD9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP29KS_va_opDc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP27alignedC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L58writableK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr03C47Corelib4Init5Logic6eq_symC47Corelib4Init5Logic8eq_transK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry05K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry08K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry07C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KAlignC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K<kentry_KDisjC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K:kentry_KWrC46Stdlib9micromega9SatDivModCZ_div_nonneg_nonnegK46Stdlib9micromega=RingMicromega5Psatz07K46Stdlib9micromega=RingMicromega5Psatz05K46Stdlib9micromega7EnvRing5PExpr05c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP27Pva_opD<seg_sound_axC56Stdlib6ZArith6BinInt1Z<eq_decidableK46Stdlib9micromega:ZMicromega;ZArithProof03C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K>outside_cons_eC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG<unsigned_litC46Stdlib5Lists4List<nth_error_Inc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP2>u64_of_KWord8ac6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP2>u8_of_KWord1mac7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP27Pva_opD3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP27Pva_opD2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP27Pva_opD3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP27Pva_opD6cells0K4ELinuxProcessSemantics5Riscv5Instr5aluop01K4ELinuxProcessSemantics5Riscv5Instr5aluop07c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP27Pva_opD3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP27Pva_opD3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP2<KS_va_opD_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP27Pva_opZ5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP27Pva_opZ9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP29KS_va_opZC56Stdlib6ZArith6BinInt1Z3subK46Stdlib9micromega7EnvRing5PExpr04c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP27Pva_opZ<seg_sound_axc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP2=u8_of_KWord1aC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KWord8c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP27Pva_opZ3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP27Pva_opZ2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP27Pva_opZ3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP27Pva_opZ3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP27Pva_opZ3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP2<KS_va_opZ_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP27Pva_opZ6cells0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP28Pva_opR25regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP28Pva_opR29regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP2:KS_va_opR2c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP28Pva_opR2<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP28Pva_opR23PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP28Pva_opR22F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP28Pva_opR23NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP28Pva_opR23kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP28Pva_opR23ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSOpP27VASOPP2=KS_va_opR2_ok". Local Ltac lia := L5FastLia.plia.

Module VASOPP2.
Abbreviation RSEGS := Asan.M.loaded_segments.
Notation reg i := (Z_to_bv 5 (Z.of_nat i)) (only parsing).
Notation st fx R pc M := (@mkst fx R (Z_to_bv 64 pc) M (seg_rom Asan.M.loaded_segments)) (only parsing).

(* [comment removed for export] *)
Lemma word_of_zpoly E Vz e z : L5K.zagree E Vz e -> L5KA.zpolyA Vz e = Some z -> edenot E e = Z_to_bv 64 z.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP2 ()) [] (Mh_0208_blobs1.kr_b_274 ())). Qed.
(* [comment removed for export] *)
Lemma u64_of_KWord8a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 8 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> L5.u64_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP2 ()) [] (Mh_0208_blobs1.kr_b_275 ())). Qed.
Lemma u32_of_KWord4a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 4 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> L5.u32_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP2 ()) [] (Mh_0208_blobs1.kr_b_276 ())). Qed.
Lemma u8_of_KWord1a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 1 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> 0 <= v < 256 -> a' = a + off -> L5.u8_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP2 ()) [] (Mh_0208_blobs1.kr_b_277 ())). Qed.
(* [comment removed for export] *)
Lemma u8x2_of_KWord2a E M b off e a v a' v0 v1 : kentry_ok RSEGS E M (KWord (SA b off) 2 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> v0 = v mod 256 -> v1 = (v / 256) mod 256 ->
  L5.u8_at RSEGS M a' v0 /\ L5.u8_at RSEGS M (a' + 1) v1.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP2 ()) [] (Mh_0208_blobs1.kr_b_278 ())). Qed.
Lemma defined_of_KUnka E M b off ne a n a' : kentry_ok RSEGS E M (KUnk (SA b off) ne) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E ne) = n -> a' = a + off -> L5.defined M a' n.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP2 ()) [] (Mh_0208_blobs1.kr_b_279 ())). Qed.
Lemma u8_of_KWord1ma E M b off e a v a' v' : kentry_ok RSEGS E M (KWord (SA b off) 1 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> v' = v mod 256 -> L5.u8_at RSEGS M a' v'.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP2 ()) [] (Mh_0208_blobs1.kr_b_280 ())). Qed.
Lemma zeros_of_KZeroa E M b off ne a n a' : kentry_ok RSEGS E M (KZero (SA b off) ne) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E ne) = n -> a' = a + off -> L5KA.zeros_at M a' n.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP2 ()) [] (Mh_0208_blobs1.kr_b_281 ())). Qed.
Lemma land_byte a m : 0 <= a -> 0 <= m <= 255 -> 0 <= Z.land a m < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP2 ()) [] (Mh_0208_blobs1.kr_b_282 ())). Qed.
Lemma lor_byte a b : 0 <= a < 256 -> 0 <= b < 256 -> 0 <= Z.lor a b < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP2 ()) [] (Mh_0208_blobs1.kr_b_283 ())). Qed.
(* [comment removed for export] *)
Lemma land_le_l a m : 0 <= a -> 0 <= m -> Z.land a m <= a.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP2 ()) [] (Mh_0208_blobs1.kr_b_284 ())). Qed.
Local Ltac zfacts :=
  repeat (match goal with |- context [Z.land ?a ?m] =>
    lazymatch goal with _ : 0 <= Z.land a m <= m |- _ => fail | _ => pose proof (L5K.land_le_r a m ltac:(lia) ltac:(lia)); pose proof (land_le_l a m ltac:(lia) ltac:(lia)) end end);
  repeat (match goal with |- context [?a / ?c] =>
    lazymatch goal with _ : 0 <= a / c |- _ => fail | _ => pose proof (Z.div_pos a c ltac:(lia) ltac:(lia)); pose proof (Z.mul_div_le a c ltac:(lia)) end end).
Local Ltac nonneg_tac := first [lia | match goal with |- 0 <= ?x mod ?m => exact (proj1 (Z.mod_pos_bound x m ltac:(clear; lia))) end | (zfacts; lia)].
Lemma setbit1_byte a : 0 <= a < 256 -> 0 <= (Z.land a 18446744073709551613 + 2) mod 2 ^ 64 < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP2 ()) [] (Mh_0208_blobs1.kr_b_285 ())). Qed.
Local Ltac byte_go :=
  lazymatch goal with
  | |- 0 <= (Z.land _ 18446744073709551613 + 2) mod _ < 256 => apply setbit1_byte; lia
  | |- 0 <= Z.lor _ _ < 256 => apply lor_byte; byte_go
  | |- 0 <= Z.land _ _ < 256 => apply land_byte; [nonneg_tac | lia]
  | _ => zfacts; first [lia | rewrite !Z.mod_small by (rewrite ?Z.mod_small by lia; lia); lia]
  end.
Local Ltac byte_tac0 k := k; byte_go.
Tactic Notation "byte_tac" tactic(k) := byte_tac0 k.
(* [comment removed for export] *)
(* [comment removed for export] *)
Local Ltac solve_modk k :=
  repeat match goal with |- context [(?x mod 18446744073709551616) / _] => rewrite (Z.mod_small x 18446744073709551616) by (k; zfacts; lia) end;
  first [ rewrite Z.mod_small; [ first [reflexivity | k; lia] | k; L5K.zrange_tac ]
        | symmetry; eapply (Z.mod_unique_pos _ _ (-1)); k; unfold BL.MM; lia
        | symmetry; eapply (Z.mod_unique_pos _ _ 1); k; unfold BL.MM; lia ].
(* [comment removed for export] *)
Local Ltac pvz_hg tac := lazymatch goal with |- ?G0 => let PG := fresh "PGoal" in set (PG := G0); tac; subst PG end.
Local Ltac pvz_fold B k := lazymatch B with | ?A2 /\ ?B2 => pvz_fold B2 ltac:(fun T2 => let T := fresh "pvzT" in pose (T := A2 /\ T2); k T) | _ => k B end.
Local Ltac pvz_linconj := lazymatch goal with |- ?A /\ ?B => pvz_fold B ltac:(fun T => change_no_check (A /\ T)) | _ => idtac end.
Local Ltac pvz_unfold ZA := lazymatch type of ZA with forall j, _ = ?f j => tryif is_var f then unfold f else idtac | _ => idtac end.
Tactic Notation "evalEk" constr(ZA) tactic(k) :=
  L5K.norm_expr; eapply L5KA.zpolyA_val; [ apply (L5K.zagree_all _ _ _ ZA) | cbn [L5KA.zpolyA]; pvz_unfold ZA; reflexivity | solve_modk k ].
Tactic Notation "evalEk'" constr(ZA) constr(AG) tactic(k) :=
  L5K.norm_expr; eapply L5KA.zpolyA_val;
  [ eapply (L5K.zagree_lt _ _ _ _ _ AG); [apply (L5K.zagree_all _ _ _ ZA) | vm_compute; reflexivity] | cbn [L5KA.zpolyA]; pvz_unfold ZA; reflexivity | solve_modk k ].
(* [comment removed for export] *)
Definition aligned (a m : Z) : Prop := a mod m = 0.
Definition srl_range (a c lo hi : Z) : Prop := lo <= a / c <= hi.
(* [comment removed for export] *)
Local Ltac exactA H :=
  first [ exact H
        | lazymatch goal with
          | |- L5.u64_at _ _ ?a _ => lazymatch type of H with L5.u64_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.u8_at _ _ ?a _ => lazymatch type of H with L5.u8_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.u32_at _ _ ?a _ => lazymatch type of H with L5.u32_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.writable _ _ ?a _ => lazymatch type of H with L5.writable _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.defined _ ?a _ => lazymatch type of H with L5.defined _ ?b _ => replace a with b by (clear; lia) end
          | |- L5KA.zeros_at _ ?a _ => lazymatch type of H with L5KA.zeros_at _ ?b _ => replace a with b by (clear; lia) end
          end; exact H ].
(* [comment removed for export] *)
Local Ltac den_tac := first [reflexivity | lia | idtac].
(* [comment removed for export] *)
(* [comment removed for export] *)
Local Ltac apc_norm :=
  repeat match goal with
  | |- context [APC.eadd ?a ?b] => let t := eval vm_compute in (APC.eadd a b) in change (APC.eadd a b) with t
  | |- context [APC.esub ?a ?b] => let t := eval vm_compute in (APC.esub a b) in change (APC.esub a b) with t
  | |- context [APC.escale ?c ?e] => let t := eval vm_compute in (APC.escale c e) in change (APC.escale c e) with t
  | |- context [APC.eaddz ?a ?z] => let t := eval vm_compute in (APC.eaddz a z) in change (APC.eaddz a z) with t
  end.
(* [comment removed for export] *)
Local Ltac zp_norm := repeat (match goal with |- context [(?a <=? ?b) && (?c <? ?d)] => let r := eval vm_compute in ((a <=? b) && (c <? d)) in change ((a <=? b) && (c <? d)) with r end);
  repeat (match goal with |- context [2 ^ ?s] => let r := eval vm_compute in (2 ^ s) in change (2 ^ s) with r end); lazy beta iota zeta.
Local Ltac zp_mods := repeat match goal with |- context [(?x mod 18446744073709551616) / _] => rewrite (Z.mod_small x 18446744073709551616) by (zfacts; lia) end.
Local Ltac slotP ZA :=
  first [ assumption | reflexivity
        | (etransitivity; [eassumption|]; symmetry; eapply word_of_zpoly; [apply (L5K.zagree_all _ _ _ ZA) | cbn [L5KA.zpolyA]; pvz_unfold ZA; zp_norm; f_equal; zp_mods; first [reflexivity | clear; zfacts; lia | zfacts; lia]]) ].
(* [comment removed for export] *)
Local Ltac wordP' ZA AG :=
  eapply word_of_zpoly; [ eapply (L5K.zagree_lt _ _ _ _ _ AG); [apply (L5K.zagree_all _ _ _ ZA) | vm_compute; reflexivity]
                        | cbn [L5KA.zpolyA]; pvz_unfold ZA; zp_norm; f_equal; zp_mods; first [reflexivity | clear; zfacts; lia | zfacts; lia] ].
(* [comment removed for export] *)
Module Pva_opC := BndP_Na_131.LibSegNa_va_opC.
Definition KS_va_opC : list nat := Eval vm_compute in (BG.kept_list 80 Pva_opC.regs0 Pva_opC.regs_out0).
Lemma KS_va_opC_ok : BG.kept_ok 80 Pva_opC.regs0 Pva_opC.regs_out0 KS_va_opC = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP2 ()) [] (Mh_0208_blobs1.kr_b_286 ())). Qed.
Lemma va_opC_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 34%nat) < 2 ^ 64 -> 0 <= (V 35%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 10) = Z_to_bv 64 (V 35%nat) -> getr R (reg 20) = Z_to_bv 64 (V 34%nat) ->
  0 <= (V 35%nat) <= 255 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbadb4 M) (st fx' R' 0xbdb60 M')
        /\ (forall x, In x KS_va_opC -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 765376
        /\ getr R' (reg 11) = Z_to_bv 64 (V 34%nat)
        /\ getr R' (reg 12) = Z_to_bv 64 0).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP2 ()) [] (Mh_0208_blobs1.kr_b_287 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_opD := BndP_Na_131.LibSegNa_va_opD.
Definition KS_va_opD : list nat := Eval vm_compute in (BG.kept_list 80 Pva_opD.regs0 Pva_opD.regs_out0).
Lemma KS_va_opD_ok : BG.kept_ok 80 Pva_opD.regs0 Pva_opD.regs_out0 KS_va_opD = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP2 ()) [] (Mh_0208_blobs1.kr_b_288 ())). Qed.
Lemma va_opD_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 50%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 10) = Z_to_bv 64 1 -> getr R (reg 18) = Z_to_bv 64 (V 50%nat) -> getr R (reg 19) = Z_to_bv 64 (((V 50%nat) / 8) + 2147450880) -> getr R (reg 23) = Z_to_bv 64 (V 50%nat) ->
  7036928 <= (V 50%nat) <= 140737488354304 -> aligned (V 50%nat) 32 -> (2147446784 + 17592186048512 <= (V 50%nat) \/ (V 50%nat) + 1024 <= 2147446784) -> L5.writable RSEGS M (V 50%nat) 8 ->
  L5.writable RSEGS M (((V 50%nat) / 8) + 2147450880) 128 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, ~ (((V 50%nat) + 0) <= bv_unsigned a < ((V 50%nat) + 0) + 8) -> ~ (((((V 50%nat) / 8) + 2147450880) + 4) <= bv_unsigned a < ((((V 50%nat) / 8) + 2147450880) + 4) + 25) -> M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> ~ (((V 50%nat) + 0) <= i < ((V 50%nat) + 0) + 8) -> ~ (((((V 50%nat) / 8) + 2147450880) + 4) <= i < ((((V 50%nat) / 8) + 2147450880) + 4) + 25) -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbadc0 M) (st fx' R' 0x82834 M')
        /\ (forall x, In x KS_va_opD -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 765124
        /\ getr R' (reg 10) = Z_to_bv 64 (((V 50%nat) / 8) + 2147450880)
        /\ getr R' (reg 11) = Z_to_bv 64 128
        /\ L5.u64_at RSEGS M' (V 50%nat) 1172321806
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450908) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450903) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450902) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450901) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450900) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450907) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450906) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450905) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450904) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450895) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450894) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450893) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450892) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450899) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450898) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450897) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450896) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450887) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450886) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450885) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450884) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450891) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450890) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450889) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450888) 248).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP2 ()) [] (Mh_0208_blobs1.kr_b_289 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_opZ := BndP_Na_131.LibSegNa_va_opZ.
Definition KS_va_opZ : list nat := Eval vm_compute in (BG.kept_list 80 Pva_opZ.regs0 Pva_opZ.regs_out0).
Lemma KS_va_opZ_ok : BG.kept_ok 80 Pva_opZ.regs0 Pva_opZ.regs_out0 KS_va_opZ = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP2 ()) [] (Mh_0208_blobs1.kr_b_290 ())). Qed.
Lemma va_opZ_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 50%nat) < 2 ^ 64 -> 0 <= (V 51%nat) < 2 ^ 64 -> 0 <= (V 52%nat) < 2 ^ 64 -> 0 <= (V 53%nat) < 2 ^ 64 -> 0 <= (V 54%nat) < 2 ^ 64 -> 0 <= (V 55%nat) < 2 ^ 64 -> 0 <= (V 56%nat) < 2 ^ 64 -> 0 <= (V 57%nat) < 2 ^ 64 -> 0 <= (V 58%nat) < 2 ^ 64 -> 0 <= (V 59%nat) < 2 ^ 64 -> 0 <= (V 60%nat) < 2 ^ 64 -> 0 <= (V 61%nat) < 2 ^ 64 -> 0 <= (V 62%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 8) = Z_to_bv 64 (V 52%nat) -> getr R (reg 18) = Z_to_bv 64 (V 50%nat) ->
  7036928 <= (V 50%nat) <= 140737488354304 -> aligned (V 50%nat) 32 -> (2147446784 + 17592186048512 <= (V 50%nat) \/ (V 50%nat) + 1024 <= 2147446784) -> L5.u64_at RSEGS M ((V 50%nat) + 1016) (V 51%nat) ->
  4096 <= (V 51%nat) <= 140737488355327 -> L5.writable RSEGS M (V 51%nat) 1 -> (2147446784 + 17592186048512 <= (V 51%nat) \/ (V 51%nat) + 1 <= 2147446784) -> ((V 50%nat) + 1024 <= (V 51%nat) \/ (V 51%nat) + 1 <= (V 50%nat)) ->
  140735332487264 <= (V 52%nat) <= 140737488355328 -> aligned (V 52%nat) 16 -> L5.u64_at RSEGS M ((V 52%nat) - 8) (V 53%nat) -> L5.u64_at RSEGS M ((V 52%nat) - 16) (V 54%nat) ->
  L5.u64_at RSEGS M ((V 52%nat) - 24) (V 55%nat) -> L5.u64_at RSEGS M ((V 52%nat) - 32) (V 56%nat) -> L5.u64_at RSEGS M ((V 52%nat) - 40) (V 57%nat) -> L5.u64_at RSEGS M ((V 52%nat) - 48) (V 58%nat) ->
  L5.u64_at RSEGS M ((V 52%nat) - 56) (V 59%nat) -> L5.u64_at RSEGS M ((V 52%nat) - 64) (V 60%nat) -> L5.u64_at RSEGS M ((V 52%nat) - 72) (V 61%nat) -> L5.u64_at RSEGS M ((V 52%nat) - 80) (V 62%nat) ->
  (((V 52%nat) - 96) + 96 <= (V 50%nat) \/ (V 50%nat) + 1024 <= ((V 52%nat) - 96)) -> (((V 52%nat) - 96) + 96 <= (V 51%nat) \/ (V 51%nat) + 1 <= ((V 52%nat) - 96)) ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, ~ (((V 51%nat) + 0) <= bv_unsigned a < ((V 51%nat) + 0) + 1) -> M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> ~ (((V 51%nat) + 0) <= i < ((V 51%nat) + 0) + 1) -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbacc4 M) (st fx' R' 0xbad0c M')
        /\ (forall x, In x KS_va_opZ -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 (V 53%nat)
        /\ getr R' (reg 2) = Z_to_bv 64 ((V 52%nat) - 96)
        /\ getr R' (reg 8) = Z_to_bv 64 (V 54%nat)
        /\ getr R' (reg 9) = Z_to_bv 64 (V 55%nat)
        /\ getr R' (reg 10) = Z_to_bv 64 0
        /\ getr R' (reg 18) = Z_to_bv 64 (V 56%nat)
        /\ getr R' (reg 19) = Z_to_bv 64 (V 57%nat)
        /\ getr R' (reg 20) = Z_to_bv 64 (V 58%nat)
        /\ getr R' (reg 21) = Z_to_bv 64 (V 59%nat)
        /\ getr R' (reg 22) = Z_to_bv 64 (V 60%nat)
        /\ getr R' (reg 23) = Z_to_bv 64 (V 61%nat)
        /\ getr R' (reg 24) = Z_to_bv 64 (V 62%nat)
        /\ L5.u8_at RSEGS M' (V 51%nat) 0).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP2 ()) [] (Mh_0208_blobs1.kr_b_291 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_opR2 := BndP_Na_131.LibSegNa_va_opR2.
Definition KS_va_opR2 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_opR2.regs0 Pva_opR2.regs_out0).
Lemma KS_va_opR2_ok : BG.kept_ok 80 Pva_opR2.regs0 Pva_opR2.regs_out0 KS_va_opR2 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP2 ()) [] (Mh_0208_blobs1.kr_b_292 ())). Qed.
Lemma va_opR2_conc fx R M (V : nat -> Z) :
  0 <= (V 52%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 52%nat) - 96) ->
  140735332487264 <= (V 52%nat) <= 140737488355328 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xbad10 M) (st fx' R' 0xbad14 M')
        /\ (forall x, In x KS_va_opR2 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 2) = Z_to_bv 64 (V 52%nat)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSOpP2 ()) [] (Mh_0208_blobs1.kr_b_293 ())). Qed.
(* [comment removed for export] *)

End VASOPP2.

End VaSOpP2.
Module VaSVdP1.
(* [comment removed for export] *)
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0007.   (* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From stdpp.bitvector Require Import definitions.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BigLinkBase. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.CatExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030.CatSim OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.SeqExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.StoreOk OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.Hoare OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.ShapeAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.SpinAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.HeapIface OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.AxSymRun3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.BigLinkBase OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.BigLinkGlue OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.L5Defs OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5Kn OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5KnA.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0177. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0177.
Import ListNotations. Import AX2. Import AX2B. Import AX2S.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Ltac Zify.zify_convert_to_euclidean_division_equations_flag ::= constr:(false).
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_VaSVdP1 () := "C47Corelib7Classes9Morphisms6ProperC47Corelib7Classes?RelationClasses9ReflexiveC47Corelib7Classes9Morphisms:forall_defC46Stdlib5Lists4List2hdC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA6fframeC46Stdlib5Lists4List4inclC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55rangeC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR6regionC47Corelib4Init5Logic8eq_ind_rC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K@nth_error_singleC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K6zagreeI47Corelib4Init9Datatypes6option00C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA6zpolyAK47Corelib4Init9Datatypes6option01I47Corelib4Init5Logic2eq00K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1N02I45stdpp9bitvector;definitions2bv00C56Stdlib6ZArith6BinInt1Z6moduloC45stdpp9bitvector;definitions7Z_to_bvC45stdpp9bitvector;definitions;bv_unsignedC45stdpp9bitvector;definitions5bv_eqC45stdpp9bitvector;definitions7bv_wrapK47Corelib7Numbers7BinNums1Z02C56Stdlib6ZArith6BinInt1Z3powC56Stdlib6ZArith6BinInt1Z>pow_pos_nonnegC56Stdlib6ZArith6BinInt1Z2ltC56Stdlib6ZArith6BinInt1Z2leC56Stdlib6ZArith6BinInt1Z:pow_nonnegK47Corelib4Init9Datatypes4list01I47Corelib4Init9Datatypes4list00K46Stdlib9micromega6VarMap1t01I46Stdlib9micromega6VarMap1t00I46Stdlib9micromega=RingMicromega7Formula00K46Stdlib9micromega7EnvRing5PExpr01K46Stdlib9micromega7EnvRing5PExpr07K46Stdlib9micromega=RingMicromega7Formula01K46Stdlib9micromega5Tauto8GFormula04K46Stdlib9micromega5Tauto8GFormula07C46Stdlib9micromega5Tauto8BFormulaK47Corelib4Init5Logic2eq01C46Stdlib9micromega:ZMicromega=ZTautoCheckerC46Stdlib9micromega6VarMap4findC46Stdlib9micromega:ZMicromegaCZTautoChecker_soundC56Stdlib6ZArith6BinInt1Z7mod_modC45stdpp9bitvector;definitions@Z_to_bv_unsignedC6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26edenotC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA<zpolyA_soundC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG@word_of_unsignedI6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX23env00I47Corelib4Init9Datatypes3nat00I47Corelib7Numbers7BinNums1Z00I6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr00K47Corelib7Numbers7BinNums8positive03C5ARocqVerifyHarness?AgentSubmission;BigLinkBase2BL2MMI47Corelib7Numbers7BinNums1N00I47Corelib4Init5Logic3and00K47Corelib7Numbers7BinNums1Z01I47Corelib4Init5Logic4True00I46Stdlib9micromega:ZMicromega;ZArithProof00C46Stdlib9micromega5Tauto5eKindI47Corelib4Init9Datatypes4unit00K46Stdlib9micromega5Tauto4kind01K46Stdlib9micromega=RingMicromega3Op201K47Corelib4Init9Datatypes4unit01I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01I47Corelib4Init5Logic5False00K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX25saddr01K47Corelib4Init9Datatypes3nat02K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry01C5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S9kentry_okC56Stdlib6ZArith6BinInt1Z3addC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u64_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=u64_of_KWord8C5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsK47Corelib4Init9Datatypes3nat01C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u32_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=u32_of_KWord4C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55u8_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K<u8_of_KWord1I47Corelib4Init5Peano2le00C56Stdlib6ZArith6BinInt1Z6of_natC5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S4flatC6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26adenotC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K8adenot_eC47Corelib4Init5Logic6eq_indC45stdpp9bitvector;definitionsDbv_unsigned_in_rangeC45stdpp9bitvector;definitions:bv_modulusC4ELinuxProcessSemantics?LinuxProcessSem6BvBase=Z_to_le_bytesK46Stdlib9micromega6VarMap1t02K46Stdlib9micromega7EnvRing5PExpr02K46Stdlib9micromega5Tauto8GFormula05K47Corelib4Init9Datatypes6option02K46Stdlib9micromega5Tauto8GFormula08C56Stdlib6ZArith6BinInt1Z9mod_smallK45stdpp9bitvector;definitions2bv01C45stdpp9bitvector;definitions6bv_addC56Stdlib6ZArith6BinInt1Z?add_mod_idemp_lC45stdpp9bitvector;definitions?bv_add_unsignedC56Stdlib6ZArith6BinInt1Z3divK47Corelib4Init9Datatypes4list02C47Corelib4Init5Logic7f_equalC35stdpp7tactics<f_equal_helpC56Stdlib6ZArith6BinInt1Z6shiftrC56Stdlib6ZArith6BinInt1Z?shiftr_div_pow2K47Corelib4Init5Logic3and01C47Corelib4Init5Logic9False_indC4ARocqVerifyHarness?AgentSubmission8PropExec3rdnC4ELinuxProcessSemantics?LinuxProcessSem>RiscvSemantics@word_to_le_bytesC4ARocqVerifyHarness?AgentSubmission8PropExec7seg_romK46Stdlib9micromega=RingMicromega3Op203K46Stdlib9micromega=RingMicromega3Op205K47Corelib4Init5Logic4True01K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry0:C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L57definedC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K?defined_of_KUnkC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA@u8_of_KWord1_modK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry02C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA8zeros_atC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA>zeros_of_KZeroK47Corelib7Numbers7BinNums8positive01C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K9land_le_rC56Stdlib6ZArith6BinInt1Z4landK46Stdlib9micromega=RingMicromega5Psatz02K46Stdlib9micromega=RingMicromega5Psatz06K46Stdlib9micromega:ZMicromega;ZArithProof02K46Stdlib9micromega6VarMap1t03K46Stdlib9micromega5Tauto8GFormula03K46Stdlib9micromega:ZMicromega;ZArithProof01C56Stdlib6ZArith6BinInt1Z3lorC56Stdlib6ZArith6BinInt1Z:lor_nonnegC56Stdlib6ZArith6BinInt1Z6eq_decC47Corelib4Init5Logic3notI47Corelib4Init6Specif7sumbool00C56Stdlib6ZArith6BinInt1Z7lor_0_lC56Stdlib6ZArith6BinInt1Z7lor_0_rC56Stdlib6ZArith6BinInt1Z4log2C56Stdlib6ZArith6BinInt1Z3maxC56Stdlib6ZArith6BinInt1Z<log2_lt_pow2C56Stdlib6ZArith6BinInt1Z:max_lub_ltC56Stdlib6ZArith6BinInt1Z8log2_lorC56Stdlib6ZArith6BinInt1Z>log2_lt_cancelC47Corelib4Init5Logic5proj2C56Stdlib6ZArith6BinInt1Z9land_commC46Stdlib5Lists4List2InC56Stdlib6ZArith6BinInt1Z3ltbC47Corelib4Init9Datatypes4andbC47Corelib5Lists7ListDef3seqC46Stdlib5Lists4List7forallbC47Corelib4Init5Logic3iffC47Corelib7Classes9MorphismsDiff_impl_subrelationC46Stdlib5Lists4List>forallb_forallC56Stdlib6ZArith6BinInt1Z6to_natC47Corelib4Init3Nat3addC47Corelib4Init5Peano2ltC46Stdlib5Lists4List6in_seqC46Stdlib9micromega;ZifyClasses9and_morphC56Stdlib6ZArith6BinInt1Z8max_specI47Corelib4Init5Logic2or00K47Corelib7Numbers7BinNums1Z03K46Stdlib9micromega7EnvRing3Pol01K46Stdlib9micromega=RingMicromega5Psatz04K46Stdlib9micromega5Tauto8GFormula06K46Stdlib9micromega7EnvRing5PExpr03C46Stdlib9micromega;ZifyClasses;rew_iff_revC56Stdlib6ZArith4Znat5Z2Nat2idC47Corelib4Init9Datatypes9andb_propC46Stdlib9micromega9SatDivModCZ_mod_nonneg_nonnegC56Stdlib6ZArith6BinInt1Z7div_modC56Stdlib6ZArith6BinInt1Z3mulC56Stdlib6ZArith6BinInt1Z=mod_pos_boundC56Stdlib6ZArith6BinInt1Z=mod_neg_boundC56Stdlib5omega8PreOmega1Z;div_0_r_extC56Stdlib5omega8PreOmega1Z;mod_0_r_extK46Stdlib9micromega5Tauto8GFormula01C56Stdlib6ZArith6BinInt1Z3lebC46Stdlib9micromega;ZifyClasses5mkappC46Stdlib9micromega;ZifyClasses5mkrelC46Stdlib9micromega;ZifyClasses6mkapp2K46Stdlib9micromega5Tauto8GFormula0:C46Stdlib9micromega8ZifyInst@of_nat_to_nat_eqC56Stdlib6ZArith4Znat5Nat2Z6inj_leC56Stdlib5Arith8PeanoNat3Nat3addC56Stdlib6ZArith4Znat5Nat2Z7inj_addC56Stdlib6ZArith4Znat5Nat2Z6inj_ltK46Stdlib9micromega5Tauto4kind02C6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG7kept_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1:Pva_vdA1_05regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1:Pva_vdA1_09regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1<KS_va_vdA1_0C46Stdlib5Lists4List2tlC4ELinuxProcessSemantics5Riscv7Prelude5bvmapC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L59img_clearc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP17alignedC56Stdlib6ZArith6BinInt1Z3subC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L58writableC47Corelib4Init5Logic5proj1C4ARocqVerifyHarness?AgentSubmission8PropExec4getrK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX23env01C6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX22evC56Stdlib6NArith6BinNat1N6to_natC5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA6za_litC5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA7za_stepC5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA8za_startK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr02C6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG5slotsC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG@regs_ok_of_slotsC5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S7regs_okK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry04K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr01K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry06K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry05K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry07C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K;kentry_KImgC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K:zagree_allC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA:zpolyA_valC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KWord8C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KWord4C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KRangeC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KAlignC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K:kentry_KWrK47Corelib5Lists7ListDef6Forall01C5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S7know_okC5ARocqVerifyHarness?AgentSubmission7Mh_00387StoreOk9mem_growsC4ARocqVerifyHarness?AgentSubmission8PropExec4mkstI47Corelib4Init5Logic2ex00C5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP8bfact_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1:Pva_vdA1_0<seg_sound_axI47Corelib4Init9Datatypes4prod00K47Corelib4Init9Datatypes4prod01C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K9zagree_ltC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=outside_nil_eC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K>outside_cons_eC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG<unsigned_litC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG9kept_regsC47Corelib5Lists7ListDef3nthK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr03c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1=word_of_zpolyC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG7out_regC46Stdlib5Lists4List<nth_error_Inc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1>u64_of_KWord8aK47Corelib4Init5Logic2ex01K47Corelib5Lists7ListDef6Forall02I5ARocqVerifyHarness?AgentSubmission7Mh_00306CatSim6msteps00C46Stdlib5Lists4List9nth_errorC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR5ps_pcC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR7ps_regsC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP:regions_okC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP7outsideC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR8ps_cellsC5ARocqVerifyHarness?AgentSubmission7Mh_01129AxSymRun39env_agreeC5ARocqVerifyHarness?AgentSubmission7Mh_01129AxSymRun3<expr_vars_ltK46Stdlib9micromega7EnvRing5PExpr04C5ARocqVerifyHarness?AgentSubmission;BigLinkBase2BL9bvu_rangeI6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry00I6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR9post_spec00c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1:Pva_vdA1_03PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1:Pva_vdA1_02F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1:Pva_vdA1_03NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1:Pva_vdA1_06cells0I4ARocqVerifyHarness?AgentSubmission8PropExec7FPState00K47Corelib7Numbers7BinNums1N01c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1:Pva_vdA1_03kn0I5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP5bfact00c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1:Pva_vdA1_03ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1?KS_va_vdA1_0_okK4ELinuxProcessSemantics5Riscv5Instr5aluop01c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1;Pva_vdA1_165regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1;Pva_vdA1_169regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1=KS_va_vdA1_16C47Corelib4Init5Logic6eq_symC47Corelib4Init5Logic8eq_transc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1;Pva_vdA1_16<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1;Pva_vdA1_163PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1;Pva_vdA1_162F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1;Pva_vdA1_163NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1;Pva_vdA1_166cells0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1;Pva_vdA1_163kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1;Pva_vdA1_163ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1@KS_va_vdA1_16_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1:Pva_vdA2_05regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1:Pva_vdA2_09regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1<KS_va_vdA2_0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1:Pva_vdA2_0<seg_sound_axC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG;edenot_keptc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1:Pva_vdA2_03PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1:Pva_vdA2_02F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1:Pva_vdA2_03NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1:Pva_vdA2_03kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1:Pva_vdA2_03ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1?KS_va_vdA2_0_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1;Pva_vdA2_165regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1;Pva_vdA2_169regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1=KS_va_vdA2_16c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1;Pva_vdA2_16<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1;Pva_vdA2_163PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1;Pva_vdA2_162F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1;Pva_vdA2_163NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1;Pva_vdA2_163kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1;Pva_vdA2_163ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1@KS_va_vdA2_16_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdA35regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdA39regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1:KS_va_vdA3c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdA3<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdA33PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdA32F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdA33NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdA33kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdA33ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1=KS_va_vdA3_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP17Pva_vdB5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP17Pva_vdB9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP19KS_va_vdBK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry08C46Stdlib9micromega9SatDivModCZ_div_nonneg_nonnegC56Stdlib6ZArith6BinInt1Z<eq_decidableK46Stdlib9micromega=RingMicromega5Psatz07C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA<kentry_KZeroK46Stdlib9micromega:ZMicromega;ZArithProof03C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K<kentry_KDisjc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP17Pva_vdB<seg_sound_axc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1>u8_of_KWord1maK46Stdlib9micromega=RingMicromega5Psatz05K46Stdlib9micromega7EnvRing5PExpr05c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP17Pva_vdB3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP17Pva_vdB2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP17Pva_vdB3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP17Pva_vdB6cells0K4ELinuxProcessSemantics5Riscv5Instr5aluop07c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP17Pva_vdB3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP17Pva_vdB3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1<KS_va_vdB_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdQ15regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdQ19regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1:KS_va_vdQ1c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdQ1<seg_sound_axc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1=u8_of_KWord1ac7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdQ13PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdQ12F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdQ13NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdQ16cells0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdQ13kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdQ13ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1=KS_va_vdQ1_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdQ25regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdQ29regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1:KS_va_vdQ2c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdQ2<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdQ23PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdQ22F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdQ23NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdQ23kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdQ23ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1=KS_va_vdQ2_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdJ15regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdJ19regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1:KS_va_vdJ1c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdJ1<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdJ13PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdJ12F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdJ13NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdJ13kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdJ13ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1=KS_va_vdJ1_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdJ25regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdJ29regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1:KS_va_vdJ2c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdJ2<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdJ23PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdJ22F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdJ23NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdJ23kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdJ23ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1=KS_va_vdJ2_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdKr5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdKr9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1:KS_va_vdKrc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdKr<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdKr3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdKr2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdKr3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdKr3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdKr3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP1=KS_va_vdKr_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP17VASVDP18Pva_vdKr6cells0". Local Ltac lia := L5FastLia.plia.

Module VASVDP1.
Abbreviation RSEGS := Asan.M.loaded_segments.
Notation reg i := (Z_to_bv 5 (Z.of_nat i)) (only parsing).
Notation st fx R pc M := (@mkst fx R (Z_to_bv 64 pc) M (seg_rom Asan.M.loaded_segments)) (only parsing).

(* [comment removed for export] *)
Lemma word_of_zpoly E Vz e z : L5K.zagree E Vz e -> L5KA.zpolyA Vz e = Some z -> edenot E e = Z_to_bv 64 z.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_294 ())). Qed.
(* [comment removed for export] *)
Lemma u64_of_KWord8a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 8 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> L5.u64_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_295 ())). Qed.
Lemma u32_of_KWord4a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 4 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> L5.u32_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_296 ())). Qed.
Lemma u8_of_KWord1a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 1 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> 0 <= v < 256 -> a' = a + off -> L5.u8_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_297 ())). Qed.
(* [comment removed for export] *)
Lemma u8x2_of_KWord2a E M b off e a v a' v0 v1 : kentry_ok RSEGS E M (KWord (SA b off) 2 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> v0 = v mod 256 -> v1 = (v / 256) mod 256 ->
  L5.u8_at RSEGS M a' v0 /\ L5.u8_at RSEGS M (a' + 1) v1.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_298 ())). Qed.
Lemma defined_of_KUnka E M b off ne a n a' : kentry_ok RSEGS E M (KUnk (SA b off) ne) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E ne) = n -> a' = a + off -> L5.defined M a' n.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_299 ())). Qed.
Lemma u8_of_KWord1ma E M b off e a v a' v' : kentry_ok RSEGS E M (KWord (SA b off) 1 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> v' = v mod 256 -> L5.u8_at RSEGS M a' v'.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_300 ())). Qed.
Lemma zeros_of_KZeroa E M b off ne a n a' : kentry_ok RSEGS E M (KZero (SA b off) ne) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E ne) = n -> a' = a + off -> L5KA.zeros_at M a' n.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_301 ())). Qed.
Lemma land_byte a m : 0 <= a -> 0 <= m <= 255 -> 0 <= Z.land a m < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_302 ())). Qed.
Lemma lor_byte a b : 0 <= a < 256 -> 0 <= b < 256 -> 0 <= Z.lor a b < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_303 ())). Qed.
(* [comment removed for export] *)
Lemma land_le_l a m : 0 <= a -> 0 <= m -> Z.land a m <= a.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_304 ())). Qed.
Local Ltac zfacts :=
  repeat (match goal with |- context [Z.land ?a ?m] =>
    lazymatch goal with _ : 0 <= Z.land a m <= m |- _ => fail | _ => pose proof (L5K.land_le_r a m ltac:(lia) ltac:(lia)); pose proof (land_le_l a m ltac:(lia) ltac:(lia)) end end);
  repeat (match goal with |- context [?a / ?c] =>
    lazymatch goal with _ : 0 <= a / c |- _ => fail | _ => pose proof (Z.div_pos a c ltac:(lia) ltac:(lia)); pose proof (Z.mul_div_le a c ltac:(lia)) end end).
Local Ltac nonneg_tac := first [lia | match goal with |- 0 <= ?x mod ?m => exact (proj1 (Z.mod_pos_bound x m ltac:(clear; lia))) end | (zfacts; lia)].
Lemma setbit1_byte a : 0 <= a < 256 -> 0 <= (Z.land a 18446744073709551613 + 2) mod 2 ^ 64 < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_305 ())). Qed.
Local Ltac byte_go :=
  lazymatch goal with
  | |- 0 <= (Z.land _ 18446744073709551613 + 2) mod _ < 256 => apply setbit1_byte; lia
  | |- 0 <= Z.lor _ _ < 256 => apply lor_byte; byte_go
  | |- 0 <= Z.land _ _ < 256 => apply land_byte; [nonneg_tac | lia]
  | _ => zfacts; first [lia | rewrite !Z.mod_small by (rewrite ?Z.mod_small by lia; lia); lia]
  end.
Local Ltac byte_tac0 k := k; byte_go.
Tactic Notation "byte_tac" tactic(k) := byte_tac0 k.
(* [comment removed for export] *)
(* [comment removed for export] *)
Local Ltac solve_modk k :=
  repeat match goal with |- context [(?x mod 18446744073709551616) / _] => rewrite (Z.mod_small x 18446744073709551616) by (k; zfacts; lia) end;
  first [ rewrite Z.mod_small; [ first [reflexivity | k; lia] | k; L5K.zrange_tac ]
        | symmetry; eapply (Z.mod_unique_pos _ _ (-1)); k; unfold BL.MM; lia
        | symmetry; eapply (Z.mod_unique_pos _ _ 1); k; unfold BL.MM; lia ].
(* [comment removed for export] *)
Local Ltac pvz_hg tac := lazymatch goal with |- ?G0 => let PG := fresh "PGoal" in set (PG := G0); tac; subst PG end.
Local Ltac pvz_fold B k := lazymatch B with | ?A2 /\ ?B2 => pvz_fold B2 ltac:(fun T2 => let T := fresh "pvzT" in pose (T := A2 /\ T2); k T) | _ => k B end.
Local Ltac pvz_linconj := lazymatch goal with |- ?A /\ ?B => pvz_fold B ltac:(fun T => change_no_check (A /\ T)) | _ => idtac end.
Local Ltac pvz_unfold ZA := lazymatch type of ZA with forall j, _ = ?f j => tryif is_var f then unfold f else idtac | _ => idtac end.
Tactic Notation "evalEk" constr(ZA) tactic(k) :=
  L5K.norm_expr; eapply L5KA.zpolyA_val; [ apply (L5K.zagree_all _ _ _ ZA) | cbn [L5KA.zpolyA]; pvz_unfold ZA; reflexivity | solve_modk k ].
Tactic Notation "evalEk'" constr(ZA) constr(AG) tactic(k) :=
  L5K.norm_expr; eapply L5KA.zpolyA_val;
  [ eapply (L5K.zagree_lt _ _ _ _ _ AG); [apply (L5K.zagree_all _ _ _ ZA) | vm_compute; reflexivity] | cbn [L5KA.zpolyA]; pvz_unfold ZA; reflexivity | solve_modk k ].
(* [comment removed for export] *)
Definition aligned (a m : Z) : Prop := a mod m = 0.
Definition srl_range (a c lo hi : Z) : Prop := lo <= a / c <= hi.
(* [comment removed for export] *)
Local Ltac exactA H :=
  first [ exact H
        | lazymatch goal with
          | |- L5.u64_at _ _ ?a _ => lazymatch type of H with L5.u64_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.u8_at _ _ ?a _ => lazymatch type of H with L5.u8_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.u32_at _ _ ?a _ => lazymatch type of H with L5.u32_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.writable _ _ ?a _ => lazymatch type of H with L5.writable _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.defined _ ?a _ => lazymatch type of H with L5.defined _ ?b _ => replace a with b by (clear; lia) end
          | |- L5KA.zeros_at _ ?a _ => lazymatch type of H with L5KA.zeros_at _ ?b _ => replace a with b by (clear; lia) end
          end; exact H ].
(* [comment removed for export] *)
Local Ltac den_tac := first [reflexivity | lia | idtac].
(* [comment removed for export] *)
(* [comment removed for export] *)
Local Ltac apc_norm :=
  repeat match goal with
  | |- context [APC.eadd ?a ?b] => let t := eval vm_compute in (APC.eadd a b) in change (APC.eadd a b) with t
  | |- context [APC.esub ?a ?b] => let t := eval vm_compute in (APC.esub a b) in change (APC.esub a b) with t
  | |- context [APC.escale ?c ?e] => let t := eval vm_compute in (APC.escale c e) in change (APC.escale c e) with t
  | |- context [APC.eaddz ?a ?z] => let t := eval vm_compute in (APC.eaddz a z) in change (APC.eaddz a z) with t
  end.
(* [comment removed for export] *)
Local Ltac zp_norm := repeat (match goal with |- context [(?a <=? ?b) && (?c <? ?d)] => let r := eval vm_compute in ((a <=? b) && (c <? d)) in change ((a <=? b) && (c <? d)) with r end);
  repeat (match goal with |- context [2 ^ ?s] => let r := eval vm_compute in (2 ^ s) in change (2 ^ s) with r end); lazy beta iota zeta.
Local Ltac zp_mods := repeat match goal with |- context [(?x mod 18446744073709551616) / _] => rewrite (Z.mod_small x 18446744073709551616) by (zfacts; lia) end.
Local Ltac slotP ZA :=
  first [ assumption | reflexivity
        | (etransitivity; [eassumption|]; symmetry; eapply word_of_zpoly; [apply (L5K.zagree_all _ _ _ ZA) | cbn [L5KA.zpolyA]; pvz_unfold ZA; zp_norm; f_equal; zp_mods; first [reflexivity | clear; zfacts; lia | zfacts; lia]]) ].
(* [comment removed for export] *)
Local Ltac wordP' ZA AG :=
  eapply word_of_zpoly; [ eapply (L5K.zagree_lt _ _ _ _ _ AG); [apply (L5K.zagree_all _ _ _ ZA) | vm_compute; reflexivity]
                        | cbn [L5KA.zpolyA]; pvz_unfold ZA; zp_norm; f_equal; zp_mods; first [reflexivity | clear; zfacts; lia | zfacts; lia] ].
(* [comment removed for export] *)
Module Pva_vdA1_0 := BndP_Na_134.LibSegNa_va_vdA1_0.
Definition KS_va_vdA1_0 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdA1_0.regs0 Pva_vdA1_0.regs_out0).
Lemma KS_va_vdA1_0_ok : BG.kept_ok 80 Pva_vdA1_0.regs0 Pva_vdA1_0.regs_out0 KS_va_vdA1_0 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_306 ())). Qed.
Lemma va_vdA1_0_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) ->
  L5.img_clear M 65536 1409024 -> L5.u64_at RSEGS M 1440376 2147450880 -> L5.u32_at RSEGS M 1440384 1 -> 140735332487328 <= (V 2%nat) <= 140737488355328 ->
  aligned (V 2%nat) 32 -> L5.writable RSEGS M ((V 2%nat) - 160) 160 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, ~ (((V 2%nat) - 160) <= bv_unsigned a < ((V 2%nat) - 160) + 160) -> M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> ~ (((V 2%nat) - 160) <= i < ((V 2%nat) - 160) + 160) -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb2368 M) (st fx' R' 0xb23a4 M')
        /\ (forall x, In x KS_va_vdA1_0 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 2) = Z_to_bv 64 ((V 2%nat) - 160)
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 104) (bv_unsigned (getr R (reg 27)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 96) (bv_unsigned (getr R (reg 26)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 88) (bv_unsigned (getr R (reg 25)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 80) (bv_unsigned (getr R (reg 24)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 72) (bv_unsigned (getr R (reg 23)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 64) (bv_unsigned (getr R (reg 22)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 56) (bv_unsigned (getr R (reg 21)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 48) (bv_unsigned (getr R (reg 20)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 40) (bv_unsigned (getr R (reg 19)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 32) (bv_unsigned (getr R (reg 18)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 24) (bv_unsigned (getr R (reg 9)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 16) (bv_unsigned (getr R (reg 8)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 8) (bv_unsigned (getr R (reg 1)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 160) 0).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_307 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdA1_16 := BndP_Na_134.LibSegNa_va_vdA1_16.
Definition KS_va_vdA1_16 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdA1_16.regs0 Pva_vdA1_16.regs_out0).
Lemma KS_va_vdA1_16_ok : BG.kept_ok 80 Pva_vdA1_16.regs0 Pva_vdA1_16.regs_out0 KS_va_vdA1_16 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_308 ())). Qed.
Lemma va_vdA1_16_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) + 16) ->
  L5.img_clear M 65536 1409024 -> L5.u64_at RSEGS M 1440376 2147450880 -> L5.u32_at RSEGS M 1440384 1 -> 140735332487328 <= (V 2%nat) <= 140737488355312 ->
  aligned (V 2%nat) 32 -> L5.writable RSEGS M ((V 2%nat) - 160) 176 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, ~ (((V 2%nat) - 144) <= bv_unsigned a < ((V 2%nat) - 144) + 160) -> M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> ~ (((V 2%nat) - 144) <= i < ((V 2%nat) - 144) + 160) -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb2368 M) (st fx' R' 0xb23a4 M')
        /\ (forall x, In x KS_va_vdA1_16 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 2) = Z_to_bv 64 ((V 2%nat) - 144)
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 88) (bv_unsigned (getr R (reg 27)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 80) (bv_unsigned (getr R (reg 26)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 72) (bv_unsigned (getr R (reg 25)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 64) (bv_unsigned (getr R (reg 24)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 56) (bv_unsigned (getr R (reg 23)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 48) (bv_unsigned (getr R (reg 22)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 40) (bv_unsigned (getr R (reg 21)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 32) (bv_unsigned (getr R (reg 20)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 24) (bv_unsigned (getr R (reg 19)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 16) (bv_unsigned (getr R (reg 18)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 8) (bv_unsigned (getr R (reg 9)))
        /\ L5.u64_at RSEGS M' (V 2%nat) (bv_unsigned (getr R (reg 8)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) + 8) (bv_unsigned (getr R (reg 1)))
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 144) 0).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_309 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdA2_0 := BndP_Na_134.LibSegNa_va_vdA2_0.
Definition KS_va_vdA2_0 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdA2_0.regs0 Pva_vdA2_0.regs_out0).
Lemma KS_va_vdA2_0_ok : BG.kept_ok 80 Pva_vdA2_0.regs0 Pva_vdA2_0.regs_out0 KS_va_vdA2_0 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_310 ())). Qed.
Lemma va_vdA2_0_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 160) ->
  L5.img_clear M 65536 1409024 -> L5.u64_at RSEGS M 1440376 2147450880 -> L5.u32_at RSEGS M 1440384 1 -> 140735332487328 <= (V 2%nat) <= 140737488355328 ->
  aligned (V 2%nat) 32 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb23a8 M) (st fx' R' 0xb23c0 M')
        /\ (forall x, In x KS_va_vdA2_0 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 8) = Z_to_bv 64 (V 2%nat)
        /\ getr R' (reg 9) = Z_to_bv 64 ((V 2%nat) - 160)
        /\ getr R' (reg 21) = getr R (reg 13)
        /\ getr R' (reg 22) = getr R (reg 12)
        /\ getr R' (reg 23) = getr R (reg 11)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_311 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdA2_16 := BndP_Na_134.LibSegNa_va_vdA2_16.
Definition KS_va_vdA2_16 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdA2_16.regs0 Pva_vdA2_16.regs_out0).
Lemma KS_va_vdA2_16_ok : BG.kept_ok 80 Pva_vdA2_16.regs0 Pva_vdA2_16.regs_out0 KS_va_vdA2_16 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_312 ())). Qed.
Lemma va_vdA2_16_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 144) ->
  L5.img_clear M 65536 1409024 -> L5.u64_at RSEGS M 1440376 2147450880 -> L5.u32_at RSEGS M 1440384 1 -> 140735332487328 <= (V 2%nat) <= 140737488355328 ->
  aligned (V 2%nat) 32 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb23a8 M) (st fx' R' 0xb23c0 M')
        /\ (forall x, In x KS_va_vdA2_16 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 2) = Z_to_bv 64 ((V 2%nat) - 160)
        /\ getr R' (reg 8) = Z_to_bv 64 ((V 2%nat) + 16)
        /\ getr R' (reg 9) = Z_to_bv 64 ((V 2%nat) - 160)
        /\ getr R' (reg 21) = getr R (reg 13)
        /\ getr R' (reg 22) = getr R (reg 12)
        /\ getr R' (reg 23) = getr R (reg 11)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_313 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdA3 := BndP_Na_134.LibSegNa_va_vdA3.
Definition KS_va_vdA3 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdA3.regs0 Pva_vdA3.regs_out0).
Lemma KS_va_vdA3_ok : BG.kept_ok 80 Pva_vdA3.regs0 Pva_vdA3.regs_out0 KS_va_vdA3 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_314 ())). Qed.
Lemma va_vdA3_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 160) -> getr R (reg 10) = Z_to_bv 64 (V 36%nat) ->
  L5.img_clear M 65536 1409024 -> L5.u64_at RSEGS M 1440376 2147450880 -> L5.u32_at RSEGS M 1440384 1 -> 140735332487328 <= (V 2%nat) <= 140737488355328 ->
  aligned (V 2%nat) 32 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb23c4 M) (st fx' R' 0x647ec M')
        /\ (forall x, In x KS_va_vdA3 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 730092
        /\ getr R' (reg 10) = Z_to_bv 64 64
        /\ getr R' (reg 11) = Z_to_bv 64 1440376
        /\ getr R' (reg 12) = Z_to_bv 64 1
        /\ getr R' (reg 20) = Z_to_bv 64 (V 36%nat)
        /\ getr R' (reg 25) = Z_to_bv 64 2147450880).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_315 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdB := BndP_Na_135.LibSegNa_va_vdB.
Definition KS_va_vdB : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdB.regs0 Pva_vdB.regs_out0).
Lemma KS_va_vdB_ok : BG.kept_ok 80 Pva_vdB.regs0 Pva_vdB.regs_out0 KS_va_vdB = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_316 ())). Qed.
Lemma va_vdB_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 50%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 160) -> getr R (reg 9) = Z_to_bv 64 ((V 2%nat) - 160) -> getr R (reg 10) = Z_to_bv 64 (V 50%nat) -> getr R (reg 20) = Z_to_bv 64 (V 36%nat) -> getr R (reg 25) = Z_to_bv 64 2147450880 ->
  140735332487328 <= (V 2%nat) <= 140737488355328 -> aligned (V 2%nat) 32 -> L5.writable RSEGS M ((V 2%nat) - 144) 8 -> (((V 2%nat) - 160) + 160 <= (V 50%nat) \/ (V 50%nat) + 64 <= ((V 2%nat) - 160)) ->
  7036928 <= (V 50%nat) <= 140737488355264 -> aligned (V 50%nat) 32 -> (2147446784 + 17592186048512 <= (V 50%nat) \/ (V 50%nat) + 64 <= 2147446784) -> L5.writable RSEGS M (V 50%nat) 24 ->
  L5.writable RSEGS M (((V 50%nat) / 8) + 2147450880) 8 -> 7036928 <= (V 36%nat) <= 140737488355232 -> aligned (V 36%nat) 8 -> (2147446784 + 17592186048512 <= (V 36%nat) \/ (V 36%nat) + 96 <= 2147446784) ->
  L5KA.zeros_at M ((((V 36%nat) + 80) / 8) + 2147450880) 1 -> (((((V 36%nat) + 80) / 8) + 2147450880) + 1 <= (((V 50%nat) / 8) + 2147450880) \/ (((V 50%nat) / 8) + 2147450880) + 8 <= ((((V 36%nat) + 80) / 8) + 2147450880)) -> (((V 2%nat) - 160) + 160 <= (V 36%nat) \/ (V 36%nat) + 96 <= ((V 2%nat) - 160)) ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, ~ (((V 2%nat) - 144) <= bv_unsigned a < ((V 2%nat) - 144) + 8) -> ~ (((V 50%nat) + 0) <= bv_unsigned a < ((V 50%nat) + 0) + 24) -> ~ (((((V 50%nat) / 8) + 2147450880) + 0) <= bv_unsigned a < ((((V 50%nat) / 8) + 2147450880) + 0) + 8) -> M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> ~ (((V 2%nat) - 144) <= i < ((V 2%nat) - 144) + 8) -> ~ (((V 50%nat) + 0) <= i < ((V 50%nat) + 0) + 24) -> ~ (((((V 50%nat) / 8) + 2147450880) + 0) <= i < ((((V 50%nat) / 8) + 2147450880) + 0) + 8) -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb23ec M) (st fx' R' 0xb248c M')
        /\ (forall x, In x KS_va_vdB -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 10) = Z_to_bv 64 0
        /\ getr R' (reg 11) = Z_to_bv 64 68570
        /\ getr R' (reg 12) = Z_to_bv 64 729960
        /\ getr R' (reg 13) = Z_to_bv 64 18446744073709551603
        /\ getr R' (reg 14) = Z_to_bv 64 18446744073709551608
        /\ getr R' (reg 15) = Z_to_bv 64 18446744073709551601
        /\ getr R' (reg 18) = Z_to_bv 64 (V 50%nat)
        /\ getr R' (reg 19) = Z_to_bv 64 ((V 36%nat) + 80)
        /\ getr R' (reg 24) = Z_to_bv 64 (V 50%nat)
        /\ getr R' (reg 26) = Z_to_bv 64 (((V 50%nat) / 8) + 2147450880)
        /\ getr R' (reg 27) = Z_to_bv 64 ((((V 36%nat) + 80) / 8) + 2147450880)
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 144) (V 50%nat)
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450883) 241
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450882) 241
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450881) 241
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450880) 241
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450887) 243
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450886) 243
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450885) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450884) 248
        /\ L5.u64_at RSEGS M' ((V 50%nat) + 16) 729960
        /\ L5.u64_at RSEGS M' ((V 50%nat) + 8) 68570
        /\ L5.u64_at RSEGS M' (V 50%nat) 1102416563).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_317 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdQ1 := BndP_Na_136.LibSegNa_va_vdQ1.
Definition KS_va_vdQ1 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdQ1.regs0 Pva_vdQ1.regs_out0).
Lemma KS_va_vdQ1_ok : BG.kept_ok 80 Pva_vdQ1.regs0 Pva_vdQ1.regs_out0 KS_va_vdQ1 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_318 ())). Qed.
Lemma va_vdQ1_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 50%nat) < 2 ^ 64 -> 0 <= (V 51%nat) < 2 ^ 64 -> 0 <= (V 52%nat) < 2 ^ 64 -> 0 <= (V 60%nat) < 2 ^ 64 -> 0 <= (V 61%nat) < 2 ^ 64 -> 0 <= (V 62%nat) < 2 ^ 64 -> 0 <= (V 63%nat) < 2 ^ 64 -> 0 <= (V 64%nat) < 2 ^ 64 -> 0 <= (V 65%nat) < 2 ^ 64 -> 0 <= (V 66%nat) < 2 ^ 64 -> 0 <= (V 67%nat) < 2 ^ 64 -> 0 <= (V 68%nat) < 2 ^ 64 -> 0 <= (V 69%nat) < 2 ^ 64 -> 0 <= (V 70%nat) < 2 ^ 64 -> 0 <= (V 71%nat) < 2 ^ 64 -> 0 <= (V 72%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 8) = Z_to_bv 64 (V 52%nat) -> getr R (reg 18) = Z_to_bv 64 (V 50%nat) -> getr R (reg 24) = Z_to_bv 64 (V 50%nat) -> getr R (reg 26) = Z_to_bv 64 (((V 50%nat) / 8) + 2147450880) ->
  7036928 <= (V 50%nat) <= 140737488355264 -> aligned (V 50%nat) 32 -> (2147446784 + 17592186048512 <= (V 50%nat) \/ (V 50%nat) + 64 <= 2147446784) -> L5.writable RSEGS M (V 50%nat) 8 ->
  L5.writable RSEGS M (((V 50%nat) / 8) + 2147450880) 8 -> L5.u64_at RSEGS M ((V 50%nat) + 56) (V 51%nat) -> 4096 <= (V 51%nat) <= 140737488355327 -> L5.writable RSEGS M (V 51%nat) 1 ->
  (2147446784 + 17592186048512 <= (V 51%nat) \/ (V 51%nat) + 1 <= 2147446784) -> ((V 50%nat) + 64 <= (V 51%nat) \/ (V 51%nat) + 1 <= (V 50%nat)) -> 140735332487328 <= (V 52%nat) <= 140737488355328 -> aligned (V 52%nat) 16 ->
  L5.u64_at RSEGS M ((V 52%nat) - 8) (V 60%nat) -> L5.u64_at RSEGS M ((V 52%nat) - 16) (V 61%nat) -> L5.u64_at RSEGS M ((V 52%nat) - 24) (V 62%nat) -> L5.u64_at RSEGS M ((V 52%nat) - 32) (V 63%nat) ->
  L5.u64_at RSEGS M ((V 52%nat) - 40) (V 64%nat) -> L5.u64_at RSEGS M ((V 52%nat) - 48) (V 65%nat) -> L5.u64_at RSEGS M ((V 52%nat) - 56) (V 66%nat) -> L5.u64_at RSEGS M ((V 52%nat) - 64) (V 67%nat) ->
  L5.u64_at RSEGS M ((V 52%nat) - 72) (V 68%nat) -> L5.u64_at RSEGS M ((V 52%nat) - 80) (V 69%nat) -> L5.u64_at RSEGS M ((V 52%nat) - 88) (V 70%nat) -> L5.u64_at RSEGS M ((V 52%nat) - 96) (V 71%nat) ->
  L5.u64_at RSEGS M ((V 52%nat) - 104) (V 72%nat) -> (((V 52%nat) - 160) + 160 <= (V 50%nat) \/ (V 50%nat) + 64 <= ((V 52%nat) - 160)) -> (((V 52%nat) - 160) + 160 <= (V 51%nat) \/ (V 51%nat) + 1 <= ((V 52%nat) - 160)) ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, ~ (((V 50%nat) + 0) <= bv_unsigned a < ((V 50%nat) + 0) + 8) -> ~ (((((V 50%nat) / 8) + 2147450880) + 0) <= bv_unsigned a < ((((V 50%nat) / 8) + 2147450880) + 0) + 8) -> ~ (((V 51%nat) + 0) <= bv_unsigned a < ((V 51%nat) + 0) + 1) -> M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> ~ (((V 50%nat) + 0) <= i < ((V 50%nat) + 0) + 8) -> ~ (((((V 50%nat) / 8) + 2147450880) + 0) <= i < ((((V 50%nat) / 8) + 2147450880) + 0) + 8) -> ~ (((V 51%nat) + 0) <= i < ((V 51%nat) + 0) + 1) -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb29b8 M) (st fx' R' 0xb2a54 M')
        /\ (forall x, In x KS_va_vdQ1 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 (V 60%nat)
        /\ getr R' (reg 2) = Z_to_bv 64 ((V 52%nat) - 160)
        /\ getr R' (reg 8) = Z_to_bv 64 (V 61%nat)
        /\ getr R' (reg 9) = Z_to_bv 64 (V 62%nat)
        /\ getr R' (reg 10) = Z_to_bv 64 1
        /\ getr R' (reg 18) = Z_to_bv 64 (V 63%nat)
        /\ getr R' (reg 19) = Z_to_bv 64 (V 64%nat)
        /\ getr R' (reg 20) = Z_to_bv 64 (V 65%nat)
        /\ getr R' (reg 21) = Z_to_bv 64 (V 66%nat)
        /\ getr R' (reg 22) = Z_to_bv 64 (V 67%nat)
        /\ getr R' (reg 23) = Z_to_bv 64 (V 68%nat)
        /\ getr R' (reg 24) = Z_to_bv 64 (V 69%nat)
        /\ getr R' (reg 25) = Z_to_bv 64 (V 70%nat)
        /\ getr R' (reg 26) = Z_to_bv 64 (V 71%nat)
        /\ getr R' (reg 27) = Z_to_bv 64 (V 72%nat)
        /\ L5.u8_at RSEGS M' (V 51%nat) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450883) 245
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450882) 245
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450881) 245
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450880) 245
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450887) 245
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450886) 245
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450885) 245
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450884) 245
        /\ L5.u64_at RSEGS M' (V 50%nat) 1172321806).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_319 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdQ2 := BndP_Na_136.LibSegNa_va_vdQ2.
Definition KS_va_vdQ2 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdQ2.regs0 Pva_vdQ2.regs_out0).
Lemma KS_va_vdQ2_ok : BG.kept_ok 80 Pva_vdQ2.regs0 Pva_vdQ2.regs_out0 KS_va_vdQ2 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_320 ())). Qed.
Lemma va_vdQ2_conc fx R M (V : nat -> Z) :
  0 <= (V 52%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 52%nat) - 160) ->
  140735332487328 <= (V 52%nat) <= 140737488355328 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb2a58 M) (st fx' R' 0xb2a5c M')
        /\ (forall x, In x KS_va_vdQ2 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 2) = Z_to_bv 64 (V 52%nat)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_321 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdJ1 := BndP_Na_136.LibSegNa_va_vdJ1.
Definition KS_va_vdJ1 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdJ1.regs0 Pva_vdJ1.regs_out0).
Lemma KS_va_vdJ1_ok : BG.kept_ok 80 Pva_vdJ1.regs0 Pva_vdJ1.regs_out0 KS_va_vdJ1 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_322 ())). Qed.
Lemma va_vdJ1_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb2724 M) (st fx' R' 0xb2940 M')
        /\ (forall x, In x KS_va_vdJ1 -> getr R' (reg x) = getr R (reg x))).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_323 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdJ2 := BndP_Na_136.LibSegNa_va_vdJ2.
Definition KS_va_vdJ2 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdJ2.regs0 Pva_vdJ2.regs_out0).
Lemma KS_va_vdJ2_ok : BG.kept_ok 80 Pva_vdJ2.regs0 Pva_vdJ2.regs_out0 KS_va_vdJ2 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_324 ())). Qed.
Lemma va_vdJ2_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb2810 M) (st fx' R' 0xb2940 M')
        /\ (forall x, In x KS_va_vdJ2 -> getr R' (reg x) = getr R (reg x))).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_325 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdKr := BndP_Na_136.LibSegNa_va_vdKr.
Definition KS_va_vdKr : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdKr.regs0 Pva_vdKr.regs_out0).
Lemma KS_va_vdKr_ok : BG.kept_ok 80 Pva_vdKr.regs0 Pva_vdKr.regs_out0 KS_va_vdKr = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_326 ())). Qed.
Lemma va_vdKr_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 50%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 26) = Z_to_bv 64 (((V 50%nat) / 8) + 2147450880) ->
  7036928 <= (V 50%nat) <= 140737488355264 -> aligned (V 50%nat) 32 -> (2147446784 + 17592186048512 <= (V 50%nat) \/ (V 50%nat) + 64 <= 2147446784) -> L5.writable RSEGS M (((V 50%nat) / 8) + 2147450884) 2 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, ~ (((((V 50%nat) / 8) + 2147450880) + 4) <= bv_unsigned a < ((((V 50%nat) / 8) + 2147450880) + 4) + 2) -> M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> ~ (((((V 50%nat) / 8) + 2147450880) + 4) <= i < ((((V 50%nat) / 8) + 2147450880) + 4) + 2) -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb28e4 M) (st fx' R' 0xb2940 M')
        /\ (forall x, In x KS_va_vdKr -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 10) = Z_to_bv 64 18446744073709551608
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450885) 248
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450884) 248).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP1 ()) [] (Mh_0208_blobs1.kr_b_327 ())). Qed.
(* [comment removed for export] *)

End VASVDP1.

End VaSVdP1.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0218.
Module VaSVdP2.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0007.   (* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From stdpp.bitvector Require Import definitions.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BigLinkBase. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.CatExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030.CatSim OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.SeqExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.StoreOk OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.Hoare OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.ShapeAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.SpinAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.HeapIface OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.AxSymRun3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.BigLinkBase OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.BigLinkGlue OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.L5Defs OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5Kn OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5KnA.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0177. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0218. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0177 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0218.
Import ListNotations. Import AX2. Import AX2B. Import AX2S.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Ltac Zify.zify_convert_to_euclidean_division_equations_flag ::= constr:(false).
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_VaSVdP2 () := "C47Corelib7Classes9Morphisms6ProperC47Corelib7Classes?RelationClasses9ReflexiveC47Corelib7Classes9Morphisms:forall_defC46Stdlib5Lists4List2hdC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA6fframeC46Stdlib5Lists4List4inclC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55rangeC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR6regionC47Corelib4Init5Logic8eq_ind_rC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K@nth_error_singleC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K6zagreeI47Corelib4Init9Datatypes6option00C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA6zpolyAK47Corelib4Init9Datatypes6option01I47Corelib4Init5Logic2eq00K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1N02I45stdpp9bitvector;definitions2bv00C56Stdlib6ZArith6BinInt1Z6moduloC45stdpp9bitvector;definitions7Z_to_bvC45stdpp9bitvector;definitions;bv_unsignedC45stdpp9bitvector;definitions5bv_eqC45stdpp9bitvector;definitions7bv_wrapK47Corelib7Numbers7BinNums1Z02C56Stdlib6ZArith6BinInt1Z3powC56Stdlib6ZArith6BinInt1Z>pow_pos_nonnegC56Stdlib6ZArith6BinInt1Z2ltC56Stdlib6ZArith6BinInt1Z2leC56Stdlib6ZArith6BinInt1Z:pow_nonnegK47Corelib4Init9Datatypes4list01I47Corelib4Init9Datatypes4list00K46Stdlib9micromega6VarMap1t01I46Stdlib9micromega6VarMap1t00I46Stdlib9micromega=RingMicromega7Formula00K46Stdlib9micromega7EnvRing5PExpr01K46Stdlib9micromega7EnvRing5PExpr07K46Stdlib9micromega=RingMicromega7Formula01K46Stdlib9micromega5Tauto8GFormula04K46Stdlib9micromega5Tauto8GFormula07C46Stdlib9micromega5Tauto8BFormulaK47Corelib4Init5Logic2eq01C46Stdlib9micromega:ZMicromega=ZTautoCheckerC46Stdlib9micromega6VarMap4findC46Stdlib9micromega:ZMicromegaCZTautoChecker_soundC56Stdlib6ZArith6BinInt1Z7mod_modC45stdpp9bitvector;definitions@Z_to_bv_unsignedC6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26edenotC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA<zpolyA_soundC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG@word_of_unsignedI6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX23env00I47Corelib4Init9Datatypes3nat00I47Corelib7Numbers7BinNums1Z00I6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr00K47Corelib7Numbers7BinNums8positive03C5ARocqVerifyHarness?AgentSubmission;BigLinkBase2BL2MMI47Corelib7Numbers7BinNums1N00I47Corelib4Init5Logic3and00K47Corelib7Numbers7BinNums1Z01I47Corelib4Init5Logic4True00I46Stdlib9micromega:ZMicromega;ZArithProof00C46Stdlib9micromega5Tauto5eKindI47Corelib4Init9Datatypes4unit00K46Stdlib9micromega5Tauto4kind01K46Stdlib9micromega=RingMicromega3Op201K47Corelib4Init9Datatypes4unit01I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01I47Corelib4Init5Logic5False00K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX25saddr01K47Corelib4Init9Datatypes3nat02K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry01C5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S9kentry_okC56Stdlib6ZArith6BinInt1Z3addC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u64_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=u64_of_KWord8C5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsK47Corelib4Init9Datatypes3nat01C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u32_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=u32_of_KWord4C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55u8_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K<u8_of_KWord1I47Corelib4Init5Peano2le00C56Stdlib6ZArith6BinInt1Z6of_natC5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S4flatC6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26adenotC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K8adenot_eC47Corelib4Init5Logic6eq_indC45stdpp9bitvector;definitionsDbv_unsigned_in_rangeC45stdpp9bitvector;definitions:bv_modulusC4ELinuxProcessSemantics?LinuxProcessSem6BvBase=Z_to_le_bytesK46Stdlib9micromega6VarMap1t02K46Stdlib9micromega7EnvRing5PExpr02K46Stdlib9micromega5Tauto8GFormula05K47Corelib4Init9Datatypes6option02K46Stdlib9micromega5Tauto8GFormula08C56Stdlib6ZArith6BinInt1Z9mod_smallK45stdpp9bitvector;definitions2bv01C45stdpp9bitvector;definitions6bv_addC56Stdlib6ZArith6BinInt1Z?add_mod_idemp_lC45stdpp9bitvector;definitions?bv_add_unsignedC56Stdlib6ZArith6BinInt1Z3divK47Corelib4Init9Datatypes4list02C47Corelib4Init5Logic7f_equalC35stdpp7tactics<f_equal_helpC56Stdlib6ZArith6BinInt1Z6shiftrC56Stdlib6ZArith6BinInt1Z?shiftr_div_pow2K47Corelib4Init5Logic3and01C47Corelib4Init5Logic9False_indC4ARocqVerifyHarness?AgentSubmission8PropExec3rdnC4ELinuxProcessSemantics?LinuxProcessSem>RiscvSemantics@word_to_le_bytesC4ARocqVerifyHarness?AgentSubmission8PropExec7seg_romK46Stdlib9micromega=RingMicromega3Op203K46Stdlib9micromega=RingMicromega3Op205K47Corelib4Init5Logic4True01K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry0:C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L57definedC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K?defined_of_KUnkC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA@u8_of_KWord1_modK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry02C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA8zeros_atC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA>zeros_of_KZeroK47Corelib7Numbers7BinNums8positive01C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K9land_le_rC56Stdlib6ZArith6BinInt1Z4landK46Stdlib9micromega=RingMicromega5Psatz02K46Stdlib9micromega=RingMicromega5Psatz06K46Stdlib9micromega:ZMicromega;ZArithProof02K46Stdlib9micromega6VarMap1t03K46Stdlib9micromega5Tauto8GFormula03K46Stdlib9micromega:ZMicromega;ZArithProof01C56Stdlib6ZArith6BinInt1Z3lorC56Stdlib6ZArith6BinInt1Z:lor_nonnegC56Stdlib6ZArith6BinInt1Z6eq_decC47Corelib4Init5Logic3notI47Corelib4Init6Specif7sumbool00C56Stdlib6ZArith6BinInt1Z7lor_0_lC56Stdlib6ZArith6BinInt1Z7lor_0_rC56Stdlib6ZArith6BinInt1Z4log2C56Stdlib6ZArith6BinInt1Z3maxC56Stdlib6ZArith6BinInt1Z<log2_lt_pow2C56Stdlib6ZArith6BinInt1Z:max_lub_ltC56Stdlib6ZArith6BinInt1Z8log2_lorC56Stdlib6ZArith6BinInt1Z>log2_lt_cancelC47Corelib4Init5Logic5proj2C56Stdlib6ZArith6BinInt1Z9land_commC46Stdlib5Lists4List2InC56Stdlib6ZArith6BinInt1Z3ltbC47Corelib4Init9Datatypes4andbC47Corelib5Lists7ListDef3seqC46Stdlib5Lists4List7forallbC47Corelib4Init5Logic3iffC47Corelib7Classes9MorphismsDiff_impl_subrelationC46Stdlib5Lists4List>forallb_forallC56Stdlib6ZArith6BinInt1Z6to_natC47Corelib4Init3Nat3addC47Corelib4Init5Peano2ltC46Stdlib5Lists4List6in_seqC46Stdlib9micromega;ZifyClasses9and_morphC56Stdlib6ZArith6BinInt1Z8max_specI47Corelib4Init5Logic2or00K47Corelib7Numbers7BinNums1Z03K46Stdlib9micromega7EnvRing3Pol01K46Stdlib9micromega=RingMicromega5Psatz04K46Stdlib9micromega5Tauto8GFormula06K46Stdlib9micromega7EnvRing5PExpr03C46Stdlib9micromega;ZifyClasses;rew_iff_revC56Stdlib6ZArith4Znat5Z2Nat2idC47Corelib4Init9Datatypes9andb_propC46Stdlib9micromega9SatDivModCZ_mod_nonneg_nonnegC56Stdlib6ZArith6BinInt1Z7div_modC56Stdlib6ZArith6BinInt1Z3mulC56Stdlib6ZArith6BinInt1Z=mod_pos_boundC56Stdlib6ZArith6BinInt1Z=mod_neg_boundC56Stdlib5omega8PreOmega1Z;div_0_r_extC56Stdlib5omega8PreOmega1Z;mod_0_r_extK46Stdlib9micromega5Tauto8GFormula01C56Stdlib6ZArith6BinInt1Z3lebC46Stdlib9micromega;ZifyClasses5mkappC46Stdlib9micromega;ZifyClasses5mkrelC46Stdlib9micromega;ZifyClasses6mkapp2K46Stdlib9micromega5Tauto8GFormula0:C46Stdlib9micromega8ZifyInst@of_nat_to_nat_eqC56Stdlib6ZArith4Znat5Nat2Z6inj_leC56Stdlib5Arith8PeanoNat3Nat3addC56Stdlib6ZArith4Znat5Nat2Z7inj_addC56Stdlib6ZArith4Znat5Nat2Z6inj_ltK46Stdlib9micromega5Tauto4kind02C6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG7kept_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP29Pva_vdDa25regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP29Pva_vdDa29regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;KS_va_vdDa2C46Stdlib5Lists4List2tlC4ELinuxProcessSemantics5Riscv7Prelude5bvmapC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L59img_clearc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP27alignedC56Stdlib6ZArith6BinInt1Z3subC47Corelib4Init5Logic5proj1C4ARocqVerifyHarness?AgentSubmission8PropExec4getrK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX23env01C6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX22evC56Stdlib6NArith6BinNat1N6to_natC5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA6za_litC5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA8za_startK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr02K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr01K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr03C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K:zagree_allc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2=word_of_zpolyC47Corelib4Init5Logic6eq_symC47Corelib4Init5Logic8eq_transC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG5slotsC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG@regs_ok_of_slotsC5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S7regs_okK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry04K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry06K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry05K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry08C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K;kentry_KImgC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA:zpolyA_valC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KRangeC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KAlignC46Stdlib9micromega9SatDivModCZ_div_nonneg_nonnegK46Stdlib9micromega=RingMicromega5Psatz07K46Stdlib9micromega=RingMicromega5Psatz05K46Stdlib9micromega7EnvRing5PExpr05C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA<kentry_KZeroC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KWord8K46Stdlib9micromega7EnvRing5PExpr04C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KWord4K47Corelib5Lists7ListDef6Forall01C5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S7know_okC5ARocqVerifyHarness?AgentSubmission7Mh_00387StoreOk9mem_growsC4ARocqVerifyHarness?AgentSubmission8PropExec4mkstI47Corelib4Init5Logic2ex00C5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP8bfact_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP29Pva_vdDa2<seg_sound_axI47Corelib4Init9Datatypes4prod00K47Corelib4Init9Datatypes4prod01C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=outside_nil_eC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG9kept_regsC5ARocqVerifyHarness?AgentSubmission7Mh_01129AxSymRun3<expr_vars_ltC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K9zagree_ltC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG7out_regK47Corelib4Init5Logic2ex01C5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA7za_stepC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K<kentry_KDisjK47Corelib5Lists7ListDef6Forall02I5ARocqVerifyHarness?AgentSubmission7Mh_00306CatSim6msteps00C46Stdlib5Lists4List9nth_errorC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR5ps_pcC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR7ps_regsC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP:regions_okC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP7outsideC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR8ps_cellsC5ARocqVerifyHarness?AgentSubmission7Mh_01129AxSymRun39env_agreeC47Corelib5Lists7ListDef3nthI6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry00I6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR9post_spec00c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP29Pva_vdDa23PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP29Pva_vdDa22F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP29Pva_vdDa23NX0I4ARocqVerifyHarness?AgentSubmission8PropExec7FPState00K47Corelib7Numbers7BinNums1N01K4ELinuxProcessSemantics5Riscv5Instr5aluop01K4ELinuxProcessSemantics5Riscv5Instr5aluop07c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP29Pva_vdDa23kn0I5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP5bfact00c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP29Pva_vdDa23ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2>KS_va_vdDa2_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce0S5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce0S9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2=KS_va_vdKce0SC56Stdlib6ZArith6BinInt1Z7testbitC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L58writableK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry07C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KWord1C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K@land1_bit0_falseC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5KDkentry_KRange_andlitC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K:kentry_KWrc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce0S<seg_sound_axC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K>outside_cons_eC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG<unsigned_litC46Stdlib5Lists4List<nth_error_Inc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2=u8_of_KWord1ac7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce0S3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce0S2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce0S3NX0K47Corelib4Init9Datatypes4bool02K4ELinuxProcessSemantics5Riscv5Instr5aluop0:c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce0S3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce0S3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2@KS_va_vdKce0S_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce0S6cells0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce0L5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce0L9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2=KS_va_vdKce0LC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K?land1_bit0_truec7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce0L<seg_sound_axc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2>u64_of_KWord8ac7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce0L3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce0L2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce0L3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce0L3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce0L3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2@KS_va_vdKce0L_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce0L6cells0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce1S5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce1S9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2=KS_va_vdKce1Sc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce1S<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce1S3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce1S2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce1S3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce1S3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce1S3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2@KS_va_vdKce1S_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce1S6cells0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce1L5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce1L9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2=KS_va_vdKce1Lc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce1L<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce1L3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce1L2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce1L3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce1L3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce1L3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2@KS_va_vdKce1L_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2;Pva_vdKce1L6cells0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP28Pva_vdWO5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP28Pva_vdWO9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2:KS_va_vdWOc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP28Pva_vdWO<seg_sound_axc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2>u32_of_KWord4ac7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP28Pva_vdWO3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP28Pva_vdWO2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP28Pva_vdWO3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP28Pva_vdWO6cells0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP28Pva_vdWO3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP28Pva_vdWO3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2=KS_va_vdWO_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP27Pva_vdW5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP27Pva_vdW9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP29KS_va_vdWc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP27Pva_vdW<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP27Pva_vdW3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP27Pva_vdW2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP27Pva_vdW3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP27Pva_vdW3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP27Pva_vdW3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP27VASVDP2<KS_va_vdW_ok". Local Ltac lia := L5FastLia.plia.

Module VASVDP2.
Abbreviation RSEGS := Asan.M.loaded_segments.
Notation reg i := (Z_to_bv 5 (Z.of_nat i)) (only parsing).
Notation st fx R pc M := (@mkst fx R (Z_to_bv 64 pc) M (seg_rom Asan.M.loaded_segments)) (only parsing).

(* [comment removed for export] *)
Lemma word_of_zpoly E Vz e z : L5K.zagree E Vz e -> L5KA.zpolyA Vz e = Some z -> edenot E e = Z_to_bv 64 z.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP2 ()) [] (Mh_0208_blobs1.kr_b_328 ())). Qed.
(* [comment removed for export] *)
Lemma u64_of_KWord8a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 8 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> L5.u64_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP2 ()) [] (Mh_0208_blobs1.kr_b_329 ())). Qed.
Lemma u32_of_KWord4a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 4 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> L5.u32_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP2 ()) [] (Mh_0208_blobs1.kr_b_330 ())). Qed.
Lemma u8_of_KWord1a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 1 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> 0 <= v < 256 -> a' = a + off -> L5.u8_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP2 ()) [] (Mh_0208_blobs1.kr_b_331 ())). Qed.
(* [comment removed for export] *)
Lemma u8x2_of_KWord2a E M b off e a v a' v0 v1 : kentry_ok RSEGS E M (KWord (SA b off) 2 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> v0 = v mod 256 -> v1 = (v / 256) mod 256 ->
  L5.u8_at RSEGS M a' v0 /\ L5.u8_at RSEGS M (a' + 1) v1.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP2 ()) [] (Mh_0208_blobs1.kr_b_332 ())). Qed.
Lemma defined_of_KUnka E M b off ne a n a' : kentry_ok RSEGS E M (KUnk (SA b off) ne) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E ne) = n -> a' = a + off -> L5.defined M a' n.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP2 ()) [] (Mh_0208_blobs1.kr_b_333 ())). Qed.
Lemma u8_of_KWord1ma E M b off e a v a' v' : kentry_ok RSEGS E M (KWord (SA b off) 1 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> v' = v mod 256 -> L5.u8_at RSEGS M a' v'.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP2 ()) [] (Mh_0208_blobs1.kr_b_334 ())). Qed.
Lemma zeros_of_KZeroa E M b off ne a n a' : kentry_ok RSEGS E M (KZero (SA b off) ne) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E ne) = n -> a' = a + off -> L5KA.zeros_at M a' n.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP2 ()) [] (Mh_0208_blobs1.kr_b_335 ())). Qed.
Lemma land_byte a m : 0 <= a -> 0 <= m <= 255 -> 0 <= Z.land a m < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP2 ()) [] (Mh_0208_blobs1.kr_b_336 ())). Qed.
Lemma lor_byte a b : 0 <= a < 256 -> 0 <= b < 256 -> 0 <= Z.lor a b < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP2 ()) [] (Mh_0208_blobs1.kr_b_337 ())). Qed.
(* [comment removed for export] *)
Lemma land_le_l a m : 0 <= a -> 0 <= m -> Z.land a m <= a.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP2 ()) [] (Mh_0208_blobs1.kr_b_338 ())). Qed.
Local Ltac zfacts :=
  repeat (match goal with |- context [Z.land ?a ?m] =>
    lazymatch goal with _ : 0 <= Z.land a m <= m |- _ => fail | _ => pose proof (L5K.land_le_r a m ltac:(lia) ltac:(lia)); pose proof (land_le_l a m ltac:(lia) ltac:(lia)) end end);
  repeat (match goal with |- context [?a / ?c] =>
    lazymatch goal with _ : 0 <= a / c |- _ => fail | _ => pose proof (Z.div_pos a c ltac:(lia) ltac:(lia)); pose proof (Z.mul_div_le a c ltac:(lia)) end end).
Local Ltac nonneg_tac := first [lia | match goal with |- 0 <= ?x mod ?m => exact (proj1 (Z.mod_pos_bound x m ltac:(clear; lia))) end | (zfacts; lia)].
Lemma setbit1_byte a : 0 <= a < 256 -> 0 <= (Z.land a 18446744073709551613 + 2) mod 2 ^ 64 < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP2 ()) [] (Mh_0208_blobs1.kr_b_339 ())). Qed.
Local Ltac byte_go :=
  lazymatch goal with
  | |- 0 <= (Z.land _ 18446744073709551613 + 2) mod _ < 256 => apply setbit1_byte; lia
  | |- 0 <= Z.lor _ _ < 256 => apply lor_byte; byte_go
  | |- 0 <= Z.land _ _ < 256 => apply land_byte; [nonneg_tac | lia]
  | _ => zfacts; first [lia | rewrite !Z.mod_small by (rewrite ?Z.mod_small by lia; lia); lia]
  end.
Local Ltac byte_tac0 k := k; byte_go.
Tactic Notation "byte_tac" tactic(k) := byte_tac0 k.
(* [comment removed for export] *)
(* [comment removed for export] *)
Local Ltac solve_modk k :=
  repeat match goal with |- context [(?x mod 18446744073709551616) / _] => rewrite (Z.mod_small x 18446744073709551616) by (k; zfacts; lia) end;
  first [ rewrite Z.mod_small; [ first [reflexivity | k; lia] | k; L5K.zrange_tac ]
        | symmetry; eapply (Z.mod_unique_pos _ _ (-1)); k; unfold BL.MM; lia
        | symmetry; eapply (Z.mod_unique_pos _ _ 1); k; unfold BL.MM; lia ].
(* [comment removed for export] *)
Local Ltac pvz_hg tac := lazymatch goal with |- ?G0 => let PG := fresh "PGoal" in set (PG := G0); tac; subst PG end.
Local Ltac pvz_fold B k := lazymatch B with | ?A2 /\ ?B2 => pvz_fold B2 ltac:(fun T2 => let T := fresh "pvzT" in pose (T := A2 /\ T2); k T) | _ => k B end.
Local Ltac pvz_linconj := lazymatch goal with |- ?A /\ ?B => pvz_fold B ltac:(fun T => change_no_check (A /\ T)) | _ => idtac end.
Local Ltac pvz_unfold ZA := lazymatch type of ZA with forall j, _ = ?f j => tryif is_var f then unfold f else idtac | _ => idtac end.
Tactic Notation "evalEk" constr(ZA) tactic(k) :=
  L5K.norm_expr; eapply L5KA.zpolyA_val; [ apply (L5K.zagree_all _ _ _ ZA) | cbn [L5KA.zpolyA]; pvz_unfold ZA; reflexivity | solve_modk k ].
Tactic Notation "evalEk'" constr(ZA) constr(AG) tactic(k) :=
  L5K.norm_expr; eapply L5KA.zpolyA_val;
  [ eapply (L5K.zagree_lt _ _ _ _ _ AG); [apply (L5K.zagree_all _ _ _ ZA) | vm_compute; reflexivity] | cbn [L5KA.zpolyA]; pvz_unfold ZA; reflexivity | solve_modk k ].
(* [comment removed for export] *)
Definition aligned (a m : Z) : Prop := a mod m = 0.
Definition srl_range (a c lo hi : Z) : Prop := lo <= a / c <= hi.
(* [comment removed for export] *)
Local Ltac exactA H :=
  first [ exact H
        | lazymatch goal with
          | |- L5.u64_at _ _ ?a _ => lazymatch type of H with L5.u64_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.u8_at _ _ ?a _ => lazymatch type of H with L5.u8_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.u32_at _ _ ?a _ => lazymatch type of H with L5.u32_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.writable _ _ ?a _ => lazymatch type of H with L5.writable _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.defined _ ?a _ => lazymatch type of H with L5.defined _ ?b _ => replace a with b by (clear; lia) end
          | |- L5KA.zeros_at _ ?a _ => lazymatch type of H with L5KA.zeros_at _ ?b _ => replace a with b by (clear; lia) end
          end; exact H ].
(* [comment removed for export] *)
Local Ltac den_tac := first [reflexivity | lia | idtac].
(* [comment removed for export] *)
(* [comment removed for export] *)
Local Ltac apc_norm :=
  repeat match goal with
  | |- context [APC.eadd ?a ?b] => let t := eval vm_compute in (APC.eadd a b) in change (APC.eadd a b) with t
  | |- context [APC.esub ?a ?b] => let t := eval vm_compute in (APC.esub a b) in change (APC.esub a b) with t
  | |- context [APC.escale ?c ?e] => let t := eval vm_compute in (APC.escale c e) in change (APC.escale c e) with t
  | |- context [APC.eaddz ?a ?z] => let t := eval vm_compute in (APC.eaddz a z) in change (APC.eaddz a z) with t
  end.
(* [comment removed for export] *)
Local Ltac zp_norm := repeat (match goal with |- context [(?a <=? ?b) && (?c <? ?d)] => let r := eval vm_compute in ((a <=? b) && (c <? d)) in change ((a <=? b) && (c <? d)) with r end);
  repeat (match goal with |- context [2 ^ ?s] => let r := eval vm_compute in (2 ^ s) in change (2 ^ s) with r end); lazy beta iota zeta.
Local Ltac zp_mods := repeat match goal with |- context [(?x mod 18446744073709551616) / _] => rewrite (Z.mod_small x 18446744073709551616) by (zfacts; lia) end.
Local Ltac slotP ZA :=
  first [ assumption | reflexivity
        | (etransitivity; [eassumption|]; symmetry; eapply word_of_zpoly; [apply (L5K.zagree_all _ _ _ ZA) | cbn [L5KA.zpolyA]; pvz_unfold ZA; zp_norm; f_equal; zp_mods; first [reflexivity | clear; zfacts; lia | zfacts; lia]]) ].
(* [comment removed for export] *)
Local Ltac wordP' ZA AG :=
  eapply word_of_zpoly; [ eapply (L5K.zagree_lt _ _ _ _ _ AG); [apply (L5K.zagree_all _ _ _ ZA) | vm_compute; reflexivity]
                        | cbn [L5KA.zpolyA]; pvz_unfold ZA; zp_norm; f_equal; zp_mods; first [reflexivity | clear; zfacts; lia | zfacts; lia] ].
(* [comment removed for export] *)
Module Pva_vdDa2 := BndP_Na_135.LibSegNa_va_vdDa2.
Definition KS_va_vdDa2 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdDa2.regs0 Pva_vdDa2.regs_out0).
Lemma KS_va_vdDa2_ok : BG.kept_ok 80 Pva_vdDa2.regs0 Pva_vdDa2.regs_out0 KS_va_vdDa2 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP2 ()) [] (Mh_0208_blobs1.kr_b_340 ())). Qed.
Lemma va_vdDa2_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 37%nat) < 2 ^ 64 -> 0 <= (V 38%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 19) = Z_to_bv 64 ((V 36%nat) + 80) -> getr R (reg 20) = Z_to_bv 64 (V 36%nat) -> getr R (reg 25) = Z_to_bv 64 2147450880 -> getr R (reg 27) = Z_to_bv 64 ((((V 36%nat) + 80) / 8) + 2147450880) ->
  L5.img_clear M 65536 1409024 -> 7036928 <= (V 36%nat) <= 140737488355232 -> aligned (V 36%nat) 8 -> (2147446784 + 17592186048512 <= (V 36%nat) \/ (V 36%nat) + 96 <= 2147446784) ->
  L5KA.zeros_at M ((((V 36%nat) + 80) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 36%nat) + 16) / 8) + 2147450880) 1 -> L5.u64_at RSEGS M ((V 36%nat) + 80) (V 37%nat) -> 4120 <= (V 37%nat) <= 140737488355328 ->
  aligned (V 37%nat) 8 -> (2147446784 + 17592186048512 <= ((V 37%nat) - 24) \/ ((V 37%nat) - 24) + 24 <= 2147446784) -> L5KA.zeros_at M ((((V 37%nat) - 16) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 37%nat) - 24) / 8) + 2147450880) 1 ->
  L5.u32_at RSEGS M ((V 37%nat) - 24) 0 -> L5.u32_at RSEGS M ((V 37%nat) - 16) 1 -> L5.u64_at RSEGS M ((V 36%nat) + 16) (V 38%nat) -> 7036928 <= (V 38%nat) <= 140737488355272 ->
  (2147446784 + 17592186048512 <= (V 38%nat) \/ (V 38%nat) + 56 <= 2147446784) -> L5KA.zeros_at M (((V 38%nat) / 8) + 2147450880) 1 -> L5.u64_at RSEGS M (V 38%nat) 1380656 -> L5KA.zeros_at M 2147623468 1 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb248c M) (st fx' R' 0xb2710 M')
        /\ (forall x, In x KS_va_vdDa2 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 10) = Z_to_bv 64 (V 38%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 1380704
        /\ getr R' (reg 12) = Z_to_bv 64 0
        /\ getr R' (reg 13) = Z_to_bv 64 0
        /\ getr R' (reg 14) = Z_to_bv 64 796580).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP2 ()) [] (Mh_0208_blobs1.kr_b_341 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdKce0S := BndP_Na_136.LibSegNa_va_vdKce0S.
Definition KS_va_vdKce0S : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdKce0S.regs0 Pva_vdKce0S.regs_out0).
Lemma KS_va_vdKce0S_ok : BG.kept_ok 80 Pva_vdKce0S.regs0 Pva_vdKce0S.regs_out0 KS_va_vdKce0S = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP2 ()) [] (Mh_0208_blobs1.kr_b_342 ())). Qed.
Lemma va_vdKce0S_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 37%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 19) = Z_to_bv 64 ((V 36%nat) + 80) -> getr R (reg 20) = Z_to_bv 64 (V 36%nat) -> getr R (reg 25) = Z_to_bv 64 2147450880 ->
  7036928 <= (V 36%nat) <= 140737488355232 -> aligned (V 36%nat) 8 -> (2147446784 + 17592186048512 <= (V 36%nat) \/ (V 36%nat) + 96 <= 2147446784) -> L5KA.zeros_at M ((((V 36%nat) + 24) / 8) + 2147450880) 1 ->
  L5KA.zeros_at M ((((V 36%nat) + 25) / 8) + 2147450880) 1 -> L5.u64_at RSEGS M ((V 36%nat) + 80) (V 37%nat) -> 4120 <= (V 37%nat) <= 140737488355328 -> aligned (V 37%nat) 8 ->
  (2147446784 + 17592186048512 <= ((V 37%nat) - 24) \/ ((V 37%nat) - 24) + 24 <= 2147446784) -> L5KA.zeros_at M ((((V 37%nat) - 16) / 8) + 2147450880) 1 -> L5.u32_at RSEGS M ((V 37%nat) - 16) 0 -> L5.u8_at RSEGS M ((V 36%nat) + 24) (V 40%nat) ->
  0 <= (V 40%nat) <= 44 -> Z.testbit (V 40%nat) 0 = false -> L5.writable RSEGS M ((V 36%nat) + 24) 2 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, ~ (((V 36%nat) + 24) <= bv_unsigned a < ((V 36%nat) + 24) + 2) -> M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> ~ (((V 36%nat) + 24) <= i < ((V 36%nat) + 24) + 2) -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb248c M) (st fx' R' 0xb2558 M')
        /\ (forall x, In x KS_va_vdKce0S -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 10) = Z_to_bv 64 ((V 36%nat) + 24)
        /\ getr R' (reg 11) = Z_to_bv 64 0
        /\ getr R' (reg 12) = Z_to_bv 64 ((((V 36%nat) + 24) / 8) + 2147450880)
        /\ getr R' (reg 13) = Z_to_bv 64 0
        /\ L5.u8_at RSEGS M' ((V 36%nat) + 24) 0
        /\ L5.u8_at RSEGS M' ((V 36%nat) + 25) 0).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP2 ()) [] (Mh_0208_blobs1.kr_b_343 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdKce0L := BndP_Na_136.LibSegNa_va_vdKce0L.
Definition KS_va_vdKce0L : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdKce0L.regs0 Pva_vdKce0L.regs_out0).
Lemma KS_va_vdKce0L_ok : BG.kept_ok 80 Pva_vdKce0L.regs0 Pva_vdKce0L.regs_out0 KS_va_vdKce0L = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP2 ()) [] (Mh_0208_blobs1.kr_b_344 ())). Qed.
Lemma va_vdKce0L_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 37%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 -> 0 <= (V 41%nat) < 2 ^ 64 -> 0 <= (V 42%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 19) = Z_to_bv 64 ((V 36%nat) + 80) -> getr R (reg 20) = Z_to_bv 64 (V 36%nat) -> getr R (reg 25) = Z_to_bv 64 2147450880 ->
  7036928 <= (V 36%nat) <= 140737488355232 -> aligned (V 36%nat) 8 -> (2147446784 + 17592186048512 <= (V 36%nat) \/ (V 36%nat) + 96 <= 2147446784) -> L5KA.zeros_at M ((((V 36%nat) + 24) / 8) + 2147450880) 1 ->
  L5KA.zeros_at M ((((V 36%nat) + 32) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 36%nat) + 40) / 8) + 2147450880) 1 -> L5.u64_at RSEGS M ((V 36%nat) + 80) (V 37%nat) -> 4120 <= (V 37%nat) <= 140737488355328 ->
  aligned (V 37%nat) 8 -> (2147446784 + 17592186048512 <= ((V 37%nat) - 24) \/ ((V 37%nat) - 24) + 24 <= 2147446784) -> L5KA.zeros_at M ((((V 37%nat) - 16) / 8) + 2147450880) 1 -> L5.u32_at RSEGS M ((V 37%nat) - 16) 0 ->
  L5.u8_at RSEGS M ((V 36%nat) + 24) (V 40%nat) -> 0 <= (V 40%nat) <= 255 -> Z.testbit (V 40%nat) 0 = true -> L5.u64_at RSEGS M ((V 36%nat) + 32) (V 41%nat) ->
  0 <= (V 41%nat) <= 2147483648 -> L5.u64_at RSEGS M ((V 36%nat) + 40) (V 42%nat) -> 4096 <= (V 42%nat) <= 140737488355328 -> L5.writable RSEGS M ((V 36%nat) + 32) 8 ->
  L5.writable RSEGS M (V 42%nat) 1 -> (2147446784 + 17592186048512 <= (V 42%nat) \/ (V 42%nat) + 1 <= 2147446784) -> L5KA.zeros_at M (((V 42%nat) / 8) + 2147450880) 1 -> ((V 42%nat) + 1 <= (V 36%nat) \/ (V 36%nat) + 96 <= (V 42%nat)) ->
  ((V 42%nat) + 1 <= ((V 37%nat) - 24) \/ ((V 37%nat) - 24) + 24 <= (V 42%nat)) ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, ~ (((V 36%nat) + 32) <= bv_unsigned a < ((V 36%nat) + 32) + 8) -> ~ (((V 42%nat) + 0) <= bv_unsigned a < ((V 42%nat) + 0) + 1) -> M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> ~ (((V 36%nat) + 32) <= i < ((V 36%nat) + 32) + 8) -> ~ (((V 42%nat) + 0) <= i < ((V 42%nat) + 0) + 1) -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb248c M) (st fx' R' 0xb2558 M')
        /\ (forall x, In x KS_va_vdKce0L -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 10) = Z_to_bv 64 ((V 36%nat) + 24)
        /\ getr R' (reg 11) = Z_to_bv 64 ((V 36%nat) + 32)
        /\ getr R' (reg 12) = Z_to_bv 64 0
        /\ L5.u64_at RSEGS M' ((V 36%nat) + 32) 0
        /\ L5.u8_at RSEGS M' (V 42%nat) 0).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP2 ()) [] (Mh_0208_blobs1.kr_b_345 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdKce1S := BndP_Na_136.LibSegNa_va_vdKce1S.
Definition KS_va_vdKce1S : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdKce1S.regs0 Pva_vdKce1S.regs_out0).
Lemma KS_va_vdKce1S_ok : BG.kept_ok 80 Pva_vdKce1S.regs0 Pva_vdKce1S.regs_out0 KS_va_vdKce1S = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP2 ()) [] (Mh_0208_blobs1.kr_b_346 ())). Qed.
Lemma va_vdKce1S_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 37%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 19) = Z_to_bv 64 ((V 36%nat) + 80) -> getr R (reg 20) = Z_to_bv 64 (V 36%nat) -> getr R (reg 25) = Z_to_bv 64 2147450880 ->
  7036928 <= (V 36%nat) <= 140737488355232 -> aligned (V 36%nat) 8 -> (2147446784 + 17592186048512 <= (V 36%nat) \/ (V 36%nat) + 96 <= 2147446784) -> L5KA.zeros_at M ((((V 36%nat) + 24) / 8) + 2147450880) 1 ->
  L5KA.zeros_at M ((((V 36%nat) + 25) / 8) + 2147450880) 1 -> L5.u64_at RSEGS M ((V 36%nat) + 80) (V 37%nat) -> 4120 <= (V 37%nat) <= 140737488355328 -> aligned (V 37%nat) 8 ->
  (2147446784 + 17592186048512 <= ((V 37%nat) - 24) \/ ((V 37%nat) - 24) + 24 <= 2147446784) -> L5KA.zeros_at M ((((V 37%nat) - 16) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 37%nat) - 24) / 8) + 2147450880) 1 -> L5.u32_at RSEGS M ((V 37%nat) - 24) 1 ->
  L5.u32_at RSEGS M ((V 37%nat) - 16) 1 -> L5.u8_at RSEGS M ((V 36%nat) + 24) (V 40%nat) -> 0 <= (V 40%nat) <= 44 -> Z.testbit (V 40%nat) 0 = false ->
  L5.writable RSEGS M ((V 36%nat) + 24) 2 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, ~ (((V 36%nat) + 24) <= bv_unsigned a < ((V 36%nat) + 24) + 2) -> M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> ~ (((V 36%nat) + 24) <= i < ((V 36%nat) + 24) + 2) -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb248c M) (st fx' R' 0xb2558 M')
        /\ (forall x, In x KS_va_vdKce1S -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 10) = Z_to_bv 64 ((V 36%nat) + 24)
        /\ getr R' (reg 11) = Z_to_bv 64 0
        /\ getr R' (reg 12) = Z_to_bv 64 ((((V 36%nat) + 24) / 8) + 2147450880)
        /\ getr R' (reg 13) = Z_to_bv 64 0
        /\ L5.u8_at RSEGS M' ((V 36%nat) + 24) 0
        /\ L5.u8_at RSEGS M' ((V 36%nat) + 25) 0).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP2 ()) [] (Mh_0208_blobs1.kr_b_347 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdKce1L := BndP_Na_136.LibSegNa_va_vdKce1L.
Definition KS_va_vdKce1L : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdKce1L.regs0 Pva_vdKce1L.regs_out0).
Lemma KS_va_vdKce1L_ok : BG.kept_ok 80 Pva_vdKce1L.regs0 Pva_vdKce1L.regs_out0 KS_va_vdKce1L = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP2 ()) [] (Mh_0208_blobs1.kr_b_348 ())). Qed.
Lemma va_vdKce1L_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 37%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 -> 0 <= (V 41%nat) < 2 ^ 64 -> 0 <= (V 42%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 19) = Z_to_bv 64 ((V 36%nat) + 80) -> getr R (reg 20) = Z_to_bv 64 (V 36%nat) -> getr R (reg 25) = Z_to_bv 64 2147450880 ->
  7036928 <= (V 36%nat) <= 140737488355232 -> aligned (V 36%nat) 8 -> (2147446784 + 17592186048512 <= (V 36%nat) \/ (V 36%nat) + 96 <= 2147446784) -> L5KA.zeros_at M ((((V 36%nat) + 24) / 8) + 2147450880) 1 ->
  L5KA.zeros_at M ((((V 36%nat) + 32) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 36%nat) + 40) / 8) + 2147450880) 1 -> L5.u64_at RSEGS M ((V 36%nat) + 80) (V 37%nat) -> 4120 <= (V 37%nat) <= 140737488355328 ->
  aligned (V 37%nat) 8 -> (2147446784 + 17592186048512 <= ((V 37%nat) - 24) \/ ((V 37%nat) - 24) + 24 <= 2147446784) -> L5KA.zeros_at M ((((V 37%nat) - 16) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 37%nat) - 24) / 8) + 2147450880) 1 ->
  L5.u32_at RSEGS M ((V 37%nat) - 24) 1 -> L5.u32_at RSEGS M ((V 37%nat) - 16) 1 -> L5.u8_at RSEGS M ((V 36%nat) + 24) (V 40%nat) -> 0 <= (V 40%nat) <= 255 ->
  Z.testbit (V 40%nat) 0 = true -> L5.u64_at RSEGS M ((V 36%nat) + 32) (V 41%nat) -> 0 <= (V 41%nat) <= 2147483648 -> L5.u64_at RSEGS M ((V 36%nat) + 40) (V 42%nat) ->
  4096 <= (V 42%nat) <= 140737488355328 -> L5.writable RSEGS M ((V 36%nat) + 32) 8 -> L5.writable RSEGS M (V 42%nat) 1 -> (2147446784 + 17592186048512 <= (V 42%nat) \/ (V 42%nat) + 1 <= 2147446784) ->
  L5KA.zeros_at M (((V 42%nat) / 8) + 2147450880) 1 -> ((V 42%nat) + 1 <= (V 36%nat) \/ (V 36%nat) + 96 <= (V 42%nat)) -> ((V 42%nat) + 1 <= ((V 37%nat) - 24) \/ ((V 37%nat) - 24) + 24 <= (V 42%nat)) ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, ~ (((V 36%nat) + 32) <= bv_unsigned a < ((V 36%nat) + 32) + 8) -> ~ (((V 42%nat) + 0) <= bv_unsigned a < ((V 42%nat) + 0) + 1) -> M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> ~ (((V 36%nat) + 32) <= i < ((V 36%nat) + 32) + 8) -> ~ (((V 42%nat) + 0) <= i < ((V 42%nat) + 0) + 1) -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb248c M) (st fx' R' 0xb2558 M')
        /\ (forall x, In x KS_va_vdKce1L -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 10) = Z_to_bv 64 ((V 36%nat) + 24)
        /\ getr R' (reg 11) = Z_to_bv 64 ((V 36%nat) + 32)
        /\ getr R' (reg 12) = Z_to_bv 64 0
        /\ L5.u64_at RSEGS M' ((V 36%nat) + 32) 0
        /\ L5.u8_at RSEGS M' (V 42%nat) 0).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP2 ()) [] (Mh_0208_blobs1.kr_b_349 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdWO := BndP_Na_137.LibSegNa_va_vdWO.
Definition KS_va_vdWO : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdWO.regs0 Pva_vdWO.regs_out0).
Lemma KS_va_vdWO_ok : BG.kept_ok 80 Pva_vdWO.regs0 Pva_vdWO.regs_out0 KS_va_vdWO = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP2 ()) [] (Mh_0208_blobs1.kr_b_350 ())). Qed.
Lemma va_vdWO_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 ((V 2%nat) - 160) -> getr R (reg 9) = Z_to_bv 64 ((V 2%nat) - 160) -> getr R (reg 10) = Z_to_bv 64 ((V 36%nat) + 24) -> getr R (reg 20) = Z_to_bv 64 (V 36%nat) -> getr R (reg 25) = Z_to_bv 64 2147450880 ->
  7036928 <= (V 36%nat) <= 140737488355232 -> aligned (V 36%nat) 8 -> (2147446784 + 17592186048512 <= (V 36%nat) \/ (V 36%nat) + 96 <= 2147446784) -> 140735332487328 <= (V 2%nat) <= 140737488355328 ->
  aligned (V 2%nat) 32 -> L5.writable RSEGS M ((V 2%nat) - 120) 8 -> L5.writable RSEGS M ((V 2%nat) - 132) 1 -> L5.writable RSEGS M ((V 2%nat) - 128) 4 ->
  L5.writable RSEGS M ((V 2%nat) - 124) 1 -> (((V 2%nat) - 160) + 160 <= (V 36%nat) \/ (V 36%nat) + 96 <= ((V 2%nat) - 160)) -> L5.img_clear M 65536 1409024 -> L5KA.zeros_at M 2147626374 1 ->
  L5KA.zeros_at M 2147461499 1 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, ~ (((V 2%nat) - 132) <= bv_unsigned a < ((V 2%nat) - 132) + 1) -> ~ (((V 2%nat) - 128) <= bv_unsigned a < ((V 2%nat) - 128) + 4) -> ~ (((V 2%nat) - 124) <= bv_unsigned a < ((V 2%nat) - 124) + 1) -> ~ (((V 2%nat) - 120) <= bv_unsigned a < ((V 2%nat) - 120) + 8) -> M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> ~ (((V 2%nat) - 132) <= i < ((V 2%nat) - 132) + 1) -> ~ (((V 2%nat) - 128) <= i < ((V 2%nat) - 128) + 4) -> ~ (((V 2%nat) - 124) <= i < ((V 2%nat) - 124) + 1) -> ~ (((V 2%nat) - 120) <= i < ((V 2%nat) - 120) + 8) -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb2558 M) (st fx' R' 0xb25ac M')
        /\ (forall x, In x KS_va_vdWO -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 730480
        /\ getr R' (reg 10) = Z_to_bv 64 ((V 2%nat) - 132)
        /\ getr R' (reg 11) = Z_to_bv 64 ((V 2%nat) - 120)
        /\ L5.u8_at RSEGS M' ((V 2%nat) - 124) 46
        /\ L5.u32_at RSEGS M' ((V 2%nat) - 128) 0
        /\ L5.u8_at RSEGS M' ((V 2%nat) - 132) 0
        /\ L5.u64_at RSEGS M' ((V 2%nat) - 120) ((V 36%nat) + 24)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP2 ()) [] (Mh_0208_blobs1.kr_b_351 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdW := BndP_Na_137.LibSegNa_va_vdW.
Definition KS_va_vdW : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdW.regs0 Pva_vdW.regs_out0).
Lemma KS_va_vdW_ok : BG.kept_ok 80 Pva_vdW.regs0 Pva_vdW.regs_out0 KS_va_vdW = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP2 ()) [] (Mh_0208_blobs1.kr_b_352 ())). Qed.
Lemma va_vdW_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb25b0 M) (st fx' R' 0xba7f8 M')
        /\ (forall x, In x KS_va_vdW -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 730548).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP2 ()) [] (Mh_0208_blobs1.kr_b_353 ())). Qed.
(* [comment removed for export] *)

End VASVDP2.

End VaSVdP2.
Module VaSVdP3.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0007.   (* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From stdpp.bitvector Require Import definitions.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BigLinkBase. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.CatExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030.CatSim OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.SeqExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.StoreOk OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.Hoare OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.ShapeAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.SpinAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.HeapIface OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.AxSymRun3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.BigLinkBase OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.BigLinkGlue OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.L5Defs OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5Kn OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5KnA.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0177. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0177.
Import ListNotations. Import AX2. Import AX2B. Import AX2S.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Ltac Zify.zify_convert_to_euclidean_division_equations_flag ::= constr:(false).
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_VaSVdP3 () := "C47Corelib7Classes9Morphisms6ProperC47Corelib7Classes?RelationClasses9ReflexiveC47Corelib7Classes9Morphisms:forall_defC46Stdlib5Lists4List2hdC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA6fframeC46Stdlib5Lists4List4inclC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55rangeC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR6regionC47Corelib4Init5Logic8eq_ind_rC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K@nth_error_singleC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K6zagreeI47Corelib4Init9Datatypes6option00C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA6zpolyAK47Corelib4Init9Datatypes6option01I47Corelib4Init5Logic2eq00K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1N02I45stdpp9bitvector;definitions2bv00C56Stdlib6ZArith6BinInt1Z6moduloC45stdpp9bitvector;definitions7Z_to_bvC45stdpp9bitvector;definitions;bv_unsignedC45stdpp9bitvector;definitions5bv_eqC45stdpp9bitvector;definitions7bv_wrapK47Corelib7Numbers7BinNums1Z02C56Stdlib6ZArith6BinInt1Z3powC56Stdlib6ZArith6BinInt1Z>pow_pos_nonnegC56Stdlib6ZArith6BinInt1Z2ltC56Stdlib6ZArith6BinInt1Z2leC56Stdlib6ZArith6BinInt1Z:pow_nonnegK47Corelib4Init9Datatypes4list01I47Corelib4Init9Datatypes4list00K46Stdlib9micromega6VarMap1t01I46Stdlib9micromega6VarMap1t00I46Stdlib9micromega=RingMicromega7Formula00K46Stdlib9micromega7EnvRing5PExpr01K46Stdlib9micromega7EnvRing5PExpr07K46Stdlib9micromega=RingMicromega7Formula01K46Stdlib9micromega5Tauto8GFormula04K46Stdlib9micromega5Tauto8GFormula07C46Stdlib9micromega5Tauto8BFormulaK47Corelib4Init5Logic2eq01C46Stdlib9micromega:ZMicromega=ZTautoCheckerC46Stdlib9micromega6VarMap4findC46Stdlib9micromega:ZMicromegaCZTautoChecker_soundC56Stdlib6ZArith6BinInt1Z7mod_modC45stdpp9bitvector;definitions@Z_to_bv_unsignedC6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26edenotC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA<zpolyA_soundC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG@word_of_unsignedI6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX23env00I47Corelib4Init9Datatypes3nat00I47Corelib7Numbers7BinNums1Z00I6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr00K47Corelib7Numbers7BinNums8positive03C5ARocqVerifyHarness?AgentSubmission;BigLinkBase2BL2MMI47Corelib7Numbers7BinNums1N00I47Corelib4Init5Logic3and00K47Corelib7Numbers7BinNums1Z01I47Corelib4Init5Logic4True00I46Stdlib9micromega:ZMicromega;ZArithProof00C46Stdlib9micromega5Tauto5eKindI47Corelib4Init9Datatypes4unit00K46Stdlib9micromega5Tauto4kind01K46Stdlib9micromega=RingMicromega3Op201K47Corelib4Init9Datatypes4unit01I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01I47Corelib4Init5Logic5False00K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX25saddr01K47Corelib4Init9Datatypes3nat02K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry01C5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S9kentry_okC56Stdlib6ZArith6BinInt1Z3addC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u64_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=u64_of_KWord8C5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsK47Corelib4Init9Datatypes3nat01C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u32_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=u32_of_KWord4C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55u8_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K<u8_of_KWord1I47Corelib4Init5Peano2le00C56Stdlib6ZArith6BinInt1Z6of_natC5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S4flatC6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26adenotC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K8adenot_eC47Corelib4Init5Logic6eq_indC45stdpp9bitvector;definitionsDbv_unsigned_in_rangeC45stdpp9bitvector;definitions:bv_modulusC4ELinuxProcessSemantics?LinuxProcessSem6BvBase=Z_to_le_bytesK46Stdlib9micromega6VarMap1t02K46Stdlib9micromega7EnvRing5PExpr02K46Stdlib9micromega5Tauto8GFormula05K47Corelib4Init9Datatypes6option02K46Stdlib9micromega5Tauto8GFormula08C56Stdlib6ZArith6BinInt1Z9mod_smallK45stdpp9bitvector;definitions2bv01C45stdpp9bitvector;definitions6bv_addC56Stdlib6ZArith6BinInt1Z?add_mod_idemp_lC45stdpp9bitvector;definitions?bv_add_unsignedC56Stdlib6ZArith6BinInt1Z3divK47Corelib4Init9Datatypes4list02C47Corelib4Init5Logic7f_equalC35stdpp7tactics<f_equal_helpC56Stdlib6ZArith6BinInt1Z6shiftrC56Stdlib6ZArith6BinInt1Z?shiftr_div_pow2K47Corelib4Init5Logic3and01C47Corelib4Init5Logic9False_indC4ARocqVerifyHarness?AgentSubmission8PropExec3rdnC4ELinuxProcessSemantics?LinuxProcessSem>RiscvSemantics@word_to_le_bytesC4ARocqVerifyHarness?AgentSubmission8PropExec7seg_romK46Stdlib9micromega=RingMicromega3Op203K46Stdlib9micromega=RingMicromega3Op205K47Corelib4Init5Logic4True01K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry0:C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L57definedC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K?defined_of_KUnkC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA@u8_of_KWord1_modK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry02C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA8zeros_atC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA>zeros_of_KZeroK47Corelib7Numbers7BinNums8positive01C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K9land_le_rC56Stdlib6ZArith6BinInt1Z4landK46Stdlib9micromega=RingMicromega5Psatz02K46Stdlib9micromega=RingMicromega5Psatz06K46Stdlib9micromega:ZMicromega;ZArithProof02K46Stdlib9micromega6VarMap1t03K46Stdlib9micromega5Tauto8GFormula03K46Stdlib9micromega:ZMicromega;ZArithProof01C56Stdlib6ZArith6BinInt1Z3lorC56Stdlib6ZArith6BinInt1Z:lor_nonnegC56Stdlib6ZArith6BinInt1Z6eq_decC47Corelib4Init5Logic3notI47Corelib4Init6Specif7sumbool00C56Stdlib6ZArith6BinInt1Z7lor_0_lC56Stdlib6ZArith6BinInt1Z7lor_0_rC56Stdlib6ZArith6BinInt1Z4log2C56Stdlib6ZArith6BinInt1Z3maxC56Stdlib6ZArith6BinInt1Z<log2_lt_pow2C56Stdlib6ZArith6BinInt1Z:max_lub_ltC56Stdlib6ZArith6BinInt1Z8log2_lorC56Stdlib6ZArith6BinInt1Z>log2_lt_cancelC47Corelib4Init5Logic5proj2C56Stdlib6ZArith6BinInt1Z9land_commC46Stdlib5Lists4List2InC56Stdlib6ZArith6BinInt1Z3ltbC47Corelib4Init9Datatypes4andbC47Corelib5Lists7ListDef3seqC46Stdlib5Lists4List7forallbC47Corelib4Init5Logic3iffC47Corelib7Classes9MorphismsDiff_impl_subrelationC46Stdlib5Lists4List>forallb_forallC56Stdlib6ZArith6BinInt1Z6to_natC47Corelib4Init3Nat3addC47Corelib4Init5Peano2ltC46Stdlib5Lists4List6in_seqC46Stdlib9micromega;ZifyClasses9and_morphC56Stdlib6ZArith6BinInt1Z8max_specI47Corelib4Init5Logic2or00K47Corelib7Numbers7BinNums1Z03K46Stdlib9micromega7EnvRing3Pol01K46Stdlib9micromega=RingMicromega5Psatz04K46Stdlib9micromega5Tauto8GFormula06K46Stdlib9micromega7EnvRing5PExpr03C46Stdlib9micromega;ZifyClasses;rew_iff_revC56Stdlib6ZArith4Znat5Z2Nat2idC47Corelib4Init9Datatypes9andb_propC46Stdlib9micromega9SatDivModCZ_mod_nonneg_nonnegC56Stdlib6ZArith6BinInt1Z7div_modC56Stdlib6ZArith6BinInt1Z3mulC56Stdlib6ZArith6BinInt1Z=mod_pos_boundC56Stdlib6ZArith6BinInt1Z=mod_neg_boundC56Stdlib5omega8PreOmega1Z;div_0_r_extC56Stdlib5omega8PreOmega1Z;mod_0_r_extK46Stdlib9micromega5Tauto8GFormula01C56Stdlib6ZArith6BinInt1Z3lebC46Stdlib9micromega;ZifyClasses5mkappC46Stdlib9micromega;ZifyClasses5mkrelC46Stdlib9micromega;ZifyClasses6mkapp2K46Stdlib9micromega5Tauto8GFormula0:C46Stdlib9micromega8ZifyInst@of_nat_to_nat_eqC56Stdlib6ZArith4Znat5Nat2Z6inj_leC56Stdlib5Arith8PeanoNat3Nat3addC56Stdlib6ZArith4Znat5Nat2Z7inj_addC56Stdlib6ZArith4Znat5Nat2Z6inj_ltK46Stdlib9micromega5Tauto4kind02C6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG7kept_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP39Pva_vdDV25regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP39Pva_vdDV29regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;KS_va_vdDV2C46Stdlib5Lists4List2tlC4ELinuxProcessSemantics5Riscv7Prelude5bvmapc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP37alignedC56Stdlib6ZArith6BinInt1Z3subC47Corelib4Init5Logic5proj1C4ARocqVerifyHarness?AgentSubmission8PropExec4getrK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX23env01C6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX22evC56Stdlib6NArith6BinNat1N6to_natC5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA6za_litC5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA8za_startK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr02K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr01K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr03C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K:zagree_allc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3=word_of_zpolyC47Corelib4Init5Logic6eq_symC47Corelib4Init5Logic8eq_transC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG5slotsC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG@regs_ok_of_slotsC5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S7regs_okK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry06K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry05K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry08C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA:zpolyA_valC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KRangeC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KAlignC46Stdlib9micromega9SatDivModCZ_div_nonneg_nonnegK46Stdlib9micromega=RingMicromega5Psatz07K46Stdlib9micromega=RingMicromega5Psatz05K46Stdlib9micromega7EnvRing5PExpr05C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA<kentry_KZeroC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KWord8K46Stdlib9micromega7EnvRing5PExpr04C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KWord4K47Corelib5Lists7ListDef6Forall01C5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S7know_okC5ARocqVerifyHarness?AgentSubmission7Mh_00387StoreOk9mem_growsC4ARocqVerifyHarness?AgentSubmission8PropExec4mkstI47Corelib4Init5Logic2ex00C5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP8bfact_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP39Pva_vdDV2<seg_sound_axI47Corelib4Init9Datatypes4prod00K47Corelib4Init9Datatypes4prod01C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=outside_nil_eC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG9kept_regsC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG7out_regC5ARocqVerifyHarness?AgentSubmission7Mh_01129AxSymRun3<expr_vars_ltC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K9zagree_ltK47Corelib4Init5Logic2ex01C5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA7za_stepC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K<kentry_KDisjK47Corelib5Lists7ListDef6Forall02I5ARocqVerifyHarness?AgentSubmission7Mh_00306CatSim6msteps00C46Stdlib5Lists4List9nth_errorC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR5ps_pcC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR7ps_regsC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP:regions_okC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP7outsideC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR8ps_cellsC5ARocqVerifyHarness?AgentSubmission7Mh_01129AxSymRun39env_agreeC47Corelib5Lists7ListDef3nthK4ELinuxProcessSemantics5Riscv5Instr5aluop01I6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry00I6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR9post_spec00c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP39Pva_vdDV23PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP39Pva_vdDV22F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP39Pva_vdDV23NX0I4ARocqVerifyHarness?AgentSubmission8PropExec7FPState00K47Corelib7Numbers7BinNums1N01K4ELinuxProcessSemantics5Riscv5Instr5aluop07c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP39Pva_vdDV23kn0I5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP5bfact00c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP39Pva_vdDV23ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3>KS_va_vdDV2_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3:Pva_vdDV1z5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3:Pva_vdDV1z9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3<KS_va_vdDV1zc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3:Pva_vdDV1z<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3:Pva_vdDV1z3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3:Pva_vdDV1z2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3:Pva_vdDV1z3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3:Pva_vdDV1z3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3:Pva_vdDV1z3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3?KS_va_vdDV1z_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3:Pva_vdDV1n5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3:Pva_vdDV1n9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3<KS_va_vdDV1nc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3:Pva_vdDV1n<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3:Pva_vdDV1n3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3:Pva_vdDV1n2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3:Pva_vdDV1n3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3:Pva_vdDV1n3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3:Pva_vdDV1n3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3?KS_va_vdDV1n_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP39Pva_vdDKz5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP39Pva_vdDKz9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;KS_va_vdDKzc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP39Pva_vdDKz<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP39Pva_vdDKz3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP39Pva_vdDKz2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP39Pva_vdDKz3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP39Pva_vdDKz3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP39Pva_vdDKz3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3>KS_va_vdDKz_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP39Pva_vdDKn5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP39Pva_vdDKn9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;KS_va_vdDKnc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP39Pva_vdDKn<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP39Pva_vdDKn3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP39Pva_vdDKn2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP39Pva_vdDKn3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP39Pva_vdDKn3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP39Pva_vdDKn3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3>KS_va_vdDKn_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP37Pva_vdC5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP37Pva_vdC9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP39KS_va_vdCc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP37Pva_vdC<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP37Pva_vdC3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP37Pva_vdC2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP37Pva_vdC3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP37Pva_vdC3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP37Pva_vdC3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3<KS_va_vdC_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;Pva_vdAk2e05regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;Pva_vdAk2e09regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3=KS_va_vdAk2e0C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L58writableK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry07C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K:kentry_KWrc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;Pva_vdAk2e0<seg_sound_axC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K>outside_cons_eC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG<unsigned_litC46Stdlib5Lists4List<nth_error_Inc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3>u32_of_KWord4ac7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;Pva_vdAk2e03PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;Pva_vdAk2e02F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;Pva_vdAk2e03NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;Pva_vdAk2e03kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;Pva_vdAk2e03ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3@KS_va_vdAk2e0_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;Pva_vdAk2e06cells0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;Pva_vdAk2e15regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;Pva_vdAk2e19regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3=KS_va_vdAk2e1C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K;kentry_KUnkc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;Pva_vdAk2e1<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;Pva_vdAk2e13PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;Pva_vdAk2e12F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;Pva_vdAk2e13NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;Pva_vdAk2e13kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;Pva_vdAk2e13ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3@KS_va_vdAk2e1_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;Pva_vdAk2e16cells0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;Pva_vdAk1e15regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;Pva_vdAk1e19regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3=KS_va_vdAk1e1c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;Pva_vdAk1e1<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;Pva_vdAk1e13PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;Pva_vdAk1e12F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;Pva_vdAk1e13NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;Pva_vdAk1e13kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3;Pva_vdAk1e13ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP37VASVDP3@KS_va_vdAk1e1_ok". Local Ltac lia := L5FastLia.plia.

Module VASVDP3.
Abbreviation RSEGS := Asan.M.loaded_segments.
Notation reg i := (Z_to_bv 5 (Z.of_nat i)) (only parsing).
Notation st fx R pc M := (@mkst fx R (Z_to_bv 64 pc) M (seg_rom Asan.M.loaded_segments)) (only parsing).

(* [comment removed for export] *)
Lemma word_of_zpoly E Vz e z : L5K.zagree E Vz e -> L5KA.zpolyA Vz e = Some z -> edenot E e = Z_to_bv 64 z.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_354 ())). Qed.
(* [comment removed for export] *)
Lemma u64_of_KWord8a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 8 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> L5.u64_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_355 ())). Qed.
Lemma u32_of_KWord4a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 4 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> L5.u32_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_356 ())). Qed.
Lemma u8_of_KWord1a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 1 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> 0 <= v < 256 -> a' = a + off -> L5.u8_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_357 ())). Qed.
(* [comment removed for export] *)
Lemma u8x2_of_KWord2a E M b off e a v a' v0 v1 : kentry_ok RSEGS E M (KWord (SA b off) 2 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> v0 = v mod 256 -> v1 = (v / 256) mod 256 ->
  L5.u8_at RSEGS M a' v0 /\ L5.u8_at RSEGS M (a' + 1) v1.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_358 ())). Qed.
Lemma defined_of_KUnka E M b off ne a n a' : kentry_ok RSEGS E M (KUnk (SA b off) ne) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E ne) = n -> a' = a + off -> L5.defined M a' n.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_359 ())). Qed.
Lemma u8_of_KWord1ma E M b off e a v a' v' : kentry_ok RSEGS E M (KWord (SA b off) 1 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> v' = v mod 256 -> L5.u8_at RSEGS M a' v'.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_360 ())). Qed.
Lemma zeros_of_KZeroa E M b off ne a n a' : kentry_ok RSEGS E M (KZero (SA b off) ne) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E ne) = n -> a' = a + off -> L5KA.zeros_at M a' n.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_361 ())). Qed.
Lemma land_byte a m : 0 <= a -> 0 <= m <= 255 -> 0 <= Z.land a m < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_362 ())). Qed.
Lemma lor_byte a b : 0 <= a < 256 -> 0 <= b < 256 -> 0 <= Z.lor a b < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_363 ())). Qed.
(* [comment removed for export] *)
Lemma land_le_l a m : 0 <= a -> 0 <= m -> Z.land a m <= a.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_364 ())). Qed.
Local Ltac zfacts :=
  repeat (match goal with |- context [Z.land ?a ?m] =>
    lazymatch goal with _ : 0 <= Z.land a m <= m |- _ => fail | _ => pose proof (L5K.land_le_r a m ltac:(lia) ltac:(lia)); pose proof (land_le_l a m ltac:(lia) ltac:(lia)) end end);
  repeat (match goal with |- context [?a / ?c] =>
    lazymatch goal with _ : 0 <= a / c |- _ => fail | _ => pose proof (Z.div_pos a c ltac:(lia) ltac:(lia)); pose proof (Z.mul_div_le a c ltac:(lia)) end end).
Local Ltac nonneg_tac := first [lia | match goal with |- 0 <= ?x mod ?m => exact (proj1 (Z.mod_pos_bound x m ltac:(clear; lia))) end | (zfacts; lia)].
Lemma setbit1_byte a : 0 <= a < 256 -> 0 <= (Z.land a 18446744073709551613 + 2) mod 2 ^ 64 < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_365 ())). Qed.
Local Ltac byte_go :=
  lazymatch goal with
  | |- 0 <= (Z.land _ 18446744073709551613 + 2) mod _ < 256 => apply setbit1_byte; lia
  | |- 0 <= Z.lor _ _ < 256 => apply lor_byte; byte_go
  | |- 0 <= Z.land _ _ < 256 => apply land_byte; [nonneg_tac | lia]
  | _ => zfacts; first [lia | rewrite !Z.mod_small by (rewrite ?Z.mod_small by lia; lia); lia]
  end.
Local Ltac byte_tac0 k := k; byte_go.
Tactic Notation "byte_tac" tactic(k) := byte_tac0 k.
(* [comment removed for export] *)
(* [comment removed for export] *)
Local Ltac solve_modk k :=
  repeat match goal with |- context [(?x mod 18446744073709551616) / _] => rewrite (Z.mod_small x 18446744073709551616) by (k; zfacts; lia) end;
  first [ rewrite Z.mod_small; [ first [reflexivity | k; lia] | k; L5K.zrange_tac ]
        | symmetry; eapply (Z.mod_unique_pos _ _ (-1)); k; unfold BL.MM; lia
        | symmetry; eapply (Z.mod_unique_pos _ _ 1); k; unfold BL.MM; lia ].
(* [comment removed for export] *)
Local Ltac pvz_hg tac := lazymatch goal with |- ?G0 => let PG := fresh "PGoal" in set (PG := G0); tac; subst PG end.
Local Ltac pvz_fold B k := lazymatch B with | ?A2 /\ ?B2 => pvz_fold B2 ltac:(fun T2 => let T := fresh "pvzT" in pose (T := A2 /\ T2); k T) | _ => k B end.
Local Ltac pvz_linconj := lazymatch goal with |- ?A /\ ?B => pvz_fold B ltac:(fun T => change_no_check (A /\ T)) | _ => idtac end.
Local Ltac pvz_unfold ZA := lazymatch type of ZA with forall j, _ = ?f j => tryif is_var f then unfold f else idtac | _ => idtac end.
Tactic Notation "evalEk" constr(ZA) tactic(k) :=
  L5K.norm_expr; eapply L5KA.zpolyA_val; [ apply (L5K.zagree_all _ _ _ ZA) | cbn [L5KA.zpolyA]; pvz_unfold ZA; reflexivity | solve_modk k ].
Tactic Notation "evalEk'" constr(ZA) constr(AG) tactic(k) :=
  L5K.norm_expr; eapply L5KA.zpolyA_val;
  [ eapply (L5K.zagree_lt _ _ _ _ _ AG); [apply (L5K.zagree_all _ _ _ ZA) | vm_compute; reflexivity] | cbn [L5KA.zpolyA]; pvz_unfold ZA; reflexivity | solve_modk k ].
(* [comment removed for export] *)
Definition aligned (a m : Z) : Prop := a mod m = 0.
Definition srl_range (a c lo hi : Z) : Prop := lo <= a / c <= hi.
(* [comment removed for export] *)
Local Ltac exactA H :=
  first [ exact H
        | lazymatch goal with
          | |- L5.u64_at _ _ ?a _ => lazymatch type of H with L5.u64_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.u8_at _ _ ?a _ => lazymatch type of H with L5.u8_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.u32_at _ _ ?a _ => lazymatch type of H with L5.u32_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.writable _ _ ?a _ => lazymatch type of H with L5.writable _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.defined _ ?a _ => lazymatch type of H with L5.defined _ ?b _ => replace a with b by (clear; lia) end
          | |- L5KA.zeros_at _ ?a _ => lazymatch type of H with L5KA.zeros_at _ ?b _ => replace a with b by (clear; lia) end
          end; exact H ].
(* [comment removed for export] *)
Local Ltac den_tac := first [reflexivity | lia | idtac].
(* [comment removed for export] *)
(* [comment removed for export] *)
Local Ltac apc_norm :=
  repeat match goal with
  | |- context [APC.eadd ?a ?b] => let t := eval vm_compute in (APC.eadd a b) in change (APC.eadd a b) with t
  | |- context [APC.esub ?a ?b] => let t := eval vm_compute in (APC.esub a b) in change (APC.esub a b) with t
  | |- context [APC.escale ?c ?e] => let t := eval vm_compute in (APC.escale c e) in change (APC.escale c e) with t
  | |- context [APC.eaddz ?a ?z] => let t := eval vm_compute in (APC.eaddz a z) in change (APC.eaddz a z) with t
  end.
(* [comment removed for export] *)
Local Ltac zp_norm := repeat (match goal with |- context [(?a <=? ?b) && (?c <? ?d)] => let r := eval vm_compute in ((a <=? b) && (c <? d)) in change ((a <=? b) && (c <? d)) with r end);
  repeat (match goal with |- context [2 ^ ?s] => let r := eval vm_compute in (2 ^ s) in change (2 ^ s) with r end); lazy beta iota zeta.
Local Ltac zp_mods := repeat match goal with |- context [(?x mod 18446744073709551616) / _] => rewrite (Z.mod_small x 18446744073709551616) by (zfacts; lia) end.
Local Ltac slotP ZA :=
  first [ assumption | reflexivity
        | (etransitivity; [eassumption|]; symmetry; eapply word_of_zpoly; [apply (L5K.zagree_all _ _ _ ZA) | cbn [L5KA.zpolyA]; pvz_unfold ZA; zp_norm; f_equal; zp_mods; first [reflexivity | clear; zfacts; lia | zfacts; lia]]) ].
(* [comment removed for export] *)
Local Ltac wordP' ZA AG :=
  eapply word_of_zpoly; [ eapply (L5K.zagree_lt _ _ _ _ _ AG); [apply (L5K.zagree_all _ _ _ ZA) | vm_compute; reflexivity]
                        | cbn [L5KA.zpolyA]; pvz_unfold ZA; zp_norm; f_equal; zp_mods; first [reflexivity | clear; zfacts; lia | zfacts; lia] ].
(* [comment removed for export] *)
Module Pva_vdDV2 := BndP_Na_135.LibSegNa_va_vdDV2.
Definition KS_va_vdDV2 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdDV2.regs0 Pva_vdDV2.regs_out0).
Lemma KS_va_vdDV2_ok : BG.kept_ok 80 Pva_vdDV2.regs0 Pva_vdDV2.regs_out0 KS_va_vdDV2 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_366 ())). Qed.
Lemma va_vdDV2_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 37%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 19) = Z_to_bv 64 ((V 36%nat) + 80) -> getr R (reg 20) = Z_to_bv 64 (V 36%nat) -> getr R (reg 25) = Z_to_bv 64 2147450880 -> getr R (reg 27) = Z_to_bv 64 ((((V 36%nat) + 80) / 8) + 2147450880) ->
  7036928 <= (V 36%nat) <= 140737488355232 -> aligned (V 36%nat) 8 -> (2147446784 + 17592186048512 <= (V 36%nat) \/ (V 36%nat) + 96 <= 2147446784) -> L5KA.zeros_at M ((((V 36%nat) + 80) / 8) + 2147450880) 1 ->
  L5.u64_at RSEGS M ((V 36%nat) + 80) (V 37%nat) -> 4120 <= (V 37%nat) <= 140737488355328 -> aligned (V 37%nat) 8 -> (2147446784 + 17592186048512 <= ((V 37%nat) - 24) \/ ((V 37%nat) - 24) + 24 <= 2147446784) ->
  L5KA.zeros_at M ((((V 37%nat) - 16) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 37%nat) - 24) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 37%nat) - 20) / 8) + 2147450880) 1 -> L5.u32_at RSEGS M ((V 37%nat) - 24) 1 ->
  L5.u32_at RSEGS M ((V 37%nat) - 20) 2 -> L5.u32_at RSEGS M ((V 37%nat) - 16) 1 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb25b4 M) (st fx' R' 0xb2648 M')
        /\ (forall x, In x KS_va_vdDV2 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 10) = Z_to_bv 64 2
        /\ getr R' (reg 11) = Z_to_bv 64 2
        /\ getr R' (reg 12) = Z_to_bv 64 (V 37%nat)
        /\ getr R' (reg 13) = Z_to_bv 64 0
        /\ getr R' (reg 21) = Z_to_bv 64 ((V 36%nat) + 48)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_367 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdDV1z := BndP_Na_135.LibSegNa_va_vdDV1z.
Definition KS_va_vdDV1z : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdDV1z.regs0 Pva_vdDV1z.regs_out0).
Lemma KS_va_vdDV1z_ok : BG.kept_ok 80 Pva_vdDV1z.regs0 Pva_vdDV1z.regs_out0 KS_va_vdDV1z = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_368 ())). Qed.
Lemma va_vdDV1z_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 37%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 19) = Z_to_bv 64 ((V 36%nat) + 80) -> getr R (reg 20) = Z_to_bv 64 (V 36%nat) -> getr R (reg 25) = Z_to_bv 64 2147450880 -> getr R (reg 27) = Z_to_bv 64 ((((V 36%nat) + 80) / 8) + 2147450880) ->
  7036928 <= (V 36%nat) <= 140737488355232 -> aligned (V 36%nat) 8 -> (2147446784 + 17592186048512 <= (V 36%nat) \/ (V 36%nat) + 96 <= 2147446784) -> L5KA.zeros_at M ((((V 36%nat) + 80) / 8) + 2147450880) 1 ->
  L5.u64_at RSEGS M ((V 36%nat) + 80) (V 37%nat) -> 4120 <= (V 37%nat) <= 140737488355328 -> aligned (V 37%nat) 8 -> (2147446784 + 17592186048512 <= ((V 37%nat) - 24) \/ ((V 37%nat) - 24) + 24 <= 2147446784) ->
  L5KA.zeros_at M ((((V 37%nat) - 16) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 37%nat) - 24) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 37%nat) - 20) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 37%nat) - 8) / 8) + 2147450880) 1 ->
  L5.u32_at RSEGS M ((V 37%nat) - 24) 1 -> L5.u32_at RSEGS M ((V 37%nat) - 20) 1 -> L5.u32_at RSEGS M ((V 37%nat) - 16) 1 -> L5.u64_at RSEGS M ((V 37%nat) - 8) 0 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb25b4 M) (st fx' R' 0xb2648 M')
        /\ (forall x, In x KS_va_vdDV1z -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 10) = Z_to_bv 64 0
        /\ getr R' (reg 11) = Z_to_bv 64 0
        /\ getr R' (reg 12) = Z_to_bv 64 (V 37%nat)
        /\ getr R' (reg 13) = Z_to_bv 64 0
        /\ getr R' (reg 21) = Z_to_bv 64 ((V 36%nat) + 48)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_369 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdDV1n := BndP_Na_135.LibSegNa_va_vdDV1n.
Definition KS_va_vdDV1n : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdDV1n.regs0 Pva_vdDV1n.regs_out0).
Lemma KS_va_vdDV1n_ok : BG.kept_ok 80 Pva_vdDV1n.regs0 Pva_vdDV1n.regs_out0 KS_va_vdDV1n = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_370 ())). Qed.
Lemma va_vdDV1n_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 37%nat) < 2 ^ 64 -> 0 <= (V 43%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 19) = Z_to_bv 64 ((V 36%nat) + 80) -> getr R (reg 20) = Z_to_bv 64 (V 36%nat) -> getr R (reg 25) = Z_to_bv 64 2147450880 -> getr R (reg 27) = Z_to_bv 64 ((((V 36%nat) + 80) / 8) + 2147450880) ->
  7036928 <= (V 36%nat) <= 140737488355232 -> aligned (V 36%nat) 8 -> (2147446784 + 17592186048512 <= (V 36%nat) \/ (V 36%nat) + 96 <= 2147446784) -> L5KA.zeros_at M ((((V 36%nat) + 80) / 8) + 2147450880) 1 ->
  L5.u64_at RSEGS M ((V 36%nat) + 80) (V 37%nat) -> 4120 <= (V 37%nat) <= 140737488355328 -> aligned (V 37%nat) 8 -> (2147446784 + 17592186048512 <= ((V 37%nat) - 24) \/ ((V 37%nat) - 24) + 24 <= 2147446784) ->
  L5KA.zeros_at M ((((V 37%nat) - 16) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 37%nat) - 24) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 37%nat) - 20) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 37%nat) - 8) / 8) + 2147450880) 1 ->
  L5.u32_at RSEGS M ((V 37%nat) - 24) 1 -> L5.u32_at RSEGS M ((V 37%nat) - 20) 1 -> L5.u32_at RSEGS M ((V 37%nat) - 16) 1 -> L5.u64_at RSEGS M ((V 37%nat) - 8) (V 43%nat) ->
  1 <= (V 43%nat) <= 18446744073709551615 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb25b4 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_vdDV1n -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 730696
        /\ getr R' (reg 10) = Z_to_bv 64 ((V 36%nat) + 48)
        /\ getr R' (reg 11) = Z_to_bv 64 44
        /\ getr R' (reg 12) = Z_to_bv 64 (V 37%nat)
        /\ getr R' (reg 13) = Z_to_bv 64 0
        /\ getr R' (reg 21) = Z_to_bv 64 ((V 36%nat) + 48)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_371 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdDKz := BndP_Na_135.LibSegNa_va_vdDKz.
Definition KS_va_vdDKz : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdDKz.regs0 Pva_vdDKz.regs_out0).
Lemma KS_va_vdDKz_ok : BG.kept_ok 80 Pva_vdDKz.regs0 Pva_vdDKz.regs_out0 KS_va_vdDKz = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_372 ())). Qed.
Lemma va_vdDKz_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 37%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 19) = Z_to_bv 64 ((V 36%nat) + 80) -> getr R (reg 20) = Z_to_bv 64 (V 36%nat) -> getr R (reg 25) = Z_to_bv 64 2147450880 -> getr R (reg 27) = Z_to_bv 64 ((((V 36%nat) + 80) / 8) + 2147450880) ->
  7036928 <= (V 36%nat) <= 140737488355232 -> aligned (V 36%nat) 8 -> (2147446784 + 17592186048512 <= (V 36%nat) \/ (V 36%nat) + 96 <= 2147446784) -> L5KA.zeros_at M ((((V 36%nat) + 80) / 8) + 2147450880) 1 ->
  L5.u64_at RSEGS M ((V 36%nat) + 80) (V 37%nat) -> 4120 <= (V 37%nat) <= 140737488355328 -> aligned (V 37%nat) 8 -> (2147446784 + 17592186048512 <= ((V 37%nat) - 24) \/ ((V 37%nat) - 24) + 24 <= 2147446784) ->
  L5KA.zeros_at M ((((V 37%nat) - 16) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 37%nat) - 24) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 37%nat) - 8) / 8) + 2147450880) 1 -> L5.u32_at RSEGS M ((V 37%nat) - 24) 1 ->
  L5.u32_at RSEGS M ((V 37%nat) - 16) 0 -> L5.u64_at RSEGS M ((V 37%nat) - 8) 0 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb25b4 M) (st fx' R' 0xb26a0 M')
        /\ (forall x, In x KS_va_vdDKz -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 10) = Z_to_bv 64 0
        /\ getr R' (reg 11) = Z_to_bv 64 0
        /\ getr R' (reg 12) = Z_to_bv 64 (V 37%nat)
        /\ getr R' (reg 13) = Z_to_bv 64 0).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_373 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdDKn := BndP_Na_135.LibSegNa_va_vdDKn.
Definition KS_va_vdDKn : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdDKn.regs0 Pva_vdDKn.regs_out0).
Lemma KS_va_vdDKn_ok : BG.kept_ok 80 Pva_vdDKn.regs0 Pva_vdDKn.regs_out0 KS_va_vdDKn = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_374 ())). Qed.
Lemma va_vdDKn_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 37%nat) < 2 ^ 64 -> 0 <= (V 43%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 19) = Z_to_bv 64 ((V 36%nat) + 80) -> getr R (reg 20) = Z_to_bv 64 (V 36%nat) -> getr R (reg 25) = Z_to_bv 64 2147450880 -> getr R (reg 27) = Z_to_bv 64 ((((V 36%nat) + 80) / 8) + 2147450880) ->
  7036928 <= (V 36%nat) <= 140737488355232 -> aligned (V 36%nat) 8 -> (2147446784 + 17592186048512 <= (V 36%nat) \/ (V 36%nat) + 96 <= 2147446784) -> L5KA.zeros_at M ((((V 36%nat) + 80) / 8) + 2147450880) 1 ->
  L5.u64_at RSEGS M ((V 36%nat) + 80) (V 37%nat) -> 4120 <= (V 37%nat) <= 140737488355328 -> aligned (V 37%nat) 8 -> (2147446784 + 17592186048512 <= ((V 37%nat) - 24) \/ ((V 37%nat) - 24) + 24 <= 2147446784) ->
  L5KA.zeros_at M ((((V 37%nat) - 16) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 37%nat) - 24) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 37%nat) - 8) / 8) + 2147450880) 1 -> L5.u32_at RSEGS M ((V 37%nat) - 24) 1 ->
  L5.u32_at RSEGS M ((V 37%nat) - 16) 0 -> L5.u64_at RSEGS M ((V 37%nat) - 8) (V 43%nat) -> 1 <= (V 43%nat) <= 18446744073709551615 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb25b4 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_vdDKn -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 730784
        /\ getr R' (reg 10) = Z_to_bv 64 ((V 36%nat) + 48)
        /\ getr R' (reg 11) = Z_to_bv 64 44
        /\ getr R' (reg 12) = Z_to_bv 64 (V 37%nat)
        /\ getr R' (reg 13) = Z_to_bv 64 0).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_375 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdC := BndP_Na_135.LibSegNa_va_vdC.
Definition KS_va_vdC : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdC.regs0 Pva_vdC.regs_out0).
Lemma KS_va_vdC_ok : BG.kept_ok 80 Pva_vdC.regs0 Pva_vdC.regs_out0 KS_va_vdC = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_376 ())). Qed.
Lemma va_vdC_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 21) = Z_to_bv 64 ((V 36%nat) + 48) ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb2934 M) (st fx' R' 0xf4640 M')
        /\ (forall x, In x KS_va_vdC -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 731456
        /\ getr R' (reg 10) = Z_to_bv 64 ((V 36%nat) + 48)
        /\ getr R' (reg 11) = Z_to_bv 64 58).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_377 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdAk2e0 := BndP_Na_134.LibSegNa_va_vdAk2e0.
Definition KS_va_vdAk2e0 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdAk2e0.regs0 Pva_vdAk2e0.regs_out0).
Lemma KS_va_vdAk2e0_ok : BG.kept_ok 80 Pva_vdAk2e0.regs0 Pva_vdAk2e0.regs_out0 KS_va_vdAk2e0 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_378 ())). Qed.
Lemma va_vdAk2e0_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 37%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 19) = Z_to_bv 64 ((V 36%nat) + 80) -> getr R (reg 25) = Z_to_bv 64 2147450880 -> getr R (reg 27) = Z_to_bv 64 ((((V 36%nat) + 80) / 8) + 2147450880) ->
  7036928 <= (V 36%nat) <= 140737488355232 -> aligned (V 36%nat) 8 -> (2147446784 + 17592186048512 <= (V 36%nat) \/ (V 36%nat) + 96 <= 2147446784) -> L5KA.zeros_at M ((((V 36%nat) + 80) / 8) + 2147450880) 1 ->
  L5.u64_at RSEGS M ((V 36%nat) + 80) (V 37%nat) -> 4120 <= (V 37%nat) <= 140737488355328 -> aligned (V 37%nat) 8 -> (2147446784 + 17592186048512 <= ((V 37%nat) - 24) \/ ((V 37%nat) - 24) + 24 <= 2147446784) ->
  L5KA.zeros_at M ((((V 37%nat) - 16) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 37%nat) - 20) / 8) + 2147450880) 1 -> L5.u32_at RSEGS M ((V 37%nat) - 20) 2 -> L5.u32_at RSEGS M ((V 37%nat) - 16) 0 ->
  L5.writable RSEGS M ((V 37%nat) - 16) 4 -> (((V 37%nat) - 24) + 24 <= (V 36%nat) \/ (V 36%nat) + 96 <= ((V 37%nat) - 24)) ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, ~ (((V 37%nat) - 16) <= bv_unsigned a < ((V 37%nat) - 16) + 4) -> M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> ~ (((V 37%nat) - 16) <= i < ((V 37%nat) - 16) + 4) -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb2940 M) (st fx' R' 0xb29b8 M')
        /\ (forall x, In x KS_va_vdAk2e0 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 10) = Z_to_bv 64 ((V 37%nat) - 16)
        /\ getr R' (reg 11) = Z_to_bv 64 1
        /\ getr R' (reg 12) = Z_to_bv 64 ((((V 37%nat) - 16) / 8) + 2147450880)
        /\ getr R' (reg 13) = Z_to_bv 64 0
        /\ getr R' (reg 14) = Z_to_bv 64 2
        /\ L5.u32_at RSEGS M' ((V 37%nat) - 16) 1).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_379 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdAk2e1 := BndP_Na_135.LibSegNa_va_vdAk2e1.
Definition KS_va_vdAk2e1 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdAk2e1.regs0 Pva_vdAk2e1.regs_out0).
Lemma KS_va_vdAk2e1_ok : BG.kept_ok 80 Pva_vdAk2e1.regs0 Pva_vdAk2e1.regs_out0 KS_va_vdAk2e1 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_380 ())). Qed.
Lemma va_vdAk2e1_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 37%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 19) = Z_to_bv 64 ((V 36%nat) + 80) -> getr R (reg 25) = Z_to_bv 64 2147450880 -> getr R (reg 27) = Z_to_bv 64 ((((V 36%nat) + 80) / 8) + 2147450880) ->
  7036928 <= (V 36%nat) <= 140737488355232 -> aligned (V 36%nat) 8 -> (2147446784 + 17592186048512 <= (V 36%nat) \/ (V 36%nat) + 96 <= 2147446784) -> L5KA.zeros_at M ((((V 36%nat) + 80) / 8) + 2147450880) 1 ->
  L5.u64_at RSEGS M ((V 36%nat) + 80) (V 37%nat) -> 4120 <= (V 37%nat) <= 140737488355328 -> aligned (V 37%nat) 8 -> (2147446784 + 17592186048512 <= ((V 37%nat) - 24) \/ ((V 37%nat) - 24) + 24 <= 2147446784) ->
  L5KA.zeros_at M ((((V 37%nat) - 16) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 37%nat) - 20) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 37%nat) - 8) / 8) + 2147450880) 1 -> L5.u32_at RSEGS M ((V 37%nat) - 20) 2 ->
  L5.u32_at RSEGS M ((V 37%nat) - 16) 1 -> L5.defined M ((V 37%nat) - 8) 8 -> L5.writable RSEGS M ((V 37%nat) - 16) 4 -> L5.writable RSEGS M ((V 37%nat) - 8) 8 ->
  (((V 37%nat) - 24) + 24 <= (V 36%nat) \/ (V 36%nat) + 96 <= ((V 37%nat) - 24)) ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, ~ (((V 37%nat) - 16) <= bv_unsigned a < ((V 37%nat) - 16) + 4) -> ~ (((V 37%nat) - 8) <= bv_unsigned a < ((V 37%nat) - 8) + 8) -> M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> ~ (((V 37%nat) - 16) <= i < ((V 37%nat) - 16) + 4) -> ~ (((V 37%nat) - 8) <= i < ((V 37%nat) - 8) + 8) -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb2940 M) (st fx' R' 0xb29b8 M')
        /\ (forall x, In x KS_va_vdAk2e1 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 10) = Z_to_bv 64 ((V 37%nat) - 16)
        /\ getr R' (reg 11) = Z_to_bv 64 0
        /\ getr R' (reg 12) = Z_to_bv 64 ((((V 37%nat) - 16) / 8) + 2147450880)
        /\ getr R' (reg 13) = Z_to_bv 64 1
        /\ getr R' (reg 14) = Z_to_bv 64 2
        /\ L5.u32_at RSEGS M' ((V 37%nat) - 16) 0).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_381 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdAk1e1 := BndP_Na_134.LibSegNa_va_vdAk1e1.
Definition KS_va_vdAk1e1 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdAk1e1.regs0 Pva_vdAk1e1.regs_out0).
Lemma KS_va_vdAk1e1_ok : BG.kept_ok 80 Pva_vdAk1e1.regs0 Pva_vdAk1e1.regs_out0 KS_va_vdAk1e1 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_382 ())). Qed.
Lemma va_vdAk1e1_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 37%nat) < 2 ^ 64 -> 0 <= (V 45%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 19) = Z_to_bv 64 ((V 36%nat) + 80) -> getr R (reg 25) = Z_to_bv 64 2147450880 -> getr R (reg 27) = Z_to_bv 64 ((((V 36%nat) + 80) / 8) + 2147450880) ->
  7036928 <= (V 36%nat) <= 140737488355232 -> aligned (V 36%nat) 8 -> (2147446784 + 17592186048512 <= (V 36%nat) \/ (V 36%nat) + 96 <= 2147446784) -> L5KA.zeros_at M ((((V 36%nat) + 80) / 8) + 2147450880) 1 ->
  L5.u64_at RSEGS M ((V 36%nat) + 80) (V 37%nat) -> 4120 <= (V 37%nat) <= 140737488355328 -> aligned (V 37%nat) 8 -> (2147446784 + 17592186048512 <= ((V 37%nat) - 24) \/ ((V 37%nat) - 24) + 24 <= 2147446784) ->
  L5KA.zeros_at M ((((V 37%nat) - 16) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 37%nat) - 20) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 37%nat) - 8) / 8) + 2147450880) 1 -> L5.u32_at RSEGS M ((V 37%nat) - 20) (V 45%nat) ->
  L5.u32_at RSEGS M ((V 37%nat) - 16) 1 -> L5.defined M ((V 37%nat) - 8) 8 -> 0 <= (V 45%nat) <= 1 -> L5.writable RSEGS M ((V 37%nat) - 8) 8 ->
  (((V 37%nat) - 24) + 24 <= (V 36%nat) \/ (V 36%nat) + 96 <= ((V 37%nat) - 24)) ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, ~ (((V 37%nat) - 8) <= bv_unsigned a < ((V 37%nat) - 8) + 8) -> M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> ~ (((V 37%nat) - 8) <= i < ((V 37%nat) - 8) + 8) -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb2940 M) (st fx' R' 0xb29b8 M')
        /\ (forall x, In x KS_va_vdAk1e1 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 10) = Z_to_bv 64 ((V 37%nat) - 16)
        /\ getr R' (reg 11) = Z_to_bv 64 (V 45%nat)
        /\ getr R' (reg 12) = Z_to_bv 64 ((((V 37%nat) - 16) / 8) + 2147450880)
        /\ getr R' (reg 13) = Z_to_bv 64 1
        /\ getr R' (reg 14) = Z_to_bv 64 2).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP3 ()) [] (Mh_0208_blobs1.kr_b_383 ())). Qed.
(* [comment removed for export] *)

End VASVDP3.

End VaSVdP3.
Module VaSVdP4.
(* [comment removed for export] *)
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0007.   (* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From stdpp.bitvector Require Import definitions.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BigLinkBase. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.CatExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030.CatSim OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.SeqExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.StoreOk OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.Hoare OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.ShapeAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.SpinAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.HeapIface OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.AxSymRun3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.BigLinkBase OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.BigLinkGlue OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.L5Defs OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5Kn OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5KnA.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0177. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0177.
Import ListNotations. Import AX2. Import AX2B. Import AX2S.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Ltac Zify.zify_convert_to_euclidean_division_equations_flag ::= constr:(false).
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_VaSVdP4 () := "C47Corelib7Classes9Morphisms6ProperC47Corelib7Classes?RelationClasses9ReflexiveC47Corelib7Classes9Morphisms:forall_defC46Stdlib5Lists4List2hdC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA6fframeC46Stdlib5Lists4List4inclC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55rangeC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR6regionC47Corelib4Init5Logic8eq_ind_rC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K@nth_error_singleC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K6zagreeI47Corelib4Init9Datatypes6option00C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA6zpolyAK47Corelib4Init9Datatypes6option01I47Corelib4Init5Logic2eq00K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1N02I45stdpp9bitvector;definitions2bv00C56Stdlib6ZArith6BinInt1Z6moduloC45stdpp9bitvector;definitions7Z_to_bvC45stdpp9bitvector;definitions;bv_unsignedC45stdpp9bitvector;definitions5bv_eqC45stdpp9bitvector;definitions7bv_wrapK47Corelib7Numbers7BinNums1Z02C56Stdlib6ZArith6BinInt1Z3powC56Stdlib6ZArith6BinInt1Z>pow_pos_nonnegC56Stdlib6ZArith6BinInt1Z2ltC56Stdlib6ZArith6BinInt1Z2leC56Stdlib6ZArith6BinInt1Z:pow_nonnegK47Corelib4Init9Datatypes4list01I47Corelib4Init9Datatypes4list00K46Stdlib9micromega6VarMap1t01I46Stdlib9micromega6VarMap1t00I46Stdlib9micromega=RingMicromega7Formula00K46Stdlib9micromega7EnvRing5PExpr01K46Stdlib9micromega7EnvRing5PExpr07K46Stdlib9micromega=RingMicromega7Formula01K46Stdlib9micromega5Tauto8GFormula04K46Stdlib9micromega5Tauto8GFormula07C46Stdlib9micromega5Tauto8BFormulaK47Corelib4Init5Logic2eq01C46Stdlib9micromega:ZMicromega=ZTautoCheckerC46Stdlib9micromega6VarMap4findC46Stdlib9micromega:ZMicromegaCZTautoChecker_soundC56Stdlib6ZArith6BinInt1Z7mod_modC45stdpp9bitvector;definitions@Z_to_bv_unsignedC6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26edenotC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA<zpolyA_soundC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG@word_of_unsignedI6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX23env00I47Corelib4Init9Datatypes3nat00I47Corelib7Numbers7BinNums1Z00I6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr00K47Corelib7Numbers7BinNums8positive03C5ARocqVerifyHarness?AgentSubmission;BigLinkBase2BL2MMI47Corelib7Numbers7BinNums1N00I47Corelib4Init5Logic3and00K47Corelib7Numbers7BinNums1Z01I47Corelib4Init5Logic4True00I46Stdlib9micromega:ZMicromega;ZArithProof00C46Stdlib9micromega5Tauto5eKindI47Corelib4Init9Datatypes4unit00K46Stdlib9micromega5Tauto4kind01K46Stdlib9micromega=RingMicromega3Op201K47Corelib4Init9Datatypes4unit01I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01I47Corelib4Init5Logic5False00K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX25saddr01K47Corelib4Init9Datatypes3nat02K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry01C5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S9kentry_okC56Stdlib6ZArith6BinInt1Z3addC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u64_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=u64_of_KWord8C5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsK47Corelib4Init9Datatypes3nat01C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u32_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=u32_of_KWord4C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55u8_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K<u8_of_KWord1I47Corelib4Init5Peano2le00C56Stdlib6ZArith6BinInt1Z6of_natC5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S4flatC6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26adenotC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K8adenot_eC47Corelib4Init5Logic6eq_indC45stdpp9bitvector;definitionsDbv_unsigned_in_rangeC45stdpp9bitvector;definitions:bv_modulusC4ELinuxProcessSemantics?LinuxProcessSem6BvBase=Z_to_le_bytesK46Stdlib9micromega6VarMap1t02K46Stdlib9micromega7EnvRing5PExpr02K46Stdlib9micromega5Tauto8GFormula05K47Corelib4Init9Datatypes6option02K46Stdlib9micromega5Tauto8GFormula08C56Stdlib6ZArith6BinInt1Z9mod_smallK45stdpp9bitvector;definitions2bv01C45stdpp9bitvector;definitions6bv_addC56Stdlib6ZArith6BinInt1Z?add_mod_idemp_lC45stdpp9bitvector;definitions?bv_add_unsignedC56Stdlib6ZArith6BinInt1Z3divK47Corelib4Init9Datatypes4list02C47Corelib4Init5Logic7f_equalC35stdpp7tactics<f_equal_helpC56Stdlib6ZArith6BinInt1Z6shiftrC56Stdlib6ZArith6BinInt1Z?shiftr_div_pow2K47Corelib4Init5Logic3and01C47Corelib4Init5Logic9False_indC4ARocqVerifyHarness?AgentSubmission8PropExec3rdnC4ELinuxProcessSemantics?LinuxProcessSem>RiscvSemantics@word_to_le_bytesC4ARocqVerifyHarness?AgentSubmission8PropExec7seg_romK46Stdlib9micromega=RingMicromega3Op203K46Stdlib9micromega=RingMicromega3Op205K47Corelib4Init5Logic4True01K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry0:C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L57definedC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K?defined_of_KUnkC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA@u8_of_KWord1_modK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry02C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA8zeros_atC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA>zeros_of_KZeroK47Corelib7Numbers7BinNums8positive01C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K9land_le_rC56Stdlib6ZArith6BinInt1Z4landK46Stdlib9micromega=RingMicromega5Psatz02K46Stdlib9micromega=RingMicromega5Psatz06K46Stdlib9micromega:ZMicromega;ZArithProof02K46Stdlib9micromega6VarMap1t03K46Stdlib9micromega5Tauto8GFormula03K46Stdlib9micromega:ZMicromega;ZArithProof01C56Stdlib6ZArith6BinInt1Z3lorC56Stdlib6ZArith6BinInt1Z:lor_nonnegC56Stdlib6ZArith6BinInt1Z6eq_decC47Corelib4Init5Logic3notI47Corelib4Init6Specif7sumbool00C56Stdlib6ZArith6BinInt1Z7lor_0_lC56Stdlib6ZArith6BinInt1Z7lor_0_rC56Stdlib6ZArith6BinInt1Z4log2C56Stdlib6ZArith6BinInt1Z3maxC56Stdlib6ZArith6BinInt1Z<log2_lt_pow2C56Stdlib6ZArith6BinInt1Z:max_lub_ltC56Stdlib6ZArith6BinInt1Z8log2_lorC56Stdlib6ZArith6BinInt1Z>log2_lt_cancelC47Corelib4Init5Logic5proj2C56Stdlib6ZArith6BinInt1Z9land_commC46Stdlib5Lists4List2InC56Stdlib6ZArith6BinInt1Z3ltbC47Corelib4Init9Datatypes4andbC47Corelib5Lists7ListDef3seqC46Stdlib5Lists4List7forallbC47Corelib4Init5Logic3iffC47Corelib7Classes9MorphismsDiff_impl_subrelationC46Stdlib5Lists4List>forallb_forallC56Stdlib6ZArith6BinInt1Z6to_natC47Corelib4Init3Nat3addC47Corelib4Init5Peano2ltC46Stdlib5Lists4List6in_seqC46Stdlib9micromega;ZifyClasses9and_morphC56Stdlib6ZArith6BinInt1Z8max_specI47Corelib4Init5Logic2or00K47Corelib7Numbers7BinNums1Z03K46Stdlib9micromega7EnvRing3Pol01K46Stdlib9micromega=RingMicromega5Psatz04K46Stdlib9micromega5Tauto8GFormula06K46Stdlib9micromega7EnvRing5PExpr03C46Stdlib9micromega;ZifyClasses;rew_iff_revC56Stdlib6ZArith4Znat5Z2Nat2idC47Corelib4Init9Datatypes9andb_propC46Stdlib9micromega9SatDivModCZ_mod_nonneg_nonnegC56Stdlib6ZArith6BinInt1Z7div_modC56Stdlib6ZArith6BinInt1Z3mulC56Stdlib6ZArith6BinInt1Z=mod_pos_boundC56Stdlib6ZArith6BinInt1Z=mod_neg_boundC56Stdlib5omega8PreOmega1Z;div_0_r_extC56Stdlib5omega8PreOmega1Z;mod_0_r_extK46Stdlib9micromega5Tauto8GFormula01C56Stdlib6ZArith6BinInt1Z3lebC46Stdlib9micromega;ZifyClasses5mkappC46Stdlib9micromega;ZifyClasses5mkrelC46Stdlib9micromega;ZifyClasses6mkapp2K46Stdlib9micromega5Tauto8GFormula0:C46Stdlib9micromega8ZifyInst@of_nat_to_nat_eqC56Stdlib6ZArith4Znat5Nat2Z6inj_leC56Stdlib5Arith8PeanoNat3Nat3addC56Stdlib6ZArith4Znat5Nat2Z7inj_addC56Stdlib6ZArith4Znat5Nat2Z6inj_ltK46Stdlib9micromega5Tauto4kind02C6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG7kept_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVSS5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVSS9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4<KS_va_vdIVSSC46Stdlib5Lists4List2tlC4ELinuxProcessSemantics5Riscv7Prelude5bvmapc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP47alignedC56Stdlib6ZArith6BinInt1Z7testbitC47Corelib4Init5Logic5proj1C4ARocqVerifyHarness?AgentSubmission8PropExec4getrK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX23env01C6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX22evC56Stdlib6NArith6BinNat1N6to_natC5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA6za_litC5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA8za_startK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr02K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr01C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K:zagree_allc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4=word_of_zpolyC47Corelib4Init5Logic6eq_symC47Corelib4Init5Logic8eq_transC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG5slotsC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG@regs_ok_of_slotsC5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S7regs_okK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry06K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry05K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry08K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr03C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA:zpolyA_valC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KRangeC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KAlignC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K<kentry_KDisjC46Stdlib9micromega9SatDivModCZ_div_nonneg_nonnegK46Stdlib9micromega=RingMicromega5Psatz07K46Stdlib9micromega=RingMicromega5Psatz05K46Stdlib9micromega7EnvRing5PExpr05C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA<kentry_KZeroC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KWord1C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K@land1_bit0_falseK47Corelib5Lists7ListDef6Forall01C5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S7know_okC5ARocqVerifyHarness?AgentSubmission7Mh_00387StoreOk9mem_growsC4ARocqVerifyHarness?AgentSubmission8PropExec4mkstI47Corelib4Init5Logic2ex00C5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP8bfact_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVSS<seg_sound_axI47Corelib4Init9Datatypes4prod00K47Corelib4Init9Datatypes4prod01C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=outside_nil_eC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG9kept_regsC5ARocqVerifyHarness?AgentSubmission7Mh_01129AxSymRun3<expr_vars_ltC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K9zagree_ltK47Corelib4Init5Logic2ex01C5ARocqVerifyHarness?AgentSubmission7Mh_00079BigLinkZA7za_stepC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5KDkentry_KRange_andlitK47Corelib5Lists7ListDef6Forall02I5ARocqVerifyHarness?AgentSubmission7Mh_00306CatSim6msteps00C46Stdlib5Lists4List9nth_errorC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR5ps_pcC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR7ps_regsC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP:regions_okC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP7outsideC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR8ps_cellsC5ARocqVerifyHarness?AgentSubmission7Mh_01129AxSymRun39env_agreeC47Corelib5Lists7ListDef3nthC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG7out_regK4ELinuxProcessSemantics5Riscv5Instr5aluop01I6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry00I6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR9post_spec00c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVSS3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVSS2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVSS3NX0I4ARocqVerifyHarness?AgentSubmission8PropExec7FPState00K47Corelib4Init9Datatypes4bool02K47Corelib7Numbers7BinNums1N01K4ELinuxProcessSemantics5Riscv5Instr5aluop07K4ELinuxProcessSemantics5Riscv5Instr5aluop0:c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVSS3kn0I5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP5bfact00c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVSS3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4?KS_va_vdIVSS_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVSL5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVSL9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4<KS_va_vdIVSLC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K?land1_bit0_trueC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=kentry_KWord8c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVSL<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVSL3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVSL2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVSL3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVSL3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVSL3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4?KS_va_vdIVSL_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVLS5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVLS9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4<KS_va_vdIVLSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVLS<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVLS3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVLS2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVLS3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVLS3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVLS3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4?KS_va_vdIVLS_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVLL5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVLL9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4<KS_va_vdIVLLc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVLL<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVLL3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVLL2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVLL3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVLL3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIVLL3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4?KS_va_vdIVLL_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKSS5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKSS9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4<KS_va_vdIKSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKSS<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKSS3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKSS2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKSS3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKSS3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKSS3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4?KS_va_vdIKSS_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKSL5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKSL9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4<KS_va_vdIKSLc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKSL<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKSL3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKSL2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKSL3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKSL3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKSL3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4?KS_va_vdIKSL_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKLS5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKLS9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4<KS_va_vdIKLSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKLS<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKLS3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKLS2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKLS3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKLS3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKLS3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4?KS_va_vdIKLS_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKLL5regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKLL9regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4<KS_va_vdIKLLc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKLL<seg_sound_axc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKLL3PSSc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKLL2F0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKLL3NX0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKLL3kn0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4:Pva_vdIKLL3ps0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP47VASVDP4?KS_va_vdIKLL_ok". Local Ltac lia := L5FastLia.plia.

Module VASVDP4.
Abbreviation RSEGS := Asan.M.loaded_segments.
Notation reg i := (Z_to_bv 5 (Z.of_nat i)) (only parsing).
Notation st fx R pc M := (@mkst fx R (Z_to_bv 64 pc) M (seg_rom Asan.M.loaded_segments)) (only parsing).

(* [comment removed for export] *)
Lemma word_of_zpoly E Vz e z : L5K.zagree E Vz e -> L5KA.zpolyA Vz e = Some z -> edenot E e = Z_to_bv 64 z.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_384 ())). Qed.
(* [comment removed for export] *)
Lemma u64_of_KWord8a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 8 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> L5.u64_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_385 ())). Qed.
Lemma u32_of_KWord4a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 4 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> L5.u32_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_386 ())). Qed.
Lemma u8_of_KWord1a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 1 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> 0 <= v < 256 -> a' = a + off -> L5.u8_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_387 ())). Qed.
(* [comment removed for export] *)
Lemma u8x2_of_KWord2a E M b off e a v a' v0 v1 : kentry_ok RSEGS E M (KWord (SA b off) 2 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> v0 = v mod 256 -> v1 = (v / 256) mod 256 ->
  L5.u8_at RSEGS M a' v0 /\ L5.u8_at RSEGS M (a' + 1) v1.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_388 ())). Qed.
Lemma defined_of_KUnka E M b off ne a n a' : kentry_ok RSEGS E M (KUnk (SA b off) ne) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E ne) = n -> a' = a + off -> L5.defined M a' n.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_389 ())). Qed.
Lemma u8_of_KWord1ma E M b off e a v a' v' : kentry_ok RSEGS E M (KWord (SA b off) 1 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> v' = v mod 256 -> L5.u8_at RSEGS M a' v'.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_390 ())). Qed.
Lemma zeros_of_KZeroa E M b off ne a n a' : kentry_ok RSEGS E M (KZero (SA b off) ne) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E ne) = n -> a' = a + off -> L5KA.zeros_at M a' n.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_391 ())). Qed.
Lemma land_byte a m : 0 <= a -> 0 <= m <= 255 -> 0 <= Z.land a m < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_392 ())). Qed.
Lemma lor_byte a b : 0 <= a < 256 -> 0 <= b < 256 -> 0 <= Z.lor a b < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_393 ())). Qed.
(* [comment removed for export] *)
Lemma land_le_l a m : 0 <= a -> 0 <= m -> Z.land a m <= a.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_394 ())). Qed.
Local Ltac zfacts :=
  repeat (match goal with |- context [Z.land ?a ?m] =>
    lazymatch goal with _ : 0 <= Z.land a m <= m |- _ => fail | _ => pose proof (L5K.land_le_r a m ltac:(lia) ltac:(lia)); pose proof (land_le_l a m ltac:(lia) ltac:(lia)) end end);
  repeat (match goal with |- context [?a / ?c] =>
    lazymatch goal with _ : 0 <= a / c |- _ => fail | _ => pose proof (Z.div_pos a c ltac:(lia) ltac:(lia)); pose proof (Z.mul_div_le a c ltac:(lia)) end end).
Local Ltac nonneg_tac := first [lia | match goal with |- 0 <= ?x mod ?m => exact (proj1 (Z.mod_pos_bound x m ltac:(clear; lia))) end | (zfacts; lia)].
Lemma setbit1_byte a : 0 <= a < 256 -> 0 <= (Z.land a 18446744073709551613 + 2) mod 2 ^ 64 < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_395 ())). Qed.
Local Ltac byte_go :=
  lazymatch goal with
  | |- 0 <= (Z.land _ 18446744073709551613 + 2) mod _ < 256 => apply setbit1_byte; lia
  | |- 0 <= Z.lor _ _ < 256 => apply lor_byte; byte_go
  | |- 0 <= Z.land _ _ < 256 => apply land_byte; [nonneg_tac | lia]
  | _ => zfacts; first [lia | rewrite !Z.mod_small by (rewrite ?Z.mod_small by lia; lia); lia]
  end.
Local Ltac byte_tac0 k := k; byte_go.
Tactic Notation "byte_tac" tactic(k) := byte_tac0 k.
(* [comment removed for export] *)
(* [comment removed for export] *)
Local Ltac solve_modk k :=
  repeat match goal with |- context [(?x mod 18446744073709551616) / _] => rewrite (Z.mod_small x 18446744073709551616) by (k; zfacts; lia) end;
  first [ rewrite Z.mod_small; [ first [reflexivity | k; lia] | k; L5K.zrange_tac ]
        | symmetry; eapply (Z.mod_unique_pos _ _ (-1)); k; unfold BL.MM; lia
        | symmetry; eapply (Z.mod_unique_pos _ _ 1); k; unfold BL.MM; lia ].
(* [comment removed for export] *)
Local Ltac pvz_hg tac := lazymatch goal with |- ?G0 => let PG := fresh "PGoal" in set (PG := G0); tac; subst PG end.
Local Ltac pvz_fold B k := lazymatch B with | ?A2 /\ ?B2 => pvz_fold B2 ltac:(fun T2 => let T := fresh "pvzT" in pose (T := A2 /\ T2); k T) | _ => k B end.
Local Ltac pvz_linconj := lazymatch goal with |- ?A /\ ?B => pvz_fold B ltac:(fun T => change_no_check (A /\ T)) | _ => idtac end.
Local Ltac pvz_unfold ZA := lazymatch type of ZA with forall j, _ = ?f j => tryif is_var f then unfold f else idtac | _ => idtac end.
Tactic Notation "evalEk" constr(ZA) tactic(k) :=
  L5K.norm_expr; eapply L5KA.zpolyA_val; [ apply (L5K.zagree_all _ _ _ ZA) | cbn [L5KA.zpolyA]; pvz_unfold ZA; reflexivity | solve_modk k ].
Tactic Notation "evalEk'" constr(ZA) constr(AG) tactic(k) :=
  L5K.norm_expr; eapply L5KA.zpolyA_val;
  [ eapply (L5K.zagree_lt _ _ _ _ _ AG); [apply (L5K.zagree_all _ _ _ ZA) | vm_compute; reflexivity] | cbn [L5KA.zpolyA]; pvz_unfold ZA; reflexivity | solve_modk k ].
(* [comment removed for export] *)
Definition aligned (a m : Z) : Prop := a mod m = 0.
Definition srl_range (a c lo hi : Z) : Prop := lo <= a / c <= hi.
(* [comment removed for export] *)
Local Ltac exactA H :=
  first [ exact H
        | lazymatch goal with
          | |- L5.u64_at _ _ ?a _ => lazymatch type of H with L5.u64_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.u8_at _ _ ?a _ => lazymatch type of H with L5.u8_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.u32_at _ _ ?a _ => lazymatch type of H with L5.u32_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.writable _ _ ?a _ => lazymatch type of H with L5.writable _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.defined _ ?a _ => lazymatch type of H with L5.defined _ ?b _ => replace a with b by (clear; lia) end
          | |- L5KA.zeros_at _ ?a _ => lazymatch type of H with L5KA.zeros_at _ ?b _ => replace a with b by (clear; lia) end
          end; exact H ].
(* [comment removed for export] *)
Local Ltac den_tac := first [reflexivity | lia | idtac].
(* [comment removed for export] *)
(* [comment removed for export] *)
Local Ltac apc_norm :=
  repeat match goal with
  | |- context [APC.eadd ?a ?b] => let t := eval vm_compute in (APC.eadd a b) in change (APC.eadd a b) with t
  | |- context [APC.esub ?a ?b] => let t := eval vm_compute in (APC.esub a b) in change (APC.esub a b) with t
  | |- context [APC.escale ?c ?e] => let t := eval vm_compute in (APC.escale c e) in change (APC.escale c e) with t
  | |- context [APC.eaddz ?a ?z] => let t := eval vm_compute in (APC.eaddz a z) in change (APC.eaddz a z) with t
  end.
(* [comment removed for export] *)
Local Ltac zp_norm := repeat (match goal with |- context [(?a <=? ?b) && (?c <? ?d)] => let r := eval vm_compute in ((a <=? b) && (c <? d)) in change ((a <=? b) && (c <? d)) with r end);
  repeat (match goal with |- context [2 ^ ?s] => let r := eval vm_compute in (2 ^ s) in change (2 ^ s) with r end); lazy beta iota zeta.
Local Ltac zp_mods := repeat match goal with |- context [(?x mod 18446744073709551616) / _] => rewrite (Z.mod_small x 18446744073709551616) by (zfacts; lia) end.
Local Ltac slotP ZA :=
  first [ assumption | reflexivity
        | (etransitivity; [eassumption|]; symmetry; eapply word_of_zpoly; [apply (L5K.zagree_all _ _ _ ZA) | cbn [L5KA.zpolyA]; pvz_unfold ZA; zp_norm; f_equal; zp_mods; first [reflexivity | clear; zfacts; lia | zfacts; lia]]) ].
(* [comment removed for export] *)
Local Ltac wordP' ZA AG :=
  eapply word_of_zpoly; [ eapply (L5K.zagree_lt _ _ _ _ _ AG); [apply (L5K.zagree_all _ _ _ ZA) | vm_compute; reflexivity]
                        | cbn [L5KA.zpolyA]; pvz_unfold ZA; zp_norm; f_equal; zp_mods; first [reflexivity | clear; zfacts; lia | zfacts; lia] ].
(* [comment removed for export] *)
Module Pva_vdIVSS := BndP_Na_136.LibSegNa_va_vdIVSS.
Definition KS_va_vdIVSS : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdIVSS.regs0 Pva_vdIVSS.regs_out0).
Lemma KS_va_vdIVSS_ok : BG.kept_ok 80 Pva_vdIVSS.regs0 Pva_vdIVSS.regs_out0 KS_va_vdIVSS = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_396 ())). Qed.
Lemma va_vdIVSS_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 -> 0 <= (V 44%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 20) = Z_to_bv 64 (V 36%nat) -> getr R (reg 21) = Z_to_bv 64 ((V 36%nat) + 48) -> getr R (reg 25) = Z_to_bv 64 2147450880 ->
  7036928 <= (V 36%nat) <= 140737488355232 -> aligned (V 36%nat) 8 -> (2147446784 + 17592186048512 <= (V 36%nat) \/ (V 36%nat) + 96 <= 2147446784) -> L5KA.zeros_at M ((((V 36%nat) + 48) / 8) + 2147450880) 1 ->
  L5KA.zeros_at M ((((V 36%nat) + 24) / 8) + 2147450880) 1 -> L5.u8_at RSEGS M ((V 36%nat) + 48) (V 44%nat) -> 0 <= (V 44%nat) <= 44 -> Z.testbit (V 44%nat) 0 = false ->
  L5.u8_at RSEGS M ((V 36%nat) + 24) (V 40%nat) -> 0 <= (V 40%nat) <= 44 -> Z.testbit (V 40%nat) 0 = false ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb2648 M) (st fx' R' 0xb95f0 M')
        /\ (forall x, In x KS_va_vdIVSS -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 731152
        /\ getr R' (reg 10) = Z_to_bv 64 ((V 36%nat) + 48)
        /\ getr R' (reg 11) = Z_to_bv 64 (((V 36%nat) + ((V 44%nat) / 2)) + 49)
        /\ getr R' (reg 12) = Z_to_bv 64 ((V 36%nat) + 25)
        /\ getr R' (reg 13) = Z_to_bv 64 (((V 36%nat) + ((V 40%nat) / 2)) + 25)
        /\ getr R' (reg 14) = Z_to_bv 64 ((V 40%nat) / 2)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_397 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdIVSL := BndP_Na_136.LibSegNa_va_vdIVSL.
Definition KS_va_vdIVSL : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdIVSL.regs0 Pva_vdIVSL.regs_out0).
Lemma KS_va_vdIVSL_ok : BG.kept_ok 80 Pva_vdIVSL.regs0 Pva_vdIVSL.regs_out0 KS_va_vdIVSL = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_398 ())). Qed.
Lemma va_vdIVSL_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 -> 0 <= (V 41%nat) < 2 ^ 64 -> 0 <= (V 42%nat) < 2 ^ 64 -> 0 <= (V 44%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 20) = Z_to_bv 64 (V 36%nat) -> getr R (reg 21) = Z_to_bv 64 ((V 36%nat) + 48) -> getr R (reg 25) = Z_to_bv 64 2147450880 ->
  7036928 <= (V 36%nat) <= 140737488355232 -> aligned (V 36%nat) 8 -> (2147446784 + 17592186048512 <= (V 36%nat) \/ (V 36%nat) + 96 <= 2147446784) -> L5KA.zeros_at M ((((V 36%nat) + 48) / 8) + 2147450880) 1 ->
  L5KA.zeros_at M ((((V 36%nat) + 24) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 36%nat) + 40) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 36%nat) + 32) / 8) + 2147450880) 1 -> L5.u8_at RSEGS M ((V 36%nat) + 48) (V 44%nat) ->
  0 <= (V 44%nat) <= 44 -> Z.testbit (V 44%nat) 0 = false -> L5.u8_at RSEGS M ((V 36%nat) + 24) (V 40%nat) -> 0 <= (V 40%nat) <= 255 ->
  Z.testbit (V 40%nat) 0 = true -> L5.u64_at RSEGS M ((V 36%nat) + 32) (V 41%nat) -> 0 <= (V 41%nat) <= 2147483648 -> L5.u64_at RSEGS M ((V 36%nat) + 40) (V 42%nat) ->
  4096 <= (V 42%nat) <= 140737488355328 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb2648 M) (st fx' R' 0xb95f0 M')
        /\ (forall x, In x KS_va_vdIVSL -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 731152
        /\ getr R' (reg 10) = Z_to_bv 64 ((V 36%nat) + 48)
        /\ getr R' (reg 11) = Z_to_bv 64 (((V 36%nat) + ((V 44%nat) / 2)) + 49)
        /\ getr R' (reg 12) = Z_to_bv 64 (V 42%nat)
        /\ getr R' (reg 13) = Z_to_bv 64 ((V 41%nat) + (V 42%nat))
        /\ getr R' (reg 14) = Z_to_bv 64 (V 41%nat)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_399 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdIVLS := BndP_Na_136.LibSegNa_va_vdIVLS.
Definition KS_va_vdIVLS : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdIVLS.regs0 Pva_vdIVLS.regs_out0).
Lemma KS_va_vdIVLS_ok : BG.kept_ok 80 Pva_vdIVLS.regs0 Pva_vdIVLS.regs_out0 KS_va_vdIVLS = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_400 ())). Qed.
Lemma va_vdIVLS_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 -> 0 <= (V 44%nat) < 2 ^ 64 -> 0 <= (V 45%nat) < 2 ^ 64 -> 0 <= (V 46%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 20) = Z_to_bv 64 (V 36%nat) -> getr R (reg 21) = Z_to_bv 64 ((V 36%nat) + 48) -> getr R (reg 25) = Z_to_bv 64 2147450880 ->
  7036928 <= (V 36%nat) <= 140737488355232 -> aligned (V 36%nat) 8 -> (2147446784 + 17592186048512 <= (V 36%nat) \/ (V 36%nat) + 96 <= 2147446784) -> L5KA.zeros_at M ((((V 36%nat) + 48) / 8) + 2147450880) 1 ->
  L5KA.zeros_at M ((((V 36%nat) + 64) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 36%nat) + 56) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 36%nat) + 24) / 8) + 2147450880) 1 -> L5.u8_at RSEGS M ((V 36%nat) + 48) (V 44%nat) ->
  0 <= (V 44%nat) <= 255 -> Z.testbit (V 44%nat) 0 = true -> L5.u64_at RSEGS M ((V 36%nat) + 56) (V 45%nat) -> 0 <= (V 45%nat) <= 2147483648 ->
  L5.u64_at RSEGS M ((V 36%nat) + 64) (V 46%nat) -> 4096 <= (V 46%nat) <= 140737488355328 -> L5.u8_at RSEGS M ((V 36%nat) + 24) (V 40%nat) -> 0 <= (V 40%nat) <= 44 ->
  Z.testbit (V 40%nat) 0 = false ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb2648 M) (st fx' R' 0xb95f0 M')
        /\ (forall x, In x KS_va_vdIVLS -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 731152
        /\ getr R' (reg 10) = Z_to_bv 64 ((V 36%nat) + 48)
        /\ getr R' (reg 11) = Z_to_bv 64 ((V 45%nat) + (V 46%nat))
        /\ getr R' (reg 12) = Z_to_bv 64 ((V 36%nat) + 25)
        /\ getr R' (reg 13) = Z_to_bv 64 (((V 36%nat) + ((V 40%nat) / 2)) + 25)
        /\ getr R' (reg 14) = Z_to_bv 64 ((V 40%nat) / 2)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_401 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdIVLL := BndP_Na_135.LibSegNa_va_vdIVLL.
Definition KS_va_vdIVLL : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdIVLL.regs0 Pva_vdIVLL.regs_out0).
Lemma KS_va_vdIVLL_ok : BG.kept_ok 80 Pva_vdIVLL.regs0 Pva_vdIVLL.regs_out0 KS_va_vdIVLL = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_402 ())). Qed.
Lemma va_vdIVLL_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 -> 0 <= (V 41%nat) < 2 ^ 64 -> 0 <= (V 42%nat) < 2 ^ 64 -> 0 <= (V 44%nat) < 2 ^ 64 -> 0 <= (V 45%nat) < 2 ^ 64 -> 0 <= (V 46%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 20) = Z_to_bv 64 (V 36%nat) -> getr R (reg 21) = Z_to_bv 64 ((V 36%nat) + 48) -> getr R (reg 25) = Z_to_bv 64 2147450880 ->
  7036928 <= (V 36%nat) <= 140737488355232 -> aligned (V 36%nat) 8 -> (2147446784 + 17592186048512 <= (V 36%nat) \/ (V 36%nat) + 96 <= 2147446784) -> L5KA.zeros_at M ((((V 36%nat) + 48) / 8) + 2147450880) 1 ->
  L5KA.zeros_at M ((((V 36%nat) + 64) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 36%nat) + 56) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 36%nat) + 24) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 36%nat) + 40) / 8) + 2147450880) 1 ->
  L5KA.zeros_at M ((((V 36%nat) + 32) / 8) + 2147450880) 1 -> L5.u8_at RSEGS M ((V 36%nat) + 48) (V 44%nat) -> 0 <= (V 44%nat) <= 255 -> Z.testbit (V 44%nat) 0 = true ->
  L5.u64_at RSEGS M ((V 36%nat) + 56) (V 45%nat) -> 0 <= (V 45%nat) <= 2147483648 -> L5.u64_at RSEGS M ((V 36%nat) + 64) (V 46%nat) -> 4096 <= (V 46%nat) <= 140737488355328 ->
  L5.u8_at RSEGS M ((V 36%nat) + 24) (V 40%nat) -> 0 <= (V 40%nat) <= 255 -> Z.testbit (V 40%nat) 0 = true -> L5.u64_at RSEGS M ((V 36%nat) + 32) (V 41%nat) ->
  0 <= (V 41%nat) <= 2147483648 -> L5.u64_at RSEGS M ((V 36%nat) + 40) (V 42%nat) -> 4096 <= (V 42%nat) <= 140737488355328 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb2648 M) (st fx' R' 0xb95f0 M')
        /\ (forall x, In x KS_va_vdIVLL -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 731152
        /\ getr R' (reg 10) = Z_to_bv 64 ((V 36%nat) + 48)
        /\ getr R' (reg 11) = Z_to_bv 64 ((V 45%nat) + (V 46%nat))
        /\ getr R' (reg 12) = Z_to_bv 64 (V 42%nat)
        /\ getr R' (reg 13) = Z_to_bv 64 ((V 41%nat) + (V 42%nat))
        /\ getr R' (reg 14) = Z_to_bv 64 (V 41%nat)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_403 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdIKSS := BndP_Na_135.LibSegNa_va_vdIKSS.
Definition KS_va_vdIKSS : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdIKSS.regs0 Pva_vdIKSS.regs_out0).
Lemma KS_va_vdIKSS_ok : BG.kept_ok 80 Pva_vdIKSS.regs0 Pva_vdIKSS.regs_out0 KS_va_vdIKSS = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_404 ())). Qed.
Lemma va_vdIKSS_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 -> 0 <= (V 44%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 20) = Z_to_bv 64 (V 36%nat) -> getr R (reg 25) = Z_to_bv 64 2147450880 ->
  7036928 <= (V 36%nat) <= 140737488355232 -> aligned (V 36%nat) 8 -> (2147446784 + 17592186048512 <= (V 36%nat) \/ (V 36%nat) + 96 <= 2147446784) -> L5KA.zeros_at M ((((V 36%nat) + 48) / 8) + 2147450880) 1 ->
  L5KA.zeros_at M ((((V 36%nat) + 24) / 8) + 2147450880) 1 -> L5.u8_at RSEGS M ((V 36%nat) + 48) (V 44%nat) -> 0 <= (V 44%nat) <= 44 -> Z.testbit (V 44%nat) 0 = false ->
  L5.u8_at RSEGS M ((V 36%nat) + 24) (V 40%nat) -> 0 <= (V 40%nat) <= 44 -> Z.testbit (V 40%nat) 0 = false ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb26a0 M) (st fx' R' 0xb95f0 M')
        /\ (forall x, In x KS_va_vdIKSS -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 731444
        /\ getr R' (reg 10) = Z_to_bv 64 ((V 36%nat) + 48)
        /\ getr R' (reg 11) = Z_to_bv 64 (((V 36%nat) + ((V 44%nat) / 2)) + 49)
        /\ getr R' (reg 12) = Z_to_bv 64 ((V 36%nat) + 25)
        /\ getr R' (reg 13) = Z_to_bv 64 (((V 36%nat) + ((V 40%nat) / 2)) + 25)
        /\ getr R' (reg 14) = Z_to_bv 64 ((V 40%nat) / 2)
        /\ getr R' (reg 21) = Z_to_bv 64 ((V 36%nat) + 48)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_405 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdIKSL := BndP_Na_135.LibSegNa_va_vdIKSL.
Definition KS_va_vdIKSL : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdIKSL.regs0 Pva_vdIKSL.regs_out0).
Lemma KS_va_vdIKSL_ok : BG.kept_ok 80 Pva_vdIKSL.regs0 Pva_vdIKSL.regs_out0 KS_va_vdIKSL = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_406 ())). Qed.
Lemma va_vdIKSL_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 -> 0 <= (V 41%nat) < 2 ^ 64 -> 0 <= (V 42%nat) < 2 ^ 64 -> 0 <= (V 44%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 20) = Z_to_bv 64 (V 36%nat) -> getr R (reg 25) = Z_to_bv 64 2147450880 ->
  7036928 <= (V 36%nat) <= 140737488355232 -> aligned (V 36%nat) 8 -> (2147446784 + 17592186048512 <= (V 36%nat) \/ (V 36%nat) + 96 <= 2147446784) -> L5KA.zeros_at M ((((V 36%nat) + 48) / 8) + 2147450880) 1 ->
  L5KA.zeros_at M ((((V 36%nat) + 24) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 36%nat) + 40) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 36%nat) + 32) / 8) + 2147450880) 1 -> L5.u8_at RSEGS M ((V 36%nat) + 48) (V 44%nat) ->
  0 <= (V 44%nat) <= 44 -> Z.testbit (V 44%nat) 0 = false -> L5.u8_at RSEGS M ((V 36%nat) + 24) (V 40%nat) -> 0 <= (V 40%nat) <= 255 ->
  Z.testbit (V 40%nat) 0 = true -> L5.u64_at RSEGS M ((V 36%nat) + 32) (V 41%nat) -> 0 <= (V 41%nat) <= 2147483648 -> L5.u64_at RSEGS M ((V 36%nat) + 40) (V 42%nat) ->
  4096 <= (V 42%nat) <= 140737488355328 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb26a0 M) (st fx' R' 0xb95f0 M')
        /\ (forall x, In x KS_va_vdIKSL -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 731444
        /\ getr R' (reg 10) = Z_to_bv 64 ((V 36%nat) + 48)
        /\ getr R' (reg 11) = Z_to_bv 64 (((V 36%nat) + ((V 44%nat) / 2)) + 49)
        /\ getr R' (reg 12) = Z_to_bv 64 (V 42%nat)
        /\ getr R' (reg 13) = Z_to_bv 64 ((V 41%nat) + (V 42%nat))
        /\ getr R' (reg 14) = Z_to_bv 64 (V 41%nat)
        /\ getr R' (reg 21) = Z_to_bv 64 ((V 36%nat) + 48)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_407 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdIKLS := BndP_Na_135.LibSegNa_va_vdIKLS.
Definition KS_va_vdIKLS : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdIKLS.regs0 Pva_vdIKLS.regs_out0).
Lemma KS_va_vdIKLS_ok : BG.kept_ok 80 Pva_vdIKLS.regs0 Pva_vdIKLS.regs_out0 KS_va_vdIKLS = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_408 ())). Qed.
Lemma va_vdIKLS_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 -> 0 <= (V 44%nat) < 2 ^ 64 -> 0 <= (V 45%nat) < 2 ^ 64 -> 0 <= (V 46%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 20) = Z_to_bv 64 (V 36%nat) -> getr R (reg 25) = Z_to_bv 64 2147450880 ->
  7036928 <= (V 36%nat) <= 140737488355232 -> aligned (V 36%nat) 8 -> (2147446784 + 17592186048512 <= (V 36%nat) \/ (V 36%nat) + 96 <= 2147446784) -> L5KA.zeros_at M ((((V 36%nat) + 48) / 8) + 2147450880) 1 ->
  L5KA.zeros_at M ((((V 36%nat) + 64) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 36%nat) + 56) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 36%nat) + 24) / 8) + 2147450880) 1 -> L5.u8_at RSEGS M ((V 36%nat) + 48) (V 44%nat) ->
  0 <= (V 44%nat) <= 255 -> Z.testbit (V 44%nat) 0 = true -> L5.u64_at RSEGS M ((V 36%nat) + 56) (V 45%nat) -> 0 <= (V 45%nat) <= 2147483648 ->
  L5.u64_at RSEGS M ((V 36%nat) + 64) (V 46%nat) -> 4096 <= (V 46%nat) <= 140737488355328 -> L5.u8_at RSEGS M ((V 36%nat) + 24) (V 40%nat) -> 0 <= (V 40%nat) <= 44 ->
  Z.testbit (V 40%nat) 0 = false ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb26a0 M) (st fx' R' 0xb95f0 M')
        /\ (forall x, In x KS_va_vdIKLS -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 731444
        /\ getr R' (reg 10) = Z_to_bv 64 ((V 36%nat) + 48)
        /\ getr R' (reg 11) = Z_to_bv 64 ((V 45%nat) + (V 46%nat))
        /\ getr R' (reg 12) = Z_to_bv 64 ((V 36%nat) + 25)
        /\ getr R' (reg 13) = Z_to_bv 64 (((V 36%nat) + ((V 40%nat) / 2)) + 25)
        /\ getr R' (reg 14) = Z_to_bv 64 ((V 40%nat) / 2)
        /\ getr R' (reg 21) = Z_to_bv 64 ((V 36%nat) + 48)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_409 ())). Qed.
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdIKLL := BndP_Na_135.LibSegNa_va_vdIKLL.
Definition KS_va_vdIKLL : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdIKLL.regs0 Pva_vdIKLL.regs_out0).
Lemma KS_va_vdIKLL_ok : BG.kept_ok 80 Pva_vdIKLL.regs0 Pva_vdIKLL.regs_out0 KS_va_vdIKLL = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_410 ())). Qed.
Lemma va_vdIKLL_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 -> 0 <= (V 41%nat) < 2 ^ 64 -> 0 <= (V 42%nat) < 2 ^ 64 -> 0 <= (V 44%nat) < 2 ^ 64 -> 0 <= (V 45%nat) < 2 ^ 64 -> 0 <= (V 46%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 20) = Z_to_bv 64 (V 36%nat) -> getr R (reg 25) = Z_to_bv 64 2147450880 ->
  7036928 <= (V 36%nat) <= 140737488355232 -> aligned (V 36%nat) 8 -> (2147446784 + 17592186048512 <= (V 36%nat) \/ (V 36%nat) + 96 <= 2147446784) -> L5KA.zeros_at M ((((V 36%nat) + 48) / 8) + 2147450880) 1 ->
  L5KA.zeros_at M ((((V 36%nat) + 64) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 36%nat) + 56) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 36%nat) + 24) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 36%nat) + 40) / 8) + 2147450880) 1 ->
  L5KA.zeros_at M ((((V 36%nat) + 32) / 8) + 2147450880) 1 -> L5.u8_at RSEGS M ((V 36%nat) + 48) (V 44%nat) -> 0 <= (V 44%nat) <= 255 -> Z.testbit (V 44%nat) 0 = true ->
  L5.u64_at RSEGS M ((V 36%nat) + 56) (V 45%nat) -> 0 <= (V 45%nat) <= 2147483648 -> L5.u64_at RSEGS M ((V 36%nat) + 64) (V 46%nat) -> 4096 <= (V 46%nat) <= 140737488355328 ->
  L5.u8_at RSEGS M ((V 36%nat) + 24) (V 40%nat) -> 0 <= (V 40%nat) <= 255 -> Z.testbit (V 40%nat) 0 = true -> L5.u64_at RSEGS M ((V 36%nat) + 32) (V 41%nat) ->
  0 <= (V 41%nat) <= 2147483648 -> L5.u64_at RSEGS M ((V 36%nat) + 40) (V 42%nat) -> 4096 <= (V 42%nat) <= 140737488355328 ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb26a0 M) (st fx' R' 0xb95f0 M')
        /\ (forall x, In x KS_va_vdIKLL -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 731444
        /\ getr R' (reg 10) = Z_to_bv 64 ((V 36%nat) + 48)
        /\ getr R' (reg 11) = Z_to_bv 64 ((V 45%nat) + (V 46%nat))
        /\ getr R' (reg 12) = Z_to_bv 64 (V 42%nat)
        /\ getr R' (reg 13) = Z_to_bv 64 ((V 41%nat) + (V 42%nat))
        /\ getr R' (reg 14) = Z_to_bv 64 (V 41%nat)
        /\ getr R' (reg 21) = Z_to_bv 64 ((V 36%nat) + 48)).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP4 ()) [] (Mh_0208_blobs1.kr_b_411 ())). Qed.
(* [comment removed for export] *)

End VASVDP4.

End VaSVdP4.
Module VaSVdP5.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0007.   (* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From stdpp.bitvector Require Import definitions.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BigLinkBase. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.CatExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030.CatSim OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.SeqExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.StoreOk OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.Hoare OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.ShapeAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.SpinAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.HeapIface OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.AxSymRun3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.BigLinkBase OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.BigLinkGlue OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.L5Defs OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5Kn OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5KnA.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0177. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg.Mh_0177.
Import ListNotations. Import AX2. Import AX2B. Import AX2S.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Ltac Zify.zify_convert_to_euclidean_division_equations_flag ::= constr:(false).
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_VaSVdP5 () := "C47Corelib7Classes9Morphisms6ProperC47Corelib7Classes?RelationClasses9ReflexiveC47Corelib7Classes9Morphisms:forall_defC46Stdlib5Lists4List2hdC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA6fframeC46Stdlib5Lists4List4inclC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55rangeC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR6regionC47Corelib4Init5Logic8eq_ind_rC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K@nth_error_singleC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K6zagreeI47Corelib4Init9Datatypes6option00C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA6zpolyAK47Corelib4Init9Datatypes6option01I47Corelib4Init5Logic2eq00K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1N02I45stdpp9bitvector;definitions2bv00C56Stdlib6ZArith6BinInt1Z6moduloC45stdpp9bitvector;definitions7Z_to_bvC45stdpp9bitvector;definitions;bv_unsignedC45stdpp9bitvector;definitions5bv_eqC45stdpp9bitvector;definitions7bv_wrapK47Corelib7Numbers7BinNums1Z02C56Stdlib6ZArith6BinInt1Z3powC56Stdlib6ZArith6BinInt1Z>pow_pos_nonnegC56Stdlib6ZArith6BinInt1Z2ltC56Stdlib6ZArith6BinInt1Z2leC56Stdlib6ZArith6BinInt1Z:pow_nonnegK47Corelib4Init9Datatypes4list01I47Corelib4Init9Datatypes4list00K46Stdlib9micromega6VarMap1t01I46Stdlib9micromega6VarMap1t00I46Stdlib9micromega=RingMicromega7Formula00K46Stdlib9micromega7EnvRing5PExpr01K46Stdlib9micromega7EnvRing5PExpr07K46Stdlib9micromega=RingMicromega7Formula01K46Stdlib9micromega5Tauto8GFormula04K46Stdlib9micromega5Tauto8GFormula07C46Stdlib9micromega5Tauto8BFormulaK47Corelib4Init5Logic2eq01C46Stdlib9micromega:ZMicromega=ZTautoCheckerC46Stdlib9micromega6VarMap4findC46Stdlib9micromega:ZMicromegaCZTautoChecker_soundC56Stdlib6ZArith6BinInt1Z7mod_modC45stdpp9bitvector;definitions@Z_to_bv_unsignedC6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26edenotC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA<zpolyA_soundC6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG@word_of_unsignedI6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX23env00I47Corelib4Init9Datatypes3nat00I47Corelib7Numbers7BinNums1Z00I6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24expr00K47Corelib7Numbers7BinNums8positive03C5ARocqVerifyHarness?AgentSubmission;BigLinkBase2BL2MMI47Corelib7Numbers7BinNums1N00I47Corelib4Init5Logic3and00K47Corelib7Numbers7BinNums1Z01I47Corelib4Init5Logic4True00I46Stdlib9micromega:ZMicromega;ZArithProof00C46Stdlib9micromega5Tauto5eKindI47Corelib4Init9Datatypes4unit00K46Stdlib9micromega5Tauto4kind01K46Stdlib9micromega=RingMicromega3Op201K47Corelib4Init9Datatypes4unit01I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01I47Corelib4Init5Logic5False00K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX25saddr01K47Corelib4Init9Datatypes3nat02K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry01C5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S9kentry_okC56Stdlib6ZArith6BinInt1Z3addC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u64_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=u64_of_KWord8C5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsK47Corelib4Init9Datatypes3nat01C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u32_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K=u32_of_KWord4C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55u8_atC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K<u8_of_KWord1I47Corelib4Init5Peano2le00C56Stdlib6ZArith6BinInt1Z6of_natC5ARocqVerifyHarness?AgentSubmission?AxSymExec3Sound4AX2S4flatC6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26adenotC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K8adenot_eC47Corelib4Init5Logic6eq_indC45stdpp9bitvector;definitionsDbv_unsigned_in_rangeC45stdpp9bitvector;definitions:bv_modulusC4ELinuxProcessSemantics?LinuxProcessSem6BvBase=Z_to_le_bytesK46Stdlib9micromega6VarMap1t02K46Stdlib9micromega7EnvRing5PExpr02K46Stdlib9micromega5Tauto8GFormula05K47Corelib4Init9Datatypes6option02K46Stdlib9micromega5Tauto8GFormula08C56Stdlib6ZArith6BinInt1Z9mod_smallK45stdpp9bitvector;definitions2bv01C45stdpp9bitvector;definitions6bv_addC56Stdlib6ZArith6BinInt1Z?add_mod_idemp_lC45stdpp9bitvector;definitions?bv_add_unsignedC56Stdlib6ZArith6BinInt1Z3divK47Corelib4Init9Datatypes4list02C47Corelib4Init5Logic7f_equalC35stdpp7tactics<f_equal_helpC56Stdlib6ZArith6BinInt1Z6shiftrC56Stdlib6ZArith6BinInt1Z?shiftr_div_pow2K47Corelib4Init5Logic3and01C47Corelib4Init5Logic9False_indC4ARocqVerifyHarness?AgentSubmission8PropExec3rdnC4ELinuxProcessSemantics?LinuxProcessSem>RiscvSemantics@word_to_le_bytesC4ARocqVerifyHarness?AgentSubmission8PropExec7seg_romK46Stdlib9micromega=RingMicromega3Op203K46Stdlib9micromega=RingMicromega3Op205K47Corelib4Init5Logic4True01K6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry0:C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L57definedC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K?defined_of_KUnkC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA@u8_of_KWord1_modK6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX26kentry02C6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA8zeros_atC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA>zeros_of_KZeroK47Corelib7Numbers7BinNums8positive01C6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K9land_le_rC56Stdlib6ZArith6BinInt1Z4landK46Stdlib9micromega=RingMicromega5Psatz02K46Stdlib9micromega=RingMicromega5Psatz06K46Stdlib9micromega:ZMicromega;ZArithProof02K46Stdlib9micromega6VarMap1t03K46Stdlib9micromega5Tauto8GFormula03K46Stdlib9micromega:ZMicromega;ZArithProof01C56Stdlib6ZArith6BinInt1Z3lorC56Stdlib6ZArith6BinInt1Z:lor_nonnegC56Stdlib6ZArith6BinInt1Z6eq_decC47Corelib4Init5Logic3notI47Corelib4Init6Specif7sumbool00C56Stdlib6ZArith6BinInt1Z7lor_0_lC56Stdlib6ZArith6BinInt1Z7lor_0_rC56Stdlib6ZArith6BinInt1Z4log2C56Stdlib6ZArith6BinInt1Z3maxC56Stdlib6ZArith6BinInt1Z<log2_lt_pow2C56Stdlib6ZArith6BinInt1Z:max_lub_ltC56Stdlib6ZArith6BinInt1Z8log2_lorC56Stdlib6ZArith6BinInt1Z>log2_lt_cancelC47Corelib4Init5Logic5proj2C56Stdlib6ZArith6BinInt1Z9land_commC46Stdlib5Lists4List2InC56Stdlib6ZArith6BinInt1Z3ltbC47Corelib4Init9Datatypes4andbC47Corelib5Lists7ListDef3seqC46Stdlib5Lists4List7forallbC47Corelib4Init5Logic3iffC47Corelib7Classes9MorphismsDiff_impl_subrelationC46Stdlib5Lists4List>forallb_forallC56Stdlib6ZArith6BinInt1Z6to_natC47Corelib4Init3Nat3addC47Corelib4Init5Peano2ltC46Stdlib5Lists4List6in_seqC46Stdlib9micromega;ZifyClasses9and_morphC56Stdlib6ZArith6BinInt1Z8max_specI47Corelib4Init5Logic2or00K47Corelib7Numbers7BinNums1Z03K46Stdlib9micromega7EnvRing3Pol01K46Stdlib9micromega=RingMicromega5Psatz04K46Stdlib9micromega5Tauto8GFormula06K46Stdlib9micromega7EnvRing5PExpr03C46Stdlib9micromega;ZifyClasses;rew_iff_revC56Stdlib6ZArith4Znat5Z2Nat2idC47Corelib4Init9Datatypes9andb_propC46Stdlib9micromega9SatDivModCZ_mod_nonneg_nonnegC56Stdlib6ZArith6BinInt1Z7div_modC56Stdlib6ZArith6BinInt1Z3mulC56Stdlib6ZArith6BinInt1Z=mod_pos_boundC56Stdlib6ZArith6BinInt1Z=mod_neg_boundC56Stdlib5omega8PreOmega1Z;div_0_r_extC56Stdlib5omega8PreOmega1Z;mod_0_r_extK46Stdlib9micromega5Tauto8GFormula01C56Stdlib6ZArith6BinInt1Z3lebC46Stdlib9micromega;ZifyClasses5mkappC46Stdlib9micromega;ZifyClasses5mkrelC46Stdlib9micromega;ZifyClasses6mkapp2K46Stdlib9micromega5Tauto8GFormula0:C46Stdlib9micromega8ZifyInst@of_nat_to_nat_eqC56Stdlib6ZArith4Znat5Nat2Z6inj_leC56Stdlib5Arith8PeanoNat3Nat3addC56Stdlib6ZArith4Znat5Nat2Z7inj_addC56Stdlib6ZArith4Znat5Nat2Z6inj_ltK46Stdlib9micromega5Tauto4kind02C6ARocqVerifyHarness?AgentSubmission7Mh_0144;BigLinkGlue2BG7kept_okc7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5:Pva_vdKdS25regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5:Pva_vdKdS29regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5<KS_va_vdKdS2c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5:Pva_vdKdL25regs0c7ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5:Pva_vdKdL29regs_out0c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSVdP57VASVDP5<KS_va_vdKdL2". Local Ltac lia := L5FastLia.plia.

Module VASVDP5.
Abbreviation RSEGS := Asan.M.loaded_segments.
Notation reg i := (Z_to_bv 5 (Z.of_nat i)) (only parsing).
Notation st fx R pc M := (@mkst fx R (Z_to_bv 64 pc) M (seg_rom Asan.M.loaded_segments)) (only parsing).

(* [comment removed for export] *)
Lemma word_of_zpoly E Vz e z : L5K.zagree E Vz e -> L5KA.zpolyA Vz e = Some z -> edenot E e = Z_to_bv 64 z.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP5 ()) [] (Mh_0208_blobs1.kr_b_412 ())). Qed.
(* [comment removed for export] *)
Lemma u64_of_KWord8a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 8 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> L5.u64_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP5 ()) [] (Mh_0208_blobs1.kr_b_413 ())). Qed.
Lemma u32_of_KWord4a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 4 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> L5.u32_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP5 ()) [] (Mh_0208_blobs1.kr_b_414 ())). Qed.
Lemma u8_of_KWord1a E M b off e a v a' : kentry_ok RSEGS E M (KWord (SA b off) 1 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> 0 <= v < 256 -> a' = a + off -> L5.u8_at RSEGS M a' v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP5 ()) [] (Mh_0208_blobs1.kr_b_415 ())). Qed.
(* [comment removed for export] *)
Lemma u8x2_of_KWord2a E M b off e a v a' v0 v1 : kentry_ok RSEGS E M (KWord (SA b off) 2 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> v0 = v mod 256 -> v1 = (v / 256) mod 256 ->
  L5.u8_at RSEGS M a' v0 /\ L5.u8_at RSEGS M (a' + 1) v1.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP5 ()) [] (Mh_0208_blobs1.kr_b_416 ())). Qed.
Lemma defined_of_KUnka E M b off ne a n a' : kentry_ok RSEGS E M (KUnk (SA b off) ne) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E ne) = n -> a' = a + off -> L5.defined M a' n.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP5 ()) [] (Mh_0208_blobs1.kr_b_417 ())). Qed.
Lemma u8_of_KWord1ma E M b off e a v a' v' : kentry_ok RSEGS E M (KWord (SA b off) 1 e) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E e) = v -> a' = a + off -> v' = v mod 256 -> L5.u8_at RSEGS M a' v'.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP5 ()) [] (Mh_0208_blobs1.kr_b_418 ())). Qed.
Lemma zeros_of_KZeroa E M b off ne a n a' : kentry_ok RSEGS E M (KZero (SA b off) ne) -> bv_unsigned (edenot E b) = a ->
  bv_unsigned (edenot E ne) = n -> a' = a + off -> L5KA.zeros_at M a' n.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP5 ()) [] (Mh_0208_blobs1.kr_b_419 ())). Qed.
Lemma land_byte a m : 0 <= a -> 0 <= m <= 255 -> 0 <= Z.land a m < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP5 ()) [] (Mh_0208_blobs1.kr_b_420 ())). Qed.
Lemma lor_byte a b : 0 <= a < 256 -> 0 <= b < 256 -> 0 <= Z.lor a b < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP5 ()) [] (Mh_0208_blobs1.kr_b_421 ())). Qed.
(* [comment removed for export] *)
Lemma land_le_l a m : 0 <= a -> 0 <= m -> Z.land a m <= a.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP5 ()) [] (Mh_0208_blobs1.kr_b_422 ())). Qed.
Local Ltac zfacts :=
  repeat (match goal with |- context [Z.land ?a ?m] =>
    lazymatch goal with _ : 0 <= Z.land a m <= m |- _ => fail | _ => pose proof (L5K.land_le_r a m ltac:(lia) ltac:(lia)); pose proof (land_le_l a m ltac:(lia) ltac:(lia)) end end);
  repeat (match goal with |- context [?a / ?c] =>
    lazymatch goal with _ : 0 <= a / c |- _ => fail | _ => pose proof (Z.div_pos a c ltac:(lia) ltac:(lia)); pose proof (Z.mul_div_le a c ltac:(lia)) end end).
Local Ltac nonneg_tac := first [lia | match goal with |- 0 <= ?x mod ?m => exact (proj1 (Z.mod_pos_bound x m ltac:(clear; lia))) end | (zfacts; lia)].
Lemma setbit1_byte a : 0 <= a < 256 -> 0 <= (Z.land a 18446744073709551613 + 2) mod 2 ^ 64 < 256.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP5 ()) [] (Mh_0208_blobs1.kr_b_423 ())). Qed.
Local Ltac byte_go :=
  lazymatch goal with
  | |- 0 <= (Z.land _ 18446744073709551613 + 2) mod _ < 256 => apply setbit1_byte; lia
  | |- 0 <= Z.lor _ _ < 256 => apply lor_byte; byte_go
  | |- 0 <= Z.land _ _ < 256 => apply land_byte; [nonneg_tac | lia]
  | _ => zfacts; first [lia | rewrite !Z.mod_small by (rewrite ?Z.mod_small by lia; lia); lia]
  end.
Local Ltac byte_tac0 k := k; byte_go.
Tactic Notation "byte_tac" tactic(k) := byte_tac0 k.
(* [comment removed for export] *)
(* [comment removed for export] *)
Local Ltac solve_modk k :=
  repeat match goal with |- context [(?x mod 18446744073709551616) / _] => rewrite (Z.mod_small x 18446744073709551616) by (k; zfacts; lia) end;
  first [ rewrite Z.mod_small; [ first [reflexivity | k; lia] | k; L5K.zrange_tac ]
        | symmetry; eapply (Z.mod_unique_pos _ _ (-1)); k; unfold BL.MM; lia
        | symmetry; eapply (Z.mod_unique_pos _ _ 1); k; unfold BL.MM; lia ].
(* [comment removed for export] *)
Local Ltac pvz_hg tac := lazymatch goal with |- ?G0 => let PG := fresh "PGoal" in set (PG := G0); tac; subst PG end.
Local Ltac pvz_fold B k := lazymatch B with | ?A2 /\ ?B2 => pvz_fold B2 ltac:(fun T2 => let T := fresh "pvzT" in pose (T := A2 /\ T2); k T) | _ => k B end.
Local Ltac pvz_linconj := lazymatch goal with |- ?A /\ ?B => pvz_fold B ltac:(fun T => change_no_check (A /\ T)) | _ => idtac end.
Local Ltac pvz_unfold ZA := lazymatch type of ZA with forall j, _ = ?f j => tryif is_var f then unfold f else idtac | _ => idtac end.
Tactic Notation "evalEk" constr(ZA) tactic(k) :=
  L5K.norm_expr; eapply L5KA.zpolyA_val; [ apply (L5K.zagree_all _ _ _ ZA) | cbn [L5KA.zpolyA]; pvz_unfold ZA; reflexivity | solve_modk k ].
Tactic Notation "evalEk'" constr(ZA) constr(AG) tactic(k) :=
  L5K.norm_expr; eapply L5KA.zpolyA_val;
  [ eapply (L5K.zagree_lt _ _ _ _ _ AG); [apply (L5K.zagree_all _ _ _ ZA) | vm_compute; reflexivity] | cbn [L5KA.zpolyA]; pvz_unfold ZA; reflexivity | solve_modk k ].
(* [comment removed for export] *)
Definition aligned (a m : Z) : Prop := a mod m = 0.
Definition srl_range (a c lo hi : Z) : Prop := lo <= a / c <= hi.
(* [comment removed for export] *)
Local Ltac exactA H :=
  first [ exact H
        | lazymatch goal with
          | |- L5.u64_at _ _ ?a _ => lazymatch type of H with L5.u64_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.u8_at _ _ ?a _ => lazymatch type of H with L5.u8_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.u32_at _ _ ?a _ => lazymatch type of H with L5.u32_at _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.writable _ _ ?a _ => lazymatch type of H with L5.writable _ _ ?b _ => replace a with b by (clear; lia) end
          | |- L5.defined _ ?a _ => lazymatch type of H with L5.defined _ ?b _ => replace a with b by (clear; lia) end
          | |- L5KA.zeros_at _ ?a _ => lazymatch type of H with L5KA.zeros_at _ ?b _ => replace a with b by (clear; lia) end
          end; exact H ].
(* [comment removed for export] *)
Local Ltac den_tac := first [reflexivity | lia | idtac].
(* [comment removed for export] *)
(* [comment removed for export] *)
Local Ltac apc_norm :=
  repeat match goal with
  | |- context [APC.eadd ?a ?b] => let t := eval vm_compute in (APC.eadd a b) in change (APC.eadd a b) with t
  | |- context [APC.esub ?a ?b] => let t := eval vm_compute in (APC.esub a b) in change (APC.esub a b) with t
  | |- context [APC.escale ?c ?e] => let t := eval vm_compute in (APC.escale c e) in change (APC.escale c e) with t
  | |- context [APC.eaddz ?a ?z] => let t := eval vm_compute in (APC.eaddz a z) in change (APC.eaddz a z) with t
  end.
(* [comment removed for export] *)
Local Ltac zp_norm := repeat (match goal with |- context [(?a <=? ?b) && (?c <? ?d)] => let r := eval vm_compute in ((a <=? b) && (c <? d)) in change ((a <=? b) && (c <? d)) with r end);
  repeat (match goal with |- context [2 ^ ?s] => let r := eval vm_compute in (2 ^ s) in change (2 ^ s) with r end); lazy beta iota zeta.
Local Ltac zp_mods := repeat match goal with |- context [(?x mod 18446744073709551616) / _] => rewrite (Z.mod_small x 18446744073709551616) by (zfacts; lia) end.
Local Ltac slotP ZA :=
  first [ assumption | reflexivity
        | (etransitivity; [eassumption|]; symmetry; eapply word_of_zpoly; [apply (L5K.zagree_all _ _ _ ZA) | cbn [L5KA.zpolyA]; pvz_unfold ZA; zp_norm; f_equal; zp_mods; first [reflexivity | clear; zfacts; lia | zfacts; lia]]) ].
(* [comment removed for export] *)
Local Ltac wordP' ZA AG :=
  eapply word_of_zpoly; [ eapply (L5K.zagree_lt _ _ _ _ _ AG); [apply (L5K.zagree_all _ _ _ ZA) | vm_compute; reflexivity]
                        | cbn [L5KA.zpolyA]; pvz_unfold ZA; zp_norm; f_equal; zp_mods; first [reflexivity | clear; zfacts; lia | zfacts; lia] ].
(* [comment removed for export] *)
Module Pva_vdKdS2 := BndP_Na_136.LibSegNa_va_vdKdS2.
Definition KS_va_vdKdS2 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdKdS2.regs0 Pva_vdKdS2.regs_out0).
Lemma KS_va_vdKdS2_ok : BG.kept_ok 80 Pva_vdKdS2.regs0 Pva_vdKdS2.regs_out0 KS_va_vdKdS2 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP5 ()) [] (Mh_0208_blobs1.kr_b_424 ())). Qed.
Ltac Zify.zify_convert_to_euclidean_division_equations_flag ::= constr:(true).
Lemma va_vdKdS2_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 37%nat) < 2 ^ 64 -> 0 <= (V 38%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 -> 0 <= (V 50%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 19) = Z_to_bv 64 ((V 36%nat) + 80) -> getr R (reg 20) = Z_to_bv 64 (V 36%nat) -> getr R (reg 24) = Z_to_bv 64 (V 50%nat) -> getr R (reg 25) = Z_to_bv 64 2147450880 -> getr R (reg 26) = Z_to_bv 64 (((V 50%nat) / 8) + 2147450880) -> getr R (reg 27) = Z_to_bv 64 ((((V 36%nat) + 80) / 8) + 2147450880) ->
  L5.img_clear M 65536 1409024 -> 7036928 <= (V 36%nat) <= 140737488355232 -> aligned (V 36%nat) 8 -> (2147446784 + 17592186048512 <= (V 36%nat) \/ (V 36%nat) + 96 <= 2147446784) ->
  L5KA.zeros_at M ((((V 36%nat) + 80) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 36%nat) + 16) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 36%nat) + 24) / 8) + 2147450880) 1 -> L5.u64_at RSEGS M ((V 36%nat) + 80) (V 37%nat) ->
  4120 <= (V 37%nat) <= 140737488355328 -> aligned (V 37%nat) 8 -> (2147446784 + 17592186048512 <= ((V 37%nat) - 24) \/ ((V 37%nat) - 24) + 24 <= 2147446784) -> L5KA.zeros_at M ((((V 37%nat) - 16) / 8) + 2147450880) 1 ->
  L5KA.zeros_at M ((((V 37%nat) - 24) / 8) + 2147450880) 1 -> L5.u32_at RSEGS M ((V 37%nat) - 24) 0 -> L5.u32_at RSEGS M ((V 37%nat) - 16) 0 -> L5.u64_at RSEGS M ((V 36%nat) + 16) (V 38%nat) ->
  7036928 <= (V 38%nat) <= 140737488355272 -> (2147446784 + 17592186048512 <= (V 38%nat) \/ (V 38%nat) + 56 <= 2147446784) -> L5KA.zeros_at M (((V 38%nat) / 8) + 2147450880) 1 -> L5.u64_at RSEGS M (V 38%nat) 1380656 ->
  L5KA.zeros_at M 2147623474 1 -> L5.u8_at RSEGS M ((V 36%nat) + 24) (V 40%nat) -> 0 <= (V 40%nat) <= 44 -> Z.testbit (V 40%nat) 0 = false ->
  7036928 <= (V 50%nat) <= 140737488355264 -> aligned (V 50%nat) 32 -> (2147446784 + 17592186048512 <= (V 50%nat) \/ (V 50%nat) + 64 <= 2147446784) -> L5.writable RSEGS M ((V 50%nat) + 32) 16 ->
  L5.writable RSEGS M (((V 50%nat) / 8) + 2147450884) 2 -> ((V 50%nat) + 64 <= (V 36%nat) \/ (V 36%nat) + 96 <= (V 50%nat)) -> ((V 50%nat) + 64 <= (V 38%nat) \/ (V 38%nat) + 56 <= (V 50%nat)) -> ((((V 36%nat) / 8) + 2147450880) + 12 <= (((V 50%nat) / 8) + 2147450880) \/ (((V 50%nat) / 8) + 2147450880) + 8 <= (((V 36%nat) / 8) + 2147450880)) ->
  ((((V 38%nat) / 8) + 2147450880) + 1 <= (((V 50%nat) / 8) + 2147450880) \/ (((V 50%nat) / 8) + 2147450880) + 8 <= (((V 38%nat) / 8) + 2147450880)) -> (2147618928 + 1 <= (((V 50%nat) / 8) + 2147450880) \/ (((V 50%nat) / 8) + 2147450880) + 8 <= 2147618928) ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, ~ (((V 50%nat) + 32) <= bv_unsigned a < ((V 50%nat) + 32) + 16) -> ~ (((((V 50%nat) / 8) + 2147450880) + 4) <= bv_unsigned a < ((((V 50%nat) / 8) + 2147450880) + 4) + 2) -> M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> ~ (((V 50%nat) + 32) <= i < ((V 50%nat) + 32) + 16) -> ~ (((((V 50%nat) / 8) + 2147450880) + 4) <= i < ((((V 50%nat) / 8) + 2147450880) + 4) + 2) -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb25b4 M) (st fx' R' 0xc2f38 M')
        /\ (forall x, In x KS_va_vdKdS2 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 731364
        /\ getr R' (reg 10) = Z_to_bv 64 (V 38%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 ((V 50%nat) + 32)
        /\ getr R' (reg 12) = getr R (reg 22)
        /\ getr R' (reg 13) = getr R (reg 21)
        /\ getr R' (reg 14) = Z_to_bv 64 798520
        /\ getr R' (reg 20) = Z_to_bv 64 ((V 36%nat) + 25)
        /\ L5.u64_at RSEGS M' ((V 50%nat) + 40) ((V 40%nat) / 2)
        /\ L5.u64_at RSEGS M' ((V 50%nat) + 32) ((V 36%nat) + 25)
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450885) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450884) 0).
Proof.
ltac2:(KReplay.run1 (kr_tL_Mh_0208 ()) [] (Mh_0208_blobs1.kr_b_425 ())). Qed.
Ltac Zify.zify_convert_to_euclidean_division_equations_flag ::= constr:(false).
(* [comment removed for export] *)

(* [comment removed for export] *)
Module Pva_vdKdL2 := BndP_Na_136.LibSegNa_va_vdKdL2.
Definition KS_va_vdKdL2 : list nat := Eval vm_compute in (BG.kept_list 80 Pva_vdKdL2.regs0 Pva_vdKdL2.regs_out0).
Lemma KS_va_vdKdL2_ok : BG.kept_ok 80 Pva_vdKdL2.regs0 Pva_vdKdL2.regs_out0 KS_va_vdKdL2 = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSVdP5 ()) [] (Mh_0208_blobs1.kr_b_426 ())). Qed.
Lemma va_vdKdL2_conc fx R M (V : nat -> Z) :
  0 <= (V 2%nat) < 2 ^ 64 -> 0 <= (V 36%nat) < 2 ^ 64 -> 0 <= (V 37%nat) < 2 ^ 64 -> 0 <= (V 38%nat) < 2 ^ 64 -> 0 <= (V 40%nat) < 2 ^ 64 -> 0 <= (V 41%nat) < 2 ^ 64 -> 0 <= (V 42%nat) < 2 ^ 64 -> 0 <= (V 50%nat) < 2 ^ 64 ->
  getr R (reg 2) = Z_to_bv 64 (V 2%nat) -> getr R (reg 19) = Z_to_bv 64 ((V 36%nat) + 80) -> getr R (reg 20) = Z_to_bv 64 (V 36%nat) -> getr R (reg 24) = Z_to_bv 64 (V 50%nat) -> getr R (reg 25) = Z_to_bv 64 2147450880 -> getr R (reg 26) = Z_to_bv 64 (((V 50%nat) / 8) + 2147450880) -> getr R (reg 27) = Z_to_bv 64 ((((V 36%nat) + 80) / 8) + 2147450880) ->
  L5.img_clear M 65536 1409024 -> 7036928 <= (V 36%nat) <= 140737488355232 -> aligned (V 36%nat) 8 -> (2147446784 + 17592186048512 <= (V 36%nat) \/ (V 36%nat) + 96 <= 2147446784) ->
  L5KA.zeros_at M ((((V 36%nat) + 80) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 36%nat) + 16) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 36%nat) + 24) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 36%nat) + 40) / 8) + 2147450880) 1 ->
  L5KA.zeros_at M ((((V 36%nat) + 32) / 8) + 2147450880) 1 -> L5.u64_at RSEGS M ((V 36%nat) + 80) (V 37%nat) -> 4120 <= (V 37%nat) <= 140737488355328 -> aligned (V 37%nat) 8 ->
  (2147446784 + 17592186048512 <= ((V 37%nat) - 24) \/ ((V 37%nat) - 24) + 24 <= 2147446784) -> L5KA.zeros_at M ((((V 37%nat) - 16) / 8) + 2147450880) 1 -> L5KA.zeros_at M ((((V 37%nat) - 24) / 8) + 2147450880) 1 -> L5.u32_at RSEGS M ((V 37%nat) - 24) 0 ->
  L5.u32_at RSEGS M ((V 37%nat) - 16) 0 -> L5.u64_at RSEGS M ((V 36%nat) + 16) (V 38%nat) -> 7036928 <= (V 38%nat) <= 140737488355272 -> (2147446784 + 17592186048512 <= (V 38%nat) \/ (V 38%nat) + 56 <= 2147446784) ->
  L5KA.zeros_at M (((V 38%nat) / 8) + 2147450880) 1 -> L5.u64_at RSEGS M (V 38%nat) 1380656 -> L5KA.zeros_at M 2147623474 1 -> L5.u8_at RSEGS M ((V 36%nat) + 24) (V 40%nat) ->
  0 <= (V 40%nat) <= 255 -> Z.testbit (V 40%nat) 0 = true -> L5.u64_at RSEGS M ((V 36%nat) + 32) (V 41%nat) -> 0 <= (V 41%nat) <= 2147483648 ->
  L5.u64_at RSEGS M ((V 36%nat) + 40) (V 42%nat) -> 4096 <= (V 42%nat) <= 140737488355328 -> 7036928 <= (V 50%nat) <= 140737488355264 -> aligned (V 50%nat) 32 ->
  (2147446784 + 17592186048512 <= (V 50%nat) \/ (V 50%nat) + 64 <= 2147446784) -> L5.writable RSEGS M ((V 50%nat) + 32) 16 -> L5.writable RSEGS M (((V 50%nat) / 8) + 2147450884) 2 -> ((V 50%nat) + 64 <= (V 36%nat) \/ (V 36%nat) + 96 <= (V 50%nat)) ->
  ((V 50%nat) + 64 <= (V 38%nat) \/ (V 38%nat) + 56 <= (V 50%nat)) -> ((((V 36%nat) / 8) + 2147450880) + 12 <= (((V 50%nat) / 8) + 2147450880) \/ (((V 50%nat) / 8) + 2147450880) + 8 <= (((V 36%nat) / 8) + 2147450880)) -> ((((V 38%nat) / 8) + 2147450880) + 1 <= (((V 50%nat) / 8) + 2147450880) \/ (((V 50%nat) / 8) + 2147450880) + 8 <= (((V 38%nat) / 8) + 2147450880)) -> (2147618928 + 1 <= (((V 50%nat) / 8) + 2147450880) \/ (((V 50%nat) / 8) + 2147450880) + 8 <= 2147618928) ->
  exists fx' R' M', mem_grows M M'
    /\ (forall a : word, ~ (((V 50%nat) + 32) <= bv_unsigned a < ((V 50%nat) + 32) + 16) -> ~ (((((V 50%nat) / 8) + 2147450880) + 4) <= bv_unsigned a < ((((V 50%nat) / 8) + 2147450880) + 4) + 2) -> M' a = M a)
    /\ (forall i : Z, 0 <= i < 2 ^ 64 -> ~ (((V 50%nat) + 32) <= i < ((V 50%nat) + 32) + 16) -> ~ (((((V 50%nat) / 8) + 2147450880) + 4) <= i < ((((V 50%nat) / 8) + 2147450880) + 4) + 2) -> M' (Z_to_bv 64 i) = M (Z_to_bv 64 i))
    /\ (msteps RSEGS (st fx R 0xb25b4 M) (st fx' R' 0xc2f38 M')
        /\ (forall x, In x KS_va_vdKdL2 -> getr R' (reg x) = getr R (reg x))
        /\ getr R' (reg 1) = Z_to_bv 64 731364
        /\ getr R' (reg 10) = Z_to_bv 64 (V 38%nat)
        /\ getr R' (reg 11) = Z_to_bv 64 ((V 50%nat) + 32)
        /\ getr R' (reg 12) = getr R (reg 22)
        /\ getr R' (reg 13) = getr R (reg 21)
        /\ getr R' (reg 14) = Z_to_bv 64 798520
        /\ getr R' (reg 20) = Z_to_bv 64 (V 42%nat)
        /\ L5.u64_at RSEGS M' ((V 50%nat) + 40) (V 41%nat)
        /\ L5.u64_at RSEGS M' ((V 50%nat) + 32) (V 42%nat)
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450885) 0
        /\ L5.u8_at RSEGS M' (((V 50%nat) / 8) + 2147450884) 0).
Proof.
ltac2:(KReplay.run1 (kr_tL_Mh_0208 ()) [] (Mh_0208_blobs1.kr_b_427 ())). Qed.
(* [comment removed for export] *)

End VASVDP5.

End VaSVdP5.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0102.
Module VaSFeC.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require Import LeanFeed2.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.LeanFeed.
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool FunctionalExtensionality.
From stdpp.bitvector Require Import definitions.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0089. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0135. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0092. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0179. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.asan.Mh_0210. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require L5ADetailHR. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0018. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0024. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PgV8. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0225. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0102. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.CatExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030.CatSim OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.SeqExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.StoreOk OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.Hoare OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.ShapeAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.SpinAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.AsanAcct OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.HeapIface OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0089.HeapIfaceA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0089.IcptIfaceA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.LibIface OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.L5Defs OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.L5Core OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0135.L5CoreKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5Kn OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5KnA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0092.L5LazyA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0179.L5DefsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.asan.Mh_0210.L5CoreA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.asan.Mh_0210.L5CoreSpecsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.asan.Mh_0210.L5StepAR OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.asan.Mh_0210.L5CoreBR OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.asan.L5ADetailHR OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0018.PmLayout OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0024.PmLayoutA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0018.PnLayout OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0024.PnLayoutA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.PmModel OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.PmModelFacts OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.PmStatics OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0092.PmStaticsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0089.HeapIfaceAMx OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.PmSpecs OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.PmParSpecs OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PmSpecsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PmSpecsAX OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnSpecsAa OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PmModelFactsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnStepA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnASrcKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.PgSrc OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PgV8 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PgSrcA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PgV8A OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnRunBA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PgTxtKitA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0018.PnLayoutQ OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0024.PnLayoutQA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0092.PnQStaticsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0092.PnModelA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnRunA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnVisA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnRunAa OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnAdStrA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0225.VaSpec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0225.VaKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0208.VaSFeP OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0102.NemModel OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0225.PnAdStrCA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0225.VaSpecC OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0225.VaKitC.
Import ListNotations.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_VaSFeC () := "C47Corelib7Classes9Morphisms6ProperC47Corelib7Classes?RelationClasses9ReflexiveC47Corelib7Classes9Morphisms:forall_defC46Stdlib5Lists4List2InC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA6fframeC46Stdlib5Lists4List4inclC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55rangeC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR6regionC47Corelib4Init5Logic8eq_ind_rC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K@nth_error_singleC56Stdlib6ZArith6BinInt1Z6of_natC56Stdlib6ZArith6BinInt1Z3addC47Corelib5Lists7ListDef3seqC46Stdlib5Lists4List7forallbC56Stdlib6ZArith6BinInt1Z2leC56Stdlib6ZArith6BinInt1Z2ltI47Corelib4Init5Logic3and00C47Corelib4Init5Logic3iffC47Corelib7Classes9MorphismsDiff_impl_subrelationC46Stdlib5Lists4List>forallb_forallC56Stdlib6ZArith6BinInt1Z3subC56Stdlib6ZArith6BinInt1Z6to_natI47Corelib4Init5Logic2eq00C47Corelib4Init5Logic8iff_reflC46Stdlib9micromega;ZifyClasses3injC46Stdlib9micromega;ZifyClasses5mkrelC56Stdlib6ZArith4Znat5Nat2Z9is_nonnegC56Stdlib6ZArith6BinInt1Z8max_specI47Corelib4Init5Logic2or00K47Corelib4Init9Datatypes3nat02K46Stdlib9micromega=RingMicromega5Psatz02K47Corelib7Numbers7BinNums1Z03K46Stdlib9micromega7EnvRing3Pol01K46Stdlib9micromega=RingMicromega5Psatz04K47Corelib4Init9Datatypes4list01I47Corelib4Init9Datatypes4list00K46Stdlib9micromega6VarMap1t02K46Stdlib9micromega6VarMap1t03I46Stdlib9micromega6VarMap1t00I46Stdlib9micromega=RingMicromega7Formula00K47Corelib7Numbers7BinNums8positive02K46Stdlib9micromega7EnvRing5PExpr02K47Corelib7Numbers7BinNums8positive01K46Stdlib9micromega7EnvRing5PExpr04K46Stdlib9micromega7EnvRing5PExpr01K47Corelib4Init9Datatypes6option02K46Stdlib9micromega7EnvRing5PExpr03C46Stdlib9micromega5Tauto8BFormulaK47Corelib4Init5Logic2eq01C46Stdlib9micromega:ZMicromega=ZTautoCheckerC46Stdlib9micromega6VarMap4findC46Stdlib9micromega:ZMicromegaCZTautoChecker_soundC46Stdlib9micromega;ZifyClasses;rew_iff_revI47Corelib4Init5Peano2le00C47Corelib4Init3Nat3addC47Corelib4Init5Peano2ltC46Stdlib5Lists4List6in_seqC46Stdlib9micromega;ZifyClasses9and_morphK46Stdlib9micromega6VarMap1t01C47Corelib4Init5Logic6eq_indc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC4allrC56Stdlib6ZArith6BinInt1Z3maxC46Stdlib9micromega;ZifyClasses5mkappC46Stdlib9micromega;ZifyClasses6mkapp2K46Stdlib9micromega=RingMicromega5Psatz06K46Stdlib9micromega:ZMicromega;ZArithProof02K47Corelib4Init9Datatypes4list02K46Stdlib9micromega5Tauto8GFormula03K46Stdlib9micromega=RingMicromega7Formula01K46Stdlib9micromega5Tauto8GFormula04K46Stdlib9micromega5Tauto8GFormula05K46Stdlib9micromega5Tauto8GFormula06K46Stdlib9micromega5Tauto8GFormula08I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01I47Corelib7Numbers7BinNums1Z00K47Corelib7Numbers7BinNums1Z01I47Corelib4Init9Datatypes3nat00C46Stdlib9micromega8ZifyInst@of_nat_to_nat_eqK46Stdlib9micromega:ZMicromega;ZArithProof01I46Stdlib9micromega:ZMicromega;ZArithProof00C46Stdlib9micromega5Tauto5eKindI47Corelib4Init9Datatypes4unit00K46Stdlib9micromega5Tauto4kind01K46Stdlib9micromega=RingMicromega3Op201K47Corelib4Init9Datatypes4unit01K46Stdlib9micromega=RingMicromega3Op203C56Stdlib6ZArith4Znat5Nat2Z6inj_leK47Corelib4Init9Datatypes3nat01C56Stdlib5Arith8PeanoNat3Nat3addC56Stdlib6ZArith4Znat5Nat2Z7inj_addC56Stdlib6ZArith4Znat5Nat2Z6inj_ltK46Stdlib9micromega=RingMicromega3Op205C46Stdlib9micromega8ZifyInst7Inj_Z_ZK47Corelib7Numbers7BinNums8positive03C47Corelib7Classes9Morphisms:respectfulC47Corelib7Classes9MorphismsBsubrelation_properC46Stdlib5Lists4List2hdK47Corelib7Numbers7BinNums1Z02C46Stdlib9micromega;ZifyClasses6eq_iffc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC7allr_okc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC5c_t10c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC5e_t10C56Stdlib6ZArith6BinInt1Z3divC56Stdlib6ZArith6BinInt1Z3eqbC56Stdlib6ZArith6BinInt1Z3lebC47Corelib4Init9Datatypes4andbC46Stdlib4Bool4Bool=andb_true_iffC47Corelib7Classes9Morphisms@subrelation_reflC47Corelib7Classes9MorphismsFsubrelation_respectfulC47Corelib7Classes9MorphismsIreflexive_reflexive_proxyC47Corelib7Classes9MorphismsFreflexive_proper_proxyC56Stdlib6ZArith6BinInt1Z6eqb_eqC56Stdlib6ZArith6BinInt1Z6leb_leK47Corelib4Init5Logic3and01C47Corelib7Program6Basics4implC47Corelib7Classes>Morphisms_Prop@and_iff_morphismC47Corelib7Classes?RelationClasses=iff_Reflexivec6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC6c_h100c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC6e_h100C56Stdlib6ZArith6BinInt1Z3powC56Stdlib6ZArith6BinInt1Z6moduloC56Stdlib6ZArith6BinInt1Z3mulC56Stdlib6ZArith6BinInt1Z>pow_pos_nonnegC56Stdlib6ZArith6BinInt1Z:pow_nonnegK47Corelib7Numbers7BinNums1N02K46Stdlib9micromega7EnvRing5PExpr07c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC6c_t10nc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC6e_t10nI47Corelib4Init5Logic4True00c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC7c_h100nc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC7e_h100nc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC6c_restc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC6e_c10bc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC6e_restc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC6e_t10bc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC6c_unitc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC6e_unitC46Stdlib9micromega9SatDivModCZ_div_nonneg_nonnegC56Stdlib6ZArith6BinInt1Z7div_modC47Corelib4Init5Logic3notC56Stdlib6ZArith6BinInt1Z=mod_pos_boundC56Stdlib6ZArith6BinInt1Z=mod_neg_boundC56Stdlib5omega8PreOmega1Z;div_0_r_extC56Stdlib5omega8PreOmega1Z;mod_0_r_extI45stdpp9bitvector;definitions2bv00C45stdpp9bitvector;definitions;bv_unsignedC45stdpp9bitvector;definitions5bv_eqC45stdpp9bitvector;definitions7Z_to_bvC45stdpp9bitvector;definitions7bv_wrapC45stdpp9bitvector;definitions@Z_to_bv_unsignedI47Corelib7Numbers7BinNums1N00C45stdpp9bitvector;definitionsCZ_to_bv_bv_unsignedC47Corelib4Init5Logic6eq_symK46Stdlib9micromega7EnvRing5PExpr05K46Stdlib9micromega5Tauto8GFormula07C56Stdlib6ZArith6BinInt1Z7mod_addc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC8zbv_congI47Corelib4Init5Logic5False00C4ELinuxProcessSemantics5Riscv7Prelude5bvmapI47Corelib4Init9Datatypes6option00c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC3ownc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC5ocellC6ARocqVerifyHarness?AgentSubmission7Mh_00906L5Core3L5C8agree_onC6ARocqVerifyHarness?AgentSubmission7Mh_00906L5Core3L5C<u64_at_agreeC4ARocqVerifyHarness?AgentSubmission8PropExec4getrC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u64_atC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsK45stdpp9bitvector;definitions2bv01C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55ra_okC5ARocqVerifyHarness?AgentSubmission7Mh_00188PmLayout5pa_gpC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA5hl_tpC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02107L5CoreA4L5CA4astkC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA;shadow_zeroC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA8ar_sptopC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L57definedC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA<ar_stack_topC46Stdlib9micromega9SatDivModCZ_mod_nonneg_nonnegK46Stdlib9micromega=RingMicromega5Psatz07K46Stdlib9micromega=RingMicromega5Psatz05K46Stdlib9micromega:ZMicromega;ZArithProof03K47Corelib4Init5Logic4True01C5ARocqVerifyHarness?AgentSubmission7Mh_00249PnLayoutA6ADDR_AC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA6FE_SCRC47Corelib4Init9Datatypes3fstC47Corelib4Init9Datatypes3sndC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA6PB_SCRc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC9own_agreec6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC8sp_factsC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA2N1C6ARocqVerifyHarness?AgentSubmission7Mh_02136PnRunA4PQRA3FCMI47Corelib4Init9Datatypes4prod00C6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC3invC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L59img_clearC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA4ahidC6ARocqVerifyHarness?AgentSubmission7Mh_01797L5DefsA3L5A4avisC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA8zeros_atC5ARocqVerifyHarness?AgentSubmission7Mh_00368AsanAcct9mrestrictC6ARocqVerifyHarness?AgentSubmission7Mh_00907PmModel2PM6vs_ownC47Corelib4Init9Datatypes3appC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA6vml_ofC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA6ri_invC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02107L5CoreA4L5CA9amodel_okC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA8model_rtK47Corelib4Init9Datatypes4prod01C6ARocqVerifyHarness?AgentSubmission7Mh_00907PmModel2PM7vs_sizeC6ARocqVerifyHarness?AgentSubmission7Mh_02138PmSpecsA5PMSPA2HVC6ARocqVerifyHarness?AgentSubmission7Mh_00928PnModelA4PQMA6pot_ksC5ARocqVerifyHarness?AgentSubmission7Mh_00368AsanAcctAmrestrict_visiblec6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC4GOWNC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC6pfactsC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L58writableC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02108L5StepAR5L5SAR2ekC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02108L5StepAR5L5SAR2dkC6ARocqVerifyHarness?AgentSubmission7Mh_02138PmSpecsA5PMSPA3scAC6ARocqVerifyHarness?AgentSubmission7Mh_0092:PmStaticsA5PMSTA8base_okAC6ARocqVerifyHarness?AgentSubmission7Mh_00907PmSpecs4PMSP;credit_keepC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC6txt_okC6ARocqVerifyHarness?AgentSubmission7Mh_00928PnModelA4PQMA5ks_okC6ARocqVerifyHarness?AgentSubmission7Mh_00928PnModelA4PQMA7kstr_atC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA6FE_MAXc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC5WIMG0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC6HSCR16c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC3HFRc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC4HSCRc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC4GOCRc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC5NEED1C6ARocqVerifyHarness?AgentSubmission7Mh_02138PmSpecsA5PMSPA4accAI4ELinuxProcessSemantics?LinuxProcessSem5State5Model00I6ARocqVerifyHarness?AgentSubmission7Mh_00907PmModel2PM4vstr00C5ARocqVerifyHarness?AgentSubmission7Mh_00849HeapIface6creditK47Corelib4Init9Datatypes4bool02c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC2RIC5ARocqVerifyHarness?AgentSubmission7Mh_00849HeapIface>regs_preservedC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02108L5StepAR5L5SAR?cs_of_preservedC6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K9In_of_memC56Stdlib5Arith8PeanoNat3Nat3eqbC46Stdlib5Lists4List7existsbC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02108L5StepAR5L5SAR6cs_allI47Corelib4Init5Logic2ex00C46Stdlib5Lists4List>existsb_existsC56Stdlib5Arith8PeanoNat3Nat6eqb_eqK47Corelib4Init5Logic2or01C47Corelib4Init5Logic9False_indK47Corelib4Init5Logic2or02C47Corelib4Init5Logic6or_indC6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K3rl3C6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K3rl4C5ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs4SCFGC47Corelib4Init5Logic7and_indC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02108L5StepAR5L5SARBpreserved_by_indexC6ARocqVerifyHarness?AgentSubmission7Mh_00907PmSpecs4PMSP3cfgC5ARocqVerifyHarness?AgentSubmission7Mh_00367SpinAlg9srealizesC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC4TAILC4ARocqVerifyHarness?AgentSubmission5BMode;bm_off_instI4ARocqVerifyHarness?AgentSubmission8PropExec7FPState00C6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K3rl1C6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K3rl2C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L5<writable_subc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC6vfactsc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC4ownvC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC7bvu_rngc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP7alignedc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;va_feD_concC5ARocqVerifyHarness?AgentSubmission7Mh_00387StoreOk9mem_growsC4ARocqVerifyHarness?AgentSubmission8PropExec7seg_romC4ARocqVerifyHarness?AgentSubmission8PropExec4mkstc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC3FINI5ARocqVerifyHarness?AgentSubmission7Mh_00306CatSim6msteps00C6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC8PIECE_roc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9KS_va_feDc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC7unit_okC56Stdlib6ZArith6BinInt1ZBdiv_le_lower_boundC56Stdlib6ZArith6BinInt1ZBdiv_lt_upper_boundc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;va_feG_concc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC?zbv_of_unsignedC56Stdlib6ZArith6BinInt1Z4landc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9KS_va_feGc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;va_feF_concc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9KS_va_feFc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC7h100_okc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC7rest_okc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;va_feE_concc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC8RI_piecec6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC7RI_gptpc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC6ra_litc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC7RI_callC35stdpp7tactics<f_equal_helpc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC6STEP_FC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC4CALLc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9KS_va_feEC46Stdlib6ZArith:ZArith_dec;Z_le_gt_decC56Stdlib6ZArith6BinInt1Z2gtI47Corelib4Init6Specif7sumbool00c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP=va_feCp1_concc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC6STEP_Dc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC6t10_okc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP=va_feCp2_concc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC6STEP_Gc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP=va_feCp3_concc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC6STEP_Ec6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;KS_va_feCp1K46Stdlib9micromega=RingMicromega3Op206c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;KS_va_feCp2c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;KS_va_feCp3c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP=va_feCn1_concc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC7zbv_negc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC7t10n_okc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP=va_feCn2_concc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC8h100n_okc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP=va_feCn3_concc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;KS_va_feCn1c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;KS_va_feCn2c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;KS_va_feCn3c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP<va_feBp_concc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC7STEP_Cpc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP<va_feBn_concc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC7STEP_Cnc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP:KS_va_feBpc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP:KS_va_feBnc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP;va_feA_concC6ARocqVerifyHarness?AgentSubmission7Mh_01797L5DefsA3L5A:u64_at_visC47Corelib4Init5Logic5proj1c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC6STEP_BC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC4INITC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC5PIECEc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeP6VASFEP9KS_va_feAC6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K4rl10C6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K4rl11C6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA7entryAsC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA7ffroomNC6ARocqVerifyHarness?AgentSubmission7Mh_02138PmSpecsA5PMSPA5ffrsAC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA6rcellAC6ARocqVerifyHarness?AgentSubmission7Mh_02138PmSpecsA5PMSPA5aobjAC6ARocqVerifyHarness?AgentSubmission7Mh_00907PmSpecs4PMSP9credit_leC6ARocqVerifyHarness?AgentSubmission7Mh_01028NemModel3NEM5asciiC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02107L5CoreA4L5CA6ahpresc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSFeC6VASFEC7fe_bodyC6ARocqVerifyHarness?AgentSubmission7Mh_02257VaSpecC3VAC9fe_specCAC6ARocqVerifyHarness?AgentSubmission7Mh_01028NemModel3NEM8kcontentC5ARocqVerifyHarness?AgentSubmission7Mh_00368ShapeAlg4TSetI4ELinuxProcessSemantics?LinuxProcessSem5State5event00C6ARocqVerifyHarness?AgentSubmission7Mh_02138PnAdStrA5PQASA5SMMAX". Local Ltac lia := L5FastLia.plia.

Module VASFEC.
Import L5A L5SAR.
Ltac inl := apply L5K.In_of_mem; vm_compute; reflexivity.
Abbreviation reg i := (Z_to_bv 5 (Z.of_nat i)).
Abbreviation RSEGS := Asan.M.loaded_segments.
Abbreviation mem := (word -> option byte).
Abbreviation AD := PMA.AD.
Abbreviation accA := PMSPA.accA.
Abbreviation kstr_at := (PQMA.kstr_at RSEGS accA).
Abbreviation kcontent := (NEM.kcontent RSEGS).
Abbreviation bvu x := (bv_unsigned x).

(* [comment removed for export] *)
Ltac fd := lazymatch goal with
  | |- _ <= _ <= _ => first [apply VAKC.bvu_rng | Lia.lia]
  | |- _ <= _ < _ => first [apply VAKC.bvu_rng | Lia.lia]
  | |- _ \/ _ => Lia.lia
  | |- VASFEP.aligned _ _ => unfold VASFEP.aligned; assumption
  | |- _ => assumption
  end.

(* [comment removed for export] *)
Definition allr (f : Z -> bool) (lo : Z) (n : nat) : bool := forallb (fun i => f (lo + Z.of_nat i)) (seq 0 n).
Lemma allr_ok f lo n k : allr f lo n = true -> lo <= k < lo + Z.of_nat n -> f k = true.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) [] (Mh_0208_blobs1.kr_b_428 ())). Qed.
(* [comment removed for export] *)
Definition e_t10 (k : Z) : Z := (205 * k) / 2048.
Definition e_h100 (k : Z) : Z := ((5243 * (((281474976710656 * k) mod 2 ^ 64) / 1125899906842624)) mod 2 ^ 64) / 131072.
(* [comment removed for export] *)
Definition e_t10n (v : Z) : Z := ((-205) * v) mod 18446744073709551616 / 2048.
Definition e_h100n (v : Z) : Z := ((5243 * (((18446462598732840960 * v) mod 2 ^ 64) / 1125899906842624)) mod 2 ^ 64) / 131072.
(* [comment removed for export] *)
Definition e_rest (k h : Z) : Z := Z.land ((k + ((18446744073709551516 * h) mod 2 ^ 64)) mod 2 ^ 64) 255.
Definition e_t10b (k h : Z) : Z := ((205 * (e_rest k h)) mod 2 ^ 64) / 2048.
Definition e_c10b (k h : Z) : Z := ((Z.land (e_t10b k h) 18446744073709551567) + 48) mod 2 ^ 64.
(* [comment removed for export] *)
Definition e_unit (t d : Z) : Z := Z.land (((Z.land ((t + ((18446744073709551606 * d) mod 2 ^ 64)) mod 2 ^ 64) 18446744073709551567) + 48) mod 2 ^ 64) 255.
Definition c_t10 (k : Z) : bool := (e_t10 k =? k / 10) && (1 <=? k / 10) && (k / 10 <=? 9).
Lemma t10_ok k : 10 <= k <= 99 -> e_t10 k = k / 10 /\ 1 <= k / 10 <= 9.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) [] (Mh_0208_blobs1.kr_b_429 ())). Qed.
Definition c_h100 (k : Z) : bool := (e_h100 k =? k / 100) && (1 <=? k / 100) && (k / 100 <=? 9) && ((e_h100 k + 48) mod 2 ^ 64 =? k / 100 + 48) && (0 <=? k - 100 * (k / 100)) && (k - 100 * (k / 100) <=? 99).
Lemma h100_ok k : 100 <= k <= 999 -> e_h100 k = k / 100 /\ 1 <= k / 100 <= 9 /\ (e_h100 k + 48) mod 2 ^ 64 = k / 100 + 48 /\ 0 <= k - 100 * (k / 100) <= 99.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) [] (Mh_0208_blobs1.kr_b_430 ())). Qed.
Definition c_t10n (v : Z) : bool := (e_t10n v =? (2 ^ 64 - v) / 10) && (1 <=? (2 ^ 64 - v) / 10) && ((2 ^ 64 - v) / 10 <=? 9).
Lemma t10n_ok v : 2 ^ 64 - 99 <= v <= 2 ^ 64 - 10 -> e_t10n v = (2 ^ 64 - v) / 10 /\ 1 <= (2 ^ 64 - v) / 10 <= 9.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) [] (Mh_0208_blobs1.kr_b_431 ())). Qed.
Definition c_h100n (v : Z) : bool := (e_h100n v =? (2 ^ 64 - v) / 100) && (1 <=? (2 ^ 64 - v) / 100) && ((2 ^ 64 - v) / 100 <=? 9) && ((e_h100n v + 48) mod 2 ^ 64 =? (2 ^ 64 - v) / 100 + 48).
Lemma h100n_ok v : 2 ^ 64 - 999 <= v <= 2 ^ 64 - 100 -> e_h100n v = (2 ^ 64 - v) / 100 /\ 1 <= (2 ^ 64 - v) / 100 <= 9 /\ (e_h100n v + 48) mod 2 ^ 64 = (2 ^ 64 - v) / 100 + 48.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) [] (Mh_0208_blobs1.kr_b_432 ())). Qed.
Definition c_rest (k : Z) : bool := let t := k - 100 * (k / 100) in (e_rest k (k / 100) =? t) && (e_t10b k (k / 100) =? t / 10) && (0 <=? t / 10) && (t / 10 <=? 9) && (e_c10b k (k / 100) =? t / 10 + 48).
Lemma rest_ok k : 100 <= k <= 999 ->
  e_rest k (k / 100) = k - 100 * (k / 100) /\ e_t10b k (k / 100) = (k - 100 * (k / 100)) / 10 /\ 0 <= (k - 100 * (k / 100)) / 10 <= 9 /\ e_c10b k (k / 100) = (k - 100 * (k / 100)) / 10 + 48.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) [] (Mh_0208_blobs1.kr_b_433 ())). Qed.
Definition c_unit (t : Z) : bool := (48 <=? e_unit t (t / 10)) && (e_unit t (t / 10) <=? 57).
Lemma unit_ok t : 0 <= t <= 99 -> 48 <= e_unit t (t / 10) <= 57.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) [] (Mh_0208_blobs1.kr_b_434 ())). Qed.
Lemma zbv_cong (a b : Z) : a mod 2 ^ 64 = b mod 2 ^ 64 -> Z_to_bv 64 a = Z_to_bv 64 b.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) [] (Mh_0208_blobs1.kr_b_435 ())). Qed.
Lemma zbv_of_unsigned (w : word) (v : Z) : bv_unsigned w = v -> w = Z_to_bv 64 v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) [] (Mh_0208_blobs1.kr_b_436 ())). Qed.
Lemma zbv_neg (v : Z) : Z_to_bv 64 ((-1) * v) = Z_to_bv 64 (2 ^ 64 - v).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) [] (Mh_0208_blobs1.kr_b_437 ())). Qed.
Lemma ra_lit v : 0 <= v < 2 ^ 47 -> v mod 2 = 0 -> L5.ra_ok v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) [] (Mh_0208_blobs1.kr_b_438 ())). Qed.

(* [comment removed for export] *)
Definition own (E : Z) (R : bvmap 5 word) (M : mem) : Prop :=
  L5.u64_at RSEGS M (E - 8) (bvu (getr R (reg 1))) /\ L5.u64_at RSEGS M (E - 16) (bvu (getr R (reg 8)))
  /\ L5.u64_at RSEGS M (E - 24) (bvu (getr R (reg 9))) /\ L5.u64_at RSEGS M (E - 32) (bvu (getr R (reg 18)))
  /\ L5.u64_at RSEGS M (E - 40) (bvu (getr R (reg 19))).
Definition ocell (E : Z) (a : Z) : Prop := E - 40 <= a < E.
Lemma own_agree E R M1 M1' : 0 <= E - 40 -> E <= 2 ^ 64 ->
  own E R M1 -> (forall a, ocell E a -> M1' (Z_to_bv 64 a) = M1 (Z_to_bv 64 a)) -> own E R M1'.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) [] (Mh_0208_blobs1.kr_b_439 ())). Qed.

Section WithHeap.
Context {SCFG_P : ScfgP}.
Variables (L : asan_layout) (ar : asan_run) (C : asan_statics_cells) (HI : asan_iface).
Hypothesis LY : PMA.layout L C.
Hypothesis HIok : HAJ.asan_iface_okR L ar C SCFG HI.
Hypothesis PB : PQASCA.pb_specCA RSEGS AD L ar HI 0xf4640.
Abbreviation HV := (PMSPA.HV L ar).

Section Body.
Variables (K : TSet) (R : bvmap 5 word) (M : mem) (model : Model) (LB : list (Z * Z)) (FF LK : list fframe) (Aw : list (Z * Z)) (cr : credit)
          (so os sp r SM g : Z) (x0 : PM.vstr) (bs0 : list Z).
Hypothesis HH : ri_inv HI (PM.vs_own x0 ++ LB) FF LK cr Aw M (vml_of model).
Hypothesis AM : L5CA.amodel_ok Aw model.
Hypothesis K0 : K [].
Hypothesis ENT : VA.entryAs AD L ar R M sp r VA.FE_SCR.
Hypothesis FRM : VA.ffroomN VA.N1 FF LK.
Hypothesis FRS : PMSPA.ffrsA FF sp.
Hypothesis RSO : VA.rcellA ar M sp so 8.
Hypothesis SO8 : so mod 8 = 0.
Hypothesis CSO : L5.u64_at RSEGS M so os.
Hypothesis AOS : PMSPA.aobjA FF os 24.
Hypothesis OS8 : os mod 8 = 0.
Hypothesis KS0 : kstr_at M os x0.
Hypothesis KC0 : kcontent M os x0 bs0.
Hypothesis KOK0 : PQMA.ks_ok SM x0 g.
Hypothesis SMX : SM <= PQASA.SMMAX.
Hypothesis SZ0 : PM.vs_size x0 + VA.FE_MAX <= SM.
Hypothesis BASE : PMSTA.base_okA RSEGS AD M.
Hypothesis CR0 : PMSP.credit_le (PMSPA.scA L (PQMA.pot_ks HV SM x0 g)) cr.
Hypothesis KONT : forall (fx' : FPState) (R' : bvmap 5 word) (M' : mem) (model' : Model) (LK' : list fframe) (Aw' : list (Z * Z)) (x' : PM.vstr) (g' : Z) (cr' : credit) (ds : list Z),
    regs_preserved R R' -> True -> kstr_at M' os x' -> kcontent M' os x' (bs0 ++ ds) -> NEM.ascii ds -> PQMA.ks_ok SM x' g' ->
    PM.vs_size x0 <= PM.vs_size x' <= PM.vs_size x0 + VA.FE_MAX ->
    L5CA.ahpres L ar LB FF sp VA.FE_SCR ((os, 24) :: []) M M' ->
    PMSP.credit_keep cr cr' (PMSPA.scA L (PQMA.pot_ks HV SM x0 g)) (PMSPA.scA L (PQMA.pot_ks HV SM x' g')) ->
    model_rt model model' -> incl LK' LK -> incl Aw Aw' -> L5CA.amodel_ok Aw' model' ->
    ri_inv HI (PM.vs_own x' ++ LB) FF LK' cr' Aw' M' (vml_of model') ->
    srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx' R' r M' model') K.

Local Notation OWN := (own sp R).
Local Notation OC := (ocell sp).
Local Notation TT := (fun _ : mem => True).
Local Notation PT := (fun _ : bvmap 5 word => True).

Lemma sp_facts : 140735332487168 + 14384 <= sp /\ sp <= 140737488355328 /\ sp mod 16 = 0 /\ 0 <= r < 2 ^ 47 /\ r mod 2 = 0.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_440 ())). Qed.
Lemma WIMG0 : forall rr : L5.range, In rr [] -> 0 <= fst rr /\ fst rr + snd rr <= 7036928.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_441 ())). Qed.
Lemma HSCR16 : VA.FE_SCR mod 16 = 0.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_442 ())). Qed.
Lemma HFR : 0 <= 48 /\ 48 mod 16 = 0.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_443 ())). Qed.
Lemma HSCR : VA.PB_SCR + 48 <= VA.FE_SCR.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_444 ())). Qed.
Lemma GOCR : forall a, OC a -> sp - 48 <= a < sp.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_445 ())). Qed.
Lemma GOWN : forall M1 M1' : mem, OWN M1 -> (forall a, OC a -> M1' (Z_to_bv 64 a) = M1 (Z_to_bv 64 a)) -> OWN M1'.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_446 ())). Qed.
Lemma NEED1 : forall k, In k PQRA.FCM -> 1 <= VA.N1 k.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_447 ())). Qed.

(* [comment removed for export] *)
Local Notation KIT f := (f L ar C HI LY HIok 0xf4640 PB K R M model LB FF LK Aw cr so os sp r SM g x0 bs0 VA.FE_SCR VA.N1 (@nil L5.range) VA.FE_MAX PT
                           HH AM K0 ENT FRM FRS RSO SO8 CSO AOS OS8 KS0 KC0 KOK0 SMX SZ0 BASE CR0 KONT WIMG0 HSCR16 48 OC OWN HFR HSCR GOCR GOWN NEED1).
Local Notation INV := (VAKC.inv L ar HI M model LB FF LK Aw cr os sp SM g x0 bs0 VA.FE_SCR (@nil L5.range)).

(* [comment removed for export] *)
Lemma ownv n M1 model1 LK1 Aw1 x g1 cr1 : INV OWN n M1 model1 LK1 Aw1 x g1 cr1 -> OWN (mrestrict (ahid Aw1 model1) M1).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_448 ())). Qed.

(* [comment removed for export] *)
Definition RI (Rx : bvmap 5 word) : Prop :=
  getr Rx (reg 2) = Z_to_bv 64 (sp - 48) /\ getr Rx (reg 8) = Z_to_bv 64 so /\ getr Rx (reg 18) = Z_to_bv 64 (so / 8 + 2147450880)
  /\ (forall j, In j [3; 4; 20; 21; 22; 23; 24; 25; 26; 27]%nat -> getr Rx (reg j) = getr R (reg j)).
Lemma RI_call R1 R2 : RI R1 -> regs_preserved R1 R2 -> RI R2.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_449 ())). Qed.
Lemma RI_piece R1 R2 (ks : list nat) : RI R1 -> (forall j, In j ks -> getr R2 (reg j) = getr R1 (reg j)) ->
  forallb (fun j => existsb (Nat.eqb j) ks) [2; 8; 18; 3; 4; 20; 21; 22; 23; 24; 25; 26; 27]%nat = true -> RI R2.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_450 ())). Qed.
Lemma RI_gptp R1 : RI R1 -> getr R1 (reg 3) = Z_to_bv 64 (pa_gp AD) /\ getr R1 (reg 4) = Z_to_bv 64 (hl_tp L).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_451 ())). Qed.

(* [comment removed for export] *)
Lemma FIN (n c : Z) (fx1 : FPState) (R1 R2 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) (ks : list nat) :
  INV OWN n M1 model1 LK1 Aw1 x1 g1 cr1 -> 0 <= n < 4 -> RI R1 ->
  (forall j, In j ks -> getr R2 (reg j) = getr R1 (reg j)) ->
  forallb (fun j => existsb (Nat.eqb j) ks) [3; 4; 20; 21; 22; 23; 24; 25; 26; 27]%nat = true ->
  getr R2 (reg 1) = Z_to_bv 64 (bvu (getr R (reg 1))) -> getr R2 (reg 2) = Z_to_bv 64 sp ->
  getr R2 (reg 8) = Z_to_bv 64 (bvu (getr R (reg 8))) -> getr R2 (reg 9) = Z_to_bv 64 (bvu (getr R (reg 9))) ->
  getr R2 (reg 18) = Z_to_bv 64 (bvu (getr R (reg 18))) -> getr R2 (reg 19) = Z_to_bv 64 (bvu (getr R (reg 19))) ->
  getr R2 (reg 10) = Z_to_bv 64 os -> getr R2 (reg 11) = Z_to_bv 64 c -> 0 <= c < 128 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R2 0xf4640 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_452 ())). Qed.

(* [comment removed for export] *)
Lemma vfacts own' n M1 model1 LK1 Aw1 x g1 cr1 :
  INV own' n M1 model1 LK1 Aw1 x g1 cr1 ->
  (L5.img_clear (mrestrict (ahid Aw1 model1) M1) 65536 1409024 /\ L5.u64_at RSEGS (mrestrict (ahid Aw1 model1) M1) 1440376 2147450880)
  /\ L5.writable RSEGS (mrestrict (ahid Aw1 model1) M1) (sp - 40) 40
  /\ (L5.u64_at RSEGS (mrestrict (ahid Aw1 model1) M1) so os /\ L5KA.zeros_at (mrestrict (ahid Aw1 model1) M1) (so / 8 + 2147450880) 1)
  /\ (140735332487216 <= sp <= 140737488355328 /\ sp mod 16 = 0 /\ 140735332487168 <= so <= 140737488355320 /\ (sp - 40 + 40 <= so \/ so + 8 <= sp - 40)
      /\ 0 <= sp < 2 ^ 64 /\ 0 <= os < 2 ^ 64 /\ 0 <= so < 2 ^ 64).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_453 ())). Qed.

(* [comment removed for export] *)
Lemma STEP_D (n kk : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN n M1 model1 LK1 Aw1 x1 g1 cr1 -> 0 <= n < 4 -> RI R1 -> getr R1 (reg 9) = Z_to_bv 64 kk -> 0 <= kk <= 9 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbcf80 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_454 ())). Qed.

(* [comment removed for export] *)
Lemma STEP_G (n t : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN n M1 model1 LK1 Aw1 x1 g1 cr1 -> 0 <= n < 4 -> RI R1 -> getr R1 (reg 9) = Z_to_bv 64 t -> 10 <= t <= 99 -> getr R1 (reg 19) = Z_to_bv 64 (t / 10) ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbcfbc M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_455 ())). Qed.

(* [comment removed for export] *)
Lemma STEP_F (n t : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN n M1 model1 LK1 Aw1 x1 g1 cr1 -> 0 <= n < 4 -> RI R1 -> getr R1 (reg 9) = Z_to_bv 64 t -> 0 <= t <= 99 -> getr R1 (reg 19) = Z_to_bv 64 (t / 10) ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbd034 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_456 ())). Qed.

(* [comment removed for export] *)
Lemma STEP_E (n kk : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN n M1 model1 LK1 Aw1 x1 g1 cr1 -> 0 <= n < 3 -> RI R1 -> getr R1 (reg 9) = Z_to_bv 64 kk -> 100 <= kk <= 999 -> getr R1 (reg 19) = Z_to_bv 64 (kk / 100) ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbd004 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_457 ())). Qed.

(* [comment removed for export] *)
Lemma STEP_Cp (k : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN 1 M1 model1 LK1 Aw1 x1 g1 cr1 -> RI R1 -> getr R1 (reg 9) = Z_to_bv 64 k -> 0 <= k <= 999 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbcf54 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_458 ())). Qed.

(* [comment removed for export] *)
Lemma STEP_Cn (v : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN 1 M1 model1 LK1 Aw1 x1 g1 cr1 -> RI R1 -> getr R1 (reg 9) = Z_to_bv 64 v -> 2 ^ 64 - 999 <= v <= 2 ^ 64 - 1 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbcf60 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_459 ())). Qed.

(* [comment removed for export] *)
Lemma STEP_B (kv : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN 0 M1 model1 LK1 Aw1 x1 g1 cr1 -> RI R1 -> getr R1 (reg 9) = Z_to_bv 64 kv -> getr R1 (reg 10) = Z_to_bv 64 os ->
  (0 <= kv <= 999 \/ 2 ^ 64 - 999 <= kv <= 2 ^ 64 - 1) ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbcf48 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_460 ())). Qed.

(* [comment removed for export] *)
Lemma fe_body (fx : FPState) (k : Z) :
  getr R 10%bv = Z_to_bv 64 k -> -999 <= k <= 999 -> getr R 11%bv = Z_to_bv 64 so ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx R 0xbcf08 M model) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_461 ())). Qed.

End Body.

Theorem fe_ok : VAC.fe_specCA RSEGS AD L ar HI 0xbcf08.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSFeC ()) ["WithHeap"] (Mh_0208_blobs1.kr_b_462 ())). Qed.

End WithHeap.
End VASFEC.

End VaSFeC.
Module VaSPrC.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.LeanFeed.
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool FunctionalExtensionality.
From stdpp.bitvector Require Import definitions.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0089. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0135. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0092. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0179. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.asan.Mh_0210. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require L5ADetailHR. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0018. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0024. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PgV8. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0225. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0012. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0102. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.CatExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0030.CatSim OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.SeqExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.StoreOk OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.Hoare OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.ShapeAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.SpinAlg OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0036.AsanAcct OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.HeapIface OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0089.HeapIfaceA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0089.IcptIfaceA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.LibIface OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.L5Defs OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.L5Core OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0135.L5CoreKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5Kn OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0144.L5KnA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0092.L5LazyA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0179.L5DefsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.asan.Mh_0210.L5CoreA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.asan.Mh_0210.L5CoreSpecsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.asan.Mh_0210.L5StepAR OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.asan.Mh_0210.L5CoreBR OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.asan.L5ADetailHR OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0018.PmLayout OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0024.PmLayoutA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0018.PnLayout OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0024.PnLayoutA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.PmModel OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.PmModelFacts OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.PmStatics OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0092.PmStaticsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0089.HeapIfaceAMx OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.PmSpecs OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.PmParSpecs OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PmSpecsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PmSpecsAX OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnSpecsAa OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PmModelFactsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnStepA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnASrcKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.PgSrc OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PgV8 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PgSrcA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PgV8A OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnRunBA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PgTxtKitA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0018.PnLayoutQ OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0024.PnLayoutQA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0092.PnQStaticsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0092.PnModelA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnRunA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnVisA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnRunAa OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnAdStrA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0225.VaSpec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0225.VaKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0208.VaSPrP1 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0208.VaSPrP2 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0208.VaSPrP3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0208.VaSPrP4 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0012.Na0_code_rbc538_bc53c OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0102.NemModel OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0225.PnAdStrCA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0225.VaSpecC OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0225.VaKitC.
Import ListNotations.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0002.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_VaSPrC () := "C47Corelib7Classes9Morphisms6ProperC47Corelib7Classes?RelationClasses9ReflexiveC47Corelib7Classes9Morphisms:forall_defC46Stdlib5Lists4List2hdC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA6fframeC46Stdlib5Lists4List4inclC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55rangeC6ARocqVerifyHarness?AgentSubmission7Mh_01306SegRun2SR6regionC47Corelib4Init5Logic8eq_ind_rC6ARocqVerifyHarness?AgentSubmission7Mh_01444L5Kn3L5K@nth_error_singleK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02C56Stdlib6ZArith6BinInt1Z3powC56Stdlib6ZArith6BinInt1Z6moduloI45stdpp9bitvector;definitions2bv00I47Corelib4Init5Logic2eq00C45stdpp9bitvector;definitions;bv_unsignedC45stdpp9bitvector;definitions5bv_eqK47Corelib7Numbers7BinNums1N02C45stdpp9bitvector;definitions7Z_to_bvC45stdpp9bitvector;definitions7bv_wrapC45stdpp9bitvector;definitions@Z_to_bv_unsignedI47Corelib7Numbers7BinNums1Z00K47Corelib7Numbers7BinNums8positive03I47Corelib7Numbers7BinNums1N00I47Corelib4Init5Logic3and00C56Stdlib6ZArith6BinInt1Z3mulC56Stdlib6ZArith6BinInt1Z3addK47Corelib4Init5Logic2eq01C56Stdlib6ZArith6BinInt1Z>pow_pos_nonnegC56Stdlib6ZArith6BinInt1Z2ltC56Stdlib6ZArith6BinInt1Z2leC56Stdlib6ZArith6BinInt1Z:pow_nonnegK47Corelib4Init9Datatypes4list01I47Corelib4Init9Datatypes4list00K46Stdlib9micromega6VarMap1t01I46Stdlib9micromega6VarMap1t00I46Stdlib9micromega=RingMicromega7Formula00K46Stdlib9micromega7EnvRing5PExpr01K46Stdlib9micromega7EnvRing5PExpr07K46Stdlib9micromega=RingMicromega7Formula01K46Stdlib9micromega5Tauto8GFormula04K46Stdlib9micromega5Tauto8GFormula07C46Stdlib9micromega5Tauto8BFormulaC46Stdlib9micromega:ZMicromega=ZTautoCheckerC46Stdlib9micromega6VarMap4findC46Stdlib9micromega:ZMicromegaCZTautoChecker_soundC56Stdlib6ZArith6BinInt1Z7mod_addc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC8zbv_congK47Corelib7Numbers7BinNums1Z01I47Corelib4Init5Logic4True00I46Stdlib9micromega:ZMicromega;ZArithProof00C46Stdlib9micromega5Tauto5eKindI47Corelib4Init9Datatypes4unit00K46Stdlib9micromega5Tauto4kind01K46Stdlib9micromega=RingMicromega3Op201K47Corelib4Init9Datatypes4unit01I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01I47Corelib4Init5Logic5False00C45stdpp9bitvector;definitionsCZ_to_bv_bv_unsignedC47Corelib4Init5Logic6eq_symC47Corelib4Init5Logic6eq_indK47Corelib7Numbers7BinNums8positive01K47Corelib4Init5Logic3and01C46Stdlib5Lists4List2InC56Stdlib5Arith8PeanoNat3Nat3eqbC46Stdlib5Lists4List7forallbC47Corelib4Init5Logic3iffC47Corelib7Classes9MorphismsDiff_impl_subrelationC46Stdlib5Lists4List>forallb_forallC46Stdlib5Lists4List7existsbI47Corelib4Init5Logic2ex00C46Stdlib5Lists4List>existsb_existsC56Stdlib5Arith8PeanoNat3Nat6eqb_eqc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC4inksI47Corelib4Init9Datatypes3nat00C4ELinuxProcessSemantics5Riscv7Prelude5bvmapC56Stdlib6ZArith6BinInt1Z6of_natC4ARocqVerifyHarness?AgentSubmission8PropExec4getrK47Corelib4Init9Datatypes4list02K47Corelib4Init5Logic2or01c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC7inks_okC5ARocqVerifyHarness?AgentSubmission7Mh_00849HeapIface>regs_preservedC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02108L5StepAR5L5SAR?cs_of_preservedC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02108L5StepAR5L5SAR6cs_allI47Corelib4Init9Datatypes6option00C56Stdlib6ZArith6BinInt1Z3subc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC3ownK47Corelib4Init9Datatypes3nat02c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC5ocellK46Stdlib9micromega6VarMap1t02K46Stdlib9micromega6VarMap1t03K46Stdlib9micromega7EnvRing5PExpr02K47Corelib4Init9Datatypes6option02C6ARocqVerifyHarness?AgentSubmission7Mh_00906L5Core3L5C8agree_onC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L56u64_atK46Stdlib9micromega7EnvRing5PExpr04K46Stdlib9micromega7EnvRing5PExpr03K46Stdlib9micromega5Tauto8GFormula05K46Stdlib9micromega5Tauto8GFormula08C6ARocqVerifyHarness?AgentSubmission7Mh_00906L5Core3L5C<u64_at_agreeC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsK46Stdlib9micromega=RingMicromega3Op205K46Stdlib9micromega=RingMicromega3Op203K47Corelib4Init9Datatypes3nat01C6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA6FE_SCRC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA6FE_MAXC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA2N1C56Stdlib6ZArith6BinInt1Z7le_reflC6ARocqVerifyHarness?AgentSubmission7Mh_02136PnRunA4PQRA3FCMC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC7bvu_rngc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC2svK46Stdlib9micromega=RingMicromega5Psatz02K46Stdlib9micromega:ZMicromega;ZArithProof02K47Corelib7Numbers7BinNums1Z03K46Stdlib9micromega7EnvRing3Pol01K46Stdlib9micromega=RingMicromega5Psatz04K46Stdlib9micromega5Tauto8GFormula06I47Corelib4Init5Logic2or00K46Stdlib9micromega=RingMicromega5Psatz06K46Stdlib9micromega:ZMicromega;ZArithProof01K46Stdlib9micromega7EnvRing5PExpr05c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC7zbv_eqmK45stdpp9bitvector;definitions2bv01C6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55ra_okC5ARocqVerifyHarness?AgentSubmission7Mh_00188PmLayout5pa_gpC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA5hl_tpC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02107L5CoreA4L5CA4astkC56Stdlib6ZArith6BinInt1Z3divC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA;shadow_zeroC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA8ar_sptopC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L57definedC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA<ar_stack_topC46Stdlib9micromega9SatDivModCZ_mod_nonneg_nonnegC56Stdlib6ZArith6BinInt1Z7div_modC47Corelib4Init5Logic3notC56Stdlib6ZArith6BinInt1Z=mod_pos_boundC56Stdlib6ZArith6BinInt1Z=mod_neg_boundC56Stdlib5omega8PreOmega1Z;div_0_r_extC56Stdlib5omega8PreOmega1Z;mod_0_r_extK46Stdlib9micromega=RingMicromega5Psatz07K46Stdlib9micromega=RingMicromega5Psatz05K46Stdlib9micromega:ZMicromega;ZArithProof03K46Stdlib9micromega5Tauto8GFormula03K47Corelib4Init5Logic4True01C5ARocqVerifyHarness?AgentSubmission7Mh_00249PnLayoutA6ADDR_AC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA6PR_SCRC47Corelib4Init9Datatypes3fstC47Corelib4Init9Datatypes3sndC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA6PB_SCRc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC9own_agreec6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC8sp_factsI47Corelib4Init9Datatypes4prod00C6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC3invC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L59img_clearC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA4ahidC6ARocqVerifyHarness?AgentSubmission7Mh_01797L5DefsA3L5A4avisC6ARocqVerifyHarness?AgentSubmission7Mh_01445L5KnA4L5KA8zeros_atC5ARocqVerifyHarness?AgentSubmission7Mh_00368AsanAcct9mrestrictC6ARocqVerifyHarness?AgentSubmission7Mh_00907PmModel2PM6vs_ownC47Corelib4Init9Datatypes3appC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA6vml_ofC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA6ri_invC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02107L5CoreA4L5CA9amodel_okC5ARocqVerifyHarness?AgentSubmission7Mh_0089:HeapIfaceA8model_rtK47Corelib4Init9Datatypes4prod01C6ARocqVerifyHarness?AgentSubmission7Mh_00907PmModel2PM7vs_sizeC6ARocqVerifyHarness?AgentSubmission7Mh_02138PmSpecsA5PMSPA2HVC6ARocqVerifyHarness?AgentSubmission7Mh_00928PnModelA4PQMA6pot_ksC5ARocqVerifyHarness?AgentSubmission7Mh_00368AsanAcctAmrestrict_visiblec6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC4GOWNC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC6pfactsC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L58writableC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02108L5StepAR5L5SAR2ekC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02108L5StepAR5L5SAR2dkC6ARocqVerifyHarness?AgentSubmission7Mh_02138PmSpecsA5PMSPA3scAC6ARocqVerifyHarness?AgentSubmission7Mh_0092:PmStaticsA5PMSTA8base_okAC6ARocqVerifyHarness?AgentSubmission7Mh_00907PmSpecs4PMSP;credit_keepC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC6txt_okC6ARocqVerifyHarness?AgentSubmission7Mh_00928PnModelA4PQMA5ks_okC6ARocqVerifyHarness?AgentSubmission7Mh_00928PnModelA4PQMA7kstr_atC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA6PR_MAXc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC5WIMG0c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC6HSCR16c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC3HFRc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC4HSCRc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC4GOCRc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC5NEED1C6ARocqVerifyHarness?AgentSubmission7Mh_02138PmSpecsA5PMSPA4accAI4ELinuxProcessSemantics?LinuxProcessSem5State5Model00I6ARocqVerifyHarness?AgentSubmission7Mh_00907PmModel2PM4vstr00C5ARocqVerifyHarness?AgentSubmission7Mh_00849HeapIface6creditK47Corelib4Init9Datatypes4bool02C46Stdlib9micromega9SatDivModCZ_div_nonneg_nonnegC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L5<writable_subC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC3ctxC6ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs2L55u8_atC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC9buf_factsc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC2RCC6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K9In_of_memc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC4KEPTC47Corelib4Init5Logic7and_indC47Corelib4Init5Logic6or_indK47Corelib4Init5Logic2or02C47Corelib4Init5Logic9False_indC6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K3rl3C6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K3rl4C7ARocqVerifyHarness?AgentSubmission4asan7Mh_02108L5StepAR5L5SARBpreserved_by_indexc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC3sveC6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K3rl2C4ELinuxProcessSemantics?LinuxProcessSem>RiscvSemantics8is_ecallc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC9back_regsC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC3RETC5ARocqVerifyHarness?AgentSubmission7Mh_0012ENa0_code_rbc538_bc53c7W_bc3f4C5ARocqVerifyHarness?AgentSubmission7Mh_0012ENa0_code_rbc538_bc53c7F_bc3f4C5ARocqVerifyHarness?AgentSubmission7Mh_0012ENa0_code_rbc538_bc53c7D_bc3f4I4ARocqVerifyHarness?AgentSubmission8PropExec7FPState00c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC6vfactsC5ARocqVerifyHarness?AgentSubmission7Mh_00846L5Defs4SCFGc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC6bfactsc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC4ownvc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC2VMc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP17alignedc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1<va_prT1_concC5ARocqVerifyHarness?AgentSubmission7Mh_00387StoreOk9mem_growsC4ARocqVerifyHarness?AgentSubmission8PropExec7seg_romC4ARocqVerifyHarness?AgentSubmission8PropExec4mkstC6ARocqVerifyHarness?AgentSubmission7Mh_00907PmSpecs4PMSP3cfgC5ARocqVerifyHarness?AgentSubmission7Mh_00367SpinAlg9srealizesI5ARocqVerifyHarness?AgentSubmission7Mh_00306CatSim6msteps00C6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC4TAILC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC8PIECE_roC4ARocqVerifyHarness?AgentSubmission5BMode;bm_off_instc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC3KUrc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC4KKUrc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1:KS_va_prT1C6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K3rl1c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP47alignedc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4;va_prF_concc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC5RC_ksC56Stdlib6ZArith6BinInt1Z6to_natC56Stdlib6ZArith6BinInt1Z3maxC47Corelib4Init5Logic8iff_reflC46Stdlib9micromega;ZifyClasses5mkrelC56Stdlib6ZArith6BinInt1Z8max_specC46Stdlib9micromega;ZifyClasses;rew_iff_revc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC4kregc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC3L7KC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC7buf_clsC46Stdlib9micromega;ZifyClasses5mkappC46Stdlib9micromega8ZifyInst@of_nat_to_nat_eqc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP49KS_va_prFC46Stdlib6ZArith:ZArith_dec;Z_lt_le_decI47Corelib4Init6Specif7sumbool00c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4<va_prE1_concc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC7RC_gptpc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC6ra_litc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC7RC_callc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC4cregc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC2GKc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4<va_prE2_concc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC2FKC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC4CALLc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4:KS_va_prE2c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP47VASPRP4:KS_va_prE1C56Stdlib6ZArith6BinInt1Z3oppC56Stdlib6ZArith4Znat5Nat2Z9is_nonnegK46Stdlib9micromega7EnvRing5PExpr06c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP37alignedc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3=va_prN5e_concC56Stdlib6ZArith6BinInt1Z7add_0_rC56Stdlib6ZArith6BinInt1Z7sub_0_rc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC3L6Kc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3=va_prN5c_concC47Corelib4Init9Datatypes7nat_indC46Stdlib9micromega;ZifyClasses7rew_iffC56Stdlib6ZArith4Znat5Nat2Z8inj_succc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3;KS_va_prN5ec6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3;KS_va_prN5cc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3<va_prC3_concc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC3D3Kc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3:KS_va_prC3c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC2RDC56Stdlib6ZArith6BinInt1Z6eq_decc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3=va_prB3z_concK47Corelib4Init5Logic2ex01c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3=va_prB3n_concc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC3C3Kc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3;KS_va_prB3zc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP37VASPRP3;KS_va_prB3nC35stdpp7tactics<f_equal_helpc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP27alignedc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2<va_prD2_concc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC3L4Kc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2:KS_va_prD2c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2<va_prB2_concc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC3L3Kc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP27VASPRP2:KS_va_prB2c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1=va_prN2e_concc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC3T1Kc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1=va_prN2c_concc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1;KS_va_prN2ec6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1;KS_va_prN2cc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1=va_prN1z_concc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1=va_prN1p_concc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC3L2Kc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1=va_prN1c_concc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1;KS_va_prN1cc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1;KS_va_prN1zc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1;KS_va_prN1pc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1<va_prB1_concc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC3L1Kc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1:KS_va_prB1c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC4EXPKc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC3B2Kc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC3B3Kc6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC3B1Kc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1<va_prAp_concc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1<va_prAn_concC6ARocqVerifyHarness?AgentSubmission7Mh_01797L5DefsA3L5A:u64_at_visC47Corelib4Init5Logic5proj1c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC8DISPATCHC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC4INITC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaKitC4VAKC5PIECEC6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K4rl10C6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K4rl11C6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K4rl12C6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K4rl13C6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K4rl14C6ARocqVerifyHarness?AgentSubmission7Mh_01359L5CoreKit3L5K4rl15c6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC3EK2c6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1:KS_va_prApc6ARocqVerifyHarness?AgentSubmission7Mh_02087VaSPrP17VASPRP1:KS_va_prAnC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA7entryAsC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA7ffroomNC6ARocqVerifyHarness?AgentSubmission7Mh_02138PmSpecsA5PMSPA5ffrsAC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA6rcellAC6ARocqVerifyHarness?AgentSubmission7Mh_02138PmSpecsA5PMSPA5aobjAC6ARocqVerifyHarness?AgentSubmission7Mh_01028NemModel3NEM5asciiC6ARocqVerifyHarness?AgentSubmission7Mh_00907PmSpecs4PMSP9credit_leC35stdpp4base6decidec6ARocqVerifyHarness?AgentSubmission7Mh_02086VaSPrC6VASPRC7pr_bodyC6ARocqVerifyHarness?AgentSubmission7Mh_02257VaSpecC3VAC9pr_specCAC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA5rbufAC6ARocqVerifyHarness?AgentSubmission7Mh_02257VaSpecC3VAC9digits_atC6ARocqVerifyHarness?AgentSubmission7Mh_01028NemModel3NEM8kcontentC7ARocqVerifyHarness?AgentSubmission4asan7Mh_02107L5CoreA4L5CA6ahpresC35stdpp4base:decide_relC6ARocqVerifyHarness?AgentSubmission7Mh_02256VaSpec2VA5G_BUFC6ARocqVerifyHarness?AgentSubmission7Mh_02138PnAdStrA5PQASA5SMMAXC45stdpp7numbers1Z6le_decC5ARocqVerifyHarness?AgentSubmission7Mh_00368ShapeAlg4TSetI4ELinuxProcessSemantics?LinuxProcessSem5State5event00". Local Ltac lia := L5FastLia.plia.

Module VASPRC.
Import L5A L5SAR.
Ltac inl := apply L5K.In_of_mem; vm_compute; reflexivity.
Abbreviation reg i := (Z_to_bv 5 (Z.of_nat i)).
Abbreviation RSEGS := Asan.M.loaded_segments.
Abbreviation mem := (word -> option byte).
Abbreviation AD := PMA.AD.
Abbreviation accA := PMSPA.accA.
Abbreviation kstr_at := (PQMA.kstr_at RSEGS accA).
Abbreviation kcontent := (NEM.kcontent RSEGS).
Abbreviation bvu x := (bv_unsigned x).

(* [comment removed for export] *)
Ltac fd := lazymatch goal with
  | |- _ <= _ <= _ => first [apply VAKC.bvu_rng | Lia.lia]
  | |- _ <= _ < _ => first [apply VAKC.bvu_rng | Lia.lia]
  | |- _ \/ _ => Lia.lia
  | |- VASPRP1.aligned _ _ => unfold VASPRP1.aligned; assumption
  | |- VASPRP2.aligned _ _ => unfold VASPRP2.aligned; assumption
  | |- VASPRP3.aligned _ _ => unfold VASPRP3.aligned; assumption
  | |- VASPRP4.aligned _ _ => unfold VASPRP4.aligned; assumption
  | |- getr _ _ = _ => L5SAR.greg
  | |- _ => assumption
  end.

Lemma zbv_cong (a b : Z) : a mod 2 ^ 64 = b mod 2 ^ 64 -> Z_to_bv 64 a = Z_to_bv 64 b.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) [] (Mh_0208_blobs1.kr_b_463 ())). Qed.
Lemma zbv_eqm (a b q : Z) : a = b + q * 2 ^ 64 -> Z_to_bv 64 a = Z_to_bv 64 b.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) [] (Mh_0208_blobs1.kr_b_464 ())). Qed.
Lemma zbv_of_unsigned (w : word) (v : Z) : bv_unsigned w = v -> w = Z_to_bv 64 v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) [] (Mh_0208_blobs1.kr_b_465 ())). Qed.
Lemma ra_lit v : 0 <= v < 2 ^ 47 -> v mod 2 = 0 -> L5.ra_ok v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) [] (Mh_0208_blobs1.kr_b_466 ())). Qed.
Definition inks (l ks : list nat) : bool := forallb (fun j => existsb (Nat.eqb j) ks) l.
Lemma inks_ok l ks : inks l ks = true -> forall j, In j l -> In j ks.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) [] (Mh_0208_blobs1.kr_b_467 ())). Qed.
(* [comment removed for export] *)
Lemma kreg (R1 R2 : bvmap 5 word) (ks : list nat) (j : nat) (v : word) :
  (forall x, In x ks -> getr R2 (reg x) = getr R1 (reg x)) -> inks [j] ks = true -> getr R1 (reg j) = v -> getr R2 (reg j) = v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) [] (Mh_0208_blobs1.kr_b_468 ())). Qed.
(* [comment removed for export] *)
Lemma creg (R1 R2 : bvmap 5 word) (j : nat) (v : word) : regs_preserved R1 R2 -> In j L5SAR.cs_all -> getr R1 (reg j) = v -> getr R2 (reg j) = v.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) [] (Mh_0208_blobs1.kr_b_469 ())). Qed.

(* [comment removed for export] *)
Definition own (E : Z) (R : bvmap 5 word) (M : mem) : Prop :=
  L5.u64_at RSEGS M (E - 8) (bvu (getr R (reg 1))) /\ L5.u64_at RSEGS M (E - 16) (bvu (getr R (reg 8)))
  /\ L5.u64_at RSEGS M (E - 24) (bvu (getr R (reg 9))) /\ L5.u64_at RSEGS M (E - 32) (bvu (getr R (reg 18)))
  /\ L5.u64_at RSEGS M (E - 40) (bvu (getr R (reg 19))) /\ L5.u64_at RSEGS M (E - 48) (bvu (getr R (reg 20)))
  /\ L5.u64_at RSEGS M (E - 56) (bvu (getr R (reg 21))) /\ L5.u64_at RSEGS M (E - 64) (bvu (getr R (reg 22)))
  /\ L5.u64_at RSEGS M (E - 72) (bvu (getr R (reg 23))) /\ L5.u64_at RSEGS M (E - 80) (bvu (getr R (reg 24)))
  /\ L5.u64_at RSEGS M (E - 88) (bvu (getr R (reg 25))).
Definition ocell (E : Z) (a : Z) : Prop := E - 88 <= a < E.
Lemma own_agree E R M1 M1' : 0 <= E - 88 -> E <= 2 ^ 64 ->
  own E R M1 -> (forall a, ocell E a -> M1' (Z_to_bv 64 a) = M1 (Z_to_bv 64 a)) -> own E R M1'.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) [] (Mh_0208_blobs1.kr_b_470 ())). Qed.

Local Notation TT := (fun _ : mem => True).
Local Notation PT := (fun _ : bvmap 5 word => True).
Local Notation SBL := 2147450880 (only parsing).

Section WithHeap.
Context {SCFG_P : ScfgP}.
Variables (L : asan_layout) (ar : asan_run) (C : asan_statics_cells) (HI : asan_iface).
Hypothesis LY : PMA.layout L C.
Hypothesis HIok : HAJ.asan_iface_okR L ar C SCFG HI.
Hypothesis PB : PQASCA.pb_specCA RSEGS AD L ar HI 0xf4640.
Hypothesis FE : VAC.fe_specCA RSEGS AD L ar HI 0xbcf08.
Abbreviation HV := (PMSPA.HV L ar).

(* [comment removed for export] *)
Definition fe_pre : bvmap 5 word -> mem -> list fframe -> Z -> Z -> Z -> Prop :=
  fun R0 _ _ so0 _ _ => exists k0, getr R0 10%bv = Z_to_bv 64 k0 /\ -999 <= k0 <= 999 /\ getr R0 11%bv = Z_to_bv 64 so0.
Lemma FEQ : VAC.pusherAC RSEGS AD L ar HI 0xbcf08 VA.FE_SCR VA.N1 (@nil L5.range) VA.FE_MAX fe_pre PT.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"] (Mh_0208_blobs1.kr_b_471 ())). Qed.
Lemma FE_SCR16 : 0 <= VA.FE_SCR /\ VA.FE_SCR mod 16 = 0.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"] (Mh_0208_blobs1.kr_b_472 ())). Qed.
Lemma FE_MAX0 : 0 <= VA.FE_MAX.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"] (Mh_0208_blobs1.kr_b_473 ())). Qed.
Lemma FE_NEED : forall k, In k PQRA.FCM -> VA.N1 k <= VA.N1 k.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"] (Mh_0208_blobs1.kr_b_474 ())). Qed.

Section Body.
Variables (K : TSet) (R : bvmap 5 word) (M : mem) (model : Model) (LB : list (Z * Z)) (FF LK : list fframe) (Aw : list (Z * Z)) (cr : credit)
          (so os sp r SM g : Z) (x0 : PM.vstr) (bs0 : list Z) (buf len k ku kku : Z).
Hypothesis HH : ri_inv HI (PM.vs_own x0 ++ LB) FF LK cr Aw M (vml_of model).
Hypothesis AM : L5CA.amodel_ok Aw model.
Hypothesis K0 : K [].
Hypothesis ENT : VA.entryAs AD L ar R M sp r VA.PR_SCR.
Hypothesis FRM : VA.ffroomN VA.N1 FF LK.
Hypothesis FRS : PMSPA.ffrsA FF sp.
Hypothesis RSO : VA.rcellA ar M sp so 8.
Hypothesis SO8 : so mod 8 = 0.
Hypothesis CSO : L5.u64_at RSEGS M so os.
Hypothesis AOS : PMSPA.aobjA FF os 24.
Hypothesis OS8 : os mod 8 = 0.
Hypothesis KS0 : kstr_at M os x0.
Hypothesis KC0 : kcontent M os x0 bs0.
Hypothesis KOK0 : PQMA.ks_ok SM x0 g.
Hypothesis SMX : SM <= PQASA.SMMAX.
Hypothesis SZ0 : PM.vs_size x0 + VA.PR_MAX <= SM.
Hypothesis BASE : PMSTA.base_okA RSEGS AD M.
Hypothesis CR0 : PMSP.credit_le (PMSPA.scA L (PQMA.pot_ks HV SM x0 g)) cr.
Hypothesis KONT : forall (fx' : FPState) (R' : bvmap 5 word) (M' : mem) (model' : Model) (LK' : list fframe) (Aw' : list (Z * Z)) (x' : PM.vstr) (g' : Z) (cr' : credit) (ds : list Z),
    regs_preserved R R' -> True -> kstr_at M' os x' -> kcontent M' os x' (bs0 ++ ds) -> NEM.ascii ds -> PQMA.ks_ok SM x' g' ->
    PM.vs_size x0 <= PM.vs_size x' <= PM.vs_size x0 + VA.PR_MAX ->
    L5CA.ahpres L ar LB FF sp VA.PR_SCR ((os, 24) :: []) M M' ->
    PMSP.credit_keep cr cr' (PMSPA.scA L (PQMA.pot_ks HV SM x0 g)) (PMSPA.scA L (PQMA.pot_ks HV SM x' g')) ->
    model_rt model model' -> incl LK' LK -> incl Aw Aw' -> L5CA.amodel_ok Aw' model' ->
    ri_inv HI (PM.vs_own x' ++ LB) FF LK' cr' Aw' M' (vml_of model') ->
    srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx' R' r M' model') K.
(* [comment removed for export] *)
Hypothesis Hlen : 1 <= len <= 21.
Hypothesis Hk : -400 <= k <= 400.
(* [comment removed for export] *)
Hypothesis Hku : (0 <= k /\ ku = k) \/ (k < 0 /\ ku = k + 2 ^ 64).
Hypothesis Hkku : (0 <= k + len /\ kku = k + len) \/ (k + len < 0 /\ kku = k + len + 2 ^ 64).
Hypothesis RB : VA.rbufA M FF buf VA.G_BUF os.
Hypothesis DIG : VAC.digits_at RSEGS M buf len.

Local Notation OWN := (own sp R).
Local Notation OC := (ocell sp).
Local Notation SHSO := (so / 8 + 2147450880).

Definition sv (j : nat) : Z := bv_unsigned (getr R (reg j)).
Lemma svr j : 0 <= sv j < 2 ^ 64.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_475 ())). Qed.
Lemma sve j : Z_to_bv 64 (sv j) = getr R (reg j).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_476 ())). Qed.
Lemma KUr : 0 <= ku < 2 ^ 64.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_477 ())). Qed.
Lemma KKUr : 0 <= kku < 2 ^ 64.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_478 ())). Qed.
Lemma EK2 : Z_to_bv 64 (kku - len) = Z_to_bv 64 ku.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_479 ())). Qed.

Lemma sp_facts : 140735332487168 + 14480 <= sp /\ sp <= 140737488355328 /\ sp mod 16 = 0 /\ 0 <= r < 2 ^ 47 /\ r mod 2 = 0.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_480 ())). Qed.
Lemma WIMG0 : forall rr : L5.range, In rr [] -> 0 <= fst rr /\ fst rr + snd rr <= 7036928.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_481 ())). Qed.
Lemma HSCR16 : VA.PR_SCR mod 16 = 0.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_482 ())). Qed.
Lemma HFR : 0 <= 96 /\ 96 mod 16 = 0.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_483 ())). Qed.
Lemma HSCR : VA.PB_SCR + 96 <= VA.PR_SCR.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_484 ())). Qed.
Lemma GOCR : forall a, OC a -> sp - 96 <= a < sp.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_485 ())). Qed.
Lemma GOWN : forall M1 M1' : mem, OWN M1 -> (forall a, OC a -> M1' (Z_to_bv 64 a) = M1 (Z_to_bv 64 a)) -> OWN M1'.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_486 ())). Qed.
Lemma NEED1 : forall k1, In k1 PQRA.FCM -> 1 <= VA.N1 k1.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_487 ())). Qed.

(* [comment removed for export] *)
Local Notation KIT f := (f L ar C HI LY HIok 0xf4640 PB K R M model LB FF LK Aw cr so os sp r SM g x0 bs0 VA.PR_SCR VA.N1 (@nil L5.range) VA.PR_MAX PT
                           HH AM K0 ENT FRM FRS RSO SO8 CSO AOS OS8 KS0 KC0 KOK0 SMX SZ0 BASE CR0 KONT WIMG0 HSCR16 96 OC OWN HFR HSCR GOCR GOWN NEED1).
Local Notation KITP f := (f L ar C HI LY HIok 0xf4640 PB K R M model LB FF LK Aw cr so os sp r SM g x0 bs0 VA.PR_SCR VA.N1 (@nil L5.range) VA.PR_MAX PT
                           HH AM K0 ENT FRM FRS RSO SO8 CSO AOS OS8 KS0 KC0 KOK0 SMX SZ0 BASE CR0 KONT WIMG0 HSCR16 96 OC OWN HFR HSCR GOCR GOWN NEED1
                           0xbcf08 VA.FE_SCR VA.N1 VA.FE_MAX fe_pre PT FEQ FE_SCR16 FE_MAX0 FE_NEED).
Local Notation INV := (VAKC.inv L ar HI M model LB FF LK Aw cr os sp SM g x0 bs0 VA.PR_SCR (@nil L5.range)).

(* [comment removed for export] *)
Lemma ownv p M1 model1 LK1 Aw1 x g1 cr1 : INV OWN p M1 model1 LK1 Aw1 x g1 cr1 -> OWN (mrestrict (ahid Aw1 model1) M1).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_488 ())). Qed.

(* [comment removed for export] *)
Lemma vfacts own' p M1 model1 LK1 Aw1 x g1 cr1 :
  INV own' p M1 model1 LK1 Aw1 x g1 cr1 ->
  (L5.img_clear (mrestrict (ahid Aw1 model1) M1) 65536 1409024 /\ L5.u64_at RSEGS (mrestrict (ahid Aw1 model1) M1) 1440376 2147450880)
  /\ L5.writable RSEGS (mrestrict (ahid Aw1 model1) M1) (sp - 88) 88
  /\ (L5.u64_at RSEGS (mrestrict (ahid Aw1 model1) M1) so os /\ L5KA.zeros_at (mrestrict (ahid Aw1 model1) M1) (so / 8 + 2147450880) 1)
  /\ (140735332487264 <= sp <= 140737488355328 /\ sp mod 16 = 0 /\ 140735332487168 <= so <= 140737488355320
      /\ 0 <= sp < 2 ^ 64 /\ 0 <= os < 2 ^ 64 /\ 0 <= so < 2 ^ 64).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_489 ())). Qed.
(* [comment removed for export] *)
Lemma bfacts own' p M1 model1 LK1 Aw1 x g1 cr1 :
  INV own' p M1 model1 LK1 Aw1 x g1 cr1 ->
  (7036928 <= buf /\ buf + 22 <= 140737488355328 - 18576)
  /\ (forall q, buf <= q < buf + 22 -> exists c, 0 <= c < 256 /\ L5.u8_at RSEGS (mrestrict (ahid Aw1 model1) M1) q c)
  /\ (forall q, buf <= q < buf + 22 -> L5KA.zeros_at (mrestrict (ahid Aw1 model1) M1) (q / 8 + 2147450880) 1).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_490 ())). Qed.

(* [comment removed for export] *)
Definition KEPT : list nat := [3; 4; 26; 27]%nat.
Definition RC (R' : bvmap 5 word) : Prop :=
  getr R' (reg 2) = Z_to_bv 64 (sp - 96) /\ getr R' (reg 8) = Z_to_bv 64 so /\ (forall j, In j KEPT -> getr R' (reg j) = getr R (reg j)).
Lemma RC_call R1 R2 : RC R1 -> regs_preserved R1 R2 -> RC R2.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_491 ())). Qed.
Lemma RC_ks R1 R2 (ks : list nat) : RC R1 -> (forall j, In j ks -> getr R2 (reg j) = getr R1 (reg j)) -> inks ([2; 8]%nat ++ KEPT) ks = true -> RC R2.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_492 ())). Qed.
Lemma RC_gptp R1 : RC R1 -> getr R1 (reg 3) = Z_to_bv 64 (pa_gp AD) /\ getr R1 (reg 4) = Z_to_bv 64 (hl_tp L).
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_493 ())). Qed.
(* [comment removed for export] *)
Lemma back_regs (R2 : bvmap 5 word) :
  getr R2 (reg 2) = Z_to_bv 64 sp -> (forall j, In j [8; 9; 18; 19; 20; 21; 22; 23; 24; 25]%nat -> getr R2 (reg j) = Z_to_bv 64 (sv j)) ->
  (forall j, In j KEPT -> getr R2 (reg j) = getr R (reg j)) -> regs_preserved R R2.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_494 ())). Qed.

(* [comment removed for export] *)
Definition VM (q c m i : Z) : nat -> Z := fun j =>
  match j with 2%nat => sp | 33%nat => os | 34%nat => so | 35%nat => sv 1 | 36%nat => sv 8 | 37%nat => sv 9 | 38%nat => sv 18 | 39%nat => sv 19 | 40%nat => sv 20
  | 41%nat => sv 21 | 42%nat => sv 22 | 43%nat => sv 23 | 44%nat => sv 24 | 45%nat => sv 25
  | 50%nat => buf | 51%nat => len | 52%nat => ku | 53%nat => kku | 54%nat => q | 56%nat => c | 57%nat => m | 58%nat => i | _ => 0 end.

(* [comment removed for export] *)
Local Ltac facts IV :=
  destruct (vfacts _ _ _ _ _ _ _ _ _ IV) as ((IMG & SBC) & WSP & (CSOv & ZSO) & (SPR & SP16 & SOR & SPB & OSB & SOB));
  destruct (bfacts _ _ _ _ _ _ _ _ _ IV) as ((BF1 & BF2) & BY & BZ);
  pose proof KUr as KU2; pose proof KKUr as KKU2.
Local Ltac piece P := cbn beta iota delta [VM] in P; unfold sv in P; L5SAR.feed P ltac:(idtac; fd).

(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)
Lemma RETK own' (p : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV own' p M1 model1 LK1 Aw1 x1 g1 cr1 -> 0 <= p <= 27 ->
  getr R1 (reg 1) = Z_to_bv 64 (sv 1) -> getr R1 (reg 2) = Z_to_bv 64 sp ->
  (forall j, In j [8; 9; 18; 19; 20; 21; 22; 23; 24; 25]%nat -> getr R1 (reg j) = Z_to_bv 64 (sv j)) ->
  (forall j, In j KEPT -> getr R1 (reg j) = getr R (reg j)) ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbc444 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_495 ())). Qed.

(* [comment removed for export] *)
Lemma T1K (p : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN p M1 model1 LK1 Aw1 x1 g1 cr1 -> 0 <= p < 27 -> RC R1 -> getr R1 (reg 21) = Z_to_bv 64 SHSO ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbc2f8 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_496 ())). Qed.

(* [comment removed for export] *)
Lemma GK (p : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN p M1 model1 LK1 Aw1 x1 g1 cr1 -> 0 <= p <= 23 -> RC R1 -> getr R1 (reg 22) = Z_to_bv 64 kku -> (18 <= k + len \/ k + len <= -4) ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbc550 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_tL_Mh_0208 ()) ["WithHeap"; "Body"] (Mh_0208_blobs1.kr_b_497 ())). Qed.

(* [comment removed for export] *)
(* [comment removed for export] *)
Section L7.
Hypothesis Hl2 : 2 <= len.
(* [comment removed for export] *)
Lemma L7K (m : nat) : forall (i p c : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit),
  Z.of_nat m = len - 1 - i -> 1 <= i < len -> INV OWN p M1 model1 LK1 Aw1 x1 g1 cr1 -> p = i + 1 -> RC R1 ->
  getr R1 (reg 9) = Z_to_bv 64 (buf + i) -> getr R1 (reg 18) = Z_to_bv 64 (buf + i) -> getr R1 (reg 19) = Z_to_bv 64 SHSO ->
  getr R1 (reg 20) = Z_to_bv 64 (len - i) -> getr R1 (reg 21) = Z_to_bv 64 SBL -> getr R1 (reg 22) = Z_to_bv 64 kku ->
  getr R1 (reg 1) = Z_to_bv 64 0xbc4c8 -> getr R1 (reg 10) = Z_to_bv 64 os -> getr R1 (reg 11) = Z_to_bv 64 c -> 0 <= c < 128 ->
  (18 <= k + len \/ k + len <= -4) ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xf4640 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_tL_Mh_0208 ()) ["WithHeap"; "Body"; "L7"] (Mh_0208_blobs1.kr_b_498 ())). Qed.

(* [comment removed for export] *)
Lemma FK (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN 2 M1 model1 LK1 Aw1 x1 g1 cr1 -> RC R1 -> getr R1 (reg 9) = Z_to_bv 64 len -> getr R1 (reg 18) = Z_to_bv 64 buf -> getr R1 (reg 19) = Z_to_bv 64 SHSO ->
  getr R1 (reg 21) = Z_to_bv 64 SBL -> getr R1 (reg 22) = Z_to_bv 64 kku ->
  (18 <= k + len \/ k + len <= -4) ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbc490 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"; "L7"] (Mh_0208_blobs2.kr_b_499 ())). Qed.
End L7.

(* [comment removed for export] *)
Lemma EK (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN 1 M1 model1 LK1 Aw1 x1 g1 cr1 -> RC R1 -> getr R1 (reg 9) = Z_to_bv 64 len -> getr R1 (reg 18) = Z_to_bv 64 buf -> getr R1 (reg 19) = Z_to_bv 64 SHSO ->
  getr R1 (reg 21) = Z_to_bv 64 SBL -> getr R1 (reg 22) = Z_to_bv 64 kku ->
  (18 <= k + len \/ k + len <= -4) ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbc474 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"] (Mh_0208_blobs2.kr_b_500 ())). Qed.

(* [comment removed for export] *)
Definition RD (R1 : bvmap 5 word) : Prop :=
  RC R1 /\ getr R1 (reg 9) = Z_to_bv 64 len /\ getr R1 (reg 18) = Z_to_bv 64 buf /\ getr R1 (reg 19) = Z_to_bv 64 ku /\ getr R1 (reg 22) = Z_to_bv 64 kku /\
  getr R1 (reg 21) = Z_to_bv 64 SBL /\ getr R1 (reg 12) = Z_to_bv 64 ku /\ getr R1 (reg 13) = Z_to_bv 64 18446744073709551612 /\ getr R1 (reg 14) = Z_to_bv 64 17.

(* [comment removed for export] *)
Lemma EXPK (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN 0 M1 model1 LK1 Aw1 x1 g1 cr1 -> RD R1 -> (18 <= k + len \/ k + len <= -4) ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbc1f4 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_tL_Mh_0208 ()) ["WithHeap"; "Body"] (Mh_0208_blobs2.kr_b_501 ())). Qed.

(* [comment removed for export] *)
(* [comment removed for export] *)
Section A3.
Hypothesis Hkn : k < 0.
Hypothesis Hkk3 : -3 <= k + len <= 0.

(* [comment removed for export] *)
Lemma L6K (m : nat) : forall (i p c : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit),
  Z.of_nat m = len - 1 - i -> 0 <= i < len -> INV OWN p M1 model1 LK1 Aw1 x1 g1 cr1 -> p = 2 - (k + len) + i -> RC R1 ->
  getr R1 (reg 18) = Z_to_bv 64 (buf + i) -> getr R1 (reg 19) = Z_to_bv 64 (buf + i) -> getr R1 (reg 20) = Z_to_bv 64 SHSO ->
  getr R1 (reg 21) = Z_to_bv 64 SBL -> getr R1 (reg 9) = Z_to_bv 64 (len - i) ->
  getr R1 (reg 1) = Z_to_bv 64 0xbc3d8 -> getr R1 (reg 10) = Z_to_bv 64 os -> getr R1 (reg 11) = Z_to_bv 64 c -> 0 <= c < 128 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xf4640 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_tL_Mh_0208 ()) ["WithHeap"; "Body"; "A3"] (Mh_0208_blobs2.kr_b_502 ())). Qed.

(* [comment removed for export] *)
Lemma L5K (mz : nat) : forall (cz p : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit),
  Z.of_nat mz = cz -> 1 <= cz <= - (k + len) -> INV OWN p M1 model1 LK1 Aw1 x1 g1 cr1 -> p = 2 - (k + len) - cz -> RC R1 ->
  getr R1 (reg 19) = Z_to_bv 64 cz -> getr R1 (reg 20) = Z_to_bv 64 SHSO -> getr R1 (reg 21) = Z_to_bv 64 SBL ->
  getr R1 (reg 9) = Z_to_bv 64 len -> getr R1 (reg 18) = Z_to_bv 64 buf ->
  getr R1 (reg 1) = Z_to_bv 64 0xbc3a4 -> getr R1 (reg 10) = Z_to_bv 64 os -> getr R1 (reg 11) = Z_to_bv 64 48 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xf4640 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"; "A3"] (Mh_0208_blobs2.kr_b_503 ())). Qed.

(* [comment removed for export] *)
Lemma D3K (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN 2 M1 model1 LK1 Aw1 x1 g1 cr1 -> RC R1 -> getr R1 (reg 9) = Z_to_bv 64 len -> getr R1 (reg 18) = Z_to_bv 64 buf -> getr R1 (reg 20) = Z_to_bv 64 SHSO ->
  getr R1 (reg 21) = Z_to_bv 64 SBL -> getr R1 (reg 22) = Z_to_bv 64 kku ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbc374 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_tL_Mh_0208 ()) ["WithHeap"; "Body"; "A3"] (Mh_0208_blobs2.kr_b_504 ())). Qed.

(* [comment removed for export] *)
Lemma C3K (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN 1 M1 model1 LK1 Aw1 x1 g1 cr1 -> RC R1 -> getr R1 (reg 9) = Z_to_bv 64 len -> getr R1 (reg 18) = Z_to_bv 64 buf -> getr R1 (reg 20) = Z_to_bv 64 SHSO ->
  getr R1 (reg 21) = Z_to_bv 64 SBL -> getr R1 (reg 22) = Z_to_bv 64 kku ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbc360 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"; "A3"] (Mh_0208_blobs2.kr_b_505 ())). Qed.

(* [comment removed for export] *)
Lemma B3K (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN 0 M1 model1 LK1 Aw1 x1 g1 cr1 -> RD R1 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbc1f4 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"; "A3"] (Mh_0208_blobs2.kr_b_506 ())). Qed.
End A3.

(* [comment removed for export] *)
(* [comment removed for export] *)
Section A2.
Hypothesis Hkn : k < 0.
Hypothesis Hkk2 : 1 <= k + len <= 17.

(* [comment removed for export] *)
Lemma L4K (m : nat) : forall (i p c : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit),
  Z.of_nat m = len - 1 - i -> k + len <= i < len -> INV OWN p M1 model1 LK1 Aw1 x1 g1 cr1 -> p = i + 1 -> RC R1 ->
  getr R1 (reg 18) = Z_to_bv 64 (buf + i) -> getr R1 (reg 19) = Z_to_bv 64 (buf + i) -> getr R1 (reg 21) = Z_to_bv 64 SBL ->
  getr R1 (reg 22) = Z_to_bv 64 i -> getr R1 (reg 23) = Z_to_bv 64 SHSO -> getr R1 (reg 9) = Z_to_bv 64 len ->
  getr R1 (reg 1) = Z_to_bv 64 0xbc518 -> getr R1 (reg 10) = Z_to_bv 64 os -> getr R1 (reg 11) = Z_to_bv 64 c -> 0 <= c < 128 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xf4640 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_tL_Mh_0208 ()) ["WithHeap"; "Body"; "A2"] (Mh_0208_blobs2.kr_b_507 ())). Qed.

(* [comment removed for export] *)
Lemma D2K (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN (k + len + 1) M1 model1 LK1 Aw1 x1 g1 cr1 -> RC R1 -> getr R1 (reg 18) = Z_to_bv 64 buf -> getr R1 (reg 19) = Z_to_bv 64 ku ->
  getr R1 (reg 21) = Z_to_bv 64 SBL -> getr R1 (reg 22) = Z_to_bv 64 kku -> getr R1 (reg 23) = Z_to_bv 64 SHSO -> getr R1 (reg 9) = Z_to_bv 64 len ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbc410 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"; "A2"] (Mh_0208_blobs2.kr_b_508 ())). Qed.

(* [comment removed for export] *)
Lemma L3K (m : nat) : forall (i p c : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit),
  Z.of_nat m = k + len - 1 - i -> 0 <= i < k + len -> INV OWN p M1 model1 LK1 Aw1 x1 g1 cr1 -> p = i -> RC R1 ->
  getr R1 (reg 20) = Z_to_bv 64 (buf + i) -> getr R1 (reg 25) = Z_to_bv 64 (buf + i) -> getr R1 (reg 21) = Z_to_bv 64 SBL ->
  getr R1 (reg 23) = Z_to_bv 64 SHSO -> getr R1 (reg 24) = Z_to_bv 64 (k + len - i) ->
  getr R1 (reg 18) = Z_to_bv 64 buf -> getr R1 (reg 19) = Z_to_bv 64 ku -> getr R1 (reg 22) = Z_to_bv 64 kku -> getr R1 (reg 9) = Z_to_bv 64 len ->
  getr R1 (reg 1) = Z_to_bv 64 0xbc298 -> getr R1 (reg 10) = Z_to_bv 64 os -> getr R1 (reg 11) = Z_to_bv 64 c -> 0 <= c < 128 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xf4640 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_tL_Mh_0208 ()) ["WithHeap"; "Body"; "A2"] (Mh_0208_blobs2.kr_b_509 ())). Qed.

(* [comment removed for export] *)
Lemma B2K (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN 0 M1 model1 LK1 Aw1 x1 g1 cr1 -> RD R1 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbc1f4 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"; "A2"] (Mh_0208_blobs2.kr_b_510 ())). Qed.
End A2.

(* [comment removed for export] *)
(* [comment removed for export] *)
Section A1.
Hypothesis Hkp : 0 <= k.
Hypothesis Hkk1 : k + len <= 17.

(* [comment removed for export] *)
Lemma L2K (m : nat) : forall (i p : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit),
  Z.of_nat m = k + len - 1 - i -> len <= i < k + len -> INV OWN p M1 model1 LK1 Aw1 x1 g1 cr1 -> p = i -> RC R1 ->
  getr R1 (reg 9) = Z_to_bv 64 i -> getr R1 (reg 18) = Z_to_bv 64 SHSO -> getr R1 (reg 21) = Z_to_bv 64 SBL ->
  getr R1 (reg 22) = Z_to_bv 64 kku -> getr R1 (reg 23) = Z_to_bv 64 (so / 8) ->
  getr R1 (reg 1) = Z_to_bv 64 0xbc2d8 -> getr R1 (reg 10) = Z_to_bv 64 os -> getr R1 (reg 11) = Z_to_bv 64 48 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xf4640 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"; "A1"] (Mh_0208_blobs2.kr_b_511 ())). Qed.

(* [comment removed for export] *)
Lemma L1K (m : nat) : forall (i p c : Z) (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit),
  Z.of_nat m = len - 1 - i -> 0 <= i < len -> INV OWN p M1 model1 LK1 Aw1 x1 g1 cr1 -> p = i -> RC R1 ->
  getr R1 (reg 18) = Z_to_bv 64 (buf + i) -> getr R1 (reg 20) = Z_to_bv 64 (buf + i) -> getr R1 (reg 21) = Z_to_bv 64 SBL ->
  getr R1 (reg 24) = Z_to_bv 64 SHSO -> getr R1 (reg 25) = Z_to_bv 64 (len - i) -> getr R1 (reg 9) = Z_to_bv 64 len ->
  getr R1 (reg 19) = Z_to_bv 64 ku -> getr R1 (reg 22) = Z_to_bv 64 kku -> getr R1 (reg 23) = Z_to_bv 64 (so / 8) ->
  getr R1 (reg 1) = Z_to_bv 64 0xbc234 -> getr R1 (reg 10) = Z_to_bv 64 os -> getr R1 (reg 11) = Z_to_bv 64 c -> 0 <= c < 128 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xf4640 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"; "A1"] (Mh_0208_blobs2.kr_b_512 ())). Qed.

(* [comment removed for export] *)
Lemma B1K (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN 0 M1 model1 LK1 Aw1 x1 g1 cr1 -> RD R1 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbc1f4 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"; "A1"] (Mh_0208_blobs2.kr_b_513 ())). Qed.
End A1.

(* [comment removed for export] *)
Lemma DISPATCH (fx1 : FPState) (R1 : bvmap 5 word) (M1 : mem) (model1 : Model) LK1 Aw1 (x1 : PM.vstr) g1 (cr1 : credit) :
  INV OWN 0 M1 model1 LK1 Aw1 x1 g1 cr1 -> RD R1 ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx1 R1 0xbc1f4 M1 model1) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"] (Mh_0208_blobs2.kr_b_514 ())). Qed.

(* [comment removed for export] *)
Lemma pr_body (fx : FPState) :
  getr R 10%bv = Z_to_bv 64 buf -> getr R 11%bv = Z_to_bv 64 len -> getr R 12%bv = Z_to_bv 64 k ->
  getr R 13%bv = Z_to_bv 64 (-4) -> getr R 14%bv = Z_to_bv 64 17 -> getr R 15%bv = Z_to_bv 64 so ->
  srealizes RSEGS SCFG (@PMSP.cfg RSEGS fx R 0xbc1a4 M model) K.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"; "Body"] (Mh_0208_blobs2.kr_b_515 ())). Qed.

End Body.

Theorem pr_ok : VAC.pr_specCA RSEGS AD L ar HI 0xbc1a4.
Proof.
ltac2:(KReplay.run1 (kr_t_VaSPrC ()) ["WithHeap"] (Mh_0208_blobs2.kr_b_516 ())). Qed.

End WithHeap.
End VASPRC.

End VaSPrC.
