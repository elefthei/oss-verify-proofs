(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
Set Warnings "-require-in-module".
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel. From Stdlib Require ZArith NArith List Lia Bool. From LinuxProcessSemantics.LinuxProcessSem Require BvBase RiscvSemantics MemImageType State Run. From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Asan. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_003 BndT_Na_002. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Module BndP_Na_062.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_003 BndT_Na_002.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Na_062 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d093992ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qfuQR2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qfuQR3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qfuQR2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qfuQR5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qfuQR2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qfuQR3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qfuQR4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qfuQR5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qfuQR3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qfuX2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qfuX3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qfuX2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qfuX5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qfuX2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qfuX3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qfuX4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qfuX5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qfuX3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qfuZ2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qfuZ3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qfuZ2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qfuZ5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qfuZ2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qfuZ3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qfuZ4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qfuZ5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qfuZ3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_002ASegItab_Na_988fac2ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgEL02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgEL03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgEL02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgEL05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgEL02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgEL03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgEL04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgEL05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgEL03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgEL12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgEL13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgEL12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgEL15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgEL12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgEL13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgEL14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgEL15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgEL13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgES02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgES03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgES02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgES05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgES02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgES03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgES04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgES05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgES03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgES12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgES13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgES12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgES15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgES12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgES13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgES14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgES15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgES13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgML2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgML3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgML2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgML5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgML2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgML3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgML4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgML5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgML3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgMS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgMS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgMS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgMS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgMS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgMS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgMS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgMS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgMS3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgNM2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgNM3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgNM2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgNM5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgNM2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgNM3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgNM4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgNM5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgNM3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgNZ2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgNZ3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgNZ2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgNZ5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgNZ2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgNZ3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgNZ4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgNZ5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062=LibSegNa_qgNZ3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062<LibSegNa_qgT2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062<LibSegNa_qgT3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062<LibSegNa_qgT2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062<LibSegNa_qgT5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062<LibSegNa_qgT2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062<LibSegNa_qgT3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062<LibSegNa_qgT4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062<LibSegNa_qgT5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062<LibSegNa_qgT3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e95a0a2ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgbA02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgbA03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgbA02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgbA05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgbA02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgbA03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgbA04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgbA05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062>LibSegNa_qgbA03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062?LibSegNa_qgbA162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062?LibSegNa_qgbA163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062?LibSegNa_qgbA162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062?LibSegNa_qgbA165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062?LibSegNa_qgbA162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062?LibSegNa_qgbA163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062?LibSegNa_qgbA164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062?LibSegNa_qgbA165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_062?LibSegNa_qgbA163kn0".

Module LibSegNa_qfuQR.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d09399.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d09399.IT.
Definition ENDS : list Z := [758400].
Definition STOPS1 : list Z := [758400; 758220; 758440] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15+$32$28+$32$28$18$19+$32#20$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 50) 7036928 140737488354816;
   KAlign (EVar 50) 32;
   KDisj (SA (ELit 0) 2147446784) (ELit 17592186048512) (SA (EVar 50) 0) (ELit 512);
   KRange (EVar 40) 33 51].
Definition ss0 : sym_state := SS 758428 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#;9280#;91<<#;92:8#;9280#5=#;9280,20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15++$28$32-1++$28$32-1$18$19+$32#20$1;$1<$1=$1>$1?,,4'$32#6;6000#7????????>00&$32#20)##7???7000#100000001000$32##200'$28#21#33,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 758400 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d09399.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 758428 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d09399.IT BndT_Na_003.SegItab_Na_d09399.IT_sound BF NX0 BR XSTEP F0 PSS plan 758428 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qfuQR.

Module LibSegNa_qfuX.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d09399.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d09399.IT.
Definition ENDS : list Z := [758400].
Definition STOPS1 : list Z := [758400; 758148; 758732; 758220] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9+@-1$26-1#:$<$=$26$24$10$11$12$13$14$15$16$17$32$19+$32#20$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 50) 7036928 140737488354816;
   KAlign (EVar 50) 32;
   KDisj (SA (ELit 0) 2147446784) (ELit 17592186048512) (SA (EVar 50) 0) (ELit 512);
   KRange (EVar 36) 0 9;
   KRange (EVar 38) 0 19].
Definition ss0 : sym_state := SS 758192 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,5#;9280#;9184#;93<<#;91<<#;9280#5=#;9280,20#$1$2$3$4$5$6$7$8$9+@-1$26-1^#?#?????????????01$<$=$26$24$10$11$12$13$14$15++$26$32#20++$26$32#20$32$19+$32#20$1;$1<$1=$1>$1?,,5'$32#6;6000#7????????>00&$32#20)##7???7000#100000001000$32##200'$24##9'$26##13,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 758400 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d09399.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 758192 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d09399.IT BndT_Na_003.SegItab_Na_d09399.IT_sound BF NX0 BR XSTEP F0 PSS plan 758192 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qfuX.

Module LibSegNa_qfuZ.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d09399.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d09399.IT.
Definition ENDS : list Z := [758728].
Definition STOPS1 : list Z := [758728] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; (EVar 52); EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; (EVar 50); (EVar 35); EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",18'$32#6;6000#7????????>00&$32#20)##7???7000#100000001000$32##200!$32#1?8,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##200$33##1'$34#7???7?801080#800000000000&$34#10!$34-8,8$35!$34-10,8$36!$34-18,8$37!$34-20,8$38!$34-28,8$39!$34-30,8$3:!$34-38,8$3;!$34-40,8$3<!$34-48,8$3=!$34-50,8$3>!$34-58,8$3?!$34-60,8$40)+$34-80##80$32##200)+$34-80##80$33##1"%pstring).
Definition ss0 : sym_state := SS 758380 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;93<8#;93<8#5=#;93<8,20#$35$34$3$4$5$6$7$36$37$23$;$<$=$>$?$10$11$38$39$3:$3;$3<$3=$3>$3?$40$1;$1<$1=$1>$1?,,19!$33#,1#'$32#6;6000#7????????>00&$32#20)##7???7000#100000001000$32##200!$32#1?8,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##200$33##1'$34#7???7?801080#800000000000&$34#10!$34-8,8$35!$34-10,8$36!$34-18,8$37!$34-20,8$38!$34-28,8$39!$34-30,8$3:!$34-38,8$3;!$34-40,8$3<!$34-48,8$3=!$34-50,8$3>!$34-58,8$3?!$34-60,8$40)+$34-80##80$32##200)+$34-80##80$33##1,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 758728 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d09399.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 758380 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d09399.IT BndT_Na_003.SegItab_Na_d09399.IT_sound BF NX0 BR XSTEP F0 PSS plan 758380 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qfuZ.

Module LibSegNa_qgEL0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_988fac.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_988fac.IT.
Definition ENDS : list Z := [1374112].
Definition STOPS1 : list Z := [1374112] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:+$24-2$27$22$22#$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)$2-50#50$:##18!$:#,1$21'$21##??'&9$21#1#1#1!$:#,8$24'&9$24#1#1#1'$24#1;#40000000!$:#10,8$23'$23#1000#800000000000'$22##40000000'$27#1#40000000'&4+@#2$24-4++$24$27-2##"%pstring).
Definition ss0 : sym_state := SS 1000692 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-80), ELit 80)].
Definition F0L : list SR.region := [((EVar 2), (-80), 80)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#14?7:0#14?7:0#5=#14?7:0,20##?45;4+$2-50$3$4$5$6$7$:+$24-2+@#8&6+@#2$24-4#3#8+@-1$24-7+@#2$24-4$22$22#$10$11$10#$22$23$22+@#8&6+@#2$24-4#3#8$18$19$1:$1;$1<$1=$1>$1?,,1<!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)$2-50#50$:##18!$:#,1$21'$21##??'&9$21#1#1#1!$:#,8$24'&9$24#1#1#1'$24#1;#40000000!$:#10,8$23'$23#1000#800000000000'$22##40000000'$27#1#40000000'&4+@#2$24-4++$24$27-2##,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 0%nat.
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
Definition ps0 : SR.post_spec := SR.PS 1374112 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_988fac.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 1000692 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_988fac.IT BndT_Na_002.SegItab_Na_988fac.IT_sound BF NX0 BR XSTEP F0 PSS plan 1000692 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgEL0.

Module LibSegNa_qgEL1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_988fac.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_988fac.IT.
Definition ENDS : list Z := [1374112].
Definition STOPS1 : list Z := [1374112] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:+$24-2$27$22$22#$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)$2-50#50$:##18!$:#,1$21'$21##??'&9$21#1#1#1!$:#,8$24'&9$24#1#1#1'$24#1;#40000000!$:#10,8$23'$23#1000#800000000000'$22##40000000'$27#1#40000000'&4+@#2$24-4++$24$27-2#1#1"%pstring).
Definition ss0 : sym_state := SS 1000692 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-80), ELit 80)].
Definition F0L : list SR.region := [((EVar 2), (-80), 80)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#14?7:0#14?7:0#5=#14?7:0,20##?45;4+$2-50$3$4$5$6$7$:+$24-2+@#8&6++$24$27-2#3#8+@-1$24-7++$24$27-2$22$22#$10$11$10#$22$23$22+@#8&6++$24$27-2#3#8$18$19$1:$1;$1<$1=$1>$1?,,1<!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)$2-50#50$:##18!$:#,1$21'$21##??'&9$21#1#1#1!$:#,8$24'&9$24#1#1#1'$24#1;#40000000!$:#10,8$23'$23#1000#800000000000'$22##40000000'$27#1#40000000'&4+@#2$24-4++$24$27-2#1#1,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 0%nat.
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
Definition ps0 : SR.post_spec := SR.PS 1374112 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_988fac.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 1000692 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_988fac.IT BndT_Na_002.SegItab_Na_988fac.IT_sound BF NX0 BR XSTEP F0 PSS plan 1000692 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgEL1.

Module LibSegNa_qgES0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_988fac.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_988fac.IT.
Definition ENDS : list Z := [1374112].
Definition STOPS1 : list Z := [1374112] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; ELit 22; (EVar 39); (EVar 34); (EVar 34); ELit 0; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",<'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)$2-50#50$:##18!$:#,1$21'$21##2<'&9$21#1##'$22##16'$27#1#16"%pstring).
Definition ss0 : sym_state := SS 1000692 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-80), ELit 80)].
Definition F0L : list SR.region := [((EVar 2), (-80), 80)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#14?7:0#14?7:0#5=#14?7:0,20##?45;4+$2-50$3$4$5$6$7$:#16#30^#?#?????????????>1#2<$22$22#$10$11$10#$22+$:#1$22#30$18$19$1:$1;$1<$1=$1>$1?,,16!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)$2-50#50$:##18!$:#,1$21'$21##2<'&9$21#1##'$22##16'$27#1#16,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 0%nat.
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
Definition ps0 : SR.post_spec := SR.PS 1374112 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_988fac.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 1000692 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_988fac.IT BndT_Na_002.SegItab_Na_988fac.IT_sound BF NX0 BR XSTEP F0 PSS plan 1000692 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgES0.

Module LibSegNa_qgES1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_988fac.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_988fac.IT.
Definition ENDS : list Z := [1374112].
Definition STOPS1 : list Z := [1374112] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; ELit 22; (EVar 39); (EVar 34); (EVar 34); ELit 0; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",<'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)$2-50#50$:##18!$:#,1$21'$21##2<'&9$21#1##'$22##16'$27#17#40000000"%pstring).
Definition ss0 : sym_state := SS 1000692 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-80), ELit 80)].
Definition F0L : list SR.region := [((EVar 2), (-80), 80)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#14?7:0#14?7:0#5=#14?7:0,20##?45;4+$2-50$3$4$5$6$7$:#16+@#8&6+$27#16#3#8^#?#?????????????>1+$27#16$22$22#$10$11$10#$22+$:#1$22+@#8&6+$27#16#3#8$18$19$1:$1;$1<$1=$1>$1?,,16!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)$2-50#50$:##18!$:#,1$21'$21##2<'&9$21#1##'$22##16'$27#17#40000000,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 0%nat.
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
Definition ps0 : SR.post_spec := SR.PS 1374112 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_988fac.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 1000692 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_988fac.IT BndT_Na_002.SegItab_Na_988fac.IT_sound BF NX0 BR XSTEP F0 PSS plan 1000692 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgES1.

Module LibSegNa_qgML.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_988fac.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_988fac.IT.
Definition ENDS : list Z := [991168].
Definition STOPS1 : list Z := [991168] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$:$28$25$;$<$=$>$?$10$11$12#$22$23$22$26$25$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",<'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)$2-50#50$:##18'$25#1000#800000000000'$26#30#80000000'$22##40000000'$23#1000#800000000000'$28#19#40000000"%pstring).
Definition ss0 : sym_state := SS 1000908 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#?1?<0#?1?<0#5=#?1?<0,20##?4600+$2-50$3$4$5$6$7$:$28$23+$28#1$<$=$>$?$10$11$12#$22$23$22$26$25$19$1:$1;$1<$1=$1>$1?,,<'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)$2-50#50$:##18'$25#1000#800000000000'$26#30#80000000'$22##40000000'$23#1000#800000000000'$28#19#40000000,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 0%nat.
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_988fac.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 1000908 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_988fac.IT BndT_Na_002.SegItab_Na_988fac.IT_sound BF NX0 BR XSTEP F0 PSS plan 1000908 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgML.

Module LibSegNa_qgMS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_988fac.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_988fac.IT.
Definition ENDS : list Z := [1001016].
Definition STOPS1 : list Z := [1001016] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$:#16$25$;$<$=$>$?$10$11$12#$22$23$22$26$25$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",17'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)$2-50#50$:##18'$25#1000#800000000000'$26#30#80000000'$22##40000000'$23#1000#800000000000'$28#16#40000000!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31!$2-38,8$32!$2-40,8$33!$2-48,8$34!$2-50,8$35&$26#8"%pstring).
Definition ss0 : sym_state := SS 1000908 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 10), (0), ELit 8); ((EVar 10), (16), ELit 8)].
Definition F0L : list SR.region := [((EVar 10), (0), 8); ((EVar 10), (16), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#?4638#?4638#5=#?4638,20#$2<$2$3$4$5$6$7$2=$2>+$26#1#17$<$=$>$?$10$11$2?$30$31$32$33$34$35$19$1:$1;$1<$1=$1>$1?,,19!$:#10,8$25!$:#,8+$26#1'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)$2-50#50$:##18'$25#1000#800000000000'$26#30#80000000'$22##40000000'$23#1000#800000000000'$28#16#40000000!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31!$2-38,8$32!$2-40,8$33!$2-48,8$34!$2-50,8$35&$26#8,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 0%nat.
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
Definition ps0 : SR.post_spec := SR.PS 1001016 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_988fac.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 1000908 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_988fac.IT BndT_Na_002.SegItab_Na_988fac.IT_sound BF NX0 BR XSTEP F0 PSS plan 1000908 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgMS.

Module LibSegNa_qgNM.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_988fac.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_988fac.IT.
Definition ENDS : list Z := [519092].
Definition STOPS1 : list Z := [519092] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$:$28$25$;$<$=$>$?$10$11$12#$22$23$22$26$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",<'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)$2-50#50$:##18'$25#1000#800000000000'$26#30#80000000'$23#1000#800000000000'$28#16#40000000'$22#1#40000000"%pstring).
Definition ss0 : sym_state := SS 1000884 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#7>;;4#7>;;4#5=#7>;;4,20##?45<<+$2-50$3$4$5$6$7$:$28$25$23$22$=$>$?$10$11$12#$22$23$22$26$25$19$1:$1;$1<$1=$1>$1?,,<'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)$2-50#50$:##18'$25#1000#800000000000'$26#30#80000000'$23#1000#800000000000'$28#16#40000000'$22#1#40000000,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 0%nat.
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
Definition ps0 : SR.post_spec := SR.PS 519092 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_988fac.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 1000884 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_988fac.IT BndT_Na_002.SegItab_Na_988fac.IT_sound BF NX0 BR XSTEP F0 PSS plan 1000884 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgNM.

Module LibSegNa_qgNZ.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_988fac.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_988fac.IT.
Definition ENDS : list Z := [1000908].
Definition STOPS1 : list Z := [1000908] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$:$28$25$;$<$=$>$?$10$11$12#$22$23$22$26$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",<'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)$2-50#50$:##18'$25#1000#800000000000'$26#30#80000000'$23#1000#800000000000'$28#16#40000000'$22##"%pstring).
Definition ss0 : sym_state := SS 1000884 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#?45<<#?45<<#5=#?45<<,20#$1+$2-50$3$4$5$6$7$:$28$25$;$<$=$>$?$10$11$12#$22$23$22$26$25$19$1:$1;$1<$1=$1>$1?,,<'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)$2-50#50$:##18'$25#1000#800000000000'$26#30#80000000'$23#1000#800000000000'$28#16#40000000'$22##,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 0%nat.
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
Definition ps0 : SR.post_spec := SR.PS 1000908 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_988fac.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 1000884 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_988fac.IT BndT_Na_002.SegItab_Na_988fac.IT_sound BF NX0 BR XSTEP F0 PSS plan 1000884 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgNZ.

Module LibSegNa_qgT.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_988fac.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_988fac.IT.
Definition ENDS : list Z := [1001016].
Definition STOPS1 : list Z := [1001016] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$:$28$37$;$<$=$>$?$10$11$12#$22$23$22$26$25$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",17'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)$2-50#50$:##18'$25#1000#800000000000'$26#30#80000000'$22##40000000'$23#1000#800000000000'$28#16#40000000!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31!$2-38,8$32!$2-40,8$33!$2-48,8$34!$2-50,8$35&$26#8"%pstring).
Definition ss0 : sym_state := SS 1000960 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 10), (0), ELit 8); ((EVar 10), (16), ELit 8)].
Definition F0L : list SR.region := [((EVar 10), (0), 8); ((EVar 10), (16), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#?4638#?4638#5=#?4638,20#$2<$2$3$4$5$6$7$2=$2>+$26#1$;$<$=$>$?$10$11$2?$30$31$32$33$34$35$19$1:$1;$1<$1=$1>$1?,,19!$:#10,8$25!$:#,8+$26#1'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)$2-50#50$:##18'$25#1000#800000000000'$26#30#80000000'$22##40000000'$23#1000#800000000000'$28#16#40000000!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31!$2-38,8$32!$2-40,8$33!$2-48,8$34!$2-50,8$35&$26#8,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 0%nat.
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
Definition ps0 : SR.post_spec := SR.PS 1001016 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_988fac.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 1000960 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_988fac.IT BndT_Na_002.SegItab_Na_988fac.IT_sound BF NX0 BR XSTEP F0 PSS plan 1000960 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgT.

Module LibSegNa_qgbA0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e95a0a.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e95a0a.IT.
Definition ENDS : list Z := [412000].
Definition STOPS1 : list Z := [412000; 834840] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 39); EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KImg 65536 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487296 140737488355328;
   KAlign (EVar 2) 32;
   KWr (SA (EVar 2) (-128)) (ELit 128)].
Definition ss0 : sym_state := SS 834716 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#64960#<;=18#64960#5=#64960,20##<;=10+$2-80$3$4$5$6$7$2+$2-80#60#15?:78#1$=$>$?$10$11$12$21$27#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?,,14!$2-68,8$1;!$2-60,8$1:!$2-58,8$19!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1!$2-80,8#%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801080#800000000000&$2#20($2-80#80,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e95a0a.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 834716 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e95a0a.IT BndT_Na_003.SegItab_Na_e95a0a.IT_sound BF NX0 BR XSTEP F0 PSS plan 834716 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgbA0.

