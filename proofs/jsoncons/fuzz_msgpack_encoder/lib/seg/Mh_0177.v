(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
Set Warnings "-require-in-module".
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel. From Stdlib Require ZArith NArith List Lia Bool. From LinuxProcessSemantics.LinuxProcessSem Require BvBase RiscvSemantics MemImageType State Run. From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Asan. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_000 BndT_Na_003. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Module BndP_Na_131.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_000 BndT_Na_003.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Na_131 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_000ASegItab_Na_1abdbe2ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_feF2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_feF3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_feF2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_feF5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_feF2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_feF3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_feF4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_feF5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_feF3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_feG2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_feG3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_feG2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_feG5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_feG2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_feG3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_feG4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_feG5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_feG3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_000ASegItab_Na_3a2f312ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131BLibSegNa_va_opA1_02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131BLibSegNa_va_opA1_03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131BLibSegNa_va_opA1_02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131BLibSegNa_va_opA1_05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131BLibSegNa_va_opA1_02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131BLibSegNa_va_opA1_03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131BLibSegNa_va_opA1_04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131BLibSegNa_va_opA1_05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131BLibSegNa_va_opA1_03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131CLibSegNa_va_opA1_162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131CLibSegNa_va_opA1_163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131CLibSegNa_va_opA1_162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131CLibSegNa_va_opA1_165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131CLibSegNa_va_opA1_162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131CLibSegNa_va_opA1_163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131CLibSegNa_va_opA1_164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131CLibSegNa_va_opA1_165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131CLibSegNa_va_opA1_163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131BLibSegNa_va_opA2_02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131BLibSegNa_va_opA2_03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131BLibSegNa_va_opA2_02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131BLibSegNa_va_opA2_05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131BLibSegNa_va_opA2_02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131BLibSegNa_va_opA2_03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131BLibSegNa_va_opA2_04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131BLibSegNa_va_opA2_05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131BLibSegNa_va_opA2_03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131CLibSegNa_va_opA2_162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131CLibSegNa_va_opA2_163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131CLibSegNa_va_opA2_162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131CLibSegNa_va_opA2_165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131CLibSegNa_va_opA2_162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131CLibSegNa_va_opA2_163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131CLibSegNa_va_opA2_164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131CLibSegNa_va_opA2_165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131CLibSegNa_va_opA2_163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opA32BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opA33NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opA32BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opA35XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opA32F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opA33PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opA34planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opA35regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opA33kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opB12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opB13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opB12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opB15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opB12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opB13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opB14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opB15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opB13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opB22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opB23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opB22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opB25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opB22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opB23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opB24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opB25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opB23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_opC2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_opC3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_opC2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_opC5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_opC2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_opC3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_opC4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_opC5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_opC3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_opD2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_opD3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_opD2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_opD5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_opD2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_opD3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_opD4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_opD5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_opD3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opR22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opR23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opR22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opR25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opR22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opR23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opR24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opR25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_opR23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_opZ2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_opZ3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_opZ2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_opZ5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_opZ2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_opZ3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_opZ4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_opZ5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131?LibSegNa_va_opZ3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e77cdf2ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_prAn2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_prAn3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_prAn2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_prAn5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_prAn2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_prAn3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_prAn4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_prAn5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_131@LibSegNa_va_prAn3kn0".

Module LibSegNa_va_feF.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1abdbe.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1abdbe.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 774256] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$22$28$:$;$<$=$>$?$10$11+&6$22#3#7???8000$29$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",='$2#7???7?801030#800000000000&$2#10'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27'$28##63'$29##9"%pstring).
Definition ss0 : sym_state := SS 774196 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#;=070#?4640#5=#?4640,20#$23$2$3$4$5$6$7$24$25$21&9+&9+$28@-:$29-31#30#??$<$=$>$?$10$11$26$27$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,='$2#7???7?801030#800000000000&$2#10'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27'$28##63'$29##9,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1abdbe.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 774196 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1abdbe.IT BndT_Na_000.SegItab_Na_1abdbe.IT_sound BF NX0 BR XSTEP F0 PSS plan 774196 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_feF.

Module LibSegNa_va_feG.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1abdbe.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1abdbe.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 774256] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$22$28$:$;$<$=$>$?$10$11+&6$22#3#7???8000$29$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",='$2#7???7?801030#800000000000&$2#10'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27'$28#:#63'$29#1#9"%pstring).
Definition ss0 : sym_state := SS 774076 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#;=070#?4640#5=#?4640,20#$23$2$3$4$5$6$7$24$25$21&9+&9+$28@-:$29-31#30#??$<$=$>$?$10$11$26$27$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,='$2#7???7?801030#800000000000&$2#10'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27'$28#:#63'$29#1#9,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1abdbe.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 774076 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1abdbe.IT BndT_Na_000.SegItab_Na_1abdbe.IT_sound BF NX0 BR XSTEP F0 PSS plan 774076 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_feG.

Module LibSegNa_va_opA1_0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_3a2f31.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_3a2f31.IT.
Definition ENDS : list Z := [763944].
Definition STOPS1 : list Z := [763944] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 34); EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KImg 65536 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487264 140737488355328;
   KAlign (EVar 2) 32;
   KWr (SA (EVar 2) (-96)) (ELit 96)].
Definition ss0 : sym_state := SS 763896 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-96), ELit 96)].
Definition F0L : list SR.region := [((EVar 2), (-96), 96)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;:828#;:828#5=#;:828,20#$1+$2-60$3$4$5$6$7$8$9$21$22$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,11!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1!$2-60,8#%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20($2-60#60,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 763944 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_3a2f31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 763896 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_3a2f31.IT BndT_Na_000.SegItab_Na_3a2f31.IT_sound BF NX0 BR XSTEP F0 PSS plan 763896 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_opA1_0.

Module LibSegNa_va_opA1_16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_3a2f31.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_3a2f31.IT.
Definition ENDS : list Z := [763944].
Definition STOPS1 : list Z := [763944] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2#10$3$4$5$6$7$8$9$21$22$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 65536 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487264 140737488355312;
   KAlign (EVar 2) 32;
   KWr (SA (EVar 2) (-96)) (ELit 112)].
Definition ss0 : sym_state := SS 763896 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-80), ELit 96)].
Definition F0L : list SR.region := [((EVar 2), (-80), 96)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;:828#;:828#5=#;:828,20#$1+$2-50$3$4$5$6$7$8$9$21$22$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,11!$2-40,8$18!$2-38,8$17!$2-30,8$16!$2-28,8$15!$2-20,8$14!$2-18,8$13!$2-10,8$12!$2-8,8$9!$2#,8$8!$2#8,8$1!$2-50,8#%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#7??????????0&$2#20($2-60#70,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 763944 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_3a2f31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 763896 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_3a2f31.IT BndT_Na_000.SegItab_Na_3a2f31.IT_sound BF NX0 BR XSTEP F0 PSS plan 763896 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_opA1_16.

Module LibSegNa_va_opA2_0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_3a2f31.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_3a2f31.IT.
Definition ENDS : list Z := [763964].
Definition STOPS1 : list Z := [763964] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$8$9$21$22$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 65536 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487264 140737488355328;
   KAlign (EVar 2) 32].
Definition ss0 : sym_state := SS 763948 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;:83<#;:83<#5=#;:83<,20#$1+$2-60$3$4$5$6$7$2+$2-60$21$22$<$=$>$?$10$11$12$13$22$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 763964 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_3a2f31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 763948 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_3a2f31.IT BndT_Na_000.SegItab_Na_3a2f31.IT_sound BF NX0 BR XSTEP F0 PSS plan 763948 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_opA2_0.

Module LibSegNa_va_opA2_16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_3a2f31.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_3a2f31.IT.
Definition ENDS : list Z := [763964].
Definition STOPS1 : list Z := [763964] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$8$9$21$22$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 65536 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487264 140737488355328;
   KAlign (EVar 2) 32].
Definition ss0 : sym_state := SS 763948 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;:83<#;:83<#5=#;:83<,20#$1+$2-60$3$4$5$6$7+$2#10+$2-60$21$22$<$=$>$?$10$11$12$13$22$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 763964 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_3a2f31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 763948 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_3a2f31.IT BndT_Na_000.SegItab_Na_3a2f31.IT_sound BF NX0 BR XSTEP F0 PSS plan 763948 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_opA2_16.

Module LibSegNa_va_opA3.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_3a2f31.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_3a2f31.IT.
Definition ENDS : list Z := [413240].
Definition STOPS1 : list Z := [413240; 764016] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$8$9$21$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 65536 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487264 140737488355328;
   KAlign (EVar 2) 32].
Definition ss0 : sym_state := SS 763968 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#64>38#;:870#64>38#5=#64>38,20##;:868+$2-60$3$4$5$6$7$8$9#300#15?:78#1$=$>$?$10$11$12$13$14$21$16$17#7???8000$19$1:$1;$1<$1=$1>$1?,,5%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 413240 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_3a2f31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 763968 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_3a2f31.IT BndT_Na_000.SegItab_Na_3a2f31.IT_sound BF NX0 BR XSTEP F0 PSS plan 763968 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_opA3.

Module LibSegNa_va_opB1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_3a2f31.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_3a2f31.IT.
Definition ENDS : list Z := [764564].
Definition STOPS1 : list Z := [764564; 764020] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 50); EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; (EVar 33); EVar 22; EVar 23; ELit 2147450880; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KRange (EVar 50) 7036928 140737488354304;
   KAlign (EVar 50) 32;
   KDisj (SA (ELit 0) 2147446784) (ELit 17592186048512) (SA (EVar 50) 0) (ELit 1024);
   KWr (SA (EVar 50) 0) (ELit 24);
   KWr (SA (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) 2147450880) (ELit 128)].
