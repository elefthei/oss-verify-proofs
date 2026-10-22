(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
Set Warnings "-require-in-module".
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel. From Stdlib Require ZArith NArith List Lia Bool. From LinuxProcessSemantics.LinuxProcessSem Require BvBase RiscvSemantics MemImageType State Run. From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Asan. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_002 BndT_Na_000 BndT_Na_003. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Module BndP_Na_005.
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
Ltac2 kr_t_BndP_Na_005 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_002ASegItab_Na_82ef502ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afbE2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afbE3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afbE2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afbE5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afbE2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afbE3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afbE4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afbE5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afbE3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_000ASegItab_Na_1d44ed2ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afdA2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afdA3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afdA2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afdA5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afdA2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afdA3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afdA4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afdA5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afdA3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdA32BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdA33NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdA32BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdA35XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdA32F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdA33PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdA34planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdA35regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdA33kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afdB2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afdB3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afdB2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afdB5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afdB2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afdB3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afdB4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afdB5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afdB3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdCd2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdCd3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdCd2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdCd5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdCd2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdCd3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdCd4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdCd5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdCd3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdCf2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdCf3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdCf2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdCf5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdCf2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdCf3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdCf4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdCf5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdCf3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdE02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdE03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdE02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdE05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdE02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdE03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdE04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdE05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdE03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdE12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdE13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdE12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdE15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdE12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdE13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdE14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdE15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdE13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005?LibSegNa_afdE1w2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005?LibSegNa_afdE1w3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005?LibSegNa_afdE1w2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005?LibSegNa_afdE1w5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005?LibSegNa_afdE1w2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005?LibSegNa_afdE1w3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005?LibSegNa_afdE1w4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005?LibSegNa_afdE1w5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005?LibSegNa_afdE1w3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdJf2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdJf3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdJf2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdJf5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdJf2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdJf3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdJf4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdJf5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdJf3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdWd2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdWd3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdWd2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdWd5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdWd2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdWd3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdWd4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdWd5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdWd3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdWf2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdWf3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdWf2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdWf5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdWf2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdWf3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdWf4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdWf5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005>LibSegNa_afdWf3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afdZ2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afdZ3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afdZ2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afdZ5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afdZ2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afdZ3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afdZ4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afdZ5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afdZ3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f955732ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afgS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afgS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afgS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afgS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afgS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afgS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afgS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afgS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_005=LibSegNa_afgS3kn0".

Module LibSegNa_afbE.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_82ef50.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_82ef50.IT.
Definition ENDS : list Z := [871804].
Definition STOPS1 : list Z := [871804] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 36; EVar 34; ELit 16384; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1<%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30'$24#6;6000#7????????>=8&$24#8)##7???7000#100000001000$24##128#&6+$24#8#3#7???8000#24($24##128)$2-30#30$24##128'$25#6;6000#7????????>?0&$25#8)##7???7000#100000001000$25##110#&6$25#3#7???8000#22($25##110)$2-30#30$25##110)$24##128$25##110!$24#?0,8$25!$24#?8,8+$25#10!$25#,8#154:08!$25#10,8#154918!$25#98,4#2!$25#9<,4#!$25#:0,8+$25#10###8002293>#1###8002292;#1"%pstring).
Definition ss0 : sym_state := SS 871216 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-48), ELit 48)].
Definition F0L : list SR.region := [((EVar 2), (-48), 48)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#=4=7<#=4=7<#5=#=4=7<,20#$1$2$3$4$5$6$7$8$9#$22#2##$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,22!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30'$24#6;6000#7????????>=8&$24#8)##7???7000#100000001000$24##128#&6+$24#8#3#7???8000#24($24##128)$2-30#30$24##128'$25#6;6000#7????????>?0&$25#8)##7???7000#100000001000$25##110#&6$25#3#7???8000#22($25##110)$2-30#30$25##110)$24##128$25##110!$24#?0,8$25!$24#?8,8+$25#10!$25#,8#154:08!$25#10,8#154918!$25#98,4#2!$25#9<,4#!$25#:0,8+$25#10###8002293>#1###8002292;#1,30!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 871804 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_82ef50.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 871216 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_82ef50.IT BndT_Na_002.SegItab_Na_82ef50.IT_sound BF NX0 BR XSTEP F0 PSS plan 871216 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_afbE.

Module LibSegNa_afdA.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1d44ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1d44ed.IT.
Definition ENDS : list Z := [796600].
Definition STOPS1 : list Z := [796600] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KImg 1376256 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487232 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-64)) (ELit 64)].
Definition ss0 : sym_state := SS 796580 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<27;8#<27;8#5=#<27;8,20#$1+$2-40$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,:!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 796600 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1d44ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 796580 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1d44ed.IT BndT_Na_000.SegItab_Na_1d44ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 796580 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_afdA.

Module LibSegNa_afdA3.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1d44ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1d44ed.IT.
Definition ENDS : list Z := [796644].
Definition STOPS1 : list Z := [796644] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-40#40$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 796608 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<27>4#<27>4#5=#<27>4,20#$1+$2-40$3$4$5$6$7$:+$:#8##15?:78$<$=$>$?$10$11#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,?%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-40#40$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 796644 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1d44ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 796608 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1d44ed.IT BndT_Na_000.SegItab_Na_1d44ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 796608 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_afdA3.

Module LibSegNa_afdB.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1d44ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1d44ed.IT.
Definition ENDS : list Z := [796656].
Definition STOPS1 : list Z := [796656] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:+$:#8$37$38$39$=$>$?$10$11#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8!$:#8,8$29'$29#1000#7?????????>8&$29#8"%pstring).
Definition ss0 : sym_state := SS 796652 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<27?0#<27?0#5:#<27?0,20#$1+$2-40$3$4$5$6$7$:+$:#8$29$38$39$=$>$?$10$11#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8!$:#8,8$29'$29#1000#7?????????>8&$29#8,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 796656 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1d44ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 796652 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1d44ed.IT BndT_Na_000.SegItab_Na_1d44ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 796652 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_afdB.

Module LibSegNa_afdCd.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1d44ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1d44ed.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:+$:#8$29#$39$=$>$?$10$11#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8'$29#1000#7?????????>8"%pstring).
Definition ss0 : sym_state := SS 796664 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-49), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-49), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<282<+$2-40$3$4$5$6$7$:+$:#8$29+$2-31$39$=$>$?$10$11#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,:!$2-31,1#<;%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8'$29#1000#7?????????>8,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1d44ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 796664 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1d44ed.IT BndT_Na_000.SegItab_Na_1d44ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 796664 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_afdCd.

Module LibSegNa_afdCf.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1d44ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1d44ed.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:+$:#8$29#1$39$=$>$?$10$11#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8'$29#1000#7?????????>8"%pstring).
Definition ss0 : sym_state := SS 796664 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-50), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-50), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<280<+$2-40$3$4$5$6$7$:+$:#8$29+$2-32$39$=$>$?$10$11#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,:!$2-32,1#<:%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8'$29#1000#7?????????>8,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1d44ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 796664 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1d44ed.IT BndT_Na_000.SegItab_Na_1d44ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 796664 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_afdCf.

Module LibSegNa_afdE0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1d44ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1d44ed.IT.
Definition ENDS : list Z := [796832].
Definition STOPS1 : list Z := [796832] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:+$:#8$37$38$39$=$>$?$10$11#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",16%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-40#40$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#18,8$26!$:#20,8$26'$26##800000000000!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?"%pstring).
Definition ss0 : sym_state := SS 796728 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<28:0#<28:0#5=#<28:0,20#$2<+$2-40$3$4$5$6$7$2=$2>#1$26$39$=$>$?$10$11$2?$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,16%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-40#40$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#18,8$26!$:#20,8$26'$26##800000000000!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 796832 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1d44ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 796728 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1d44ed.IT BndT_Na_000.SegItab_Na_1d44ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 796728 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_afdE0.

Module LibSegNa_afdE1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1d44ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1d44ed.IT.
Definition ENDS : list Z := [796832].
Definition STOPS1 : list Z := [796832] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:+$:#8$37$38$39$=$>$?$10$11#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",20%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-40#40$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$27#8'+$27@-1$26#18#186:0($27-18#18)##7???7000#100000001000+$27-18##18#&6+$27-8#3#7???8000#1)$27-18#18$2-40#40)$27-18#18$:##38!$27-8,8$2:'$2:#^#?#??????????????>!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?"%pstring).
Definition ss0 : sym_state := SS 796728 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 39), (-8), ELit 8)].
Definition F0L : list SR.region := [((EVar 39), (-8), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<28:0#<28:0#5=#<28:0,20#$2<+$2-40$3$4$5$6$7$2=$2>#1+$2:#1$39$=$>$?$10$11$2?$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1=!$27-8,8+$2:#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-40#40$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$27#8'+$27@-1$26#18#186:0($27-18#18)##7???7000#100000001000+$27-18##18#&6+$27-8#3#7???8000#1)$27-18#18$2-40#40)$27-18#18$:##38'$2:#^#?#??????????????>!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 796832 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1d44ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 796728 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1d44ed.IT BndT_Na_000.SegItab_Na_1d44ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 796728 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_afdE1.

Module LibSegNa_afdE1w.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1d44ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1d44ed.IT.
Definition ENDS : list Z := [796832].
Definition STOPS1 : list Z := [796832] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:+$:#8$37$38$39$=$>$?$10$11#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1?%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-40#40$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$27#8'+$27@-1$26#18#186:0($27-18#18)##7???7000#100000001000+$27-18##18#&6+$27-8#3#7???8000#1)$27-18#18$2-40#40)$27-18#18$:##38!$27-8,8^#?#???????????????!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?"%pstring).
Definition ss0 : sym_state := SS 796728 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 39), (-8), ELit 8)].
Definition F0L : list SR.region := [((EVar 39), (-8), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<28:0#<28:0#5=#<28:0,20#$2<+$2-40$3$4$5$6$7$2=$2>#1#$39$=$>$?$10$11$2?$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1<!$27-8,8#'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-40#40$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$27#8'+$27@-1$26#18#186:0($27-18#18)##7???7000#100000001000+$27-18##18#&6+$27-8#3#7???8000#1)$27-18#18$2-40#40)$27-18#18$:##38!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 796832 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1d44ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 796728 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1d44ed.IT BndT_Na_000.SegItab_Na_1d44ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 796728 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_afdE1w.

Module LibSegNa_afdJf.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1d44ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1d44ed.IT.
Definition ENDS : list Z := [796728].
Definition STOPS1 : list Z := [796728] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:+$:#8$37$38$39$=$>$?$10$11#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 1376256 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487232 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-64)) (ELit 64)].
Definition ss0 : sym_state := SS 796696 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<2838#<2838#5=#<2838,20#$1+$2-40$3$4$5$6$7$:+$:#8$37$38$39$=$>$?$10$11#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,6%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 796728 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1d44ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 796696 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1d44ed.IT BndT_Na_000.SegItab_Na_1d44ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 796696 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_afdJf.

Module LibSegNa_afdWd.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1d44ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1d44ed.IT.
Definition ENDS : list Z := [816400].
Definition STOPS1 : list Z := [816400] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:+$:#8$37$38$39$=$>$?$10$11#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 1376256 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487232 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-64)) (ELit 64);
   KRange (EVar 10) 4096 140737488355272;
   KAlign (EVar 10) 8].
Definition ss0 : sym_state := SS 796720 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<7510#<7510#5=#<7510,20##<2838+$2-40$3$4$5$6$7$:+$:#8+$:#8$38$39$=$>$?$10$11#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,8%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 816400 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1d44ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 796720 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1d44ed.IT BndT_Na_000.SegItab_Na_1d44ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 796720 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_afdWd.

Module LibSegNa_afdWf.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1d44ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1d44ed.IT.
Definition ENDS : list Z := [816216].
Definition STOPS1 : list Z := [816216] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:+$:#8$37$38$39$=$>$?$10$11#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 1376256 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487232 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-64)) (ELit 64);
   KRange (EVar 10) 4096 140737488355272;
   KAlign (EVar 10) 8].
Definition ss0 : sym_state := SS 796688 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<7458#<7458#5=#<7458,20##<2818+$2-40$3$4$5$6$7$:+$:#8+$:#8$38$39$=$>$?$10$11#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,8%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 816216 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1d44ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 796688 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1d44ed.IT BndT_Na_000.SegItab_Na_1d44ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 796688 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_afdWf.

Module LibSegNa_afdZ.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1d44ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1d44ed.IT.
Definition ENDS : list Z := [796844].
Definition STOPS1 : list Z := [796844] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$8$9#1$38$39$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 1376256 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487232 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-64)) (ELit 64)].
Definition ss0 : sym_state := SS 796840 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<28:<#<28:<#5:#<28:<,20#$1$2$3$4$5$6$7$8$9#1$38$39$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,6%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 796844 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1d44ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 796840 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1d44ed.IT BndT_Na_000.SegItab_Na_1d44ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 796840 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_afdZ.