Module LibSegNa_qgbA16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e95a0a.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e95a0a.IT.
Definition ENDS : list Z := [412000].
Definition STOPS1 : list Z := [412000; 834840] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2#10$3$4$5$6$7$8$9$21$27$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 65536 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487296 140737488355312;
   KAlign (EVar 2) 32;
   KWr (SA (EVar 2) (-128)) (ELit 144)].
Definition ss0 : sym_state := SS 834716 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#64960#<;=18#64960#5=#64960,20##<;=10+$2-80$3$4$5$6$7+$2#10+$2-80#60#15?:78#1$=$>$?$10$11$12$21$27#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?,,14!$2-58,8$1;!$2-50,8$1:!$2-48,8$19!$2-40,8$18!$2-38,8$17!$2-30,8$16!$2-28,8$15!$2-20,8$14!$2-18,8$13!$2-10,8$12!$2-8,8$9!$2#,8$8!$2#8,8$1!$2-70,8#%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801080#7??????????0&$2#20($2-80#90,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e95a0a.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 834716 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e95a0a.IT BndT_Na_003.SegItab_Na_e95a0a.IT_sound BF NX0 BR XSTEP F0 PSS plan 834716 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgbA16.

End BndP_Na_062.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_000 BndT_Na_002.
Module BndP_Na_070.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_000 BndT_Na_002.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Na_070 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_000ASegItab_Na_1917132ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qhaR02BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qhaR03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qhaR02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qhaR05XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qhaR02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qhaR03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qhaR04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qhaR05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qhaR03kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qhaR162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qhaR163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qhaR162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qhaR165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qhaR162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qhaR163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qhaR164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qhaR165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qhaR163kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_002ASegItab_Na_908c642ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiA02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiA03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiA02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiA05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiA02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiA03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiA04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiA05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiA03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qiA162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qiA163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qiA162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qiA165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qiA162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qiA163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qiA164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qiA165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qiA163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiBL2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiBL3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiBL2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiBL5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiBL2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiBL3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiBL4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiBL5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiBL3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qiBL02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qiBL03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qiBL02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qiBL05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qiBL02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qiBL03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qiBL04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qiBL05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qiBL03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiBS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiBS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiBS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiBS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiBS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiBS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiBS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiBS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiBS3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qiBS02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qiBS03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qiBS02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qiBS05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qiBS02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qiBS03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qiBS04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qiBS05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070>LibSegNa_qiBS03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1L02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1L03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1L02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1L05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1L02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1L03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1L04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1L05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1L03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1L12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1L13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1L12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1L15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1L12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1L13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1L14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1L15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1L13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1S02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1S03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1S02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1S05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1S02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1S03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1S04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1S05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1S03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1S12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1S13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1S12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1S15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1S12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1S13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1S14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1S15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070?LibSegNa_qiC1S13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiC42BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiC43NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiC42BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiC45XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiC42F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiC43PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiC44planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiC45regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070=LibSegNa_qiC43kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070<LibSegNa_qiQ2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070<LibSegNa_qiQ3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070<LibSegNa_qiQ2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070<LibSegNa_qiQ5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070<LibSegNa_qiQ2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070<LibSegNa_qiQ3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070<LibSegNa_qiQ4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070<LibSegNa_qiQ5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_070<LibSegNa_qiQ3kn0".

Module LibSegNa_qhaR0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_191713.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_191713.IT.
Definition ENDS : list Z := [718888].
Definition STOPS1 : list Z := [718888] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$3:+$2-:0$3$4$5$6$7$2+$2-:0$:$;$<$=$>$?$10$11^#?#??????????????8+&6$28#3#7???8000$24+$28#60+$28#1;0+$28#208^#?#??????????????8+$28#250+$28#490$28$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",10'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0!$2-8,8$2:!$2-10,8$2;!$2-18,8$2<!$2-20,8$2=!$2-28,8$2>!$2-30,8$2?!$2-38,8$30!$2-40,8$31!$2-48,8$32!$2-50,8$33!$2-58,8$34!$2-60,8$35!$2-68,8$36"%pstring).
Definition ss0 : sym_state := SS 718808 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#:?828#:?828#5=#:?828,20#$2:$2$3$4$5$6$7$2;$2<#$;$<$=$>$?$10$11$2=$2>$2?$30$31$32$33$34$35$36$1<$1=$1>$1?,,10'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0!$2-8,8$2:!$2-10,8$2;!$2-18,8$2<!$2-20,8$2=!$2-28,8$2>!$2-30,8$2?!$2-38,8$30!$2-40,8$31!$2-48,8$32!$2-50,8$33!$2-58,8$34!$2-60,8$35!$2-68,8$36,40!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 0%nat.
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
Definition ps0 : SR.post_spec := SR.PS 718888 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_191713.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 718808 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_191713.IT BndT_Na_000.SegItab_Na_191713.IT_sound BF NX0 BR XSTEP F0 PSS plan 718808 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qhaR0.

Module LibSegNa_qhaR16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_191713.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_191713.IT.
Definition ENDS : list Z := [718888].
Definition STOPS1 : list Z := [718888] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$3:+$2-:0$3$4$5$6$7+$2#10+$2-:0$:$;$<$=$>$?$10$11^#?#??????????????8+&6$28#3#7???8000$24+$28#60+$28#1;0+$28#208^#?#??????????????8+$28#250+$28#490$28$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",10'$2#7???7?8010>0#7??????????0&$2#20($2-:0#;0!$2#8,8$2:!$2#,8$2;!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31!$2-38,8$32!$2-40,8$33!$2-48,8$34!$2-50,8$35!$2-58,8$36"%pstring).
Definition ss0 : sym_state := SS 718808 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#:?828#:?828#5=#:?828,20#$2:+$2#10$3$4$5$6$7$2;$2<#$;$<$=$>$?$10$11$2=$2>$2?$30$31$32$33$34$35$36$1<$1=$1>$1?,,10'$2#7???7?8010>0#7??????????0&$2#20($2-:0#;0!$2#8,8$2:!$2#,8$2;!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31!$2-38,8$32!$2-40,8$33!$2-48,8$34!$2-50,8$35!$2-58,8$36,40!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 0%nat.
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
Definition ps0 : SR.post_spec := SR.PS 718888 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_191713.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 718808 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_191713.IT BndT_Na_000.SegItab_Na_191713.IT_sound BF NX0 BR XSTEP F0 PSS plan 718808 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qhaR16.

Module LibSegNa_qiA0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_908c64.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_908c64.IT.
Definition ENDS : list Z := [412000].
Definition STOPS1 : list Z := [412000; 759404] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KImg 1376256 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487296 140737488355328;
   KAlign (EVar 2) 32;
   KWr (SA (EVar 2) (-128)) (ELit 128)].
Definition ss0 : sym_state := SS 759280 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#64960#;966<#64960#5=#64960,20##;966<+$2-80$3$4$5$6$7$2+$2-80#60#15?:78#1$=$>$?$10$11$12$>$:$=$<$;#7???8000$19$1:$1;$1<$1=$1>$1?,,13!$2-60,8$1:!$2-58,8$19!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1!$2-80,8#%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801080#800000000000&$2#20($2-80#80,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_908c64.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 759280 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_908c64.IT BndT_Na_002.SegItab_Na_908c64.IT_sound BF NX0 BR XSTEP F0 PSS plan 759280 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qiA0.

Module LibSegNa_qiA16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_908c64.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_908c64.IT.
Definition ENDS : list Z := [412000].
Definition STOPS1 : list Z := [412000; 759404] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2#10$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 1376256 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487296 140737488355312;
   KAlign (EVar 2) 32;
   KWr (SA (EVar 2) (-128)) (ELit 144)].
Definition ss0 : sym_state := SS 759280 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#64960#;966<#64960#5=#64960,20##;966<+$2-80$3$4$5$6$7+$2#10+$2-80#60#15?:78#1$=$>$?$10$11$12$>$:$=$<$;#7???8000$19$1:$1;$1<$1=$1>$1?,,13!$2-50,8$1:!$2-48,8$19!$2-40,8$18!$2-38,8$17!$2-30,8$16!$2-28,8$15!$2-20,8$14!$2-18,8$13!$2-10,8$12!$2-8,8$9!$2#,8$8!$2#8,8$1!$2-70,8#%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801080#7??????????0&$2#20($2-80#90,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_908c64.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 759280 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_908c64.IT BndT_Na_002.SegItab_Na_908c64.IT_sound BF NX0 BR XSTEP F0 PSS plan 759280 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qiA16.

Module LibSegNa_qiBL.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_908c64.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_908c64.IT.
Definition ENDS : list Z := [759636].
Definition STOPS1 : list Z := [759636] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7$8+$2-80$32$;$<$=$>$?$10$11$12$27$24+$28$27$28$29#7???8000$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1='$2#7???7?801080#800000000000&$2#20($2-68#8)+$2-80##80$32##80'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##18(&6$32#3#7???8000#<'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-68#8$24##18)$2-68#8&6$24#3#7???8000#3)$32##80$24##18)&6$24#3#7???8000#3&6$32#3#7???8000#10)&6$24#3#7???8000#3$32##80)$24##18&6$32#3#7???8000#10'$28##800000000000'$29##800000000000!$24#,1$21'$21##??'&9$21#1#1#1!$24#8,8$22'$22##80000000!$24#10,8$23'$23#1000#800000000000'$27#1#40000000"%pstring).
Definition ss0 : sym_state := SS 759404 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-104), ELit 8); ((EVar 50), (0), ELit 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), ELit 12)].
Definition F0L : list SR.region := [((EVar 2), (-104), 8); ((EVar 50), (0), 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), 12)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;9754#;9754#5=#;9754,20#$1+$2-80$3$4$5$6$7$8+$2-80+$24#10$23#;95?0^#?#??????????????3^#?#??????????????8$?$10$11$32$27$24+$28$27$28+@-1$23$29+&6+$24#10#3#7???8000+&6$32#3#7???8000$32$1;$1<$1=$1>$1?,,2=!$2-68,8$32!&6$32#3#7???800;,1^#?#??????????????3!&6$32#3#7???800:,1^#?#??????????????3!&6$32#3#7???8009,1^#?#??????????????3!&6$32#3#7???8008,1^#?#??????????????3!&6$32#3#7???8007,1^#?#??????????????3!&6$32#3#7???8006,1^#?#??????????????8!&6$32#3#7???8005,1^#?#??????????????8!&6$32#3#7???8004,1^#?#??????????????8!&6$32#3#7???8003,1^#?#??????????????1!&6$32#3#7???8002,1^#?#??????????????1!&6$32#3#7???8001,1^#?#??????????????1!&6$32#3#7???8000,1^#?#??????????????1!$32#10,8#;95?0!$32#8,8#1<0;7!$32#,8#41;58:;3'$2#7???7?801080#800000000000&$2#20($2-68#8)+$2-80##80$32##80'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##18(&6$32#3#7???8000#<'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-68#8$24##18)$2-68#8&6$24#3#7???8000#3)$32##80$24##18)&6$24#3#7???8000#3&6$32#3#7???8000#10)&6$24#3#7???8000#3$32##80)$24##18&6$32#3#7???8000#10'$28##800000000000'$29##800000000000!$24#,1$21'$21##??'&9$21#1#1#1!$24#8,8$22'$22##80000000!$24#10,8$23'$23#1000#800000000000'$27#1#40000000,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 759636 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_908c64.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 759404 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_908c64.IT BndT_Na_002.SegItab_Na_908c64.IT_sound BF NX0 BR XSTEP F0 PSS plan 759404 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qiBL.

Module LibSegNa_qiBL0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_908c64.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_908c64.IT.
Definition ENDS : list Z := [759836].
Definition STOPS1 : list Z := [759836] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7$8+$2-80$32$;$<$=$>$?$10$11$12$27$24+$28$27$28$29#7???8000$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1='$2#7???7?801080#800000000000&$2#20($2-68#8)+$2-80##80$32##80'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##18(&6$32#3#7???8000#<'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-68#8$24##18)$2-68#8&6$24#3#7???8000#3)$32##80$24##18)&6$24#3#7???8000#3&6$32#3#7???8000#10)&6$24#3#7???8000#3$32##80)$24##18&6$32#3#7???8000#10'$28##800000000000'$29##800000000000!$24#,1$21'$21##??'&9$21#1#1#1!$24#8,8$22'$22##80000000!$24#10,8$23'$23#1000#800000000000'$27##"%pstring).
Definition ss0 : sym_state := SS 759404 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-104), ELit 8); ((EVar 50), (0), ELit 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), ELit 12)].
Definition F0L : list SR.region := [((EVar 2), (-104), 8); ((EVar 50), (0), 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), 12)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;981<#;981<#5=#;981<,20#$1+$2-80$3$4$5$6$7$8+$2-80$23##;95?0^#?#??????????????3^#?#??????????????8$?$10$11$32$29$24+$28$27$28+@-1$23$29+&6+$24#10#3#7???8000+&6$32#3#7???8000$32$1;$1<$1=$1>$1?,,2=!$2-68,8$32!&6$32#3#7???800;,1^#?#??????????????3!&6$32#3#7???800:,1^#?#??????????????3!&6$32#3#7???8009,1^#?#??????????????3!&6$32#3#7???8008,1^#?#??????????????3!&6$32#3#7???8007,1^#?#??????????????3!&6$32#3#7???8006,1^#?#??????????????8!&6$32#3#7???8005,1^#?#??????????????8!&6$32#3#7???8004,1^#?#??????????????8!&6$32#3#7???8003,1^#?#??????????????1!&6$32#3#7???8002,1^#?#??????????????1!&6$32#3#7???8001,1^#?#??????????????1!&6$32#3#7???8000,1^#?#??????????????1!$32#10,8#;95?0!$32#8,8#1<0;7!$32#,8#41;58:;3'$2#7???7?801080#800000000000&$2#20($2-68#8)+$2-80##80$32##80'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##18(&6$32#3#7???8000#<'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-68#8$24##18)$2-68#8&6$24#3#7???8000#3)$32##80$24##18)&6$24#3#7???8000#3&6$32#3#7???8000#10)&6$24#3#7???8000#3$32##80)$24##18&6$32#3#7???8000#10'$28##800000000000'$29##800000000000!$24#,1$21'$21##??'&9$21#1#1#1!$24#8,8$22'$22##80000000!$24#10,8$23'$23#1000#800000000000'$27##,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 759836 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_908c64.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 759404 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_908c64.IT BndT_Na_002.SegItab_Na_908c64.IT_sound BF NX0 BR XSTEP F0 PSS plan 759404 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qiBL0.

Module LibSegNa_qiBS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_908c64.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_908c64.IT.
Definition ENDS : list Z := [759636].
Definition STOPS1 : list Z := [759636] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7$8+$2-80$32$;$<$=$>$?$10$11$12$27$24+$28$27$28$29#7???8000$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",19'$2#7???7?801080#800000000000&$2#20($2-68#8)+$2-80##80$32##80'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##18(&6$32#3#7???8000#<'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-68#8$24##18)$2-68#8&6$24#3#7???8000#3)$32##80$24##18)&6$24#3#7???8000#3&6$32#3#7???8000#10)&6$24#3#7???8000#3$32##80)$24##18&6$32#3#7???8000#10'$28##800000000000'$29##800000000000!$24#,1$21'$21##2<'&9$21#1##'$27#1#40000000"%pstring).
Definition ss0 : sym_state := SS 759404 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-104), ELit 8); ((EVar 50), (0), ELit 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), ELit 12)].
Definition F0L : list SR.region := [((EVar 2), (-104), 8); ((EVar 50), (0), 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), 12)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;9754#;9754#5=#;9754,20#$1+$2-80$3$4$5$6$7$8+$2-80+$24#1#1<0;7#;95?0^#?#??????????????3^#?#??????????????8$?$10$11$32$27$24+$28$27$28++@-1$24$29-1#7???8000+&6$32#3#7???8000$32$1;$1<$1=$1>$1?,,29!$2-68,8$32!&6$32#3#7???800;,1^#?#??????????????3!&6$32#3#7???800:,1^#?#??????????????3!&6$32#3#7???8009,1^#?#??????????????3!&6$32#3#7???8008,1^#?#??????????????3!&6$32#3#7???8007,1^#?#??????????????3!&6$32#3#7???8006,1^#?#??????????????8!&6$32#3#7???8005,1^#?#??????????????8!&6$32#3#7???8004,1^#?#??????????????8!&6$32#3#7???8003,1^#?#??????????????1!&6$32#3#7???8002,1^#?#??????????????1!&6$32#3#7???8001,1^#?#??????????????1!&6$32#3#7???8000,1^#?#??????????????1!$32#10,8#;95?0!$32#8,8#1<0;7!$32#,8#41;58:;3'$2#7???7?801080#800000000000&$2#20($2-68#8)+$2-80##80$32##80'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##18(&6$32#3#7???8000#<'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-68#8$24##18)$2-68#8&6$24#3#7???8000#3)$32##80$24##18)&6$24#3#7???8000#3&6$32#3#7???8000#10)&6$24#3#7???8000#3$32##80)$24##18&6$32#3#7???8000#10'$28##800000000000'$29##800000000000!$24#,1$21'$21##2<'&9$21#1##'$27#1#40000000,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 759636 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_908c64.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 759404 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_908c64.IT BndT_Na_002.SegItab_Na_908c64.IT_sound BF NX0 BR XSTEP F0 PSS plan 759404 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qiBS.

Module LibSegNa_qiBS0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_908c64.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_908c64.IT.
Definition ENDS : list Z := [759836].
Definition STOPS1 : list Z := [759836] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7$8+$2-80$32$;$<$=$>$?$10$11$12$27$24+$28$27$28$29#7???8000$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",19'$2#7???7?801080#800000000000&$2#20($2-68#8)+$2-80##80$32##80'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##18(&6$32#3#7???8000#<'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-68#8$24##18)$2-68#8&6$24#3#7???8000#3)$32##80$24##18)&6$24#3#7???8000#3&6$32#3#7???8000#10)&6$24#3#7???8000#3$32##80)$24##18&6$32#3#7???8000#10'$28##800000000000'$29##800000000000!$24#,1$21'$21##2<'&9$21#1##'$27##"%pstring).
Definition ss0 : sym_state := SS 759404 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-104), ELit 8); ((EVar 50), (0), ELit 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), ELit 12)].
Definition F0L : list SR.region := [((EVar 2), (-104), 8); ((EVar 50), (0), 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), 12)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;981<#;981<#5=#;981<,20#$1+$2-80$3$4$5$6$7$8+$2-80+$24#1#1<0;7#;95?0^#?#??????????????3^#?#??????????????8$?$10$11$32$29$24+$28$27$28++@-1$24$29-1#7???8000+&6$32#3#7???8000$32$1;$1<$1=$1>$1?,,29!$2-68,8$32!&6$32#3#7???800;,1^#?#??????????????3!&6$32#3#7???800:,1^#?#??????????????3!&6$32#3#7???8009,1^#?#??????????????3!&6$32#3#7???8008,1^#?#??????????????3!&6$32#3#7???8007,1^#?#??????????????3!&6$32#3#7???8006,1^#?#??????????????8!&6$32#3#7???8005,1^#?#??????????????8!&6$32#3#7???8004,1^#?#??????????????8!&6$32#3#7???8003,1^#?#??????????????1!&6$32#3#7???8002,1^#?#??????????????1!&6$32#3#7???8001,1^#?#??????????????1!&6$32#3#7???8000,1^#?#??????????????1!$32#10,8#;95?0!$32#8,8#1<0;7!$32#,8#41;58:;3'$2#7???7?801080#800000000000&$2#20($2-68#8)+$2-80##80$32##80'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##18(&6$32#3#7???8000#<'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-68#8$24##18)$2-68#8&6$24#3#7???8000#3)$32##80$24##18)&6$24#3#7???8000#3&6$32#3#7???8000#10)&6$24#3#7???8000#3$32##80)$24##18&6$32#3#7???8000#10'$28##800000000000'$29##800000000000!$24#,1$21'$21##2<'&9$21#1##'$27##,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 759836 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_908c64.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 759404 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_908c64.IT BndT_Na_002.SegItab_Na_908c64.IT_sound BF NX0 BR XSTEP F0 PSS plan 759404 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qiBS0.

