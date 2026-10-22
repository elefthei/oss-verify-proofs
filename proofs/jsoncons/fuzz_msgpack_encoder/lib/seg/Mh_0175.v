(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
Set Warnings "-require-in-module".
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel. From Stdlib Require ZArith NArith List Lia Bool. From LinuxProcessSemantics.LinuxProcessSem Require BvBase RiscvSemantics MemImageType State Run. From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Asan. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_002 BndT_Na_000 BndT_Na_003. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Module BndP_Na_108.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_002 BndT_Na_000 BndT_Na_003.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Na_108 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_002ASegItab_Na_9d8eff2ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvbQ2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvbQ3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvbQ2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvbQ5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvbQ2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvbQ3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvbQ4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvbQ5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvbQ3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_000ASegItab_Na_20a2f02ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdA2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdA3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdA2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdA5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdA2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdA3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdA4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdA5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdA3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdB2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdB3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdB2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdB5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdB2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdB3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdB4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdB5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdB3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdC2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdC3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdC2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdC5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdC2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdC3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdC4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdC5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdC3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdD2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdD3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdD2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdD5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdD2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdD3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdD4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdD5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qvdD3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f35ee72ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108>LibSegNa_qviA02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108>LibSegNa_qviA03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108>LibSegNa_qviA02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108>LibSegNa_qviA05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108>LibSegNa_qviA02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108>LibSegNa_qviA03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108>LibSegNa_qviA04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108>LibSegNa_qviA05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108>LibSegNa_qviA03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108?LibSegNa_qviA162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108?LibSegNa_qviA163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108?LibSegNa_qviA162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108?LibSegNa_qviA165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108?LibSegNa_qviA162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108?LibSegNa_qviA163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108?LibSegNa_qviA164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108?LibSegNa_qviA165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108?LibSegNa_qviA163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108ALibSegNa_qviAk1e12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108ALibSegNa_qviAk1e13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108ALibSegNa_qviAk1e12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108ALibSegNa_qviAk1e15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108ALibSegNa_qviAk1e12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108ALibSegNa_qviAk1e13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108ALibSegNa_qviAk1e14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108ALibSegNa_qviAk1e15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108ALibSegNa_qviAk1e13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108ALibSegNa_qviAk2e02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108ALibSegNa_qviAk2e03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108ALibSegNa_qviAk2e02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108ALibSegNa_qviAk2e05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108ALibSegNa_qviAk2e02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108ALibSegNa_qviAk2e03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108ALibSegNa_qviAk2e04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108ALibSegNa_qviAk2e05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108ALibSegNa_qviAk2e03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108ALibSegNa_qviAk2e12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108ALibSegNa_qviAk2e13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108ALibSegNa_qviAk2e12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108ALibSegNa_qviAk2e15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108ALibSegNa_qviAk2e12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108ALibSegNa_qviAk2e13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108ALibSegNa_qviAk2e14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108ALibSegNa_qviAk2e15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108ALibSegNa_qviAk2e13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qviB2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qviB3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qviB2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qviB5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qviB2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qviB3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qviB4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qviB5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qviB3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qviC2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qviC3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qviC2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qviC5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qviC2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qviC3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qviC4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qviC5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108=LibSegNa_qviC3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d9c1882ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108>LibSegNa_qviD22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108>LibSegNa_qviD23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108>LibSegNa_qviD22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108>LibSegNa_qviD25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108>LibSegNa_qviD22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108>LibSegNa_qviD23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108>LibSegNa_qviD24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108>LibSegNa_qviD25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108>LibSegNa_qviD23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108?LibSegNa_qviDKn2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108?LibSegNa_qviDKn3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108?LibSegNa_qviDKn2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108?LibSegNa_qviDKn5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108?LibSegNa_qviDKn2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108?LibSegNa_qviDKn3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108?LibSegNa_qviDKn4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108?LibSegNa_qviDKn5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_108?LibSegNa_qviDKn3kn0".

Module LibSegNa_qvbQ.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_9d8eff.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_9d8eff.IT.
Definition ENDS : list Z := [740480].
Definition STOPS1 : list Z := [740480] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$34$9$:$;$<$=$>$?$10$11$32$13$14$15$16$17$18$32$1:+&6$32#3#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1;'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32##8(&6$32#3#7???8000#8!$32#38,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##40$33##1'$34#7???7?8010:0#800000000000&$34#10!$34-8,8$3<!$34-10,8$3=!$34-18,8$3>!$34-20,8$3?!$34-28,8$40!$34-30,8$41!$34-38,8$42!$34-40,8$43!$34-48,8$44!$34-50,8$45!$34-58,8$46!$34-60,8$47!$34-68,8$48)+$34-:0##:0$32##40)+$34-:0##:0$33##1"%pstring).
Definition ss0 : sym_state := SS 740320 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;4<80#;4<80#5=#;4<80,20#$3<$34$3$4$5$6$7$3=$3>#1$;$<$=$>$?$10$11$3?$40$41$42$43$44$45$46$47$48$1<$1=$1>$1?,,25!$33#,1#!&6$32#3#7???8003,1^#?#??????????????5!&6$32#3#7???8002,1^#?#??????????????5!&6$32#3#7???8001,1^#?#??????????????5!&6$32#3#7???8000,1^#?#??????????????5!&6$32#3#7???8007,1^#?#??????????????5!&6$32#3#7???8006,1^#?#??????????????5!&6$32#3#7???8005,1^#?#??????????????5!&6$32#3#7???8004,1^#?#??????????????5!$32#,8#45>0360>'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32##8(&6$32#3#7???8000#8!$32#38,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##40$33##1'$34#7???7?8010:0#800000000000&$34#10!$34-8,8$3<!$34-10,8$3=!$34-18,8$3>!$34-20,8$3?!$34-28,8$40!$34-30,8$41!$34-38,8$42!$34-40,8$43!$34-48,8$44!$34-50,8$45!$34-58,8$46!$34-60,8$47!$34-68,8$48)+$34-:0##:0$32##40)+$34-:0##:0$33##1,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 740480 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_9d8eff.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 740320 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_9d8eff.IT BndT_Na_002.SegItab_Na_9d8eff.IT_sound BF NX0 BR XSTEP F0 PSS plan 740320 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvbQ.

Module LibSegNa_qvdA.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_20a2f0.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_20a2f0.IT.
Definition ENDS : list Z := [789996].
Definition STOPS1 : list Z := [789996] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",18%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801020#800000000000&$2#10($2-20#20'$:#6;6000#7??????????8&$:#8)##7???7000#100000001000$:##8#&6$:#3#7???8000#1)$2-20#20$:##8!$:#,8$21'$21#6;6000#7?????????>8&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-20#20$21##18)$:##8$21##18!$21#,8$22'$22#1000#7?????????>8&$22#10!$21#8,8$24'&1$24$22##<000&&1$24$22#8"%pstring).
Definition ss0 : sym_state := SS 789880 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-32), ELit 32)].
Definition F0L : list SR.region := [((EVar 2), (-32), 32)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<0=><#<0=><#5=#<0=><,20#$1+$2-20$3$4$5$6$7$:#7???8000$21+@-1$22$24$22^#:#::::::::::::::;$>$?$10$11+&6$:#3#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1<!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801020#800000000000&$2#10($2-20#20'$:#6;6000#7??????????8&$:#8)##7???7000#100000001000$:##8#&6$:#3#7???8000#1)$2-20#20$:##8!$:#,8$21'$21#6;6000#7?????????>8&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-20#20$21##18)$:##8$21##18!$21#,8$22'$22#1000#7?????????>8&$22#10!$21#8,8$24'&1$24$22##<000&&1$24$22#8,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 789996 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_20a2f0.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 789880 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_20a2f0.IT BndT_Na_000.SegItab_Na_20a2f0.IT_sound BF NX0 BR XSTEP F0 PSS plan 789880 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvdA.

Module LibSegNa_qvdB.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_20a2f0.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_20a2f0.IT.
Definition ENDS : list Z := [790344].
Definition STOPS1 : list Z := [790344] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-20$3$4$5$6$7$8$9$21$;$22$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332487200 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-32)) (ELit 32);
   KRange (EVar 33) 7036928 140737488355304;
   KAlign (EVar 33) 8;
   KWr (SA (EVar 33) 8) (ELit 8);
   KDisj (SA (EVar 2) (-32)) (ELit 32) (SA (EVar 33) 0) (ELit 24)].
Definition ss0 : sym_state := SS 790004 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 33), (8), ELit 8)].
Definition F0L : list SR.region := [((EVar 33), (8), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<0?48#<0?48#5=#<0?48,20##<0=?<+$2-20$3$4$5$6$7$8$9$21$;$22$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,8!$21#8,8$22'$2#7???7?801020#800000000000&$2#10($2-20#20'$21#6;6000#7?????????>8&$21#8($21#8#8)$2-20#20$21##18,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 790344 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_20a2f0.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 790004 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_20a2f0.IT BndT_Na_000.SegItab_Na_20a2f0.IT_sound BF NX0 BR XSTEP F0 PSS plan 790004 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvdB.

Module LibSegNa_qvdC.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_20a2f0.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_20a2f0.IT.
Definition ENDS : list Z := [790184].
Definition STOPS1 : list Z := [790184] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-20$3$4$5$6$7$28#7???8000$:$;$<$=$>$?$10$11+&6$28#3#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$2#7???7?801020#800000000000&$2#10($2-20#20'$28#6;6000#7??????????8&$28#8)##7???7000#100000001000$28##8#&6$28#3#7???8000#1)$2-20#20$28##8!$28#,8$21"%pstring).
Definition ss0 : sym_state := SS 790012 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<0>:8#<0>:8#5=#<0>:8,20##<0>0<+$2-20$3$4$5$6$7$28#7???8000$21$;$<$=$>$?$10$11+&6$28#3#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,9'$2#7???7?801020#800000000000&$2#10($2-20#20'$28#6;6000#7??????????8&$28#8)##7???7000#100000001000$28##8#&6$28#3#7???8000#1)$2-20#20$28##8!$28#,8$21,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 790184 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_20a2f0.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 790012 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_20a2f0.IT BndT_Na_000.SegItab_Na_20a2f0.IT_sound BF NX0 BR XSTEP F0 PSS plan 790012 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvdC.

Module LibSegNa_qvdD.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_20a2f0.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_20a2f0.IT.
Definition ENDS : list Z := [991168].
Definition STOPS1 : list Z := [991168] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-20$3$4$5$6$7$28#7???8000$:$;$<$=$>$?$10$11+&6$28#3#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",15'$2#7???7?801020#800000000000&$2#10($2-20#20'$28#6;6000#7??????????8&$28#8)##7???7000#100000001000$28##8#&6$28#3#7???8000#1)$2-20#20$28##8!$28#,8$21'$21#6;6000#7?????????>8&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-20#20$21##18)$28##8$21##18!$21#,8$22!$21#10,8$23!$2-8,8$26!$2-10,8$27!$2-18,8$29!$2-20,8$2:"%pstring).
Definition ss0 : sym_state := SS 790028 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#?1?<0#?1?<0#5=#?1?<0,20#$26$2$3$4$5$6$7$27$29$22+@-1$22$23#$=$>$?$10$11$2:$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,15'$2#7???7?801020#800000000000&$2#10($2-20#20'$28#6;6000#7??????????8&$28#8)##7???7000#100000001000$28##8#&6$28#3#7???8000#1)$2-20#20$28##8!$28#,8$21'$21#6;6000#7?????????>8&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-20#20$21##18)$28##8$21##18!$21#,8$22!$21#10,8$23!$2-8,8$26!$2-10,8$27!$2-18,8$29!$2-20,8$2:,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 991168 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_20a2f0.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 790028 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_20a2f0.IT BndT_Na_000.SegItab_Na_20a2f0.IT_sound BF NX0 BR XSTEP F0 PSS plan 790028 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvdD.

Module LibSegNa_qviA0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [411628].
Definition STOPS1 : list Z := [411628; 728004] ++ ENDS.
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
Definition ss0 : sym_state := SS 727876 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#647><#;1;<4#647><#5=#647><,20##;1;<4+$2-:0$3$4$5$6$7$2+$2-:0#40#15?:78#1$=$>$?$10$11$12$13$:$=$16$<$;$19#7???8000$1;$1<$1=$1>$1?,,15!$2-88,8$>!$2-68,8$1;!$2-60,8$1:!$2-58,8$19!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1!$2-:0,8#%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010:0#800000000000&$2#20($2-:0#:0,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 727876 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 727876 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviA0.

Module LibSegNa_qviA16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [411628].
Definition STOPS1 : list Z := [411628; 728004] ++ ENDS.
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
Definition ss0 : sym_state := SS 727876 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#647><#;1;<4#647><#5=#647><,20##;1;<4+$2-:0$3$4$5$6$7+$2#10+$2-:0#40#15?:78#1$=$>$?$10$11$12$13$:$=$16$<$;$19#7???8000$1;$1<$1=$1>$1?,,15!$2-88,8$>!$2-58,8$1;!$2-50,8$1:!$2-48,8$19!$2-40,8$18!$2-38,8$17!$2-30,8$16!$2-28,8$15!$2-20,8$14!$2-18,8$13!$2-10,8$12!$2-8,8$9!$2#,8$8!$2#8,8$1!$2-90,8#%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010:0#7??????????0&$2#20($2-:0#;0,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 727876 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 727876 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviA16.

Module LibSegNa_qviAk1e1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [729404].
Definition STOPS1 : list Z := [729404] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$14$15+&6+$24#50#3#7???8000$17$18$19#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4$2=!$25-10,4#1,$25-8#8'$2=##1($25-8#8)+$25-18##18$24##60"%pstring).
Definition ss0 : sym_state := SS 729284 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;213<#;213<#5=#;213<,20#$1$2$3$4$5$6$7$8$9+$25-10$2=+&6+$25-10#3#7???8000#1#2+$50#1$10$11$12+$24#50$14$15+&6+$24#50#3#7???8000$17$18$19#7???8000$1;$1<$1=$1>$1?,,11!$25-8,8+$50#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4$2=!$25-10,4#1'$2=##1($25-8#8)+$25-18##18$24##60,51!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 729404 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 729284 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 729284 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviAk1e1.

Module LibSegNa_qviAk2e0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [729404].
Definition STOPS1 : list Z := [729404] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$14$15+&6+$24#50#3#7???8000$17$18$19#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1!$25-14,4#2!$25-10,4#($25-10#4)+$25-18##18$24##60"%pstring).
Definition ss0 : sym_state := SS 729284 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;213<#;213<#5=#;213<,20#$1$2$3$4$5$6$7$8$9+$25-10#1+&6+$25-10#3#7???8000##2$?$10$11$12+$24#50$14$15+&6+$24#50#3#7???8000$17$18$19#7???8000$1;$1<$1=$1>$1?,,>!$25-10,4#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1!$25-14,4#2($25-10#4)+$25-18##18$24##60,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 729404 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 729284 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 729284 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviAk2e0.

Module LibSegNa_qviAk2e1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [729404].
Definition STOPS1 : list Z := [729404] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$14$15+&6+$24#50#3#7???8000$17$18$19#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4#2!$25-10,4#1,$25-8#8($25-10#4($25-8#8)+$25-18##18$24##60"%pstring).
Definition ss0 : sym_state := SS 729284 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;213<#;213<#5=#;213<,20#$1$2$3$4$5$6$7$8$9+$25-10#+&6+$25-10#3#7???8000#1#2+$50#1$10$11$12+$24#50$14$15+&6+$24#50#3#7???8000$17$18$19#7???8000$1;$1<$1=$1>$1?,,11!$25-10,4#!$25-8,8+$50#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4#2($25-10#4($25-8#8)+$25-18##18$24##60,51!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 729404 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 729284 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 729284 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviAk2e1.

Module LibSegNa_qviB.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [728164].
Definition STOPS1 : list Z := [728164] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8+$2-:0$32$;$<$=$>$?$10$11$12$13$24$15$16$17$18$19#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$2#7???7?8010:0#800000000000&$2#20($2-70#8)+$2-:0##:0$32##40'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32##18(&6$32#3#7???8000#8'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1)&6+$24#50#3#7???8000#1&6$32#3#7???8000#8)+$2-:0##:0$24##60"%pstring).
Definition ss0 : sym_state := SS 728004 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-112), ELit 8); ((EVar 50), (0), ELit 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-112), 8); ((EVar 50), (0), 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;1<64#;1<64#5=#;1<64,20#$1+$2-:0$3$4$5$6$7$8+$2-:0##1:>0<#;1;44^#?#??????????????3^#?#??????????????8^#?#??????????????1$10$11$32+$24#50$24$15+&6+$24#50#3#7???8000$17$18$32#7???8000+&6$32#3#7???8000$1<$1=$1>$1?,,1;!$2-70,8$32!&6$32#3#7???8003,1^#?#??????????????1!&6$32#3#7???8002,1^#?#??????????????1!&6$32#3#7???8001,1^#?#??????????????1!&6$32#3#7???8000,1^#?#??????????????1!&6$32#3#7???8007,1^#?#??????????????3!&6$32#3#7???8006,1^#?#??????????????3!&6$32#3#7???8005,1^#?#??????????????8!&6$32#3#7???8004,1^#?#??????????????8!$32#10,8#;1;44!$32#8,8#1:>0<!$32#,8#41;58:;3'$2#7???7?8010:0#800000000000&$2#20($2-70#8)+$2-:0##:0$32##40'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32##18(&6$32#3#7???8000#8'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1)&6+$24#50#3#7???8000#1&6$32#3#7???8000#8)+$2-:0##:0$24##60,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 728164 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 728004 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 728004 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviB.

Module LibSegNa_qviC.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 729284] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14+$24#30$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 729272 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#?4640#;20<4#?4640#5=#?4640,20##;20<4$2$3$4$5$6$7$8$9+$24#30#3:$<$=$>$?$10$11$12$13$14+$24#30$16$17$18$19$1:$1;$1<$1=$1>$1?,,,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 729272 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 729272 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviC.