Module LibSegNa_afgS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f95573.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f95573.IT.
Definition ENDS : list Z := [1001328].
Definition STOPS1 : list Z := [1001328] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#6;6000#7?????????>8&$:#8($:##18)$2-40#40$:##18!$:#,1$21'$21##2;'&9$21#1##"%pstring).
Definition ss0 : sym_state := SS 1001024 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-64), ELit 64); ((EVar 10), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-64), 64); ((EVar 10), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#?4770#?4770#5=#?4770,20#$1$2$3$4$5$6$7$8$9++$:&6$21#1#1$;+$21#2$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,14!+$:&6$21#1#2,1#!+$:&6$21#1#1,1$;!$:#,1+$21#2!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#6;6000#7?????????>8&$:#8($:##18)$2-40#40$:##18'$21##2;'&9$21#1##,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 1001328 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f95573.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 1001024 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f95573.IT BndT_Na_003.SegItab_Na_f95573.IT_sound BF NX0 BR XSTEP F0 PSS plan 1001024 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_afgS.

End BndP_Na_005.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_002 BndT_Na_000.
Module BndP_Na_056.
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
Ltac2 kr_t_BndP_Na_056 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_002ASegItab_Na_b04f602ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdFL2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdFL3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdFL2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdFL5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdFL2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdFL3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdFL4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdFL5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdFL3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdFS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdFS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdFS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdFS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdFS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdFS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdFS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdFS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdFS3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdGL2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdGL3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdGL2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdGL5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdGL2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdGL3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdGL4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdGL5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdGL3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdGS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdGS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdGS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdGS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdGS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdGS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdGS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdGS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdGS3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdRL2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdRL3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdRL2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdRL5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdRL2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdRL3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdRL4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdRL5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdRL3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdRS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdRS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdRS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdRS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdRS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdRS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdRS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdRS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qdRS3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_000ASegItab_Na_06dedf2ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056>LibSegNa_qeaA02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056>LibSegNa_qeaA03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056>LibSegNa_qeaA02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056>LibSegNa_qeaA05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056>LibSegNa_qeaA02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056>LibSegNa_qeaA03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056>LibSegNa_qeaA04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056>LibSegNa_qeaA05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056>LibSegNa_qeaA03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056?LibSegNa_qeaA162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056?LibSegNa_qeaA163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056?LibSegNa_qeaA162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056?LibSegNa_qeaA165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056?LibSegNa_qeaA162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056?LibSegNa_qeaA163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056?LibSegNa_qeaA164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056?LibSegNa_qeaA165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056?LibSegNa_qeaA163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056ALibSegNa_qeaAk1e12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056ALibSegNa_qeaAk1e13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056ALibSegNa_qeaAk1e12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056ALibSegNa_qeaAk1e15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056ALibSegNa_qeaAk1e12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056ALibSegNa_qeaAk1e13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056ALibSegNa_qeaAk1e14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056ALibSegNa_qeaAk1e15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056ALibSegNa_qeaAk1e13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056ALibSegNa_qeaAk2e02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056ALibSegNa_qeaAk2e03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056ALibSegNa_qeaAk2e02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056ALibSegNa_qeaAk2e05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056ALibSegNa_qeaAk2e02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056ALibSegNa_qeaAk2e03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056ALibSegNa_qeaAk2e04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056ALibSegNa_qeaAk2e05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056ALibSegNa_qeaAk2e03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056ALibSegNa_qeaAk2e12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056ALibSegNa_qeaAk2e13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056ALibSegNa_qeaAk2e12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056ALibSegNa_qeaAk2e15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056ALibSegNa_qeaAk2e12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056ALibSegNa_qeaAk2e13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056ALibSegNa_qeaAk2e14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056ALibSegNa_qeaAk2e15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056ALibSegNa_qeaAk2e13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qeaB2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qeaB3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qeaB2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qeaB5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qeaB2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qeaB3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qeaB4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qeaB5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056=LibSegNa_qeaB3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056BLibSegNa_qeaDAk1e12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056BLibSegNa_qeaDAk1e13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056BLibSegNa_qeaDAk1e12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056BLibSegNa_qeaDAk1e15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056BLibSegNa_qeaDAk1e12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056BLibSegNa_qeaDAk1e13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056BLibSegNa_qeaDAk1e14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056BLibSegNa_qeaDAk1e15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056BLibSegNa_qeaDAk1e13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056BLibSegNa_qeaDAk2e02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056BLibSegNa_qeaDAk2e03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056BLibSegNa_qeaDAk2e02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056BLibSegNa_qeaDAk2e05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056BLibSegNa_qeaDAk2e02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056BLibSegNa_qeaDAk2e03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056BLibSegNa_qeaDAk2e04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056BLibSegNa_qeaDAk2e05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_056BLibSegNa_qeaDAk2e03kn0".

Module LibSegNa_qdFL.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b04f60.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b04f60.IT.
Definition ENDS : list Z := [520856].
Definition STOPS1 : list Z := [520856] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$27$22$28+$28$27$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",20'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)##7???7000#100000001000$:##18#&6$:#3#7???8000#3)$2-50#50$:##18%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1!$:#,1$21'$21##??'&9$21#1#1#1!$:#,8$24'&9$24#1#1#1'$24#1;#80000001!$:#8,8$22'$22##80000000!$:#10,8$23'$23#1000#800000000000&$23#10'$27#1#40000000'$28##800000000000'&4++@-1$22@#2&6$24#1-1$27##(+$22+$23$27##1#&6+$22+$23$27#3#7???8000#1)&6+$22+$23$27#3#7???8000#1$:##18)&6+$22+$23$27#3#7???8000#1$2-50#50)+$22+$23$27##1$:##18)+$22+$23$27##1$2-50#50"%pstring).
Definition ss0 : sym_state := SS 780044 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-80), ELit 80); ((EVar 10), (8), ELit 8); ((EAlu Instr.ALU_ADD (EVar 34) (EAlu Instr.ALU_ADD (EVar 35) (EVar 39))), (0), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-80), 80); ((EVar 10), (8), 8); ((EAlu Instr.ALU_ADD (EVar 34) (EAlu Instr.ALU_ADD (EVar 35) (EVar 39))), (0), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#7?298#7?298#5=#7?298,20##;>8;8+$2-50$3$4$5$6$7$22$:+$22$23$28$27$28+$28$27$?$10$11$28+$27$28+$22$27$22#7???8000+&6$:#3#7???8000$23$19$1:$1;$1<$1=$1>$1?,,26!+$22+$23$27#,1#!$:#8,8+$22$27!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)##7???7000#100000001000$:##18)$2-50#50$:##18!$:#,1$21'$21##??'&9$21#1#1#1!$:#,8$24'&9$24#1#1#1'$24#1;#80000001'$22##80000000!$:#10,8$23'$23#1000#800000000000&$23#10'$27#1#40000000'$28##800000000000'&4++@-1$22@#2&6$24#1-1$27##(+$22+$23$27##1)&6+$22+$23$27#3#7???8000#1$:##18)&6+$22+$23$27#3#7???8000#1$2-50#50)+$22+$23$27##1$:##18)+$22+$23$27##1$2-50#50,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 520856 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b04f60.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 780044 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b04f60.IT BndT_Na_002.SegItab_Na_b04f60.IT_sound BF NX0 BR XSTEP F0 PSS plan 780044 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qdFL.

Module LibSegNa_qdFS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b04f60.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b04f60.IT.
Definition ENDS : list Z := [520856].
Definition STOPS1 : list Z := [520856] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$27&6$21#1$28+$28$27$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",18'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)##7???7000#100000001000$:##18#&6$:#3#7???8000#3)$2-50#50$:##18%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1!$:#,1$21'$21##2<'&9$21#1##'$27#1#40000000'$28##800000000000'&4+@-1&6$21#1#16$27##(+$:+$27&6$21#1#1#1#&6++$:+$27&6$21#1#1#3#7???8000#1)&6++$:+$27&6$21#1#1#3#7???8000#1$:##18)&6++$:+$27&6$21#1#1#3#7???8000#1$2-50#50)+$:+$27&6$21#1#1#1$2-50#50)+$:+$27&6$21#1#1#1$:##1"%pstring).
Definition ss0 : sym_state := SS 780044 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-80), ELit 80); ((EVar 10), (0), ELit 1); ((EAlu Instr.ALU_ADD (EVar 10) (EAlu Instr.ALU_ADD (EVar 39) (EAlu Instr.ALU_SRL (EVar 33) (ELit 1)))), (1), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-80), 80); ((EVar 10), (0), 1); ((EAlu Instr.ALU_ADD (EVar 10) (EAlu Instr.ALU_ADD (EVar 39) (EAlu Instr.ALU_SRL (EVar 33) (ELit 1)))), (1), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#7?298#7?298#5=#7?298,20##;>8;8+$2-50$3$4$5$6$7&6$21#1$:++$:&6$21#1#1$28$27$28+$28$27$?$10$11$28+$27$28+$27&6$21#1&6$21#1#7???8000+&6$:#3#7???8000+$:#1$19$1:$1;$1<$1=$1>$1?,,21!+$:+$27&6$21#1#1,1#!$:#,1+@#2$27@#2&6$21#1!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)##7???7000#100000001000$:##18)$2-50#50$:##18%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21##2<'&9$21#1##'$27#1#40000000'$28##800000000000'&4+@-1&6$21#1#16$27##(+$:+$27&6$21#1#1#1)&6++$:+$27&6$21#1#1#3#7???8000#1$:##18)&6++$:+$27&6$21#1#1#3#7???8000#1$2-50#50)+$:+$27&6$21#1#1#1$2-50#50)+$:+$27&6$21#1#1#1$:##1,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 520856 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b04f60.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 780044 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b04f60.IT BndT_Na_002.SegItab_Na_b04f60.IT_sound BF NX0 BR XSTEP F0 PSS plan 780044 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qdFS.

Module LibSegNa_qdGL.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b04f60.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b04f60.IT.
Definition ENDS : list Z := [1000692].
Definition STOPS1 : list Z := [1000692] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$27$22$28+$28$27$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1:'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)##7???7000#100000001000$:##18#&6$:#3#7???8000#3)$2-50#50$:##18%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1!$:#,1$21'$21##??'&9$21#1#1#1!$:#,8$24'&9$24#1#1#1'$24#1;#80000001!$:#8,8$22'$22##80000000!$:#10,8$23'$23#1000#800000000000&$23#10'$27#1#40000000'$28##800000000000'&4++@-1$22@#2&6$24#1-1$27#1#1"%pstring).
Definition ss0 : sym_state := SS 780044 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#?44?4#?44?4#5=#?44?4,20##;>7>8+$2-50$3$4$5$6$7$22$:$:+@#2&6$24#1-1++$22+$27@-2&6$24#1#1$22$22#$27$11$28+$27$28$27$22#7???8000+&6$:#3#7???8000+$22$27$19$1:$1;$1<$1=$1>$1?,,24!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)##7???7000#100000001000$:##18#&6$:#3#7???8000#3)$2-50#50$:##18%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1!$:#,1$21'$21##??'&9$21#1#1#1!$:#,8$24'&9$24#1#1#1'$24#1;#80000001!$:#8,8$22'$22##80000000!$:#10,8$23'$23#1000#800000000000&$23#10'$27#1#40000000'$28##800000000000'&4++@-1$22@#2&6$24#1-1$27#1#1,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 1000692 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b04f60.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 780044 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b04f60.IT BndT_Na_002.SegItab_Na_b04f60.IT_sound BF NX0 BR XSTEP F0 PSS plan 780044 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qdGL.

Module LibSegNa_qdGS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b04f60.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b04f60.IT.
Definition ENDS : list Z := [1000692].
Definition STOPS1 : list Z := [1000692] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$27&6$21#1$28+$28$27$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)##7???7000#100000001000$:##18#&6$:#3#7???8000#3)$2-50#50$:##18%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1!$:#,1$21'$21##2<'&9$21#1##'$27#1#40000000'$28##800000000000'&4+@-1&6$21#1#16$27#1#1"%pstring).
Definition ss0 : sym_state := SS 780044 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#?44?4#?44?4#5=#?44?4,20##;>7>8+$2-50$3$4$5$6$7&6$21#1$:$:#16++$27&6$21#1-16&6$21#1&6$21#1#$27$11$28+$27$28$27&6$21#1#7???8000+&6$:#3#7???8000+$27&6$21#1$19$1:$1;$1<$1=$1>$1?,,1<!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)##7???7000#100000001000$:##18#&6$:#3#7???8000#3)$2-50#50$:##18%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1!$:#,1$21'$21##2<'&9$21#1##'$27#1#40000000'$28##800000000000'&4+@-1&6$21#1#16$27#1#1,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 1000692 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b04f60.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 780044 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b04f60.IT BndT_Na_002.SegItab_Na_b04f60.IT_sound BF NX0 BR XSTEP F0 PSS plan 780044 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qdGS.

Module LibSegNa_qdRL.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b04f60.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b04f60.IT.
Definition ENDS : list Z := [780572].
Definition STOPS1 : list Z := [780572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$22$:$37$;$<$=$>$?$10$11$12$13$14$15#7???8000+&6$:#3#7???8000$23$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",19'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)##7???7000#100000001000$:##18#&6$:#3#7???8000#3)$2-50#50$:##18!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31!$2-38,8$32!$2-40,8$33!$2-48,8$34!$2-50,8$35!$:#,1$21'$21##??'&9$21#1#1#1!$:#10,8$23'$23#1000#800000000000'$22##40000000"%pstring).
Definition ss0 : sym_state := SS 780472 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;>91<#;>91<#5=#;>91<,20#$2<$2$3$4$5$6$7$2=$2>+$22$23#$<$=$>$?$10$11$2?$30$31$32$33$34$35$19$1:$1;$1<$1=$1>$1?,,19'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)##7???7000#100000001000$:##18#&6$:#3#7???8000#3)$2-50#50$:##18!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31!$2-38,8$32!$2-40,8$33!$2-48,8$34!$2-50,8$35!$:#,1$21'$21##??'&9$21#1#1#1!$:#10,8$23'$23#1000#800000000000'$22##40000000,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 780572 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b04f60.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 780472 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b04f60.IT BndT_Na_002.SegItab_Na_b04f60.IT_sound BF NX0 BR XSTEP F0 PSS plan 780472 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qdRL.

Module LibSegNa_qdRS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b04f60.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b04f60.IT.
Definition ENDS : list Z := [780572].
Definition STOPS1 : list Z := [780572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$22$:$37$;$<$=$>$?$10$11$12$13$14$15#7???8000+&6$:#3#7???8000+$:#1$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",17'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)##7???7000#100000001000$:##18#&6$:#3#7???8000#3)$2-50#50$:##18!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31!$2-38,8$32!$2-40,8$33!$2-48,8$34!$2-50,8$35!$:#,1$21'$21##2<'&9$21#1##'$22##16"%pstring).
Definition ss0 : sym_state := SS 780472 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;>91<#;>91<#5=#;>91<,20#$2<$2$3$4$5$6$7$2=$2>++$:$22#1$;$<$=$>$?$10$11$2?$30$31$32$33$34$35$19$1:$1;$1<$1=$1>$1?,,17'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#6;6000#7?????????>8&$:#8($:##18)##7???7000#100000001000$:##18#&6$:#3#7???8000#3)$2-50#50$:##18!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31!$2-38,8$32!$2-40,8$33!$2-48,8$34!$2-50,8$35!$:#,1$21'$21##2<'&9$21#1##'$22##16,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 780572 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b04f60.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 780472 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b04f60.IT BndT_Na_002.SegItab_Na_b04f60.IT_sound BF NX0 BR XSTEP F0 PSS plan 780472 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qdRS.

Module LibSegNa_qeaA0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_06dedf.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_06dedf.IT.
Definition ENDS : list Z := [412400].
Definition STOPS1 : list Z := [412400; 723332] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 36); (EVar 35); (EVar 39); EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KImg 65536 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487328 140737488355328;
   KAlign (EVar 2) 32;
   KWr (SA (EVar 2) (-160)) (ELit 160)].
Definition ss0 : sym_state := SS 723212 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#64:?0#;0984#64:?0#5=#64:?0,20##;0984+$2-:0$3$4$5$6$7$2+$2-:0#<0#15?:78#1$=$>$?$10$11$12$24$14$23$16$27$18$19$1:#7???8000$1<$1=$1>$1?,,14!$2-68,8$1;!$2-60,8$1:!$2-58,8$19!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1!$2-:0,8#%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010:0#800000000000&$2#20($2-:0#:0,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 412400 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_06dedf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 723212 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_06dedf.IT BndT_Na_000.SegItab_Na_06dedf.IT_sound BF NX0 BR XSTEP F0 PSS plan 723212 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qeaA0.

Module LibSegNa_qeaA16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_06dedf.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_06dedf.IT.
Definition ENDS : list Z := [412400].
Definition STOPS1 : list Z := [412400; 723332] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2#10$3$4$5$6$7$8$9$24$23$27$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 65536 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487328 140737488355312;
   KAlign (EVar 2) 32;
   KWr (SA (EVar 2) (-160)) (ELit 176)].
Definition ss0 : sym_state := SS 723212 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#64:?0#;0984#64:?0#5=#64:?0,20##;0984+$2-:0$3$4$5$6$7+$2#10+$2-:0#<0#15?:78#1$=$>$?$10$11$12$24$14$23$16$27$18$19$1:#7???8000$1<$1=$1>$1?,,14!$2-58,8$1;!$2-50,8$1:!$2-48,8$19!$2-40,8$18!$2-38,8$17!$2-30,8$16!$2-28,8$15!$2-20,8$14!$2-18,8$13!$2-10,8$12!$2-8,8$9!$2#,8$8!$2#8,8$1!$2-90,8#%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010:0#7??????????0&$2#20($2-:0#;0,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 412400 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_06dedf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 723212 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_06dedf.IT BndT_Na_000.SegItab_Na_06dedf.IT_sound BF NX0 BR XSTEP F0 PSS plan 723212 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qeaA16.

Module LibSegNa_qeaAk1e1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_06dedf.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_06dedf.IT.
Definition ENDS : list Z := [724508].
Definition STOPS1 : list Z := [724508] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50$17$18$19$1:#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4$2=!$25-10,4#1,$25-8#8'$2=##1($25-8#8)+$25-18##18$24##60"%pstring).
Definition ss0 : sym_state := SS 724388 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;0>1<#;0>1<#5=#;0>1<,20#$1+$2-:0$3$4$5$6$7$8$9+$25-10$2=+&6+$25-10#3#7???8000#1#2+$50#1$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50$17$18$19$1:#7???8000$1<$1=$1>$1?,,11!$25-8,8+$50#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4$2=!$25-10,4#1'$2=##1($25-8#8)+$25-18##18$24##60,51!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 724508 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_06dedf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 724388 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_06dedf.IT BndT_Na_000.SegItab_Na_06dedf.IT_sound BF NX0 BR XSTEP F0 PSS plan 724388 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qeaAk1e1.