Module LibSegNa_qiC1L0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_908c64.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_908c64.IT.
Definition ENDS : list Z := [761856].
Definition STOPS1 : list Z := [761856; 761744] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7$8+$2-80$:$;$<$=$>$?$10$11$12$27$24+$28$27$28$2:$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",19%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010<0#800000000000&$2#20($2-<0#40#&6+$2-:0#3#7???8000#4)$2-<0#40&6+$2-:0#3#7???8000#4'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-<0#40$24##18)$2-<0#40&6$24#3#7???8000#3'$28##800000000000'$29##800000000000'$27#1#40000000!$24#,1$21'$21##??'&9$21#1#1#1!$24#8,8$22'$22##80000000!$24#10,8$23'$23#1000#800000000000'&4$28$23##"%pstring).
Definition ss0 : sym_state := SS 759636 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-136), ELit 8); ((EVar 2), (-144), ELit 8); ((EVar 2), (-152), ELit 8); ((EVar 2), (-160), ELit 8); ((EVar 2), (-184), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-136), 8); ((EVar 2), (-144), 8); ((EVar 2), (-152), 8); ((EVar 2), (-160), 8); ((EVar 2), (-184), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;:000#;9?90#;:000#5=#;:000,20##;9?90+$2-;0$3$4$5$6$7$8+$2-80#$23+$2-90&6+$2-90#3&6+$24#8#3$?$10$11$12$27$24+$28$27$28$2:$18$19$1:$1;$1<$1=$1>$1?,,1>!$2-;8,8#;9?90!$2-:0,8$28!$2-98,8++$22$23#1!$2-90,8$23!$2-88,8#;9760%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010<0#800000000000&$2#20($2-<0#40#&6+$2-:0#3#7???8000#4)$2-<0#40&6+$2-:0#3#7???8000#4'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-<0#40$24##18)$2-<0#40&6$24#3#7???8000#3'$28##800000000000'$29##800000000000'$27#1#40000000!$24#,1$21'$21##??'&9$21#1#1#1!$24#8,8$22'$22##80000000!$24#10,8$23'$23#1000#800000000000'&4$28$23##,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 761856 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_908c64.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 759636 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_908c64.IT BndT_Na_002.SegItab_Na_908c64.IT_sound BF NX0 BR XSTEP F0 PSS plan 759636 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qiC1L0.

Module LibSegNa_qiC1L1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_908c64.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_908c64.IT.
Definition ENDS : list Z := [761856].
Definition STOPS1 : list Z := [761856; 761744] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7$8+$2-80$:$;$<$=$>$?$10$11$12$27$24+$28$27$28$2:$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",19%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010<0#800000000000&$2#20($2-<0#40#&6+$2-:0#3#7???8000#4)$2-<0#40&6+$2-:0#3#7???8000#4'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-<0#40$24##18)$2-<0#40&6$24#3#7???8000#3'$28##800000000000'$29##800000000000'$27#1#40000000!$24#,1$21'$21##??'&9$21#1#1#1!$24#8,8$22'$22##80000000!$24#10,8$23'$23#1000#800000000000'&4$28$23#1#1"%pstring).
Definition ss0 : sym_state := SS 759636 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-136), ELit 8); ((EVar 2), (-144), ELit 8); ((EVar 2), (-152), ELit 8); ((EVar 2), (-160), ELit 8); ((EVar 2), (-184), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-136), 8); ((EVar 2), (-144), 8); ((EVar 2), (-152), 8); ((EVar 2), (-160), 8); ((EVar 2), (-184), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;:000#;9?90#;:000#5=#;:000,20##;9?90+$2-;0$3$4$5$6$7$8+$2-80#1$23+$2-90&6+$2-90#3&6+$24#8#3$?$10$11$12$27$24+$28$27$28$2:$18$19$1:$1;$1<$1=$1>$1?,,1>!$2-;8,8#;9?90!$2-:0,8$28!$2-98,8++$22$23#1!$2-90,8$23!$2-88,8#;9760%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010<0#800000000000&$2#20($2-<0#40#&6+$2-:0#3#7???8000#4)$2-<0#40&6+$2-:0#3#7???8000#4'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-<0#40$24##18)$2-<0#40&6$24#3#7???8000#3'$28##800000000000'$29##800000000000'$27#1#40000000!$24#,1$21'$21##??'&9$21#1#1#1!$24#8,8$22'$22##80000000!$24#10,8$23'$23#1000#800000000000'&4$28$23#1#1,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 761856 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_908c64.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 759636 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_908c64.IT BndT_Na_002.SegItab_Na_908c64.IT_sound BF NX0 BR XSTEP F0 PSS plan 759636 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qiC1L1.

Module LibSegNa_qiC1S0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_908c64.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_908c64.IT.
Definition ENDS : list Z := [761856].
Definition STOPS1 : list Z := [761856; 761744] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7$8+$2-80$:$;$<$=$>$?$10$11$12$27$24+$28$27$28$2:$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",15%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010<0#800000000000&$2#20($2-<0#40#&6+$2-:0#3#7???8000#4)$2-<0#40&6+$2-:0#3#7???8000#4'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-<0#40$24##18)$2-<0#40&6$24#3#7???8000#3'$28##800000000000'$29##800000000000'$27#1#40000000!$24#,1$21'$21##2<'&9$21#1##'&4$28+$24#1##"%pstring).
Definition ss0 : sym_state := SS 759636 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-136), ELit 8); ((EVar 2), (-144), ELit 8); ((EVar 2), (-152), ELit 8); ((EVar 2), (-160), ELit 8); ((EVar 2), (-184), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-136), 8); ((EVar 2), (-144), 8); ((EVar 2), (-152), 8); ((EVar 2), (-160), 8); ((EVar 2), (-184), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;:000#;9?90#;:000#5=#;:000,20##;9?90+$2-;0$3$4$5$6$7$8+$2-80#+$24#1+$2-90&6+$2-90#3#$?$10$11$12$27$24+$28$27$28$2:$18$19$1:$1;$1<$1=$1>$1?,,1:!$2-;8,8#;9?90!$2-:0,8$28!$2-98,8++$24&6$21#1#2!$2-90,8+$24#1!$2-88,8#;9760%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010<0#800000000000&$2#20($2-<0#40#&6+$2-:0#3#7???8000#4)$2-<0#40&6+$2-:0#3#7???8000#4'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-<0#40$24##18)$2-<0#40&6$24#3#7???8000#3'$28##800000000000'$29##800000000000'$27#1#40000000!$24#,1$21'$21##2<'&9$21#1##'&4$28+$24#1##,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 761856 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_908c64.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 759636 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_908c64.IT BndT_Na_002.SegItab_Na_908c64.IT_sound BF NX0 BR XSTEP F0 PSS plan 759636 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qiC1S0.

Module LibSegNa_qiC1S1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_908c64.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_908c64.IT.
Definition ENDS : list Z := [761856].
Definition STOPS1 : list Z := [761856; 761744] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7$8+$2-80$:$;$<$=$>$?$10$11$12$27$24+$28$27$28$2:$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",15%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010<0#800000000000&$2#20($2-<0#40#&6+$2-:0#3#7???8000#4)$2-<0#40&6+$2-:0#3#7???8000#4'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-<0#40$24##18)$2-<0#40&6$24#3#7???8000#3'$28##800000000000'$29##800000000000'$27#1#40000000!$24#,1$21'$21##2<'&9$21#1##'&4$28+$24#1#1#1"%pstring).
Definition ss0 : sym_state := SS 759636 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-136), ELit 8); ((EVar 2), (-144), ELit 8); ((EVar 2), (-152), ELit 8); ((EVar 2), (-160), ELit 8); ((EVar 2), (-184), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-136), 8); ((EVar 2), (-144), 8); ((EVar 2), (-152), 8); ((EVar 2), (-160), 8); ((EVar 2), (-184), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;:000#;9?90#;:000#5=#;:000,20##;9?90+$2-;0$3$4$5$6$7$8+$2-80#1+$24#1+$2-90&6+$2-90#3#$?$10$11$12$27$24+$28$27$28$2:$18$19$1:$1;$1<$1=$1>$1?,,1:!$2-;8,8#;9?90!$2-:0,8$28!$2-98,8++$24&6$21#1#2!$2-90,8+$24#1!$2-88,8#;9760%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010<0#800000000000&$2#20($2-<0#40#&6+$2-:0#3#7???8000#4)$2-<0#40&6+$2-:0#3#7???8000#4'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-<0#40$24##18)$2-<0#40&6$24#3#7???8000#3'$28##800000000000'$29##800000000000'$27#1#40000000!$24#,1$21'$21##2<'&9$21#1##'&4$28+$24#1#1#1,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 761856 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_908c64.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 759636 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_908c64.IT BndT_Na_002.SegItab_Na_908c64.IT_sound BF NX0 BR XSTEP F0 PSS plan 759636 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qiC1S1.

Module LibSegNa_qiC4.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_908c64.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_908c64.IT.
Definition ENDS : list Z := [760428].
Definition STOPS1 : list Z := [760428; 759732] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7$8+$2-80#$;$<$=$>$?$10$11$12$27$24+$28$27$28$2:$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 759648 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;9:6<#;97;4#;9:6<#5=#;9:6<,20##;97;4+$2-80$3$4$5$6$7$8+$2-80$24$27$2:$28+$27$28$?$10$11$12$27$24+$28$27$28$2:$18$19$1:$1;$1<$1=$1>$1?,,,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 760428 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_908c64.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 759648 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_908c64.IT BndT_Na_002.SegItab_Na_908c64.IT_sound BF NX0 BR XSTEP F0 PSS plan 759648 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qiC4.

Module LibSegNa_qiQ.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_908c64.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_908c64.IT.
Definition ENDS : list Z := [760040].
Definition STOPS1 : list Z := [760040] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7$34+$2-80$:$;$<$=$>$?$10$11$32$13$14$15$16$17$18+&6$32#3#7???8000$32$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1:'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##8(&6$32#3#7???8000#10!$32#78,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##80$33##1'$34#7???7?801080#800000000000&$34#10!$34-8,8$35!$34-10,8$36!$34-18,8$37!$34-20,8$38!$34-28,8$39!$34-30,8$3:!$34-38,8$3;!$34-40,8$3<!$34-48,8$3=!$34-50,8$3>!$34-58,8$3?!$34-60,8$40)+$34-80##80$32##80)+$34-80##80$33##1"%pstring).
Definition ss0 : sym_state := SS 759836 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;98>8#;98>8#5=#;98>8,20#$35$34$3$4$5$6$7$36$37$13$;$<$=$>$?$10$11$38$39$3:$3;$3<$3=$3>$3?$40$1;$1<$1=$1>$1?,,2<!$33#,1#!&6$32#3#7???800;,1^#?#??????????????5!&6$32#3#7???800:,1^#?#??????????????5!&6$32#3#7???8009,1^#?#??????????????5!&6$32#3#7???8008,1^#?#??????????????5!&6$32#3#7???800?,1^#?#??????????????5!&6$32#3#7???800>,1^#?#??????????????5!&6$32#3#7???800=,1^#?#??????????????5!&6$32#3#7???800<,1^#?#??????????????5!&6$32#3#7???8003,1^#?#??????????????5!&6$32#3#7???8002,1^#?#??????????????5!&6$32#3#7???8001,1^#?#??????????????5!&6$32#3#7???8000,1^#?#??????????????5!&6$32#3#7???8007,1^#?#??????????????5!&6$32#3#7???8006,1^#?#??????????????5!&6$32#3#7???8005,1^#?#??????????????5!&6$32#3#7???8004,1^#?#??????????????5!$32#,8#45>0360>'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##8(&6$32#3#7???8000#10!$32#78,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##80$33##1'$34#7???7?801080#800000000000&$34#10!$34-8,8$35!$34-10,8$36!$34-18,8$37!$34-20,8$38!$34-28,8$39!$34-30,8$3:!$34-38,8$3;!$34-40,8$3<!$34-48,8$3=!$34-50,8$3>!$34-58,8$3?!$34-60,8$40)+$34-80##80$32##80)+$34-80##80$33##1,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 760040 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_908c64.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 759836 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_908c64.IT BndT_Na_002.SegItab_Na_908c64.IT_sound BF NX0 BR XSTEP F0 PSS plan 759836 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qiQ.

End BndP_Na_070.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_002 BndT_Na_000.
Module BndP_Na_071.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_002 BndT_Na_000.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Na_071 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_002ASegItab_Na_908c642ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071<LibSegNa_qiR2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071<LibSegNa_qiR3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071<LibSegNa_qiR2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071<LibSegNa_qiR5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071<LibSegNa_qiR2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071<LibSegNa_qiR3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071<LibSegNa_qiR4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071<LibSegNa_qiR5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071<LibSegNa_qiR3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_000ASegItab_Na_345f722ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjA02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjA03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjA02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjA05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjA02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjA03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjA04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjA05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjA03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071>LibSegNa_qjA162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071>LibSegNa_qjA163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071>LibSegNa_qjA162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071>LibSegNa_qjA165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071>LibSegNa_qjA162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071>LibSegNa_qjA163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071>LibSegNa_qjA164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071>LibSegNa_qjA165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071>LibSegNa_qjA163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjBL2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjBL3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjBL2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjBL5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjBL2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjBL3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjBL4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjBL5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjBL3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071>LibSegNa_qjBL02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071>LibSegNa_qjBL03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071>LibSegNa_qjBL02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071>LibSegNa_qjBL05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071>LibSegNa_qjBL02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071>LibSegNa_qjBL03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071>LibSegNa_qjBL04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071>LibSegNa_qjBL05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071>LibSegNa_qjBL03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjBS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjBS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjBS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjBS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjBS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjBS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjBS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjBS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjBS3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071>LibSegNa_qjBS02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071>LibSegNa_qjBS03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071>LibSegNa_qjBS02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071>LibSegNa_qjBS05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071>LibSegNa_qjBS02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071>LibSegNa_qjBS03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071>LibSegNa_qjBS04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071>LibSegNa_qjBS05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071>LibSegNa_qjBS03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1L02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1L03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1L02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1L05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1L02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1L03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1L04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1L05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1L03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1L12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1L13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1L12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1L15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1L12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1L13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1L14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1L15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1L13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1S02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1S03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1S02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1S05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1S02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1S03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1S04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1S05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1S03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1S12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1S13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1S12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1S15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1S12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1S13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1S14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1S15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071?LibSegNa_qjC1S13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjC42BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjC43NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjC42BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjC45XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjC42F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjC43PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjC44planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjC45regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071=LibSegNa_qjC43kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071<LibSegNa_qjQ2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071<LibSegNa_qjQ3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071<LibSegNa_qjQ2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071<LibSegNa_qjQ5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071<LibSegNa_qjQ2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071<LibSegNa_qjQ3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071<LibSegNa_qjQ4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071<LibSegNa_qjQ5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071<LibSegNa_qjQ3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071<LibSegNa_qjR2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071<LibSegNa_qjR3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071<LibSegNa_qjR2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071<LibSegNa_qjR5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071<LibSegNa_qjR2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071<LibSegNa_qjR3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071<LibSegNa_qjR4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071<LibSegNa_qjR5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_071<LibSegNa_qjR3kn0".

Module LibSegNa_qiR.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_908c64.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_908c64.IT.
Definition ENDS : list Z := [759836].
Definition STOPS1 : list Z := [759836] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7$8+$2-80$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 759732 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;981<#;981<#5=#;981<,20#$1+$2-80$3$4$5$6$7$8+$2-80$:$;$<$=$>$?$10$11$12$:$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 759836 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_908c64.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 759732 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_908c64.IT BndT_Na_002.SegItab_Na_908c64.IT_sound BF NX0 BR XSTEP F0 PSS plan 759732 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qiR.

Module LibSegNa_qjA0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_345f72.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_345f72.IT.
Definition ENDS : list Z := [412000].
Definition STOPS1 : list Z := [412000; 779180] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KImg 1376256 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487296 140737488355328;
   KAlign (EVar 2) 32;
   KWr (SA (EVar 2) (-128)) (ELit 128)].
Definition ss0 : sym_state := SS 779056 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#64960#;>3:<#64960#5=#64960,20##;>3:<+$2-80$3$4$5$6$7$2+$2-80#60#15?:78#1$=$>$?$10$11$12$>$:$=$<$;#7???8000$19$1:$1;$1<$1=$1>$1?,,13!$2-60,8$1:!$2-58,8$19!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1!$2-80,8#%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801080#800000000000&$2#20($2-80#80,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_345f72.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 779056 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_345f72.IT BndT_Na_000.SegItab_Na_345f72.IT_sound BF NX0 BR XSTEP F0 PSS plan 779056 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qjA0.

Module LibSegNa_qjA16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_345f72.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_345f72.IT.
Definition ENDS : list Z := [412000].
Definition STOPS1 : list Z := [412000; 779180] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2#10$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 1376256 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487296 140737488355312;
   KAlign (EVar 2) 32;
   KWr (SA (EVar 2) (-128)) (ELit 144)].
Definition ss0 : sym_state := SS 779056 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#64960#;>3:<#64960#5=#64960,20##;>3:<+$2-80$3$4$5$6$7+$2#10+$2-80#60#15?:78#1$=$>$?$10$11$12$>$:$=$<$;#7???8000$19$1:$1;$1<$1=$1>$1?,,13!$2-50,8$1:!$2-48,8$19!$2-40,8$18!$2-38,8$17!$2-30,8$16!$2-28,8$15!$2-20,8$14!$2-18,8$13!$2-10,8$12!$2-8,8$9!$2#,8$8!$2#8,8$1!$2-70,8#%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801080#7??????????0&$2#20($2-80#90,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_345f72.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 779056 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_345f72.IT BndT_Na_000.SegItab_Na_345f72.IT_sound BF NX0 BR XSTEP F0 PSS plan 779056 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qjA16.