Module LibSegNa_qviD2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d9c188.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d9c188.IT.
Definition ENDS : list Z := [795620].
Definition STOPS1 : list Z := [795620; 728744] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8+$2-:0$:$;$<$=$>$?$10$11$12+$24#50$24$15+&6+$24#50#3#7???8000$17$18$19#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",16%#10000#158000'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1#&6+$24#10#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$25-18,4#!$25-10,4#1!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##38#&6$26#3#7???8000#1!$26#,8#151130###8002222;#1'$2#7???7?8010:0#800000000000!$2-88,8$3<"%pstring).
Definition ss0 : sym_state := SS 728164 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#<23>4#;1>:8#<23>4#5=#<23>4,20##;1>:8+$2-:0$3$4$5$6$7$8+$2-:0$26$18$17$15$3<#<23>4$10$11$12+$24#50$24$15+&6+$24#50#3#7???8000$17$18$19#7???8000$1;$1<$1=$1>$1?,,16%#10000#158000'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1#&6+$24#10#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$25-18,4#!$25-10,4#1!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##38#&6$26#3#7???8000#1!$26#,8#151130###8002222;#1'$2#7???7?8010:0#800000000000!$2-88,8$3<,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 795620 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d9c188.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 728164 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d9c188.IT BndT_Na_003.SegItab_Na_d9c188.IT_sound BF NX0 BR XSTEP F0 PSS plan 728164 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviD2.

Module LibSegNa_qviDKn.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 728524; 728612] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15+&6+$24#50#3#7???8000$17$18$19#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-10,4#!$25-8,8$2;'$2;#1^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 728376 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#;1=<<#;1>24#?4640#5=#?4640,20##;1>24$2$3$4$5$6$7$8$9+$24#30#2<$25#$>$?$10$11$12+$24#50$24$15+&6+$24#50#3#7???8000$17$18$19#7???8000$1;$1<$1=$1>$1?,,?'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-10,4#!$25-8,8$2;'$2;#1^#?#???????????????,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 728376 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 728376 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviDKn.

End BndP_Na_108.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_000 BndT_Na_003 BndT_Na_002.
Module BndP_Na_112.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_000 BndT_Na_003 BndT_Na_002.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Na_112 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_000ASegItab_Na_0c591d2ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnIVSS2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnIVSS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnIVSS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnIVSS5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnIVSS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnIVSS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnIVSS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnIVSS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnIVSS3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvnJ12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvnJ13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvnJ12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvnJ15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvnJ12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvnJ13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvnJ14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvnJ15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvnJ13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvnJ22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvnJ23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvnJ22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvnJ25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvnJ22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvnJ23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvnJ24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvnJ25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvnJ23kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f6ca4a2ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKdL22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKdL23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKdL22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKdL25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKdL22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKdL23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKdL24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKdL25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKdL23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKdS22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKdS23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKdS22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKdS25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKdS22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKdS23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKdS24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKdS25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKdS23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe0L2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe0L3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe0L2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe0L5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe0L2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe0L3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe0L4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe0L5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe0L3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe0S2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe0S3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe0S2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe0S5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe0S2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe0S3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe0S4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe0S5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe0S3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe1L2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe1L3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe1L2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe1L5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe1L2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe1L3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe1L4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe1L5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe1L3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe1S2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe1S3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe1S2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe1S5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe1S2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe1S3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe1S4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe1S5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112@LibSegNa_qvnKe1S3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvnKr2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvnKr3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvnKr2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvnKr5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvnKr2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvnKr3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvnKr4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvnKr5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvnKr3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112=LibSegNa_qvnQ2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112=LibSegNa_qvnQ3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112=LibSegNa_qvnQ2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112=LibSegNa_qvnQ5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112=LibSegNa_qvnQ2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112=LibSegNa_qvnQ3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112=LibSegNa_qvnQ4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112=LibSegNa_qvnQ5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112=LibSegNa_qvnQ3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_002ASegItab_Na_9f82472ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112=LibSegNa_qvoA2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112=LibSegNa_qvoA3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112=LibSegNa_qvoA2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112=LibSegNa_qvoA5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112=LibSegNa_qvoA2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112=LibSegNa_qvoA3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112=LibSegNa_qvoA4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112=LibSegNa_qvoA5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112=LibSegNa_qvoA3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_000ASegItab_Na_3582972ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112?LibSegNa_qvoDs22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112?LibSegNa_qvoDs23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112?LibSegNa_qvoDs22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112?LibSegNa_qvoDs25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112?LibSegNa_qvoDs22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112?LibSegNa_qvoDs23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112?LibSegNa_qvoDs24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112?LibSegNa_qvoDs25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112?LibSegNa_qvoDs23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvoDt2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvoDt3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvoDt2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvoDt5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvoDt2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvoDt3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvoDt4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvoDt5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_112>LibSegNa_qvoDt3kn0".

Module LibSegNa_qvnIVSS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [759280].
Definition STOPS1 : list Z := [759280; 737660] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$24+$24#30$16$17$18#7???8000$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##!$24#18,1$28'$28##2<'&9$28#1##"%pstring).
Definition ss0 : sym_state := SS 737208 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;95?0#;417<#;95?0#5=#;95?0,20##;417<$2$3$4$5$6$7$8$9+$24#30++$24&6$2<#1#31+$24#19++$24&6$28#1#19&6$28#1$?$10$11$12$13$24+$24#30$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,;'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##!$24#18,1$28'$28##2<'&9$28#1##,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 737208 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 737208 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnIVSS.

Module LibSegNa_qvnJ1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [737964].
Definition STOPS1 : list Z := [737964] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 737424 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;42:<#;42:<#5=#;42:<,20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 737964 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 737424 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 737424 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnJ1.

Module LibSegNa_qvnJ2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [737964].
Definition STOPS1 : list Z := [737964] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 737660 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;42:<#;42:<#5=#;42:<,20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 737964 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 737660 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 737660 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnJ2.

Module LibSegNa_qvnKdL2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f6ca4a.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f6ca4a.IT.
Definition ENDS : list Z := [798520].
Definition STOPS1 : list Z := [798520; 737872] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$32#7???8000+&6$32#3#7???8000+&6+$24#50#3#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",28%#10000#158000'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1#&6+$24#10#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$25-18,4#!$25-10,4#!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##38#&6$26#3#7???8000#1!$26#,8#151130###80022232#1!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32#20#10(&6$32#3#7???8004#2)$32##40$24##60)$32##40$26##38)&6$24#3#7???8000#<&6$32#3#7???8000#8)&6$26#3#7???8000#1&6$32#3#7???8000#8)##80021070#1&6$32#3#7???8000#8"%pstring).
Definition ss0 : sym_state := SS 737060 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#<2?38#;4250#<2?38#5=#<2?38,20##;4250$2$3$4$5$6$7$8$9$26+$32#20$16$15#<2?38$?$10$11$12+$24#50$2:$15$16$17$32#7???8000+&6$32#3#7???8000+&6+$24#50#3#7???8000$1<$1=$1>$1?,,28!$32#28,8$29!$32#20,8$2:!&6$32#3#7???8005,1#!&6$32#3#7???8004,1#%#10000#158000'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1#&6+$24#10#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##38#&6$26#3#7???8000#1!$26#,8#151130###80022232#1!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32#20#10(&6$32#3#7???8004#2)$32##40$24##60)$32##40$26##38)&6$24#3#7???8000#<&6$32#3#7???8000#8)&6$26#3#7???8000#1&6$32#3#7???8000#8)##80021070#1&6$32#3#7???8000#8,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f6ca4a.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 737060 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f6ca4a.IT BndT_Na_003.SegItab_Na_f6ca4a.IT_sound BF NX0 BR XSTEP F0 PSS plan 737060 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnKdL2.

Module LibSegNa_qvnKdS2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f6ca4a.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f6ca4a.IT.
Definition ENDS : list Z := [798520].
Definition STOPS1 : list Z := [798520; 737872] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$32#7???8000+&6$32#3#7???8000+&6+$24#50#3#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",22%#10000#158000'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1#&6+$24#10#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$25-18,4#!$25-10,4#!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##38#&6$26#3#7???8000#1!$26#,8#151130###80022232#1!$24#18,1$28'$28##2<'&9$28#1##'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32#20#10(&6$32#3#7???8004#2)$32##40$24##60)$32##40$26##38)&6$24#3#7???8000#<&6$32#3#7???8000#8)&6$26#3#7???8000#1&6$32#3#7???8000#8)##80021070#1&6$32#3#7???8000#8"%pstring).
Definition ss0 : sym_state := SS 737060 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#<2?38#;4250#<2?38#5=#<2?38,20##;4250$2$3$4$5$6$7$8$9$26+$32#20$16$15#<2?38$?$10$11$12+$24#50+$24#19$15$16$17$32#7???8000+&6$32#3#7???8000+&6+$24#50#3#7???8000$1<$1=$1>$1?,,22!$32#28,8&6$28#1!$32#20,8+$24#19!&6$32#3#7???8005,1#!&6$32#3#7???8004,1#%#10000#158000'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1#&6+$24#10#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##38#&6$26#3#7???8000#1!$26#,8#151130###80022232#1!$24#18,1$28'$28##2<'&9$28#1##'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32#20#10(&6$32#3#7???8004#2)$32##40$24##60)$32##40$26##38)&6$24#3#7???8000#<&6$32#3#7???8000#8)&6$26#3#7???8000#1&6$32#3#7???8000#8)##80021070#1&6$32#3#7???8000#8,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f6ca4a.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 737060 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f6ca4a.IT BndT_Na_003.SegItab_Na_f6ca4a.IT_sound BF NX0 BR XSTEP F0 PSS plan 737060 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnKdS2.

Module LibSegNa_qvnKe0L.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [779056].
Definition STOPS1 : list Z := [779056; 737060] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",19'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#18#3#7???8000#1#&6+$24#20#3#7???8000#1#&6+$24#28#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1!$25-10,4#!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000($24#20#8($2:##1)##7???7000#100000001000$2:##1#&6$2:#3#7???8000#1)$2:##1$24##60)$2:##1+$25-18##18"%pstring).
Definition ss0 : sym_state := SS 736784 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;>330#;3?24#;>330#5=#;>330,20##;3?24$2$3$4$5$6$7$8$9+$24#18$2:#26560#26564#4$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,18!$24#20,8#!$2:#,1#'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#18#3#7???8000#1#&6+$24#20#3#7???8000#1#&6+$24#28#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1!$24#18,1$28'$28##??'&9$28#1#1#1'$29##80000000!$24#28,8$2:'$2:#1000#800000000000($24#20#8($2:##1)##7???7000#100000001000$2:##1)$2:##1$24##60)$2:##1+$25-18##18,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 779056 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 736784 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 736784 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnKe0L.

Module LibSegNa_qvnKe0S.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [779056].
Definition STOPS1 : list Z := [779056; 737060] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#18#3#7???8000#1#&6+$24#19#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1!$25-10,4#!$24#18,1$28'$28##2<'&9$28#1##($24#18#2"%pstring).
Definition ss0 : sym_state := SS 736784 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;>330#;3?24#;>330#5=#;>330,20##;3?24$2$3$4$5$6$7$8$9+$24#18+$24#19#26560#26564#4$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,?!$24#18,1#!$24#19,1#'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#18#3#7???8000#1#&6+$24#19#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1'$28##2<'&9$28#1##($24#18#2,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 779056 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 736784 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 736784 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnKe0S.

Module LibSegNa_qvnKe1L.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [779056].
Definition STOPS1 : list Z := [779056; 737060] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1;'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#18#3#7???8000#1#&6+$24#20#3#7???8000#1#&6+$24#28#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$25-18,4#1!$25-10,4#1!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000($24#20#8($2:##1)##7???7000#100000001000$2:##1#&6$2:#3#7???8000#1)$2:##1$24##60)$2:##1+$25-18##18"%pstring).
Definition ss0 : sym_state := SS 736784 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;>330#;3?24#;>330#5=#;>330,20##;3?24$2$3$4$5$6$7$8$9+$24#18$2:#26560#26564#4$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,19!$24#20,8#!$2:#,1#'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#18#3#7???8000#1#&6+$24#20#3#7???8000#1#&6+$24#28#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$24#18,1$28'$28##??'&9$28#1#1#1'$29##80000000!$24#28,8$2:'$2:#1000#800000000000($24#20#8($2:##1)##7???7000#100000001000$2:##1)$2:##1$24##60)$2:##1+$25-18##18,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 779056 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 736784 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 736784 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnKe1L.

Module LibSegNa_qvnKe1S.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [779056].
Definition STOPS1 : list Z := [779056; 737060] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#18#3#7???8000#1#&6+$24#19#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$25-18,4#1!$25-10,4#1!$24#18,1$28'$28##2<'&9$28#1##($24#18#2"%pstring).
Definition ss0 : sym_state := SS 736784 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;>330#;3?24#;>330#5=#;>330,20##;3?24$2$3$4$5$6$7$8$9+$24#18+$24#19#26560#26564#4$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,10!$24#18,1#!$24#19,1#'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#18#3#7???8000#1#&6+$24#19#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1'$28##2<'&9$28#1##($24#18#2,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 779056 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 736784 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 736784 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnKe1S.

Module LibSegNa_qvnKr.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [737964].
Definition STOPS1 : list Z := [737964] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19+&6$32#3#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 50) 7036928 140737488355264;
   KAlign (EVar 50) 32;
   KDisj (SA (ELit 0) 2147446784) (ELit 17592186048512) (SA (EVar 50) 0) (ELit 64);
   KWr (SA (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) 2147450884) (ELit 2)].
Definition ss0 : sym_state := SS 737872 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;42:<#;42:<#5=#;42:<,20#$1$2$3$4$5$6$7$8$9^#?#??????????????8$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19+&6$32#3#7???8000$1;$1<$1=$1>$1?,,6!&6$32#3#7???8005,1^#?#??????????????8!&6$32#3#7???8004,1^#?#??????????????8'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40(&6$32#3#7???8004#2,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 737964 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 737872 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 737872 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnKr.