Module LibSegNa_qeaAk2e0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_06dedf.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_06dedf.IT.
Definition ENDS : list Z := [724508].
Definition STOPS1 : list Z := [724508] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50$17$18$19$1:#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1!$25-14,4#2!$25-10,4#($25-10#4)+$25-18##18$24##60"%pstring).
Definition ss0 : sym_state := SS 724388 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;0>1<#;0>1<#5=#;0>1<,20#$1+$2-:0$3$4$5$6$7$8$9+$25-10#1+&6+$25-10#3#7???8000##2$?$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50$17$18$19$1:#7???8000$1<$1=$1>$1?,,>!$25-10,4#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1!$25-14,4#2($25-10#4)+$25-18##18$24##60,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 724508 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_06dedf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 724388 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_06dedf.IT BndT_Na_000.SegItab_Na_06dedf.IT_sound BF NX0 BR XSTEP F0 PSS plan 724388 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qeaAk2e0.

Module LibSegNa_qeaAk2e1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_06dedf.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_06dedf.IT.
Definition ENDS : list Z := [724508].
Definition STOPS1 : list Z := [724508] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50$17$18$19$1:#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4#2!$25-10,4#1,$25-8#8($25-10#4($25-8#8)+$25-18##18$24##60"%pstring).
Definition ss0 : sym_state := SS 724388 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;0>1<#;0>1<#5=#;0>1<,20#$1+$2-:0$3$4$5$6$7$8$9+$25-10#+&6+$25-10#3#7???8000#1#2+$50#1$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50$17$18$19$1:#7???8000$1<$1=$1>$1?,,11!$25-10,4#!$25-8,8+$50#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4#2($25-10#4($25-8#8)+$25-18##18$24##60,51!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 724508 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_06dedf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 724388 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_06dedf.IT BndT_Na_000.SegItab_Na_06dedf.IT_sound BF NX0 BR XSTEP F0 PSS plan 724388 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qeaAk2e1.

Module LibSegNa_qeaB.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_06dedf.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_06dedf.IT.
Definition ENDS : list Z := [723560].
Definition STOPS1 : list Z := [723560] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8+$2-:0$32$;$<$=$>$?$10$11$12$24$14$23$16$27$18$19$1:#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$2#7???7?8010:0#800000000000&$2#20($2-70#8)+$2-:0##:0$32##100'$32#6;6000#7?????????00&$32#20)##7???7000#100000001000$32##100($32##18(&6$32#3#7???8000#18'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1)&6+$24#50#3#7???8000#1&6$32#3#7???8000#18)+$2-:0##:0$24##60"%pstring).
Definition ss0 : sym_state := SS 723332 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-112), ELit 8); ((EVar 50), (0), ELit 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-112), 8); ((EVar 50), (0), 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;0:68#;0:68#5=#;0:68,20#$1+$2-:0$3$4$5$6$7$8+$2-:0#^#?#??????????????3#18560#;090<^#?#??????????????2^#?#??????????????1$10$11$32$24+&6+$24#50#3#7???8000$23+$24#50$27$18+&6$32#3#7???8000$32#7???8000$1<$1=$1>$1?,,2;!$2-70,8$32!&6$32#3#7???8013,1^#?#??????????????3!&6$32#3#7???8012,1^#?#??????????????8!&6$32#3#7???8011,1^#?#??????????????8!&6$32#3#7???8010,1^#?#??????????????8!&6$32#3#7???8017,1^#?#??????????????3!&6$32#3#7???8016,1^#?#??????????????3!&6$32#3#7???8015,1^#?#??????????????3!&6$32#3#7???8014,1^#?#??????????????3!&6$32#3#7???800;,1^#?#??????????????2!&6$32#3#7???800:,1^#?#??????????????2!&6$32#3#7???8009,1^#?#??????????????2!&6$32#3#7???8008,1^#?#??????????????2!&6$32#3#7???800?,1^#?#??????????????2!&6$32#3#7???800>,1^#?#??????????????2!&6$32#3#7???800=,1^#?#??????????????8!&6$32#3#7???800<,1^#?#??????????????8!&6$32#3#7???8007,1^#?#??????????????2!&6$32#3#7???8006,1^#?#??????????????8!&6$32#3#7???8005,1^#?#??????????????8!&6$32#3#7???8004,1^#?#??????????????8!&6$32#3#7???8003,1^#?#??????????????1!&6$32#3#7???8002,1^#?#??????????????1!&6$32#3#7???8001,1^#?#??????????????1!&6$32#3#7???8000,1^#?#??????????????1!$32#10,8#;090<!$32#8,8#18560!$32#,8#41;58:;3'$2#7???7?8010:0#800000000000&$2#20($2-70#8)+$2-:0##:0$32##100'$32#6;6000#7?????????00&$32#20)##7???7000#100000001000$32##100($32##18(&6$32#3#7???8000#18'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1)&6+$24#50#3#7???8000#1&6$32#3#7???8000#18)+$2-:0##:0$24##60,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 723560 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_06dedf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 723332 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_06dedf.IT BndT_Na_000.SegItab_Na_06dedf.IT_sound BF NX0 BR XSTEP F0 PSS plan 723332 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qeaB.

Module LibSegNa_qeaDAk1e1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_06dedf.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_06dedf.IT.
Definition ENDS : list Z := [723976].
Definition STOPS1 : list Z := [723976] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50$17$18$19$1:#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4$2=!$25-10,4#1,$25-8#8'$2=##1($25-8#8)+$25-18##18$24##60"%pstring).
Definition ss0 : sym_state := SS 723856 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;0<08#;0<08#5=#;0<08,20#$1+$2-:0$3$4$5$6$7$8$9+$25-10$2=+&6+$25-10#3#7???8000#1#2+$50#1$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50$17$18$19$1:#7???8000$1<$1=$1>$1?,,11!$25-8,8+$50#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4$2=!$25-10,4#1'$2=##1($25-8#8)+$25-18##18$24##60,51!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 723976 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_06dedf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 723856 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_06dedf.IT BndT_Na_000.SegItab_Na_06dedf.IT_sound BF NX0 BR XSTEP F0 PSS plan 723856 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qeaDAk1e1.

Module LibSegNa_qeaDAk2e0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_06dedf.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_06dedf.IT.
Definition ENDS : list Z := [723976].
Definition STOPS1 : list Z := [723976] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50$17$18$19$1:#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1!$25-14,4#2!$25-10,4#($25-10#4)+$25-18##18$24##60"%pstring).
Definition ss0 : sym_state := SS 723856 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;0<08#;0<08#5=#;0<08,20#$1+$2-:0$3$4$5$6$7$8$9+$25-10#1+&6+$25-10#3#7???8000##2$?$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50$17$18$19$1:#7???8000$1<$1=$1>$1?,,>!$25-10,4#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1!$25-14,4#2($25-10#4)+$25-18##18$24##60,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 723976 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_06dedf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 723856 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_06dedf.IT BndT_Na_000.SegItab_Na_06dedf.IT_sound BF NX0 BR XSTEP F0 PSS plan 723856 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qeaDAk2e0.

End BndP_Na_056.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_000 BndT_Na_002.
Module BndP_Na_057.
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
Ltac2 kr_t_BndP_Na_057 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_000ASegItab_Na_06dedf2ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057BLibSegNa_qeaDAk2e12BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057BLibSegNa_qeaDAk2e13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057BLibSegNa_qeaDAk2e12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057BLibSegNa_qeaDAk2e15XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057BLibSegNa_qeaDAk2e12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057BLibSegNa_qeaDAk2e13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057BLibSegNa_qeaDAk2e14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057BLibSegNa_qeaDAk2e15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057BLibSegNa_qeaDAk2e13kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_002ASegItab_Na_8f5ace2ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaDD22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaDD23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaDD22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaDD25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaDD22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaDD23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaDD24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaDD25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaDD23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaDJ2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaDJ3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaDJ2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaDJ5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaDJ2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaDJ3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaDJ4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaDJ5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaDJ3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaE02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaE03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaE02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaE05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaE02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaE03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaE04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaE05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaE03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaE12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaE13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaE12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaE15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaE12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaE13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaE14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaE15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaE13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaE22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaE23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaE22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaE25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaE22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaE23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaE24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaE25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaE23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaN12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaN13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaN12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaN15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaN12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaN13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaN14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaN15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaN13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaN22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaN23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaN22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaN25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaN22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaN23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaN24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaN25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaN23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaPCL2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaPCL3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaPCL2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaPCL5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaPCL2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaPCL3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaPCL4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaPCL5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaPCL3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaPCS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaPCS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaPCS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaPCS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaPCS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaPCS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaPCS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaPCS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaPCS3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaPJ2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaPJ3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaPJ2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaPJ5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaPJ2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaPJ3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaPJ4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaPJ5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057>LibSegNa_qeaPJ3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaPK12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaPK13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaPK12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaPK15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaPK12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaPK13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaPK14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaPK15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057?LibSegNa_qeaPK13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057ALibSegNa_qeaPK2aL2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057ALibSegNa_qeaPK2aL3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057ALibSegNa_qeaPK2aL2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057ALibSegNa_qeaPK2aL5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057ALibSegNa_qeaPK2aL2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057ALibSegNa_qeaPK2aL3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057ALibSegNa_qeaPK2aL4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057ALibSegNa_qeaPK2aL5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057ALibSegNa_qeaPK2aL3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057ALibSegNa_qeaPK2aS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057ALibSegNa_qeaPK2aS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057ALibSegNa_qeaPK2aS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057ALibSegNa_qeaPK2aS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057ALibSegNa_qeaPK2aS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057ALibSegNa_qeaPK2aS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057ALibSegNa_qeaPK2aS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057ALibSegNa_qeaPK2aS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_057ALibSegNa_qeaPK2aS3kn0".

Module LibSegNa_qeaDAk2e1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_06dedf.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_06dedf.IT.
Definition ENDS : list Z := [723976].
Definition STOPS1 : list Z := [723976] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50$17$18$19$1:#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4#2!$25-10,4#1,$25-8#8($25-10#4($25-8#8)+$25-18##18$24##60"%pstring).
Definition ss0 : sym_state := SS 723856 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;0<08#;0<08#5=#;0<08,20#$1+$2-:0$3$4$5$6$7$8$9+$25-10#+&6+$25-10#3#7???8000#1#2+$50#1$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50$17$18$19$1:#7???8000$1<$1=$1>$1?,,11!$25-10,4#!$25-8,8+$50#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4#2($25-10#4($25-8#8)+$25-18##18$24##60,51!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 723976 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_06dedf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 723856 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_06dedf.IT BndT_Na_000.SegItab_Na_06dedf.IT_sound BF NX0 BR XSTEP F0 PSS plan 723856 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qeaDAk2e1.

Module LibSegNa_qeaDD2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_8f5ace.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_8f5ace.IT.
Definition ENDS : list Z := [793780].
Definition STOPS1 : list Z := [793780] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$24$14$23$16$27$18$19$1:#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;%#10000#158000'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#10#3#7???8000#1!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##8#&6$26#3#7???8000#1!$26#,8#151130###80022229#1"%pstring).
Definition ss0 : sym_state := SS 723976 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<1<;4#<1<;4#5=#<1<;4,20##;0<58+$2-:0$3$4$5$6$7$8$9$26$23$27#<1<;4$>$?$10$11$12$24$14$23$16$27$18$19$1:#7???8000$1<$1=$1>$1?,,;%#10000#158000'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#10#3#7???8000#1!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##8#&6$26#3#7???8000#1!$26#,8#151130###80022229#1,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 793780 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_8f5ace.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 723976 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_8f5ace.IT BndT_Na_002.SegItab_Na_8f5ace.IT_sound BF NX0 BR XSTEP F0 PSS plan 723976 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qeaDD2.

Module LibSegNa_qeaDJ.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_06dedf.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_06dedf.IT.
Definition ENDS : list Z := [724508].
Definition STOPS1 : list Z := [724508] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 724056 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;0>1<#;0>1<#5=#;0>1<,20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 724508 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_06dedf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 724056 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_06dedf.IT BndT_Na_000.SegItab_Na_06dedf.IT_sound BF NX0 BR XSTEP F0 PSS plan 724056 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qeaDJ.

Module LibSegNa_qeaE0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_06dedf.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_06dedf.IT.
Definition ENDS : list Z := [723816].
Definition STOPS1 : list Z := [723816] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50$17$18$19$1:#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>%#10000#158000'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1#&6+$24#48#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-18#3#7???8000#1!$25-18,4#!$24#48,8$29'$29#1000#800000000000"%pstring).
Definition ss0 : sym_state := SS 723560 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;0;68#;0;68#5=#;0;68,20#$1+$2-:0$3$4$5$6$7$8$9+$25-18$25$29^#:#::::::::::::::;$>$?$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50$17+$24#48$19$1:#7???8000$1<$1=$1>$1?,,>%#10000#158000'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1#&6+$24#48#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-18#3#7???8000#1!$25-18,4#!$24#48,8$29'$29#1000#800000000000,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 723816 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_06dedf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 723560 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_06dedf.IT BndT_Na_000.SegItab_Na_06dedf.IT_sound BF NX0 BR XSTEP F0 PSS plan 723560 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qeaE0.

Module LibSegNa_qeaE1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_06dedf.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_06dedf.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 723620] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8+$2-:0$:$;$<$=$>$?$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50$27$18$19$1:#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-18#3#7???8000#1!$25-18,4#1'$2#7???7?8010:0#800000000000&$2#20($2-88#8)+$2-:0##:0$32##100"%pstring).
Definition ss0 : sym_state := SS 723560 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-136), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-136), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#?4640#;0::4#?4640#5=#?4640,20##;0::4+$2-:0$3$4$5$6$7$8+$2-:0+$24#30#5=#1#1$>$?$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50+$24#30+$24#48$19$1:#7???8000$1<$1=$1>$1?,,=!$2-88,8$27'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-18#3#7???8000#1'$2#7???7?8010:0#800000000000&$2#20($2-88#8)+$2-:0##:0$32##100,50!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_06dedf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 723560 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_06dedf.IT BndT_Na_000.SegItab_Na_06dedf.IT_sound BF NX0 BR XSTEP F0 PSS plan 723560 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qeaE1.