Definition ss0 : sym_state := SS 764008 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 50), (0), ELit 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), ELit 96)].
Definition F0L : list SR.region := [((EVar 50), (0), 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), 96)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",2!!,3#;::94#;:874#;::94!!,3#;::94#;:874#;::94#5=#;::94,20#$1$2$3$4$5$6$7$8$9^#?#??????????????8^#?#??????????????2&6$21#3#;:7?8^#?#??????????????1$?$10$11$32+&6$32#3#7???8000$14$21$16$32#7???8000$19$1:$1;$1<$1=$1>$1?,,68!&6$32#3#7???801<,1#!&6$32#3#7???801;,1#!&6$32#3#7???801:,1#!&6$32#3#7???8019,1#!&6$32#3#7???8014,1#!&6$32#3#7???8013,1#!&6$32#3#7???8012,1#!&6$32#3#7???8011,1#!&6$32#3#7???8010,1#!&6$32#3#7???800?,1#!&6$32#3#7???800>,1#!&6$32#3#7???800=,1#!&6$32#3#7???8007,1#!&6$32#3#7???8058,1^#?#??????????????8!&6$32#3#7???8057,1^#?#??????????????8!&6$32#3#7???8056,1^#?#??????????????8!&6$32#3#7???8055,1^#?#??????????????2!&6$32#3#7???8050,1^#?#??????????????8!&6$32#3#7???804?,1^#?#??????????????8!&6$32#3#7???804>,1^#?#??????????????8!&6$32#3#7???804=,1^#?#??????????????2!&6$32#3#7???8054,1^#?#??????????????2!&6$32#3#7???8053,1^#?#??????????????2!&6$32#3#7???8052,1^#?#??????????????2!&6$32#3#7???8051,1^#?#??????????????2!&6$32#3#7???8048,1^#?#??????????????8!&6$32#3#7???8047,1^#?#??????????????8!&6$32#3#7???8046,1^#?#??????????????8!&6$32#3#7???8045,1^#?#??????????????2!&6$32#3#7???804<,1^#?#??????????????2!&6$32#3#7???804;,1^#?#??????????????2!&6$32#3#7???804:,1^#?#??????????????2!&6$32#3#7???8049,1^#?#??????????????2!&6$32#3#7???8040,1^#?#??????????????8!&6$32#3#7???803?,1^#?#??????????????8!&6$32#3#7???803>,1^#?#??????????????8!&6$32#3#7???803=,1^#?#??????????????2!&6$32#3#7???8044,1^#?#??????????????2!&6$32#3#7???8043,1^#?#??????????????2!&6$32#3#7???8042,1^#?#??????????????2!&6$32#3#7???8041,1^#?#??????????????2!&6$32#3#7???8038,1^#?#??????????????8!&6$32#3#7???8037,1^#?#??????????????8!&6$32#3#7???8036,1^#?#??????????????8!&6$32#3#7???8035,1^#?#??????????????2!&6$32#3#7???803<,1^#?#??????????????2!&6$32#3#7???803;,1^#?#??????????????2!&6$32#3#7???803:,1^#?#??????????????2!&6$32#3#7???8039,1^#?#??????????????2!&6$32#3#7???8030,1^#?#??????????????8!&6$32#3#7???802?,1^#?#??????????????8!&6$32#3#7???802>,1^#?#??????????????8!&6$32#3#7???802=,1^#?#??????????????2!&6$32#3#7???8034,1^#?#??????????????2!&6$32#3#7???8033,1^#?#??????????????2!&6$32#3#7???8032,1^#?#??????????????2!&6$32#3#7???8031,1^#?#??????????????2!&6$32#3#7???8028,1^#?#??????????????8!&6$32#3#7???8027,1^#?#??????????????8!&6$32#3#7???8026,1^#?#??????????????8!&6$32#3#7???8025,1^#?#??????????????2!&6$32#3#7???802<,1^#?#??????????????2!&6$32#3#7???802;,1^#?#??????????????2!&6$32#3#7???802:,1^#?#??????????????2!&6$32#3#7???8029,1^#?#??????????????2!&6$32#3#7???8020,1^#?#??????????????2!&6$32#3#7???801?,1^#?#??????????????2!&6$32#3#7???801>,1^#?#??????????????2!&6$32#3#7???801=,1^#?#??????????????2!&6$32#3#7???8024,1^#?#??????????????2!&6$32#3#7???8023,1^#?#??????????????2!&6$32#3#7???8022,1^#?#??????????????2!&6$32#3#7???8021,1^#?#??????????????2!&6$32#3#7???8018,1#!&6$32#3#7???8017,1#!&6$32#3#7???8016,1#!&6$32#3#7???8015,1#!&6$32#3#7???800<,1#!&6$32#3#7???800;,1#!&6$32#3#7???800:,1#!&6$32#3#7???8009,1#!&6$32#3#7???8008,1#!&6$32#3#7???8006,1#!&6$32#3#7???8005,1#!&6$32#3#7???8004,1#!&6$32#3#7???805<,1^#?#??????????????3!&6$32#3#7???805;,1^#?#??????????????3!&6$32#3#7???805:,1^#?#??????????????3!&6$32#3#7???8059,1^#?#??????????????3!&6$32#3#7???805?,1^#?#??????????????3!&6$32#3#7???805>,1^#?#??????????????3!&6$32#3#7???805=,1^#?#??????????????3!&6$32#3#7???8003,1^#?#??????????????1!&6$32#3#7???8002,1^#?#??????????????1!&6$32#3#7???8001,1^#?#??????????????1!&6$32#3#7???8000,1^#?#??????????????1!$32#10,8#;:7?8!$32#8,8#13===!$32#,8#41;58:;3'$32#6;6000#7????????<00&$32#20)##7???7000#100000001000$32##400($32##18(&6$32#3#7???8000#80,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 764564 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_3a2f31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 764008 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_3a2f31.IT BndT_Na_000.SegItab_Na_3a2f31.IT_sound BF NX0 BR XSTEP F0 PSS plan 764008 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_opB1.

Module LibSegNa_va_opB2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_3a2f31.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_3a2f31.IT.
Definition ENDS : list Z := [765360].
Definition STOPS1 : list Z := [765360; 765600; 765732; 765860] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$8+$2-60$:$;&6$21#3$=$>$?$10$11$12$13$14$21$16$32#7???8000$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",='$2#7???7?801060#800000000000&$2#20($2-60#8'$21#7???7?801000#7??????????4)##7???7000#100000001000$21##<!$21#,1#!$21#4,4#!$21#8,1$23'$23##??#&6$21#3#7???8000#1#&6+$21#4#3#7???8000#1#&6+$21#8#3#7???8000#1)+$2-60##8$21##<"%pstring).
Definition ss0 : sym_state := SS 764564 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-96), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-96), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,5#;:=;0#;:>:0#;:?24#;:?:4#;:=;0#5=#;:=;0,20#$1+$2-60$3$4$5$6$7$8+$2-60$23#+&6$21#3#7???8000#$>$?$10$11$12$13$14$21+$32#20$32#7???8000$19$1:$1;$1<$1=$1>$1?,,>!$2-60,8$32'$2#7???7?801060#800000000000&$2#20($2-60#8'$21#7???7?801000#7??????????4)##7???7000#100000001000$21##<!$21#,1#!$21#4,4#!$21#8,1$23'$23##??#&6$21#3#7???8000#1#&6+$21#4#3#7???8000#1#&6+$21#8#3#7???8000#1)+$2-60##8$21##<,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 765360 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_3a2f31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 764564 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_3a2f31.IT BndT_Na_000.SegItab_Na_3a2f31.IT_sound BF NX0 BR XSTEP F0 PSS plan 764564 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_opB2.

Module LibSegNa_va_opC.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_3a2f31.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_3a2f31.IT.
Definition ENDS : list Z := [777056].
Definition STOPS1 : list Z := [777056] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 35); EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; (EVar 34); EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KRange (EVar 35) 0 255].
Definition ss0 : sym_state := SS 765364 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;=;60#;=;60#5=#;=;60,20##;:=<0$2$3$4$5$6$7$8$9$23$22#$=$>$?$10$11$12$13$22$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1'$23##??,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 777056 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_3a2f31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 765364 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_3a2f31.IT BndT_Na_000.SegItab_Na_3a2f31.IT_sound BF NX0 BR XSTEP F0 PSS plan 765364 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_opC.

Module LibSegNa_va_opD.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_3a2f31.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_3a2f31.IT.
Definition ENDS : list Z := [534580].
Definition STOPS1 : list Z := [534580; 765380; 765136] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9#1$;$<$=$>$?$10$11$32+&6$32#3#7???8000$14$15$16$32$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 50) 7036928 140737488354304;
   KAlign (EVar 50) 32;
   KDisj (SA (ELit 0) 2147446784) (ELit 17592186048512) (SA (EVar 50) 0) (ELit 1024);
   KWr (SA (EVar 50) 0) (ELit 8);
   KWr (SA (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) 2147450880) (ELit 128)].
Definition ss0 : sym_state := SS 765376 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 50), (0), ELit 8); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (4), ELit 25)].
Definition F0L : list SR.region := [((EVar 50), (0), 8); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (4), 25)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#82834#;:=<4#;:<=0#82834#5=#82834,20##;:<<4$2$3$4$5$6$7$8$9+&6$32#3#7???8000#80$<$=$>$?$10$11$32+&6$32#3#7???8000$14$15$16$32$18$19$1:$1;$1<$1=$1>$1?,,1?!$32#,8#45>0360>!&6$32#3#7???801<,1^#?#??????????????8!&6$32#3#7???8017,1^#?#??????????????8!&6$32#3#7???8016,1^#?#??????????????8!&6$32#3#7???8015,1^#?#??????????????8!&6$32#3#7???8014,1^#?#??????????????8!&6$32#3#7???801;,1^#?#??????????????8!&6$32#3#7???801:,1^#?#??????????????8!&6$32#3#7???8019,1^#?#??????????????8!&6$32#3#7???8018,1^#?#??????????????8!&6$32#3#7???800?,1^#?#??????????????8!&6$32#3#7???800>,1^#?#??????????????8!&6$32#3#7???800=,1^#?#??????????????8!&6$32#3#7???800<,1^#?#??????????????8!&6$32#3#7???8013,1^#?#??????????????8!&6$32#3#7???8012,1^#?#??????????????8!&6$32#3#7???8011,1^#?#??????????????8!&6$32#3#7???8010,1^#?#??????????????8!&6$32#3#7???8007,1^#?#??????????????8!&6$32#3#7???8006,1^#?#??????????????8!&6$32#3#7???8005,1^#?#??????????????8!&6$32#3#7???8004,1^#?#??????????????8!&6$32#3#7???800;,1^#?#??????????????8!&6$32#3#7???800:,1^#?#??????????????8!&6$32#3#7???8009,1^#?#??????????????8!&6$32#3#7???8008,1^#?#??????????????8'$32#6;6000#7????????<00&$32#20)##7???7000#100000001000$32##400($32##8(&6$32#3#7???8000#80,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534580 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_3a2f31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 765376 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_3a2f31.IT BndT_Na_000.SegItab_Na_3a2f31.IT_sound BF NX0 BR XSTEP F0 PSS plan 765376 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_opD.

Module LibSegNa_va_opR2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_3a2f31.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_3a2f31.IT.
Definition ENDS : list Z := [765204].
Definition STOPS1 : list Z := [765204] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$34-60$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 52) 140735332487264 140737488355328].
Definition ss0 : sym_state := SS 765200 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;:=14#;:=14#5=#;:=14,20#$1$34$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1'$34#7???7?801060#800000000000,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 765204 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_3a2f31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 765200 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_3a2f31.IT BndT_Na_000.SegItab_Na_3a2f31.IT_sound BF NX0 BR XSTEP F0 PSS plan 765200 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_opR2.