Module LibSegNa_qvnQ.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [738244].
Definition STOPS1 : list Z := [738244] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$34$9$:$;$<$=$>$?$10$11$32$13$14$15$16$17$32$19+&6$32#3#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1;'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32##8(&6$32#3#7???8000#8!$32#38,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##40$33##1'$34#7???7?801080#800000000000&$34#10!$34-8,8$3<!$34-10,8$3=!$34-18,8$3>!$34-20,8$3?!$34-28,8$40!$34-30,8$41!$34-38,8$42!$34-40,8$43!$34-48,8$44!$34-50,8$45!$34-58,8$46!$34-60,8$47!$34-68,8$48)+$34-80##80$32##40)+$34-80##80$33##1"%pstring).
Definition ss0 : sym_state := SS 738084 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;43<4#;43<4#5=#;43<4,20#$3<$34$3$4$5$6$7$3=$3>#1$;$<$=$>$?$10$11$3?$40$41$42$43$44$45$46$47$48$1<$1=$1>$1?,,25!$33#,1#!&6$32#3#7???8003,1^#?#??????????????5!&6$32#3#7???8002,1^#?#??????????????5!&6$32#3#7???8001,1^#?#??????????????5!&6$32#3#7???8000,1^#?#??????????????5!&6$32#3#7???8007,1^#?#??????????????5!&6$32#3#7???8006,1^#?#??????????????5!&6$32#3#7???8005,1^#?#??????????????5!&6$32#3#7???8004,1^#?#??????????????5!$32#,8#45>0360>'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32##8(&6$32#3#7???8000#8!$32#38,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##40$33##1'$34#7???7?801080#800000000000&$34#10!$34-8,8$3<!$34-10,8$3=!$34-18,8$3>!$34-20,8$3?!$34-28,8$40!$34-30,8$41!$34-38,8$42!$34-40,8$43!$34-48,8$44!$34-50,8$45!$34-58,8$46!$34-60,8$47!$34-68,8$48)+$34-80##80$32##40)+$34-80##80$33##1,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 738244 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 738084 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 738084 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnQ.

Module LibSegNa_qvoA.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_9f8247.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_9f8247.IT.
Definition ENDS : list Z := [732824].
Definition STOPS1 : list Z := [732824] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 36); EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801050#800000000000&$2#10($2-50#50'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 732736 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-64), ELit 64)].
Definition F0L : list SR.region := [((EVar 2), (-64), 64)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;2>98#;2>98#5=#;2>98,20#$1+$2-50$3$4$5$6$7$24$9+$24#50$;#$=$>$?$10$11$>$=$<$;#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,12!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801050#800000000000&$2#10($2-50#50'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 732824 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_9f8247.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 732736 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_9f8247.IT BndT_Na_002.SegItab_Na_9f8247.IT_sound BF NX0 BR XSTEP F0 PSS plan 732736 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvoA.

Module LibSegNa_qvoDs2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_358297.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_358297.IT.
Definition ENDS : list Z := [796908].
Definition STOPS1 : list Z := [796908] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$27$23$22$21#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#10#3#7???8000#1!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##8#&6$26#3#7???8000#1!$26#,8#151130###8002222?#1'$2#7???7?801060#800000000000&$2#10"%pstring).
Definition ss0 : sym_state := SS 733128 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<28><#<28><#5=#<28><,20##;3020+$2-50$3$4$5$6$7$24$9$26$21$22$23$27#<28><$10$11$27$23$22$21#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,?%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#10#3#7???8000#1!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##8#&6$26#3#7???8000#1!$26#,8#151130###8002222?#1'$2#7???7?801060#800000000000&$2#10,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 796908 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_358297.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 733128 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_358297.IT BndT_Na_000.SegItab_Na_358297.IT_sound BF NX0 BR XSTEP F0 PSS plan 733128 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvoDs2.

Module LibSegNa_qvoDt.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_9f8247.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_9f8247.IT.
Definition ENDS : list Z := [754920].
Definition STOPS1 : list Z := [754920; 733128] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$24$9+$24#50$;$<$=$>$?$10$11$12$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$25-18,4#!$25-10,4#1'$2#7???7?801060#800000000000&$2#10($2-48#8"%pstring).
Definition ss0 : sym_state := SS 732824 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-72), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-72), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;84>8#;2?<8#;84>8#5=#;84>8,20##;2?<8+$2-50$3$4$5$6$7$24+$24#48+$24#48+$2-44+$2-48#$>$?$10$11$12$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,>!$2-48,4#2!$2-44,4#'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1'$2#7???7?801060#800000000000&$2#10($2-48#8,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 754920 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_9f8247.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 732824 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_9f8247.IT BndT_Na_002.SegItab_Na_9f8247.IT_sound BF NX0 BR XSTEP F0 PSS plan 732824 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvoDt.

End BndP_Na_112.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_002.
Module BndP_Na_113.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_002.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Na_113 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_002ASegItab_Na_9f82472ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoKT02BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoKT03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoKT02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoKT05XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoKT02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoKT03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoKT04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoKT05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoKT03kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113@LibSegNa_qvoKT1n2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113@LibSegNa_qvoKT1n3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113@LibSegNa_qvoKT1n2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113@LibSegNa_qvoKT1n5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113@LibSegNa_qvoKT1n2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113@LibSegNa_qvoKT1n3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113@LibSegNa_qvoKT1n4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113@LibSegNa_qvoKT1n5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113@LibSegNa_qvoKT1n3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113@LibSegNa_qvoKT1z2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113@LibSegNa_qvoKT1z3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113@LibSegNa_qvoKT1z2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113@LibSegNa_qvoKT1z5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113@LibSegNa_qvoKT1z2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113@LibSegNa_qvoKT1z3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113@LibSegNa_qvoKT1z4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113@LibSegNa_qvoKT1z5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113@LibSegNa_qvoKT1z3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoKp2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoKp3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoKp2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoKp5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoKp2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoKp3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoKp4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoKp5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoKp3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoKq2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoKq3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoKq2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoKq5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoKq2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoKq3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoKq4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoKq5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoKq3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoV1n2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoV1n3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoV1n2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoV1n5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoV1n2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoV1n3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoV1n4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoV1n5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoV1n3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoV1z2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoV1z3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoV1z2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoV1z5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoV1z2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoV1z3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoV1z4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoV1z5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoV1z3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoVK22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoVK23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoVK22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoVK25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoVK22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoVK23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoVK24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoVK25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvoVK23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoVp2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoVp3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoVp2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoVp5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoVp2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoVp3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoVp4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoVp5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoVp3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoVq2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoVq3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoVq2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoVq5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoVq2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoVq3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoVq4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoVq5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoVq3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoX02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoX03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoX02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoX05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoX02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoX03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoX04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoX05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoX03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoX12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoX13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoX12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoX15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoX12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoX13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoX14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoX15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvoX13kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_002ASegItab_Na_8fec3c2ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvrA02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvrA03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvrA02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvrA05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvrA02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvrA03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvrA04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvrA05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113>LibSegNa_qvrA03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvrA162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvrA163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvrA162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvrA165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvrA162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvrA163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvrA164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvrA165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_113?LibSegNa_qvrA163kn0".

Module LibSegNa_qvoKT0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_9f8247.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_9f8247.IT.
Definition ENDS : list Z := [754920].
Definition STOPS1 : list Z := [754920; 733084] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$24$9+$24#50$;$<$=$>$?$10$11$12$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$25-18,4#!$25-10,4#'$2#7???7?801060#800000000000&$2#10($2-48#8"%pstring).
Definition ss0 : sym_state := SS 732824 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-72), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-72), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;84>8#;2?9<#;84>8#5=#;84>8,20##;2?9<+$2-50$3$4$5$6$7$24+$24#48+$24#48+$2-44+$2-48#$>$?$10$11#1$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,>!$2-48,4#2!$2-44,4#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1'$2#7???7?801060#800000000000&$2#10($2-48#8,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 754920 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_9f8247.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 732824 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_9f8247.IT BndT_Na_002.SegItab_Na_9f8247.IT_sound BF NX0 BR XSTEP F0 PSS plan 732824 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvoKT0.

Module LibSegNa_qvoKT1n.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_9f8247.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_9f8247.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 733056] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$24$9+$24#50$;$<$=$>$?$10$11$12$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-10,4#!$25-8,8$2;'$2;#1^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 732824 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#?4640#;2?80#?4640#5=#?4640,20##;2?80+$2-50$3$4$5$6$7$24+$24#48+$24#30#2<$25#$>$?$10$11#1$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,?'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-10,4#!$25-8,8$2;'$2;#1^#?#???????????????,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_9f8247.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 732824 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_9f8247.IT BndT_Na_002.SegItab_Na_9f8247.IT_sound BF NX0 BR XSTEP F0 PSS plan 732824 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvoKT1n.

Module LibSegNa_qvoKT1z.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_9f8247.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_9f8247.IT.
Definition ENDS : list Z := [754920].
Definition STOPS1 : list Z := [754920; 733084] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$24$9+$24#50$;$<$=$>$?$10$11$12$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-10,4#!$25-8,8#'$2#7???7?801060#800000000000&$2#10($2-48#8"%pstring).
Definition ss0 : sym_state := SS 732824 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-72), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-72), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;84>8#;2?9<#;84>8#5=#;84>8,20##;2?9<+$2-50$3$4$5$6$7$24+$24#48+$24#48+$2-44+$2-48#$>$?$10$11#1$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,?!$2-48,4#2!$2-44,4#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-8#3#7???8000#1'$2#7???7?801060#800000000000&$2#10($2-48#8,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 754920 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_9f8247.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 732824 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_9f8247.IT BndT_Na_002.SegItab_Na_9f8247.IT_sound BF NX0 BR XSTEP F0 PSS plan 732824 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvoKT1z.

Module LibSegNa_qvoKp.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_9f8247.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_9f8247.IT.
Definition ENDS : list Z := [754920].
Definition STOPS1 : list Z := [754920; 733084] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$8+$24#48$:$;$<$=$>$?$10$11#1$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332487264 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-72)) (ELit 8)].
Definition ss0 : sym_state := SS 733056 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-72), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-72), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;84>8#;2?9<#;84>8#5=#;84>8,20##;2?9<+$2-50$3$4$5$6$7$8+$24#48+$24#48+$2-44+$2-48$=$>$?$10$11#1$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-48,4#2!$2-44,4#1'$2#7???7?801060#800000000000&$2#10($2-48#8,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 754920 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_9f8247.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 733056 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_9f8247.IT BndT_Na_002.SegItab_Na_9f8247.IT_sound BF NX0 BR XSTEP F0 PSS plan 733056 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvoKp.

Module LibSegNa_qvoKq.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_9f8247.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_9f8247.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 733096] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 36) 7036928 140737488355232].
Definition ss0 : sym_state := SS 733084 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#?4640#;2?:8#?4640#5=#?4640,20##;2?:8+$2-50$3$4$5$6$7$24$9+$24#30#7;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1'$24#6;6000#7?????????:0,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_9f8247.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 733084 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_9f8247.IT BndT_Na_002.SegItab_Na_9f8247.IT_sound BF NX0 BR XSTEP F0 PSS plan 733084 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvoKq.

Module LibSegNa_qvoV1n.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_9f8247.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_9f8247.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 732968] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$24$9+$24#50$;$<$=$>$?$10$11$12$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-14,4#1!$25-10,4#1!$25-8,8$2;'$2;#1^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 732824 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#?4640#;2?28#?4640#5=#?4640,20##;2?28+$2-50$3$4$5$6$7+$24#30+$24#48+$24#30#2<$25#$>$?$10$11#2$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-14,4#1!$25-10,4#1!$25-8,8$2;'$2;#1^#?#???????????????,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_9f8247.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 732824 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_9f8247.IT BndT_Na_002.SegItab_Na_9f8247.IT_sound BF NX0 BR XSTEP F0 PSS plan 732824 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvoV1n.

Module LibSegNa_qvoV1z.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_9f8247.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_9f8247.IT.
Definition ENDS : list Z := [754920].
Definition STOPS1 : list Z := [754920; 732996] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$24$9+$24#50$;$<$=$>$?$10$11$12$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",13'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-14,4#1!$25-10,4#1!$25-8,8#'$2#7???7?801060#800000000000&$2#10($2-48#8"%pstring).
Definition ss0 : sym_state := SS 732824 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-72), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-72), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;84>8#;2?44#;84>8#5=#;84>8,20##;2?44+$2-50$3$4$5$6$7+$24#30+$24#48+$24#48+$2-44+$2-48#$>$?$10$11#2$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,10!$2-48,4#2!$2-44,4#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1'$2#7???7?801060#800000000000&$2#10($2-48#8,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 754920 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_9f8247.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 732824 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_9f8247.IT BndT_Na_002.SegItab_Na_9f8247.IT_sound BF NX0 BR XSTEP F0 PSS plan 732824 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvoV1z.

Module LibSegNa_qvoVK2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_9f8247.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_9f8247.IT.
Definition ENDS : list Z := [754920].
Definition STOPS1 : list Z := [754920; 732996] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$24$9+$24#50$;$<$=$>$?$10$11$12$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1!$25-18,4#1!$25-14,4#2!$25-10,4#1'$2#7???7?801060#800000000000&$2#10($2-48#8"%pstring).
Definition ss0 : sym_state := SS 732824 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-72), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-72), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;84>8#;2?44#;84>8#5=#;84>8,20##;2?44+$2-50$3$4$5$6$7+$24#30+$24#48+$24#48+$2-44+$2-48#$>$?$10$11#2$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,?!$2-48,4#2!$2-44,4#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1'$2#7???7?801060#800000000000&$2#10($2-48#8,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 754920 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_9f8247.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 732824 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_9f8247.IT BndT_Na_002.SegItab_Na_9f8247.IT_sound BF NX0 BR XSTEP F0 PSS plan 732824 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvoVK2.

Module LibSegNa_qvoVp.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_9f8247.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_9f8247.IT.
Definition ENDS : list Z := [754920].
Definition STOPS1 : list Z := [754920; 732996] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$8+$24#48$:$;$<$=$>$?$10$11#2$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332487264 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-72)) (ELit 8)].
Definition ss0 : sym_state := SS 732968 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-72), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-72), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;84>8#;2?44#;84>8#5=#;84>8,20##;2?44+$2-50$3$4$5$6$7$8+$24#48+$24#48+$2-44+$2-48$=$>$?$10$11#2$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-48,4#2!$2-44,4#1'$2#7???7?801060#800000000000&$2#10($2-48#8,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 754920 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_9f8247.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 732968 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_9f8247.IT BndT_Na_002.SegItab_Na_9f8247.IT_sound BF NX0 BR XSTEP F0 PSS plan 732968 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvoVp.

Module LibSegNa_qvoVq.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_9f8247.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_9f8247.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 733096] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7+$24#30$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 732996 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#?4640#;2?:8#?4640#5=#?4640,20##;2?:8+$2-50$3$4$5$6$7+$24#30$9+$24#30#7;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_9f8247.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 732996 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_9f8247.IT BndT_Na_002.SegItab_Na_9f8247.IT_sound BF NX0 BR XSTEP F0 PSS plan 732996 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvoVq.

Module LibSegNa_qvoX0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_9f8247.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_9f8247.IT.
Definition ENDS : list Z := [733256].
Definition STOPS1 : list Z := [733256] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$2#7???7?801060#800000000000&$2#10!$2-8,8$3<!$2-10,8$3=!$2-18,8$3>!$2-20,8$3?!$2-28,8$40!$2-30,8$41!$2-38,8$42!$2-40,8$43"%pstring).
Definition ss0 : sym_state := SS 733096 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;3048#;3048#5=#;3048,20#$3<$2$3$4$5$6$7$3=$3>#1$;$<$=$>$?$10$11$3?$40$41$42$43$17$18$19$1:$1;$1<$1=$1>$1?,,:'$2#7???7?801060#800000000000&$2#10!$2-8,8$3<!$2-10,8$3=!$2-18,8$3>!$2-20,8$3?!$2-28,8$40!$2-30,8$41!$2-38,8$42!$2-40,8$43,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 733256 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_9f8247.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 733096 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_9f8247.IT BndT_Na_002.SegItab_Na_9f8247.IT_sound BF NX0 BR XSTEP F0 PSS plan 733096 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvoX0.