Module LibSegNa_qjBL.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_345f72.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_345f72.IT.
Definition ENDS : list Z := [779412].
Definition STOPS1 : list Z := [779412] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7$8+$2-80$32$;$<$=$>$?$10$11$12$27$24+$28$27$28$29#7???8000$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1='$2#7???7?801080#800000000000&$2#20($2-68#8)+$2-80##80$32##80'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##18(&6$32#3#7???8000#<'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-68#8$24##18)$2-68#8&6$24#3#7???8000#3)$32##80$24##18)&6$24#3#7???8000#3&6$32#3#7???8000#10)&6$24#3#7???8000#3$32##80)$24##18&6$32#3#7???8000#10'$28##800000000000'$29##800000000000!$24#,1$21'$21##??'&9$21#1#1#1!$24#8,8$22'$22##80000000!$24#10,8$23'$23#1000#800000000000'$27#1#40000000"%pstring).
Definition ss0 : sym_state := SS 779180 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-104), ELit 8); ((EVar 50), (0), ELit 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), ELit 12)].
Definition F0L : list SR.region := [((EVar 2), (-104), 8); ((EVar 50), (0), 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), 12)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;>494#;>494#5=#;>494,20#$1+$2-80$3$4$5$6$7$8+$2-80+$24#10$23#;>330^#?#??????????????3^#?#??????????????8$?$10$11$32$27$24+$28$27$28+@-1$23$29+&6+$24#10#3#7???8000+&6$32#3#7???8000$32$1;$1<$1=$1>$1?,,2=!$2-68,8$32!&6$32#3#7???800;,1^#?#??????????????3!&6$32#3#7???800:,1^#?#??????????????3!&6$32#3#7???8009,1^#?#??????????????3!&6$32#3#7???8008,1^#?#??????????????3!&6$32#3#7???8007,1^#?#??????????????3!&6$32#3#7???8006,1^#?#??????????????8!&6$32#3#7???8005,1^#?#??????????????8!&6$32#3#7???8004,1^#?#??????????????8!&6$32#3#7???8003,1^#?#??????????????1!&6$32#3#7???8002,1^#?#??????????????1!&6$32#3#7???8001,1^#?#??????????????1!&6$32#3#7???8000,1^#?#??????????????1!$32#10,8#;>330!$32#8,8#1<0;7!$32#,8#41;58:;3'$2#7???7?801080#800000000000&$2#20($2-68#8)+$2-80##80$32##80'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##18(&6$32#3#7???8000#<'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-68#8$24##18)$2-68#8&6$24#3#7???8000#3)$32##80$24##18)&6$24#3#7???8000#3&6$32#3#7???8000#10)&6$24#3#7???8000#3$32##80)$24##18&6$32#3#7???8000#10'$28##800000000000'$29##800000000000!$24#,1$21'$21##??'&9$21#1#1#1!$24#8,8$22'$22##80000000!$24#10,8$23'$23#1000#800000000000'$27#1#40000000,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 779412 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_345f72.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 779180 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_345f72.IT BndT_Na_000.SegItab_Na_345f72.IT_sound BF NX0 BR XSTEP F0 PSS plan 779180 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qjBL.

Module LibSegNa_qjBL0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_345f72.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_345f72.IT.
Definition ENDS : list Z := [779612].
Definition STOPS1 : list Z := [779612] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7$8+$2-80$32$;$<$=$>$?$10$11$12$27$24+$28$27$28$29#7???8000$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1='$2#7???7?801080#800000000000&$2#20($2-68#8)+$2-80##80$32##80'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##18(&6$32#3#7???8000#<'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-68#8$24##18)$2-68#8&6$24#3#7???8000#3)$32##80$24##18)&6$24#3#7???8000#3&6$32#3#7???8000#10)&6$24#3#7???8000#3$32##80)$24##18&6$32#3#7???8000#10'$28##800000000000'$29##800000000000!$24#,1$21'$21##??'&9$21#1#1#1!$24#8,8$22'$22##80000000!$24#10,8$23'$23#1000#800000000000'$27##"%pstring).
Definition ss0 : sym_state := SS 779180 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-104), ELit 8); ((EVar 50), (0), ELit 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), ELit 12)].
Definition F0L : list SR.region := [((EVar 2), (-104), 8); ((EVar 50), (0), 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), 12)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;>55<#;>55<#5=#;>55<,20#$1+$2-80$3$4$5$6$7$8+$2-80$23##;>330^#?#??????????????3^#?#??????????????8$?$10$11$32$29$24+$28$27$28+@-1$23$29+&6+$24#10#3#7???8000+&6$32#3#7???8000$32$1;$1<$1=$1>$1?,,2=!$2-68,8$32!&6$32#3#7???800;,1^#?#??????????????3!&6$32#3#7???800:,1^#?#??????????????3!&6$32#3#7???8009,1^#?#??????????????3!&6$32#3#7???8008,1^#?#??????????????3!&6$32#3#7???8007,1^#?#??????????????3!&6$32#3#7???8006,1^#?#??????????????8!&6$32#3#7???8005,1^#?#??????????????8!&6$32#3#7???8004,1^#?#??????????????8!&6$32#3#7???8003,1^#?#??????????????1!&6$32#3#7???8002,1^#?#??????????????1!&6$32#3#7???8001,1^#?#??????????????1!&6$32#3#7???8000,1^#?#??????????????1!$32#10,8#;>330!$32#8,8#1<0;7!$32#,8#41;58:;3'$2#7???7?801080#800000000000&$2#20($2-68#8)+$2-80##80$32##80'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##18(&6$32#3#7???8000#<'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-68#8$24##18)$2-68#8&6$24#3#7???8000#3)$32##80$24##18)&6$24#3#7???8000#3&6$32#3#7???8000#10)&6$24#3#7???8000#3$32##80)$24##18&6$32#3#7???8000#10'$28##800000000000'$29##800000000000!$24#,1$21'$21##??'&9$21#1#1#1!$24#8,8$22'$22##80000000!$24#10,8$23'$23#1000#800000000000'$27##,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 779612 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_345f72.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 779180 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_345f72.IT BndT_Na_000.SegItab_Na_345f72.IT_sound BF NX0 BR XSTEP F0 PSS plan 779180 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qjBL0.

Module LibSegNa_qjBS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_345f72.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_345f72.IT.
Definition ENDS : list Z := [779412].
Definition STOPS1 : list Z := [779412] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7$8+$2-80$32$;$<$=$>$?$10$11$12$27$24+$28$27$28$29#7???8000$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",19'$2#7???7?801080#800000000000&$2#20($2-68#8)+$2-80##80$32##80'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##18(&6$32#3#7???8000#<'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-68#8$24##18)$2-68#8&6$24#3#7???8000#3)$32##80$24##18)&6$24#3#7???8000#3&6$32#3#7???8000#10)&6$24#3#7???8000#3$32##80)$24##18&6$32#3#7???8000#10'$28##800000000000'$29##800000000000!$24#,1$21'$21##2<'&9$21#1##'$27#1#40000000"%pstring).
Definition ss0 : sym_state := SS 779180 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-104), ELit 8); ((EVar 50), (0), ELit 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), ELit 12)].
Definition F0L : list SR.region := [((EVar 2), (-104), 8); ((EVar 50), (0), 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), 12)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;>494#;>494#5=#;>494,20#$1+$2-80$3$4$5$6$7$8+$2-80+$24#1#1<0;7#;>330^#?#??????????????3^#?#??????????????8$?$10$11$32$27$24+$28$27$28++@-1$24$29-1#7???8000+&6$32#3#7???8000$32$1;$1<$1=$1>$1?,,29!$2-68,8$32!&6$32#3#7???800;,1^#?#??????????????3!&6$32#3#7???800:,1^#?#??????????????3!&6$32#3#7???8009,1^#?#??????????????3!&6$32#3#7???8008,1^#?#??????????????3!&6$32#3#7???8007,1^#?#??????????????3!&6$32#3#7???8006,1^#?#??????????????8!&6$32#3#7???8005,1^#?#??????????????8!&6$32#3#7???8004,1^#?#??????????????8!&6$32#3#7???8003,1^#?#??????????????1!&6$32#3#7???8002,1^#?#??????????????1!&6$32#3#7???8001,1^#?#??????????????1!&6$32#3#7???8000,1^#?#??????????????1!$32#10,8#;>330!$32#8,8#1<0;7!$32#,8#41;58:;3'$2#7???7?801080#800000000000&$2#20($2-68#8)+$2-80##80$32##80'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##18(&6$32#3#7???8000#<'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-68#8$24##18)$2-68#8&6$24#3#7???8000#3)$32##80$24##18)&6$24#3#7???8000#3&6$32#3#7???8000#10)&6$24#3#7???8000#3$32##80)$24##18&6$32#3#7???8000#10'$28##800000000000'$29##800000000000!$24#,1$21'$21##2<'&9$21#1##'$27#1#40000000,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 779412 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_345f72.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 779180 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_345f72.IT BndT_Na_000.SegItab_Na_345f72.IT_sound BF NX0 BR XSTEP F0 PSS plan 779180 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qjBS.

Module LibSegNa_qjBS0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_345f72.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_345f72.IT.
Definition ENDS : list Z := [779612].
Definition STOPS1 : list Z := [779612] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7$8+$2-80$32$;$<$=$>$?$10$11$12$27$24+$28$27$28$29#7???8000$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",19'$2#7???7?801080#800000000000&$2#20($2-68#8)+$2-80##80$32##80'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##18(&6$32#3#7???8000#<'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-68#8$24##18)$2-68#8&6$24#3#7???8000#3)$32##80$24##18)&6$24#3#7???8000#3&6$32#3#7???8000#10)&6$24#3#7???8000#3$32##80)$24##18&6$32#3#7???8000#10'$28##800000000000'$29##800000000000!$24#,1$21'$21##2<'&9$21#1##'$27##"%pstring).
Definition ss0 : sym_state := SS 779180 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-104), ELit 8); ((EVar 50), (0), ELit 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), ELit 12)].
Definition F0L : list SR.region := [((EVar 2), (-104), 8); ((EVar 50), (0), 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), 12)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;>55<#;>55<#5=#;>55<,20#$1+$2-80$3$4$5$6$7$8+$2-80+$24#1#1<0;7#;>330^#?#??????????????3^#?#??????????????8$?$10$11$32$29$24+$28$27$28++@-1$24$29-1#7???8000+&6$32#3#7???8000$32$1;$1<$1=$1>$1?,,29!$2-68,8$32!&6$32#3#7???800;,1^#?#??????????????3!&6$32#3#7???800:,1^#?#??????????????3!&6$32#3#7???8009,1^#?#??????????????3!&6$32#3#7???8008,1^#?#??????????????3!&6$32#3#7???8007,1^#?#??????????????3!&6$32#3#7???8006,1^#?#??????????????8!&6$32#3#7???8005,1^#?#??????????????8!&6$32#3#7???8004,1^#?#??????????????8!&6$32#3#7???8003,1^#?#??????????????1!&6$32#3#7???8002,1^#?#??????????????1!&6$32#3#7???8001,1^#?#??????????????1!&6$32#3#7???8000,1^#?#??????????????1!$32#10,8#;>330!$32#8,8#1<0;7!$32#,8#41;58:;3'$2#7???7?801080#800000000000&$2#20($2-68#8)+$2-80##80$32##80'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##18(&6$32#3#7???8000#<'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-68#8$24##18)$2-68#8&6$24#3#7???8000#3)$32##80$24##18)&6$24#3#7???8000#3&6$32#3#7???8000#10)&6$24#3#7???8000#3$32##80)$24##18&6$32#3#7???8000#10'$28##800000000000'$29##800000000000!$24#,1$21'$21##2<'&9$21#1##'$27##,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 779612 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_345f72.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 779180 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_345f72.IT BndT_Na_000.SegItab_Na_345f72.IT_sound BF NX0 BR XSTEP F0 PSS plan 779180 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qjBS0.

Module LibSegNa_qjC1L0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_345f72.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_345f72.IT.
Definition ENDS : list Z := [761856].
Definition STOPS1 : list Z := [761856; 761744] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7$8+$2-80$:$;$<$=$>$?$10$11$12$27$24+$28$27$28$2:$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",19%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010<0#800000000000&$2#20($2-<0#40#&6+$2-:0#3#7???8000#4)$2-<0#40&6+$2-:0#3#7???8000#4'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-<0#40$24##18)$2-<0#40&6$24#3#7???8000#3'$28##800000000000'$29##800000000000'$27#1#40000000!$24#,1$21'$21##??'&9$21#1#1#1!$24#8,8$22'$22##80000000!$24#10,8$23'$23#1000#800000000000'&4$28$23##"%pstring).
Definition ss0 : sym_state := SS 779412 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-136), ELit 8); ((EVar 2), (-144), ELit 8); ((EVar 2), (-152), ELit 8); ((EVar 2), (-160), ELit 8); ((EVar 2), (-184), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-136), 8); ((EVar 2), (-144), 8); ((EVar 2), (-152), 8); ((EVar 2), (-160), 8); ((EVar 2), (-184), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;:000#;9?90#;:000#5=#;:000,20##;9?90+$2-;0$3$4$5$6$7$8+$2-80#$23+$2-90&6+$2-90#3&6+$24#8#3$?$10$11$12$27$24+$28$27$28$2:$18$19$1:$1;$1<$1=$1>$1?,,1>!$2-;8,8#;9?90!$2-:0,8$28!$2-98,8++$22$23#1!$2-90,8$23!$2-88,8#;>4:0%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010<0#800000000000&$2#20($2-<0#40#&6+$2-:0#3#7???8000#4)$2-<0#40&6+$2-:0#3#7???8000#4'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-<0#40$24##18)$2-<0#40&6$24#3#7???8000#3'$28##800000000000'$29##800000000000'$27#1#40000000!$24#,1$21'$21##??'&9$21#1#1#1!$24#8,8$22'$22##80000000!$24#10,8$23'$23#1000#800000000000'&4$28$23##,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 761856 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_345f72.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 779412 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_345f72.IT BndT_Na_000.SegItab_Na_345f72.IT_sound BF NX0 BR XSTEP F0 PSS plan 779412 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qjC1L0.

Module LibSegNa_qjC1L1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_345f72.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_345f72.IT.
Definition ENDS : list Z := [761856].
Definition STOPS1 : list Z := [761856; 761744] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7$8+$2-80$:$;$<$=$>$?$10$11$12$27$24+$28$27$28$2:$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",19%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010<0#800000000000&$2#20($2-<0#40#&6+$2-:0#3#7???8000#4)$2-<0#40&6+$2-:0#3#7???8000#4'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-<0#40$24##18)$2-<0#40&6$24#3#7???8000#3'$28##800000000000'$29##800000000000'$27#1#40000000!$24#,1$21'$21##??'&9$21#1#1#1!$24#8,8$22'$22##80000000!$24#10,8$23'$23#1000#800000000000'&4$28$23#1#1"%pstring).
Definition ss0 : sym_state := SS 779412 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-136), ELit 8); ((EVar 2), (-144), ELit 8); ((EVar 2), (-152), ELit 8); ((EVar 2), (-160), ELit 8); ((EVar 2), (-184), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-136), 8); ((EVar 2), (-144), 8); ((EVar 2), (-152), 8); ((EVar 2), (-160), 8); ((EVar 2), (-184), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;:000#;9?90#;:000#5=#;:000,20##;9?90+$2-;0$3$4$5$6$7$8+$2-80#1$23+$2-90&6+$2-90#3&6+$24#8#3$?$10$11$12$27$24+$28$27$28$2:$18$19$1:$1;$1<$1=$1>$1?,,1>!$2-;8,8#;9?90!$2-:0,8$28!$2-98,8++$22$23#1!$2-90,8$23!$2-88,8#;>4:0%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010<0#800000000000&$2#20($2-<0#40#&6+$2-:0#3#7???8000#4)$2-<0#40&6+$2-:0#3#7???8000#4'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-<0#40$24##18)$2-<0#40&6$24#3#7???8000#3'$28##800000000000'$29##800000000000'$27#1#40000000!$24#,1$21'$21##??'&9$21#1#1#1!$24#8,8$22'$22##80000000!$24#10,8$23'$23#1000#800000000000'&4$28$23#1#1,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 761856 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_345f72.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 779412 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_345f72.IT BndT_Na_000.SegItab_Na_345f72.IT_sound BF NX0 BR XSTEP F0 PSS plan 779412 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qjC1L1.

Module LibSegNa_qjC1S0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_345f72.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_345f72.IT.
Definition ENDS : list Z := [761856].
Definition STOPS1 : list Z := [761856; 761744] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7$8+$2-80$:$;$<$=$>$?$10$11$12$27$24+$28$27$28$2:$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",15%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010<0#800000000000&$2#20($2-<0#40#&6+$2-:0#3#7???8000#4)$2-<0#40&6+$2-:0#3#7???8000#4'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-<0#40$24##18)$2-<0#40&6$24#3#7???8000#3'$28##800000000000'$29##800000000000'$27#1#40000000!$24#,1$21'$21##2<'&9$21#1##'&4$28+$24#1##"%pstring).
Definition ss0 : sym_state := SS 779412 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-136), ELit 8); ((EVar 2), (-144), ELit 8); ((EVar 2), (-152), ELit 8); ((EVar 2), (-160), ELit 8); ((EVar 2), (-184), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-136), 8); ((EVar 2), (-144), 8); ((EVar 2), (-152), 8); ((EVar 2), (-160), 8); ((EVar 2), (-184), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;:000#;9?90#;:000#5=#;:000,20##;9?90+$2-;0$3$4$5$6$7$8+$2-80#+$24#1+$2-90&6+$2-90#3#$?$10$11$12$27$24+$28$27$28$2:$18$19$1:$1;$1<$1=$1>$1?,,1:!$2-;8,8#;9?90!$2-:0,8$28!$2-98,8++$24&6$21#1#2!$2-90,8+$24#1!$2-88,8#;>4:0%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010<0#800000000000&$2#20($2-<0#40#&6+$2-:0#3#7???8000#4)$2-<0#40&6+$2-:0#3#7???8000#4'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-<0#40$24##18)$2-<0#40&6$24#3#7???8000#3'$28##800000000000'$29##800000000000'$27#1#40000000!$24#,1$21'$21##2<'&9$21#1##'&4$28+$24#1##,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 761856 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_345f72.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 779412 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_345f72.IT BndT_Na_000.SegItab_Na_345f72.IT_sound BF NX0 BR XSTEP F0 PSS plan 779412 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qjC1S0.

Module LibSegNa_qjC1S1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_345f72.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_345f72.IT.
Definition ENDS : list Z := [761856].
Definition STOPS1 : list Z := [761856; 761744] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7$8+$2-80$:$;$<$=$>$?$10$11$12$27$24+$28$27$28$2:$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",15%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010<0#800000000000&$2#20($2-<0#40#&6+$2-:0#3#7???8000#4)$2-<0#40&6+$2-:0#3#7???8000#4'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-<0#40$24##18)$2-<0#40&6$24#3#7???8000#3'$28##800000000000'$29##800000000000'$27#1#40000000!$24#,1$21'$21##2<'&9$21#1##'&4$28+$24#1#1#1"%pstring).
Definition ss0 : sym_state := SS 779412 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-136), ELit 8); ((EVar 2), (-144), ELit 8); ((EVar 2), (-152), ELit 8); ((EVar 2), (-160), ELit 8); ((EVar 2), (-184), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-136), 8); ((EVar 2), (-144), 8); ((EVar 2), (-152), 8); ((EVar 2), (-160), 8); ((EVar 2), (-184), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;:000#;9?90#;:000#5=#;:000,20##;9?90+$2-;0$3$4$5$6$7$8+$2-80#1+$24#1+$2-90&6+$2-90#3#$?$10$11$12$27$24+$28$27$28$2:$18$19$1:$1;$1<$1=$1>$1?,,1:!$2-;8,8#;9?90!$2-:0,8$28!$2-98,8++$24&6$21#1#2!$2-90,8+$24#1!$2-88,8#;>4:0%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010<0#800000000000&$2#20($2-<0#40#&6+$2-:0#3#7???8000#4)$2-<0#40&6+$2-:0#3#7???8000#4'$24#6;6000#7?????????>8&$24#8)##7???7000#100000001000$24##18#&6$24#3#7???8000#3)$2-<0#40$24##18)$2-<0#40&6$24#3#7???8000#3'$28##800000000000'$29##800000000000'$27#1#40000000!$24#,1$21'$21##2<'&9$21#1##'&4$28+$24#1#1#1,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 761856 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_345f72.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 779412 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_345f72.IT BndT_Na_000.SegItab_Na_345f72.IT_sound BF NX0 BR XSTEP F0 PSS plan 779412 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qjC1S1.

Module LibSegNa_qjC4.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_345f72.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_345f72.IT.
Definition ENDS : list Z := [780044].
Definition STOPS1 : list Z := [780044; 779508] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7$8+$2-80#$;$<$=$>$?$10$11$12$27$24+$28$27$28$2:$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 779424 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;>70<#;>4?4#;>70<#5=#;>70<,20##;>4?4+$2-80$3$4$5$6$7$8+$2-80$24$27$2:$28+$27$28$?$10$11$12$27$24+$28$27$28$2:$18$19$1:$1;$1<$1=$1>$1?,,,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 780044 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_345f72.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 779424 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_345f72.IT BndT_Na_000.SegItab_Na_345f72.IT_sound BF NX0 BR XSTEP F0 PSS plan 779424 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qjC4.

Module LibSegNa_qjQ.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_345f72.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_345f72.IT.
Definition ENDS : list Z := [779816].
Definition STOPS1 : list Z := [779816] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7$34+$2-80$:$;$<$=$>$?$10$11$32$13$14$15$16$17$18+&6$32#3#7???8000$32$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1:'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##8(&6$32#3#7???8000#10!$32#78,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##80$33##1'$34#7???7?801080#800000000000&$34#10!$34-8,8$35!$34-10,8$36!$34-18,8$37!$34-20,8$38!$34-28,8$39!$34-30,8$3:!$34-38,8$3;!$34-40,8$3<!$34-48,8$3=!$34-50,8$3>!$34-58,8$3?!$34-60,8$40)+$34-80##80$32##80)+$34-80##80$33##1"%pstring).
Definition ss0 : sym_state := SS 779612 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;>628#;>628#5=#;>628,20#$35$34$3$4$5$6$7$36$37$13$;$<$=$>$?$10$11$38$39$3:$3;$3<$3=$3>$3?$40$1;$1<$1=$1>$1?,,2<!$33#,1#!&6$32#3#7???800;,1^#?#??????????????5!&6$32#3#7???800:,1^#?#??????????????5!&6$32#3#7???8009,1^#?#??????????????5!&6$32#3#7???8008,1^#?#??????????????5!&6$32#3#7???800?,1^#?#??????????????5!&6$32#3#7???800>,1^#?#??????????????5!&6$32#3#7???800=,1^#?#??????????????5!&6$32#3#7???800<,1^#?#??????????????5!&6$32#3#7???8003,1^#?#??????????????5!&6$32#3#7???8002,1^#?#??????????????5!&6$32#3#7???8001,1^#?#??????????????5!&6$32#3#7???8000,1^#?#??????????????5!&6$32#3#7???8007,1^#?#??????????????5!&6$32#3#7???8006,1^#?#??????????????5!&6$32#3#7???8005,1^#?#??????????????5!&6$32#3#7???8004,1^#?#??????????????5!$32#,8#45>0360>'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##8(&6$32#3#7???8000#10!$32#78,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##80$33##1'$34#7???7?801080#800000000000&$34#10!$34-8,8$35!$34-10,8$36!$34-18,8$37!$34-20,8$38!$34-28,8$39!$34-30,8$3:!$34-38,8$3;!$34-40,8$3<!$34-48,8$3=!$34-50,8$3>!$34-58,8$3?!$34-60,8$40)+$34-80##80$32##80)+$34-80##80$33##1,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 779816 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_345f72.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 779612 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_345f72.IT BndT_Na_000.SegItab_Na_345f72.IT_sound BF NX0 BR XSTEP F0 PSS plan 779612 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qjQ.

Module LibSegNa_qjR.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_345f72.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_345f72.IT.
Definition ENDS : list Z := [779612].
Definition STOPS1 : list Z := [779612] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7$8+$2-80$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 779508 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;>55<#;>55<#5=#;>55<,20#$1+$2-80$3$4$5$6$7$8+$2-80$:$;$<$=$>$?$10$11$12$:$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 779612 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_345f72.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 779508 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_345f72.IT BndT_Na_000.SegItab_Na_345f72.IT_sound BF NX0 BR XSTEP F0 PSS plan 779508 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qjR.

End BndP_Na_071.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_000 BndT_Na_003.
Module BndP_Na_065.
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
Ltac2 kr_t_BndP_Na_065 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_000ASegItab_Na_1e12922ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgrA162BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgrA163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgrA162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgrA165XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgrA162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgrA163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgrA164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgrA165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgrA163kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgrB2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgrB3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgrB2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgrB5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgrB2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgrB3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgrB4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgrB5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgrB3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgrC2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgrC3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgrC2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgrC5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgrC2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgrC3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgrC4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgrC5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgrC3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f38b752ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsA02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsA03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsA02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsA05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsA02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsA03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsA04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsA05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsA03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgsA162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgsA163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgsA162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgsA165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgsA162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgsA163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgsA164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgsA165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgsA163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgsB2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgsB3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgsB2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgsB5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgsB2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgsB3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgsB4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgsB5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgsB3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsE12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsE13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsE12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsE15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsE12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsE13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsE14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsE15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsE13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsE22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsE23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsE22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsE25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsE22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsE23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsE24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsE25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsE23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsE42BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsE43NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsE42BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsE45XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsE42F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsE43PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsE44planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsE45regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsE43kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsFa2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsFa3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsFa2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsFa5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsFa2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsFa3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsFa4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsFa5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsFa3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsFm2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsFm3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsFm2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsFm5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsFm2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsFm3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsFm4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsFm5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065>LibSegNa_qgsFm3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgsQ2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgsQ3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgsQ2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgsQ5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgsQ2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgsQ3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgsQ4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgsQ5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065=LibSegNa_qgsQ3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgsR1e2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgsR1e3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgsR1e2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgsR1e5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgsR1e2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgsR1e3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgsR1e4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgsR1e5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgsR1e3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgsR1o2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgsR1o3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgsR1o2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgsR1o5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgsR1o2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgsR1o3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgsR1o4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgsR1o5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_065?LibSegNa_qgsR1o3kn0".

Module LibSegNa_qgrA16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1e1292.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1e1292.IT.
Definition ENDS : list Z := [412000].
Definition STOPS1 : list Z := [412000; 830188] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2#10$3$4$5$6$7$8$9$22$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 65536 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487264 140737488355312;
   KAlign (EVar 2) 32;
   KWr (SA (EVar 2) (-96)) (ELit 112);
   KRange (EVar 34) 0 1152921504606846975].