Module LibSegNa_va_opZ.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_3a2f31.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_3a2f31.IT.
Definition ENDS : list Z := [765196].
Definition STOPS1 : list Z := [765196] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; (EVar 52); EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; (EVar 50); EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",16'$32#6;6000#7????????<00&$32#20)##7???7000#100000001000$32##400!$32#3?8,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##400$33##1'$34#7???7?801060#800000000000&$34#10!$34-8,8$35!$34-10,8$36!$34-18,8$37!$34-20,8$38!$34-28,8$39!$34-30,8$3:!$34-38,8$3;!$34-40,8$3<!$34-48,8$3=!$34-50,8$3>)+$34-60##60$32##400)+$34-60##60$33##1"%pstring).
Definition ss0 : sym_state := SS 765124 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 51), (0), ELit 1)].
Definition F0L : list SR.region := [((EVar 51), (0), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;:=0<#;:=0<#5=#;:=0<,20#$35+$34-60$3$4$5$6$7$36$37#$;$<$=$>$?$10$11$38$39$3:$3;$3<$3=$3>$19$1:$1;$1<$1=$1>$1?,,17!$33#,1#'$32#6;6000#7????????<00&$32#20)##7???7000#100000001000$32##400!$32#3?8,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##400$33##1'$34#7???7?801060#800000000000&$34#10!$34-8,8$35!$34-10,8$36!$34-18,8$37!$34-20,8$38!$34-28,8$39!$34-30,8$3:!$34-38,8$3;!$34-40,8$3<!$34-48,8$3=!$34-50,8$3>)+$34-60##60$32##400)+$34-60##60$33##1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 765196 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_3a2f31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 765124 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_3a2f31.IT BndT_Na_000.SegItab_Na_3a2f31.IT_sound BF NX0 BR XSTEP F0 PSS plan 765124 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_opZ.

Module LibSegNa_va_prAn.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [770548].
Definition STOPS1 : list Z := [770548; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$32$33&1$35$33^#?#??????????????<#11$22$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 65536 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KRange (EVar 2) 140735332487264 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-88)) (ELit 88);
   KRange (EVar 53) 18446744073709550616 18446744073709551615;
   KRange (EVar 51) 1 21].
Definition ss0 : sym_state := SS 770468 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-88), ELit 88)].
Definition F0L : list SR.region := [((EVar 2), (-88), 88)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#;<1?4#872?4#87114#;<1?4#5=#;<1?4,20#$1+$2-60$3$4$5$6$7$22$33#15?:78$33&1$35$33^#?#??????????????<#11$22$10$11$32+@-1$33$35$14#7???8000$35$17$18$19$1:$1;$1<$1=$1>$1?,,12!$2-58,8$19!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#10000#158000!##15?:78,8#7???8000'$2#7???7?801060#800000000000&$2#10($2-58#58'$35^#?#????????????<18^#?#???????????????'$33#1#15,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 770548 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 770468 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 770468 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prAn.

End BndP_Na_131.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_003.
Module BndP_Na_132.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_003.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Na_132 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e77cdf2ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prAp2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prAp3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prAp2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prAp5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prAp2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prAp3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prAp4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prAp5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prAp3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prB12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prB13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prB12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prB15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prB12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prB13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prB14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prB15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prB13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prB22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prB23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prB22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prB25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prB22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prB23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prB24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prB25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prB23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB3n2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB3n3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB3n2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB3n5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB3n2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB3n3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB3n4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB3n5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB3n3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB3z2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB3z3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB3z2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB3z5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB3z2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB3z3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB3z4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB3z5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB3z3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB4a2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB4a3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB4a2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB4a5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB4a2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB4a3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB4a4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB4a5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB4a3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB4b2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB4b3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB4b2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB4b5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB4b2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB4b3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB4b4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB4b5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB4b3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB4c2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB4c3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB4c2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB4c5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB4c2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB4c3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB4c4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB4c5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prB4c3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prC32BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prC33NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prC32BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prC35XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prC32F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prC33PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prC34planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prC35regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prC33kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prD22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prD23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prD22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prD25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prD22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prD23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prD24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prD25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132@LibSegNa_va_prD23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132BLibSegNa_va_prD3n12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132BLibSegNa_va_prD3n13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132BLibSegNa_va_prD3n12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132BLibSegNa_va_prD3n15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132BLibSegNa_va_prD3n12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132BLibSegNa_va_prD3n13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132BLibSegNa_va_prD3n14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132BLibSegNa_va_prD3n15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132BLibSegNa_va_prD3n13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132BLibSegNa_va_prD3n22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132BLibSegNa_va_prD3n23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132BLibSegNa_va_prD3n22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132BLibSegNa_va_prD3n25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132BLibSegNa_va_prD3n22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132BLibSegNa_va_prD3n23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132BLibSegNa_va_prD3n24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132BLibSegNa_va_prD3n25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132BLibSegNa_va_prD3n23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132BLibSegNa_va_prD3n32BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132BLibSegNa_va_prD3n33NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132BLibSegNa_va_prD3n32BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132BLibSegNa_va_prD3n35XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132BLibSegNa_va_prD3n32F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132BLibSegNa_va_prD3n33PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132BLibSegNa_va_prD3n34planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132BLibSegNa_va_prD3n35regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132BLibSegNa_va_prD3n33kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prD3z2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prD3z3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prD3z2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prD3z5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prD3z2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prD3z3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prD3z4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prD3z5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_132ALibSegNa_va_prD3z3kn0".

Module LibSegNa_va_prAp.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [770548].
Definition STOPS1 : list Z := [770548; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$32$33&1$35$33^#?#??????????????<#11$22$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 65536 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KRange (EVar 2) 140735332487264 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-88)) (ELit 88);
   KRange (EVar 53) 0 1000;
   KRange (EVar 51) 1 21].
Definition ss0 : sym_state := SS 770468 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-88), ELit 88)].
Definition F0L : list SR.region := [((EVar 2), (-88), 88)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#;<1?4#872?4#87114#;<1?4#5=#;<1?4,20#$1+$2-60$3$4$5$6$7$22$33#15?:78$33&1$35$33^#?#??????????????<#11$22$10$11$32+@-1$33$35$14#7???8000$35$17$18$19$1:$1;$1<$1=$1>$1?,,12!$2-58,8$19!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#10000#158000!##15?:78,8#7???8000'$2#7???7?801060#800000000000&$2#10($2-58#58'$35##3>8'$33#1#15,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 770548 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 770468 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 770468 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prAp.

Module LibSegNa_va_prB1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$33$:$;$34^#?#??????????????<#11$?$10$11$32$34$14#7???8000$35$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$34##190'$35#1#11'$33#1#15'$32#6;6000#7???????????!$32#,1$38'$38##??#&6$32#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 770548 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<234+$2-60$3$4$5$6$7$22$33$21$38$34^#?#??????????????<#11$?$10$11$32$34$32#7???8000$35&6$22#3+&6$22#3#7???8000$33$1:$1;$1<$1=$1>$1?,,;'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$34##190'$35#1#11'$33#1#15'$32#6;6000#7???????????!$32#,1$38'$38##??#&6$32#3#7???8000#1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 770548 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 770548 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prB1.

Module LibSegNa_va_prB2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$33$:$;$34^#?#??????????????<#11$?$10$11$32$34$14#7???8000$35$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$34^#?#????????????>70^#?#???????????????'$35#1#11'$33#1#15'$32#6;6000#7???????????!$32#,1$38'$38##??#&6$32#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 770548 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<298+$2-60$3$4$5$6$7$22$33$21$38$34^#?#??????????????<#11$?$10$11$32$34$32#7???8000$35+&6$22#3#7???8000$35$32$1:$1;$1<$1=$1>$1?,,;'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$34^#?#????????????>70^#?#???????????????'$35#1#11'$33#1#15'$32#6;6000#7???????????!$32#,1$38'$38##??#&6$32#3#7???8000#1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 770548 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 770548 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prB2.

Module LibSegNa_va_prB3n.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$33$:$;$34^#?#??????????????<#11$?$10$11$32$34$14#7???8000$35$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",7'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$34^#?#????????????>70^#?#???????????????'$35^#?#??????????????=^#?#???????????????'$33#1#15"%pstring).
Definition ss0 : sym_state := SS 770548 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<360+$2-60$3$4$5$6$7$22$33$21#30$34^#?#??????????????<#11$?$10$11$32$34+&6$22#3#7???8000#7???8000$35$17$18$19$1:$1;$1<$1=$1>$1?,,7'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$34^#?#????????????>70^#?#???????????????'$35^#?#??????????????=^#?#???????????????'$33#1#15,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 770548 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 770548 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prB3n.

Module LibSegNa_va_prB3z.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$33$:$;$34^#?#??????????????<#11$?$10$11$32$34$14#7???8000$35$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",7'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$34^#?#????????????>70^#?#???????????????'$35##'$33#1#15"%pstring).
Definition ss0 : sym_state := SS 770548 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<360+$2-60$3$4$5$6$7$22$33$21#30$34^#?#??????????????<#11$?$10$11$32$34+&6$22#3#7???8000#7???8000$35$17$18$19$1:$1;$1<$1=$1>$1?,,7'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$34^#?#????????????>70^#?#???????????????'$35##'$33#1#15,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 770548 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 770548 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prB3z.

Module LibSegNa_va_prB4a.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$33$:$;$34^#?#??????????????<#11$?$10$11$32$34$14#7???8000$35$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$34##190'$35#12#1:5'$33#1#15'$32#6;6000#7???????????!$32#,1$38'$38##??#&6$32#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 770548 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<474+$2-60$3$4$5$6$7$22$33$21$38$34^#?#??????????????<#11$?$10$11$32+&6$22#3#7???8000$14#7???8000$35$17$18$19$1:$1;$1<$1=$1>$1?,,;'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$34##190'$35#12#1:5'$33#1#15'$32#6;6000#7???????????!$32#,1$38'$38##??#&6$32#3#7???8000#1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 770548 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 770548 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prB4a.

Module LibSegNa_va_prB4b.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$33$:$;$34^#?#??????????????<#11$?$10$11$32$34$14#7???8000$35$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$34^#?#????????????>70^#?#???????????????'$35#12#14'$33#1#15'$32#6;6000#7???????????!$32#,1$38'$38##??#&6$32#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 770548 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<474+$2-60$3$4$5$6$7$22$33$21$38$34^#?#??????????????<#11$?$10$11$32+&6$22#3#7???8000$14#7???8000$35$17$18$19$1:$1;$1<$1=$1>$1?,,;'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$34^#?#????????????>70^#?#???????????????'$35#12#14'$33#1#15'$32#6;6000#7???????????!$32#,1$38'$38##??#&6$32#3#7???8000#1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 770548 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 770548 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prB4b.

Module LibSegNa_va_prB4c.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$33$:$;$34^#?#??????????????<#11$?$10$11$32$34$14#7???8000$35$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$34^#?#????????????>70^#?#???????????????'$35^#?#????????????>71^#?#??????????????<'$33#1#15'$32#6;6000#7???????????!$32#,1$38'$38##??#&6$32#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 770548 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<474+$2-60$3$4$5$6$7$22$33$21$38$34^#?#??????????????<#11$?$10$11$32+&6$22#3#7???8000$14#7???8000$35$17$18$19$1:$1;$1<$1=$1>$1?,,;'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$34^#?#????????????>70^#?#???????????????'$35^#?#????????????>71^#?#??????????????<'$33#1#15'$32#6;6000#7???????????!$32#,1$38'$38##??#&6$32#3#7???8000#1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 770548 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 770548 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prB4c.

Module LibSegNa_va_prC3.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$9$:$;$<$=$>$?$10$11$12$13+&6$22#3#7???8000$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 34) 140735332487168 140737488355320;
   KAlign (EVar 34) 8;
   KWord (SA (EVar 34) 0) 8 (EVar 33);
   KZero (SA (EAlu Instr.ALU_SRL (EVar 34) (ELit 3)) 2147450880) (ELit 1)].
Definition ss0 : sym_state := SS 770912 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<374+$2-60$3$4$5$6$7$22$9$21#2>$<$=$>$?$10$11$12$13+&6$22#3#7???8000$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,4'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 770912 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 770912 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prC3.

Module LibSegNa_va_prD2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$9$:$;$<$=$>$?$10$11&1$36$35$34$14#7???8000$35+&6$22#3#7???8000$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$34^#?#????????????>70^#?#???????????????'$35#1#11'$36#6;6000#7???????????!$36#,1$38'$38##??#&6$36#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 771088 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<518+$2-60$3$4$5$6$7$22$9$21$38$<$=$>$?$10$11$36$36$14#7???8000$35+&6$22#3#7???8000$18$19$1:$1;$1<$1=$1>$1?,,:'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$34^#?#????????????>70^#?#???????????????'$35#1#11'$36#6;6000#7???????????!$36#,1$38'$38##??#&6$36#3#7???8000#1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 771088 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 771088 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prD2.