Module LibSegNa_qvoX1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_9f8247.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_9f8247.IT.
Definition ENDS : list Z := [733256].
Definition STOPS1 : list Z := [733256] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$2#7???7?801060#800000000000&$2#10!$2-8,8$3<!$2-10,8$3=!$2-18,8$3>!$2-20,8$3?!$2-28,8$40!$2-30,8$41!$2-38,8$42!$2-40,8$43"%pstring).
Definition ss0 : sym_state := SS 733216 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;3048#;3048#5=#;3048,20#$3<$2$3$4$5$6$7$3=$3>#1$;$<$=$>$?$10$11$3?$40$41$42$43$17$18$19$1:$1;$1<$1=$1>$1?,,:'$2#7???7?801060#800000000000&$2#10!$2-8,8$3<!$2-10,8$3=!$2-18,8$3>!$2-20,8$3?!$2-28,8$40!$2-30,8$41!$2-38,8$42!$2-40,8$43,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 733256 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_9f8247.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 733216 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_9f8247.IT BndT_Na_002.SegItab_Na_9f8247.IT_sound BF NX0 BR XSTEP F0 PSS plan 733216 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvoX1.

Module LibSegNa_qvrA0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_8fec3c.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_8fec3c.IT.
Definition ENDS : list Z := [412000].
Definition STOPS1 : list Z := [412000; 744608] ++ ENDS.
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
Definition ss0 : sym_state := SS 744480 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#64960#;5<:0#64960#5=#64960,20##;5<:0+$2-:0$3$4$5$6$7$2+$2-:0#60#15?:78#1$=$>$?$10$11$12$13$:$=$16$<$;$19$1:#7???8000$1<$1=$1>$1?,,15!$2-88,8$>!$2-68,8$1;!$2-60,8$1:!$2-58,8$19!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1!$2-:0,8#%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010:0#800000000000&$2#20($2-:0#:0,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 412000 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_8fec3c.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 744480 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_8fec3c.IT BndT_Na_002.SegItab_Na_8fec3c.IT_sound BF NX0 BR XSTEP F0 PSS plan 744480 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvrA0.

Module LibSegNa_qvrA16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_8fec3c.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_8fec3c.IT.
Definition ENDS : list Z := [412000].
Definition STOPS1 : list Z := [412000; 744608] ++ ENDS.
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
Definition ss0 : sym_state := SS 744480 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#64960#;5<:0#64960#5=#64960,20##;5<:0+$2-:0$3$4$5$6$7+$2#10+$2-:0#60#15?:78#1$=$>$?$10$11$12$13$:$=$16$<$;$19$1:#7???8000$1<$1=$1>$1?,,15!$2-88,8$>!$2-58,8$1;!$2-50,8$1:!$2-48,8$19!$2-40,8$18!$2-38,8$17!$2-30,8$16!$2-28,8$15!$2-20,8$14!$2-18,8$13!$2-10,8$12!$2-8,8$9!$2#,8$8!$2#8,8$1!$2-90,8#%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010:0#7??????????0&$2#20($2-:0#;0,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 412000 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_8fec3c.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 744480 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_8fec3c.IT BndT_Na_002.SegItab_Na_8fec3c.IT_sound BF NX0 BR XSTEP F0 PSS plan 744480 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvrA16.

End BndP_Na_113.
Module BndP_Na_116.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_002.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Na_116 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_002ASegItab_Na_8fec3c2ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116@LibSegNa_qvrKe1S2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116@LibSegNa_qvrKe1S3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116@LibSegNa_qvrKe1S2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116@LibSegNa_qvrKe1S5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116@LibSegNa_qvrKe1S2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116@LibSegNa_qvrKe1S3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116@LibSegNa_qvrKe1S4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116@LibSegNa_qvrKe1S5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116@LibSegNa_qvrKe1S3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvrKr2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvrKr3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvrKr2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvrKr5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvrKr2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvrKr3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvrKr4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvrKr5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvrKr3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116=LibSegNa_qvrQ2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116=LibSegNa_qvrQ3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116=LibSegNa_qvrQ2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116=LibSegNa_qvrQ5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116=LibSegNa_qvrQ2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116=LibSegNa_qvrQ3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116=LibSegNa_qvrQ4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116=LibSegNa_qvrQ5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116=LibSegNa_qvrQ3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvrQK2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvrQK3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvrQK2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvrQK5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvrQK2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvrQK3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvrQK4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvrQK5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvrQK3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvrQV2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvrQV3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvrQV2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvrQV5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvrQV2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvrQV3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvrQV4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvrQV5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvrQV3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_002ASegItab_Na_b2e6302ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116=LibSegNa_qvsA2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116=LibSegNa_qvsA3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116=LibSegNa_qvsA2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116=LibSegNa_qvsA5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116=LibSegNa_qvsA2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116=LibSegNa_qvsA3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116=LibSegNa_qvsA4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116=LibSegNa_qvsA5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116=LibSegNa_qvsA3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116ALibSegNa_qvsAk1e12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116ALibSegNa_qvsAk1e13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116ALibSegNa_qvsAk1e12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116ALibSegNa_qvsAk1e15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116ALibSegNa_qvsAk1e12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116ALibSegNa_qvsAk1e13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116ALibSegNa_qvsAk1e14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116ALibSegNa_qvsAk1e15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116ALibSegNa_qvsAk1e13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116ALibSegNa_qvsAk2e02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116ALibSegNa_qvsAk2e03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116ALibSegNa_qvsAk2e02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116ALibSegNa_qvsAk2e05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116ALibSegNa_qvsAk2e02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116ALibSegNa_qvsAk2e03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116ALibSegNa_qvsAk2e04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116ALibSegNa_qvsAk2e05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116ALibSegNa_qvsAk2e03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116ALibSegNa_qvsAk2e12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116ALibSegNa_qvsAk2e13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116ALibSegNa_qvsAk2e12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116ALibSegNa_qvsAk2e15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116ALibSegNa_qvsAk2e12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116ALibSegNa_qvsAk2e13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116ALibSegNa_qvsAk2e14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116ALibSegNa_qvsAk2e15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116ALibSegNa_qvsAk2e13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116=LibSegNa_qvsC2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116=LibSegNa_qvsC3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116=LibSegNa_qvsC2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116=LibSegNa_qvsC5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116=LibSegNa_qvsC2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116=LibSegNa_qvsC3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116=LibSegNa_qvsC4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116=LibSegNa_qvsC5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116=LibSegNa_qvsC3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116?LibSegNa_qvsCqK2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116?LibSegNa_qvsCqK3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116?LibSegNa_qvsCqK2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116?LibSegNa_qvsCqK5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116?LibSegNa_qvsCqK2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116?LibSegNa_qvsCqK3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116?LibSegNa_qvsCqK4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116?LibSegNa_qvsCqK5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116?LibSegNa_qvsCqK3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116?LibSegNa_qvsCqV2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116?LibSegNa_qvsCqV3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116?LibSegNa_qvsCqV2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116?LibSegNa_qvsCqV5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116?LibSegNa_qvsCqV2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116?LibSegNa_qvsCqV3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116?LibSegNa_qvsCqV4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116?LibSegNa_qvsCqV5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116?LibSegNa_qvsCqV3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_002ASegItab_Na_9a541f2ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvsD22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvsD23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvsD22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvsD25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvsD22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvsD23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvsD24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvsD25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116>LibSegNa_qvsD23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116?LibSegNa_qvsDKn2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116?LibSegNa_qvsDKn3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116?LibSegNa_qvsDKn2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116?LibSegNa_qvsDKn5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116?LibSegNa_qvsDKn2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116?LibSegNa_qvsDKn3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116?LibSegNa_qvsDKn4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116?LibSegNa_qvsDKn5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_116?LibSegNa_qvsDKn3kn0".

Module LibSegNa_qvrKe1S.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_8fec3c.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_8fec3c.IT.
Definition ENDS : list Z := [781284].
Definition STOPS1 : list Z := [781284; 745052] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$21$19$1:#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1:'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#18#3#7???8000#1#&6+$24#19#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$25-18,4#1!$25-10,4#1!$24#18,1$28'$28##2<'&9$28#1##($24#18#2'$21#6;6000#7??????????0)##7???7000#100000001000$21##10#&6$21#3#7???8000#1#&6+$21#8#3#7???8000#1!$21#,8$30!$21#8,8$31'$30##800000000000'$31##4000000)$21##10$24##60"%pstring).
Definition ss0 : sym_state := SS 744788 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;>;>4#;5>5<#;>;>4#5=#;>;>4,20##;5>5<$2$3$4$5$6$7$8$9$30+$30$31#26613+$24#18$>$?$10$11$12+$24#50$24$15$16$17$21$19$1:#7???8000$1<$1=$1>$1?,,19!$24#18,1#!$24#19,1#'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#18#3#7???8000#1#&6+$24#19#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1'$28##2<'&9$28#1##($24#18#2'$21#6;6000#7??????????0)##7???7000#100000001000$21##10#&6$21#3#7???8000#1#&6+$21#8#3#7???8000#1!$21#,8$30!$21#8,8$31'$30##800000000000'$31##4000000)$21##10$24##60,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 781284 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_8fec3c.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 744788 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_8fec3c.IT BndT_Na_002.SegItab_Na_8fec3c.IT_sound BF NX0 BR XSTEP F0 PSS plan 744788 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvrKe1S.

Module LibSegNa_qvrKr.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_8fec3c.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_8fec3c.IT.
Definition ENDS : list Z := [746072].
Definition STOPS1 : list Z := [746072] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18+&6$32#3#7???8000$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 50) 7036928 140737488355200;
   KAlign (EVar 50) 32;
   KDisj (SA (ELit 0) 2147446784) (ELit 17592186048512) (SA (EVar 50) 0) (ELit 128);
   KWr (SA (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) 2147450888) (ELit 2)].
Definition ss0 : sym_state := SS 745968 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (8), ELit 2)].
Definition F0L : list SR.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (8), 2)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;6258#;6258#5=#;6258,20#$1$2$3$4$5$6$7$8$9^#?#??????????????8$;$<$=$>$?$10$11$12$13$14$15$16$17$18+&6$32#3#7???8000$1:$1;$1<$1=$1>$1?,,6!&6$32#3#7???8009,1^#?#??????????????8!&6$32#3#7???8008,1^#?#??????????????8'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80(&6$32#3#7???8008#2,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 746072 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_8fec3c.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 745968 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_8fec3c.IT BndT_Na_002.SegItab_Na_8fec3c.IT_sound BF NX0 BR XSTEP F0 PSS plan 745968 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvrKr.

Module LibSegNa_qvrQ.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_8fec3c.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_8fec3c.IT.
Definition ENDS : list Z := [746400].
Definition STOPS1 : list Z := [746400] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$34$9$:$;$<$=$>$?$10$11$32$13$14$15$16$17$18+&6$32#3#7???8000$32$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1;'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##8(&6$32#3#7???8000#10!$32#78,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##80$33##1'$34#7???7?8010:0#800000000000&$34#10!$34-8,8$3<!$34-10,8$3=!$34-18,8$3>!$34-20,8$3?!$34-28,8$40!$34-30,8$41!$34-38,8$42!$34-40,8$43!$34-48,8$44!$34-50,8$45!$34-58,8$46!$34-60,8$47!$34-68,8$48)+$34-:0##:0$32##80)+$34-:0##:0$33##1"%pstring).
Definition ss0 : sym_state := SS 746192 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 50), (0), ELit 8); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), ELit 16); ((EVar 51), (0), ELit 1)].
Definition F0L : list SR.region := [((EVar 50), (0), 8); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), 16); ((EVar 51), (0), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;63:0#;63:0#5=#;63:0,20#$3<$34$3$4$5$6$7$3=$3>#1$;$<$=$>$?$10$11$3?$40$41$42$43$44$45$46$47$48$1<$1=$1>$1?,,2=!$33#,1#!&6$32#3#7???800;,1^#?#??????????????5!&6$32#3#7???800:,1^#?#??????????????5!&6$32#3#7???8009,1^#?#??????????????5!&6$32#3#7???8008,1^#?#??????????????5!&6$32#3#7???800?,1^#?#??????????????5!&6$32#3#7???800>,1^#?#??????????????5!&6$32#3#7???800=,1^#?#??????????????5!&6$32#3#7???800<,1^#?#??????????????5!&6$32#3#7???8003,1^#?#??????????????5!&6$32#3#7???8002,1^#?#??????????????5!&6$32#3#7???8001,1^#?#??????????????5!&6$32#3#7???8000,1^#?#??????????????5!&6$32#3#7???8007,1^#?#??????????????5!&6$32#3#7???8006,1^#?#??????????????5!&6$32#3#7???8005,1^#?#??????????????5!&6$32#3#7???8004,1^#?#??????????????5!$32#,8#45>0360>'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##8(&6$32#3#7???8000#10!$32#78,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##80$33##1'$34#7???7?8010:0#800000000000&$34#10!$34-8,8$3<!$34-10,8$3=!$34-18,8$3>!$34-20,8$3?!$34-28,8$40!$34-30,8$41!$34-38,8$42!$34-40,8$43!$34-48,8$44!$34-50,8$45!$34-58,8$46!$34-60,8$47!$34-68,8$48)+$34-:0##:0$32##80)+$34-:0##:0$33##1,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 746400 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_8fec3c.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 746192 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_8fec3c.IT BndT_Na_002.SegItab_Na_8fec3c.IT_sound BF NX0 BR XSTEP F0 PSS plan 746192 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvrQ.

Module LibSegNa_qvrQK.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_8fec3c.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_8fec3c.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 745316] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; (EVar 36); EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 745300 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#?4640#;5?64#?4640#5=#?4640,20##;5?64$2$3$4$5$6$7$8$9+$24#30#22$<$=$>$?$10$11$12$13$24+$24#30$16$17$18$19$1:$1;$1<$1=$1>$1?,,,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_8fec3c.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 745300 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_8fec3c.IT BndT_Na_002.SegItab_Na_8fec3c.IT_sound BF NX0 BR XSTEP F0 PSS plan 745300 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvrQK.

Module LibSegNa_qvrQV.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_8fec3c.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_8fec3c.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 745212] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14+$24#30$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 745200 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#?4640#;5>?<#?4640#5=#?4640,20##;5>?<$2$3$4$5$6$7$8$9+$24#30#22$<$=$>$?$10$11$12$13$14+$24#30$16$17$18$19$1:$1;$1<$1=$1>$1?,,,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_8fec3c.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 745200 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_8fec3c.IT BndT_Na_002.SegItab_Na_8fec3c.IT_sound BF NX0 BR XSTEP F0 PSS plan 745200 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvrQV.