Definition ss0 : sym_state := SS 830084 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#64960#<::><#64960#5=#64960,20##<::>4+$2-60$3$4$5$6$7+$2#10+$2-60#60#15?:78#1$=$>$?$10$11$12$22$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,11!$2-38,8$17!$2-30,8$16!$2-28,8$15!$2-20,8$14!$2-18,8$13!$2-10,8$12!$2-8,8$9!$2#,8$8!$2#8,8$1!$2-50,8#%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#7??????????0&$2#20($2-60#70'$22##???????????????,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1e1292.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 830084 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1e1292.IT BndT_Na_000.SegItab_Na_1e1292.IT_sound BF NX0 BR XSTEP F0 PSS plan 830084 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgrA16.

Module LibSegNa_qgrB.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1e1292.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1e1292.IT.
Definition ENDS : list Z := [830356].
Definition STOPS1 : list Z := [830356; 830188; 830556] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$8+$2-60$32$;$<$=$>$?$10$11$12$22$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$2#7???7?801060#800000000000&$2#20($2-50#8)+$2-60##60$32##80'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##18(&6$32#3#7???8000#<'$22##???????????????"%pstring).
Definition ss0 : sym_state := SS 830180 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-80), ELit 8); ((EVar 50), (0), ELit 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), ELit 12)].
Definition F0L : list SR.region := [((EVar 2), (-80), 8); ((EVar 50), (0), 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), 12)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#<:;94#<::><#<:<5<#<:;94#5=#<:;94,20#$1+$2-60$3$4$5$6$7$8+$2-60+&9$22#7^#1#??????????????7^#?#??????????????8#<::84^#?#??????????????1^#?#??????????????3$?$10$11$32$22$14$15+&6$32#3#7???8000$32$18$19$1:$1;$1<$1=$1>$1?,,1:!&6$32#3#7???800;,1^#?#??????????????3!&6$32#3#7???800:,1^#?#??????????????3!&6$32#3#7???8009,1^#?#??????????????3!&6$32#3#7???8008,1^#?#??????????????3!&6$32#3#7???8007,1^#?#??????????????3!&6$32#3#7???8006,1^#?#??????????????8!&6$32#3#7???8005,1^#?#??????????????8!&6$32#3#7???8004,1^#?#??????????????8!&6$32#3#7???8003,1^#?#??????????????1!&6$32#3#7???8002,1^#?#??????????????1!&6$32#3#7???8001,1^#?#??????????????1!&6$32#3#7???8000,1^#?#??????????????1!$32#10,8#<::84!$32#8,8#151;6!$32#,8#41;58:;3!$2-50,8$32'$2#7???7?801060#800000000000&$2#20($2-50#8)+$2-60##60$32##80'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##18(&6$32#3#7???8000#<'$22##???????????????,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 830356 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1e1292.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 830180 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1e1292.IT BndT_Na_000.SegItab_Na_1e1292.IT_sound BF NX0 BR XSTEP F0 PSS plan 830180 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgrB.

Module LibSegNa_qgrC.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1e1292.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1e1292.IT.
Definition ENDS : list Z := [830552].
Definition STOPS1 : list Z := [830552; 830460] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$34$9$:$;$<$=$>$?$10$11$32$22$14$15+&6$32#3#7???8000$32$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",18'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##8(&6$32#3#7???8000#10!$32#78,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##80$33##1'$34#7???7?801060#800000000000&$34#10!$34-8,8$35!$34-10,8$36!$34-18,8$37!$34-20,8$38!$34-28,8$39!$34-30,8$3:!$34-38,8$3;!$34-40,8$3<!$34-48,8$3=)+$34-60##60$32##80)+$34-60##60$33##1'$22##???????????????"%pstring).
Definition ss0 : sym_state := SS 830356 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#<:<58#<:;?<#<:<58#5=#<:<58,20#$35$34$3$4$5$6$7$36$37+@#8&6$22#3#8$33$<$=$>$?$10$11$38$39$3:$3;$3<$3=$18$19$1:$1;$1<$1=$1>$1?,,2:!$33#,1#!&6$32#3#7???800;,1^#?#??????????????5!&6$32#3#7???800:,1^#?#??????????????5!&6$32#3#7???8009,1^#?#??????????????5!&6$32#3#7???8008,1^#?#??????????????5!&6$32#3#7???800?,1^#?#??????????????5!&6$32#3#7???800>,1^#?#??????????????5!&6$32#3#7???800=,1^#?#??????????????5!&6$32#3#7???800<,1^#?#??????????????5!&6$32#3#7???8003,1^#?#??????????????5!&6$32#3#7???8002,1^#?#??????????????5!&6$32#3#7???8001,1^#?#??????????????5!&6$32#3#7???8000,1^#?#??????????????5!&6$32#3#7???8007,1^#?#??????????????5!&6$32#3#7???8006,1^#?#??????????????5!&6$32#3#7???8005,1^#?#??????????????5!&6$32#3#7???8004,1^#?#??????????????5!$32#,8#45>0360>'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##8(&6$32#3#7???8000#10!$32#78,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##80$33##1'$34#7???7?801060#800000000000&$34#10!$34-8,8$35!$34-10,8$36!$34-18,8$37!$34-20,8$38!$34-28,8$39!$34-30,8$3:!$34-38,8$3;!$34-40,8$3<!$34-48,8$3=)+$34-60##60$32##80)+$34-60##60$33##1'$22##???????????????,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 830552 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1e1292.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 830356 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1e1292.IT BndT_Na_000.SegItab_Na_1e1292.IT_sound BF NX0 BR XSTEP F0 PSS plan 830356 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgrC.

Module LibSegNa_qgsA0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f38b75.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f38b75.IT.
Definition ENDS : list Z := [412000].
Definition STOPS1 : list Z := [412000; 866676] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 35); (EVar 34); EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KImg 65536 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487264 140737488355328;
   KAlign (EVar 2) 32;
   KWr (SA (EVar 2) (-96)) (ELit 96)].
Definition ss0 : sym_state := SS 866564 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#64960#=3974#64960#5=#64960,20##=3974+$2-60$3$4$5$6$7$2+$2-60#60#15?:78#1$=$>$?$10$11$12$21$22$23$16$17#7???8000$19$1:$1;$1<$1=$1>$1?,,12!$2-58,8$19!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1!$2-60,8#%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20($2-60#60,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f38b75.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 866564 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f38b75.IT BndT_Na_003.SegItab_Na_f38b75.IT_sound BF NX0 BR XSTEP F0 PSS plan 866564 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgsA0.

Module LibSegNa_qgsA16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f38b75.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f38b75.IT.
Definition ENDS : list Z := [412000].
Definition STOPS1 : list Z := [412000; 866676] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2#10$3$4$5$6$7$8$9$21$23$22$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 65536 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487264 140737488355312;
   KAlign (EVar 2) 32;
   KWr (SA (EVar 2) (-96)) (ELit 112)].
Definition ss0 : sym_state := SS 866564 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#64960#=3974#64960#5=#64960,20##=3974+$2-60$3$4$5$6$7+$2#10+$2-60#60#15?:78#1$=$>$?$10$11$12$21$22$23$16$17#7???8000$19$1:$1;$1<$1=$1>$1?,,12!$2-48,8$19!$2-40,8$18!$2-38,8$17!$2-30,8$16!$2-28,8$15!$2-20,8$14!$2-18,8$13!$2-10,8$12!$2-8,8$9!$2#,8$8!$2#8,8$1!$2-50,8#%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#7??????????0&$2#20($2-60#70,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f38b75.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 866564 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f38b75.IT BndT_Na_003.SegItab_Na_f38b75.IT_sound BF NX0 BR XSTEP F0 PSS plan 866564 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgsA16.

Module LibSegNa_qgsB.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f38b75.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f38b75.IT.
Definition ENDS : list Z := [866844].
Definition STOPS1 : list Z := [866844] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$8+$2-60$32$;$<$=$>$?$10$11$12$13$14$23$16$17#7???8000$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$2#7???7?801060#800000000000&$2#20($2-60#8)+$2-60##60$32##80'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##18(&6$32#3#7???8000#<"%pstring).
Definition ss0 : sym_state := SS 866676 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-96), ELit 8); ((EVar 50), (0), ELit 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), ELit 12)].
Definition F0L : list SR.region := [((EVar 2), (-96), 8); ((EVar 50), (0), 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), 12)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#=3:1<#=3:1<#5=#=3:1<,20#$1+$2-60$3$4$5$6$7$8+$2-60+$23-<4#1;#=3904^#?#??????????????2^#?#??????????????8$?$10$11$32$13$14$23+&6$32#3#7???8000$32#7???8000$19$1:$1;$1<$1=$1>$1?,,19!$2-60,8$32!&6$32#3#7???800;,1^#?#??????????????3!&6$32#3#7???800:,1^#?#??????????????3!&6$32#3#7???8009,1^#?#??????????????3!&6$32#3#7???8008,1^#?#??????????????8!&6$32#3#7???8003,1^#?#??????????????1!&6$32#3#7???8002,1^#?#??????????????1!&6$32#3#7???8001,1^#?#??????????????1!&6$32#3#7???8000,1^#?#??????????????1!&6$32#3#7???8007,1^#?#??????????????2!&6$32#3#7???8006,1^#?#??????????????8!&6$32#3#7???8005,1^#?#??????????????2!&6$32#3#7???8004,1^#?#??????????????8!$32#10,8#=3904!$32#8,8#19;:8!$32#,8#41;58:;3'$2#7???7?801060#800000000000&$2#20($2-60#8)+$2-60##60$32##80'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##18(&6$32#3#7???8000#<,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 866844 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f38b75.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 866676 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f38b75.IT BndT_Na_003.SegItab_Na_f38b75.IT_sound BF NX0 BR XSTEP F0 PSS plan 866676 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgsB.

Module LibSegNa_qgsE1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f38b75.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f38b75.IT.
Definition ENDS : list Z := [867336].
Definition STOPS1 : list Z := [867336] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$21$14$15+&6$32#3#7???8000$17#7???8000$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80(&6$32#3#7???8000#10'$21#6;6000#7????????>70&$21#8)##7???7000#100000001000$21##190#&6+$21#8#3#7???8000#1($21#8#1"%pstring).
Definition ss0 : sym_state := SS 867188 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 33), (8), ELit 1); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (4), ELit 1)].
Definition F0L : list SR.region := [((EVar 33), (8), 1); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (4), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#=3<08#=3<08#5=#=3<08,20#$1$2$3$4$5$6$7$8$9#^#?#??????????????8$<$=$>$?$10$11$12+$21#8$14$15+&6$32#3#7???8000$17#7???8000$19$1:$1;$1<$1=$1>$1?,,:!&6$32#3#7???8004,1^#?#??????????????8!$21#8,1#'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80(&6$32#3#7???8000#10'$21#6;6000#7????????>70&$21#8)##7???7000#100000001000$21##190($21#8#1,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 867336 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f38b75.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 867188 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f38b75.IT BndT_Na_003.SegItab_Na_f38b75.IT_sound BF NX0 BR XSTEP F0 PSS plan 867188 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgsE1.

Module LibSegNa_qgsE2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f38b75.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f38b75.IT.
Definition ENDS : list Z := [867336].
Definition STOPS1 : list Z := [867336] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$21$14$15+&6$32#3#7???8000$17#7???8000$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80(&6$32#3#7???8000#10'$21#6;6000#7????????>70&$21#8)##7???7000#100000001000$21##190#&6+$21#8#3#7???8000#1($21#8#1"%pstring).
Definition ss0 : sym_state := SS 867136 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 33), (8), ELit 1); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (6), ELit 1)].
Definition F0L : list SR.region := [((EVar 33), (8), 1); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (6), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#=3<08#=3<08#5=#=3<08,20#$1$2$3$4$5$6$7$8$9#^#?#??????????????8$<$=$>$?$10$11$12+$21#8$14$15+&6$32#3#7???8000$17#7???8000$19$1:$1;$1<$1=$1>$1?,,:!&6$32#3#7???8006,1^#?#??????????????8!$21#8,1#'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80(&6$32#3#7???8000#10'$21#6;6000#7????????>70&$21#8)##7???7000#100000001000$21##190($21#8#1,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 867336 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f38b75.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 867136 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f38b75.IT BndT_Na_003.SegItab_Na_f38b75.IT_sound BF NX0 BR XSTEP F0 PSS plan 867136 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgsE2.

Module LibSegNa_qgsE4.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f38b75.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f38b75.IT.
Definition ENDS : list Z := [867336].
Definition STOPS1 : list Z := [867336] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$21$14$15+&6$32#3#7???8000$17#7???8000$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80(&6$32#3#7???8000#10'$21#6;6000#7????????>70&$21#8)##7???7000#100000001000$21##190#&6+$21#8#3#7???8000#1($21#8#1"%pstring).
Definition ss0 : sym_state := SS 867084 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 33), (8), ELit 1); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (8), ELit 1)].
Definition F0L : list SR.region := [((EVar 33), (8), 1); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (8), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#=3<08#=3<08#5=#=3<08,20#$1$2$3$4$5$6$7$8$9#^#?#??????????????8$<$=$>$?$10$11$12+$21#8$14$15+&6$32#3#7???8000$17#7???8000$19$1:$1;$1<$1=$1>$1?,,:!&6$32#3#7???8008,1^#?#??????????????8!$21#8,1#'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80(&6$32#3#7???8000#10'$21#6;6000#7????????>70&$21#8)##7???7000#100000001000$21##190($21#8#1,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 867336 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f38b75.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 867084 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f38b75.IT BndT_Na_003.SegItab_Na_f38b75.IT_sound BF NX0 BR XSTEP F0 PSS plan 867084 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgsE4.

Module LibSegNa_qgsFa.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f38b75.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f38b75.IT.
Definition ENDS : list Z := [867336].
Definition STOPS1 : list Z := [867336] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9+$23-<4#1;$<$=$>$?$10$11$12$13$14$23$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 65536 1409024;
   KRange (EVar 35) 144 159].