Module LibSegNa_va_prD3n1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$9$:$;$<$=$>$?$10$11$12$13+&6$22#3#7???8000$15$35$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 34) 140735332487168 140737488355320;
   KAlign (EVar 34) 8;
   KWord (SA (EVar 34) 0) 8 (EVar 33);
   KZero (SA (EAlu Instr.ALU_SRL (EVar 34) (ELit 3)) 2147450880) (ELit 1);
   KRange (EVar 53) 18446744073709551615 18446744073709551615].
Definition ss0 : sym_state := SS 770932 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<3:4+$2-60$3$4$5$6$7$22$9$21#30$<$=$>$?$10$11$12#1+&6$22#3#7???8000$15$35$17$18$19$1:$1;$1<$1=$1>$1?,,5'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$35^#?#???????????????^#?#???????????????,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 770932 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 770932 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prD3n1.

Module LibSegNa_va_prD3n2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$9$:$;$<$=$>$?$10$11$12$13+&6$22#3#7???8000$15$35$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 34) 140735332487168 140737488355320;
   KAlign (EVar 34) 8;
   KWord (SA (EVar 34) 0) 8 (EVar 33);
   KZero (SA (EAlu Instr.ALU_SRL (EVar 34) (ELit 3)) 2147450880) (ELit 1);
   KRange (EVar 53) 18446744073709551614 18446744073709551614].
Definition ss0 : sym_state := SS 770932 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<3:4+$2-60$3$4$5$6$7$22$9$21#30$<$=$>$?$10$11$12#2+&6$22#3#7???8000$15$35$17$18$19$1:$1;$1<$1=$1>$1?,,5'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$35^#?#??????????????>^#?#??????????????>,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 770932 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 770932 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prD3n2.

Module LibSegNa_va_prD3n3.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$9$:$;$<$=$>$?$10$11$12$13+&6$22#3#7???8000$15$35$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 34) 140735332487168 140737488355320;
   KAlign (EVar 34) 8;
   KWord (SA (EVar 34) 0) 8 (EVar 33);
   KZero (SA (EAlu Instr.ALU_SRL (EVar 34) (ELit 3)) 2147450880) (ELit 1);
   KRange (EVar 53) 18446744073709551613 18446744073709551613].
Definition ss0 : sym_state := SS 770932 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<3:4+$2-60$3$4$5$6$7$22$9$21#30$<$=$>$?$10$11$12#3+&6$22#3#7???8000$15$35$17$18$19$1:$1;$1<$1=$1>$1?,,5'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$35^#?#??????????????=^#?#??????????????=,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 770932 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 770932 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prD3n3.

Module LibSegNa_va_prD3z.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$33$:$;$<$=$>$?$10$11$32$13+&6$22#3#7???8000#7???8000$35$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$35##'$33#1#15'$32#6;6000#7???????????!$32#,1$38'$38##??#&6$32#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 770932 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<3=8+$2-60$3$4$5$6$7$22$33$21$38$<$=$>$?$10$11$32$32+&6$22#3#7???8000#7???8000$35$17$18$19$1:$1;$1<$1=$1>$1?,,:'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$35##'$33#1#15'$32#6;6000#7???????????!$32#,1$38'$38##??#&6$32#3#7???8000#1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 770932 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 770932 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prD3z.

End BndP_Na_132.
Module BndP_Na_133.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_003.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Na_133 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e77cdf2ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prE12BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prE13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prE12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prE15XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prE12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prE13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prE14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prE15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prE13kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prE22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prE23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prE22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prE25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prE22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prE23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prE24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prE25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prE23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133?LibSegNa_va_prF2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133?LibSegNa_va_prF3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133?LibSegNa_va_prF2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133?LibSegNa_va_prF5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133?LibSegNa_va_prF2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133?LibSegNa_va_prF3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133?LibSegNa_va_prF4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133?LibSegNa_va_prF5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133?LibSegNa_va_prF3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prGa2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prGa3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prGa2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prGa5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prGa2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prGa3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prGa4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prGa5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prGa3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prGb2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prGb3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prGb2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prGb5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prGb2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prGb3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prGb4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prGb5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133@LibSegNa_va_prGb3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN1c2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN1c3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN1c2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN1c5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN1c2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN1c3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN1c4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN1c5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN1c3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN1p2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN1p3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN1p2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN1p5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN1p2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN1p3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN1p4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN1p5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN1p3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN1z2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN1z3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN1z2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN1z5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN1z2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN1z3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN1z4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN1z5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN1z3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN2c2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN2c3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN2c2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN2c5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN2c2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN2c3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN2c4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN2c5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN2c3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN2e2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN2e3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN2e2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN2e5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN2e2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN2e3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN2e4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN2e5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN2e3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN3c2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN3c3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN3c2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN3c5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN3c2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN3c3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN3c4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN3c5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN3c3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN3e2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN3e3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN3e2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN3e5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN3e2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN3e3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN3e4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN3e5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN3e3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN4c2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN4c3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN4c2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN4c5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN4c2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN4c3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN4c4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN4c5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN4c3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN4e2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN4e3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN4e2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN4e5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN4e2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN4e3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN4e4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN4e5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_133ALibSegNa_va_prN4e3kn0".

Module LibSegNa_va_prE1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$33$:$;$<$=$>$?$10$11$12+&6$22#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 34) 140735332487168 140737488355320;
   KAlign (EVar 34) 8;
   KWord (SA (EVar 34) 0) 8 (EVar 33);
   KZero (SA (EAlu Instr.ALU_SRL (EVar 34) (ELit 3)) 2147450880) (ELit 1);
   KRange (EVar 51) 1 1].
Definition ss0 : sym_state := SS 771188 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<550+$2-60$3$4$5$6$7$22$33$21#65$<$=$>$?$10$11$12+&6$22#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$33#1#1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 771188 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 771188 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prE1.

Module LibSegNa_va_prE2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$33$:$;$<$=$>$?$10$11$12+&6$22#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 34) 140735332487168 140737488355320;
   KAlign (EVar 34) 8;
   KWord (SA (EVar 34) 0) 8 (EVar 33);
   KZero (SA (EAlu Instr.ALU_SRL (EVar 34) (ELit 3)) 2147450880) (ELit 1);
   KRange (EVar 51) 2 21].
Definition ss0 : sym_state := SS 771188 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<490+$2-60$3$4$5$6$7$22$33$21#2>$<$=$>$?$10$11$12+&6$22#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$33#2#15,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 771188 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 771188 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prE2.

Module LibSegNa_va_prF.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$33$:$;$<$=$>$?$10$11+$36-1+&6$22#3#7???8000$14#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$33#2#15'$36#6;6000#7???????????!$36#,1$38'$38##??#&6$36#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 771216 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<4<8+$2-60$3$4$5$6$7$22$36$21$38$<$=$>$?$10$11$36+&6$22#3#7???8000+$33-1#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?,,9'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$33#2#15'$36#6;6000#7???????????!$36#,1$38'$38##??#&6$36#3#7???8000#1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 771216 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 771216 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prF.

Module LibSegNa_va_prGa.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [773896].
Definition STOPS1 : list Z := [773896; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$9$:$;$<$=$>$?$10$11$12$13$14$15$35$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>'$2#7???7?801060#800000000000&$2#10!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2='$35#1#3>8"%pstring).
Definition ss0 : sym_state := SS 771408 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#;<?08#872?4#87114#;<?08#5=#;<?08,20#$23$2$3$4$5$6$7$24$25+$35-1$22$<$=$>$?$10$11$26$27$28$29$2:$2;$2<$2=$1:$1;$1<$1=$1>$1?,,>'$2#7???7?801060#800000000000&$2#10!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2='$35#1#3>8,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 773896 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 771408 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 771408 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prGa.

Module LibSegNa_va_prGb.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [773896].
Definition STOPS1 : list Z := [773896; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$9$:$;$<$=$>$?$10$11$12$13$14$15$35$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>'$2#7???7?801060#800000000000&$2#10!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2='$35^#?#????????????<18^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 771408 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#;<?08#872?4#87114#;<?08#5=#;<?08,20#$23$2$3$4$5$6$7$24$25+$35-1$22$<$=$>$?$10$11$26$27$28$29$2:$2;$2<$2=$1:$1;$1<$1=$1>$1?,,>'$2#7???7?801060#800000000000&$2#10!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2='$35^#?#????????????<18^#?#???????????????,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 773896 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 771408 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 771408 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prGb.

Module LibSegNa_va_prN1c.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$9$:$;$<$=$>$?$10$11+$36-1$13+$36-1#7???8000$16$17+&6$22#3#7???8000$39$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$39#2#15'$36#6;6000#7???????????!$36#,1$38'$38##??#&6$36#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 770612 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<234+$2-60$3$4$5$6$7$22$9$21$38$<$=$>$?$10$11$36$13$36#7???8000$16$17+&6$22#3#7???8000+$39-1$1:$1;$1<$1=$1>$1?,,9'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$39#2#15'$36#6;6000#7???????????!$36#,1$38'$38##??#&6$36#3#7???8000#1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 770612 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 770612 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prN1c.

Module LibSegNa_va_prN1p.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$9$:$;$<$=$>$?$10$11$12$34$14#7???8000$16&6$22#3$18$39$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 34) 140735332487168 140737488355320;
   KAlign (EVar 34) 8;
   KWord (SA (EVar 34) 0) 8 (EVar 33);
   KZero (SA (EAlu Instr.ALU_SRL (EVar 34) (ELit 3)) 2147450880) (ELit 1);
   KRange (EVar 57) 1 1;
   KRange (EVar 52) 1 400].
Definition ss0 : sym_state := SS 770612 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<2=8+$2-60$3$4$5$6$7$22$9$21#30$<$=$>$?$10$11+&6$22#3#7???8000$34+$14#1#7???8000$16&6$22#3$18#$1:$1;$1<$1=$1>$1?,,6'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$39#1#1'$34#1#190,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 770612 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 770612 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prN1p.

Module LibSegNa_va_prN1z.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$9$:$;$<$=$>$?$10$11$12$34$14#7???8000$16&6$22#3$18$39$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 34) 140735332487168 140737488355320;
   KAlign (EVar 34) 8;
   KWord (SA (EVar 34) 0) 8 (EVar 33);
   KZero (SA (EAlu Instr.ALU_SRL (EVar 34) (ELit 3)) 2147450880) (ELit 1);
   KRange (EVar 57) 1 1;
   KRange (EVar 52) 0 0].
Definition ss0 : sym_state := SS 770612 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<2?8+$2-60$3$4$5$6$7$22$9$21#2>$<$=$>$?$10$11+$12#1$34+$14#1+&6$22#3#7???8000$16&6$22#3$18#$1:$1;$1<$1=$1>$1?,,6'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$39#1#1'$34##,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 770612 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 770612 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prN1z.

Module LibSegNa_va_prN2c.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$3:$:$;$<$=$>$?$10$11+&6$22#3#7???8000$13$14$15+$3:$39$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 34) 140735332487168 140737488355320;
   KAlign (EVar 34) 8;
   KWord (SA (EVar 34) 0) 8 (EVar 33);
   KZero (SA (EAlu Instr.ALU_SRL (EVar 34) (ELit 3)) 2147450880) (ELit 1);
   KRange (EVar 58) 1 1000;
   KRange (EVar 57) 2 400].