Module LibSegNa_qvsA.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b2e630.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b2e630.IT.
Definition ENDS : list Z := [740984].
Definition STOPS1 : list Z := [740984] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 36); (EVar 33); EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 740912 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-56), ELit 56)].
Definition F0L : list SR.region := [((EVar 2), (-56), 56)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;4>78#;4>78#5=#;4>78,20#$1+$2-40$3$4$5$6$7+$24#50$21#$21$<$=$>#15?:78$10$11$24$13#7???8000+&6+$24#50#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?,,11!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 740984 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b2e630.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 740912 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b2e630.IT BndT_Na_002.SegItab_Na_b2e630.IT_sound BF NX0 BR XSTEP F0 PSS plan 740912 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvsA.

Module LibSegNa_qvsAk1e1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b2e630.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b2e630.IT.
Definition ENDS : list Z := [741816].
Definition STOPS1 : list Z := [741816] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7+$24#50$9$:$;$<$=$>$?$10$11$12$13#7???8000+&6+$24#50#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4$2=!$25-10,4#1,$25-8#8'$2=##1($25-8#8)+$25-18##18$24##60"%pstring).
Definition ss0 : sym_state := SS 741696 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;51;8#;51;8#5=#;51;8,20#$1+$2-40$3$4$5$6$7+$24#50$9+$25-10$2=+&6+$25-10#3#7???8000#1#2+$50#1$10$11$12$13#7???8000+&6+$24#50#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?,,11!$25-8,8+$50#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4$2=!$25-10,4#1'$2=##1($25-8#8)+$25-18##18$24##60,51!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 741816 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b2e630.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 741696 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b2e630.IT BndT_Na_002.SegItab_Na_b2e630.IT_sound BF NX0 BR XSTEP F0 PSS plan 741696 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvsAk1e1.

Module LibSegNa_qvsAk2e0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b2e630.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b2e630.IT.
Definition ENDS : list Z := [741816].
Definition STOPS1 : list Z := [741816] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7+$24#50$9$:$;$<$=$>$?$10$11$12$13#7???8000+&6+$24#50#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1!$25-14,4#2!$25-10,4#($25-10#4)+$25-18##18$24##60"%pstring).
Definition ss0 : sym_state := SS 741696 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;51;8#;51;8#5=#;51;8,20#$1+$2-40$3$4$5$6$7+$24#50$9+$25-10#1+&6+$25-10#3#7???8000##2$?$10$11$12$13#7???8000+&6+$24#50#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?,,>!$25-10,4#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1!$25-14,4#2($25-10#4)+$25-18##18$24##60,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 741816 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b2e630.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 741696 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b2e630.IT BndT_Na_002.SegItab_Na_b2e630.IT_sound BF NX0 BR XSTEP F0 PSS plan 741696 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvsAk2e0.

Module LibSegNa_qvsAk2e1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b2e630.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b2e630.IT.
Definition ENDS : list Z := [741816].
Definition STOPS1 : list Z := [741816] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7+$24#50$9$:$;$<$=$>$?$10$11$12$13#7???8000+&6+$24#50#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4#2!$25-10,4#1,$25-8#8($25-10#4($25-8#8)+$25-18##18$24##60"%pstring).
Definition ss0 : sym_state := SS 741696 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;51;8#;51;8#5=#;51;8,20#$1+$2-40$3$4$5$6$7+$24#50$9+$25-10#+&6+$25-10#3#7???8000#1#2+$50#1$10$11$12$13#7???8000+&6+$24#50#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?,,11!$25-10,4#!$25-8,8+$50#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4#2($25-10#4($25-8#8)+$25-18##18$24##60,51!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 741816 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b2e630.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 741696 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b2e630.IT BndT_Na_002.SegItab_Na_b2e630.IT_sound BF NX0 BR XSTEP F0 PSS plan 741696 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvsAk2e1.

Module LibSegNa_qvsC.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b2e630.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b2e630.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 741696] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#30$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 36) 7036928 140737488355232].
Definition ss0 : sym_state := SS 741684 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#?4640#;5140#?4640#5=#?4640,20##;5140+$2-40$3$4$5$6$7$8$9+$24#30#3:$<$=$>$?$10$11$12+$24#30$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1'$24#6;6000#7?????????:0,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b2e630.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 741684 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b2e630.IT BndT_Na_002.SegItab_Na_b2e630.IT_sound BF NX0 BR XSTEP F0 PSS plan 741684 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvsC.

Module LibSegNa_qvsCqK.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b2e630.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b2e630.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 741684] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#30$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 36) 7036928 140737488355232].
Definition ss0 : sym_state := SS 741672 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#?4640#;5134#?4640#5=#?4640,20##;5134+$2-40$3$4$5$6$7$8$9+$24#30#22$<$=$>$?$10$11$12+$24#30$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1'$24#6;6000#7?????????:0,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b2e630.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 741672 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b2e630.IT BndT_Na_002.SegItab_Na_b2e630.IT_sound BF NX0 BR XSTEP F0 PSS plan 741672 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvsCqK.

Module LibSegNa_qvsCqV.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b2e630.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b2e630.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 741696] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#30$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 36) 7036928 140737488355232].
Definition ss0 : sym_state := SS 741556 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#?4640#;5140#?4640#5=#?4640,20##;5140+$2-40$3$4$5$6$7$8$9+$24#30#22$<$=$>$?$10$11$12+$24#30$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1'$24#6;6000#7?????????:0,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b2e630.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 741556 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b2e630.IT BndT_Na_002.SegItab_Na_b2e630.IT_sound BF NX0 BR XSTEP F0 PSS plan 741556 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvsCqV.

Module LibSegNa_qvsD2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_9a541f.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_9a541f.IT.
Definition ENDS : list Z := [798952].
Definition STOPS1 : list Z := [798952; 741356] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7+$24#50$21$:$;$<$=$>$?$10$11$24$13#7???8000+&6+$24#50#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",14%#10000#158000'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1#&6+$24#10#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$25-18,4#!$25-10,4#1!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##38#&6$26#3#7???8000#1!$26#,8#151130###80022235#1"%pstring).
Definition ss0 : sym_state := SS 740984 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#<30>8#;4?><#<30>8#5=#<30>8,20##;4?><+$2-40$3$4$5$6$7+$24#50$21$26$21$<$=$>#<30>8#$11$24$13#7???8000+&6+$24#50#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?,,14%#10000#158000'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1#&6+$24#10#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$25-18,4#!$25-10,4#1!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##38#&6$26#3#7???8000#1!$26#,8#151130###80022235#1,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 798952 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_9a541f.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 740984 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_9a541f.IT BndT_Na_002.SegItab_Na_9a541f.IT_sound BF NX0 BR XSTEP F0 PSS plan 740984 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvsD2.

Module LibSegNa_qvsDKn.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b2e630.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b2e630.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 741224] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7+$24#50$9$:$;$<$=$>$?$10$11$24$13#7???8000+&6+$24#50#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-10,4#!$25-8,8$2;'$2;#1^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 740984 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#?4640#;4?68#?4640#5=#?4640,20##;4?68+$2-40$3$4$5$6$7+$24#50$9+$24#30#2<$<$=$>$25#$11$24$13#7???8000+&6+$24#50#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?,,?'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-10,4#!$25-8,8$2;'$2;#1^#?#???????????????,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b2e630.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 740984 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b2e630.IT BndT_Na_002.SegItab_Na_b2e630.IT_sound BF NX0 BR XSTEP F0 PSS plan 740984 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvsDKn.

End BndP_Na_116.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_003.
Module BndP_Na_109.
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
Ltac2 kr_t_BndP_Na_109 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f35ee72ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109?LibSegNa_qviDKz2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109?LibSegNa_qviDKz3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109?LibSegNa_qviDKz2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109?LibSegNa_qviDKz5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109?LibSegNa_qviDKz2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109?LibSegNa_qviDKz3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109?LibSegNa_qviDKz4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109?LibSegNa_qviDKz5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109?LibSegNa_qviDKz3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviDV1n2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviDV1n3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviDV1n2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviDV1n5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviDV1n2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviDV1n3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviDV1n4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviDV1n5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviDV1n3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviDV1z2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviDV1z3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviDV1z2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviDV1z5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviDV1z2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviDV1z3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviDV1z4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviDV1z5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviDV1z3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109?LibSegNa_qviDV22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109?LibSegNa_qviDV23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109?LibSegNa_qviDV22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109?LibSegNa_qviDV25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109?LibSegNa_qviDV22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109?LibSegNa_qviDV23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109?LibSegNa_qviDV24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109?LibSegNa_qviDV25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109?LibSegNa_qviDV23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKLL2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKLL3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKLL2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKLL5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKLL2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKLL3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKLL4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKLL5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKLL3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKLS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKLS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKLS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKLS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKLS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKLS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKLS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKLS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKLS3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKSL2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKSL3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKSL2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKSL5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKSL2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKSL3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKSL4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKSL5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKSL3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKSS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKSS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKSS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKSS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKSS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKSS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKSS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKSS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIKSS3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVLL2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVLL3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVLL2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVLL5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVLL2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVLL3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVLL4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVLL5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVLL3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVLS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVLS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVLS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVLS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVLS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVLS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVLS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVLS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVLS3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVSL2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVSL3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVSL2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVSL5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVSL2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVSL3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVSL4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVSL5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVSL3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVSS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVSS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVSS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVSS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVSS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVSS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVSS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVSS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109@LibSegNa_qviIVSS3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109>LibSegNa_qviJ12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109>LibSegNa_qviJ13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109>LibSegNa_qviJ12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109>LibSegNa_qviJ15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109>LibSegNa_qviJ12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109>LibSegNa_qviJ13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109>LibSegNa_qviJ14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109>LibSegNa_qviJ15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109>LibSegNa_qviJ13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109>LibSegNa_qviJ22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109>LibSegNa_qviJ23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109>LibSegNa_qviJ22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109>LibSegNa_qviJ25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109>LibSegNa_qviJ22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109>LibSegNa_qviJ23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109>LibSegNa_qviJ24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109>LibSegNa_qviJ25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_109>LibSegNa_qviJ23kn0".

Module LibSegNa_qviDKz.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [728612].
Definition STOPS1 : list Z := [728612] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15+&6+$24#50#3#7???8000$17$18$19#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-10,4#!$25-8,8#"%pstring).
Definition ss0 : sym_state := SS 728376 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;1>24#;1>24#5=#;1>24,20#$1$2$3$4$5$6$7$8$9##$25#$>$?$10$11$12+$24#50$24$15+&6+$24#50#3#7???8000$17$18$19#7???8000$1;$1<$1=$1>$1?,,>'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-10,4#!$25-8,8#,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 728612 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 728376 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 728376 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviDKz.

Module LibSegNa_qviDV1n.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 728524; 728612] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15+&6+$24#50#3#7???8000$17$18$19#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-14,4#1!$25-10,4#1!$25-8,8$2;'$2;#1^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 728376 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#;1=<<#;1>24#?4640#5=#?4640,20##;1=<<$2$3$4$5$6$7$8$9+$24#30#2<$25#$>$?$10$11$12+$24#50$24+$24#30+&6+$24#50#3#7???8000$17$18$19#7???8000$1;$1<$1=$1>$1?,,11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-14,4#1!$25-10,4#1!$25-8,8$2;'$2;#1^#?#???????????????,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 728376 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 728376 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviDV1n.

Module LibSegNa_qviDV1z.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [728524].
Definition STOPS1 : list Z := [728524] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15+&6+$24#50#3#7???8000$17$18$19#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",10'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-14,4#1!$25-10,4#1!$25-8,8#"%pstring).
Definition ss0 : sym_state := SS 728376 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;1=<<#;1=<<#5=#;1=<<,20#$1$2$3$4$5$6$7$8$9##$25#$>$?$10$11$12+$24#50$24+$24#30+&6+$24#50#3#7???8000$17$18$19#7???8000$1;$1<$1=$1>$1?,,10'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-14,4#1!$25-10,4#1!$25-8,8#,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 728524 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 728376 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 728376 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviDV1z.

Module LibSegNa_qviDV2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [728524].
Definition STOPS1 : list Z := [728524] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15+&6+$24#50#3#7???8000$17$18$19#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1!$25-18,4#1!$25-14,4#2!$25-10,4#1"%pstring).
Definition ss0 : sym_state := SS 728376 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;1=<<#;1=<<#5=#;1=<<,20#$1$2$3$4$5$6$7$8$9#2#2$25#$>$?$10$11$12+$24#50$24+$24#30+&6+$24#50#3#7???8000$17$18$19#7???8000$1;$1<$1=$1>$1?,,>'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1!$25-18,4#1!$25-14,4#2!$25-10,4#1,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 728524 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 728376 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 728376 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviDV2.

Module LibSegNa_qviIKLL.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [759280].
Definition STOPS1 : list Z := [759280; 729272] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; (EVar 36); EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; ELit 2147450880; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",17'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000"%pstring).
Definition ss0 : sym_state := SS 728612 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;95?0#;20;8#;95?0#5=#;95?0,20##;20;8$2$3$4$5$6$7$8$9+$24#30+$2=$2>$2:+$29$2:$29$?$10$11$12$13$24+$24#30$16$17$18$19#7???8000$1;$1<$1=$1>$1?,,17'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 728612 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 728612 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviIKLL.

Module LibSegNa_qviIKLS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [759280].
Definition STOPS1 : list Z := [759280; 729272] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; (EVar 36); EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; ELit 2147450880; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000!$24#18,1$28'$28##2<'&9$28#1##"%pstring).
Definition ss0 : sym_state := SS 728612 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;95?0#;20;8#;95?0#5=#;95?0,20##;20;8$2$3$4$5$6$7$8$9+$24#30+$2=$2>+$24#19++$24&6$28#1#19&6$28#1$?$10$11$12$13$24+$24#30$16$17$18$19#7???8000$1;$1<$1=$1>$1?,,11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000!$24#18,1$28'$28##2<'&9$28#1##,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 728612 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 728612 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviIKLS.

Module LibSegNa_qviIKSL.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [759280].
Definition STOPS1 : list Z := [759280; 729272] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; (EVar 36); EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; ELit 2147450880; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000"%pstring).
Definition ss0 : sym_state := SS 728612 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;95?0#;20;8#;95?0#5=#;95?0,20##;20;8$2$3$4$5$6$7$8$9+$24#30++$24&6$2<#1#31$2:+$29$2:$29$?$10$11$12$13$24+$24#30$16$17$18$19#7???8000$1;$1<$1=$1>$1?,,11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 728612 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 728612 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviIKSL.

Module LibSegNa_qviIKSS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [759280].
Definition STOPS1 : list Z := [759280; 729272] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; (EVar 36); EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; ELit 2147450880; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##!$24#18,1$28'$28##2<'&9$28#1##"%pstring).
Definition ss0 : sym_state := SS 728612 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;95?0#;20;8#;95?0#5=#;95?0,20##;20;8$2$3$4$5$6$7$8$9+$24#30++$24&6$2<#1#31+$24#19++$24&6$28#1#19&6$28#1$?$10$11$12$13$24+$24#30$16$17$18$19#7???8000$1;$1<$1=$1>$1?,,;'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##!$24#18,1$28'$28##2<'&9$28#1##,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 728612 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 728612 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviIKSS.

Module LibSegNa_qviIVLL.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [759280].
Definition STOPS1 : list Z := [759280; 728980] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$24+$24#30$16$17$18$19#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",17'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000"%pstring).
Definition ss0 : sym_state := SS 728524 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;95?0#;1?94#;95?0#5=#;95?0,20##;1?94$2$3$4$5$6$7$8$9+$24#30+$2=$2>$2:+$29$2:$29$?$10$11$12$13$24+$24#30$16$17$18$19#7???8000$1;$1<$1=$1>$1?,,17'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 728524 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 728524 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviIVLL.

Module LibSegNa_qviIVLS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [759280].
Definition STOPS1 : list Z := [759280; 728980] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$24+$24#30$16$17$18$19#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000!$24#18,1$28'$28##2<'&9$28#1##"%pstring).
Definition ss0 : sym_state := SS 728524 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;95?0#;1?94#;95?0#5=#;95?0,20##;1?94$2$3$4$5$6$7$8$9+$24#30+$2=$2>+$24#19++$24&6$28#1#19&6$28#1$?$10$11$12$13$24+$24#30$16$17$18$19#7???8000$1;$1<$1=$1>$1?,,11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000!$24#18,1$28'$28##2<'&9$28#1##,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 728524 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 728524 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviIVLS.

Module LibSegNa_qviIVSL.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [759280].
Definition STOPS1 : list Z := [759280; 728980] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$24+$24#30$16$17$18$19#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000"%pstring).
Definition ss0 : sym_state := SS 728524 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;95?0#;1?94#;95?0#5=#;95?0,20##;1?94$2$3$4$5$6$7$8$9+$24#30++$24&6$2<#1#31$2:+$29$2:$29$?$10$11$12$13$24+$24#30$16$17$18$19#7???8000$1;$1<$1=$1>$1?,,11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 728524 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 728524 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviIVSL.

Module LibSegNa_qviIVSS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [759280].
Definition STOPS1 : list Z := [759280; 728980] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$24+$24#30$16$17$18$19#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##!$24#18,1$28'$28##2<'&9$28#1##"%pstring).
Definition ss0 : sym_state := SS 728524 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;95?0#;1?94#;95?0#5=#;95?0,20##;1?94$2$3$4$5$6$7$8$9+$24#30++$24&6$2<#1#31+$24#19++$24&6$28#1#19&6$28#1$?$10$11$12$13$24+$24#30$16$17$18$19#7???8000$1;$1<$1=$1>$1?,,;'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##!$24#18,1$28'$28##2<'&9$28#1##,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 728524 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 728524 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviIVSS.