Definition ss0 : sym_state := SS 866844 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#=3<08#=3<08#5=#=3<08,20#$1$2$3$4$5$6$7$8$9&9$23#?#90$<$=$>$?$10$11$12$13$14$23$16$17$18$19$1:$1;$1<$1=$1>$1?,,2%#10000#158000'$23#90#9?,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 867336 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f38b75.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 866844 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f38b75.IT BndT_Na_003.SegItab_Na_f38b75.IT_sound BF NX0 BR XSTEP F0 PSS plan 866844 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgsFa.

Module LibSegNa_qgsFm.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f38b75.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f38b75.IT.
Definition ENDS : list Z := [867336].
Definition STOPS1 : list Z := [867336] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9+$23-<4#1;$<$=$>$?$10$11$12$13$14$23$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 65536 1409024;
   KRange (EVar 35) 128 143].
Definition ss0 : sym_state := SS 866844 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#=3<08#=3<08#5=#=3<08,20#$1$2$3$4$5$6$7$8$9&9$23#?^#?#?????????????90$<$=$>$?$10$11$12$13$14$23$16$17$18$19$1:$1;$1<$1=$1>$1?,,2%#10000#158000'$23#80#8?,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 867336 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f38b75.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 866844 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f38b75.IT BndT_Na_003.SegItab_Na_f38b75.IT_sound BF NX0 BR XSTEP F0 PSS plan 866844 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgsFm.

Module LibSegNa_qgsQ.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f38b75.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f38b75.IT.
Definition ENDS : list Z := [867532].
Definition STOPS1 : list Z := [867532] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$34$9$:$;$<$=$>$?$10$11$32$13$14$15+&6$32#3#7???8000$32$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",19'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##8(&6$32#3#7???8000#10!$32#78,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##80$33##1'$34#7???7?801060#800000000000&$34#10!$34-8,8$3<!$34-10,8$3=!$34-18,8$3>!$34-20,8$3?!$34-28,8$40!$34-30,8$41!$34-38,8$42!$34-40,8$43!$34-48,8$44!$34-50,8$45!$34-58,8$46)+$34-60##60$32##80)+$34-60##60$33##1"%pstring).
Definition ss0 : sym_state := SS 867336 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#=3<<<#=3<<<#5=#=3<<<,20#$3<$34$3$4$5$6$7$3=$3>$:$33$<$=$>$?$10$11$3?$40$41$42$43$44$45$46$1:$1;$1<$1=$1>$1?,,2;!$33#,1#!&6$32#3#7???800;,1^#?#??????????????5!&6$32#3#7???800:,1^#?#??????????????5!&6$32#3#7???8009,1^#?#??????????????5!&6$32#3#7???8008,1^#?#??????????????5!&6$32#3#7???800?,1^#?#??????????????5!&6$32#3#7???800>,1^#?#??????????????5!&6$32#3#7???800=,1^#?#??????????????5!&6$32#3#7???800<,1^#?#??????????????5!&6$32#3#7???8003,1^#?#??????????????5!&6$32#3#7???8002,1^#?#??????????????5!&6$32#3#7???8001,1^#?#??????????????5!&6$32#3#7???8000,1^#?#??????????????5!&6$32#3#7???8007,1^#?#??????????????5!&6$32#3#7???8006,1^#?#??????????????5!&6$32#3#7???8005,1^#?#??????????????5!&6$32#3#7???8004,1^#?#??????????????5!$32#,8#45>0360>'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##8(&6$32#3#7???8000#10!$32#78,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##80$33##1'$34#7???7?801060#800000000000&$34#10!$34-8,8$3<!$34-10,8$3=!$34-18,8$3>!$34-20,8$3?!$34-28,8$40!$34-30,8$41!$34-38,8$42!$34-40,8$43!$34-48,8$44!$34-50,8$45!$34-58,8$46)+$34-60##60$32##80)+$34-60##60$33##1,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 867532 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f38b75.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 867336 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f38b75.IT BndT_Na_003.SegItab_Na_f38b75.IT_sound BF NX0 BR XSTEP F0 PSS plan 867336 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgsQ.

Module LibSegNa_qgsR1e.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f38b75.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f38b75.IT.
Definition ENDS : list Z := [810712].
Definition STOPS1 : list Z := [810712] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; ELit 0; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; (EVar 34); EVar 21; EVar 22; EVar 23; EVar 24; ELit 1; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 867060 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<5>=8#<5>=8#5=#<5>=8,20##=3;74$2$3$4$5$6$7$8$9$22#1$<$=$>$?$10$11$12$13$22$15$16$17$18#1$1:$1;$1<$1=$1>$1?,,,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 810712 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f38b75.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 867060 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f38b75.IT BndT_Na_003.SegItab_Na_f38b75.IT_sound BF NX0 BR XSTEP F0 PSS plan 867060 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgsR1e.

Module LibSegNa_qgsR1o.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f38b75.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f38b75.IT.
Definition ENDS : list Z := [867336].
Definition STOPS1 : list Z := [867336] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9#1$;$<$=$>$?$10$11$12$13$14+$32#20+&6$32#3#7???8000$17$18#1$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 50) 7036928 140737488355200;
   KAlign (EVar 50) 32;
   KDisj (SA (ELit 0) 2147446784) (ELit 17592186048512) (SA (EVar 50) 0) (ELit 128);
   KUnk (SA (EVar 50) 0) (ELit 128);
   KWr (SA (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) 2147450880) (ELit 16)].
Definition ss0 : sym_state := SS 867060 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (4), ELit 1)].
Definition F0L : list SR.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (4), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#=3<08#=3<08#5=#=3<08,20#$1$2$3$4$5$6$7$8$9$50^#?#??????????????8$<$=$>$?$10$11$12$13$14+$32#20+&6$32#3#7???8000$17$18#1$1:$1;$1<$1=$1>$1?,,6!&6$32#3#7???8004,1^#?#??????????????8'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80,$32##80(&6$32#3#7???8000#10,51!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 867336 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f38b75.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 867060 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f38b75.IT BndT_Na_003.SegItab_Na_f38b75.IT_sound BF NX0 BR XSTEP F0 PSS plan 867060 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgsR1o.

End BndP_Na_065.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_003.
Module BndP_Na_066.
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
Ltac2 kr_t_BndP_Na_066 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f38b752ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR2e2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR2e3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR2e2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR2e5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR2e2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR2e3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR2e4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR2e5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR2e3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR2o2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR2o3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR2o2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR2o5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR2o2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR2o3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR2o4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR2o5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR2o3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR4e2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR4e3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR4e2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR4e5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR4e2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR4e3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR4e4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR4e5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR4e3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR4o2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR4o3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR4o2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR4o5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR4o2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR4o3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR4o4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR4o5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066?LibSegNa_qgsR4o3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1962BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1963NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1962BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1965XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1962F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1963PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1964planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1965regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1963kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1972BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1973NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1972BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1975XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1972F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1973PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1974planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1975regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1973kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1982BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1983NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1982BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1985XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1982F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1983PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1984planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1985regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1983kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1992BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1993NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1992BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1995XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1992F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1993PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1994planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1995regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT1993kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2002BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2003NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2002BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2005XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2002F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2003PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2004planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2005regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2003kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2012BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2013NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2012BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2015XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2012F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2013PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2014planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2015regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2013kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2122BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2123NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2122BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2125XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2122F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2123PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2124planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2125regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2123kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2132BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2133NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2132BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2135XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2132F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2133PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2134planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2135regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2133kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2142BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2143NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2142BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2145XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2142F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2143PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2144planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2145regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2143kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2152BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2153NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2152BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2155XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2152F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2153PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2154planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2155regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_066@LibSegNa_qgsT2153kn0".

Module LibSegNa_qgsR2e.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f38b75.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f38b75.IT.
Definition ENDS : list Z := [810712].
Definition STOPS1 : list Z := [810712] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 37); EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; (EVar 34); EVar 21; EVar 22; EVar 23; EVar 24; ELit 2; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KRange (EVar 37) 0 1].
Definition ss0 : sym_state := SS 866908 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<5>=8#<5>=8#5=#<5>=8,20##=3;40$2$3$4$5$6$7$8$9$22#1$<$=$>$?$10$11$12$13$22$15$16$17$18#2$1:$1;$1<$1=$1>$1?,,1'$25##1,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 810712 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f38b75.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 866908 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f38b75.IT BndT_Na_003.SegItab_Na_f38b75.IT_sound BF NX0 BR XSTEP F0 PSS plan 866908 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgsR2e.

Module LibSegNa_qgsR2o.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f38b75.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f38b75.IT.
Definition ENDS : list Z := [867336].
Definition STOPS1 : list Z := [867336] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9#2$;$<$=$>$?$10$11$12$13$14+$32#30+&6$32#3#7???8000$17$18#2$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 50) 7036928 140737488355200;
   KAlign (EVar 50) 32;
   KDisj (SA (ELit 0) 2147446784) (ELit 17592186048512) (SA (EVar 50) 0) (ELit 128);
   KUnk (SA (EVar 50) 0) (ELit 128);
   KWr (SA (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) 2147450880) (ELit 16)].
Definition ss0 : sym_state := SS 866908 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (6), ELit 1)].
Definition F0L : list SR.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (6), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#=3<08#=3<08#5=#=3<08,20#$1$2$3$4$5$6$7$8$9&6@#1000000000000&8@#100$50&6$50#8#30^#?#??????????????8$<$=$>$?$10$11$12$13$14+$32#30+&6$32#3#7???8000$17$18#2$1:$1;$1<$1=$1>$1?,,6!&6$32#3#7???8006,1^#?#??????????????8'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80,$32##80(&6$32#3#7???8000#10,51!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 867336 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f38b75.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 866908 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f38b75.IT BndT_Na_003.SegItab_Na_f38b75.IT_sound BF NX0 BR XSTEP F0 PSS plan 866908 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgsR2o.

Module LibSegNa_qgsR4e.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f38b75.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f38b75.IT.
Definition ENDS : list Z := [810712].
Definition STOPS1 : list Z := [810712] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 37); EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; (EVar 34); EVar 21; EVar 22; EVar 23; EVar 24; ELit 4; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KRange (EVar 37) 0 3].
Definition ss0 : sym_state := SS 866968 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<5>=8#<5>=8#5=#<5>=8,20##=3;0<$2$3$4$5$6$7$8$9$22#1$<$=$>$?$10$11$12$13$22$15$16$17$18#4$1:$1;$1<$1=$1>$1?,,1'$25##3,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 810712 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f38b75.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 866968 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f38b75.IT BndT_Na_003.SegItab_Na_f38b75.IT_sound BF NX0 BR XSTEP F0 PSS plan 866968 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgsR4e.

Module LibSegNa_qgsR4o.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f38b75.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f38b75.IT.
Definition ENDS : list Z := [867336].
Definition STOPS1 : list Z := [867336] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9#4$;$<$=$>$?$10$11$12$13$14+$32#40+&6$32#3#7???8000$17$18#4$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 50) 7036928 140737488355200;
   KAlign (EVar 50) 32;
   KDisj (SA (ELit 0) 2147446784) (ELit 17592186048512) (SA (EVar 50) 0) (ELit 128);
   KUnk (SA (EVar 50) 0) (ELit 128);
   KWr (SA (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) 2147450880) (ELit 16)].
Definition ss0 : sym_state := SS 866968 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (8), ELit 1)].
Definition F0L : list SR.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (8), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#=3<08#=3<08#5=#=3<08,20#$1$2$3$4$5$6$7$8$9&6@#100000000&8+@#1000000$50@#100&9$50#??00&8&9&6$50#8#??00%6$50#18#20^#?#??????????????8&8&9&6$50#8#??00%6$50#18%6$50#18$>$?$10$11$12$13$14+$32#40+&6$32#3#7???8000$17$18#4$1:$1;$1<$1=$1>$1?,,6!&6$32#3#7???8008,1^#?#??????????????8'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80,$32##80(&6$32#3#7???8000#10,51!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 867336 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f38b75.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 866968 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f38b75.IT BndT_Na_003.SegItab_Na_f38b75.IT_sound BF NX0 BR XSTEP F0 PSS plan 866968 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgsR4o.

Module LibSegNa_qgsT196.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f38b75.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f38b75.IT.
Definition ENDS : list Z := [862896].
Definition STOPS1 : list Z := [862896] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9##1;$<$=$>$?$10$11$12$21$14$15+&6$32#3#7???8000$32$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 65536 1409024;
   KRange (EVar 50) 7036928 140737488355200;
   KAlign (EVar 50) 32;
   KDisj (SA (ELit 0) 2147446784) (ELit 17592186048512) (SA (EVar 50) 0) (ELit 128);
   KWr (SA (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) 2147450880) (ELit 16)].
Definition ss0 : sym_state := SS 866844 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (4), ELit 1)].
Definition F0L : list SR.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (4), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#=2:;0#=2:;0#5=#=2:;0,20##=3:?4$2$3$4$5$6$7$8$9+$21#18+$32#20#1$=$>$?$10$11$12$21$14+$32#20+&6$32#3#7???8000$32$18#1$1:$1;$1<$1=$1>$1?,,6!&6$32#3#7???8004,1#1%#10000#158000'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80(&6$32#3#7???8000#10,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 862896 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f38b75.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 866844 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f38b75.IT BndT_Na_003.SegItab_Na_f38b75.IT_sound BF NX0 BR XSTEP F0 PSS plan 866844 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgsT196.

Module LibSegNa_qgsT197.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f38b75.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f38b75.IT.
Definition ENDS : list Z := [862896].
Definition STOPS1 : list Z := [862896] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9#1#1;$<$=$>$?$10$11$12$21$14$15+&6$32#3#7???8000$32$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 65536 1409024;
   KRange (EVar 50) 7036928 140737488355200;
   KAlign (EVar 50) 32;
   KDisj (SA (ELit 0) 2147446784) (ELit 17592186048512) (SA (EVar 50) 0) (ELit 128);
   KWr (SA (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) 2147450880) (ELit 16)].
Definition ss0 : sym_state := SS 866844 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (6), ELit 1)].
Definition F0L : list SR.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (6), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#=2:;0#=2:;0#5=#=2:;0,20##=3:5<$2$3$4$5$6$7$8$9+$21#18+$32#30#2$=$>$?$10$11$12$21$14+$32#30+&6$32#3#7???8000$32$18#2$1:$1;$1<$1=$1>$1?,,6!&6$32#3#7???8006,1#2%#10000#158000'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80(&6$32#3#7???8000#10,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 862896 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f38b75.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 866844 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f38b75.IT BndT_Na_003.SegItab_Na_f38b75.IT_sound BF NX0 BR XSTEP F0 PSS plan 866844 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgsT197.

Module LibSegNa_qgsT198.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f38b75.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f38b75.IT.
Definition ENDS : list Z := [862896].
Definition STOPS1 : list Z := [862896] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9#2#1;$<$=$>$?$10$11$12$21$14$15+&6$32#3#7???8000$32$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 65536 1409024;
   KRange (EVar 50) 7036928 140737488355200;
   KAlign (EVar 50) 32;
   KDisj (SA (ELit 0) 2147446784) (ELit 17592186048512) (SA (EVar 50) 0) (ELit 128);
   KWr (SA (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) 2147450880) (ELit 16)].
Definition ss0 : sym_state := SS 866844 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (8), ELit 1)].
Definition F0L : list SR.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (8), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#=2:;0#=2:;0#5=#=2:;0,20##=3:98$2$3$4$5$6$7$8$9+$21#18+$32#40#4$=$>$?$10$11$12$21$14+$32#40+&6$32#3#7???8000$32$18#4$1:$1;$1<$1=$1>$1?,,6!&6$32#3#7???8008,1#4%#10000#158000'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80(&6$32#3#7???8000#10,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 862896 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f38b75.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 866844 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f38b75.IT BndT_Na_003.SegItab_Na_f38b75.IT_sound BF NX0 BR XSTEP F0 PSS plan 866844 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgsT198.

Module LibSegNa_qgsT199.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f38b75.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f38b75.IT.
Definition ENDS : list Z := [862896].
Definition STOPS1 : list Z := [862896] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9#3#1;$<$=$>$?$10$11$12$21$14$15+&6$32#3#7???8000$32$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 65536 1409024;
   KRange (EVar 50) 7036928 140737488355200;
   KAlign (EVar 50) 32;
   KDisj (SA (ELit 0) 2147446784) (ELit 17592186048512) (SA (EVar 50) 0) (ELit 128);
   KWr (SA (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) 2147450880) (ELit 16)].
Definition ss0 : sym_state := SS 866844 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (4), ELit 1)].
Definition F0L : list SR.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (4), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#=2:;0#=2:;0#5=#=2:;0,20##=3:?4$2$3$4$5$6$7$8$9+$21#18+$32#20#1$=$>$?$10$11$12$21$14+$32#20+&6$32#3#7???8000$32$18#1$1:$1;$1<$1=$1>$1?,,6!&6$32#3#7???8004,1#1%#10000#158000'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80(&6$32#3#7???8000#10,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 862896 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f38b75.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 866844 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f38b75.IT BndT_Na_003.SegItab_Na_f38b75.IT_sound BF NX0 BR XSTEP F0 PSS plan 866844 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgsT199.