Module LibSegNa_qeaE2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_06dedf.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_06dedf.IT.
Definition ENDS : list Z := [754744].
Definition STOPS1 : list Z := [754744; 723856] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8$9+$25-18$2?$<$=$>$?$10$11$12$24+&6+$24#50#3#7???8000$23+$24#50$27+$24#48$19$1:#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8'$2?#2#800($24#50#8"%pstring).
Definition ss0 : sym_state := SS 723828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 36), (80), ELit 8)].
Definition F0L : list SR.region := [((EVar 36), (80), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;8438#;0;90#;8438#5=#;8438,20##;0;90+$2-:0$3$4$5$6$7$8$9+$24#48$2?#$=$>$?$10$11$12$24+&6+$24#50#3#7???8000$23+$24#50$27+$24#48$19$1:#7???8000$1<$1=$1>$1?,,9!$24#50,8+$25-18'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1'$25#1018#800000000000&$25#8'$2?#2#800($24#50#8,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 754744 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_06dedf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 723828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_06dedf.IT BndT_Na_000.SegItab_Na_06dedf.IT_sound BF NX0 BR XSTEP F0 PSS plan 723828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qeaE2.

Module LibSegNa_qeaN1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_06dedf.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_06dedf.IT.
Definition ENDS : list Z := [723660].
Definition STOPS1 : list Z := [723660] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50$27+$24#48$19$1:#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:%#10000#158000'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1#&6+$24#48#3#7???8000#1!$24#50,8$25!$24#48,8$29'$25#1000#800000000000'$29#1000#800000000000"%pstring).
Definition ss0 : sym_state := SS 723620 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;0:<<#;0:<<#5=#;0:<<,20#$1+$2-:0$3$4$5$6$7$8$9$25$29^#:#::::::::::::::;$=$>$?$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50$27+$24#48$19$1:#7???8000$1<$1=$1>$1?,,:%#10000#158000'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1#&6+$24#48#3#7???8000#1!$24#50,8$25!$24#48,8$29'$25#1000#800000000000'$29#1000#800000000000,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 723660 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_06dedf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 723620 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_06dedf.IT BndT_Na_000.SegItab_Na_06dedf.IT_sound BF NX0 BR XSTEP F0 PSS plan 723620 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qeaN1.

Module LibSegNa_qeaN2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_06dedf.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_06dedf.IT.
Definition ENDS : list Z := [754744].
Definition STOPS1 : list Z := [754744; 723704] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8$9$25$2?$<$=$>$?$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50$27+$24#48$19$1:#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8'$2?#2#800($24#50#8"%pstring).
Definition ss0 : sym_state := SS 723672 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 36), (80), ELit 8)].
Definition F0L : list SR.region := [((EVar 36), (80), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;8438#;0:?8#;8438#5=#;8438,20##;0:?8+$2-:0$3$4$5$6$7$8$9+$24#48$2?#$=$>$?$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50$27+$24#48$19$1:#7???8000$1<$1=$1>$1?,,9!$24#50,8+$25-18'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1'$25#1018#800000000000&$25#8'$2?#2#800($24#50#8,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 754744 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_06dedf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 723672 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_06dedf.IT BndT_Na_000.SegItab_Na_06dedf.IT_sound BF NX0 BR XSTEP F0 PSS plan 723672 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qeaN2.

Module LibSegNa_qeaPCL.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_06dedf.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_06dedf.IT.
Definition ENDS : list Z := [724388].
Definition STOPS1 : list Z := [724388] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50+$24#30+&6+$24#30#3#7???8000+&6$32#3#7???8000$1:#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1:'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000'$32#6;6000#7?????????00&$32#20)##7???7000#100000001000$32##100(&6$32#3#7???800<#2)&6+$24#30#3#7???8000#1&6$32#3#7???800<#2)&6+$24#40#3#7???8000#1&6$32#3#7???800<#2)&6+$24#38#3#7???8000#1&6$32#3#7???800<#2($24#38#8($2>##1)##7???7000#100000001000$2>##1#&6$2>#3#7???8000#1)&6$2>#3#7???8000#1&6$32#3#7???800<#2)$2>##1$24##60"%pstring).
Definition ss0 : sym_state := SS 724248 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (12), ELit 2); ((EVar 36), (56), ELit 8); ((EVar 46), (0), ELit 1)].
Definition F0L : list SR.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (12), 2); ((EVar 36), (56), 8); ((EVar 46), (0), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;0=:4#;0=:4#5=#;0=:4,20#$1+$2-:0$3$4$5$6$7$8$9+$24#38#$<$=$>$?$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50+$24#30+&6+$24#30#3#7???8000+&6$32#3#7???8000$1:#7???8000$1<$1=$1>$1?,,1<!$24#38,8#!$2>#,1#!&6$32#3#7???800=,1^#?#??????????????8!&6$32#3#7???800<,1^#?#??????????????8'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1!$24#30,1$2<'$2<##??'&9$2<#1#1#1'$2=##80000000!$24#40,8$2>'$2>#1000#800000000000'$32#6;6000#7?????????00&$32#20)##7???7000#100000001000$32##100(&6$32#3#7???800<#2)&6+$24#30#3#7???8000#1&6$32#3#7???800<#2)&6+$24#40#3#7???8000#1&6$32#3#7???800<#2)&6+$24#38#3#7???8000#1&6$32#3#7???800<#2($24#38#8($2>##1)##7???7000#100000001000$2>##1)&6$2>#3#7???8000#1&6$32#3#7???800<#2)$2>##1$24##60,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 724388 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_06dedf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 724248 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_06dedf.IT BndT_Na_000.SegItab_Na_06dedf.IT_sound BF NX0 BR XSTEP F0 PSS plan 724248 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qeaPCL.

Module LibSegNa_qeaPCS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_06dedf.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_06dedf.IT.
Definition ENDS : list Z := [724388].
Definition STOPS1 : list Z := [724388] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50+$24#30+&6+$24#30#3#7???8000+&6$32#3#7???8000$1:#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#31#3#7???8000#1!$24#30,1$2<'$2<##2<'&9$2<#1##'$32#6;6000#7?????????00&$32#20)##7???7000#100000001000$32##100(&6$32#3#7???800<#2)&6+$24#30#3#7???8000#1&6$32#3#7???800<#2)&6+$24#31#3#7???8000#1&6$32#3#7???800<#2($24#30#2"%pstring).
Definition ss0 : sym_state := SS 724248 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (12), ELit 2); ((EVar 36), (48), ELit 2)].
Definition F0L : list SR.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (12), 2); ((EVar 36), (48), 2)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;0=:4#;0=:4#5=#;0=:4,20#$1+$2-:0$3$4$5$6$7$8$9##$<$=$>$?$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50+$24#30+&6+$24#30#3#7???8000+&6$32#3#7???8000$1:#7???8000$1<$1=$1>$1?,,12!$24#30,1#!$24#31,1#!&6$32#3#7???800=,1^#?#??????????????8!&6$32#3#7???800<,1^#?#??????????????8'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#31#3#7???8000#1'$2<##2<'&9$2<#1##'$32#6;6000#7?????????00&$32#20)##7???7000#100000001000$32##100(&6$32#3#7???800<#2)&6+$24#30#3#7???8000#1&6$32#3#7???800<#2)&6+$24#31#3#7???8000#1&6$32#3#7???800<#2($24#30#2,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 724388 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_06dedf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 724248 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_06dedf.IT BndT_Na_000.SegItab_Na_06dedf.IT_sound BF NX0 BR XSTEP F0 PSS plan 724248 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qeaPCS.

Module LibSegNa_qeaPJ.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_06dedf.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_06dedf.IT.
Definition ENDS : list Z := [724388].
Definition STOPS1 : list Z := [724388] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 723784 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;0=:4#;0=:4#5=#;0=:4,20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 724388 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_06dedf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 723784 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_06dedf.IT BndT_Na_000.SegItab_Na_06dedf.IT_sound BF NX0 BR XSTEP F0 PSS plan 723784 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qeaPJ.

Module LibSegNa_qeaPK1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_06dedf.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_06dedf.IT.
Definition ENDS : list Z := [724060].
Definition STOPS1 : list Z := [724060] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50+$24#30$18$19$1:#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-18#3#7???8000#1!$25-18,4#"%pstring).
Definition ss0 : sym_state := SS 723704 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;0<5<#;0<5<#5=#;0<5<,20#$1+$2-:0$3$4$5$6$7$8$9#$25#$=$>$?$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50+$24#30$18$19$1:#7???8000$1<$1=$1>$1?,,:'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-18#3#7???8000#1!$25-18,4#,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 724060 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_06dedf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 723704 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_06dedf.IT BndT_Na_000.SegItab_Na_06dedf.IT_sound BF NX0 BR XSTEP F0 PSS plan 723704 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qeaPK1.

Module LibSegNa_qeaPK2aL.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_06dedf.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_06dedf.IT.
Definition ENDS : list Z := [724180].
Definition STOPS1 : list Z := [724180] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50+$24#30$18+&6$32#3#7???8000$1:#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",17'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#10#3#7???8000#1#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1!$24#10,8$26'$26#6;6000#7??????????8!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000'$32#6;6000#7?????????00&$32#20)##7???7000#100000001000$32##100(&6$32#3#7???800<#2)&6+$24#30#3#7???8000#1&6$32#3#7???800<#2)&6+$24#40#3#7???8000#1&6$32#3#7???800<#2)&6+$24#38#3#7???8000#1&6$32#3#7???800<#2"%pstring).
Definition ss0 : sym_state := SS 724060 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (12), ELit 2)].
Definition F0L : list SR.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (12), 2)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;0<=4#;0<=4#5=#;0<=4,20#$1+$2-:0$3$4$5$6$7$8$9$26+$24#38$2>$2=$>$?$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50+$24#30+&6+$24#30#3#7???8000+&6$32#3#7???8000$1:#7???8000$1<$1=$1>$1?,,18!&6$32#3#7???800=,1#!&6$32#3#7???800<,1#'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1#&6+$24#40#3#7???8000#1#&6+$24#38#3#7???8000#1!$24#10,8$26'$26#6;6000#7??????????8!$24#30,1$2<'$2<##??'&9$2<#1#1#1!$24#38,8$2='$2=##80000000!$24#40,8$2>'$2>#1000#800000000000'$32#6;6000#7?????????00&$32#20)##7???7000#100000001000$32##100(&6$32#3#7???800<#2)&6+$24#30#3#7???8000#1&6$32#3#7???800<#2)&6+$24#40#3#7???8000#1&6$32#3#7???800<#2)&6+$24#38#3#7???8000#1&6$32#3#7???800<#2,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 724180 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_06dedf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 724060 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_06dedf.IT BndT_Na_000.SegItab_Na_06dedf.IT_sound BF NX0 BR XSTEP F0 PSS plan 724060 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qeaPK2aL.

Module LibSegNa_qeaPK2aS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_06dedf.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_06dedf.IT.
Definition ENDS : list Z := [724180].
Definition STOPS1 : list Z := [724180] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50+$24#30$18+&6$32#3#7???8000$1:#7???8000$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#10#3#7???8000#1#&6+$24#30#3#7???8000#1!$24#10,8$26'$26#6;6000#7??????????8!$24#30,1$2<'$2<##2<'&9$2<#1##'$32#6;6000#7?????????00&$32#20)##7???7000#100000001000$32##100(&6$32#3#7???800<#2)&6+$24#30#3#7???8000#1&6$32#3#7???800<#2"%pstring).
Definition ss0 : sym_state := SS 724060 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (12), ELit 2)].
Definition F0L : list SR.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (12), 2)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;0<=4#;0<=4#5=#;0<=4,20#$1+$2-:0$3$4$5$6$7$8$9$26#+$24#31&6$2<#1$>$?$10$11$12$24+&6+$24#50#3#7???8000$15+$24#50+$24#30+&6+$24#30#3#7???8000+&6$32#3#7???8000$1:#7???8000$1<$1=$1>$1?,,10!&6$32#3#7???800=,1#!&6$32#3#7???800<,1#'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#30#3#7???8000#1!$24#10,8$26'$26#6;6000#7??????????8!$24#30,1$2<'$2<##2<'&9$2<#1##'$32#6;6000#7?????????00&$32#20)##7???7000#100000001000$32##100(&6$32#3#7???800<#2)&6+$24#30#3#7???8000#1&6$32#3#7???800<#2,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 724180 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_06dedf.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 724060 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_06dedf.IT BndT_Na_000.SegItab_Na_06dedf.IT_sound BF NX0 BR XSTEP F0 PSS plan 724060 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qeaPK2aS.

End BndP_Na_057.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_000 BndT_Na_003.
Module BndP_Na_000.
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
Ltac2 kr_t_BndP_Na_000 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_000ASegItab_Na_39498a2ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000>LibSegNa_aacBd2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000>LibSegNa_aacBd3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000>LibSegNa_aacBd2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000>LibSegNa_aacBd5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000>LibSegNa_aacBd2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000>LibSegNa_aacBd3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000>LibSegNa_aacBd4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000>LibSegNa_aacBd5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000>LibSegNa_aacBd3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000>LibSegNa_aacCd2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000>LibSegNa_aacCd3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000>LibSegNa_aacCd2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000>LibSegNa_aacCd5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000>LibSegNa_aacCd2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000>LibSegNa_aacCd3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000>LibSegNa_aacCd4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000>LibSegNa_aacCd5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000>LibSegNa_aacCd3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000>LibSegNa_aagB22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000>LibSegNa_aagB23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000>LibSegNa_aagB22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000>LibSegNa_aagB25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000>LibSegNa_aagB22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000>LibSegNa_aagB23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000>LibSegNa_aagB24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000>LibSegNa_aagB25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000>LibSegNa_aagB23kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f9163e2ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000=LibSegNa_abrB2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000=LibSegNa_abrB3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000=LibSegNa_abrB2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000=LibSegNa_abrB5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000=LibSegNa_abrB2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000=LibSegNa_abrB3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000=LibSegNa_abrB4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000=LibSegNa_abrB5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000=LibSegNa_abrB3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000=LibSegNa_abrE2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000=LibSegNa_abrE3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000=LibSegNa_abrE2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000=LibSegNa_abrE5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000=LibSegNa_abrE2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000=LibSegNa_abrE3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000=LibSegNa_abrE4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000=LibSegNa_abrE5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000=LibSegNa_abrE3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE322BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE323NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE322BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE325XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE322F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE323PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE324planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE325regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE323kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8a2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8a3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8a2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8a5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8a2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8a3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8a4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8a5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8a3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8b2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8b3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8b2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8b5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8b2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8b3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8b4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8b5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8b3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8c2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8c3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8c2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8c5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8c2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8c3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8c4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8c5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8c3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8d2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8d3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8d2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8d5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8d2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8d3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8d4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8d5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8d3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8e2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8e3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8e2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8e5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8e2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8e3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8e4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8e5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8e3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8n2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8n3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8n2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8n5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8n2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8n3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8n4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8n5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8n3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8t2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8t3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8t2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8t5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8t2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8t3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8t4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8t5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_000?LibSegNa_abrE8t3kn0".

Module LibSegNa_aacBd.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_39498a.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_39498a.IT.
Definition ENDS : list Z := [827428].
Definition STOPS1 : list Z := [827428; 825972; 826212; 826736] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8+$2-:0$32$;$<$=$>$?$10$11$12$21$22$15$16$17#7???8000$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",16'$2#7???7?8010:0#800000000000&$2#20($2-88#8)+$2-:0##:0$32##80'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80)$21##20$32##80)&6$21#3#7???8000#4&6$32#3#7???8000#10($32##18(&6$32#3#7???8000#<'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-:0#;0$21##20!$21#,1$26'$26##??'&9$26#2##'&9$26#1#1#1!$21#8,8#2"%pstring).
Definition ss0 : sym_state := SS 825964 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-136), ELit 8); ((EVar 50), (0), ELit 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), ELit 12)].
Definition F0L : list SR.region := [((EVar 2), (-136), 8); ((EVar 50), (0), 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), 12)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,5#<:024#<9:74#<9;64#<9=70#<:024#5=#<:024,20##<9;48+$2-:0$3$4$5$6$7$8+$2-:0$21#3#<99?<^#?#??????????????8$>$?$10$11$32$21$22+$21#8+&6$32#3#7???8000$32#7???8000+&6+$21#8#3#7???8000+&6$21#3#7???8000$1;$1<$1=$1>$1?,,26!$2-88,8$32!&6$32#3#7???800;,1^#?#??????????????3!&6$32#3#7???800:,1^#?#??????????????3!&6$32#3#7???8009,1^#?#??????????????3!&6$32#3#7???8008,1^#?#??????????????3!&6$32#3#7???8003,1^#?#??????????????1!&6$32#3#7???8002,1^#?#??????????????1!&6$32#3#7???8001,1^#?#??????????????1!&6$32#3#7???8000,1^#?#??????????????1!&6$32#3#7???8007,1^#?#??????????????8!&6$32#3#7???8006,1^#?#??????????????8!&6$32#3#7???8005,1^#?#??????????????8!&6$32#3#7???8004,1^#?#??????????????8!$32#10,8#<99?<!$32#8,8#1>:27!$32#,8#41;58:;3'$2#7???7?8010:0#800000000000&$2#20($2-88#8)+$2-:0##:0$32##80'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80)$21##20$32##80)&6$21#3#7???8000#4&6$32#3#7???8000#10($32##18(&6$32#3#7???8000#<'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-:0#;0$21##20!$21#,1$26'$26##??'&9$26#2##'&9$26#1#1#1!$21#8,8#2,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 827428 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_39498a.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 825964 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_39498a.IT BndT_Na_000.SegItab_Na_39498a.IT_sound BF NX0 BR XSTEP F0 PSS plan 825964 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aacBd.