Definition ss0 : sym_state := SS 770776 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<2=8+$2-60$3$4$5$6$7$22+$3:#1$21#30$<$=$>$?$10$11+&6$22#3#7???8000$13$14$15+$3:$39$17$18$19$1:$1;$1<$1=$1>$1?,,6'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$3:#1#3>8'$39#2#190,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 770776 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 770776 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prN2c.

Module LibSegNa_va_prN2e.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$3:$:$;$<$=$>$?$10$11$12$13$14#7???8000+$3:$39&6$22#3$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 34) 140735332487168 140737488355320;
   KAlign (EVar 34) 8;
   KWord (SA (EVar 34) 0) 8 (EVar 33);
   KZero (SA (EAlu Instr.ALU_SRL (EVar 34) (ELit 3)) 2147450880) (ELit 1);
   KRange (EVar 58) 1 1000;
   KRange (EVar 57) 1 1].
Definition ss0 : sym_state := SS 770776 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<2?8+$2-60$3$4$5$6$7$22+$3:#1$21#2>$<$=$>$?$10$11$12$13$14+&6$22#3#7???8000+$3:$39&6$22#3$18$19$1:$1;$1<$1=$1>$1?,,6'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$3:#1#3>8'$39#1#1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 770776 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 770776 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prN2e.

Module LibSegNa_va_prN3c.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$9$:$;$<$=$>$?$10$11$12$13+$36-1#7???8000$16+&6$22#3#7???8000$39+$36-1$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$39#2#11'$36#6;6000#7???????????!$36#,1$38'$38##??#&6$36#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 770712 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<298+$2-60$3$4$5$6$7$22$9$21$38$<$=$>$?$10$11$12$13$36#7???8000$16+&6$22#3#7???8000+$39-1$36$1:$1;$1<$1=$1>$1?,,9'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$39#2#11'$36#6;6000#7???????????!$36#,1$38'$38##??#&6$36#3#7???8000#1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 770712 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 770712 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prN3c.

Module LibSegNa_va_prN3e.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$9$:$;$<$=$>$?$10$11$12$13$14$15$16+&6$22#3#7???8000$39$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 34) 140735332487168 140737488355320;
   KAlign (EVar 34) 8;
   KWord (SA (EVar 34) 0) 8 (EVar 33);
   KZero (SA (EAlu Instr.ALU_SRL (EVar 34) (ELit 3)) 2147450880) (ELit 1);
   KRange (EVar 57) 1 1].
Definition ss0 : sym_state := SS 770712 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<410+$2-60$3$4$5$6$7$22$9$21#2>$<$=$>$?$10$11$12$13+$14#1$15$16+&6$22#3#7???8000#+$19#1$1:$1;$1<$1=$1>$1?,,5'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$39#1#1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 770712 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 770712 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prN3e.

Module LibSegNa_va_prN4c.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22+$3:$39$:$;$<$=$>$?$10$11+$36-1+$36-1$14#7???8000$3:+&6$22#3#7???8000$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$3:#1#3>8'$39#2#15'$36#6;6000#7???????????!$36#,1$38'$38##??#&6$36#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 771352 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<518+$2-60$3$4$5$6$7$22+$3:$39$21$38$<$=$>$?$10$11$36$36$14#7???8000+$3:#1+&6$22#3#7???8000$18$19$1:$1;$1<$1=$1>$1?,,:'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$3:#1#3>8'$39#2#15'$36#6;6000#7???????????!$36#,1$38'$38##??#&6$36#3#7???8000#1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 771352 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 771352 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prN4c.

Module LibSegNa_va_prN4e.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [771140].
Definition STOPS1 : list Z := [771140; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22+$3:$39$:$;$<$=$>$?$10$11$12$13$14$15$3:$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$2#7???7?801060#800000000000&$2#10!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2='$3:#1#3>8'$39#1#1"%pstring).
Definition ss0 : sym_state := SS 771352 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#;<444#872?4#87114#;<444#5=#;<444,20#$23$2$3$4$5$6$7$24$25$:$;$<$=$>$?$10$11$26$27$28$29$2:$2;$2<$2=$1:$1;$1<$1=$1>$1?,,?'$2#7???7?801060#800000000000&$2#10!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2='$3:#1#3>8'$39#1#1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 771140 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 771352 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 771352 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prN4e.

End BndP_Na_133.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_003 BndT_Na_001.
Module BndP_Na_134.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_003 BndT_Na_001.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Na_134 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e77cdf2ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN5c2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN5c3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN5c2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN5c5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN5c2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN5c3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN5c4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN5c5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN5c3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN5e2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN5e3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN5e2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN5e5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN5e2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN5e3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN5e4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN5e5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN5e3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN6c2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN6c3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN6c2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN6c5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN6c2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN6c3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN6c4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN6c5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN6c3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN6e2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN6e3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN6e2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN6e5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN6e2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN6e3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN6e4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN6e5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN6e3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN7c2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN7c3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN7c2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN7c5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN7c2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN7c3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN7c4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN7c5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN7c3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN7e2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN7e3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN7e2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN7e5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN7e2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN7e3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN7e4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN7e5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134ALibSegNa_va_prN7e3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134@LibSegNa_va_prT12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134@LibSegNa_va_prT13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134@LibSegNa_va_prT12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134@LibSegNa_va_prT15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134@LibSegNa_va_prT12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134@LibSegNa_va_prT13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134@LibSegNa_va_prT14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134@LibSegNa_va_prT15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134@LibSegNa_va_prT13kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_001ASegItab_Na_7522da2ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134BLibSegNa_va_vdA1_02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134BLibSegNa_va_vdA1_03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134BLibSegNa_va_vdA1_02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134BLibSegNa_va_vdA1_05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134BLibSegNa_va_vdA1_02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134BLibSegNa_va_vdA1_03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134BLibSegNa_va_vdA1_04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134BLibSegNa_va_vdA1_05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134BLibSegNa_va_vdA1_03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdA1_162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdA1_163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdA1_162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdA1_165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdA1_162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdA1_163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdA1_164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdA1_165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdA1_163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134BLibSegNa_va_vdA2_02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134BLibSegNa_va_vdA2_03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134BLibSegNa_va_vdA2_02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134BLibSegNa_va_vdA2_05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134BLibSegNa_va_vdA2_02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134BLibSegNa_va_vdA2_03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134BLibSegNa_va_vdA2_04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134BLibSegNa_va_vdA2_05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134BLibSegNa_va_vdA2_03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdA2_162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdA2_163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdA2_162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdA2_165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdA2_162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdA2_163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdA2_164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdA2_165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdA2_163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134@LibSegNa_va_vdA32BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134@LibSegNa_va_vdA33NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134@LibSegNa_va_vdA32BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134@LibSegNa_va_vdA35XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134@LibSegNa_va_vdA32F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134@LibSegNa_va_vdA33PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134@LibSegNa_va_vdA34planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134@LibSegNa_va_vdA35regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134@LibSegNa_va_vdA33kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdAk1e12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdAk1e13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdAk1e12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdAk1e15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdAk1e12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdAk1e13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdAk1e14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdAk1e15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdAk1e13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdAk2e02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdAk2e03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdAk2e02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdAk2e05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdAk2e02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdAk2e03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdAk2e04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdAk2e05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_134CLibSegNa_va_vdAk2e03kn0".

Module LibSegNa_va_prN5c.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$9$:$;$<$=$>$?$10$11$12$3:+&6$22#3#7???8000$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 34) 140735332487168 140737488355320;
   KAlign (EVar 34) 8;
   KWord (SA (EVar 34) 0) 8 (EVar 33);
   KZero (SA (EAlu Instr.ALU_SRL (EVar 34) (ELit 3)) 2147450880) (ELit 1);
   KRange (EVar 58) 2 3].
Definition ss0 : sym_state := SS 770980 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<3:4+$2-60$3$4$5$6$7$22$9$21#30$<$=$>$?$10$11$12+$3:-1+&6$22#3#7???8000$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$3:#2#3,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 770980 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 770980 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prN5c.

Module LibSegNa_va_prN5e.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$33$:$;$<$=$>$?$10$11$32$3:+&6$22#3#7???8000#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$3:#1#1'$33#1#15'$32#6;6000#7???????????!$32#,1$38'$38##??#&6$32#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 770980 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<3=8+$2-60$3$4$5$6$7$22$33$21$38$<$=$>$?$10$11$32$32+&6$22#3#7???8000#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?,,:'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$3:#1#1'$33#1#15'$32#6;6000#7???????????!$32#,1$38'$38##??#&6$32#3#7???8000#1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 770980 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 770980 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prN5e.

Module LibSegNa_va_prN6c.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$39$:$;$<$=$>$?$10$11+$36-1+$36-1+&6$22#3#7???8000#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$39#2#15'$36#6;6000#7???????????!$36#,1$38'$38##??#&6$36#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 771032 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<3=8+$2-60$3$4$5$6$7$22+$39-1$21$38$<$=$>$?$10$11$36$36+&6$22#3#7???8000#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?,,9'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$39#2#15'$36#6;6000#7???????????!$36#,1$38'$38##??#&6$36#3#7???8000#1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 771032 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 771032 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prN6c.

Module LibSegNa_va_prN6e.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [771140].
Definition STOPS1 : list Z := [771140; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$39$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>'$2#7???7?801060#800000000000&$2#10!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2='$39#1#1"%pstring).
Definition ss0 : sym_state := SS 771032 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#;<444#872?4#87114#;<444#5=#;<444,20#$23$2$3$4$5$6$7$24$25$:$;$<$=$>$?$10$11$26$27$28$29$2:$2;$2<$2=$1:$1;$1<$1=$1>$1?,,>'$2#7???7?801060#800000000000&$2#10!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2='$39#1#1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 771140 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 771032 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 771032 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prN6e.

Module LibSegNa_va_prN7c.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22+$36-1$:$;$<$=$>$?$10$11+$36-1+&6$22#3#7???8000$39#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$39#2#15'$36#6;6000#7???????????!$36#,1$38'$38##??#&6$36#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 771272 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<4<8+$2-60$3$4$5$6$7$22$36$21$38$<$=$>$?$10$11$36+&6$22#3#7???8000+$39-1#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?,,9'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$39#2#15'$36#6;6000#7???????????!$36#,1$38'$38##??#&6$36#3#7???8000#1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 771272 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 771272 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prN7c.

Module LibSegNa_va_prN7e.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$9$:$;$<$=$>$?$10$11$12+&6$22#3#7???8000$39$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 34) 140735332487168 140737488355320;
   KAlign (EVar 34) 8;
   KWord (SA (EVar 34) 0) 8 (EVar 33);
   KZero (SA (EAlu Instr.ALU_SRL (EVar 34) (ELit 3)) 2147450880) (ELit 1);
   KRange (EVar 57) 1 1].
Definition ss0 : sym_state := SS 771272 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20##;<550+$2-60$3$4$5$6$7$22+$9#1$21#65$<$=$>$?$10$11+$12#1+&6$22#3#7???8000#$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1'$39#1#1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 771272 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 771272 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prN7e.