Module LibSegNa_qviJ1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [729284].
Definition STOPS1 : list Z := [729284] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 728744 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;20<4#;20<4#5=#;20<4,20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 729284 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 728744 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 728744 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviJ1.

Module LibSegNa_qviJ2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [729284].
Definition STOPS1 : list Z := [729284] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 728980 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;20<4#;20<4#5=#;20<4,20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 729284 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 728980 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 728980 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviJ2.

End BndP_Na_109.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_003 BndT_Na_000.
Module BndP_Na_110.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_003 BndT_Na_000.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Na_110 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d9c1882ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKdL22BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKdL23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKdL22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKdL25XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKdL22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKdL23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKdL24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKdL25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKdL23kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKdS22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKdS23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKdS22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKdS25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKdS22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKdS23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKdS24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKdS25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKdS23kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f35ee72ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe0L2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe0L3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe0L2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe0L5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe0L2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe0L3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe0L4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe0L5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe0L3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe0S2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe0S3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe0S2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe0S5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe0S2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe0S3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe0S4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe0S5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe0S3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe1L2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe1L3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe1L2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe1L5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe1L2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe1L3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe1L4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe1L5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe1L3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe1S2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe1S3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe1S2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe1S5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe1S2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe1S3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe1S4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe1S5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110@LibSegNa_qviKe1S3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110>LibSegNa_qviKr2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110>LibSegNa_qviKr3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110>LibSegNa_qviKr2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110>LibSegNa_qviKr5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110>LibSegNa_qviKr2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110>LibSegNa_qviKr3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110>LibSegNa_qviKr4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110>LibSegNa_qviKr5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110>LibSegNa_qviKr3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110=LibSegNa_qviQ2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110=LibSegNa_qviQ3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110=LibSegNa_qviQ2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110=LibSegNa_qviQ5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110=LibSegNa_qviQ2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110=LibSegNa_qviQ3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110=LibSegNa_qviQ4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110=LibSegNa_qviQ5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110=LibSegNa_qviQ3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_000ASegItab_Na_0c591d2ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110>LibSegNa_qvnA02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110>LibSegNa_qvnA03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110>LibSegNa_qvnA02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110>LibSegNa_qvnA05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110>LibSegNa_qvnA02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110>LibSegNa_qvnA03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110>LibSegNa_qvnA04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110>LibSegNa_qvnA05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110>LibSegNa_qvnA03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110?LibSegNa_qvnA162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110?LibSegNa_qvnA163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110?LibSegNa_qvnA162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110?LibSegNa_qvnA165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110?LibSegNa_qvnA162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110?LibSegNa_qvnA163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110?LibSegNa_qvnA164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110?LibSegNa_qvnA165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110?LibSegNa_qvnA163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110ALibSegNa_qvnAk1e12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110ALibSegNa_qvnAk1e13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110ALibSegNa_qvnAk1e12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110ALibSegNa_qvnAk1e15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110ALibSegNa_qvnAk1e12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110ALibSegNa_qvnAk1e13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110ALibSegNa_qvnAk1e14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110ALibSegNa_qvnAk1e15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110ALibSegNa_qvnAk1e13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110ALibSegNa_qvnAk2e02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110ALibSegNa_qvnAk2e03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110ALibSegNa_qvnAk2e02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110ALibSegNa_qvnAk2e05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110ALibSegNa_qvnAk2e02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110ALibSegNa_qvnAk2e03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110ALibSegNa_qvnAk2e04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110ALibSegNa_qvnAk2e05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110ALibSegNa_qvnAk2e03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110ALibSegNa_qvnAk2e12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110ALibSegNa_qvnAk2e13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110ALibSegNa_qvnAk2e12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110ALibSegNa_qvnAk2e15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110ALibSegNa_qvnAk2e12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110ALibSegNa_qvnAk2e13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110ALibSegNa_qvnAk2e14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110ALibSegNa_qvnAk2e15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110ALibSegNa_qvnAk2e13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110=LibSegNa_qvnB2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110=LibSegNa_qvnB3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110=LibSegNa_qvnB2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110=LibSegNa_qvnB5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110=LibSegNa_qvnB2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110=LibSegNa_qvnB3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110=LibSegNa_qvnB4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110=LibSegNa_qvnB5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_110=LibSegNa_qvnB3kn0".

Module LibSegNa_qviKdL2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d9c188.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d9c188.IT.
Definition ENDS : list Z := [798520].
Definition STOPS1 : list Z := [798520; 729192] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8+$2-:0$:$;$<$=$>$?$10$11$12+$24#50$24$15+&6+$24#50#3#7???8000$17$18$32#7???8000+&6$32#3#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",2<%#10000#158000'$2#7???7?8010:0#800000000000&$2#20!$2-88,8$3<)+$2-:0##:0$32##40'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1#&6+$24#10#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$25-18,4#!$25-10,4#!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##38#&6$26#3#7???8000#1!$26#,8#151130###80022232#1!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32#20#10(&6$32#3#7???8004#2)$32##40$24##60)$32##40$26##38)&6$24#3#7???8000#<&6$32#3#7???8000#8)&6$26#3#7???8000#1&6$32#3#7???8000#8)##80021070#1&6$32#3#7???8000#8"%pstring).
Definition ss0 : sym_state := SS 728376 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#<2?38#;2068#<2?38#5=#<2?38,20##;2068+$2-:0$3$4$5$6$7$8+$2-:0$26+$32#20$15$3<#<2?38$?$10$11$12+$24#50$2:$15+&6+$24#50#3#7???8000$17$18$32#7???8000+&6$32#3#7???8000$1<$1=$1>$1?,,2<!$32#28,8$29!$32#20,8$2:!&6$32#3#7???8005,1#!&6$32#3#7???8004,1#%#10000#158000'$2#7???7?8010:0#800000000000&$2#20!$2-88,8$3<)+$2-:0##:0$32##40'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1#&6+$24#10#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##38#&6$26#3#7???8000#1!$26#,8#151130###80022232#1!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32#20#10(&6$32#3#7???8004#2)$32##40$24##60)$32##40$26##38)&6$24#3#7???8000#<&6$32#3#7???8000#8)&6$26#3#7???8000#1&6$32#3#7???8000#8)##80021070#1&6$32#3#7???8000#8,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d9c188.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 728376 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d9c188.IT BndT_Na_003.SegItab_Na_d9c188.IT_sound BF NX0 BR XSTEP F0 PSS plan 728376 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviKdL2.

Module LibSegNa_qviKdS2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d9c188.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d9c188.IT.
Definition ENDS : list Z := [798520].
Definition STOPS1 : list Z := [798520; 729192] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8+$2-:0$:$;$<$=$>$?$10$11$12+$24#50$24$15+&6+$24#50#3#7???8000$17$18$32#7???8000+&6$32#3#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",26%#10000#158000'$2#7???7?8010:0#800000000000&$2#20!$2-88,8$3<)+$2-:0##:0$32##40'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1#&6+$24#10#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$25-18,4#!$25-10,4#!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##38#&6$26#3#7???8000#1!$26#,8#151130###80022232#1!$24#18,1$28'$28##2<'&9$28#1##'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32#20#10(&6$32#3#7???8004#2)$32##40$24##60)$32##40$26##38)&6$24#3#7???8000#<&6$32#3#7???8000#8)&6$26#3#7???8000#1&6$32#3#7???8000#8)##80021070#1&6$32#3#7???8000#8"%pstring).
Definition ss0 : sym_state := SS 728376 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#<2?38#;2068#<2?38#5=#<2?38,20##;2068+$2-:0$3$4$5$6$7$8+$2-:0$26+$32#20$15$3<#<2?38$?$10$11$12+$24#50+$24#19$15+&6+$24#50#3#7???8000$17$18$32#7???8000+&6$32#3#7???8000$1<$1=$1>$1?,,26!$32#28,8&6$28#1!$32#20,8+$24#19!&6$32#3#7???8005,1#!&6$32#3#7???8004,1#%#10000#158000'$2#7???7?8010:0#800000000000&$2#20!$2-88,8$3<)+$2-:0##:0$32##40'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1#&6+$24#10#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##38#&6$26#3#7???8000#1!$26#,8#151130###80022232#1!$24#18,1$28'$28##2<'&9$28#1##'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32#20#10(&6$32#3#7???8004#2)$32##40$24##60)$32##40$26##38)&6$24#3#7???8000#<&6$32#3#7???8000#8)&6$26#3#7???8000#1&6$32#3#7???8000#8)##80021070#1&6$32#3#7???8000#8,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d9c188.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 728376 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d9c188.IT BndT_Na_003.SegItab_Na_d9c188.IT_sound BF NX0 BR XSTEP F0 PSS plan 728376 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviKdS2.

Module LibSegNa_qviKe0L.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [762184].
Definition STOPS1 : list Z := [762184; 728376] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$18$19#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",19'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#18#3#7???8000#1#&6+$24#20#3#7???8000#1#&6+$24#28#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1!$25-10,4#!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000($24#20#8($2:##1)##7???7000#100000001000$2:##1#&6$2:#3#7???8000#1)$2:##1$24##60)$2:##1+$25-18##18"%pstring).
Definition ss0 : sym_state := SS 728164 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;:148#;1=38#;:148#5=#;:148,20##;1=38$2$3$4$5$6$7$8$9$18+$24#18#$=$>$?$10$11$12+$24#50$24$15$16$17$18$19#7???8000$1;$1<$1=$1>$1?,,18!$24#20,8#!$2:#,1#'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#18#3#7???8000#1#&6+$24#20#3#7???8000#1#&6+$24#28#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1!$24#18,1$28'$28##??'&9$28#1#1#1'$29##80000000!$24#28,8$2:'$2:#1000#800000000000($24#20#8($2:##1)##7???7000#100000001000$2:##1)$2:##1$24##60)$2:##1+$25-18##18,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 762184 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 728164 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 728164 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviKe0L.

Module LibSegNa_qviKe0S.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [762184].
Definition STOPS1 : list Z := [762184; 728376] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$18$19#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#18#3#7???8000#1#&6+$24#19#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1!$25-10,4#!$24#18,1$28'$28##2<'&9$28#1##($24#18#2"%pstring).
Definition ss0 : sym_state := SS 728164 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;:148#;1=38#;:148#5=#;:148,20##;1=38$2$3$4$5$6$7$8$9$18+$24#18+&6+$24#18#3#7???8000#$>$?$10$11$12+$24#50$24$15$16$17$18$19#7???8000$1;$1<$1=$1>$1?,,?!$24#18,1#!$24#19,1#'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#18#3#7???8000#1#&6+$24#19#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1'$28##2<'&9$28#1##($24#18#2,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 762184 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 728164 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 728164 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviKe0S.

Module LibSegNa_qviKe1L.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [762184].
Definition STOPS1 : list Z := [762184; 728376] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$18$19#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1;'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#18#3#7???8000#1#&6+$24#20#3#7???8000#1#&6+$24#28#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$25-18,4#1!$25-10,4#1!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000($24#20#8($2:##1)##7???7000#100000001000$2:##1#&6$2:#3#7???8000#1)$2:##1$24##60)$2:##1+$25-18##18"%pstring).
Definition ss0 : sym_state := SS 728164 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;:148#;1=38#;:148#5=#;:148,20##;1=38$2$3$4$5$6$7$8$9$18+$24#18#$=$>$?$10$11$12+$24#50$24$15$16$17$18$19#7???8000$1;$1<$1=$1>$1?,,19!$24#20,8#!$2:#,1#'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#18#3#7???8000#1#&6+$24#20#3#7???8000#1#&6+$24#28#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$24#18,1$28'$28##??'&9$28#1#1#1'$29##80000000!$24#28,8$2:'$2:#1000#800000000000($24#20#8($2:##1)##7???7000#100000001000$2:##1)$2:##1$24##60)$2:##1+$25-18##18,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 762184 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 728164 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 728164 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviKe1L.

Module LibSegNa_qviKe1S.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [762184].
Definition STOPS1 : list Z := [762184; 728376] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$18$19#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#18#3#7???8000#1#&6+$24#19#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$25-18,4#1!$25-10,4#1!$24#18,1$28'$28##2<'&9$28#1##($24#18#2"%pstring).
Definition ss0 : sym_state := SS 728164 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;:148#;1=38#;:148#5=#;:148,20##;1=38$2$3$4$5$6$7$8$9$18+$24#18+&6+$24#18#3#7???8000#$>$?$10$11$12+$24#50$24$15$16$17$18$19#7???8000$1;$1<$1=$1>$1?,,10!$24#18,1#!$24#19,1#'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#18#3#7???8000#1#&6+$24#19#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1'$28##2<'&9$28#1##($24#18#2,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 762184 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 728164 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 728164 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviKe1S.

Module LibSegNa_qviKr.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [729284].
Definition STOPS1 : list Z := [729284] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:+&6$32#3#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 50) 7036928 140737488355264;
   KAlign (EVar 50) 32;
   KDisj (SA (ELit 0) 2147446784) (ELit 17592186048512) (SA (EVar 50) 0) (ELit 64);
   KWr (SA (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) 2147450884) (ELit 2)].
Definition ss0 : sym_state := SS 729192 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;20<4#;20<4#5=#;20<4,20#$1$2$3$4$5$6$7$8$9^#?#??????????????8$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:+&6$32#3#7???8000$1<$1=$1>$1?,,6!&6$32#3#7???8005,1^#?#??????????????8!&6$32#3#7???8004,1^#?#??????????????8'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40(&6$32#3#7???8004#2,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 729284 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 729192 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 729192 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviKr.

Module LibSegNa_qviQ.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f35ee7.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f35ee7.IT.
Definition ENDS : list Z := [729564].
Definition STOPS1 : list Z := [729564] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$34$9$:$;$<$=$>$?$10$11$32$13$14$15$16$17$18$32$1:+&6$32#3#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1;'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32##8(&6$32#3#7???8000#8!$32#38,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##40$33##1'$34#7???7?8010:0#800000000000&$34#10!$34-8,8$3<!$34-10,8$3=!$34-18,8$3>!$34-20,8$3?!$34-28,8$40!$34-30,8$41!$34-38,8$42!$34-40,8$43!$34-48,8$44!$34-50,8$45!$34-58,8$46!$34-60,8$47!$34-68,8$48)+$34-:0##:0$32##40)+$34-:0##:0$33##1"%pstring).
Definition ss0 : sym_state := SS 729404 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;21=<#;21=<#5=#;21=<,20#$3<$34$3$4$5$6$7$3=$3>#1$;$<$=$>$?$10$11$3?$40$41$42$43$44$45$46$47$48$1<$1=$1>$1?,,25!$33#,1#!&6$32#3#7???8003,1^#?#??????????????5!&6$32#3#7???8002,1^#?#??????????????5!&6$32#3#7???8001,1^#?#??????????????5!&6$32#3#7???8000,1^#?#??????????????5!&6$32#3#7???8007,1^#?#??????????????5!&6$32#3#7???8006,1^#?#??????????????5!&6$32#3#7???8005,1^#?#??????????????5!&6$32#3#7???8004,1^#?#??????????????5!$32#,8#45>0360>'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32##8(&6$32#3#7???8000#8!$32#38,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##40$33##1'$34#7???7?8010:0#800000000000&$34#10!$34-8,8$3<!$34-10,8$3=!$34-18,8$3>!$34-20,8$3?!$34-28,8$40!$34-30,8$41!$34-38,8$42!$34-40,8$43!$34-48,8$44!$34-50,8$45!$34-58,8$46!$34-60,8$47!$34-68,8$48)+$34-:0##:0$32##40)+$34-:0##:0$33##1,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 729564 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f35ee7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 729404 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f35ee7.IT BndT_Na_003.SegItab_Na_f35ee7.IT_sound BF NX0 BR XSTEP F0 PSS plan 729404 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qviQ.

Module LibSegNa_qvnA0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [411628].
Definition STOPS1 : list Z := [411628; 736624] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KImg 65536 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487296 140737488355328;
   KAlign (EVar 2) 32;
   KWr (SA (EVar 2) (-128)) (ELit 128)].