Module LibSegNa_aacCd.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_39498a.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_39498a.IT.
Definition ENDS : list Z := [830872].
Definition STOPS1 : list Z := [830872; 826204; 826752] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$21$22+$21#8$16$17#7???8000+&6+$21#8#3#7???8000+&6$21#3#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",17'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$26'$26##??'&9$26#2##'$24#^#?#???????????????'$22#^#?#???????????????'&9$26#1#1#1!$21#8,8#3!$21#18,8$25'$25#1000#7?????????<0&$25#10)##7???7000#100000001000$25##40#&6$25#3#7???8000#8($25##40)$25##40$21##20!$25#,8$24!$25#8,8$27!$25#10,8#'$27#^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 826184 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 37), (0), ELit 8); ((EVar 37), (8), ELit 8); ((EVar 37), (16), ELit 8)].
Definition F0L : list SR.region := [((EVar 37), (0), 8); ((EVar 37), (8), 8); ((EVar 37), (16), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#<:=98#<9;5<#<9=80#<:=98#5;#<9<54,20#$1$2$3$4$5$6$7$8$9$25#3$24#2$>$?$10$11$12$21+$22$24+$21#8$16$17#7???8000+&6+$21#8#3#7???8000+&6$21#3#7???8000$1;$1<$1=$1>$1?,,17!$25#,8+$22$24'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$26'$26##??'&9$26#2##'$24#^#?#???????????????'$22#^#?#???????????????'&9$26#1#1#1!$21#8,8#3!$21#18,8$25'$25#1000#7?????????<0&$25#10)##7???7000#100000001000$25##40#&6$25#3#7???8000#8($25##40)$25##40$21##20!$25#8,8$27!$25#10,8#'$27#^#?#???????????????,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition arms2 := Eval vm_compute in (match SGP.branch_probe IT s1 with Some e => SGP.case_arms s1 e 0 | None => None end).
Definition f2 : sym_state := match arms2 with Some (Some s, _) => s | _ => s1 end.
Definition t2 : sym_state := match arms2 with Some (_, Some s) => s | _ => s1 end.

Definition ex3 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#<:=98#<9;5<#<9=80#<:=98#5;#<9<94,20#$1$2$3$4$5$6$7$8$9+$25#10#3+$25#10#3+$27#1$?$10$11$12$21+$22$24+$21#8$16$17+&6+$25#8#3#7???8000+&6+$21#8#3#7???8000+&6$21#3#7???8000$1;$1<$1=$1>$1?,,18!$25#8,8+$27#1'&4+$22$24$24#1#1!$25#,8+$22$24'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$26'$26##??'&9$26#2##'$24#^#?#???????????????'$22#^#?#???????????????'&9$26#1#1#1!$21#8,8#3!$21#18,8$25'$25#1000#7?????????<0&$25#10)##7???7000#100000001000$25##40#&6$25#3#7???8000#8($25##40)$25##40$21##20!$25#10,8#'$27#^#?#???????????????,50!"%pstring).
Definition s3 : sym_state := snd (snd ex3).

Definition arms4 := Eval vm_compute in (match SGP.branch_probe IT s3 with Some e => SGP.case_arms s3 e 0 | None => None end).
Definition f4 : sym_state := match arms4 with Some (Some s, _) => s | _ => s3 end.
Definition t4 : sym_state := match arms4 with Some (_, Some s) => s | _ => s3 end.

Definition ex5 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#<:=98#<9;5<#<9=80#<:=98#5=#<:=98,20##<9<:0$2$3$4$5$6$7$8$9$21#3+$25#10#3#1$?$10$11$12$21+$22$24+$21#8$16$17+&6+$25#8#3#7???8000+&6+$21#8#3#7???8000+&6$21#3#7???8000$1;$1<$1=$1>$1?,,19!$25#10,8#1'&4&1+$27#1##1#1#1!$25#8,8+$27#1'&4+$22$24$24#1#1!$25#,8+$22$24'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$26'$26##??'&9$26#2##'$24#^#?#???????????????'$22#^#?#???????????????'&9$26#1#1#1!$21#8,8#3!$21#18,8$25'$25#1000#7?????????<0&$25#10)##7???7000#100000001000$25##40#&6$25#3#7???8000#8($25##40)$25##40$21##20'$27#^#?#???????????????,50!"%pstring).
Definition s5 : sym_state := snd (snd ex5).

Definition ex6 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#<:=98#<9;5<#<9=80#<:=98#5=#<:=98,20##<9<:0$2$3$4$5$6$7$8$9$21#3+$25#10#3+$27#1$?$10$11$12$21+$22$24+$21#8$16$17+&6+$25#8#3#7???8000+&6+$21#8#3#7???8000+&6$21#3#7???8000$1;$1<$1=$1>$1?,,19'&4&1+$27#1##1##!$25#8,8+$27#1'&4+$22$24$24#1#1!$25#,8+$22$24'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$26'$26##??'&9$26#2##'$24#^#?#???????????????'$22#^#?#???????????????'&9$26#1#1#1!$21#8,8#3!$21#18,8$25'$25#1000#7?????????<0&$25#10)##7???7000#100000001000$25##40#&6$25#3#7???8000#8($25##40)$25##40$21##20!$25#10,8#'$27#^#?#???????????????,50!"%pstring).
Definition s6 : sym_state := snd (snd ex6).

Definition ex7 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#<:=98#<9;5<#<9=80#<:=98#5=#<:=98,20##<9<:0$2$3$4$5$6$7$8$9$21#3$24#2$>$?$10$11$12$21+$22$24+$21#8$16$17#7???8000+&6+$21#8#3#7???8000+&6$21#3#7???8000$1;$1<$1=$1>$1?,,18'&4+$22$24$24##!$25#,8+$22$24'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$26'$26##??'&9$26#2##'$24#^#?#???????????????'$22#^#?#???????????????'&9$26#1#1#1!$21#8,8#3!$21#18,8$25'$25#1000#7?????????<0&$25#10)##7???7000#100000001000$25##40#&6$25#3#7???8000#8($25##40)$25##40$21##20!$25#8,8$27!$25#10,8#'$27#^#?#???????????????,50!"%pstring).
Definition s7 : sym_state := snd (snd ex7).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PBranch (SGA.mkplan (fst ex3) (SGP.PBranch (SGA.mkplan (fst ex5) (SGP.PEnd 2)) (SGA.mkplan (fst ex6) (SGP.PEnd 1)))) (SGA.mkplan (fst ex7) (SGP.PEnd 0))).
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

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s7).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s7).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s7 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s7 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s7).
Definition ps0 : SR.post_spec := SR.PS 830872 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition regs_out1 : list expr := Eval vm_compute in (s_regs s6).
Definition exit_sp_off1 : Z := Eval vm_compute in (spoff_of s6).
Definition cells1 : list kentry := Eval vm_compute in (cells_of s6 exit_sp_off1).
Definition nfresh1 : nat := Eval vm_compute in (s_next s6 - NX0)%nat.
Definition exit_pc1 : Z := Eval vm_compute in (s_pc s6).
Definition ps1 : SR.post_spec := SR.PS 830872 (map (fun i => (i, nth i regs_out1 (ELit 0))) (seq 1 31)) F0L cells1.

Definition regs_out2 : list expr := Eval vm_compute in (s_regs s5).
Definition exit_sp_off2 : Z := Eval vm_compute in (spoff_of s5).
Definition cells2 : list kentry := Eval vm_compute in (cells_of s5 exit_sp_off2).
Definition nfresh2 : nat := Eval vm_compute in (s_next s5 - NX0)%nat.
Definition exit_pc2 : Z := Eval vm_compute in (s_pc s5).
Definition ps2 : SR.post_spec := SR.PS 830872 (map (fun i => (i, nth i regs_out2 (ELit 0))) (seq 1 31)) F0L cells2.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0; ps1; ps2] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_39498a.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 826184 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_39498a.IT BndT_Na_000.SegItab_Na_39498a.IT_sound BF NX0 BR XSTEP F0 PSS plan 826184 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aacCd.

Module LibSegNa_aagB2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_39498a.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_39498a.IT.
Definition ENDS : list Z := [827428].
Definition STOPS1 : list Z := [827428; 825972; 826212; 826736] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8+$2-:0$32$;$<$=$>$?$10$11$12$21$22$15$16$17#7???8000$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",16'$2#7???7?8010:0#800000000000&$2#20($2-88#8)+$2-:0##:0$32##80'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80)$21##20$32##80)&6$21#3#7???8000#4&6$32#3#7???8000#10($32##18(&6$32#3#7???8000#<'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-:0#;0$21##20!$21#,1$26'$26##??'&9$26#1##'&9$26#2##!$21#8,8#2"%pstring).
Definition ss0 : sym_state := SS 825964 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-136), ELit 8); ((EVar 50), (0), ELit 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), ELit 12)].
Definition F0L : list SR.region := [((EVar 2), (-136), 8); ((EVar 50), (0), 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), 12)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,5#<:024#<9:74#<9;64#<9=70#<:024#5=#<:024,20##<9;48+$2-:0$3$4$5$6$7$8+$2-:0$21#3#<99?<^#?#??????????????8$>$?$10$11$32$21$22+$21#8+&6$32#3#7???8000$32#7???8000+&6+$21#8#3#7???8000+&6$21#3#7???8000$1;$1<$1=$1>$1?,,26!$2-88,8$32!&6$32#3#7???800;,1^#?#??????????????3!&6$32#3#7???800:,1^#?#??????????????3!&6$32#3#7???8009,1^#?#??????????????3!&6$32#3#7???8008,1^#?#??????????????3!&6$32#3#7???8003,1^#?#??????????????1!&6$32#3#7???8002,1^#?#??????????????1!&6$32#3#7???8001,1^#?#??????????????1!&6$32#3#7???8000,1^#?#??????????????1!&6$32#3#7???8007,1^#?#??????????????8!&6$32#3#7???8006,1^#?#??????????????8!&6$32#3#7???8005,1^#?#??????????????8!&6$32#3#7???8004,1^#?#??????????????8!$32#10,8#<99?<!$32#8,8#1>:27!$32#,8#41;58:;3'$2#7???7?8010:0#800000000000&$2#20($2-88#8)+$2-:0##:0$32##80'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80)$21##20$32##80)&6$21#3#7???8000#4&6$32#3#7???8000#10($32##18(&6$32#3#7???8000#<'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-:0#;0$21##20!$21#,1$26'$26##??'&9$26#1##'&9$26#2##!$21#8,8#2,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 827428 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_39498a.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 825964 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_39498a.IT BndT_Na_000.SegItab_Na_39498a.IT_sound BF NX0 BR XSTEP F0 PSS plan 825964 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aagB2.

Module LibSegNa_abrB.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$:$27$37$38$39$=$>$?$10$11$24$26+&6$24#3#7???8000$27#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",13%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-60#60$24##8'$29#1000#7?????????>8&$29#8'$27#1#7???????????!$27#,1$25'$25##??)$2-60#60$27##1'$26#1#1???????"%pstring).
Definition ss0 : sym_state := SS 803024 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-81), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-81), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<40><+$2-60$3$4$5$6$7$:$27$29+$2-51$39$=$>$?$10$11$24$26+&6$24#3#7???8000$27#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,14!$2-51,1$25%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-60#60$24##8'$29#1000#7?????????>8&$29#8'$27#1#7???????????!$27#,1$25'$25##??)$2-60#60$27##1'$26#1#1???????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 803024 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 803024 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrB.

Module LibSegNa_abrE.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [803088].
Definition STOPS1 : list Z := [803088] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$:$27$37$38$39$=$>$?$10$11$24#1+&6$24#3#7???8000$27#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 1376256 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487264 140737488355328;
   KAlign (EVar 2) 16;
   KRange (EVar 39) 1 140737488355327].
Definition ss0 : sym_state := SS 803052 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<4110#<4110#5=#<4110,20#$1+$2-60$3$4$5$6$7$:+$27#1$37$38$39$=$>$?$10$11$24#+&6$24#3#7???8000+$27#1#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,6%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10'$27#1#7???????????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 803088 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 803052 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 803052 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrE.

Module LibSegNa_abrE16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1<%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#100#????)$2-60#60$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1'$<#^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 802528 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<426<+$2-60$3$4$5$6$7$:$;$29+$2-51#15?:78$=$>$?$10$11+$;#8$<$22+$:#8#7???8000+&6+$;#8#3#7???8000+&6+$:#8#3#7???8000$19$1:$1;$1<$1=$1>$1?,,27!$2-51,1#<8!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#100#????)$2-60#60$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1'$<#^#?#???????????????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 802528 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 802528 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrE16.

Module LibSegNa_abrE32.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1<%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#10000#1???????)$2-60#60$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1'$<#^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 802528 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<41=8+$2-60$3$4$5$6$7$:$;$29+$2-51#15?:78$=$>$?$10$11+$;#8$<$22+$:#8#7???8000+&6+$;#8#3#7???8000+&6+$:#8#3#7???8000$19$1:$1;$1<$1=$1>$1?,,27!$2-51,1#<9!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#10000#1???????)$2-60#60$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1'$<#^#?#???????????????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 802528 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 802528 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrE32.

Module LibSegNa_abrE8a.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1<%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22##)$2-60#60$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1'$<#^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 802528 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<421<+$2-60$3$4$5$6$7$:$;$29+$2-51#15?:78$=$>$?$10$11+$;#8$<#+$:#8#7???8000+&6+$;#8#3#7???8000+&6+$:#8#3#7???8000$19$1:$1;$1<$1=$1>$1?,,27!$2-51,1#<7!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22##)$2-60#60$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1'$<#^#?#???????????????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 802528 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 802528 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrE8a.

Module LibSegNa_abrE8b.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1<%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#3#3)$2-60#60$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1'$<#^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 802528 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<421<+$2-60$3$4$5$6$7$:$;$29+$2-51#15?:78$=$>$?$10$11+$;#8$<#3+$:#8#7???8000+&6+$;#8#3#7???8000+&6+$:#8#3#7???8000$19$1:$1;$1<$1=$1>$1?,,27!$2-51,1#<7!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#3#3)$2-60#60$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1'$<#^#?#???????????????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 802528 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 802528 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrE8b.

Module LibSegNa_abrE8c.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1<%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#5#7)$2-60#60$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1'$<#^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 802528 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<421<+$2-60$3$4$5$6$7$:$;$29+$2-51#15?:78$=$>$?$10$11+$;#8$<$22+$:#8#7???8000+&6+$;#8#3#7???8000+&6+$:#8#3#7???8000$19$1:$1;$1<$1=$1>$1?,,27!$2-51,1#<7!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#5#7)$2-60#60$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1'$<#^#?#???????????????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 802528 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 802528 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrE8c.

Module LibSegNa_abrE8d.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1<%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#9#?)$2-60#60$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1'$<#^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 802528 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<421<+$2-60$3$4$5$6$7$:$;$29+$2-51#15?:78$=$>$?$10$11+$;#8$<$22+$:#8#7???8000+&6+$;#8#3#7???8000+&6+$:#8#3#7???8000$19$1:$1;$1<$1=$1>$1?,,27!$2-51,1#<7!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#9#?)$2-60#60$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1'$<#^#?#???????????????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 802528 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 802528 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrE8d.

Module LibSegNa_abrE8e.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1<%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#11#??)$2-60#60$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1'$<#^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 802528 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<421<+$2-60$3$4$5$6$7$:$;$29+$2-51#15?:78$=$>$?$10$11+$;#8$<$22+$:#8#7???8000+&6+$;#8#3#7???8000+&6+$:#8#3#7???8000$19$1:$1;$1<$1=$1>$1?,,27!$2-51,1#<7!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#11#??)$2-60#60$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1'$<#^#?#???????????????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 802528 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 802528 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrE8e.