Module LibSegNa_va_prT1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e77cdf.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e77cdf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 553716; 553236] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$9$:$;$<$=$>$?$10$11$12$13$14+&6$22#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$2#7???7?801060#800000000000&$2#10'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2="%pstring).
Definition ss0 : sym_state := SS 770808 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#872?4#87114#?4640#5=#?4640,20#$23$2$3$4$5$6$7$24$25$21#30$<$=$>$?$10$11$26$27$28$29$2:$2;$2<$2=$1:$1;$1<$1=$1>$1?,,11'$2#7???7?801060#800000000000&$2#10'$22#7???7?801000#7??????????8&$22#8!$22#,8$21#&6$22#3#7???8000#1!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2=,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e77cdf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 770808 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e77cdf.IT BndT_Na_003.SegItab_Na_e77cdf.IT_sound BF NX0 BR XSTEP F0 PSS plan 770808 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_prT1.

Module LibSegNa_va_vdA1_0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [730020].
Definition STOPS1 : list Z := [730020] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KImg 65536 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487328 140737488355328;
   KAlign (EVar 2) 32;
   KWr (SA (EVar 2) (-160)) (ELit 160)].
Definition ss0 : sym_state := SS 729960 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-160), ELit 160)].
Definition F0L : list SR.region := [((EVar 2), (-160), 160)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;23:4#;23:4#5=#;23:4,20#$1+$2-:0$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,14!$2-68,8$1;!$2-60,8$1:!$2-58,8$19!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1!$2-:0,8#%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010:0#800000000000&$2#20($2-:0#:0,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 730020 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 729960 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 729960 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdA1_0.

Module LibSegNa_va_vdA1_16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [730020].
Definition STOPS1 : list Z := [730020] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2#10$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 65536 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487328 140737488355312;
   KAlign (EVar 2) 32;
   KWr (SA (EVar 2) (-160)) (ELit 176)].
Definition ss0 : sym_state := SS 729960 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-144), ELit 160)].
Definition F0L : list SR.region := [((EVar 2), (-144), 160)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;23:4#;23:4#5=#;23:4,20#$1+$2-90$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,14!$2-58,8$1;!$2-50,8$1:!$2-48,8$19!$2-40,8$18!$2-38,8$17!$2-30,8$16!$2-28,8$15!$2-20,8$14!$2-18,8$13!$2-10,8$12!$2-8,8$9!$2#,8$8!$2#8,8$1!$2-90,8#%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010:0#7??????????0&$2#20($2-:0#;0,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 730020 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 729960 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 729960 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdA1_16.

Module LibSegNa_va_vdA2_0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [730048].
Definition STOPS1 : list Z := [730048] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 65536 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487328 140737488355328;
   KAlign (EVar 2) 32].
Definition ss0 : sym_state := SS 730024 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;23<0#;23<0#5=#;23<0,20#$1+$2-:0$3$4$5$6$7$2+$2-:0$:$;$<$=$>$?$10$11$12$13$14$=$<$;$18$19$1:$1;$1<$1=$1>$1?,,5%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010:0#800000000000&$2#20,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 730048 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 730024 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 730024 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdA2_0.

Module LibSegNa_va_vdA2_16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [730048].
Definition STOPS1 : list Z := [730048] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-90$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 65536 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487328 140737488355328;
   KAlign (EVar 2) 32].
Definition ss0 : sym_state := SS 730024 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;23<0#;23<0#5=#;23<0,20#$1+$2-:0$3$4$5$6$7+$2#10+$2-:0$:$;$<$=$>$?$10$11$12$13$14$=$<$;$18$19$1:$1;$1<$1=$1>$1?,,5%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010:0#800000000000&$2#20,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 730048 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 730024 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 730024 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdA2_16.

Module LibSegNa_va_vdA3.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [411628].
Definition STOPS1 : list Z := [411628; 730100] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8$9$24$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 65536 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487328 140737488355328;
   KAlign (EVar 2) 32].
Definition ss0 : sym_state := SS 730052 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#647><#;23?4#647><#5=#647><,20##;23><+$2-:0$3$4$5$6$7$8$9#40#15?:78#1$=$>$?$10$11$12$13$24$15$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,5%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010:0#800000000000&$2#20,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 411628 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 730052 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 730052 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdA3.

Module LibSegNa_va_vdAk1e1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [731576].
Definition STOPS1 : list Z := [731576] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$14$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4$2=!$25-10,4#1,$25-8#8'$2=##1($25-8#8)+$25-18##18$24##60"%pstring).
Definition ss0 : sym_state := SS 731456 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 37), (-8), ELit 8)].
Definition F0L : list SR.region := [((EVar 37), (-8), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;29;8#;29;8#5=#;29;8,20#$1$2$3$4$5$6$7$8$9+$25-10$2=+&6+$25-10#3#7???8000#1#2+$50#1$10$11$12+$24#50$14$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?,,11!$25-8,8+$50#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4$2=!$25-10,4#1'$2=##1($25-8#8)+$25-18##18$24##60,51!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 731576 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 731456 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 731456 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdAk1e1.

Module LibSegNa_va_vdAk2e0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [731576].
Definition STOPS1 : list Z := [731576] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$14$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1!$25-14,4#2!$25-10,4#($25-10#4)+$25-18##18$24##60"%pstring).
Definition ss0 : sym_state := SS 731456 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 37), (-16), ELit 4)].
Definition F0L : list SR.region := [((EVar 37), (-16), 4)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;29;8#;29;8#5=#;29;8,20#$1$2$3$4$5$6$7$8$9+$25-10#1+&6+$25-10#3#7???8000##2$?$10$11$12+$24#50$14$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?,,>!$25-10,4#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1!$25-14,4#2($25-10#4)+$25-18##18$24##60,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 731576 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 731456 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 731456 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdAk2e0.

End BndP_Na_134.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_001 BndT_Na_003.
Module BndP_Na_135.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_001 BndT_Na_003.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Na_135 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_001ASegItab_Na_7522da2ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135CLibSegNa_va_vdAk2e12BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135CLibSegNa_va_vdAk2e13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135CLibSegNa_va_vdAk2e12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135CLibSegNa_va_vdAk2e15XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135CLibSegNa_va_vdAk2e12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135CLibSegNa_va_vdAk2e13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135CLibSegNa_va_vdAk2e14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135CLibSegNa_va_vdAk2e15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135CLibSegNa_va_vdAk2e13kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135?LibSegNa_va_vdB2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135?LibSegNa_va_vdB3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135?LibSegNa_va_vdB2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135?LibSegNa_va_vdB5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135?LibSegNa_va_vdB2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135?LibSegNa_va_vdB3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135?LibSegNa_va_vdB4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135?LibSegNa_va_vdB5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135?LibSegNa_va_vdB3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135?LibSegNa_va_vdC2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135?LibSegNa_va_vdC3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135?LibSegNa_va_vdC2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135?LibSegNa_va_vdC5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135?LibSegNa_va_vdC2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135?LibSegNa_va_vdC3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135?LibSegNa_va_vdC4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135?LibSegNa_va_vdC5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135?LibSegNa_va_vdC3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDKn2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDKn3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDKn2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDKn5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDKn2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDKn3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDKn4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDKn5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDKn3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDKz2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDKz3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDKz2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDKz5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDKz2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDKz3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDKz4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDKz5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDKz3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdDV1n2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdDV1n3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdDV1n2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdDV1n5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdDV1n2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdDV1n3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdDV1n4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdDV1n5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdDV1n3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdDV1z2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdDV1z3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdDV1z2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdDV1z5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdDV1z2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdDV1z3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdDV1z4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdDV1z5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdDV1z3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDV22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDV23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDV22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDV25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDV22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDV23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDV24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDV25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDV23kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d53c472ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDa22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDa23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDa22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDa25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDa22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDa23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDa24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDa25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135ALibSegNa_va_vdDa23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKLL2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKLL3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKLL2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKLL5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKLL2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKLL3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKLL4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKLL5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKLL3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKLS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKLS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKLS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKLS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKLS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKLS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKLS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKLS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKLS3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKSL2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKSL3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKSL2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKSL5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKSL2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKSL3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKSL4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKSL5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKSL3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKSS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKSS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKSS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKSS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKSS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKSS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKSS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKSS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIKSS3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIVLL2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIVLL3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIVLL2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIVLL5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIVLL2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIVLL3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIVLL4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIVLL5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_135BLibSegNa_va_vdIVLL3kn0".

Module LibSegNa_va_vdAk2e1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [731576].
Definition STOPS1 : list Z := [731576] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$14$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4#2!$25-10,4#1,$25-8#8($25-10#4($25-8#8)+$25-18##18$24##60"%pstring).
Definition ss0 : sym_state := SS 731456 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 37), (-16), ELit 4); ((EVar 37), (-8), ELit 8)].
Definition F0L : list SR.region := [((EVar 37), (-16), 4); ((EVar 37), (-8), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;29;8#;29;8#5=#;29;8,20#$1$2$3$4$5$6$7$8$9+$25-10#+&6+$25-10#3#7???8000#1#2+$50#1$10$11$12+$24#50$14$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?,,11!$25-10,4#!$25-8,8+$50#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4#2($25-10#4($25-8#8)+$25-18##18$24##60,51!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 731576 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 731456 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 731456 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdAk2e1.

Module LibSegNa_va_vdB.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [730252].
Definition STOPS1 : list Z := [730252] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8+$2-:0$32$;$<$=$>$?$10$11$12$13$24$15$16$17$18#7???8000$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$2#7???7?8010:0#800000000000&$2#20($2-90#8)+$2-:0##:0$32##40'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32##18(&6$32#3#7???8000#8'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1)&6+$24#50#3#7???8000#1&6$32#3#7???8000#8)+$2-:0##:0$24##60"%pstring).
Definition ss0 : sym_state := SS 730092 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-144), ELit 8); ((EVar 50), (0), ELit 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-144), 8); ((EVar 50), (0), 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;248<#;248<#5=#;248<,20#$1+$2-:0$3$4$5$6$7$8+$2-:0##10;=:#;2368^#?#??????????????3^#?#??????????????8^#?#??????????????1$10$11$32+$24#50$24$15$16$17$32#7???8000+&6$32#3#7???8000+&6+$24#50#3#7???8000$1<$1=$1>$1?,,1;!$2-90,8$32!&6$32#3#7???8003,1^#?#??????????????1!&6$32#3#7???8002,1^#?#??????????????1!&6$32#3#7???8001,1^#?#??????????????1!&6$32#3#7???8000,1^#?#??????????????1!&6$32#3#7???8007,1^#?#??????????????3!&6$32#3#7???8006,1^#?#??????????????3!&6$32#3#7???8005,1^#?#??????????????8!&6$32#3#7???8004,1^#?#??????????????8!$32#10,8#;2368!$32#8,8#10;=:!$32#,8#41;58:;3'$2#7???7?8010:0#800000000000&$2#20($2-90#8)+$2-:0##:0$32##40'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32##18(&6$32#3#7???8000#8'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1)&6+$24#50#3#7???8000#1&6$32#3#7???8000#8)+$2-:0##:0$24##60,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 730252 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 730092 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 730092 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdB.

Module LibSegNa_va_vdC.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 731456] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14+$24#30$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 731444 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#?4640#;2940#?4640#5=#?4640,20##;2940$2$3$4$5$6$7$8$9+$24#30#3:$<$=$>$?$10$11$12$13$14+$24#30$16$17$18$19$1:$1;$1<$1=$1>$1?,,,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 731444 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 731444 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdC.