Module LibSegNa_qgsT200.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f38b75.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f38b75.IT.
Definition ENDS : list Z := [862896].
Definition STOPS1 : list Z := [862896] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9#4#1;$<$=$>$?$10$11$12$21$14$15+&6$32#3#7???8000$32$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 65536 1409024;
   KRange (EVar 50) 7036928 140737488355200;
   KAlign (EVar 50) 32;
   KDisj (SA (ELit 0) 2147446784) (ELit 17592186048512) (SA (EVar 50) 0) (ELit 128);
   KWr (SA (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) 2147450880) (ELit 16)].
Definition ss0 : sym_state := SS 866844 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (6), ELit 1)].
Definition F0L : list SR.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (6), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#=2:;0#=2:;0#5=#=2:;0,20##=3:5<$2$3$4$5$6$7$8$9+$21#18+$32#30#2$=$>$?$10$11$12$21$14+$32#30+&6$32#3#7???8000$32$18#2$1:$1;$1<$1=$1>$1?,,6!&6$32#3#7???8006,1#2%#10000#158000'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80(&6$32#3#7???8000#10,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 862896 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f38b75.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 866844 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f38b75.IT BndT_Na_003.SegItab_Na_f38b75.IT_sound BF NX0 BR XSTEP F0 PSS plan 866844 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgsT200.

Module LibSegNa_qgsT201.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f38b75.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f38b75.IT.
Definition ENDS : list Z := [862896].
Definition STOPS1 : list Z := [862896] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9#5#1;$<$=$>$?$10$11$12$21$14$15+&6$32#3#7???8000$32$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 65536 1409024;
   KRange (EVar 50) 7036928 140737488355200;
   KAlign (EVar 50) 32;
   KDisj (SA (ELit 0) 2147446784) (ELit 17592186048512) (SA (EVar 50) 0) (ELit 128);
   KWr (SA (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) 2147450880) (ELit 16)].
Definition ss0 : sym_state := SS 866844 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (8), ELit 1)].
Definition F0L : list SR.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (8), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#=2:;0#=2:;0#5=#=2:;0,20##=3:98$2$3$4$5$6$7$8$9+$21#18+$32#40#4$=$>$?$10$11$12$21$14+$32#40+&6$32#3#7???8000$32$18#4$1:$1;$1<$1=$1>$1?,,6!&6$32#3#7???8008,1#4%#10000#158000'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80(&6$32#3#7???8000#10,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 862896 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f38b75.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 866844 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f38b75.IT BndT_Na_003.SegItab_Na_f38b75.IT_sound BF NX0 BR XSTEP F0 PSS plan 866844 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgsT201.

Module LibSegNa_qgsT212.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f38b75.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f38b75.IT.
Definition ENDS : list Z := [867336].
Definition STOPS1 : list Z := [867336] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; ELit 16; ELit 27; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KImg 65536 1409024].
Definition ss0 : sym_state := SS 866844 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#=3<08#=3<08#5=#=3<08,20#$1$2$3$4$5$6$7$8$9#1#=3<08$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1%#10000#158000,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 867336 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f38b75.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 866844 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f38b75.IT BndT_Na_003.SegItab_Na_f38b75.IT_sound BF NX0 BR XSTEP F0 PSS plan 866844 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgsT212.

Module LibSegNa_qgsT213.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f38b75.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f38b75.IT.
Definition ENDS : list Z := [867336].
Definition STOPS1 : list Z := [867336] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; ELit 17; ELit 27; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KImg 65536 1409024].
Definition ss0 : sym_state := SS 866844 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#=3<08#=3<08#5=#=3<08,20#$1$2$3$4$5$6$7$8$9#2#=3;9<$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1%#10000#158000,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 867336 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f38b75.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 866844 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f38b75.IT BndT_Na_003.SegItab_Na_f38b75.IT_sound BF NX0 BR XSTEP F0 PSS plan 866844 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgsT213.

Module LibSegNa_qgsT214.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f38b75.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f38b75.IT.
Definition ENDS : list Z := [867336].
Definition STOPS1 : list Z := [867336] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; ELit 18; ELit 27; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KImg 65536 1409024].
Definition ss0 : sym_state := SS 866844 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#=3<08#=3<08#5=#=3<08,20#$1$2$3$4$5$6$7$8$9#4#=3;:4$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1%#10000#158000,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 867336 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f38b75.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 866844 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f38b75.IT BndT_Na_003.SegItab_Na_f38b75.IT_sound BF NX0 BR XSTEP F0 PSS plan 866844 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgsT214.

Module LibSegNa_qgsT215.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f38b75.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f38b75.IT.
Definition ENDS : list Z := [867336].
Definition STOPS1 : list Z := [867336] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; ELit 19; ELit 27; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KImg 65536 1409024].
Definition ss0 : sym_state := SS 866844 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#=3<08#=3<08#5=#=3<08,20#$1$2$3$4$5$6$7$8$9#8#=3;?<$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1%#10000#158000,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 867336 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f38b75.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 866844 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f38b75.IT BndT_Na_003.SegItab_Na_f38b75.IT_sound BF NX0 BR XSTEP F0 PSS plan 866844 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qgsT215.

End BndP_Na_066.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_000.
Module BndP_Na_069.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_000.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Na_069 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_000ASegItab_Na_1917132ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaG2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaG3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaG2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaG5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaG2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaG3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaG4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaG5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaG3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaH2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaH3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaH2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaH5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaH2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaH3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaH4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaH5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaH3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaI2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaI3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaI2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaI5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaI2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaI3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaI4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaI5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaI3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaJ2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaJ3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaJ2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaJ5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaJ2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaJ3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaJ4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaJ5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaJ3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaK2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaK3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaK2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaK5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaK2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaK3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaK4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaK5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaK3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaL2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaL3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaL2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaL5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaL2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaL3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaL4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaL5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaL3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaM02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaM03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaM02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaM05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaM02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaM03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaM04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaM05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaM03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaMl2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaMl3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaMl2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaMl5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaMl2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaMl3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaMl4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaMl5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaMl3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaMs2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaMs3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaMs2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaMs5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaMs2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaMs3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaMs4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaMs5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaMs3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaN2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaN3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaN2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaN5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaN2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaN3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaN4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaN5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaN3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaO2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaO3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaO2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaO5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaO2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaO3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaO4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaO5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaO3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaPl2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaPl3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaPl2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaPl5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaPl2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaPl3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaPl4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaPl5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaPl3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaPs2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaPs3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaPs2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaPs5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaPs2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaPs3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaPs4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaPs5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069>LibSegNa_qhaPs3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaQ2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaQ3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaQ2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaQ5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaQ2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaQ3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaQ4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaQ5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0170;BndP_Na_069=LibSegNa_qhaQ3kn0".