Module LibSegNa_abrE8n.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$23$2;$22$24#7???8000+&6$23#3#7???8000+&6$24#3#7???8000$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-60#60$24##8'$29#1000#7?????????>8&$29#8'$22##??"%pstring).
Definition ss0 : sym_state := SS 803356 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-81), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-81), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<4234+$2-60$3$4$5$6$7$:$;$29+$2-51$39$=$>$?$10$11$23$2;$22$24#7???8000+&6$23#3#7???8000+&6$24#3#7???8000$19$1:$1;$1<$1=$1>$1?,,10!$2-51,1$22%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-60#60$24##8'$29#1000#7?????????>8&$29#8'$22##??,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 803356 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 803356 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrE8n.

Module LibSegNa_abrE8t.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$23$2;$22$24#7???8000+&6$23#3#7???8000+&6$24#3#7???8000$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",10%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-60#60$24##8'$29#1000#7?????????>8&$29#8'$2;#^#?#???????????????'$22##??"%pstring).
Definition ss0 : sym_state := SS 803380 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-81), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-81), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<408<+$2-60$3$4$5$6$7$:$;$29+$2-51$39$=$>$?$10$11$23$2;$22$24#7???8000+&6$23#3#7???8000+&6$24#3#7???8000$19$1:$1;$1<$1=$1>$1?,,11!$2-51,1$2;%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-60#60$24##8'$29#1000#7?????????>8&$29#8'$2;#^#?#???????????????'$22##??,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 803380 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 803380 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrE8t.

End BndP_Na_000.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_003.
Module BndP_Na_001.
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
Ltac2 kr_t_BndP_Na_001 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f9163e2ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF12BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF15XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF13kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001?LibSegNa_abrF162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001?LibSegNa_abrF163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001?LibSegNa_abrF162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001?LibSegNa_abrF165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001?LibSegNa_abrF162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001?LibSegNa_abrF163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001?LibSegNa_abrF164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001?LibSegNa_abrF165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001?LibSegNa_abrF163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF42BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF43NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF42BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF45XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF42F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF43PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF44planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF45regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF43kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF82BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF83NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF82BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF85XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF82F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF83PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF84planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF85regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrF83kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrL02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrL03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrL02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrL05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrL02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrL03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrL04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrL05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrL03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrL12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrL13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrL12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrL15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrL12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrL13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrL14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrL15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrL13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001=LibSegNa_abrN2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001=LibSegNa_abrN3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001=LibSegNa_abrN2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001=LibSegNa_abrN5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001=LibSegNa_abrN2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001=LibSegNa_abrN3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001=LibSegNa_abrN4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001=LibSegNa_abrN5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001=LibSegNa_abrN3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001?LibSegNa_abrT162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001?LibSegNa_abrT163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001?LibSegNa_abrT162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001?LibSegNa_abrT165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001?LibSegNa_abrT162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001?LibSegNa_abrT163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001?LibSegNa_abrT164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001?LibSegNa_abrT165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001?LibSegNa_abrT163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT42BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT43NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT42BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT45XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT42F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT43PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT44planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT45regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT43kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT82BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT83NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT82BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT85XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT82F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT83PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT84planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT85regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001>LibSegNa_abrT83kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001?LibSegNa_abrU162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001?LibSegNa_abrU163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001?LibSegNa_abrU162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001?LibSegNa_abrU165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001?LibSegNa_abrU162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001?LibSegNa_abrU163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001?LibSegNa_abrU164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001?LibSegNa_abrU165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_001?LibSegNa_abrU163kn0".

Module LibSegNa_abrF1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1<%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#1#1)$2-60#60$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1'$<#^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 802528 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<4074+$2-60$3$4$5$6$7$:$;$29+$2-51#15?:78$=$>$?$10$11+$;#8$<+$:#8+&6+$:#8#3#7???8000#7???8000+&6+$;#8#3#7???8000$18$19$1:$1;$1<$1=$1>$1?,,27!$2-51,1#=4!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#1#1)$2-60#60$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1'$<#^#?#???????????????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 802528 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 802528 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrF1.

Module LibSegNa_abrF16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1<%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#10#10)$2-60#60$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1'$<#^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 802528 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<3?84+$2-60$3$4$5$6$7$:$;$29+$2-51#15?:78$=$>$?$10$11+$;#8$<+$:#8+&6+$:#8#3#7???8000#7???8000+&6+$;#8#3#7???8000$18$19$1:$1;$1<$1=$1>$1?,,27!$2-51,1#=8!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#10#10)$2-60#60$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1'$<#^#?#???????????????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 802528 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 802528 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrF16.

Module LibSegNa_abrF2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1<%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#2#2)$2-60#60$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1'$<#^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 802528 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<3?<<+$2-60$3$4$5$6$7$:$;$29+$2-51#15?:78$=$>$?$10$11+$;#8$<+$:#8+&6+$:#8#3#7???8000#7???8000+&6+$;#8#3#7???8000$18$19$1:$1;$1<$1=$1>$1?,,27!$2-51,1#=5!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#2#2)$2-60#60$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1'$<#^#?#???????????????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 802528 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 802528 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrF2.

Module LibSegNa_abrF4.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1<%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#4#4)$2-60#60$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1'$<#^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 802528 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<4004+$2-60$3$4$5$6$7$:$;$29+$2-51#15?:78$=$>$?$10$11+$;#8$<+$:#8+&6+$:#8#3#7???8000#7???8000+&6+$;#8#3#7???8000$18$19$1:$1;$1<$1=$1>$1?,,27!$2-51,1#=6!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#4#4)$2-60#60$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1'$<#^#?#???????????????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 802528 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 802528 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrF4.

Module LibSegNa_abrF8.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1<%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#8#8)$2-60#60$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1'$<#^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 802528 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<403<+$2-60$3$4$5$6$7$:$;$29+$2-51#15?:78$=$>$?$10$11+$;#8$<+$:#8+&6+$:#8#3#7???8000#7???8000+&6+$;#8#3#7???8000$18$19$1:$1;$1<$1=$1>$1?,,27!$2-51,1#=7!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#8#8)$2-60#60$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1'$<#^#?#???????????????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 802528 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 802528 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrF8.

Module LibSegNa_abrL0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [803088].
Definition STOPS1 : list Z := [803088] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$23$2;$14$15#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10'$;#1000#7??????????0'$23#1008#7??????????8!$;#,8$21!$23#,8$22'$21##800000000000'$22##)$2-60#60$;##10)$2-60#60$23##8)##7???7000#100000001000$;##10)##7???7000#100000001000$23##8#&6$;#3#7???8000#1#&6$23#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 802956 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<4110#<4110#5=#<4110,20#$1+$2-60$3$4$5$6$7$:$;#$38$39$=$>$?$10$11$23#$14$15#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?,,11%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10'$;#1000#7??????????0'$23#1008#7??????????8!$;#,8$21!$23#,8$22'$21##800000000000'$22##)$2-60#60$;##10)$2-60#60$23##8)##7???7000#100000001000$;##10)##7???7000#100000001000$23##8#&6$;#3#7???8000#1#&6$23#3#7???8000#1,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 803088 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 802956 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 802956 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrL0.

Module LibSegNa_abrL1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [803008].
Definition STOPS1 : list Z := [803008] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$23$2;$14$15#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10'$:#1000#7?????????<8'$;#1000#7??????????0'$23#1008#7??????????8!$;#,8$21!$23#,8$22'$21##800000000000'$22#1#1???????)$2-60#60$;##10)$2-60#60$23##8)##7???7000#100000001000$;##10)##7???7000#100000001000$23##8#&6$;#3#7???8000#1#&6$23#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 802956 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<40<0#<40<0#5=#<40<0,20#$1+$2-60$3$4$5$6$7$:$21#$38$39$=$>$?$10$11+$:#8$22+&6+$:#8#3#7???8000$21#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?,,12%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10'$:#1000#7?????????<8'$;#1000#7??????????0'$23#1008#7??????????8!$;#,8$21!$23#,8$22'$21##800000000000'$22#1#1???????)$2-60#60$;##10)$2-60#60$23##8)##7???7000#100000001000$;##10)##7???7000#100000001000$23##8#&6$;#3#7???8000#1#&6$23#3#7???8000#1,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 803008 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 802956 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 802956 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrL1.

Module LibSegNa_abrN.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [803008].
Definition STOPS1 : list Z := [803008] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$:$27$37$38$39$=$>$?$10$11$24$26+&6$24#3#7???8000$27#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 1376256 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487264 140737488355328;
   KAlign (EVar 2) 16;
   KRange (EVar 39) 1 140737488355327;
   KRange (EVar 38) 2 536870911].
Definition ss0 : sym_state := SS 803052 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<40<0#<40<0#5=#<40<0,20#$1+$2-60$3$4$5$6$7$:+$27#1$37$38$39$=$>$?$10$11$24+$26-1+&6$24#3#7???8000+$27#1#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,7%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10'$27#1#7???????????'$26#2#1???????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 803008 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 803052 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 803052 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrN.

Module LibSegNa_abrT1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$23$2;$24+&6$24#3#7???8000#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-60#60$24##8'$29#1000#7?????????>8&$29#8'$2;#^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 802932 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-81), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-81), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<408<+$2-60$3$4$5$6$7$:$;$29+$2-51$39$=$>$?$10$11$23$2;$24+&6$24#3#7???8000#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?,,10!$2-51,1$2;%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-60#60$24##8'$29#1000#7?????????>8&$29#8'$2;#^#?#???????????????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 802932 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 802932 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrT1.

Module LibSegNa_abrT16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$23$2;$24+&6$24#3#7???8000#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-60#60$24##8'$29#1000#7?????????>8&$29#8'$2;#^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 802692 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-81), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-81), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<408<+$2-60$3$4$5$6$7$:$;$29+$2-51$39$=$>$?$10$11$23$2;$24+&6$24#3#7???8000#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?,,10!$2-51,1$2;%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-60#60$24##8'$29#1000#7?????????>8&$29#8'$2;#^#?#???????????????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 802692 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 802692 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrT16.

Module LibSegNa_abrT2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$23$2;$24+&6$24#3#7???8000#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-60#60$24##8'$29#1000#7?????????>8&$29#8'$2;#^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 802764 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-81), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-81), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<408<+$2-60$3$4$5$6$7$:$;$29+$2-51$39$=$>$?$10$11$23$2;$24+&6$24#3#7???8000#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?,,10!$2-51,1$2;%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-60#60$24##8'$29#1000#7?????????>8&$29#8'$2;#^#?#???????????????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 802764 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 802764 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrT2.

Module LibSegNa_abrT4.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$23$2;$24+&6$24#3#7???8000#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-60#60$24##8'$29#1000#7?????????>8&$29#8'$2;#^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 802820 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-81), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-81), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<408<+$2-60$3$4$5$6$7$:$;$29+$2-51$39$=$>$?$10$11$23$2;$24+&6$24#3#7???8000#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?,,10!$2-51,1$2;%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-60#60$24##8'$29#1000#7?????????>8&$29#8'$2;#^#?#???????????????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 802820 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 802820 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrT4.

Module LibSegNa_abrT8.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$23$2;$24+&6$24#3#7???8000#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-60#60$24##8'$29#1000#7?????????>8&$29#8'$2;#^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 802876 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-81), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-81), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<408<+$2-60$3$4$5$6$7$:$;$29+$2-51$39$=$>$?$10$11$23$2;$24+&6$24#3#7???8000#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?,,10!$2-51,1$2;%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-60#60$24##8'$29#1000#7?????????>8&$29#8'$2;#^#?#???????????????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 802876 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 802876 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrT8.

Module LibSegNa_abrU16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$23$2;$22$24#7???8000+&6$23#3#7???8000+&6$24#3#7???8000$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",10%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-60#60$24##8'$29#1000#7?????????>8&$29#8'$2;#^#?#???????????????'$22#^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 803448 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-81), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-81), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<408<+$2-60$3$4$5$6$7$:$;$29+$2-51$39$=$>$?$10$11$23$2;$22$24#7???8000+&6$23#3#7???8000+&6$24#3#7???8000$19$1:$1;$1<$1=$1>$1?,,11!$2-51,1$2;%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-60#60$24##8'$29#1000#7?????????>8&$29#8'$2;#^#?#???????????????'$22#^#?#???????????????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 803448 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 803448 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrU16.

End BndP_Na_001.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_003 BndT_Na_000.
Module BndP_Na_002.
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
Ltac2 kr_t_BndP_Na_002 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f9163e2ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrU322BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrU323NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrU322BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrU325XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrU322F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrU323PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrU324planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrU325regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrU323kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abrV02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abrV03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abrV02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abrV05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abrV02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abrV03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abrV04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abrV05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abrV03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abrV12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abrV13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abrV12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abrV15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abrV12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abrV13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abrV14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abrV15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abrV13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrV1w2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrV1w3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrV1w2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrV1w5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrV1w2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrV1w3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrV1w4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrV1w5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrV1w3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrW162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrW163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrW162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrW165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrW162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrW163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrW164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrW165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrW163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrW322BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrW323NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrW322BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrW325XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrW322F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrW323PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrW324planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrW325regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abrW323kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_000ASegItab_Na_38148c2ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abtA162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abtA163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abtA162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abtA165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abtA162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abtA163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abtA164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abtA165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abtA163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abtA322BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abtA323NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abtA322BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abtA325XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abtA322F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abtA323PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abtA324planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abtA325regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abtA323kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abtA82BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abtA83NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abtA82BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abtA85XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abtA82F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abtA83PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abtA84planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abtA85regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abtA83kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002=LibSegNa_abtB2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002=LibSegNa_abtB3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002=LibSegNa_abtB2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002=LibSegNa_abtB5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002=LibSegNa_abtB2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002=LibSegNa_abtB3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002=LibSegNa_abtB4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002=LibSegNa_abtB5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002=LibSegNa_abtB3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abtB82BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abtB83NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abtB82BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abtB85XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abtB82F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abtB83PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abtB84planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abtB85regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abtB83kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002=LibSegNa_abtE2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002=LibSegNa_abtE3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002=LibSegNa_abtE2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002=LibSegNa_abtE5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002=LibSegNa_abtE2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002=LibSegNa_abtE3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002=LibSegNa_abtE4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002=LibSegNa_abtE5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002=LibSegNa_abtE3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abtJ322BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abtJ323NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abtJ322BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abtJ325XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abtJ322F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abtJ323PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abtJ324planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abtJ325regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002?LibSegNa_abtJ323kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abtJ82BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abtJ83NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abtJ82BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abtJ85XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abtJ82F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abtJ83PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abtJ84planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abtJ85regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_002>LibSegNa_abtJ83kn0".

Module LibSegNa_abrU32.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$23$2;$22$24#7???8000+&6$23#3#7???8000+&6$24#3#7???8000$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",10%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-60#60$24##8'$29#1000#7?????????>8&$29#8'$2;#^#?#???????????????'$22#^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 803300 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-81), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-81), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<408<+$2-60$3$4$5$6$7$:$;$29+$2-51$39$=$>$?$10$11$23$2;$22$24#7???8000+&6$23#3#7???8000+&6$24#3#7???8000$19$1:$1;$1<$1=$1>$1?,,11!$2-51,1$2;%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-60#60$24##8'$29#1000#7?????????>8&$29#8'$2;#^#?#???????????????'$22#^#?#???????????????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 803300 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 803300 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrU32.

Module LibSegNa_abrV0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [803220].
Definition STOPS1 : list Z := [803220] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$:$9$37$38$39$=$>$?$10$11$12$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1?%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8!$:#18,8$26!$:#20,8$26'$26##800000000000!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31!$2-38,8$32!$2-40,8$33!$2-48,8$34!$2-50,8$35"%pstring).
Definition ss0 : sym_state := SS 803088 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<4194#<4194#5=#<4194,20#$2<$2$3$4$5$6$7$2=$2>#1$26$39$=$>$?$10$11$2?$30$31$32$33$34$35$19$1:$1;$1<$1=$1>$1?,,1?%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8!$:#18,8$26!$:#20,8$26'$26##800000000000!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31!$2-38,8$32!$2-40,8$33!$2-48,8$34!$2-50,8$35,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 803220 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 803088 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 803088 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrV0.