Module LibSegNa_va_vdDKn.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 730696; 730784] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-10,4#!$25-8,8$2;'$2;#1^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 730548 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#;2648#;26:0#?4640#5=#?4640,20##;26:0$2$3$4$5$6$7$8$9+$24#30#2<$25#$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?,,?'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-10,4#!$25-8,8$2;'$2;#1^#?#???????????????,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 730548 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 730548 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdDKn.

Module LibSegNa_va_vdDKz.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [730784].
Definition STOPS1 : list Z := [730784] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-10,4#!$25-8,8#"%pstring).
Definition ss0 : sym_state := SS 730548 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;26:0#;26:0#5=#;26:0,20#$1$2$3$4$5$6$7$8$9##$25#$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?,,>'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-10,4#!$25-8,8#,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 730784 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 730548 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 730548 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdDKz.

Module LibSegNa_va_vdDV1n.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 730696; 730784] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-14,4#1!$25-10,4#1!$25-8,8$2;'$2;#1^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 730548 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#;2648#;26:0#?4640#5=#?4640,20##;2648$2$3$4$5$6$7$8$9+$24#30#2<$25#$>$?$10$11$12+$24#50$24+$24#30$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?,,11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-14,4#1!$25-10,4#1!$25-8,8$2;'$2;#1^#?#???????????????,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 1001024 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 730548 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 730548 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdDV1n.

Module LibSegNa_va_vdDV1z.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [730696].
Definition STOPS1 : list Z := [730696] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",10'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-14,4#1!$25-10,4#1!$25-8,8#"%pstring).
Definition ss0 : sym_state := SS 730548 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;2648#;2648#5=#;2648,20#$1$2$3$4$5$6$7$8$9##$25#$>$?$10$11$12+$24#50$24+$24#30$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?,,10'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-14,4#1!$25-10,4#1!$25-8,8#,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 730696 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 730548 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 730548 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdDV1z.

Module LibSegNa_va_vdDV2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [730696].
Definition STOPS1 : list Z := [730696] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1!$25-18,4#1!$25-14,4#2!$25-10,4#1"%pstring).
Definition ss0 : sym_state := SS 730548 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;2648#;2648#5=#;2648,20#$1$2$3$4$5$6$7$8$9#2#2$25#$>$?$10$11$12+$24#50$24+$24#30$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?,,>'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1!$25-18,4#1!$25-14,4#2!$25-10,4#1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 730696 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 730548 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 730548 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdDV2.

Module LibSegNa_va_vdDa2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d53c47.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d53c47.IT.
Definition ENDS : list Z := [730896].
Definition STOPS1 : list Z := [730896; 730316] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",14%#10000#158000'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1#&6+$24#10#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$25-18,4#!$25-10,4#1!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##38#&6$26#3#7???8000#1!$26#,8#151130###8002222<#1"%pstring).
Definition ss0 : sym_state := SS 730252 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;2710#;24<<#;2710#5=#;2710,20#$1$2$3$4$5$6$7$8$9$26#151160###<27:4$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?,,14%#10000#158000'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1#&6+$24#10#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$25-18,4#!$25-10,4#1!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##38#&6$26#3#7???8000#1!$26#,8#151130###8002222<#1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 730896 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d53c47.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 730252 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d53c47.IT BndT_Na_003.SegItab_Na_d53c47.IT_sound BF NX0 BR XSTEP F0 PSS plan 730252 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdDa2.

Module LibSegNa_va_vdIKLL.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [759280].
Definition STOPS1 : list Z := [759280; 731444] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; (EVar 36); EVar 21; EVar 22; EVar 23; EVar 24; ELit 2147450880; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",17'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000"%pstring).
Definition ss0 : sym_state := SS 730784 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;95?0#;2934#;95?0#5=#;95?0,20##;2934$2$3$4$5$6$7$8$9+$24#30+$2=$2>$2:+$29$2:$29$?$10$11$12$13$24+$24#30$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,17'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 759280 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 730784 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 730784 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdIKLL.

Module LibSegNa_va_vdIKLS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [759280].
Definition STOPS1 : list Z := [759280; 731444] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; (EVar 36); EVar 21; EVar 22; EVar 23; EVar 24; ELit 2147450880; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000!$24#18,1$28'$28##2<'&9$28#1##"%pstring).
Definition ss0 : sym_state := SS 730784 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;95?0#;2934#;95?0#5=#;95?0,20##;2934$2$3$4$5$6$7$8$9+$24#30+$2=$2>+$24#19++$24&6$28#1#19&6$28#1$?$10$11$12$13$24+$24#30$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000!$24#18,1$28'$28##2<'&9$28#1##,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 759280 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 730784 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 730784 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdIKLS.

Module LibSegNa_va_vdIKSL.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [759280].
Definition STOPS1 : list Z := [759280; 731444] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; (EVar 36); EVar 21; EVar 22; EVar 23; EVar 24; ELit 2147450880; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000"%pstring).
Definition ss0 : sym_state := SS 730784 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;95?0#;2934#;95?0#5=#;95?0,20##;2934$2$3$4$5$6$7$8$9+$24#30++$24&6$2<#1#31$2:+$29$2:$29$?$10$11$12$13$24+$24#30$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 759280 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 730784 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 730784 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdIKSL.

Module LibSegNa_va_vdIKSS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [759280].
Definition STOPS1 : list Z := [759280; 731444] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; (EVar 36); EVar 21; EVar 22; EVar 23; EVar 24; ELit 2147450880; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##!$24#18,1$28'$28##2<'&9$28#1##"%pstring).
Definition ss0 : sym_state := SS 730784 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;95?0#;2934#;95?0#5=#;95?0,20##;2934$2$3$4$5$6$7$8$9+$24#30++$24&6$2<#1#31+$24#19++$24&6$28#1#19&6$28#1$?$10$11$12$13$24+$24#30$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,;'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##!$24#18,1$28'$28##2<'&9$28#1##,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 759280 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 730784 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 730784 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdIKSS.

Module LibSegNa_va_vdIVLL.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [759280].
Definition STOPS1 : list Z := [759280; 731152] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$24+$24#30$16$17$18#7???8000$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",17'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000"%pstring).
Definition ss0 : sym_state := SS 730696 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;95?0#;2810#;95?0#5=#;95?0,20##;2810$2$3$4$5$6$7$8$9+$24#30+$2=$2>$2:+$29$2:$29$?$10$11$12$13$24+$24#30$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,17'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 759280 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 730696 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 730696 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdIVLL.

End BndP_Na_135.
Module BndP_Na_136.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_001 BndT_Na_003.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Na_136 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_001ASegItab_Na_7522da2ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdIVLS2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdIVLS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdIVLS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdIVLS5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdIVLS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdIVLS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdIVLS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdIVLS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdIVLS3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdIVSL2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdIVSL3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdIVSL2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdIVSL5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdIVSL2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdIVSL3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdIVSL4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdIVSL5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdIVSL3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdIVSS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdIVSS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdIVSS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdIVSS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdIVSS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdIVSS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdIVSS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdIVSS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdIVSS3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdJ12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdJ13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdJ12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdJ15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdJ12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdJ13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdJ14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdJ15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdJ13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdJ22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdJ23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdJ22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdJ25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdJ22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdJ23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdJ24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdJ25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdJ23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce0L2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce0L3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce0L2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce0L5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce0L2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce0L3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce0L4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce0L5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce0L3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce0S2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce0S3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce0S2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce0S5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce0S2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce0S3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce0S4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce0S5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce0S3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce1L2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce1L3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce1L2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce1L5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce1L2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce1L3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce1L4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce1L5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce1L3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce1S2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce1S3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce1S2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce1S5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce1S2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce1S3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce1S4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce1S5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136CLibSegNa_va_vdKce1S3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d53c472ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdKdL22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdKdL23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdKdL22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdKdL25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdKdL22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdKdL23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdKdL24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdKdL25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdKdL23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdKdS22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdKdS23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdKdS22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdKdS25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdKdS22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdKdS23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdKdS24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdKdS25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136BLibSegNa_va_vdKdS23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdKr2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdKr3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdKr2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdKr5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdKr2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdKr3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdKr4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdKr5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdKr3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdQ12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdQ13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdQ12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdQ15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdQ12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdQ13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdQ14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdQ15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdQ13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdQ22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdQ23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdQ22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdQ25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdQ22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdQ23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdQ24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdQ25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0177;BndP_Na_136@LibSegNa_va_vdQ23kn0".

Module LibSegNa_va_vdIVLS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [759280].
Definition STOPS1 : list Z := [759280; 731152] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$24+$24#30$16$17$18#7???8000$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000!$24#18,1$28'$28##2<'&9$28#1##"%pstring).
Definition ss0 : sym_state := SS 730696 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;95?0#;2810#;95?0#5=#;95?0,20##;2810$2$3$4$5$6$7$8$9+$24#30+$2=$2>+$24#19++$24&6$28#1#19&6$28#1$?$10$11$12$13$24+$24#30$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000!$24#18,1$28'$28##2<'&9$28#1##,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 759280 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 730696 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 730696 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdIVLS.

Module LibSegNa_va_vdIVSL.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [759280].
Definition STOPS1 : list Z := [759280; 731152] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$24+$24#30$16$17$18#7???8000$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000"%pstring).
Definition ss0 : sym_state := SS 730696 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;95?0#;2810#;95?0#5=#;95?0,20##;2810$2$3$4$5$6$7$8$9+$24#30++$24&6$2<#1#31$2:+$29$2:$29$?$10$11$12$13$24+$24#30$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 759280 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 730696 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 730696 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdIVSL.

Module LibSegNa_va_vdIVSS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [759280].
Definition STOPS1 : list Z := [759280; 731152] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$24+$24#30$16$17$18#7???8000$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##!$24#18,1$28'$28##2<'&9$28#1##"%pstring).
Definition ss0 : sym_state := SS 730696 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;95?0#;2810#;95?0#5=#;95?0,20##;2810$2$3$4$5$6$7$8$9+$24#30++$24&6$2<#1#31+$24#19++$24&6$28#1#19&6$28#1$?$10$11$12$13$24+$24#30$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,;'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##!$24#18,1$28'$28##2<'&9$28#1##,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 759280 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 730696 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 730696 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdIVSS.

Module LibSegNa_va_vdJ1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [731456].
Definition STOPS1 : list Z := [731456] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 730916 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;2940#;2940#5=#;2940,20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 731456 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 730916 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 730916 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdJ1.

Module LibSegNa_va_vdJ2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [731456].
Definition STOPS1 : list Z := [731456] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 731152 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;2940#;2940#5=#;2940,20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 731456 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 731152 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 731152 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdJ2.