Module LibSegNa_qhaG.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_191713.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_191713.IT.
Definition ENDS : list Z := [1018160].
Definition STOPS1 : list Z := [1018160] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$3:+$2-:0$3$4$5$6$7$8+$2-:0$:$;$<$=$>$?$10$11#7???8000+&6$28#3#7???8000#400+$28#60+$28#1;0+$28#208+$28#1?0+$28#250+$28#490$28$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",10'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0'$28#1000#7????????800&$28#20,$28##800($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1"%pstring).
Definition ss0 : sym_state := SS 718004 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 40), (1232), ELit 4); ((EAlu Instr.ALU_SRL (EVar 40) (ELit 3)), (2147451026), ELit 3); ((EAlu Instr.ALU_SRL (EVar 40) (ELit 3)), (2147451034), ELit 2)].
Definition F0L : list SR.region := [((EVar 40), (1232), 4); ((EAlu Instr.ALU_SRL (EVar 40) (ELit 3)), (2147451026), 3); ((EAlu Instr.ALU_SRL (EVar 40) (ELit 3)), (2147451034), 2)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#?8930#?8930#5=#?8930,20##:?4=8+$2-:0$3$4$5$6$7$8+$2-:0$:$;$<$=$>$?$10$11#7???8000+&6$28#3#7???8000^#?#??????????????8+$28#60+$28#1;0+$28#208+$28#4=0+$28#250+$28#490$28$1<$1=$1>$1?,,17!$28#4=0,4#!&6$28#3#7???809:,1#!&6$28#3#7???8094,1^#?#??????????????8!&6$28#3#7???8093,1^#?#??????????????8!&6$28#3#7???8092,1^#?#??????????????8!&6$28#3#7???809;,1#'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0'$28#1000#7????????800&$28#20,$28##4=0,$28#4=4#32<($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1,40!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 0%nat.
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
Definition ps0 : SR.post_spec := SR.PS 1018160 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_191713.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 718004 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_191713.IT BndT_Na_000.SegItab_Na_191713.IT_sound BF NX0 BR XSTEP F0 PSS plan 718004 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qhaG.

Module LibSegNa_qhaH.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_191713.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_191713.IT.
Definition ENDS : list Z := [850812].
Definition STOPS1 : list Z := [850812] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$3:+$2-:0$3$4$5$6$7$8+$2-:0$:$;$<$=$>$?$10$11#7???8000+&6$28#3#7???8000^#?#??????????????8+$28#60+$28#1;0+$28#208+$28#4=0+$28#250+$28#490$28$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",10'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0'$28#1000#7????????800&$28#20,$28##800($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1"%pstring).
Definition ss0 : sym_state := SS 718040 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 40), (1240), ELit 8)].
Definition F0L : list SR.region := [((EVar 40), (1240), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<?;7<#<?;7<#5=#<?;7<,20##:?4>4+$2-:0$3$4$5$6$7$8+$2-:0+$28#250$;$<$=$>$?$10$11#7???8000+&6$28#3#7???8000^#?#??????????????8+$28#60+$28#1;0+$28#208+$28#4=0+$28#250+$28#490$28$1<$1=$1>$1?,,12!$28#4=8,8$:'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0'$28#1000#7????????800&$28#20,$28##4=8,$28#4>0#320($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1,40!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 0%nat.
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
Definition ps0 : SR.post_spec := SR.PS 850812 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_191713.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 718040 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_191713.IT BndT_Na_000.SegItab_Na_191713.IT_sound BF NX0 BR XSTEP F0 PSS plan 718040 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qhaH.

Module LibSegNa_qhaI.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_191713.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_191713.IT.
Definition ENDS : list Z := [851380].
Definition STOPS1 : list Z := [851380] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$3:+$2-:0$3$4$5$6$7$8+$2-:0$:$;$<$=$>$?$10$11#7???8000+&6$28#3#7???8000^#?#??????????????8+$28#60+$28#1;0+$28#208+$28#4=0+$28#250+$28#490$28$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0'$28#1000#7????????800&$28#20,$28##800($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1!$28#440,8$23"%pstring).
Definition ss0 : sym_state := SS 718052 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<?=;4#<?=;4#5=#<?=;4,20##:?4?4+$2-:0$3$4$5$6$7$8+$2-:0+$28#250$23+$28#4=0$=$>$?$10$11#7???8000+&6$28#3#7???8000^#?#??????????????8+$28#60+$28#1;0+$28#208+$28#4=0+$28#250+$28#490$28$1<$1=$1>$1?,,11'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0'$28#1000#7????????800&$28#20,$28##800($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1!$28#440,8$23,40!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 0%nat.
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
Definition ps0 : SR.post_spec := SR.PS 851380 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_191713.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 718052 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_191713.IT BndT_Na_000.SegItab_Na_191713.IT_sound BF NX0 BR XSTEP F0 PSS plan 718052 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qhaI.

Module LibSegNa_qhaJ.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_191713.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_191713.IT.
Definition ENDS : list Z := [720724].
Definition STOPS1 : list Z := [720724] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$3:+$2-:0$3$4$5$6$7$8+$2-:0$:$;$<$=$>$?$10$11#7???8000+&6$28#3#7???8000^#?#??????????????8+$28#60+$28#1;0+$28#208+$28#4=0+$28#250+$28#490$28$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",10'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0'$28#1000#7????????800&$28#20,$28##800($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1"%pstring).
Definition ss0 : sym_state := SS 718068 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EAlu Instr.ALU_SRL (EVar 40) (ELit 3)), (2147451034), ELit 2)].
Definition F0L : list SR.region := [((EAlu Instr.ALU_SRL (EVar 40) (ELit 3)), (2147451034), 2)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#:??54#:??54#5=#:??54,20##:?508+$2-:0$3$4$5$6$7$8+$2-:0+$28#250$;$<$=$>$?$10$11#7???8000+&6$28#3#7???8000^#?#??????????????8+$28#60+$28#1;0+$28#208^#?#??????????????8+$28#250+$28#490$28$1<$1=$1>$1?,,12!&6$28#3#7???809;,1^#?#??????????????8!&6$28#3#7???809:,1^#?#??????????????8'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0'$28#1000#7????????800&$28#20,$28##800($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1,40!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 0%nat.
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
Definition ps0 : SR.post_spec := SR.PS 720724 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_191713.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 718068 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_191713.IT BndT_Na_000.SegItab_Na_191713.IT_sound BF NX0 BR XSTEP F0 PSS plan 718068 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qhaJ.

Module LibSegNa_qhaK.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_191713.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_191713.IT.
Definition ENDS : list Z := [846412].
Definition STOPS1 : list Z := [846412] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$3:+$2-:0$3$4$5$6$7$8+$2-:0$:$;$<$=$>$?$10$11#7???8000+&6$28#3#7???8000^#?#??????????????8+$28#60+$28#1;0+$28#208^#?#??????????????8+$28#250+$28#490$28$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",10'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0'$28#1000#7????????800&$28#20,$28##800($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1"%pstring).
Definition ss0 : sym_state := SS 718088 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EAlu Instr.ALU_SRL (EVar 40) (ELit 3)), (2147450954), ELit 63); ((EVar 2), (-112), ELit 8)].
Definition F0L : list SR.region := [((EAlu Instr.ALU_SRL (EVar 40) (ELit 3)), (2147450954), 63); ((EVar 2), (-112), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<>:4<#<>:4<#5=#<>:4<,20##:?610+$2-:0$3$4$5$6$7$8+$2-:0+$2-70$;$<$=$>$?$10$11#7???8000+&6$28#3#7???8000^#?#??????????????8+$28#60+$28#1;0+$28#208^#?#??????????????8+$28#250+$28#490$28$1<$1=$1>$1?,,50!$2-70,8+$28#208!&6$28#3#7???8088,1^#?#??????????????8!&6$28#3#7???8087,1^#?#??????????????8!&6$28#3#7???8086,1^#?#??????????????8!&6$28#3#7???8085,1^#?#??????????????8!&6$28#3#7???8084,1^#?#??????????????8!&6$28#3#7???8083,1^#?#??????????????8!&6$28#3#7???8082,1^#?#??????????????8!&6$28#3#7???807=,1^#?#??????????????8!&6$28#3#7???807<,1^#?#??????????????8!&6$28#3#7???807;,1^#?#??????????????8!&6$28#3#7???807:,1^#?#??????????????8!&6$28#3#7???8081,1^#?#??????????????8!&6$28#3#7???8080,1^#?#??????????????8!&6$28#3#7???807?,1^#?#??????????????8!&6$28#3#7???807>,1^#?#??????????????8!&6$28#3#7???8075,1^#?#??????????????8!&6$28#3#7???8074,1^#?#??????????????8!&6$28#3#7???8073,1^#?#??????????????8!&6$28#3#7???8072,1^#?#??????????????8!&6$28#3#7???8079,1^#?#??????????????8!&6$28#3#7???8078,1^#?#??????????????8!&6$28#3#7???8077,1^#?#??????????????8!&6$28#3#7???8076,1^#?#??????????????8!&6$28#3#7???806=,1^#?#??????????????8!&6$28#3#7???806<,1^#?#??????????????8!&6$28#3#7???806;,1^#?#??????????????8!&6$28#3#7???806:,1^#?#??????????????8!&6$28#3#7???8071,1^#?#??????????????8!&6$28#3#7???8070,1^#?#??????????????8!&6$28#3#7???806?,1^#?#??????????????8!&6$28#3#7???806>,1^#?#??????????????8!&6$28#3#7???8065,1^#?#??????????????8!&6$28#3#7???8064,1^#?#??????????????8!&6$28#3#7???8063,1^#?#??????????????8!&6$28#3#7???8062,1^#?#??????????????8!&6$28#3#7???8069,1^#?#??????????????8!&6$28#3#7???8068,1^#?#??????????????8!&6$28#3#7???8067,1^#?#??????????????8!&6$28#3#7???8066,1^#?#??????????????8!&6$28#3#7???805=,1^#?#??????????????8!&6$28#3#7???805<,1^#?#??????????????8!&6$28#3#7???805;,1^#?#??????????????8!&6$28#3#7???805:,1^#?#??????????????8!&6$28#3#7???8061,1^#?#??????????????8!&6$28#3#7???8060,1^#?#??????????????8!&6$28#3#7???805?,1^#?#??????????????8!&6$28#3#7???805>,1^#?#??????????????8!&6$28#3#7???8055,1^#?#??????????????8!&6$28#3#7???8054,1^#?#??????????????8!&6$28#3#7???8053,1^#?#??????????????8!&6$28#3#7???8052,1^#?#??????????????8!&6$28#3#7???8059,1^#?#??????????????8!&6$28#3#7???8058,1^#?#??????????????8!&6$28#3#7???8057,1^#?#??????????????8!&6$28#3#7???8056,1^#?#??????????????8!&6$28#3#7???804=,1^#?#??????????????8!&6$28#3#7???804<,1^#?#??????????????8!&6$28#3#7???804;,1^#?#??????????????8!&6$28#3#7???804:,1^#?#??????????????8!&6$28#3#7???8051,1^#?#??????????????8!&6$28#3#7???8050,1^#?#??????????????8!&6$28#3#7???804?,1^#?#??????????????8!&6$28#3#7???804>,1^#?#??????????????8'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0'$28#1000#7????????800&$28#20,$28##800($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1,40!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 0%nat.
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
Definition ps0 : SR.post_spec := SR.PS 846412 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_191713.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 718088 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_191713.IT BndT_Na_000.SegItab_Na_191713.IT_sound BF NX0 BR XSTEP F0 PSS plan 718088 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qhaK.

Module LibSegNa_qhaL.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_191713.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_191713.IT.
Definition ENDS : list Z := [791440].
Definition STOPS1 : list Z := [791440] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$3:+$2-:0$3$4$5$6$7$8+$2-:0$:$;$<$=$>$?$10$11#7???8000+&6$28#3#7???8000^#?#??????????????8+$28#60+$28#1;0+$28#208^#?#??????????????8+$28#250+$28#490$28$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",10'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0'$28#1000#7????????800&$28#20,$28##800($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1"%pstring).
Definition ss0 : sym_state := SS 718352 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EAlu Instr.ALU_SRL (EVar 40) (ELit 3)), (2147450942), ELit 7); ((EVar 2), (-112), ELit 8)].
Definition F0L : list SR.region := [((EAlu Instr.ALU_SRL (EVar 40) (ELit 3)), (2147450942), 7); ((EVar 2), (-112), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<1390#<1390#5=#<1390,20##:?638+$2-:0$3$4$5$6$7$8+$2-:0+$2-70$;$<$=$>$?$10$11#7???8000+&6$28#3#7???8000^#?#??????????????8+$28#60+$28#1;0+$28#208^#?#??????????????8+$28#250+$28#490$28$1<$1=$1>$1?,,18!$2-70,8+$28#1;0!&6$28#3#7???8044,1^#?#??????????????8!&6$28#3#7???8043,1^#?#??????????????8!&6$28#3#7???8042,1^#?#??????????????8!&6$28#3#7???8041,1^#?#??????????????8!&6$28#3#7???8040,1^#?#??????????????8!&6$28#3#7???803?,1^#?#??????????????8!&6$28#3#7???803>,1^#?#??????????????8'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0'$28#1000#7????????800&$28#20,$28##800($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1,40!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 0%nat.
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
Definition ps0 : SR.post_spec := SR.PS 791440 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_191713.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 718352 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_191713.IT BndT_Na_000.SegItab_Na_191713.IT_sound BF NX0 BR XSTEP F0 PSS plan 718352 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qhaL.

Module LibSegNa_qhaM0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_191713.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_191713.IT.
Definition ENDS : list Z := [718412].
Definition STOPS1 : list Z := [718412] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$3:+$2-:0$3$4$5$6$7$8+$2-:0$:$;$<$=$>$?$10$11#7???8000+&6$28#3#7???8000^#?#??????????????8+$28#60+$28#1;0+$28#208^#?#??????????????8+$28#250+$28#490$28$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",17'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1!##15?:78,8#7???8000!##15?:80,4#1'$28#1000#7????????800&$28#20,$28##800($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1)##10000#6:6000$28##800)##10000#6:6000$29##1"%pstring).
Definition ss0 : sym_state := SS 718392 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EAlu Instr.ALU_SRL (EVar 40) (ELit 3)), (2147450934), ELit 3)].
Definition F0L : list SR.region := [((EAlu Instr.ALU_SRL (EVar 40) (ELit 3)), (2147450934), 3)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#:?64<#:?64<#5=#:?64<,20#$3:+$2-:0$3$4$5$6$7$8+$2-:0#157638$;$<$=$>$?$10$11#7???8000+&6$28#3#7???8000#154:40+$28#60+$28#1;0+$28#208^#?#??????????????8+$28#250+$28#490$28$1<$1=$1>$1?,,1:!&6$28#3#7???8038,1^#?#??????????????8!&6$28#3#7???8037,1^#?#??????????????8!&6$28#3#7???8036,1^#?#??????????????8'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1!##15?:78,8#7???8000!##15?:80,4#1'$28#1000#7????????800&$28#20,$28##800($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1)##10000#6:6000$28##800)##10000#6:6000$29##1,40!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 0%nat.
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
Definition ps0 : SR.post_spec := SR.PS 718412 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_191713.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 718392 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_191713.IT BndT_Na_000.SegItab_Na_191713.IT_sound BF NX0 BR XSTEP F0 PSS plan 718392 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qhaM0.

Module LibSegNa_qhaMl.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_191713.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_191713.IT.
Definition ENDS : list Z := [991168].
Definition STOPS1 : list Z := [991168; 718552] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$3:+$2-:0$3$4$5$6$7$8+$2-:0$:$;$<$=$>$?$10$11#7???8000+&6$28#3#7???8000#154:40+$28#60+$28#1;0+$28#208^#?#??????????????8+$28#250+$28#490$28$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",20'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1!##15?:78,8#7???8000!##15?:80,4#1'$28#1000#7????????800&$28#20,$28##800($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1)##10000#6:6000$28##800)##10000#6:6000$29##1#&6$28#3#7???800<#22###80022948#1###8002294;#1###8002293>#1!$28#;0,1$24'$24##??'&9$24#1#1#1!$28#;0,8$25!$28#<0,8$26"%pstring).
Definition ss0 : sym_state := SS 718412 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 40), (96), ELit 8); ((EVar 40), (112), ELit 8); ((EVar 40), (216), ELit 8)].
Definition F0L : list SR.region := [((EVar 40), (96), 8); ((EVar 40), (112), 8); ((EVar 40), (216), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#?1?<0#:?6=8#?1?<0#5=#?1?<0,20##:?6=8+$2-:0$3$4$5$6$7$8+$2-:0$26@#2&6$25#1#$=$>$?$10$11#7???8000+&6$28#3#7???8000#154:40+$28#60+$28#1;0+$28#208^#?#??????????????8+$28#250+$28#490$28$1<$1=$1>$1?,,26!$28#70,8#154918!$28#=8,8#154:30!$28#60,8#154:08'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1!##15?:78,8#7???8000!##15?:80,4#1'$28#1000#7????????800&$28#20,$28##60,$28#68#8,$28#78#60,$28#>0#720($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1)##10000#6:6000$28##800)##10000#6:6000$29##1#&6$28#3#7???800<#22###80022948#1###8002294;#1###8002293>#1!$28#;0,1$24'$24##??'&9$24#1#1#1!$28#;0,8$25!$28#<0,8$26,40!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 0%nat.
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_191713.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 718412 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_191713.IT BndT_Na_000.SegItab_Na_191713.IT_sound BF NX0 BR XSTEP F0 PSS plan 718412 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qhaMl.

Module LibSegNa_qhaMs.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_191713.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_191713.IT.
Definition ENDS : list Z := [718552].
Definition STOPS1 : list Z := [718552; 991168] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$3:+$2-:0$3$4$5$6$7$8+$2-:0$:$;$<$=$>$?$10$11#7???8000+&6$28#3#7???8000#154:40+$28#60+$28#1;0+$28#208^#?#??????????????8+$28#250+$28#490$28$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1>'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1!##15?:78,8#7???8000!##15?:80,4#1'$28#1000#7????????800&$28#20,$28##800($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1)##10000#6:6000$28##800)##10000#6:6000$29##1#&6$28#3#7???800<#22###80022948#1###8002294;#1###8002293>#1!$28#;0,1$24'$24##??'&9$24#1##"%pstring).
Definition ss0 : sym_state := SS 718412 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 40), (96), ELit 8); ((EVar 40), (112), ELit 8); ((EVar 40), (216), ELit 8)].
Definition F0L : list SR.region := [((EVar 40), (96), 8); ((EVar 40), (112), 8); ((EVar 40), (216), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#:?6=8#?1?<0#:?6=8#5=#:?6=8,20#$3:+$2-:0$3$4$5$6$7$8+$2-:0#154918##$=$>$?$10$11#7???8000+&6$28#3#7???8000#154:40+$28#60+$28#1;0+$28#208^#?#??????????????8+$28#250+$28#490$28$1<$1=$1>$1?,,24!$28#70,8#154918!$28#=8,8#154:30!$28#60,8#154:08'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1!##15?:78,8#7???8000!##15?:80,4#1'$28#1000#7????????800&$28#20,$28##60,$28#68#8,$28#78#60,$28#>0#720($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1)##10000#6:6000$28##800)##10000#6:6000$29##1#&6$28#3#7???800<#22###80022948#1###8002294;#1###8002293>#1!$28#;0,1$24'$24##??'&9$24#1##,40!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 0%nat.
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
Definition ps0 : SR.post_spec := SR.PS 718552 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_191713.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 718412 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_191713.IT BndT_Na_000.SegItab_Na_191713.IT_sound BF NX0 BR XSTEP F0 PSS plan 718412 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qhaMs.

Module LibSegNa_qhaN.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_191713.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_191713.IT.
Definition ENDS : list Z := [1172368].
Definition STOPS1 : list Z := [1172368] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$3:+$2-:0$3$4$5$6$7$8+$2-:0$:$;$<$=$>$?$10$11#7???8000+&6$28#3#7???8000#154:40+$28#60+$28#1;0+$28#208^#?#??????????????8+$28#250+$28#490$28$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",17'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1!##15?:78,8#7???8000!##15?:80,4#1'$28#1000#7????????800&$28#20,$28##800($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1)##10000#6:6000$28##800)##10000#6:6000$29##1"%pstring).
Definition ss0 : sym_state := SS 718552 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 40), (112), ELit 8)].
Definition F0L : list SR.region := [((EVar 40), (112), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#11>390#11>390#5=#11>390,20##:?6?0+$2-:0$3$4$5$6$7$8+$2-:0+$28#78$;$<$=$>$?$10$11#7???8000+&6$28#3#7???8000#154:40+$28#60+$28#1;0+$28#208^#?#??????????????8+$28#250+$28#490$28$1<$1=$1>$1?,,19!$28#70,8#154898'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1!##15?:78,8#7???8000!##15?:80,4#1'$28#1000#7????????800&$28#20,$28##70,$28#78#788($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1)##10000#6:6000$28##800)##10000#6:6000$29##1,40!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 0%nat.
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
Definition ps0 : SR.post_spec := SR.PS 1172368 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_191713.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 718552 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_191713.IT BndT_Na_000.SegItab_Na_191713.IT_sound BF NX0 BR XSTEP F0 PSS plan 718552 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qhaN.

Module LibSegNa_qhaO.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_191713.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_191713.IT.
Definition ENDS : list Z := [1022892].
Definition STOPS1 : list Z := [1022892] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$3:+$2-:0$3$4$5$6$7$8+$2-:0$:$;$<$=$>$?$10$11#7???8000+&6$28#3#7???8000#154:40+$28#60+$28#1;0+$28#208^#?#??????????????8+$28#250+$28#490$28$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",10'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0'$28#1000#7????????800&$28#20,$28##800($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1"%pstring).
Definition ss0 : sym_state := SS 718576 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#?9;:<#?9;:<#5=#?9;:<,20##:?704+$2-:0$3$4$5$6$7$8+$2-:0+$28#=8#154:48$<$=$>$?$10$11#7???8000+&6$28#3#7???8000#154:40+$28#60+$28#1;0+$28#208^#?#??????????????8+$28#250+$28#490$28$1<$1=$1>$1?,,10'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0'$28#1000#7????????800&$28#20,$28##800($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1,40!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 0%nat.
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
Definition ps0 : SR.post_spec := SR.PS 1022892 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_191713.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 718576 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_191713.IT BndT_Na_000.SegItab_Na_191713.IT_sound BF NX0 BR XSTEP F0 PSS plan 718576 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qhaO.

Module LibSegNa_qhaPl.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_191713.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_191713.IT.
Definition ENDS : list Z := [991168].
Definition STOPS1 : list Z := [991168; 718768] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$3:+$2-:0$3$4$5$6$7$8+$2-:0$:$;$<$=$>$?$10$11#7???8000+&6$28#3#7???8000#154:40+$28#60+$28#1;0+$28#208^#?#??????????????8+$28#250+$28#490$28$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",16'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0'$28#1000#7????????800&$28#20,$28##800($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1!$28#20,1$24'$24##??'&9$24#1#1#1!$28#20,8$25!$28#30,8$26!$2-90,8+$28#20"%pstring).
Definition ss0 : sym_state := SS 718596 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EAlu Instr.ALU_SRL (EVar 40) (ELit 3)), (2147450892), ELit 34)].
Definition F0L : list SR.region := [((EAlu Instr.ALU_SRL (EVar 40) (ELit 3)), (2147450892), 34)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#?1?<0#:?7;0#?1?<0#5=#?1?<0,20##:?7;0+$2-:0$3$4$5$6$7$8+$2-:0$26@#2&6$25#1+$28#20$=$>$?$10$11^#?#??????????????8+&6$28#3#7???8000#154:40+$28#60+$28#1;0+$28#208^#?#??????????????8+$28#250+$28#490$28$1<$1=$1>$1?,,38!&6$28#3#7???802=,1^#?#??????????????8!&6$28#3#7???802<,1^#?#??????????????8!&6$28#3#7???8027,1^#?#??????????????8!&6$28#3#7???8026,1^#?#??????????????8!&6$28#3#7???8025,1^#?#??????????????8!&6$28#3#7???8024,1^#?#??????????????8!&6$28#3#7???802;,1^#?#??????????????8!&6$28#3#7???802:,1^#?#??????????????8!&6$28#3#7???8029,1^#?#??????????????8!&6$28#3#7???8028,1^#?#??????????????8!&6$28#3#7???801?,1^#?#??????????????8!&6$28#3#7???801>,1^#?#??????????????8!&6$28#3#7???801=,1^#?#??????????????8!&6$28#3#7???801<,1^#?#??????????????8!&6$28#3#7???8023,1^#?#??????????????8!&6$28#3#7???8022,1^#?#??????????????8!&6$28#3#7???8021,1^#?#??????????????8!&6$28#3#7???8020,1^#?#??????????????8!&6$28#3#7???8017,1^#?#??????????????8!&6$28#3#7???8016,1^#?#??????????????8!&6$28#3#7???8015,1^#?#??????????????8!&6$28#3#7???8014,1^#?#??????????????8!&6$28#3#7???801;,1^#?#??????????????8!&6$28#3#7???801:,1^#?#??????????????8!&6$28#3#7???8019,1^#?#??????????????8!&6$28#3#7???8018,1^#?#??????????????8!&6$28#3#7???800?,1^#?#??????????????8!&6$28#3#7???800>,1^#?#??????????????8!&6$28#3#7???800=,1^#?#??????????????8!&6$28#3#7???800<,1^#?#??????????????8!&6$28#3#7???8013,1^#?#??????????????8!&6$28#3#7???8012,1^#?#??????????????8!&6$28#3#7???8011,1^#?#??????????????8!&6$28#3#7???8010,1^#?#??????????????8'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0'$28#1000#7????????800&$28#20,$28##800($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1!$28#20,1$24'$24##??'&9$24#1#1#1!$28#20,8$25!$28#30,8$26!$2-90,8+$28#20,40!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 0%nat.
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_191713.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 718596 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_191713.IT BndT_Na_000.SegItab_Na_191713.IT_sound BF NX0 BR XSTEP F0 PSS plan 718596 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qhaPl.

Module LibSegNa_qhaPs.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_191713.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_191713.IT.
Definition ENDS : list Z := [718768].
Definition STOPS1 : list Z := [718768; 991168] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$3:+$2-:0$3$4$5$6$7$8+$2-:0$:$;$<$=$>$?$10$11#7???8000+&6$28#3#7???8000#154:40+$28#60+$28#1;0+$28#208^#?#??????????????8+$28#250+$28#490$28$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",14'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0'$28#1000#7????????800&$28#20,$28##800($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1!$28#20,1$24'$24##??'&9$24#1##!$2-90,8+$28#20"%pstring).
Definition ss0 : sym_state := SS 718596 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EAlu Instr.ALU_SRL (EVar 40) (ELit 3)), (2147450892), ELit 34)].
Definition F0L : list SR.region := [((EAlu Instr.ALU_SRL (EVar 40) (ELit 3)), (2147450892), 34)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#:?7;0#?1?<0#:?7;0#5=#:?7;0,20#$3:+$2-:0$3$4$5$6$7$8+$2-:0#$;+$28#20$=$>$?$10$11^#?#??????????????8+&6$28#3#7???8000#154:40+$28#60+$28#1;0+$28#208^#?#??????????????8+$28#250+$28#490$28$1<$1=$1>$1?,,36!&6$28#3#7???802=,1^#?#??????????????8!&6$28#3#7???802<,1^#?#??????????????8!&6$28#3#7???8027,1^#?#??????????????8!&6$28#3#7???8026,1^#?#??????????????8!&6$28#3#7???8025,1^#?#??????????????8!&6$28#3#7???8024,1^#?#??????????????8!&6$28#3#7???802;,1^#?#??????????????8!&6$28#3#7???802:,1^#?#??????????????8!&6$28#3#7???8029,1^#?#??????????????8!&6$28#3#7???8028,1^#?#??????????????8!&6$28#3#7???801?,1^#?#??????????????8!&6$28#3#7???801>,1^#?#??????????????8!&6$28#3#7???801=,1^#?#??????????????8!&6$28#3#7???801<,1^#?#??????????????8!&6$28#3#7???8023,1^#?#??????????????8!&6$28#3#7???8022,1^#?#??????????????8!&6$28#3#7???8021,1^#?#??????????????8!&6$28#3#7???8020,1^#?#??????????????8!&6$28#3#7???8017,1^#?#??????????????8!&6$28#3#7???8016,1^#?#??????????????8!&6$28#3#7???8015,1^#?#??????????????8!&6$28#3#7???8014,1^#?#??????????????8!&6$28#3#7???801;,1^#?#??????????????8!&6$28#3#7???801:,1^#?#??????????????8!&6$28#3#7???8019,1^#?#??????????????8!&6$28#3#7???8018,1^#?#??????????????8!&6$28#3#7???800?,1^#?#??????????????8!&6$28#3#7???800>,1^#?#??????????????8!&6$28#3#7???800=,1^#?#??????????????8!&6$28#3#7???800<,1^#?#??????????????8!&6$28#3#7???8013,1^#?#??????????????8!&6$28#3#7???8012,1^#?#??????????????8!&6$28#3#7???8011,1^#?#??????????????8!&6$28#3#7???8010,1^#?#??????????????8'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0'$28#1000#7????????800&$28#20,$28##800($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1!$28#20,1$24'$24##??'&9$24#1##!$2-90,8+$28#20,40!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 0%nat.
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
Definition ps0 : SR.post_spec := SR.PS 718768 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_191713.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 718596 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_191713.IT BndT_Na_000.SegItab_Na_191713.IT_sound BF NX0 BR XSTEP F0 PSS plan 718596 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qhaPs.

Module LibSegNa_qhaQ.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_191713.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_191713.IT.
Definition ENDS : list Z := [414224].
Definition STOPS1 : list Z := [414224] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$3:+$2-:0$3$4$5$6$7$8+$2-:0$:$;$<$=$>$?$10$11^#?#??????????????8+&6$28#3#7???8000#154:40+$28#60+$28#1;0+$28#208^#?#??????????????8+$28#250+$28#490$28$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0'$28#1000#7????????800&$28#20,$28##800($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1!$2-88,8$28"%pstring).
Definition ss0 : sym_state := SS 718768 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EAlu Instr.ALU_SRL (EVar 40) (ELit 3)), (2147450884), ELit 3); ((EVar 40), (0), ELit 8)].
Definition F0L : list SR.region := [((EAlu Instr.ALU_SRL (EVar 40) (ELit 3)), (2147450884), 3); ((EVar 40), (0), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#65210#65210#5=#65210,20##:?7=8+$2-:0$3$4$5$6$7$8+$2-:0$28#500$<$=$>$?$10$11^#?#??????????????8+&6$28#3#7???8000#154:40+$28#60+$28#1;0+$28#208^#?#??????????????8+$28#250+$28#490$28$1<$1=$1>$1?,,15!$28#,8#45>0360>!&6$28#3#7???8006,1^#?#??????????????8!&6$28#3#7???8005,1^#?#??????????????8!&6$28#3#7???8004,1^#?#??????????????8'$2#7???7?8010>0#800000000000&$2#20($2-:0#:0'$28#1000#7????????800&$28#20,$28#8#7?8($28##800)##7???7000#100000001000$28##800(&6$28#3#7???8000#100!$28#7?8,8$29'$29#1000#7???????????($29##1)##7???7000#100000001000$29##1)$28##800$29##1)$2-:0#;0$28##800)$2-:0#;0$29##1!$2-88,8$28,40!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 0%nat.
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
Definition ps0 : SR.post_spec := SR.PS 414224 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_191713.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 718768 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_191713.IT BndT_Na_000.SegItab_Na_191713.IT_sound BF NX0 BR XSTEP F0 PSS plan 718768 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qhaQ.

End BndP_Na_069.