Module LibSegNa_abrV1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [803220].
Definition STOPS1 : list Z := [803220] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$:$9$37$38$39$=$>$?$10$11$12$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",29%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$27#8'+$27@-1$26#18#186:0($27-18#18)##7???7000#100000001000+$27-18##18#&6+$27-8#3#7???8000#1)$27-18#18$2-60#60)$27-18#18$:##38!$27-8,8$2:'$2:#^#?#??????????????>!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31!$2-38,8$32!$2-40,8$33!$2-48,8$34!$2-50,8$35"%pstring).
Definition ss0 : sym_state := SS 803088 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 39), (-8), ELit 8)].
Definition F0L : list SR.region := [((EVar 39), (-8), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<4194#<4194#5=#<4194,20#$2<$2$3$4$5$6$7$2=$2>#1+$2:#1$39$=$>$?$10$11$2?$30$31$32$33$34$35$19$1:$1;$1<$1=$1>$1?,,26!$27-8,8+$2:#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$27#8'+$27@-1$26#18#186:0($27-18#18)##7???7000#100000001000+$27-18##18#&6+$27-8#3#7???8000#1)$27-18#18$2-60#60)$27-18#18$:##38'$2:#^#?#??????????????>!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31!$2-38,8$32!$2-40,8$33!$2-48,8$34!$2-50,8$35,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 803220 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 803088 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 803088 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrV1.

Module LibSegNa_abrV1w.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [803220].
Definition STOPS1 : list Z := [803220] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$:$9$37$38$39$=$>$?$10$11$12$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",28%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$27#8'+$27@-1$26#18#186:0($27-18#18)##7???7000#100000001000+$27-18##18#&6+$27-8#3#7???8000#1)$27-18#18$2-60#60)$27-18#18$:##38!$27-8,8^#?#???????????????!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31!$2-38,8$32!$2-40,8$33!$2-48,8$34!$2-50,8$35"%pstring).
Definition ss0 : sym_state := SS 803088 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 39), (-8), ELit 8)].
Definition F0L : list SR.region := [((EVar 39), (-8), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<4194#<4194#5=#<4194,20#$2<$2$3$4$5$6$7$2=$2>#1#$39$=$>$?$10$11$2?$30$31$32$33$34$35$19$1:$1;$1<$1=$1>$1?,,25!$27-8,8#'$2#7???7?801060#800000000000&$2#10($2-60#60'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-60#60$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$27#8'+$27@-1$26#18#186:0($27-18#18)##7???7000#100000001000+$27-18##18#&6+$27-8#3#7???8000#1)$27-18#18$2-60#60)$27-18#18$:##38!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31!$2-38,8$32!$2-40,8$33!$2-48,8$34!$2-50,8$35,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 803220 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 803088 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 803088 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrV1w.

Module LibSegNa_abrW16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [811736].
Definition STOPS1 : list Z := [811736] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$23$2;$22$24#7???8000+&6$23#3#7???8000+&6$24#3#7???8000$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 1376256 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487264 140737488355328;
   KAlign (EVar 2) 16;
   KRange (EVar 34) 0 18446744073709551615].
Definition ss0 : sym_state := SS 803436 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<62=8#<62=8#5=#<62=8,20##<4278+$2-60$3$4$5$6$7$:$;$22$24$39$=$>$?$10$11$23$2;$22$24#7???8000+&6$23#3#7???8000+&6$24#3#7???8000$19$1:$1;$1<$1=$1>$1?,,6%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10'$22#^#?#???????????????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 811736 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 803436 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 803436 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrW16.

Module LibSegNa_abrW32.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f9163e.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f9163e.IT.
Definition ENDS : list Z := [811884].
Definition STOPS1 : list Z := [811884] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$23$2;$22$24#7???8000+&6$23#3#7???8000+&6$24#3#7???8000$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 1376256 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487264 140737488355328;
   KAlign (EVar 2) 16;
   KRange (EVar 34) 0 18446744073709551615].
Definition ss0 : sym_state := SS 803288 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<636<#<636<#5=#<636<,20##<41>4+$2-60$3$4$5$6$7$:$;%0$22#$24$39$=$>$?$10$11$23$2;$22$24#7???8000+&6$23#3#7???8000+&6$24#3#7???8000$19$1:$1;$1<$1=$1>$1?,,6%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#10'$22#^#?#???????????????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 811884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f9163e.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 803288 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f9163e.IT BndT_Na_003.SegItab_Na_f9163e.IT_sound BF NX0 BR XSTEP F0 PSS plan 803288 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abrW32.

Module LibSegNa_abtA16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_38148c.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_38148c.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1;%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-50#50$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#100#????)$2-50#50$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 801916 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<3=84+$2-50$3$4$5$6$7$:+$:#8$29+$2-4;#15?:78$=$>$?$10$11$;+$;#8$22#7???8000+&6+$;#8#3#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,25!$2-4;,1#<5!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-50#50$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#100#????)$2-50#50$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_38148c.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 801916 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_38148c.IT BndT_Na_000.SegItab_Na_38148c.IT_sound BF NX0 BR XSTEP F0 PSS plan 801916 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abtA16.

Module LibSegNa_abtA32.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_38148c.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_38148c.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1;%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-50#50$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#10000#1???????)$2-50#50$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 801916 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<3=10+$2-50$3$4$5$6$7$:+$:#8$29+$2-4:#15?:78$=$>$?$10$11$;+$;#8$22#7???8000+&6+$;#8#3#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,25!$2-4:,1#<6!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-50#50$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#10000#1???????)$2-50#50$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_38148c.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 801916 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_38148c.IT BndT_Na_000.SegItab_Na_38148c.IT_sound BF NX0 BR XSTEP F0 PSS plan 801916 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abtA32.

Module LibSegNa_abtA8.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_38148c.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_38148c.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1;%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-50#50$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22##??)$2-50#50$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 801916 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<3=44+$2-50$3$4$5$6$7$:+$:#8$29+$2-4=#15?:78$=$>$?$10$11$;+$;#8$22#7???8000+&6+$;#8#3#7???8000+&6+$:#8#3#7???8000$18$19$1:$1;$1<$1=$1>$1?,,25!$2-4=,1#<4!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801050#800000000000&$2#10($2-50#50'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-50#50$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22##??)$2-50#50$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_38148c.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 801916 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_38148c.IT BndT_Na_000.SegItab_Na_38148c.IT_sound BF NX0 BR XSTEP F0 PSS plan 801916 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abtA8.

Module LibSegNa_abtB.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_38148c.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_38148c.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$:$24$37$38$39$=$>$?$10$11$27$26+&6$24#3#7???8000#7???8000$27$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",13%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801050#800000000000&$2#10($2-50#50'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-50#50$24##8'$29#1000#7?????????>8&$29#8'$27#1#7???????????!$27#,1$25'$25##??)$2-50#50$27##1'$26#1#1???????"%pstring).
Definition ss0 : sym_state := SS 802256 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-73), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-73), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<3=><+$2-50$3$4$5$6$7$:$24$29+$2-49$39$=$>$?$10$11$27$26+&6$24#3#7???8000#7???8000$27$17$18$19$1:$1;$1<$1=$1>$1?,,14!$2-49,1$25%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801050#800000000000&$2#10($2-50#50'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-50#50$24##8'$29#1000#7?????????>8&$29#8'$27#1#7???????????!$27#,1$25'$25##??)$2-50#50$27##1'$26#1#1???????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_38148c.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 802256 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_38148c.IT BndT_Na_000.SegItab_Na_38148c.IT_sound BF NX0 BR XSTEP F0 PSS plan 802256 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abtB.

Module LibSegNa_abtB8.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_38148c.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_38148c.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$:$24$37$38$39$=$>$?$10$11$;$23$22#7???8000+&6$23#3#7???8000+&6$24#3#7???8000$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801050#800000000000&$2#10($2-50#50'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-50#50$24##8'$29#1000#7?????????>8&$29#8'$22##??"%pstring).
Definition ss0 : sym_state := SS 802116 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-76), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-76), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<3=5<+$2-50$3$4$5$6$7$:$24$29+$2-4<$39$=$>$?$10$11$;$23$22#7???8000+&6$23#3#7???8000+&6$24#3#7???8000$18$19$1:$1;$1<$1=$1>$1?,,10!$2-4<,1$22%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801050#800000000000&$2#10($2-50#50'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-50#50$24##8'$29#1000#7?????????>8&$29#8'$22##??,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 813596 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_38148c.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 802116 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_38148c.IT BndT_Na_000.SegItab_Na_38148c.IT_sound BF NX0 BR XSTEP F0 PSS plan 802116 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abtB8.

Module LibSegNa_abtE.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_38148c.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_38148c.IT.
Definition ENDS : list Z := [802320].
Definition STOPS1 : list Z := [802320] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$:$24$37$38$39$=$>$?$10$11$27#1+&6$24#3#7???8000#7???8000$27$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 1376256 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487248 140737488355328;
   KAlign (EVar 2) 16;
   KRange (EVar 39) 1 140737488355327].
Definition ss0 : sym_state := SS 802284 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<3>10#<3>10#5=#<3>10,20#$1+$2-50$3$4$5$6$7$:$24$37$38$39$=$>$?$10$11+$27#1#+&6$24#3#7???8000#7???8000+$27#1$17$18$19$1:$1;$1<$1=$1>$1?,,6%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801050#800000000000&$2#10'$27#1#7???????????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 802320 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_38148c.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 802284 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_38148c.IT BndT_Na_000.SegItab_Na_38148c.IT_sound BF NX0 BR XSTEP F0 PSS plan 802284 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abtE.

Module LibSegNa_abtJ32.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_38148c.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_38148c.IT.
Definition ENDS : list Z := [802192].
Definition STOPS1 : list Z := [802192] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$:$24$37$38$39$=$>$?$10$11$;$23$22#7???8000+&6$23#3#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 1376256 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487248 140737488355328;
   KAlign (EVar 2) 16].
Definition ss0 : sym_state := SS 802076 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<3=90#<3=90#5=#<3=90,20#$1+$2-50$3$4$5$6$7$:$24$37$38$39$=$>$?$10$11$;$23$22#7???8000+&6$23#3#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,5%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801050#800000000000&$2#10,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 802192 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_38148c.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 802076 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_38148c.IT BndT_Na_000.SegItab_Na_38148c.IT_sound BF NX0 BR XSTEP F0 PSS plan 802076 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abtJ32.

Module LibSegNa_abtJ8.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_38148c.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_38148c.IT.
Definition ENDS : list Z := [802192].
Definition STOPS1 : list Z := [802192] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$:$24$37$38$39$=$>$?$10$11$;$23$22#7???8000+&6$23#3#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 1376256 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487248 140737488355328;
   KAlign (EVar 2) 16].
Definition ss0 : sym_state := SS 802140 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<3=90#<3=90#5=#<3=90,20#$1+$2-50$3$4$5$6$7$:$24$37$38$39$=$>$?$10$11$;$23$22#7???8000+&6$23#3#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,5%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801050#800000000000&$2#10,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 802192 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_38148c.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 802140 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_38148c.IT BndT_Na_000.SegItab_Na_38148c.IT_sound BF NX0 BR XSTEP F0 PSS plan 802140 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_abtJ8.

End BndP_Na_002.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_002 BndT_Na_003.
Module BndP_Na_006.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_002 BndT_Na_003.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Na_006 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_002ASegItab_Na_93dff52ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_amgA2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_amgA3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_amgA2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_amgA5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_amgA2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_amgA3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_amgA4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_amgA5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_amgA3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_amxA2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_amxA3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_amxA2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_amxA5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_amxA2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_amxA3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_amxA4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_amxA5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_amxA3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxAd2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxAd3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxAd2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxAd5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxAd2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxAd3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxAd4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxAd5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxAd3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxB02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxB03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxB02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxB05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxB02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxB03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxB04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxB05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxB03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxB12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxB13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxB12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxB15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxB12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxB13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxB14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxB15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxB13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxBd2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxBd3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxBd2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxBd5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxBd2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxBd3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxBd4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxBd5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_amxBd3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_amxC2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_amxC3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_amxC2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_amxC5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_amxC2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_amxC3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_amxC4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_amxC5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_amxC3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f955732ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbD2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbD3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbD2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbD5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbD2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbD3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbD4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbD5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbD3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_apbGS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_apbGS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_apbGS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_apbGS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_apbGS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_apbGS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_apbGS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_apbGS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_apbGS3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_apbLG2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_apbLG3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_apbLG2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_apbLG5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_apbLG2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_apbLG3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_apbLG4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_apbLG5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_apbLG3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_apbLI2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_apbLI3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_apbLI2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_apbLI5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_apbLI2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_apbLI3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_apbLI4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_apbLI5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006>LibSegNa_apbLI3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbN2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbN3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbN2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbN5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbN2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbN3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbN4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbN5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbN3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbS3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbT2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbT3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbT2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbT5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbT2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbT3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbT4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbT5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0166;BndP_Na_006=LibSegNa_apbT3kn0".

Module LibSegNa_amgA.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_93dff5.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_93dff5.IT.
Definition ENDS : list Z := [827428].
Definition STOPS1 : list Z := [827428] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); ELit 10; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-40#40$21##20!$21#,1$26'$26##??'&9$26#1##!$21#10,8$24!$21#8,8#2"%pstring).
Definition ss0 : sym_state := SS 825344 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<:024#<:024#5=#<:024,20##<98:8+$2-40$3$4$5$6$7$21#:$21#3#$=$>$?$10$11#7???8000#2$24+&6$21#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?,,18!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-40#40$21##20!$21#,1$26'$26##??'&9$26#1##!$21#10,8$24!$21#8,8#2,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 827428 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_93dff5.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 825344 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_93dff5.IT BndT_Na_002.SegItab_Na_93dff5.IT_sound BF NX0 BR XSTEP F0 PSS plan 825344 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_amgA.

Module LibSegNa_amxA.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_93dff5.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_93dff5.IT.
Definition ENDS : list Z := [827428].
Definition STOPS1 : list Z := [827428] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); ELit 10; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-40#40$21##20!$21#,1$26'$26##??'&9$26#1##!$21#8,8$23!$21#10,8$24'$23##1"%pstring).
Definition ss0 : sym_state := SS 825344 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<:024#<:024#5=#<:024,20##<98:8+$2-40$3$4$5$6$7$21#:$21+$23#1#$=$>$?$10$11#7???8000$23$24+&6$21#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?,,19!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-40#40$21##20!$21#,1$26'$26##??'&9$26#1##!$21#8,8$23!$21#10,8$24'$23##1,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 827428 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_93dff5.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 825344 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_93dff5.IT BndT_Na_002.SegItab_Na_93dff5.IT_sound BF NX0 BR XSTEP F0 PSS plan 825344 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_amxA.

Module LibSegNa_amxAd.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_93dff5.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_93dff5.IT.
Definition ENDS : list Z := [827428].
Definition STOPS1 : list Z := [827428] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); ELit 10; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1:%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-40#40$21##20!$21#,1$26'$26##??'&9$26#1#1#1!$21#8,8#2!$21#18,8$25'$25#1000#7?????????<0&$25#10)##7???7000#100000001000$25##40#&6$25#3#7???8000#8($25##40)$25##40$21##20!$25#,8$24!$25#8,8$27)$2-40#40$25##40"%pstring).
Definition ss0 : sym_state := SS 825344 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<:024#<:024#5=#<:024,20##<98:8+$2-40$3$4$5$6$7$21#:$21#3#$=$>$?$10$11#7???8000#2$24+&6$21#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?,,21!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-40#40$21##20!$21#,1$26'$26##??'&9$26#1#1#1!$21#8,8#2!$21#18,8$25'$25#1000#7?????????<0&$25#10)##7???7000#100000001000$25##40#&6$25#3#7???8000#8($25##40)$25##40$21##20!$25#,8$24!$25#8,8$27)$2-40#40$25##40,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 827428 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_93dff5.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 825344 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_93dff5.IT BndT_Na_002.SegItab_Na_93dff5.IT_sound BF NX0 BR XSTEP F0 PSS plan 825344 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_amxAd.