Module LibSegNa_va_vdKce0L.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [730456].
Definition STOPS1 : list Z := [730456; 730548] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",19'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#18#3#7???8000#1#&6+$24#20#3#7???8000#1#&6+$24#28#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1!$25-10,4#!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000($24#20#8($2:##1)##7???7000#100000001000$2:##1#&6$2:#3#7???8000#1)$2:##1$24##60)$2:##1+$25-18##18"%pstring).
Definition ss0 : sym_state := SS 730252 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 36), (32), ELit 8); ((EVar 42), (0), ELit 1)].
Definition F0L : list SR.region := [((EVar 36), (32), 8); ((EVar 42), (0), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;2558#;25;4#;2558#5=#;2558,20#$1$2$3$4$5$6$7$8$9+$24#18+$24#20#$=$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,18!$24#20,8#!$2:#,1#'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#18#3#7???8000#1#&6+$24#20#3#7???8000#1#&6+$24#28#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1!$24#18,1$28'$28##??'&9$28#1#1#1'$29##80000000!$24#28,8$2:'$2:#1000#800000000000($24#20#8($2:##1)##7???7000#100000001000$2:##1)$2:##1$24##60)$2:##1+$25-18##18,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 730456 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 730252 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 730252 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdKce0L.

Module LibSegNa_va_vdKce0S.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [730456].
Definition STOPS1 : list Z := [730456; 730548] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#18#3#7???8000#1#&6+$24#19#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1!$25-10,4#!$24#18,1$28'$28##2<'&9$28#1##($24#18#2"%pstring).
Definition ss0 : sym_state := SS 730252 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 36), (24), ELit 2)].
Definition F0L : list SR.region := [((EVar 36), (24), 2)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;2558#;25;4#;2558#5=#;2558,20#$1$2$3$4$5$6$7$8$9+$24#18#+&6+$24#18#3#7???8000#$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,?!$24#18,1#!$24#19,1#'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#18#3#7???8000#1#&6+$24#19#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1'$28##2<'&9$28#1##($24#18#2,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 730456 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 730252 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 730252 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdKce0S.

Module LibSegNa_va_vdKce1L.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [730456].
Definition STOPS1 : list Z := [730456; 730548] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1;'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#18#3#7???8000#1#&6+$24#20#3#7???8000#1#&6+$24#28#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$25-18,4#1!$25-10,4#1!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000($24#20#8($2:##1)##7???7000#100000001000$2:##1#&6$2:#3#7???8000#1)$2:##1$24##60)$2:##1+$25-18##18"%pstring).
Definition ss0 : sym_state := SS 730252 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 36), (32), ELit 8); ((EVar 42), (0), ELit 1)].
Definition F0L : list SR.region := [((EVar 36), (32), 8); ((EVar 42), (0), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;2558#;25;4#;2558#5=#;2558,20#$1$2$3$4$5$6$7$8$9+$24#18+$24#20#$=$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,19!$24#20,8#!$2:#,1#'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#18#3#7???8000#1#&6+$24#20#3#7???8000#1#&6+$24#28#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$24#18,1$28'$28##??'&9$28#1#1#1'$29##80000000!$24#28,8$2:'$2:#1000#800000000000($24#20#8($2:##1)##7???7000#100000001000$2:##1)$2:##1$24##60)$2:##1+$25-18##18,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 730456 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 730252 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 730252 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdKce1L.

Module LibSegNa_va_vdKce1S.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [730456].
Definition STOPS1 : list Z := [730456; 730548] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#18#3#7???8000#1#&6+$24#19#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$25-18,4#1!$25-10,4#1!$24#18,1$28'$28##2<'&9$28#1##($24#18#2"%pstring).
Definition ss0 : sym_state := SS 730252 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 36), (24), ELit 2)].
Definition F0L : list SR.region := [((EVar 36), (24), 2)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;2558#;25;4#;2558#5=#;2558,20#$1$2$3$4$5$6$7$8$9+$24#18#+&6+$24#18#3#7???8000#$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,10!$24#18,1#!$24#19,1#'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#18#3#7???8000#1#&6+$24#19#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1'$28##2<'&9$28#1##($24#18#2,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 730456 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 730252 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 730252 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdKce1S.

Module LibSegNa_va_vdKdL2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d53c47.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d53c47.IT.
Definition ENDS : list Z := [798520].
Definition STOPS1 : list Z := [798520; 731364] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$32#7???8000+&6$32#3#7???8000+&6+$24#50#3#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",28%#10000#158000'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1#&6+$24#10#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$25-18,4#!$25-10,4#!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##38#&6$26#3#7???8000#1!$26#,8#151130###80022232#1!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32#20#10(&6$32#3#7???8004#2)$32##40$24##60)$32##40$26##38)&6$24#3#7???8000#<&6$32#3#7???8000#8)&6$26#3#7???8000#1&6$32#3#7???8000#8)##80021070#1&6$32#3#7???8000#8"%pstring).
Definition ss0 : sym_state := SS 730548 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 50), (32), ELit 16); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (4), ELit 2)].
Definition F0L : list SR.region := [((EVar 50), (32), 16); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (4), 2)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#<2?38#;28>4#<2?38#5=#<2?38,20##;28>4$2$3$4$5$6$7$8$9$26+$32#20$16$15#<2?38$?$10$11$12+$24#50$2:$15$16$17$32#7???8000+&6$32#3#7???8000+&6+$24#50#3#7???8000$1<$1=$1>$1?,,28!$32#28,8$29!$32#20,8$2:!&6$32#3#7???8005,1#!&6$32#3#7???8004,1#%#10000#158000'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1#&6+$24#10#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##38#&6$26#3#7???8000#1!$26#,8#151130###80022232#1!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32#20#10(&6$32#3#7???8004#2)$32##40$24##60)$32##40$26##38)&6$24#3#7???8000#<&6$32#3#7???8000#8)&6$26#3#7???8000#1&6$32#3#7???8000#8)##80021070#1&6$32#3#7???8000#8,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 798520 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d53c47.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 730548 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d53c47.IT BndT_Na_003.SegItab_Na_d53c47.IT_sound BF NX0 BR XSTEP F0 PSS plan 730548 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdKdL2.

Module LibSegNa_va_vdKdS2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d53c47.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d53c47.IT.
Definition ENDS : list Z := [798520].
Definition STOPS1 : list Z := [798520; 731364] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$32#7???8000+&6$32#3#7???8000+&6+$24#50#3#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",22%#10000#158000'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1#&6+$24#10#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$25-18,4#!$25-10,4#!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##38#&6$26#3#7???8000#1!$26#,8#151130###80022232#1!$24#18,1$28'$28##2<'&9$28#1##'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32#20#10(&6$32#3#7???8004#2)$32##40$24##60)$32##40$26##38)&6$24#3#7???8000#<&6$32#3#7???8000#8)&6$26#3#7???8000#1&6$32#3#7???8000#8)##80021070#1&6$32#3#7???8000#8"%pstring).
Definition ss0 : sym_state := SS 730548 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 50), (32), ELit 16); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (4), ELit 2)].
Definition F0L : list SR.region := [((EVar 50), (32), 16); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (4), 2)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#<2?38#;28>4#<2?38#5=#<2?38,20##;28>4$2$3$4$5$6$7$8$9$26+$32#20$16$15#<2?38$?$10$11$12+$24#50+$24#19$15$16$17$32#7???8000+&6$32#3#7???8000+&6+$24#50#3#7???8000$1<$1=$1>$1?,,22!$32#28,8&6$28#1!$32#20,8+$24#19!&6$32#3#7???8005,1#!&6$32#3#7???8004,1#%#10000#158000'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1#&6+$24#10#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##38#&6$26#3#7???8000#1!$26#,8#151130###80022232#1!$24#18,1$28'$28##2<'&9$28#1##'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32#20#10(&6$32#3#7???8004#2)$32##40$24##60)$32##40$26##38)&6$24#3#7???8000#<&6$32#3#7???8000#8)&6$26#3#7???8000#1&6$32#3#7???8000#8)##80021070#1&6$32#3#7???8000#8,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 798520 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d53c47.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 730548 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d53c47.IT BndT_Na_003.SegItab_Na_d53c47.IT_sound BF NX0 BR XSTEP F0 PSS plan 730548 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdKdS2.

Module LibSegNa_va_vdKr.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [731456].
Definition STOPS1 : list Z := [731456] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19+&6$32#3#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 50) 7036928 140737488355264;
   KAlign (EVar 50) 32;
   KDisj (SA (ELit 0) 2147446784) (ELit 17592186048512) (SA (EVar 50) 0) (ELit 64);
   KWr (SA (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) 2147450884) (ELit 2)].
Definition ss0 : sym_state := SS 731364 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (4), ELit 2)].
Definition F0L : list SR.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (4), 2)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;2940#;2940#5=#;2940,20#$1$2$3$4$5$6$7$8$9^#?#??????????????8$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19+&6$32#3#7???8000$1;$1<$1=$1>$1?,,6!&6$32#3#7???8005,1^#?#??????????????8!&6$32#3#7???8004,1^#?#??????????????8'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40(&6$32#3#7???8004#2,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 731456 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 731364 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 731364 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdKr.

Module LibSegNa_va_vdQ1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [731732].
Definition STOPS1 : list Z := [731732] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$34$9$:$;$<$=$>$?$10$11$32$13$14$15$16$17$32$19+&6$32#3#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1;'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32##8(&6$32#3#7???8000#8!$32#38,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##40$33##1'$34#7???7?8010:0#800000000000&$34#10!$34-8,8$3<!$34-10,8$3=!$34-18,8$3>!$34-20,8$3?!$34-28,8$40!$34-30,8$41!$34-38,8$42!$34-40,8$43!$34-48,8$44!$34-50,8$45!$34-58,8$46!$34-60,8$47!$34-68,8$48)+$34-:0##:0$32##40)+$34-:0##:0$33##1"%pstring).
Definition ss0 : sym_state := SS 731576 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 50), (0), ELit 8); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), ELit 8); ((EVar 51), (0), ELit 1)].
Definition F0L : list SR.region := [((EVar 50), (0), 8); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), 8); ((EVar 51), (0), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;2:54#;2:54#5=#;2:54,20#$3<+$34-:0$3$4$5$6$7$3=$3>#1$;$<$=$>$?$10$11$3?$40$41$42$43$44$45$46$47$48$1<$1=$1>$1?,,25!$33#,1#!&6$32#3#7???8003,1^#?#??????????????5!&6$32#3#7???8002,1^#?#??????????????5!&6$32#3#7???8001,1^#?#??????????????5!&6$32#3#7???8000,1^#?#??????????????5!&6$32#3#7???8007,1^#?#??????????????5!&6$32#3#7???8006,1^#?#??????????????5!&6$32#3#7???8005,1^#?#??????????????5!&6$32#3#7???8004,1^#?#??????????????5!$32#,8#45>0360>'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32##8(&6$32#3#7???8000#8!$32#38,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##40$33##1'$34#7???7?8010:0#800000000000&$34#10!$34-8,8$3<!$34-10,8$3=!$34-18,8$3>!$34-20,8$3?!$34-28,8$40!$34-30,8$41!$34-38,8$42!$34-40,8$43!$34-48,8$44!$34-50,8$45!$34-58,8$46!$34-60,8$47!$34-68,8$48)+$34-:0##:0$32##40)+$34-:0##:0$33##1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 731732 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 731576 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 731576 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdQ1.

Module LibSegNa_va_vdQ2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_7522da.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_7522da.IT.
Definition ENDS : list Z := [731740].
Definition STOPS1 : list Z := [731740] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$34-:0$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 52) 140735332487328 140737488355328].
Definition ss0 : sym_state := SS 731736 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;2:5<#;2:5<#5=#;2:5<,20#$1$34$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1'$34#7???7?8010:0#800000000000,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 731740 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_7522da.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 731736 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_7522da.IT BndT_Na_001.SegItab_Na_7522da.IT_sound BF NX0 BR XSTEP F0 PSS plan 731736 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_va_vdQ2.

End BndP_Na_136.