Definition ss0 : sym_state := SS 736500 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-128), ELit 128)].
Definition F0L : list SR.region := [((EVar 2), (-128), 128)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#647><#;3=70#647><#5=#647><,20##;3=70+$2-80$3$4$5$6$7$2+$2-80#40#15?:78#1$=$>$?$10$11$12$13$:$=$<$;$18#7???8000$1:$1;$1<$1=$1>$1?,,14!$2-68,8$1;!$2-60,8$1:!$2-58,8$19!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1!$2-80,8#%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801080#800000000000&$2#20($2-80#80,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 736500 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 736500 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnA0.

Module LibSegNa_qvnA16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [411628].
Definition STOPS1 : list Z := [411628; 736624] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2#10$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 65536 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487296 140737488355312;
   KAlign (EVar 2) 32;
   KWr (SA (EVar 2) (-128)) (ELit 144)].
Definition ss0 : sym_state := SS 736500 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-112), ELit 128)].
Definition F0L : list SR.region := [((EVar 2), (-112), 128)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#647><#;3=70#647><#5=#647><,20##;3=70+$2-80$3$4$5$6$7+$2#10+$2-80#40#15?:78#1$=$>$?$10$11$12$13$:$=$<$;$18#7???8000$1:$1;$1<$1=$1>$1?,,14!$2-58,8$1;!$2-50,8$1:!$2-48,8$19!$2-40,8$18!$2-38,8$17!$2-30,8$16!$2-28,8$15!$2-20,8$14!$2-18,8$13!$2-10,8$12!$2-8,8$9!$2#,8$8!$2#8,8$1!$2-70,8#%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801080#7??????????0&$2#20($2-80#90,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 736500 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 736500 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnA16.

Module LibSegNa_qvnAk1e1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [738084].
Definition STOPS1 : list Z := [738084] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$14$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4$2=!$25-10,4#1,$25-8#8'$2=##1($25-8#8)+$25-18##18$24##60"%pstring).
Definition ss0 : sym_state := SS 737964 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;4324#;4324#5=#;4324,20#$1$2$3$4$5$6$7$8$9+$25-10$2=+&6+$25-10#3#7???8000#1#2+$50#1$10$11$12+$24#50$14$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?,,11!$25-8,8+$50#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4$2=!$25-10,4#1'$2=##1($25-8#8)+$25-18##18$24##60,51!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 738084 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 737964 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 737964 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnAk1e1.

Module LibSegNa_qvnAk2e0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [738084].
Definition STOPS1 : list Z := [738084] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$14$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1!$25-14,4#2!$25-10,4#($25-10#4)+$25-18##18$24##60"%pstring).
Definition ss0 : sym_state := SS 737964 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;4324#;4324#5=#;4324,20#$1$2$3$4$5$6$7$8$9+$25-10#1+&6+$25-10#3#7???8000##2$?$10$11$12+$24#50$14$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?,,>!$25-10,4#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1!$25-14,4#2($25-10#4)+$25-18##18$24##60,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 738084 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 737964 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 737964 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnAk2e0.

Module LibSegNa_qvnAk2e1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [738084].
Definition STOPS1 : list Z := [738084] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$14$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4#2!$25-10,4#1,$25-8#8($25-10#4($25-8#8)+$25-18##18$24##60"%pstring).
Definition ss0 : sym_state := SS 737964 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;4324#;4324#5=#;4324,20#$1$2$3$4$5$6$7$8$9+$25-10#+&6+$25-10#3#7???8000#1#2+$50#1$10$11$12+$24#50$14$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?,,11!$25-10,4#!$25-8,8+$50#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4#2($25-10#4($25-8#8)+$25-18##18$24##60,51!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 738084 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 737964 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 737964 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnAk2e1.

Module LibSegNa_qvnB.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [736784].
Definition STOPS1 : list Z := [736784] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7$8+$2-80$32$;$<$=$>$?$10$11$12$13$24$15$16$17$18#7???8000$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$2#7???7?801080#800000000000&$2#20($2-70#8)+$2-80##80$32##40'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32##18(&6$32#3#7???8000#8'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1)&6+$24#50#3#7???8000#1&6$32#3#7???8000#8)+$2-80##80$24##60"%pstring).
Definition ss0 : sym_state := SS 736624 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-112), ELit 8); ((EVar 50), (0), ELit 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-112), 8); ((EVar 50), (0), 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;3>10#;3>10#5=#;3>10,20#$1+$2-80$3$4$5$6$7$8+$2-80##1<050#;3<?4^#?#??????????????3^#?#??????????????8^#?#??????????????1$10$11$32+$24#50$24$15$16$17$32#7???8000+&6$32#3#7???8000+&6+$24#50#3#7???8000$1<$1=$1>$1?,,1;!$2-70,8$32!&6$32#3#7???8003,1^#?#??????????????1!&6$32#3#7???8002,1^#?#??????????????1!&6$32#3#7???8001,1^#?#??????????????1!&6$32#3#7???8000,1^#?#??????????????1!&6$32#3#7???8007,1^#?#??????????????3!&6$32#3#7???8006,1^#?#??????????????3!&6$32#3#7???8005,1^#?#??????????????8!&6$32#3#7???8004,1^#?#??????????????8!$32#10,8#;3<?4!$32#8,8#1<050!$32#,8#41;58:;3'$2#7???7?801080#800000000000&$2#20($2-70#8)+$2-80##80$32##40'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32##18(&6$32#3#7???8000#8'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1)&6+$24#50#3#7???8000#1&6$32#3#7???8000#8)+$2-80##80$24##60,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 736784 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 736624 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 736624 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnB.

End BndP_Na_110.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_000 BndT_Na_003.
Module BndP_Na_111.
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
Ltac2 kr_t_BndP_Na_111 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_000ASegItab_Na_0c591d2ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111=LibSegNa_qvnC2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111=LibSegNa_qvnC3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111=LibSegNa_qvnC2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111=LibSegNa_qvnC5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111=LibSegNa_qvnC2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111=LibSegNa_qvnC3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111=LibSegNa_qvnC4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111=LibSegNa_qvnC5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111=LibSegNa_qvnC3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f6ca4a2ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111>LibSegNa_qvnD22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111>LibSegNa_qvnD23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111>LibSegNa_qvnD22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111>LibSegNa_qvnD25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111>LibSegNa_qvnD22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111>LibSegNa_qvnD23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111>LibSegNa_qvnD24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111>LibSegNa_qvnD25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111>LibSegNa_qvnD23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111?LibSegNa_qvnDKn2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111?LibSegNa_qvnDKn3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111?LibSegNa_qvnDKn2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111?LibSegNa_qvnDKn5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111?LibSegNa_qvnDKn2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111?LibSegNa_qvnDKn3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111?LibSegNa_qvnDKn4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111?LibSegNa_qvnDKn5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111?LibSegNa_qvnDKn3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111?LibSegNa_qvnDKz2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111?LibSegNa_qvnDKz3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111?LibSegNa_qvnDKz2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111?LibSegNa_qvnDKz5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111?LibSegNa_qvnDKz2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111?LibSegNa_qvnDKz3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111?LibSegNa_qvnDKz4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111?LibSegNa_qvnDKz5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111?LibSegNa_qvnDKz3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnDV1n2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnDV1n3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnDV1n2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnDV1n5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnDV1n2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnDV1n3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnDV1n4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnDV1n5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnDV1n3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnDV1z2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnDV1z3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnDV1z2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnDV1z5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnDV1z2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnDV1z3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnDV1z4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnDV1z5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnDV1z3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111?LibSegNa_qvnDV22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111?LibSegNa_qvnDV23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111?LibSegNa_qvnDV22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111?LibSegNa_qvnDV25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111?LibSegNa_qvnDV22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111?LibSegNa_qvnDV23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111?LibSegNa_qvnDV24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111?LibSegNa_qvnDV25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111?LibSegNa_qvnDV23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKLL2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKLL3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKLL2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKLL5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKLL2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKLL3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKLL4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKLL5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKLL3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKLS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKLS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKLS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKLS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKLS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKLS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKLS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKLS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKLS3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKSL2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKSL3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKSL2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKSL5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKSL2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKSL3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKSL4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKSL5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKSL3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKSS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKSS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKSS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKSS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKSS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKSS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKSS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKSS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIKSS3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIVLL2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIVLL3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIVLL2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIVLL5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIVLL2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIVLL3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIVLL4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIVLL5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIVLL3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIVLS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIVLS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIVLS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIVLS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIVLS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIVLS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIVLS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIVLS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIVLS3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIVSL2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIVSL3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIVSL2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIVSL5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIVSL2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIVSL3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIVSL4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIVSL5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_111@LibSegNa_qvnIVSL3kn0".

Module LibSegNa_qvnC.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 737964] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14+$24#30$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 737952 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#?4640#;42:<#?4640#5=#?4640,20##;42:<$2$3$4$5$6$7$8$9+$24#30#3:$<$=$>$?$10$11$12$13$14+$24#30$16$17$18$19$1:$1;$1<$1=$1>$1?,,,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 737952 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 737952 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnC.

Module LibSegNa_qvnD2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f6ca4a.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f6ca4a.IT.
Definition ENDS : list Z := [798560].
Definition STOPS1 : list Z := [798560; 737424] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",14%#10000#158000'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1#&6+$24#10#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$25-18,4#!$25-10,4#1!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##38#&6$26#3#7???8000#1!$26#,8#151130###80022233#1"%pstring).
Definition ss0 : sym_state := SS 736784 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#<2?60#;4090#<2?60#5=#<2?60,20##;4090$2$3$4$5$6$7$8$9$26$17$16$15#<2?60$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?,,14%#10000#158000'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1#&6+$24#10#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$25-18,4#!$25-10,4#1!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##38#&6$26#3#7???8000#1!$26#,8#151130###80022233#1,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 798560 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f6ca4a.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 736784 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f6ca4a.IT BndT_Na_003.SegItab_Na_f6ca4a.IT_sound BF NX0 BR XSTEP F0 PSS plan 736784 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnD2.

Module LibSegNa_qvnDKn.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 737208; 737296] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-10,4#!$25-8,8$2;'$2;#1^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 737060 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#;3?;8#;4010#?4640#5=#?4640,20##;4010$2$3$4$5$6$7$8$9+$24#30#2<$25#$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?,,?'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-10,4#!$25-8,8$2;'$2;#1^#?#???????????????,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 737060 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 737060 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnDKn.

Module LibSegNa_qvnDKz.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [737296].
Definition STOPS1 : list Z := [737296] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-10,4#!$25-8,8#"%pstring).
Definition ss0 : sym_state := SS 737060 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;4010#;4010#5=#;4010,20#$1$2$3$4$5$6$7$8$9##$25#$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?,,>'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-10,4#!$25-8,8#,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 737296 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 737060 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 737060 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnDKz.

Module LibSegNa_qvnDV1n.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 737208; 737296] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-14,4#1!$25-10,4#1!$25-8,8$2;'$2;#1^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 737060 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4640#;3?;8#;4010#?4640#5=#?4640,20##;3?;8$2$3$4$5$6$7$8$9+$24#30#2<$25#$>$?$10$11$12+$24#50$24+$24#30$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?,,11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-14,4#1!$25-10,4#1!$25-8,8$2;'$2;#1^#?#???????????????,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 737060 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 737060 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnDV1n.

Module LibSegNa_qvnDV1z.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [737208].
Definition STOPS1 : list Z := [737208] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",10'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-14,4#1!$25-10,4#1!$25-8,8#"%pstring).
Definition ss0 : sym_state := SS 737060 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;3?;8#;3?;8#5=#;3?;8,20#$1$2$3$4$5$6$7$8$9##$25#$>$?$10$11$12+$24#50$24+$24#30$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?,,10'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-14,4#1!$25-10,4#1!$25-8,8#,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 737208 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 737060 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 737060 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnDV1z.

Module LibSegNa_qvnDV2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [737208].
Definition STOPS1 : list Z := [737208] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$24$15$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1!$25-18,4#1!$25-14,4#2!$25-10,4#1"%pstring).
Definition ss0 : sym_state := SS 737060 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;3?;8#;3?;8#5=#;3?;8,20#$1$2$3$4$5$6$7$8$9#2#2$25#$>$?$10$11$12+$24#50$24+$24#30$16$17$18#7???8000$1:+&6+$24#50#3#7???8000$1<$1=$1>$1?,,>'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1!$25-18,4#1!$25-14,4#2!$25-10,4#1,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 737208 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 737060 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 737060 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnDV2.

Module LibSegNa_qvnIKLL.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [759280].
Definition STOPS1 : list Z := [759280; 737952] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; (EVar 36); EVar 21; EVar 22; EVar 23; EVar 24; ELit 2147450880; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",17'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000"%pstring).
Definition ss0 : sym_state := SS 737296 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;95?0#;42:0#;95?0#5=#;95?0,20##;42:0$2$3$4$5$6$7$8$9+$24#30+$2=$2>$2:+$29$2:$29$?$10$11$12$13$24+$24#30$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,17'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 737296 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 737296 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnIKLL.

Module LibSegNa_qvnIKLS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [759280].
Definition STOPS1 : list Z := [759280; 737952] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; (EVar 36); EVar 21; EVar 22; EVar 23; EVar 24; ELit 2147450880; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000!$24#18,1$28'$28##2<'&9$28#1##"%pstring).
Definition ss0 : sym_state := SS 737296 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;95?0#;42:0#;95?0#5=#;95?0,20##;42:0$2$3$4$5$6$7$8$9+$24#30+$2=$2>+$24#19++$24&6$28#1#19&6$28#1$?$10$11$12$13$24+$24#30$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000!$24#18,1$28'$28##2<'&9$28#1##,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 737296 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 737296 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnIKLS.

Module LibSegNa_qvnIKSL.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [759280].
Definition STOPS1 : list Z := [759280; 737952] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; (EVar 36); EVar 21; EVar 22; EVar 23; EVar 24; ELit 2147450880; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000"%pstring).
Definition ss0 : sym_state := SS 737296 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;95?0#;42:0#;95?0#5=#;95?0,20##;42:0$2$3$4$5$6$7$8$9+$24#30++$24&6$2<#1#31$2:+$29$2:$29$?$10$11$12$13$24+$24#30$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 737296 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 737296 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnIKSL.

Module LibSegNa_qvnIKSS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [759280].
Definition STOPS1 : list Z := [759280; 737952] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; (EVar 36); EVar 21; EVar 22; EVar 23; EVar 24; ELit 2147450880; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##!$24#18,1$28'$28##2<'&9$28#1##"%pstring).
Definition ss0 : sym_state := SS 737296 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;95?0#;42:0#;95?0#5=#;95?0,20##;42:0$2$3$4$5$6$7$8$9+$24#30++$24&6$2<#1#31+$24#19++$24&6$28#1#19&6$28#1$?$10$11$12$13$24+$24#30$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,;'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##!$24#18,1$28'$28##2<'&9$28#1##,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 737296 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 737296 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnIKSS.

Module LibSegNa_qvnIVLL.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [759280].
Definition STOPS1 : list Z := [759280; 737660] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$24+$24#30$16$17$18#7???8000$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",17'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000"%pstring).
Definition ss0 : sym_state := SS 737208 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;95?0#;417<#;95?0#5=#;95?0,20##;417<$2$3$4$5$6$7$8$9+$24#30+$2=$2>$2:+$29$2:$29$?$10$11$12$13$24+$24#30$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,17'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 737208 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 737208 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnIVLL.

Module LibSegNa_qvnIVLS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [759280].
Definition STOPS1 : list Z := [759280; 737660] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$24+$24#30$16$17$18#7???8000$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000!$24#18,1$28'$28##2<'&9$28#1##"%pstring).
Definition ss0 : sym_state := SS 737208 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;95?0#;417<#;95?0#5=#;95?0,20##;417<$2$3$4$5$6$7$8$9+$24#30+$2=$2>+$24#19++$24&6$28#1#19&6$28#1$?$10$11$12$13$24+$24#30$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1#&6+$24#18#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000!$24#18,1$28'$28##2<'&9$28#1##,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 737208 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 737208 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnIVLS.