Module LibSegNa_amxB0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_93dff5.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_93dff5.IT.
Definition ENDS : list Z := [830872].
Definition STOPS1 : list Z := [830872] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$21#:$:$;$<$=$>$?$10$11#7???8000#$24+&6$21#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",8'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$26'$26##??'&9$26#1##"%pstring).
Definition ss0 : sym_state := SS 825512 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 33), (16), ELit 8)].
Definition F0L : list SR.region := [((EVar 33), (16), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<:=98#<:=98#5=#<:=98,20##<9990$2$3$4$5$6$7$21#:$21#$<#$>$?$10$11#7???8000#$24+&6$21#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?,,9!$21#10,8#'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$26'$26##??'&9$26#1##,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 830872 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_93dff5.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 825512 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_93dff5.IT BndT_Na_002.SegItab_Na_93dff5.IT_sound BF NX0 BR XSTEP F0 PSS plan 825512 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_amxB0.

Module LibSegNa_amxB1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_93dff5.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_93dff5.IT.
Definition ENDS : list Z := [830872].
Definition STOPS1 : list Z := [830872] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$21#:$:$;$<$=$>$?$10$11#7???8000#1$24+&6$21#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$26'$26##??'&9$26#1##!$21#10,8$24!$21#18,8#"%pstring).
Definition ss0 : sym_state := SS 825512 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 33), (16), ELit 16)].
Definition F0L : list SR.region := [((EVar 33), (16), 16)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<:=98#<:=98#5=#<:=98,20##<9990$2$3$4&6@#:&6$24#20#20+@#:00000000&6$24#20@#:&6@#100000000$24#20@#:00000000&6$24#20$21#:$21#+$21#20+&4+@#:00000000&6$24#20@#:&6@#100000000$24#20@#:00000000&6$24#20&6@#:&6$24#20#20#:+&6+$21#10#3#7???8001#+$21#18#7???8000#1#+&6$21#3#7???8000$16$17$18$19$1:$1;#$1=$1>$1?,,:!$21#18,8+&4+@#:00000000&6$24#20@#:&6@#100000000$24#20@#:00000000&6$24#20&6@#:&6$24#20#20!$21#10,8+@#:00000000&6$24#20@#:&6@#100000000$24#20'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$26'$26##??'&9$26#1##,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 830872 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_93dff5.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 825512 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_93dff5.IT BndT_Na_002.SegItab_Na_93dff5.IT_sound BF NX0 BR XSTEP F0 PSS plan 825512 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_amxB1.

Module LibSegNa_amxBd.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_93dff5.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_93dff5.IT.
Definition ENDS : list Z := [830872].
Definition STOPS1 : list Z := [830872] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$21#:$:$;$<$=$>$?$10$11#7???8000#2$24+&6$21#3#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",13'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$26'$26##??'&9$26#1#1#1!$21#8,8#3!$21#18,8$25'$25#1000#7?????????<0&$25#10)##7???7000#100000001000$25##40#&6$25#3#7???8000#8($25##40)$25##40$21##20!$25#,8$24!$25#8,8$27!$25#10,8#"%pstring).
Definition ss0 : sym_state := SS 825512 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 37), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 37), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<:=98#<:=98#5=#<:=98,20##<9990$2$3$4&6@#:&6$27#20#20+@#:00000000&6$27#20@#:&6@#100000000$27#20@#:00000000&6$27#20$21#:$21#+$25#18+&4+&4+@#:00000000&6$24#20@#:&6@#100000000$24#20@#:00000000&6$24#20+@#:00000000&6$27#20+&6@#:&6$24#20#20@#:&6@#100000000$27#20+@#:00000000&6$27#20@#:&6@#100000000$27#20+&4+@#:00000000&6$27#20@#:&6@#100000000$27#20@#:00000000&6$27#20&6@#:&6$27#20#20#:+&6$25#3#7???8002#+$25#10#7???8000#2#+&6$21#3#7???8000$16$17$18$19$1:$1;#$1=$1>$1?,,13!$25#10,8+&4+&4+@#:00000000&6$24#20@#:&6@#100000000$24#20@#:00000000&6$24#20+@#:00000000&6$27#20+&6@#:&6$24#20#20@#:&6@#100000000$27#20+@#:00000000&6$27#20@#:&6@#100000000$27#20+&4+@#:00000000&6$27#20@#:&6@#100000000$27#20@#:00000000&6$27#20&6@#:&6$27#20#20!$25#8,8+&4+@#:00000000&6$24#20@#:&6@#100000000$24#20@#:00000000&6$24#20+@#:00000000&6$27#20+&6@#:&6$24#20#20@#:&6@#100000000$27#20!$25#,8+@#:00000000&6$24#20@#:&6@#100000000$24#20'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$26'$26##??'&9$26#1#1#1!$21#8,8#3!$21#18,8$25'$25#1000#7?????????<0&$25#10)##7???7000#100000001000$25##40#&6$25#3#7???8000#8($25##40)$25##40$21##20,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 830872 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_93dff5.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 825512 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_93dff5.IT BndT_Na_002.SegItab_Na_93dff5.IT_sound BF NX0 BR XSTEP F0 PSS plan 825512 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_amxBd.

Module LibSegNa_amxC.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_93dff5.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_93dff5.IT.
Definition ENDS : list Z := [825780].
Definition STOPS1 : list Z := [825780] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$21$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$2#7???7?801040#800000000000&$2#10!$2-8,8$35!$2-10,8$36!$2-18,8$37!$2-20,8$38!$2-28,8$39!$2-30,8$3:!$2-38,8$3;"%pstring).
Definition ss0 : sym_state := SS 825744 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<99;4#<99;4#5=#<99;4,20#$35$2$3$4$5$6$7$36$37$21$;$<$=$>$?$10$11$38$39$3:$3;$16$17$18$19$1:$1;$1<$1=$1>$1?,,9'$2#7???7?801040#800000000000&$2#10!$2-8,8$35!$2-10,8$36!$2-18,8$37!$2-20,8$38!$2-28,8$39!$2-30,8$3:!$2-38,8$3;,50!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 825780 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_93dff5.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 825744 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_93dff5.IT BndT_Na_002.SegItab_Na_93dff5.IT_sound BF NX0 BR XSTEP F0 PSS plan 825744 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_amxC.

Module LibSegNa_apbD.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f95573.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f95573.IT.
Definition ENDS : list Z := [991168].
Definition STOPS1 : list Z := [991168] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$38$:$36$;$<$=$>$?$10$11$29$26$27$28$25$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",10'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#6;6000#7?????????>8&$:#8($:##18)$2-40#40$:##18!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31!$2-38,8$32!$2-40,8$33'$28#1:#8000001"%pstring).
Definition ss0 : sym_state := SS 1001236 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#?1?<0#?1?<0#5=#?1?<0,20##?4728+$2-40$3$4$5$6$7$38$:$29$28$<$=$>$?$10$11$29$26$27$28$25$17$18$19$1:$1;$1<$1=$1>$1?,,10'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#6;6000#7?????????>8&$:#8($:##18)$2-40#40$:##18!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31!$2-38,8$32!$2-40,8$33'$28#1:#8000001,3<!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f95573.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 1001236 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f95573.IT BndT_Na_003.SegItab_Na_f95573.IT_sound BF NX0 BR XSTEP F0 PSS plan 1001236 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_apbD.

Module LibSegNa_apbGS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f95573.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f95573.IT.
Definition ENDS : list Z := [1374112].
Definition STOPS1 : list Z := [1374112] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#6;6000#7?????????>8&$:#8($:##18)$2-40#40$:##18!$:#,1#2<'$;##??"%pstring).
Definition ss0 : sym_state := SS 1001024 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#14?7:0#14?7:0#5=#14?7:0,20##?4704+$2-40$3$4$5$6$7$;$:#30$;#2<$=$>$?$10$11+$:#1#30#16#17$16$17$18$19$1:$1;$1<$1=$1>$1?,,11!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#6;6000#7?????????>8&$:#8($:##18)$2-40#40$:##18!$:#,1#2<'$;##??,3<!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f95573.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 1001024 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f95573.IT BndT_Na_003.SegItab_Na_f95573.IT_sound BF NX0 BR XSTEP F0 PSS plan 1001024 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_apbGS.

Module LibSegNa_apbLG.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f95573.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f95573.IT.
Definition ENDS : list Z := [1001328; 1374112].
Definition STOPS1 : list Z := [1001328; 1374112] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",13'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#6;6000#7?????????>8&$:#8($:##18)$2-40#40$:##18!$:#,1$21'$21##??'&9$21#1#1#1!$:#,8$24'&9$24#1#1#1'$24#1;#8000001!$:#8,8$22'$22##4000000!$:#10,8$23'$23#1000#800000000000'$;##??'&4&1$22+@#2&6$24#1-1#1#1#1"%pstring).
Definition ss0 : sym_state := SS 1001024 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4770#14?7:0#?4770#14?7:0#5=#14?7:0,20##?4704+$2-40$3$4$5$6$7$;$:+@#8&6+@#4&6$24#1-2#3#8#<$21$=$>$?$10$11$23+@#8&6+@#4&6$24#1-2#3#8+@#2&6$24#1-1@#2&6$24#1$16$17$18$19$1:$1;$1<$1=$1>$1?,,1;!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#6;6000#7?????????>8&$:#8($:##18)$2-40#40$:##18!$:#,1$21'$21##??'&9$21#1#1#1!$:#,8$24'&9$24#1#1#1'$24#1;#8000001!$:#8,8$22'$22##4000000!$:#10,8$23'$23#1000#800000000000'$;##??'&4&1$22+@#2&6$24#1-1#1#1#1,3<!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f95573.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 1001024 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f95573.IT BndT_Na_003.SegItab_Na_f95573.IT_sound BF NX0 BR XSTEP F0 PSS plan 1001024 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_apbLG.

Module LibSegNa_apbLI.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f95573.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f95573.IT.
Definition ENDS : list Z := [1001328; 1374112].
Definition STOPS1 : list Z := [1001328; 1374112] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",16'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#6;6000#7?????????>8&$:#8($:##18)$2-40#40$:##18!$:#,1$21'$21##??'&9$21#1#1#1!$:#,8$24'&9$24#1#1#1'$24#1;#8000001!$:#8,8$22'$22##4000000!$:#10,8$23'$23#1000#800000000000'$;##??'&4&1$22+@#2&6$24#1-1#1##(+$23$22##2)+$23$22##2$:##18)+$23$22##2$2-40#40"%pstring).
Definition ss0 : sym_state := SS 1001024 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-64), ELit 64); ((EVar 10), (0), ELit 24); ((EAlu Instr.ALU_ADD (EVar 35) (EVar 34)), (0), ELit 2)].
Definition F0L : list SR.region := [((EVar 2), (-64), 64); ((EVar 10), (0), 24); ((EAlu Instr.ALU_ADD (EVar 35) (EVar 34)), (0), 2)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#?4770#14?7:0#?4770#14?7:0#5=#?4770,20#$1$2$3$4$5$6$7$8$9+$22$23+$22#1$21$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,20!+$22$23#1,1#!+$22$23#,1$;!$:#8,8+$22#1!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#6;6000#7?????????>8&$:#8($:##18)$2-40#40$:##18!$:#,1$21'$21##??'&9$21#1#1#1!$:#,8$24'&9$24#1#1#1'$24#1;#8000001'$22##4000000!$:#10,8$23'$23#1000#800000000000'$;##??'&4&1$22+@#2&6$24#1-1#1##(+$23$22##2)+$23$22##2$:##18)+$23$22##2$2-40#40,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 1001328 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f95573.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 1001024 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f95573.IT BndT_Na_003.SegItab_Na_f95573.IT_sound BF NX0 BR XSTEP F0 PSS plan 1001024 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_apbLI.

Module LibSegNa_apbN.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f95573.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f95573.IT.
Definition ENDS : list Z := [519092].
Definition STOPS1 : list Z := [519092] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$38$:$25$;$<$=$>$?$10$11$29$26$27$28$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#6;6000#7?????????>8&$:#8($:##18)$2-40#40$:##18!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31!$2-38,8$32!$2-40,8$33"%pstring).
Definition ss0 : sym_state := SS 1001220 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#7>;;4#7>;;4#5=#7>;;4,20##?4714+$2-40$3$4$5$6$7$38$:$25$29$27$=$>$?$10$11$29$26$27$28$25$17$18$19$1:$1;$1<$1=$1>$1?,,?'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#6;6000#7?????????>8&$:#8($:##18)$2-40#40$:##18!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31!$2-38,8$32!$2-40,8$33,3<!"%pstring).
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f95573.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 1001220 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f95573.IT BndT_Na_003.SegItab_Na_f95573.IT_sound BF NX0 BR XSTEP F0 PSS plan 1001220 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_apbN.

Module LibSegNa_apbS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f95573.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f95573.IT.
Definition ENDS : list Z := [1001328].
Definition STOPS1 : list Z := [1001328] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#6;6000#7?????????>8&$:#8($:##18)$2-40#40$:##18!$:#,1$21'$21##2;'&9$21#1##'$;##??"%pstring).
Definition ss0 : sym_state := SS 1001024 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-64), ELit 64); ((EVar 10), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-64), 64); ((EVar 10), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#?4770#?4770#5=#?4770,20#$1$2$3$4$5$6$7$8$9++$:&6$21#1#1$;+$21#2$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,15!+$:&6$21#1#2,1#!+$:&6$21#1#1,1$;!$:#,1+$21#2!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#6;6000#7?????????>8&$:#8($:##18)$2-40#40$:##18'$21##2;'&9$21#1##'$;##??,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 1001328 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f95573.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 1001024 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f95573.IT BndT_Na_003.SegItab_Na_f95573.IT_sound BF NX0 BR XSTEP F0 PSS plan 1001024 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_apbS.

Module LibSegNa_apbT.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_f95573.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_f95573.IT.
Definition ENDS : list Z := [1001328].
Definition STOPS1 : list Z := [1001328] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$38$:$37$;$<$=$>$?$10$11$29$26$27$28$25$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",16'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#6;6000#7?????????>8&$:#8($:##18)$2-40#40$:##18!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31!$2-38,8$32!$2-40,8$33'$38##??'$25#1000#800000000000'$27##4000000'$26#1:#8000001(+$25$27##2)+$25$27##2$:##18)+$25$27##2$2-40#40"%pstring).
Definition ss0 : sym_state := SS 1001256 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 10), (0), ELit 24); ((EAlu Instr.ALU_ADD (EVar 37) (EVar 39)), (0), ELit 2)].
Definition F0L : list SR.region := [((EVar 10), (0), 24); ((EAlu Instr.ALU_ADD (EVar 37) (EVar 39)), (0), 2)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#?4770#?4770#5=#?4770,20#$2<$2$3$4$5$6$7$2=$2>+$25$27+$27#1$<$=$>$?$10$11$2?$30$31$32$33$17$18$19$1:$1;$1<$1=$1>$1?,,1;!+$25$27#1,1#!+$25$27#,1$38!$:#8,8+$27#1!$:#10,8$25!$:#,8+@#2&6$26#1#1'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#6;6000#7?????????>8&$:#8($:##18)$2-40#40$:##18!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31!$2-38,8$32!$2-40,8$33'$38##??'$25#1000#800000000000'$27##4000000'$26#1:#8000001(+$25$27##2)+$25$27##2$:##18)+$25$27##2$2-40#40,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 1001328 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_f95573.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 1001256 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_f95573.IT BndT_Na_003.SegItab_Na_f95573.IT_sound BF NX0 BR XSTEP F0 PSS plan 1001256 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_apbT.

End BndP_Na_006.