Module LibSegNa_qvnIVSL.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0c591d.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0c591d.IT.
Definition ENDS : list Z := [759280].
Definition STOPS1 : list Z := [759280; 737660] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$24+$24#30$16$17$18#7???8000$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000"%pstring).
Definition ss0 : sym_state := SS 737208 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;95?0#;417<#;95?0#5=#;95?0,20##;417<$2$3$4$5$6$7$8$9+$24#30++$24&6$2<#1#31$2:+$29$2:$29$?$10$11$12$13$24+$24#30$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#18#3#7???8000#1#&6+$24#28#3#7???8000#1#&6+$24#20#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##!$24#18,1$28'$28##??'&9$28#1#1#1!$24#20,8$29'$29##80000000!$24#28,8$2:'$2:#1000#800000000000,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0c591d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 737208 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0c591d.IT BndT_Na_000.SegItab_Na_0c591d.IT_sound BF NX0 BR XSTEP F0 PSS plan 737208 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvnIVSL.

End BndP_Na_111.
Module BndP_Na_117.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_002.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Na_117 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_002ASegItab_Na_b2e6302ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsDKz2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsDKz3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsDKz2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsDKz5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsDKz2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsDKz3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsDKz4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsDKz5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsDKz3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117@LibSegNa_qvsDV1n2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117@LibSegNa_qvsDV1n3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117@LibSegNa_qvsDV1n2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117@LibSegNa_qvsDV1n5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117@LibSegNa_qvsDV1n2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117@LibSegNa_qvsDV1n3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117@LibSegNa_qvsDV1n4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117@LibSegNa_qvsDV1n5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117@LibSegNa_qvsDV1n3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117@LibSegNa_qvsDV1z2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117@LibSegNa_qvsDV1z3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117@LibSegNa_qvsDV1z2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117@LibSegNa_qvsDV1z5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117@LibSegNa_qvsDV1z2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117@LibSegNa_qvsDV1z3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117@LibSegNa_qvsDV1z4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117@LibSegNa_qvsDV1z5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117@LibSegNa_qvsDV1z3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsDV22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsDV23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsDV22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsDV25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsDV22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsDV23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsDV24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsDV25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsDV23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIKL2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIKL3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIKL2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIKL5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIKL2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIKL3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIKL4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIKL5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIKL3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIKS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIKS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIKS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIKS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIKS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIKS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIKS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIKS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIKS3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIVL2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIVL3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIVL2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIVL5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIVL2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIVL3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIVL4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIVL5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIVL3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIVS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIVS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIVS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIVS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIVS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIVS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIVS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIVS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsIVS3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsJ12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsJ13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsJ12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsJ15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsJ12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsJ13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsJ14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsJ15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsJ13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsJ22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsJ23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsJ22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsJ25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsJ22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsJ23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsJ24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsJ25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsJ23kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_002ASegItab_Na_9a541f2ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsKd22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsKd23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsKd22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsKd25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsKd22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsKd23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsKd24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsKd25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117?LibSegNa_qvsKd23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsQK2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsQK3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsQK2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsQK5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsQK2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsQK3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsQK4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsQK5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsQK3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsQV2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsQV3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsQV2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsQV5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsQV2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsQV3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsQV4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsQV5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117>LibSegNa_qvsQV3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117=LibSegNa_qvsX2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117=LibSegNa_qvsX3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117=LibSegNa_qvsX2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117=LibSegNa_qvsX5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117=LibSegNa_qvsX2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117=LibSegNa_qvsX3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117=LibSegNa_qvsX4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117=LibSegNa_qvsX5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0175;BndP_Na_117=LibSegNa_qvsX3kn0".

Module LibSegNa_qvsDKz.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b2e630.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b2e630.IT.
Definition ENDS : list Z := [741224].
Definition STOPS1 : list Z := [741224] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7+$24#50$9$:$;$<$=$>$?$10$11$24$13#7???8000+&6+$24#50#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-10,4#!$25-8,8#"%pstring).
Definition ss0 : sym_state := SS 740984 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;4?68#;4?68#5=#;4?68,20#$1+$2-40$3$4$5$6$7+$24#50$9##$<$=$>$25#$11$24$13#7???8000+&6+$24#50#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?,,>'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-10,4#!$25-8,8#,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 741224 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b2e630.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 740984 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b2e630.IT BndT_Na_002.SegItab_Na_b2e630.IT_sound BF NX0 BR XSTEP F0 PSS plan 740984 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvsDKz.

Module LibSegNa_qvsDV1n.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b2e630.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b2e630.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 741124] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7+$24#50$9$:$;$<$=$>$?$10$11$24$13#7???8000+&6+$24#50#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-14,4#1!$25-10,4#1!$25-8,8$2;'$2;#1^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 740984 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#?4640#;4?04#?4640#5=#?4640,20##;4?04+$2-40$3$4$5$6$7+$24#50$9+$24#30#2<$<$=$>$25#$11$24+$24#30#7???8000+&6+$24#50#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?,,11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-14,4#1!$25-10,4#1!$25-8,8$2;'$2;#1^#?#???????????????,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b2e630.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 740984 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b2e630.IT BndT_Na_002.SegItab_Na_b2e630.IT_sound BF NX0 BR XSTEP F0 PSS plan 740984 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvsDV1n.

Module LibSegNa_qvsDV1z.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b2e630.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b2e630.IT.
Definition ENDS : list Z := [741124].
Definition STOPS1 : list Z := [741124] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7+$24#50$9$:$;$<$=$>$?$10$11$24$13#7???8000+&6+$24#50#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",10'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-14,4#1!$25-10,4#1!$25-8,8#"%pstring).
Definition ss0 : sym_state := SS 740984 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;4?04#;4?04#5=#;4?04,20#$1+$2-40$3$4$5$6$7+$24#50$9##$<$=$>$25#$11$24+$24#30#7???8000+&6+$24#50#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?,,10'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-14,4#1!$25-10,4#1!$25-8,8#,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 741124 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b2e630.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 740984 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b2e630.IT BndT_Na_002.SegItab_Na_b2e630.IT_sound BF NX0 BR XSTEP F0 PSS plan 740984 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvsDV1z.

Module LibSegNa_qvsDV2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b2e630.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b2e630.IT.
Definition ENDS : list Z := [741124].
Definition STOPS1 : list Z := [741124] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7+$24#50$9$:$;$<$=$>$?$10$11$24$13#7???8000+&6+$24#50#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1!$25-18,4#1!$25-14,4#2!$25-10,4#1"%pstring).
Definition ss0 : sym_state := SS 740984 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;4?04#;4?04#5=#;4?04,20#$1+$2-40$3$4$5$6$7+$24#50$9#2#2$<$=$>$25#$11$24+$24#30#7???8000+&6+$24#50#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?,,>'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1!$25-18,4#1!$25-14,4#2!$25-10,4#1,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 741124 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b2e630.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 740984 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b2e630.IT BndT_Na_002.SegItab_Na_b2e630.IT_sound BF NX0 BR XSTEP F0 PSS plan 740984 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvsDV2.

Module LibSegNa_qvsIKL.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b2e630.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b2e630.IT.
Definition ENDS : list Z := [779056].
Definition STOPS1 : list Z := [779056; 741672] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$8$21$:$;$<$=$>$?$10$11$24+$24#30#7???8000$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",15'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000'$21#6;6000#7??????????0)##7???7000#100000001000$21##10#&6$21#3#7???8000#1#&6+$21#8#3#7???8000#1!$21#,8$30!$21#8,8$31'$30##800000000000'$31##4000000"%pstring).
Definition ss0 : sym_state := SS 741240 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;>330#;5128#;>330#5=#;>330,20##;5128+$2-40$3$4$5$6$7$8$21+$24#30+$2=$2>$30+$30$31$31$?$10$11$24+$24#30#7???8000$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,15'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000'$21#6;6000#7??????????0)##7???7000#100000001000$21##10#&6$21#3#7???8000#1#&6+$21#8#3#7???8000#1!$21#,8$30!$21#8,8$31'$30##800000000000'$31##4000000,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 779056 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b2e630.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 741240 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b2e630.IT BndT_Na_002.SegItab_Na_b2e630.IT_sound BF NX0 BR XSTEP F0 PSS plan 741240 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvsIKL.

Module LibSegNa_qvsIKS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b2e630.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b2e630.IT.
Definition ENDS : list Z := [779056].
Definition STOPS1 : list Z := [779056; 741672] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$8$21$:$;$<$=$>$?$10$11$24+$24#30#7???8000$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##'$21#6;6000#7??????????0)##7???7000#100000001000$21##10#&6$21#3#7???8000#1#&6+$21#8#3#7???8000#1!$21#,8$30!$21#8,8$31'$30##800000000000'$31##4000000"%pstring).
Definition ss0 : sym_state := SS 741240 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;>330#;5128#;>330#5=#;>330,20##;5128+$2-40$3$4$5$6$7$8$21+$24#30++$24&6$2<#1#31$30+$30$31$31$?$10$11$24+$24#30#7???8000$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,?'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##'$21#6;6000#7??????????0)##7???7000#100000001000$21##10#&6$21#3#7???8000#1#&6+$21#8#3#7???8000#1!$21#,8$30!$21#8,8$31'$30##800000000000'$31##4000000,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 779056 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b2e630.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 741240 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b2e630.IT BndT_Na_002.SegItab_Na_b2e630.IT_sound BF NX0 BR XSTEP F0 PSS plan 741240 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvsIKS.

Module LibSegNa_qvsIVL.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b2e630.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b2e630.IT.
Definition ENDS : list Z := [779056].
Definition STOPS1 : list Z := [779056; 741556] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$8$21$:$;$<$=$>$?$10$11$24+$24#30#7???8000$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",15'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000'$21#6;6000#7??????????0)##7???7000#100000001000$21##10#&6$21#3#7???8000#1#&6+$21#8#3#7???8000#1!$21#,8$30!$21#8,8$31'$30##800000000000'$31##4000000"%pstring).
Definition ss0 : sym_state := SS 741136 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;>330#;50;4#;>330#5=#;>330,20##;50;4+$2-40$3$4$5$6$7$8$21+$24#30+$2=$2>$30+$30$31$31$?$10$11$24+$24#30#7???8000$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,15'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000'$21#6;6000#7??????????0)##7???7000#100000001000$21##10#&6$21#3#7???8000#1#&6+$21#8#3#7???8000#1!$21#,8$30!$21#8,8$31'$30##800000000000'$31##4000000,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 779056 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b2e630.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 741136 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b2e630.IT BndT_Na_002.SegItab_Na_b2e630.IT_sound BF NX0 BR XSTEP F0 PSS plan 741136 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvsIVL.

Module LibSegNa_qvsIVS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b2e630.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b2e630.IT.
Definition ENDS : list Z := [779056].
Definition STOPS1 : list Z := [779056; 741556] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$8$21$:$;$<$=$>$?$10$11$24+$24#30#7???8000$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##'$21#6;6000#7??????????0)##7???7000#100000001000$21##10#&6$21#3#7???8000#1#&6+$21#8#3#7???8000#1!$21#,8$30!$21#8,8$31'$30##800000000000'$31##4000000"%pstring).
Definition ss0 : sym_state := SS 741136 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;>330#;50;4#;>330#5=#;>330,20##;50;4+$2-40$3$4$5$6$7$8$21+$24#30++$24&6$2<#1#31$30+$30$31$31$?$10$11$24+$24#30#7???8000$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,?'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##'$21#6;6000#7??????????0)##7???7000#100000001000$21##10#&6$21#3#7???8000#1#&6+$21#8#3#7???8000#1!$21#,8$30!$21#8,8$31'$30##800000000000'$31##4000000,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 779056 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b2e630.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 741136 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b2e630.IT BndT_Na_002.SegItab_Na_b2e630.IT_sound BF NX0 BR XSTEP F0 PSS plan 741136 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvsIVS.

Module LibSegNa_qvsJ1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b2e630.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b2e630.IT.
Definition ENDS : list Z := [741696].
Definition STOPS1 : list Z := [741696] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 741356 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;5140#;5140#5=#;5140,20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 741696 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b2e630.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 741356 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b2e630.IT BndT_Na_002.SegItab_Na_b2e630.IT_sound BF NX0 BR XSTEP F0 PSS plan 741356 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvsJ1.

Module LibSegNa_qvsJ2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b2e630.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b2e630.IT.
Definition ENDS : list Z := [741696].
Definition STOPS1 : list Z := [741696] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 741444 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;5140#;5140#5=#;5140,20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 741696 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b2e630.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 741444 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b2e630.IT BndT_Na_002.SegItab_Na_b2e630.IT_sound BF NX0 BR XSTEP F0 PSS plan 741444 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvsJ2.

Module LibSegNa_qvsKd2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_9a541f.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_9a541f.IT.
Definition ENDS : list Z := [798520].
Definition STOPS1 : list Z := [798520; 741444] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7+$24#50$21$:$;$<$23$27$?$10$11$24$13#7???8000+&6+$24#50#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",14%#10000#158000'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1#&6+$24#10#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$25-18,4#!$25-10,4#!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##38#&6$26#3#7???8000#1!$26#,8#151130###80022232#1"%pstring).
Definition ss0 : sym_state := SS 740984 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#<2?38#;5044#<2?38#5=#<2?38,20##;5044+$2-40$3$4$5$6$7+$24#50$21$26$21$23$27$27#<2?38#$11$24$13#7???8000+&6+$24#50#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?,,14%#10000#158000'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1#&6+$24#10#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$25-18,4#!$25-10,4#!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##38#&6$26#3#7???8000#1!$26#,8#151130###80022232#1,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_9a541f.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 740984 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_9a541f.IT BndT_Na_002.SegItab_Na_9a541f.IT_sound BF NX0 BR XSTEP F0 PSS plan 740984 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvsKd2.

Module LibSegNa_qvsQK.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b2e630.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b2e630.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 741240] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$24$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 36) 7036928 140737488355232].
Definition ss0 : sym_state := SS 741224 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#?4640#;4?78#?4640#5=#?4640,20##;4?78+$2-40$3$4$5$6$7$8$9+$24#30#22$<$=$>$?$10$11$24+$24#30$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1'$24#6;6000#7?????????:0,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b2e630.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 741224 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b2e630.IT BndT_Na_002.SegItab_Na_b2e630.IT_sound BF NX0 BR XSTEP F0 PSS plan 741224 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvsQK.

Module LibSegNa_qvsQV.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b2e630.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b2e630.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 741136] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#30$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 36) 7036928 140737488355232].
Definition ss0 : sym_state := SS 741124 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#?4640#;4?10#?4640#5=#?4640,20##;4?10+$2-40$3$4$5$6$7$8$9+$24#30#22$<$=$>$?$10$11$12+$24#30$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1'$24#6;6000#7?????????:0,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b2e630.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 741124 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b2e630.IT BndT_Na_002.SegItab_Na_b2e630.IT_sound BF NX0 BR XSTEP F0 PSS plan 741124 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvsQV.

Module LibSegNa_qvsX.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b2e630.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b2e630.IT.
Definition ENDS : list Z := [741852].
Definition STOPS1 : list Z := [741852] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$2#7???7?801040#800000000000&$2#10!$2-8,8$3<!$2-10,8$3=!$2-18,8$3>!$2-20,8$3?!$2-28,8$40!$2-30,8$41!$2-38,8$42"%pstring).
Definition ss0 : sym_state := SS 741816 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;51=<#;51=<#5=#;51=<,20#$3<$2$3$4$5$6$7$3=$3>#1$;$<$=$>$?$10$11$3?$40$41$42$16$17$18$19$1:$1;$1<$1=$1>$1?,,9'$2#7???7?801040#800000000000&$2#10!$2-8,8$3<!$2-10,8$3=!$2-18,8$3>!$2-20,8$3?!$2-28,8$40!$2-30,8$41!$2-38,8$42,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 741852 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b2e630.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 741816 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b2e630.IT BndT_Na_002.SegItab_Na_b2e630.IT_sound BF NX0 BR XSTEP F0 PSS plan 741816 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvsX.

End BndP_Na_117.
