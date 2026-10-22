(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
Set Warnings "-require-in-module".
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel. From Stdlib Require ZArith NArith List Lia Bool. From LinuxProcessSemantics.LinuxProcessSem Require BvBase RiscvSemantics MemImageType State Run. From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Asan. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_000. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Module BndP_Na_041.
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
Ltac2 kr_t_BndP_Na_041 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_000ASegItab_Na_2d87ed2ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE02BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE05XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE03kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE32BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE33NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE32BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE35XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE32F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE33PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE34planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE35regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeE33kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeF12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeF13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeF12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeF15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeF12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeF13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeF14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeF15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeF13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeF22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeF23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeF22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeF25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeF22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeF23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeF24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeF25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeF23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041=LibSegNa_azeG2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041=LibSegNa_azeG3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041=LibSegNa_azeG2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041=LibSegNa_azeG5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041=LibSegNa_azeG2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041=LibSegNa_azeG3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041=LibSegNa_azeG4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041=LibSegNa_azeG5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041=LibSegNa_azeG3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041=LibSegNa_azeH2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041=LibSegNa_azeH3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041=LibSegNa_azeH2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041=LibSegNa_azeH5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041=LibSegNa_azeH2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041=LibSegNa_azeH3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041=LibSegNa_azeH4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041=LibSegNa_azeH5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041=LibSegNa_azeH3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041?LibSegNa_azeI102BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041?LibSegNa_azeI103NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041?LibSegNa_azeI102BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041?LibSegNa_azeI105XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041?LibSegNa_azeI102F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041?LibSegNa_azeI103PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041?LibSegNa_azeI104planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041?LibSegNa_azeI105regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041?LibSegNa_azeI103kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI32BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI33NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI32BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI35XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI32F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI33PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI34planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI35regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI33kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI42BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI43NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI42BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI45XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI42F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI43PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI44planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI45regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_041>LibSegNa_azeI43kn0".

Module LibSegNa_azeE0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [1374112].
Definition STOPS1 : list Z := [1374112] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 34); (EVar 35); EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$2#7???7?802000#800000000000&$2#10($2-1000#1000%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8#!$21#8,8#!$21#10,8#"%pstring).
Definition ss0 : sym_state := SS 810932 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#14?7:0#14?7:0#5=#14?7:0,20##<68<<+$2-80$3$4$5$6$7#1$21#18#20#555555555555555^#:#::::::::::::::;#::::::::::::::;$?$10$11$23$22#+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,1:!$2-80,8+$21#8!$2-78,8#<6124!$2-48,8$21!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?802000#800000000000&$2#10($2-1000#1000%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8#!$21#8,8#!$21#10,8#,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 810932 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 810932 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeE0.

Module LibSegNa_azeE1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [519100].
Definition STOPS1 : list Z := [519100] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7#1$21$28$;$<$=$>$?$10$11$23$22#+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",35'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8#!$21#8,8#!$21#10,8#'$22#6;6000#7??????????<&$22#4)##7???7000#100000001000$22##4#&6$22#3#7???8000#1!$22#,4$26)$2-1000#1000$22##4)$21##18$22##4'$23#6;6000#7??????????8&$23#8)##7???7000#100000001000$23##8#&6$23#3#7???8000#1!$23#,8$27)$2-1000#1000$23##8)$21##18$23##8'$26##7???????'$27#^#?#???????????????'$28#1000#7?????????>8&$28#10)##7???7000#100000001000$28##18#&6$28#3#7???8000#3($28##18)$2-1000#1000$28##18)$21##18$28##18)##10000#6:6000$28##18)$22##4$28##18)$23##8$28##18!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-80,8+$21#8!$2-78,8#<6124!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 813260 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176); ((EVar 40), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176); ((EVar 40), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#7>;;<#7>;;<#5=#7>;;<,20##<66:4+$2-:0$3$4$5$6$7+$2-68$21$28###7???8000$>$?$10$11$28#7???8000#+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,41!$2-;0,8+$2-68!$2-:8,8#<6650!$2-98,8$22!$2-90,8$23!$2-88,8$21!$2-80,8+$21#8!$2-78,8#<61=0!$2-58,8+$28#18!$28#10,8#!$28#8,8$27!$28#,4$26!$2-50,8+$28#18!$2-60,8$28!$2-68,8$28'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8#!$21#8,8#!$21#10,8#'$22#6;6000#7??????????<&$22#4)##7???7000#100000001000$22##4#&6$22#3#7???8000#1!$22#,4$26)$2-1000#1000$22##4)$21##18$22##4'$23#6;6000#7??????????8&$23#8)##7???7000#100000001000$23##8#&6$23#3#7???8000#1!$23#,8$27)$2-1000#1000$23##8)$21##18$23##8'$26##7???????'$27#^#?#???????????????'$28#1000#7?????????>8&$28#10)##7???7000#100000001000$28##18#&6$28#3#7???8000#3($28##18)$2-1000#1000$28##18)$21##18$28##18)##10000#6:6000$28##18)$22##4$28##18)$23##8$28##18!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 519100 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 813260 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 813260 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeE1.

Module LibSegNa_azeE2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [534948].
Definition STOPS1 : list Z := [534948] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7+$2-68$21$:$;$<$=$>$?$10$11$28#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",2='$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8#!$21#8,8#!$21#10,8#'$28#1000#7?????????>8&$28#10)##7???7000#100000001000$28##18#&6$28#3#7???8000#3($28##18)$2-1000#1000$28##18)$21##18$28##18)##10000#6:6000$28##18)$22##4$28##18)$23##8$28##18!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#<61=0!$2-80,8+$21#8!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-68,8$28!$2-60,8$28!$2-58,8+$28#18!$2-50,8+$28#18!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 812708 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176); ((EVar 33), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176); ((EVar 33), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#829:4#829:4#5=#829:4,20##<69><+$2-80$3$4$5$6$7+$21#8$21$28+$28#18+$28#18+$28#18&6+$21#10#3$?$10$11$23$22$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,2=!$2-80,8+$21#8!$2-78,8#<61=0!$2-68,8#!$2-50,8#!$21#10,8+$28#18!$2-58,8#!$21#8,8+$28#18!$2-60,8#!$21#,8$28'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18'$28#1000#7?????????>8&$28#10)##7???7000#100000001000$28##18#&6$28#3#7???8000#3($28##18)$2-1000#1000$28##18)$21##18$28##18)##10000#6:6000$28##18)$22##4$28##18)$23##8$28##18!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534948 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 812708 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 812708 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeE2.

Module LibSegNa_azeE3.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [811544].
Definition STOPS1 : list Z := [811544] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7+$21#8$21$:$;$<$=$>$?$10$11$23$22#+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",22'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$28!$21#8,8+$28#18!$21#10,8+$28#18'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#<61=0!$2-80,8+$21#8!$2-68,8#!$2-60,8#!$2-58,8#!$2-50,8#!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 813548 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176); ((EVar 33), (8), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176); ((EVar 33), (8), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6218#<6218#5=#<6218,20#$2;$2$3$4$5$6$7$2<$2=$28###7???8000#+&6+$2-58#3#7???8000$10$11$2>$2?$30$31$32$17$18$19$1:$1;$1<$1=$1>$1?,,22!$21#8,8+$28#18!$2-78,8#<61>4'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$28!$21#10,8+$28#18'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-80,8+$21#8!$2-68,8#!$2-60,8#!$2-58,8#!$2-50,8#!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 811544 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 813548 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 813548 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeE3.

Module LibSegNa_azeF1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [534948].
Definition STOPS1 : list Z := [534948] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 34); (EVar 35); EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",16'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24$25!$21#10,8$29'$24#1000#7?????????>8&$24#10'$25##;?>8&$25#8'$29#1018#7???????????'&1$29+$24$25#18#<000"%pstring).
Definition ss0 : sym_state := SS 810932 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#829:4#829:4#5=#829:4,20##<653<+$2-80$3$4$5$6$7+$21#8$21$24$29+$24$25++$24$25#18$24$29$10$11$23$22+$24$25+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,20!$2-80,8+$21#8!$2-78,8#<6030!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24$25!$21#10,8$29'$24#1000#7?????????>8&$24#10'$25##;?>8&$25#8'$29#1018#7???????????'&1$29+$24$25#18#<000,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534948 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 810932 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 810932 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeF1.

Module LibSegNa_azeF2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [811544].
Definition STOPS1 : list Z := [811544] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7+$21#8$21$:$;$<$=$>$?$10$11$23$22+$24$25+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",39'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$24!$21#8,8+$24$25!$21#10,8$29'$24#1000#7?????????>8&$24#10'$22#6;6000#7??????????<&$22#4)##7???7000#100000001000$22##4#&6$22#3#7???8000#1!$22#,4$26)$2-1000#1000$22##4)$21##18$22##4'$23#6;6000#7??????????8&$23#8)##7???7000#100000001000$23##8#&6$23#3#7???8000#1!$23#,8$27)$2-1000#1000$23##8)$21##18$23##8'$26##7???????!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#<6030!$2-80,8+$21#8'$25##;?>8&$25#8'$29#1018#7???????????'&1$29+$24$25#18#<000#&6+$24$25#3#7???8000#3(+$24$25##18)##7???7000#100000001000+$24$25##18)##10000#6:6000+$24$25##18'+$24$25#1000#7?????????>8)$2-1000#1000+$24$25##18)$21##18+$24$25##18)$22##4+$24$25##18)$23##8+$24$25##18"%pstring).
Definition ss0 : sym_state := SS 812348 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EAlu Instr.ALU_ADD (EVar 36) (EVar 37)), (0), ELit 24); ((EVar 33), (8), ELit 8)].
Definition F0L : list SR.region := [((EAlu Instr.ALU_ADD (EVar 36) (EVar 37)), (0), 24); ((EVar 33), (8), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6218#<6218#5=#<6218,20#$2;$2$3$4$5$6$7$2<$2=+$24$25##$=$>$?$10$11$2>$2?$30$31$32$17$18$19$1:$1;$1<$1=$1>$1?,,3<!$21#8,8++$24$25#18!+$24$25#10,8#!+$24$25#8,8$27!+$24$25#,4$26'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$24!$21#10,8$29'$24#1000#7?????????>8&$24#10'$22#6;6000#7??????????<&$22#4)##7???7000#100000001000$22##4#&6$22#3#7???8000#1!$22#,4$26)$2-1000#1000$22##4)$21##18$22##4'$23#6;6000#7??????????8&$23#8)##7???7000#100000001000$23##8#&6$23#3#7???8000#1!$23#,8$27)$2-1000#1000$23##8)$21##18$23##8'$26##7???????!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#<6030!$2-80,8+$21#8'$25##;?>8&$25#8'$29#1018#7???????????'&1$29+$24$25#18#<000#&6+$24$25#3#7???8000#3(+$24$25##18)##7???7000#100000001000+$24$25##18)##10000#6:6000+$24$25##18'+$24$25#1000#7?????????>8)$2-1000#1000+$24$25##18)$21##18+$24$25##18)$22##4+$24$25##18)$23##8+$24$25##18,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 811544 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 812348 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 812348 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeF2.

Module LibSegNa_azeG.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [534948].
Definition STOPS1 : list Z := [534948] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7$2:$21$28$;$<$=$>$?$10$11$23$22$25+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",3:'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24$25!$21#10,8+$24$25'$24#1000#7?????????>8&$24#10'$25#18#6000&$25#8'$2:#2#800'$22#6;6000#7??????????<&$22#4)##7???7000#100000001000$22##4#&6$22#3#7???8000#1!$22#,4$26)$2-1000#1000$22##4)$21##18$22##4'$23#6;6000#7??????????8&$23#8)##7???7000#100000001000$23##8#&6$23#3#7???8000#1!$23#,8$27)$2-1000#1000$23##8)$21##18$23##8'$26##7???????'$28#1000#7?????????=0&$28#10(+$28$25##18#&6+$28$25#3#7???8000#3)##7???7000#100000001000+$28$25##18'+$28$25#1000#7?????????>8)$2-1000#1000+$28$25##18)$21##18+$28$25##18)##10000#6:6000+$28$25##18)$22##4+$28$25##18)$23##8+$28$25##18!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-80,8+$21#8!$2-78,8#<6124!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 813260 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176); ((EAlu Instr.ALU_ADD (EVar 40) (EVar 37)), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176); ((EAlu Instr.ALU_ADD (EVar 40) (EVar 37)), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",3!!,2#829:4#829:4!!,2#829:4#829:4!!,2#829:4#829:4#5=#829:4,20##<6954+$2-;0$3$4$5$6$7+$2-68$21$24+$24$25+$24$25+$24$25&6+$21#8#3$?$10$11$23#7???8000$25+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,46!$2-;0,8+$2-68!$2-:8,8#<6650!$2-98,8$22!$2-90,8$23!$2-88,8$21!$2-80,8+$21#8!$2-78,8#<61=0!$2-58,8++$25$28#18!+$25$28#10,8#!+$25$28#8,8$27!+$25$28#,4$26!$2-50,8+$28@#18$2:!$2-60,8+$25$28!$2-68,8$28'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24$25!$21#10,8+$24$25'$24#1000#7?????????>8&$24#10'$25#18#6000&$25#8'$2:#2#800'$22#6;6000#7??????????<&$22#4)##7???7000#100000001000$22##4#&6$22#3#7???8000#1!$22#,4$26)$2-1000#1000$22##4)$21##18$22##4'$23#6;6000#7??????????8&$23#8)##7???7000#100000001000$23##8#&6$23#3#7???8000#1!$23#,8$27)$2-1000#1000$23##8)$21##18$23##8'$26##7???????'$28#1000#7?????????=0&$28#10(+$28$25##18#&6+$28$25#3#7???8000#3)##7???7000#100000001000+$28$25##18'+$28$25#1000#7?????????>8)$2-1000#1000+$28$25##18)$21##18+$28$25##18)##10000#6:6000+$28$25##18)$22##4+$28$25##18)$23##8+$28$25##18!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534948 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 813260 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 813260 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeG.

Module LibSegNa_azeH.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [519100].
Definition STOPS1 : list Z := [519100] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-;0$3$4$5$6$7+$2-68$21$:$;$<$=$>$?$10$11$12#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",34'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24$25!$21#10,8+$24$25'$24#1000#7?????????>8&$24#10'$25#18#6000&$25#8'$2:#2#800'$28#1000#7?????????=0&$28#10(+$28$25##18#&6+$28$25#3#7???8000#3)##7???7000#100000001000+$28$25##18'+$28$25#1000#7?????????>8)$2-1000#1000+$28$25##18)$21##18+$28$25##18)##10000#6:6000+$28$25##18)$22##4+$28$25##18)$23##8+$28$25##18!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#<61=0!$2-80,8+$21#8!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-68,8$28!$2-60,8+$28$25!$2-58,8++$28$25#18!$2-50,8+$28@#18$2:!$2-48,8$21!$2-:8,8#<6650!$2-;0,8+$2-68"%pstring).
Definition ss0 : sym_state := SS 813396 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#7>;;<#7>;;<#5=#7>;;<,20##<66:4+$2-:0$3$4$5$6$7+$2-68$21$28$24$25$=$>$?$10$11$28#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,34'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24$25!$21#10,8+$24$25'$24#1000#7?????????>8&$24#10'$25#18#6000&$25#8'$2:#2#800'$28#1000#7?????????=0&$28#10(+$28$25##18#&6+$28$25#3#7???8000#3)##7???7000#100000001000+$28$25##18'+$28$25#1000#7?????????>8)$2-1000#1000+$28$25##18)$21##18+$28$25##18)##10000#6:6000+$28$25##18)$22##4+$28$25##18)$23##8+$28$25##18!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#<61=0!$2-80,8+$21#8!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-68,8$28!$2-60,8+$28$25!$2-58,8++$28$25#18!$2-50,8+$28@#18$2:!$2-48,8$21!$2-:8,8#<6650!$2-;0,8+$2-68,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 519100 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 813396 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 813396 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeH.

Module LibSegNa_azeI0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [534948].
Definition STOPS1 : list Z := [534948] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7+$2-68$21$:$;$<$=$>$?$10$11$28#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",27'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$24!$21#8,8+$24#18!$21#10,8+$24#18'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#<61=0!$2-80,8+$21#8!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-68,8$28!$2-60,8+$28#18!$2-58,8+$28#30!$2-50,8+$28#30!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 812708 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176); ((EVar 33), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176); ((EVar 33), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#829:4#829:4#5=#829:4,20##<69><+$2-80$3$4$5$6$7+$21#8$21$28+$28#30+$28#30+$28#30&6+$21#10#3$?$10$11$23$22$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,27!$2-80,8+$21#8!$2-78,8#<61=0!$2-68,8$24!$2-50,8+$24#18!$21#10,8+$28#30!$2-58,8$24!$21#8,8+$28#30!$2-60,8$24!$21#,8$28'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534948 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 812708 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 812708 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeI0.

Module LibSegNa_azeI1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [534948].
Definition STOPS1 : list Z := [534948] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7+$2-68$21$:$;$<$=$>$?$10$11$28#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",27'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$24!$21#8,8+$24#30!$21#10,8+$24#30'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#<61=0!$2-80,8+$21#8!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-68,8$28!$2-60,8+$28#30!$2-58,8+$28#48!$2-50,8+$28#60!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 812708 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176); ((EVar 33), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176); ((EVar 33), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#829:4#829:4#5=#829:4,20##<69><+$2-80$3$4$5$6$7+$21#8$21$28+$28#60+$28#60+$28#48&6+$21#10#3$?$10$11$23$22$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,27!$2-80,8+$21#8!$2-78,8#<61=0!$2-68,8$24!$2-50,8+$24#30!$21#10,8+$28#60!$2-58,8$24!$21#8,8+$28#48!$2-60,8$24!$21#,8$28'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534948 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 812708 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 812708 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeI1.

Module LibSegNa_azeI10.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [534948].
Definition STOPS1 : list Z := [534948] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7+$2-68$21$:$;$<$=$>$?$10$11$28#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",27'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$24!$21#8,8+$24#6000!$21#10,8+$24#6000'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#<61=0!$2-80,8+$21#8!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-68,8$28!$2-60,8+$28#6000!$2-58,8+$28#6018!$2-50,8+$28#<000!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 812708 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176); ((EVar 33), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176); ((EVar 33), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#829:4#829:4#5=#829:4,20##<69><+$2-80$3$4$5$6$7+$21#8$21$28+$28#<000+$28#<000+$28#6018&6+$21#10#3$?$10$11$23$22$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,27!$2-80,8+$21#8!$2-78,8#<61=0!$2-68,8$24!$2-50,8+$24#6000!$21#10,8+$28#<000!$2-58,8$24!$21#8,8+$28#6018!$2-60,8$24!$21#,8$28'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534948 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 812708 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 812708 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeI10.

Module LibSegNa_azeI2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [534948].
Definition STOPS1 : list Z := [534948] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7+$2-68$21$:$;$<$=$>$?$10$11$28#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",27'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$24!$21#8,8+$24#60!$21#10,8+$24#60'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#<61=0!$2-80,8+$21#8!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-68,8$28!$2-60,8+$28#60!$2-58,8+$28#78!$2-50,8+$28#<0!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 812708 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176); ((EVar 33), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176); ((EVar 33), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#829:4#829:4#5=#829:4,20##<69><+$2-80$3$4$5$6$7+$21#8$21$28+$28#<0+$28#<0+$28#78&6+$21#10#3$?$10$11$23$22$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,27!$2-80,8+$21#8!$2-78,8#<61=0!$2-68,8$24!$2-50,8+$24#60!$21#10,8+$28#<0!$2-58,8$24!$21#8,8+$28#78!$2-60,8$24!$21#,8$28'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534948 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 812708 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 812708 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeI2.

Module LibSegNa_azeI3.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [534948].
Definition STOPS1 : list Z := [534948] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7+$2-68$21$:$;$<$=$>$?$10$11$28#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",27'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$24!$21#8,8+$24#<0!$21#10,8+$24#<0'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#<61=0!$2-80,8+$21#8!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-68,8$28!$2-60,8+$28#<0!$2-58,8+$28#=8!$2-50,8+$28#180!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 812708 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176); ((EVar 33), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176); ((EVar 33), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#829:4#829:4#5=#829:4,20##<69><+$2-80$3$4$5$6$7+$21#8$21$28+$28#180+$28#180+$28#=8&6+$21#10#3$?$10$11$23$22$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,27!$2-80,8+$21#8!$2-78,8#<61=0!$2-68,8$24!$2-50,8+$24#<0!$21#10,8+$28#180!$2-58,8$24!$21#8,8+$28#=8!$2-60,8$24!$21#,8$28'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534948 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 812708 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 812708 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeI3.

Module LibSegNa_azeI4.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [534948].
Definition STOPS1 : list Z := [534948] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7+$2-68$21$:$;$<$=$>$?$10$11$28#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",27'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$24!$21#8,8+$24#180!$21#10,8+$24#180'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#<61=0!$2-80,8+$21#8!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-68,8$28!$2-60,8+$28#180!$2-58,8+$28#198!$2-50,8+$28#300!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 812708 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176); ((EVar 33), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176); ((EVar 33), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#829:4#829:4#5=#829:4,20##<69><+$2-80$3$4$5$6$7+$21#8$21$28+$28#300+$28#300+$28#198&6+$21#10#3$?$10$11$23$22$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,27!$2-80,8+$21#8!$2-78,8#<61=0!$2-68,8$24!$2-50,8+$24#180!$21#10,8+$28#300!$2-58,8$24!$21#8,8+$28#198!$2-60,8$24!$21#,8$28'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534948 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 812708 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 812708 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeI4.

End BndP_Na_041.
Module BndP_Na_042.
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
Ltac2 kr_t_BndP_Na_042 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_000ASegItab_Na_2d87ed2ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI52BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI53NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI52BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI55XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI52F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI53PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI54planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI55regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI53kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI62BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI63NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI62BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI65XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI62F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI63PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI64planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI65regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI63kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI72BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI73NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI72BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI75XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI72F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI73PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI74planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI75regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI73kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI82BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI83NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI82BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI85XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI82F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI83PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI84planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI85regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI83kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI92BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI93NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI92BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI95XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI92F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI93PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI94planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI95regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeI93kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042=LibSegNa_azeJ2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042=LibSegNa_azeJ3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042=LibSegNa_azeJ2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042=LibSegNa_azeJ5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042=LibSegNa_azeJ2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042=LibSegNa_azeJ3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042=LibSegNa_azeJ4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042=LibSegNa_azeJ5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042=LibSegNa_azeJ3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042=LibSegNa_azeK2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042=LibSegNa_azeK3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042=LibSegNa_azeK2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042=LibSegNa_azeK5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042=LibSegNa_azeK2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042=LibSegNa_azeK3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042=LibSegNa_azeK4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042=LibSegNa_azeK5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042=LibSegNa_azeK3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042?LibSegNa_azeS102BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042?LibSegNa_azeS103NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042?LibSegNa_azeS102BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042?LibSegNa_azeS105XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042?LibSegNa_azeS102F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042?LibSegNa_azeS103PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042?LibSegNa_azeS104planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042?LibSegNa_azeS105regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042?LibSegNa_azeS103kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS32BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS33NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS32BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS35XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS32F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS33PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS34planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS35regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS33kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS42BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS43NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS42BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS45XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS42F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS43PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS44planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS45regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS43kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS52BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS53NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS52BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS55XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS52F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS53PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS54planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS55regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_042>LibSegNa_azeS53kn0".

Module LibSegNa_azeI5.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [534948].
Definition STOPS1 : list Z := [534948] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7+$2-68$21$:$;$<$=$>$?$10$11$28#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",27'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$24!$21#8,8+$24#300!$21#10,8+$24#300'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#<61=0!$2-80,8+$21#8!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-68,8$28!$2-60,8+$28#300!$2-58,8+$28#318!$2-50,8+$28#600!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 812708 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176); ((EVar 33), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176); ((EVar 33), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#829:4#829:4#5=#829:4,20##<69><+$2-80$3$4$5$6$7+$21#8$21$28+$28#600+$28#600+$28#318&6+$21#10#3$?$10$11$23$22$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,27!$2-80,8+$21#8!$2-78,8#<61=0!$2-68,8$24!$2-50,8+$24#300!$21#10,8+$28#600!$2-58,8$24!$21#8,8+$28#318!$2-60,8$24!$21#,8$28'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534948 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 812708 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 812708 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeI5.

Module LibSegNa_azeI6.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [534948].
Definition STOPS1 : list Z := [534948] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7+$2-68$21$:$;$<$=$>$?$10$11$28#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",27'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$24!$21#8,8+$24#600!$21#10,8+$24#600'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#<61=0!$2-80,8+$21#8!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-68,8$28!$2-60,8+$28#600!$2-58,8+$28#618!$2-50,8+$28#<00!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 812708 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176); ((EVar 33), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176); ((EVar 33), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#829:4#829:4#5=#829:4,20##<69><+$2-80$3$4$5$6$7+$21#8$21$28+$28#<00+$28#<00+$28#618&6+$21#10#3$?$10$11$23$22$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,27!$2-80,8+$21#8!$2-78,8#<61=0!$2-68,8$24!$2-50,8+$24#600!$21#10,8+$28#<00!$2-58,8$24!$21#8,8+$28#618!$2-60,8$24!$21#,8$28'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534948 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 812708 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 812708 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeI6.

Module LibSegNa_azeI7.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [534948].
Definition STOPS1 : list Z := [534948] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7+$2-68$21$:$;$<$=$>$?$10$11$28#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",27'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$24!$21#8,8+$24#<00!$21#10,8+$24#<00'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#<61=0!$2-80,8+$21#8!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-68,8$28!$2-60,8+$28#<00!$2-58,8+$28#<18!$2-50,8+$28#1800!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 812708 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176); ((EVar 33), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176); ((EVar 33), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#829:4#829:4#5=#829:4,20##<69><+$2-80$3$4$5$6$7+$21#8$21$28+$28#1800+$28#1800+$28#<18&6+$21#10#3$?$10$11$23$22$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,27!$2-80,8+$21#8!$2-78,8#<61=0!$2-68,8$24!$2-50,8+$24#<00!$21#10,8+$28#1800!$2-58,8$24!$21#8,8+$28#<18!$2-60,8$24!$21#,8$28'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534948 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 812708 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 812708 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeI7.

Module LibSegNa_azeI8.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [534948].
Definition STOPS1 : list Z := [534948] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7+$2-68$21$:$;$<$=$>$?$10$11$28#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",27'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$24!$21#8,8+$24#1800!$21#10,8+$24#1800'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#<61=0!$2-80,8+$21#8!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-68,8$28!$2-60,8+$28#1800!$2-58,8+$28#1818!$2-50,8+$28#3000!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 812708 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176); ((EVar 33), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176); ((EVar 33), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#829:4#829:4#5=#829:4,20##<69><+$2-80$3$4$5$6$7+$21#8$21$28+$28#3000+$28#3000+$28#1818&6+$21#10#3$?$10$11$23$22$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,27!$2-80,8+$21#8!$2-78,8#<61=0!$2-68,8$24!$2-50,8+$24#1800!$21#10,8+$28#3000!$2-58,8$24!$21#8,8+$28#1818!$2-60,8$24!$21#,8$28'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534948 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 812708 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 812708 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeI8.

Module LibSegNa_azeI9.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [534948].
Definition STOPS1 : list Z := [534948] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7+$2-68$21$:$;$<$=$>$?$10$11$28#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",27'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$24!$21#8,8+$24#3000!$21#10,8+$24#3000'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#<61=0!$2-80,8+$21#8!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-68,8$28!$2-60,8+$28#3000!$2-58,8+$28#3018!$2-50,8+$28#6000!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 812708 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176); ((EVar 33), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176); ((EVar 33), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#829:4#829:4#5=#829:4,20##<69><+$2-80$3$4$5$6$7+$21#8$21$28+$28#6000+$28#6000+$28#3018&6+$21#10#3$?$10$11$23$22$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,27!$2-80,8+$21#8!$2-78,8#<61=0!$2-68,8$24!$2-50,8+$24#3000!$21#10,8+$28#6000!$2-58,8$24!$21#8,8+$28#3018!$2-60,8$24!$21#,8$28'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534948 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 812708 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 812708 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeI9.

Module LibSegNa_azeJ.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [991168].
Definition STOPS1 : list Z := [991168] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7+$21#8$21$:$;$<$=$>$?$10$11$23$22$25+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",27'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$28!$21#8,8++$28$25#18!$21#10,8+$28@#18$2:'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10'$25#18#6000&$25#8'$2:#2#800!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#<61=0!$2-80,8+$21#8!$2-68,8$24!$2-60,8$24!$2-58,8$24!$2-50,8+$24$25!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 813548 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#?1?<0#?1?<0#5=#?1?<0,20##<61>4+$2-70$3$4$5$6$7+$21#8$21$24$25$24#7???8000$24+&6+$2-58#3#7???8000$10$11$23$22++$28$25#18+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,27!$2-78,8#<61>4'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$28!$21#8,8++$28$25#18!$21#10,8+$28@#18$2:'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10'$25#18#6000&$25#8'$2:#2#800!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-80,8+$21#8!$2-68,8$24!$2-60,8$24!$2-58,8$24!$2-50,8+$24$25!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 813548 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 813548 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeJ.

Module LibSegNa_azeK.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [811544].
Definition STOPS1 : list Z := [811544] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-70$3$4$5$6$7+$21#8$9$:$;$<$=$>$?$10$11$12$13$29+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",17'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#8,8$29!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32"%pstring).
Definition ss0 : sym_state := SS 811492 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6218#<6218#5=#<6218,20#$2;$2$3$4$5$6$7$2<$2=+$29-18$;$<$=$>$?$10$11$2>$2?$30$31$32$17$18$19$1:$1;$1<$1=$1>$1?,,17!$21#8,8$29'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 811544 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 811492 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 811492 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeK.

Module LibSegNa_azeS0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [1374112].
Definition STOPS1 : list Z := [1374112] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 34); (EVar 35); EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#18!$21#10,8+$24#18'$24#1000#7?????????>8&$24#10"%pstring).
Definition ss0 : sym_state := SS 810932 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#14?7:0#14?7:0#5=#14?7:0,20##<68<<+$2-80$3$4$5$6$7#2$21#30#40#555555555555555^#:#::::::::::::::;#::::::::::::::;$?$10$11$23$22#18+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,1=!$2-80,8+$21#8!$2-78,8#<6124!$2-48,8$21!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#18!$21#10,8+$24#18'$24#1000#7?????????>8&$24#10,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 810932 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 810932 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeS0.

Module LibSegNa_azeS1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [1374112].
Definition STOPS1 : list Z := [1374112] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 34); (EVar 35); EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#30!$21#10,8+$24#30'$24#1000#7?????????>8&$24#10"%pstring).
Definition ss0 : sym_state := SS 810932 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#14?7:0#14?7:0#5=#14?7:0,20##<68<<+$2-80$3$4$5$6$7#4$21#60#80#555555555555555^#:#::::::::::::::;#::::::::::::::;$?$10$11$23$22#30+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,1=!$2-80,8+$21#8!$2-78,8#<6124!$2-48,8$21!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#30!$21#10,8+$24#30'$24#1000#7?????????>8&$24#10,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 810932 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 810932 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeS1.

Module LibSegNa_azeS10.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [1374112].
Definition STOPS1 : list Z := [1374112] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 34); (EVar 35); EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#6000!$21#10,8+$24#6000'$24#1000#7?????????>8&$24#10"%pstring).
Definition ss0 : sym_state := SS 810932 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#14?7:0#14?7:0#5=#14?7:0,20##<68<<+$2-80$3$4$5$6$7#800$21#<000#10000#555555555555555^#:#::::::::::::::;#::::::::::::::;$?$10$11$23$22#6000+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,1=!$2-80,8+$21#8!$2-78,8#<6124!$2-48,8$21!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#6000!$21#10,8+$24#6000'$24#1000#7?????????>8&$24#10,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 810932 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 810932 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeS10.

Module LibSegNa_azeS2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [1374112].
Definition STOPS1 : list Z := [1374112] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 34); (EVar 35); EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#60!$21#10,8+$24#60'$24#1000#7?????????>8&$24#10"%pstring).
Definition ss0 : sym_state := SS 810932 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#14?7:0#14?7:0#5=#14?7:0,20##<68<<+$2-80$3$4$5$6$7#8$21#<0#100#555555555555555^#:#::::::::::::::;#::::::::::::::;$?$10$11$23$22#60+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,1=!$2-80,8+$21#8!$2-78,8#<6124!$2-48,8$21!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#60!$21#10,8+$24#60'$24#1000#7?????????>8&$24#10,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 810932 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 810932 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeS2.

Module LibSegNa_azeS3.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [1374112].
Definition STOPS1 : list Z := [1374112] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 34); (EVar 35); EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#<0!$21#10,8+$24#<0'$24#1000#7?????????>8&$24#10"%pstring).
Definition ss0 : sym_state := SS 810932 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#14?7:0#14?7:0#5=#14?7:0,20##<68<<+$2-80$3$4$5$6$7#10$21#180#200#555555555555555^#:#::::::::::::::;#::::::::::::::;$?$10$11$23$22#<0+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,1=!$2-80,8+$21#8!$2-78,8#<6124!$2-48,8$21!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#<0!$21#10,8+$24#<0'$24#1000#7?????????>8&$24#10,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 810932 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 810932 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeS3.

Module LibSegNa_azeS4.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [1374112].
Definition STOPS1 : list Z := [1374112] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 34); (EVar 35); EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#180!$21#10,8+$24#180'$24#1000#7?????????>8&$24#10"%pstring).
Definition ss0 : sym_state := SS 810932 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#14?7:0#14?7:0#5=#14?7:0,20##<68<<+$2-80$3$4$5$6$7#20$21#300#400#555555555555555^#:#::::::::::::::;#::::::::::::::;$?$10$11$23$22#180+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,1=!$2-80,8+$21#8!$2-78,8#<6124!$2-48,8$21!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#180!$21#10,8+$24#180'$24#1000#7?????????>8&$24#10,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 810932 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 810932 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeS4.

Module LibSegNa_azeS5.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2d87ed.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2d87ed.IT.
Definition ENDS : list Z := [1374112].
Definition STOPS1 : list Z := [1374112] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 34); (EVar 35); EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#300!$21#10,8+$24#300'$24#1000#7?????????>8&$24#10"%pstring).
Definition ss0 : sym_state := SS 810932 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#14?7:0#14?7:0#5=#14?7:0,20##<68<<+$2-80$3$4$5$6$7#40$21#600#800#555555555555555^#:#::::::::::::::;#::::::::::::::;$?$10$11$23$22#300+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,1=!$2-80,8+$21#8!$2-78,8#<6124!$2-48,8$21!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#300!$21#10,8+$24#300'$24#1000#7?????????>8&$24#10,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2d87ed.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 810932 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2d87ed.IT BndT_Na_000.SegItab_Na_2d87ed.IT_sound BF NX0 BR XSTEP F0 PSS plan 810932 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azeS5.

End BndP_Na_042.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_003.
Module BndP_Na_039.
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
Ltac2 kr_t_BndP_Na_039 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d4be312ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039=LibSegNa_azcG2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039=LibSegNa_azcG3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039=LibSegNa_azcG2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039=LibSegNa_azcG5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039=LibSegNa_azcG2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039=LibSegNa_azcG3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039=LibSegNa_azcG4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039=LibSegNa_azcG5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039=LibSegNa_azcG3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039=LibSegNa_azcH2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039=LibSegNa_azcH3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039=LibSegNa_azcH2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039=LibSegNa_azcH5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039=LibSegNa_azcH2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039=LibSegNa_azcH3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039=LibSegNa_azcH4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039=LibSegNa_azcH5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039=LibSegNa_azcH3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039?LibSegNa_azcI102BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039?LibSegNa_azcI103NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039?LibSegNa_azcI102BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039?LibSegNa_azcI105XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039?LibSegNa_azcI102F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039?LibSegNa_azcI103PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039?LibSegNa_azcI104planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039?LibSegNa_azcI105regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039?LibSegNa_azcI103kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI32BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI33NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI32BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI35XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI32F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI33PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI34planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI35regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI33kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI42BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI43NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI42BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI45XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI42F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI43PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI44planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI45regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI43kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI52BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI53NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI52BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI55XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI52F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI53PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI54planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI55regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI53kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI62BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI63NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI62BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI65XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI62F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI63PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI64planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI65regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI63kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI72BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI73NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI72BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI75XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI72F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI73PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI74planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI75regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI73kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI82BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI83NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI82BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI85XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI82F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI83PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI84planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI85regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI83kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI92BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI93NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI92BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI95XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI92F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI93PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI94planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI95regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039>LibSegNa_azcI93kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039=LibSegNa_azcJ2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039=LibSegNa_azcJ3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039=LibSegNa_azcJ2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039=LibSegNa_azcJ5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039=LibSegNa_azcJ2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039=LibSegNa_azcJ3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039=LibSegNa_azcJ4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039=LibSegNa_azcJ5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_039=LibSegNa_azcJ3kn0".

Module LibSegNa_azcG.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d4be31.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d4be31.IT.
Definition ENDS : list Z := [534948].
Definition STOPS1 : list Z := [534948] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7$2:$21$28$;$<$=$>$?$10$11$23$22$25+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",3:'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24$25!$21#10,8+$24$25'$24#1000#7?????????>8&$24#10'$25#18#6000&$25#8'$2:#2#800'$22#6;6000#7??????????<&$22#4)##7???7000#100000001000$22##4#&6$22#3#7???8000#1!$22#,4$26)$2-1000#1000$22##4)$21##18$22##4'$23#6;6000#7??????????8&$23#8)##7???7000#100000001000$23##8#&6$23#3#7???8000#1!$23#,8$27)$2-1000#1000$23##8)$21##18$23##8'$26##7???????'$28#1000#7?????????=0&$28#10(+$28$25##18#&6+$28$25#3#7???8000#3)##7???7000#100000001000+$28$25##18'+$28$25#1000#7?????????>8)$2-1000#1000+$28$25##18)$21##18+$28$25##18)##10000#6:6000+$28$25##18)$22##4+$28$25##18)$23##8+$28$25##18!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-80,8+$21#8!$2-78,8#=4?38!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 850516 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176); ((EAlu Instr.ALU_ADD (EVar 40) (EVar 37)), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176); ((EAlu Instr.ALU_ADD (EVar 40) (EVar 37)), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",3!!,2#829:4#829:4!!,2#829:4#829:4!!,2#829:4#829:4#5=#829:4,20##<0?14+$2-;0$3$4$5$6$7+$2-68$21$24+$24$25+$24$25+$24$25&6+$21#8#3$?$10$11$23#7???8000$25+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,46!$2-;0,8+$2-68!$2-:8,8#<?7=8!$2-98,8$22!$2-90,8$23!$2-88,8$21!$2-80,8+$21#8!$2-78,8#=4?>4!$2-58,8++$25$28#18!+$25$28#10,8#!+$25$28#8,8$27!+$25$28#,4$26!$2-50,8+$28@#18$2:!$2-60,8+$25$28!$2-68,8$28'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24$25!$21#10,8+$24$25'$24#1000#7?????????>8&$24#10'$25#18#6000&$25#8'$2:#2#800'$22#6;6000#7??????????<&$22#4)##7???7000#100000001000$22##4#&6$22#3#7???8000#1!$22#,4$26)$2-1000#1000$22##4)$21##18$22##4'$23#6;6000#7??????????8&$23#8)##7???7000#100000001000$23##8#&6$23#3#7???8000#1!$23#,8$27)$2-1000#1000$23##8)$21##18$23##8'$26##7???????'$28#1000#7?????????=0&$28#10(+$28$25##18#&6+$28$25#3#7???8000#3)##7???7000#100000001000+$28$25##18'+$28$25#1000#7?????????>8)$2-1000#1000+$28$25##18)$21##18+$28$25##18)##10000#6:6000+$28$25##18)$22##4+$28$25##18)$23##8+$28$25##18!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534948 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d4be31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 850516 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d4be31.IT BndT_Na_003.SegItab_Na_d4be31.IT_sound BF NX0 BR XSTEP F0 PSS plan 850516 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azcG.

Module LibSegNa_azcH.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d4be31.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d4be31.IT.
Definition ENDS : list Z := [519100].
Definition STOPS1 : list Z := [519100] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-;0$3$4$5$6$7+$2-68$21$:$;$<$=$>$?$10$11$12#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",34'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24$25!$21#10,8+$24$25'$24#1000#7?????????>8&$24#10'$25#18#6000&$25#8'$2:#2#800'$28#1000#7?????????=0&$28#10(+$28$25##18#&6+$28$25#3#7???8000#3)##7???7000#100000001000+$28$25##18'+$28$25#1000#7?????????>8)$2-1000#1000+$28$25##18)$21##18+$28$25##18)##10000#6:6000+$28$25##18)$22##4+$28$25##18)$23##8+$28$25##18!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#=4?>4!$2-80,8+$21#8!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-68,8$28!$2-60,8+$28$25!$2-58,8++$28$25#18!$2-50,8+$28@#18$2:!$2-48,8$21!$2-:8,8#<?7=8!$2-;0,8+$2-68"%pstring).
Definition ss0 : sym_state := SS 790292 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#7>;;<#7>;;<#5=#7>;;<,20##<?82<+$2-:0$3$4$5$6$7+$2-68$21$28$24$25$=$>$?$10$11$28#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,34'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24$25!$21#10,8+$24$25'$24#1000#7?????????>8&$24#10'$25#18#6000&$25#8'$2:#2#800'$28#1000#7?????????=0&$28#10(+$28$25##18#&6+$28$25#3#7???8000#3)##7???7000#100000001000+$28$25##18'+$28$25#1000#7?????????>8)$2-1000#1000+$28$25##18)$21##18+$28$25##18)##10000#6:6000+$28$25##18)$22##4+$28$25##18)$23##8+$28$25##18!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#=4?>4!$2-80,8+$21#8!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-68,8$28!$2-60,8+$28$25!$2-58,8++$28$25#18!$2-50,8+$28@#18$2:!$2-48,8$21!$2-:8,8#<?7=8!$2-;0,8+$2-68,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 519100 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d4be31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 790292 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d4be31.IT BndT_Na_003.SegItab_Na_d4be31.IT_sound BF NX0 BR XSTEP F0 PSS plan 790292 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azcH.

Module LibSegNa_azcI0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d4be31.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d4be31.IT.
Definition ENDS : list Z := [534948].
Definition STOPS1 : list Z := [534948] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7+$2-68$21$:$;$<$=$>$?$10$11$28#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",27'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$24!$21#8,8+$24#18!$21#10,8+$24#18'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#=4?>4!$2-80,8+$21#8!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-68,8$28!$2-60,8+$28#18!$2-58,8+$28#30!$2-50,8+$28#30!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 849964 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176); ((EVar 33), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176); ((EVar 33), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#829:4#829:4#5=#829:4,20##<?:=4+$2-80$3$4$5$6$7+$21#8$21$28+$28#30+$28#30+$28#30&6+$21#10#3$?$10$11$23$22$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,27!$2-80,8+$21#8!$2-78,8#=4?>4!$2-68,8$24!$2-50,8+$24#18!$21#10,8+$28#30!$2-58,8$24!$21#8,8+$28#30!$2-60,8$24!$21#,8$28'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534948 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d4be31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 849964 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d4be31.IT BndT_Na_003.SegItab_Na_d4be31.IT_sound BF NX0 BR XSTEP F0 PSS plan 849964 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azcI0.

Module LibSegNa_azcI1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d4be31.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d4be31.IT.
Definition ENDS : list Z := [534948].
Definition STOPS1 : list Z := [534948] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7+$2-68$21$:$;$<$=$>$?$10$11$28#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",27'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$24!$21#8,8+$24#30!$21#10,8+$24#30'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#=4?>4!$2-80,8+$21#8!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-68,8$28!$2-60,8+$28#30!$2-58,8+$28#48!$2-50,8+$28#60!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 849964 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176); ((EVar 33), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176); ((EVar 33), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#829:4#829:4#5=#829:4,20##<?:=4+$2-80$3$4$5$6$7+$21#8$21$28+$28#60+$28#60+$28#48&6+$21#10#3$?$10$11$23$22$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,27!$2-80,8+$21#8!$2-78,8#=4?>4!$2-68,8$24!$2-50,8+$24#30!$21#10,8+$28#60!$2-58,8$24!$21#8,8+$28#48!$2-60,8$24!$21#,8$28'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534948 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d4be31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 849964 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d4be31.IT BndT_Na_003.SegItab_Na_d4be31.IT_sound BF NX0 BR XSTEP F0 PSS plan 849964 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azcI1.

Module LibSegNa_azcI10.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d4be31.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d4be31.IT.
Definition ENDS : list Z := [534948].
Definition STOPS1 : list Z := [534948] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7+$2-68$21$:$;$<$=$>$?$10$11$28#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",27'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$24!$21#8,8+$24#6000!$21#10,8+$24#6000'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#=4?>4!$2-80,8+$21#8!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-68,8$28!$2-60,8+$28#6000!$2-58,8+$28#6018!$2-50,8+$28#<000!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 849964 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176); ((EVar 33), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176); ((EVar 33), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#829:4#829:4#5=#829:4,20##<?:=4+$2-80$3$4$5$6$7+$21#8$21$28+$28#<000+$28#<000+$28#6018&6+$21#10#3$?$10$11$23$22$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,27!$2-80,8+$21#8!$2-78,8#=4?>4!$2-68,8$24!$2-50,8+$24#6000!$21#10,8+$28#<000!$2-58,8$24!$21#8,8+$28#6018!$2-60,8$24!$21#,8$28'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534948 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d4be31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 849964 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d4be31.IT BndT_Na_003.SegItab_Na_d4be31.IT_sound BF NX0 BR XSTEP F0 PSS plan 849964 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azcI10.

Module LibSegNa_azcI2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d4be31.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d4be31.IT.
Definition ENDS : list Z := [534948].
Definition STOPS1 : list Z := [534948] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7+$2-68$21$:$;$<$=$>$?$10$11$28#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",27'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$24!$21#8,8+$24#60!$21#10,8+$24#60'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#=4?>4!$2-80,8+$21#8!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-68,8$28!$2-60,8+$28#60!$2-58,8+$28#78!$2-50,8+$28#<0!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 849964 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176); ((EVar 33), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176); ((EVar 33), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#829:4#829:4#5=#829:4,20##<?:=4+$2-80$3$4$5$6$7+$21#8$21$28+$28#<0+$28#<0+$28#78&6+$21#10#3$?$10$11$23$22$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,27!$2-80,8+$21#8!$2-78,8#=4?>4!$2-68,8$24!$2-50,8+$24#60!$21#10,8+$28#<0!$2-58,8$24!$21#8,8+$28#78!$2-60,8$24!$21#,8$28'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534948 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d4be31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 849964 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d4be31.IT BndT_Na_003.SegItab_Na_d4be31.IT_sound BF NX0 BR XSTEP F0 PSS plan 849964 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azcI2.

Module LibSegNa_azcI3.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d4be31.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d4be31.IT.
Definition ENDS : list Z := [534948].
Definition STOPS1 : list Z := [534948] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7+$2-68$21$:$;$<$=$>$?$10$11$28#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",27'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$24!$21#8,8+$24#<0!$21#10,8+$24#<0'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#=4?>4!$2-80,8+$21#8!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-68,8$28!$2-60,8+$28#<0!$2-58,8+$28#=8!$2-50,8+$28#180!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 849964 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176); ((EVar 33), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176); ((EVar 33), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#829:4#829:4#5=#829:4,20##<?:=4+$2-80$3$4$5$6$7+$21#8$21$28+$28#180+$28#180+$28#=8&6+$21#10#3$?$10$11$23$22$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,27!$2-80,8+$21#8!$2-78,8#=4?>4!$2-68,8$24!$2-50,8+$24#<0!$21#10,8+$28#180!$2-58,8$24!$21#8,8+$28#=8!$2-60,8$24!$21#,8$28'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534948 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d4be31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 849964 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d4be31.IT BndT_Na_003.SegItab_Na_d4be31.IT_sound BF NX0 BR XSTEP F0 PSS plan 849964 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azcI3.

Module LibSegNa_azcI4.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d4be31.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d4be31.IT.
Definition ENDS : list Z := [534948].
Definition STOPS1 : list Z := [534948] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7+$2-68$21$:$;$<$=$>$?$10$11$28#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",27'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$24!$21#8,8+$24#180!$21#10,8+$24#180'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#=4?>4!$2-80,8+$21#8!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-68,8$28!$2-60,8+$28#180!$2-58,8+$28#198!$2-50,8+$28#300!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 849964 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176); ((EVar 33), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176); ((EVar 33), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#829:4#829:4#5=#829:4,20##<?:=4+$2-80$3$4$5$6$7+$21#8$21$28+$28#300+$28#300+$28#198&6+$21#10#3$?$10$11$23$22$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,27!$2-80,8+$21#8!$2-78,8#=4?>4!$2-68,8$24!$2-50,8+$24#180!$21#10,8+$28#300!$2-58,8$24!$21#8,8+$28#198!$2-60,8$24!$21#,8$28'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534948 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d4be31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 849964 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d4be31.IT BndT_Na_003.SegItab_Na_d4be31.IT_sound BF NX0 BR XSTEP F0 PSS plan 849964 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azcI4.

Module LibSegNa_azcI5.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d4be31.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d4be31.IT.
Definition ENDS : list Z := [534948].
Definition STOPS1 : list Z := [534948] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7+$2-68$21$:$;$<$=$>$?$10$11$28#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",27'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$24!$21#8,8+$24#300!$21#10,8+$24#300'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#=4?>4!$2-80,8+$21#8!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-68,8$28!$2-60,8+$28#300!$2-58,8+$28#318!$2-50,8+$28#600!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 849964 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176); ((EVar 33), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176); ((EVar 33), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#829:4#829:4#5=#829:4,20##<?:=4+$2-80$3$4$5$6$7+$21#8$21$28+$28#600+$28#600+$28#318&6+$21#10#3$?$10$11$23$22$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,27!$2-80,8+$21#8!$2-78,8#=4?>4!$2-68,8$24!$2-50,8+$24#300!$21#10,8+$28#600!$2-58,8$24!$21#8,8+$28#318!$2-60,8$24!$21#,8$28'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534948 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d4be31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 849964 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d4be31.IT BndT_Na_003.SegItab_Na_d4be31.IT_sound BF NX0 BR XSTEP F0 PSS plan 849964 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azcI5.

Module LibSegNa_azcI6.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d4be31.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d4be31.IT.
Definition ENDS : list Z := [534948].
Definition STOPS1 : list Z := [534948] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7+$2-68$21$:$;$<$=$>$?$10$11$28#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",27'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$24!$21#8,8+$24#600!$21#10,8+$24#600'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#=4?>4!$2-80,8+$21#8!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-68,8$28!$2-60,8+$28#600!$2-58,8+$28#618!$2-50,8+$28#<00!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 849964 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176); ((EVar 33), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176); ((EVar 33), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#829:4#829:4#5=#829:4,20##<?:=4+$2-80$3$4$5$6$7+$21#8$21$28+$28#<00+$28#<00+$28#618&6+$21#10#3$?$10$11$23$22$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,27!$2-80,8+$21#8!$2-78,8#=4?>4!$2-68,8$24!$2-50,8+$24#600!$21#10,8+$28#<00!$2-58,8$24!$21#8,8+$28#618!$2-60,8$24!$21#,8$28'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534948 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d4be31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 849964 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d4be31.IT BndT_Na_003.SegItab_Na_d4be31.IT_sound BF NX0 BR XSTEP F0 PSS plan 849964 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azcI6.

Module LibSegNa_azcI7.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d4be31.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d4be31.IT.
Definition ENDS : list Z := [534948].
Definition STOPS1 : list Z := [534948] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7+$2-68$21$:$;$<$=$>$?$10$11$28#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",27'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$24!$21#8,8+$24#<00!$21#10,8+$24#<00'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#=4?>4!$2-80,8+$21#8!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-68,8$28!$2-60,8+$28#<00!$2-58,8+$28#<18!$2-50,8+$28#1800!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 849964 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176); ((EVar 33), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176); ((EVar 33), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#829:4#829:4#5=#829:4,20##<?:=4+$2-80$3$4$5$6$7+$21#8$21$28+$28#1800+$28#1800+$28#<18&6+$21#10#3$?$10$11$23$22$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,27!$2-80,8+$21#8!$2-78,8#=4?>4!$2-68,8$24!$2-50,8+$24#<00!$21#10,8+$28#1800!$2-58,8$24!$21#8,8+$28#<18!$2-60,8$24!$21#,8$28'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534948 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d4be31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 849964 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d4be31.IT BndT_Na_003.SegItab_Na_d4be31.IT_sound BF NX0 BR XSTEP F0 PSS plan 849964 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azcI7.

Module LibSegNa_azcI8.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d4be31.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d4be31.IT.
Definition ENDS : list Z := [534948].
Definition STOPS1 : list Z := [534948] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7+$2-68$21$:$;$<$=$>$?$10$11$28#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",27'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$24!$21#8,8+$24#1800!$21#10,8+$24#1800'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#=4?>4!$2-80,8+$21#8!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-68,8$28!$2-60,8+$28#1800!$2-58,8+$28#1818!$2-50,8+$28#3000!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 849964 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176); ((EVar 33), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176); ((EVar 33), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#829:4#829:4#5=#829:4,20##<?:=4+$2-80$3$4$5$6$7+$21#8$21$28+$28#3000+$28#3000+$28#1818&6+$21#10#3$?$10$11$23$22$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,27!$2-80,8+$21#8!$2-78,8#=4?>4!$2-68,8$24!$2-50,8+$24#1800!$21#10,8+$28#3000!$2-58,8$24!$21#8,8+$28#1818!$2-60,8$24!$21#,8$28'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534948 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d4be31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 849964 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d4be31.IT BndT_Na_003.SegItab_Na_d4be31.IT_sound BF NX0 BR XSTEP F0 PSS plan 849964 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azcI8.

Module LibSegNa_azcI9.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d4be31.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d4be31.IT.
Definition ENDS : list Z := [534948].
Definition STOPS1 : list Z := [534948] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7+$2-68$21$:$;$<$=$>$?$10$11$28#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",27'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$24!$21#8,8+$24#3000!$21#10,8+$24#3000'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#=4?>4!$2-80,8+$21#8!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-68,8$28!$2-60,8+$28#3000!$2-58,8+$28#3018!$2-50,8+$28#6000!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 849964 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176); ((EVar 33), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176); ((EVar 33), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#829:4#829:4#5=#829:4,20##<?:=4+$2-80$3$4$5$6$7+$21#8$21$28+$28#6000+$28#6000+$28#3018&6+$21#10#3$?$10$11$23$22$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,27!$2-80,8+$21#8!$2-78,8#=4?>4!$2-68,8$24!$2-50,8+$24#3000!$21#10,8+$28#6000!$2-58,8$24!$21#8,8+$28#3018!$2-60,8$24!$21#,8$28'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-88,8$21!$2-90,8$23!$2-98,8$22!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534948 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d4be31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 849964 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d4be31.IT BndT_Na_003.SegItab_Na_d4be31.IT_sound BF NX0 BR XSTEP F0 PSS plan 849964 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azcI9.

Module LibSegNa_azcJ.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d4be31.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d4be31.IT.
Definition ENDS : list Z := [991168].
Definition STOPS1 : list Z := [991168] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7+$21#8$21$:$;$<$=$>$?$10$11$23$22$25+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",27'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$28!$21#8,8++$28$25#18!$21#10,8+$28@#18$2:'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10'$25#18#6000&$25#8'$2:#2#800!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-78,8#=4?>4!$2-80,8+$21#8!$2-68,8$24!$2-60,8$24!$2-58,8$24!$2-50,8+$24$25!$2-48,8$21"%pstring).
Definition ss0 : sym_state := SS 850644 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-176), ELit 176)].
Definition F0L : list SR.region := [((EVar 2), (-176), 176)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#?1?<0#?1?<0#5=#?1?<0,20##=4??8+$2-70$3$4$5$6$7+$21#8$21$24$25$24#7???8000$24+&6+$2-58#3#7???8000$10$11$23$22++$28$25#18+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,27!$2-78,8#=4??8'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#,8$28!$21#8,8++$28$25#18!$21#10,8+$28@#18$2:'$24#1000#7?????????>8&$24#10'$28#1000#7?????????=0&$28#10'$25#18#6000&$25#8'$2:#2#800!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32!$2-80,8+$21#8!$2-68,8$24!$2-60,8$24!$2-58,8$24!$2-50,8+$24$25!$2-48,8$21,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d4be31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 850644 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d4be31.IT BndT_Na_003.SegItab_Na_d4be31.IT_sound BF NX0 BR XSTEP F0 PSS plan 850644 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azcJ.

End BndP_Na_039.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_003 BndT_Na_002.
Module BndP_Na_040.
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
Ltac2 kr_t_BndP_Na_040 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d4be312ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040=LibSegNa_azcK2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040=LibSegNa_azcK3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040=LibSegNa_azcK2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040=LibSegNa_azcK5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040=LibSegNa_azcK2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040=LibSegNa_azcK3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040=LibSegNa_azcK4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040=LibSegNa_azcK5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040=LibSegNa_azcK3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040?LibSegNa_azcS102BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040?LibSegNa_azcS103NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040?LibSegNa_azcS102BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040?LibSegNa_azcS105XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040?LibSegNa_azcS102F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040?LibSegNa_azcS103PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040?LibSegNa_azcS104planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040?LibSegNa_azcS105regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040?LibSegNa_azcS103kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS32BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS33NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS32BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS35XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS32F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS33PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS34planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS35regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS33kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS42BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS43NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS42BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS45XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS42F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS43PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS44planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS45regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS43kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS52BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS53NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS52BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS55XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS52F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS53PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS54planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS55regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS53kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS62BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS63NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS62BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS65XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS62F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS63PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS64planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS65regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS63kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS72BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS73NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS72BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS75XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS72F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS73PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS74planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS75regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS73kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS82BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS83NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS82BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS85XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS82F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS83PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS84planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS85regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS83kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS92BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS93NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS92BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS95XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS92F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS93PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS94planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS95regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040>LibSegNa_azcS93kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_002ASegItab_Na_8f4ba22ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040=LibSegNa_azdA2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040=LibSegNa_azdA3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040=LibSegNa_azdA2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040=LibSegNa_azdA5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040=LibSegNa_azdA2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040=LibSegNa_azdA3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040=LibSegNa_azdA4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040=LibSegNa_azdA5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040=LibSegNa_azdA3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040=LibSegNa_azdB2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040=LibSegNa_azdB3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040=LibSegNa_azdB2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040=LibSegNa_azdB5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040=LibSegNa_azdB2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040=LibSegNa_azdB3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040=LibSegNa_azdB4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040=LibSegNa_azdB5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_040=LibSegNa_azdB3kn0".

Module LibSegNa_azcK.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d4be31.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d4be31.IT.
Definition ENDS : list Z := [872492].
Definition STOPS1 : list Z := [872492] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-70$3$4$5$6$7+$21#8$9$:$;$<$=$>$?$10$11$12$13$29+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",17'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$21#8,8$29!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32"%pstring).
Definition ss0 : sym_state := SS 872440 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#=502<#=502<#5=#=502<,20#$2;$2$3$4$5$6$7$2<$2=+$29-18$;$<$=$>$?$10$11$2>$2?$30$31$32$17$18$19$1:$1;$1<$1=$1>$1?,,17!$21#8,8$29'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18($21##18!$2-8,8$2;!$2-10,8$2<!$2-18,8$2=!$2-20,8$2>!$2-28,8$2?!$2-30,8$30!$2-38,8$31!$2-40,8$32,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 872492 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d4be31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 872440 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d4be31.IT BndT_Na_003.SegItab_Na_d4be31.IT_sound BF NX0 BR XSTEP F0 PSS plan 872440 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azcK.

Module LibSegNa_azcS0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d4be31.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d4be31.IT.
Definition ENDS : list Z := [1374112].
Definition STOPS1 : list Z := [1374112] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 34); (EVar 35); EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#18!$21#10,8+$24#18'$24#1000#7?????????>8&$24#10"%pstring).
Definition ss0 : sym_state := SS 871880 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#14?7:0#14?7:0#5=#14?7:0,20##<?:54+$2-80$3$4$5$6$7#2$21#30#40#555555555555555^#:#::::::::::::::;#::::::::::::::;$?$10$11$23$22#18+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,1=!$2-80,8+$21#8!$2-78,8#=4?38!$2-48,8$21!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#18!$21#10,8+$24#18'$24#1000#7?????????>8&$24#10,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d4be31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 871880 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d4be31.IT BndT_Na_003.SegItab_Na_d4be31.IT_sound BF NX0 BR XSTEP F0 PSS plan 871880 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azcS0.

Module LibSegNa_azcS1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d4be31.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d4be31.IT.
Definition ENDS : list Z := [1374112].
Definition STOPS1 : list Z := [1374112] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 34); (EVar 35); EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#30!$21#10,8+$24#30'$24#1000#7?????????>8&$24#10"%pstring).
Definition ss0 : sym_state := SS 871880 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#14?7:0#14?7:0#5=#14?7:0,20##<?:54+$2-80$3$4$5$6$7#4$21#60#80#555555555555555^#:#::::::::::::::;#::::::::::::::;$?$10$11$23$22#30+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,1=!$2-80,8+$21#8!$2-78,8#=4?38!$2-48,8$21!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#30!$21#10,8+$24#30'$24#1000#7?????????>8&$24#10,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d4be31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 871880 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d4be31.IT BndT_Na_003.SegItab_Na_d4be31.IT_sound BF NX0 BR XSTEP F0 PSS plan 871880 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azcS1.

Module LibSegNa_azcS10.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d4be31.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d4be31.IT.
Definition ENDS : list Z := [1374112].
Definition STOPS1 : list Z := [1374112] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 34); (EVar 35); EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#6000!$21#10,8+$24#6000'$24#1000#7?????????>8&$24#10"%pstring).
Definition ss0 : sym_state := SS 871880 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#14?7:0#14?7:0#5=#14?7:0,20##<?:54+$2-80$3$4$5$6$7#800$21#<000#10000#555555555555555^#:#::::::::::::::;#::::::::::::::;$?$10$11$23$22#6000+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,1=!$2-80,8+$21#8!$2-78,8#=4?38!$2-48,8$21!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#6000!$21#10,8+$24#6000'$24#1000#7?????????>8&$24#10,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d4be31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 871880 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d4be31.IT BndT_Na_003.SegItab_Na_d4be31.IT_sound BF NX0 BR XSTEP F0 PSS plan 871880 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azcS10.

Module LibSegNa_azcS2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d4be31.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d4be31.IT.
Definition ENDS : list Z := [1374112].
Definition STOPS1 : list Z := [1374112] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 34); (EVar 35); EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#60!$21#10,8+$24#60'$24#1000#7?????????>8&$24#10"%pstring).
Definition ss0 : sym_state := SS 871880 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#14?7:0#14?7:0#5=#14?7:0,20##<?:54+$2-80$3$4$5$6$7#8$21#<0#100#555555555555555^#:#::::::::::::::;#::::::::::::::;$?$10$11$23$22#60+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,1=!$2-80,8+$21#8!$2-78,8#=4?38!$2-48,8$21!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#60!$21#10,8+$24#60'$24#1000#7?????????>8&$24#10,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d4be31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 871880 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d4be31.IT BndT_Na_003.SegItab_Na_d4be31.IT_sound BF NX0 BR XSTEP F0 PSS plan 871880 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azcS2.

Module LibSegNa_azcS3.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d4be31.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d4be31.IT.
Definition ENDS : list Z := [1374112].
Definition STOPS1 : list Z := [1374112] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 34); (EVar 35); EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#<0!$21#10,8+$24#<0'$24#1000#7?????????>8&$24#10"%pstring).
Definition ss0 : sym_state := SS 871880 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#14?7:0#14?7:0#5=#14?7:0,20##<?:54+$2-80$3$4$5$6$7#10$21#180#200#555555555555555^#:#::::::::::::::;#::::::::::::::;$?$10$11$23$22#<0+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,1=!$2-80,8+$21#8!$2-78,8#=4?38!$2-48,8$21!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#<0!$21#10,8+$24#<0'$24#1000#7?????????>8&$24#10,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d4be31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 871880 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d4be31.IT BndT_Na_003.SegItab_Na_d4be31.IT_sound BF NX0 BR XSTEP F0 PSS plan 871880 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azcS3.

Module LibSegNa_azcS4.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d4be31.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d4be31.IT.
Definition ENDS : list Z := [1374112].
Definition STOPS1 : list Z := [1374112] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 34); (EVar 35); EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#180!$21#10,8+$24#180'$24#1000#7?????????>8&$24#10"%pstring).
Definition ss0 : sym_state := SS 871880 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#14?7:0#14?7:0#5=#14?7:0,20##<?:54+$2-80$3$4$5$6$7#20$21#300#400#555555555555555^#:#::::::::::::::;#::::::::::::::;$?$10$11$23$22#180+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,1=!$2-80,8+$21#8!$2-78,8#=4?38!$2-48,8$21!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#180!$21#10,8+$24#180'$24#1000#7?????????>8&$24#10,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d4be31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 871880 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d4be31.IT BndT_Na_003.SegItab_Na_d4be31.IT_sound BF NX0 BR XSTEP F0 PSS plan 871880 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azcS4.

Module LibSegNa_azcS5.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d4be31.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d4be31.IT.
Definition ENDS : list Z := [1374112].
Definition STOPS1 : list Z := [1374112] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 34); (EVar 35); EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#300!$21#10,8+$24#300'$24#1000#7?????????>8&$24#10"%pstring).
Definition ss0 : sym_state := SS 871880 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#14?7:0#14?7:0#5=#14?7:0,20##<?:54+$2-80$3$4$5$6$7#40$21#600#800#555555555555555^#:#::::::::::::::;#::::::::::::::;$?$10$11$23$22#300+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,1=!$2-80,8+$21#8!$2-78,8#=4?38!$2-48,8$21!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#300!$21#10,8+$24#300'$24#1000#7?????????>8&$24#10,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d4be31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 871880 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d4be31.IT BndT_Na_003.SegItab_Na_d4be31.IT_sound BF NX0 BR XSTEP F0 PSS plan 871880 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azcS5.

Module LibSegNa_azcS6.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d4be31.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d4be31.IT.
Definition ENDS : list Z := [1374112].
Definition STOPS1 : list Z := [1374112] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 34); (EVar 35); EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#600!$21#10,8+$24#600'$24#1000#7?????????>8&$24#10"%pstring).
Definition ss0 : sym_state := SS 871880 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#14?7:0#14?7:0#5=#14?7:0,20##<?:54+$2-80$3$4$5$6$7#80$21#<00#1000#555555555555555^#:#::::::::::::::;#::::::::::::::;$?$10$11$23$22#600+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,1=!$2-80,8+$21#8!$2-78,8#=4?38!$2-48,8$21!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#600!$21#10,8+$24#600'$24#1000#7?????????>8&$24#10,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d4be31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 871880 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d4be31.IT BndT_Na_003.SegItab_Na_d4be31.IT_sound BF NX0 BR XSTEP F0 PSS plan 871880 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azcS6.

Module LibSegNa_azcS7.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d4be31.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d4be31.IT.
Definition ENDS : list Z := [1374112].
Definition STOPS1 : list Z := [1374112] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 34); (EVar 35); EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#<00!$21#10,8+$24#<00'$24#1000#7?????????>8&$24#10"%pstring).
Definition ss0 : sym_state := SS 871880 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#14?7:0#14?7:0#5=#14?7:0,20##<?:54+$2-80$3$4$5$6$7#100$21#1800#2000#555555555555555^#:#::::::::::::::;#::::::::::::::;$?$10$11$23$22#<00+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,1=!$2-80,8+$21#8!$2-78,8#=4?38!$2-48,8$21!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#<00!$21#10,8+$24#<00'$24#1000#7?????????>8&$24#10,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d4be31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 871880 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d4be31.IT BndT_Na_003.SegItab_Na_d4be31.IT_sound BF NX0 BR XSTEP F0 PSS plan 871880 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azcS7.

Module LibSegNa_azcS8.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d4be31.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d4be31.IT.
Definition ENDS : list Z := [1374112].
Definition STOPS1 : list Z := [1374112] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 34); (EVar 35); EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#1800!$21#10,8+$24#1800'$24#1000#7?????????>8&$24#10"%pstring).
Definition ss0 : sym_state := SS 871880 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#14?7:0#14?7:0#5=#14?7:0,20##<?:54+$2-80$3$4$5$6$7#200$21#3000#4000#555555555555555^#:#::::::::::::::;#::::::::::::::;$?$10$11$23$22#1800+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,1=!$2-80,8+$21#8!$2-78,8#=4?38!$2-48,8$21!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#1800!$21#10,8+$24#1800'$24#1000#7?????????>8&$24#10,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d4be31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 871880 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d4be31.IT BndT_Na_003.SegItab_Na_d4be31.IT_sound BF NX0 BR XSTEP F0 PSS plan 871880 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azcS8.

Module LibSegNa_azcS9.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_d4be31.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_d4be31.IT.
Definition ENDS : list Z := [1374112].
Definition STOPS1 : list Z := [1374112] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 34); (EVar 35); EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#3000!$21#10,8+$24#3000'$24#1000#7?????????>8&$24#10"%pstring).
Definition ss0 : sym_state := SS 871880 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#14?7:0#14?7:0#5=#14?7:0,20##<?:54+$2-80$3$4$5$6$7#400$21#6000#8000#555555555555555^#:#::::::::::::::;#::::::::::::::;$?$10$11$23$22#3000+&6+$21#8#3#7???8000#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,1=!$2-80,8+$21#8!$2-78,8#=4?38!$2-48,8$21!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?802000#800000000000&$2#10($2-1000#1000#&6$2#3#7???7>00#200%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24#3000!$21#10,8+$24#3000'$24#1000#7?????????>8&$24#10,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_d4be31.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 871880 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_d4be31.IT BndT_Na_003.SegItab_Na_d4be31.IT_sound BF NX0 BR XSTEP F0 PSS plan 871880 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azcS9.

Module LibSegNa_azdA.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_8f4ba2.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_8f4ba2.IT.
Definition ENDS : list Z := [534948].
Definition STOPS1 : list Z := [534948] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",15'$2#7???7?802000#800000000000&$2#10($2-1000#1000%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24$25!$21#10,8$29'$24#1000#7?????????>8&$24#10'$25##<000&$25#8'$29#1018#7???????????'&1$29+$24$25##<000"%pstring).
Definition ss0 : sym_state := SS 790184 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-16), ELit 16)].
Definition F0L : list SR.region := [((EVar 2), (-16), 16)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#829:4#829:4#5=#829:4,20##<0?14+$2-10$3$4$5$6$7$8$9$24$29+$24$25$29&6+$21#8#3$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,17!$2-10,8$8!$2-8,8$1'$2#7???7?802000#800000000000&$2#10($2-1000#1000%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$21#6;6000#7?????????=?&$21#8)##7???7000#100000001000$21##18#&6$21#3#7???8000#3)$2-1000#1000$21##18)##10000#6:6000$21##18!$21#,8$24!$21#8,8+$24$25!$21#10,8$29'$24#1000#7?????????>8&$24#10'$25##<000&$25#8'$29#1018#7???????????'&1$29+$24$25##<000,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 534948 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_8f4ba2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 790184 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_8f4ba2.IT BndT_Na_002.SegItab_Na_8f4ba2.IT_sound BF NX0 BR XSTEP F0 PSS plan 790184 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azdA.

Module LibSegNa_azdB.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_8f4ba2.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_8f4ba2.IT.
Definition ENDS : list Z := [790304].
Definition STOPS1 : list Z := [790304] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-10$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332491264 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-4096)) (ELit 4096);
   KWord (SA (EVar 2) (-8)) 8 (EVar 43);
   KWord (SA (EVar 2) (-16)) 8 (EVar 44)].
Definition ss0 : sym_state := SS 790292 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<0?20#<0?20#5=#<0?20,20#$2;$2$3$4$5$6$7$2<$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$2#7???7?802000#800000000000&$2#10($2-1000#1000!$2-8,8$2;!$2-10,8$2<,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 790304 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_8f4ba2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 790292 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_8f4ba2.IT BndT_Na_002.SegItab_Na_8f4ba2.IT_sound BF NX0 BR XSTEP F0 PSS plan 790292 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_azdB.

End BndP_Na_040.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_001.
Module BndP_Na_015.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_001.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Na_015 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_001ASegItab_Na_5e975f2ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAa02BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAa03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAa02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAa05XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAa02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAa03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAa04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAa05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAa03kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015@LibSegNa_aveAa162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015@LibSegNa_aveAa163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015@LibSegNa_aveAa162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015@LibSegNa_aveAa165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015@LibSegNa_aveAa162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015@LibSegNa_aveAa163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015@LibSegNa_aveAa164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015@LibSegNa_aveAa165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015@LibSegNa_aveAa163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAb12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAb13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAb12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAb15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAb12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAb13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAb14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAb15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAb13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAb22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAb23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAb22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAb25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAb22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAb23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAb24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAb25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAb23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015>LibSegNa_aveAc2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015>LibSegNa_aveAc3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015>LibSegNa_aveAc2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015>LibSegNa_aveAc5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015>LibSegNa_aveAc2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015>LibSegNa_aveAc3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015>LibSegNa_aveAc4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015>LibSegNa_aveAc5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015>LibSegNa_aveAc3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAp12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAp13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAp12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAp15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAp12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAp13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAp14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAp15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAp13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAp22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAp23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAp22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAp25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAp22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAp23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAp24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAp25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAp23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAq12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAq13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAq12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAq15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAq12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAq13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAq14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAq15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAq13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAq22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAq23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAq22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAq25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAq22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAq23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAq24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAq25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveAq23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015@LibSegNa_aveAq2w2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015@LibSegNa_aveAq2w3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015@LibSegNa_aveAq2w2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015@LibSegNa_aveAq2w5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015@LibSegNa_aveAq2w2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015@LibSegNa_aveAq2w3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015@LibSegNa_aveAq2w4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015@LibSegNa_aveAq2w5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015@LibSegNa_aveAq2w3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015>LibSegNa_aveAx2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015>LibSegNa_aveAx3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015>LibSegNa_aveAx2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015>LibSegNa_aveAx5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015>LibSegNa_aveAx2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015>LibSegNa_aveAx3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015>LibSegNa_aveAx4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015>LibSegNa_aveAx5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015>LibSegNa_aveAx3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_001ASegItab_Na_56303d2ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveOa02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveOa03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveOa02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveOa05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveOa02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveOa03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveOa04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveOa05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveOa03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015@LibSegNa_aveOa162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015@LibSegNa_aveOa163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015@LibSegNa_aveOa162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015@LibSegNa_aveOa165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015@LibSegNa_aveOa162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015@LibSegNa_aveOa163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015@LibSegNa_aveOa164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015@LibSegNa_aveOa165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015@LibSegNa_aveOa163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveOb12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveOb13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveOb12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveOb15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveOb12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveOb13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveOb14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveOb15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_015?LibSegNa_aveOb13kn0".

Module LibSegNa_aveAa0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_5e975f.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_5e975f.IT.
Definition ENDS : list Z := [412000].
Definition STOPS1 : list Z := [412000; 793904] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; (EVar 2); EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",8%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20($2-80#80'$:#6;6000#7?????????<8'$<#6;6000#7??????????0"%pstring).
Definition ss0 : sym_state := SS 793780 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#64960#<1=30#64960#5=#64960,20##<1=28+$2-80$3$4$5$6$7$2+$2-80#60#15?:78#1$=$>$?$10$11$12$<$14$:$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,16!$2-68,8$1;!$2-60,8$1:!$2-58,8$19!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1!$2-80,8#%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20($2-80#80'$:#6;6000#7?????????<8'$<#6;6000#7??????????0,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_5e975f.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 793780 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_5e975f.IT BndT_Na_001.SegItab_Na_5e975f.IT_sound BF NX0 BR XSTEP F0 PSS plan 793780 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aveAa0.

Module LibSegNa_aveAa16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_5e975f.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_5e975f.IT.
Definition ENDS : list Z := [412000].
Definition STOPS1 : list Z := [412000; 793904] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2#10$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",8%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20($2-80#90'$:#6;6000#7?????????<8'$<#6;6000#7??????????0"%pstring).
Definition ss0 : sym_state := SS 793780 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-128), ELit 144)].
Definition F0L : list SR.region := [((EVar 2), (-128), 144)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#64960#<1=30#64960#5=#64960,20##<1=28+$2-80$3$4$5$6$7+$2#10+$2-80#60#15?:78#1$=$>$?$10$11$12$<$14$:$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,16!$2-58,8$1;!$2-50,8$1:!$2-48,8$19!$2-40,8$18!$2-38,8$17!$2-30,8$16!$2-28,8$15!$2-20,8$14!$2-18,8$13!$2-10,8$12!$2-8,8$9!$2#,8$8!$2#8,8$1!$2-70,8#%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20($2-80#90'$:#6;6000#7?????????<8'$<#6;6000#7??????????0,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_5e975f.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 793780 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_5e975f.IT BndT_Na_001.SegItab_Na_5e975f.IT_sound BF NX0 BR XSTEP F0 PSS plan 793780 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aveAa16.

Module LibSegNa_aveAb1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_5e975f.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_5e975f.IT.
Definition ENDS : list Z := [794104].
Definition STOPS1 : list Z := [794104; 794560] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$44+$2-80$3$4$46$47$48$34+$2-80$32$49$42$4:$4;$4<$4=$4>$12$<$14$:$16$17$18#7???8000$1:$1;$4?$45$30$31"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1>%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20($2-70#8'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80)$2-80#90$32##80)$32##80$:##38($32##18(+&6$32#3#7???8000##<'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-80#90$:##38#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$26#8&$27#8'+$27@-1$26#18#186:0)&6+$:#18#3#7???8000#1+&6$32#3#7???8000##<)&6+$:#20#3#7???8000#1+&6$32#3#7???8000##<"%pstring).
Definition ss0 : sym_state := SS 793896 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-112), ELit 8); ((EVar 50), (0), ELit 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), ELit 12)].
Definition F0L : list SR.region := [((EVar 2), (-112), 8); ((EVar 50), (0), 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), 12)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#<1=?8#<1?<0#<1=?8#5=#<1=?8,20#$44+$2-80$3$4$46$47$48$34+$2-80##12796$27$26^#?#??????????????8^#?#??????????????1$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31,,2=!$2-70,8$32!&6$32#3#7???800;,1^#?#??????????????3!&6$32#3#7???800:,1^#?#??????????????3!&6$32#3#7???8009,1^#?#??????????????3!&6$32#3#7???8008,1^#?#??????????????3!&6$32#3#7???8007,1^#?#??????????????3!&6$32#3#7???8006,1^#?#??????????????8!&6$32#3#7???8005,1^#?#??????????????8!&6$32#3#7???8004,1^#?#??????????????8!&6$32#3#7???8003,1^#?#??????????????1!&6$32#3#7???8002,1^#?#??????????????1!&6$32#3#7???8001,1^#?#??????????????1!&6$32#3#7???8000,1^#?#??????????????1!$32#10,8#<1<;4!$32#8,8#12796!$32#,8#41;58:;3%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20($2-70#8'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80)$2-80#90$32##80)$32##80$:##38($32##18(+&6$32#3#7???8000##<'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38($:##38)$2-80#90$:##38#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$26#8&$27#8'+$27@-1$26#18#186:0)&6+$:#18#3#7???8000#1+&6$32#3#7???8000##<)&6+$:#20#3#7???8000#1+&6$32#3#7???8000##<,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 794104 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_5e975f.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 793896 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_5e975f.IT BndT_Na_001.SegItab_Na_5e975f.IT_sound BF NX0 BR XSTEP F0 PSS plan 793896 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aveAb1.

Module LibSegNa_aveAb2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_5e975f.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_5e975f.IT.
Definition ENDS : list Z := [794208].
Definition STOPS1 : list Z := [794208] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$44+$2-80$3$4$46$47$48$34+$2-80$43$49$27$26$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",20%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-80#90$:##38#&6+$:#30#3#7???8000#1!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$26#8&$27#8'+$27@-1$26#18#186:0)$27-18#18$:##38)##7???7000#100000001000$27-18#18!$27-18,4$25'$25##????????!$27-10,8$2;'$2;#^#?#???????????????!$27-8,8$2:'$2:#^#?#???????????????#&6+$27-18#3#7???8000#1#&6+$27-10#3#7???8000#1#&6+$27-8#3#7???8000#1!$:#30,4$24'$24#1#1000"%pstring).
Definition ss0 : sym_state := SS 794104 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 10), (48), ELit 4)].
Definition F0L : list SR.region := [((EVar 10), (48), 4)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<1>60#<1>60#5=#<1>60,20#$44+$2-80$3$4$46$47$48$34+$2-80+$27-18$2;$27$26],,4$25$2:$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31,,20!$:#30,4+$24-1%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-80#90$:##38#&6+$:#30#3#7???8000#1!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$26#8&$27#8'+$27@-1$26#18#186:0)$27-18#18$:##38)##7???7000#100000001000$27-18#18!$27-18,4$25'$25##????????!$27-10,8$2;'$2;#^#?#???????????????!$27-8,8$2:'$2:#^#?#???????????????#&6+$27-18#3#7???8000#1#&6+$27-10#3#7???8000#1#&6+$27-8#3#7???8000#1'$24#1#1000,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 794208 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_5e975f.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 794104 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_5e975f.IT BndT_Na_001.SegItab_Na_5e975f.IT_sound BF NX0 BR XSTEP F0 PSS plan 794104 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aveAb2.

Module LibSegNa_aveAc.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_5e975f.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_5e975f.IT.
Definition ENDS : list Z := [810712].
Definition STOPS1 : list Z := [810712] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$44+$2-80$3$4$46$47$48$34+$2-80$43$2=$42$4:$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8'$32#6;6000#7?????????80&$32#20'$2=#6#7'$<#6;6000#7??????????0"%pstring).
Definition ss0 : sym_state := SS 794236 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<5>=8#<5>=8#5=#<5>=8,20##<1>84+$2-80$3$4$46$47$48$34+$2-80$<$2=$42$4:$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31,,;%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8'$32#6;6000#7?????????80&$32#20'$2=#6#7'$<#6;6000#7??????????0,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_5e975f.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 794236 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_5e975f.IT BndT_Na_001.SegItab_Na_5e975f.IT_sound BF NX0 BR XSTEP F0 PSS plan 794236 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aveAc.

Module LibSegNa_aveAp1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_5e975f.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_5e975f.IT.
Definition ENDS : list Z := [794476].
Definition STOPS1 : list Z := [794476] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$44+$2-80$3$4$46$47$48$34+$2-80+$27-18$49$27$26$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",15%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-80#90$:##38#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1#&6+$:#30#3#7???8000#1!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$26#8&$27#8'+$27@-1$26#18#186:0"%pstring).
Definition ss0 : sym_state := SS 794456 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<1?6<#<1?6<#5=#<1?6<,20#$44+$2-80$3$4$46$47$48$34+$2-80+$27-18^#:#::::::::::::::;+@-1$26$27$26$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31,,15%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-80#90$:##38#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1#&6+$:#30#3#7???8000#1!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$26#8&$27#8'+$27@-1$26#18#186:0,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 794476 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_5e975f.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 794456 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_5e975f.IT BndT_Na_001.SegItab_Na_5e975f.IT_sound BF NX0 BR XSTEP F0 PSS plan 794456 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aveAp1.

Module LibSegNa_aveAp2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_5e975f.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_5e975f.IT.
Definition ENDS : list Z := [812400].
Definition STOPS1 : list Z := [812400] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$44+$2-80$3$4$46$47$48$34+$2-80+$27-18$2<$42$26$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",16%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-80#90$:##38#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1#&6+$:#30#3#7???8000#1!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$26#8&$27#8'+$27@-1$26#18#186:0'$2<#1#1388"%pstring).
Definition ss0 : sym_state := SS 794484 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 10), (32), ELit 8)].
Definition F0L : list SR.region := [((EVar 10), (32), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6570#<6570#5=#<6570,20##<1?80+$2-80$3$4$46$47$48$34+$2-80+$:#18$2<$42$26$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31,,16!$:#20,8+$27-18%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-80#90$:##38#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1#&6+$:#30#3#7???8000#1!$:#18,8$26'$26#1000#800000000000'$27#1018#800000000000&$26#8&$27#8'+$27@-1$26#18#186:0'$2<#1#1388,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 812400 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_5e975f.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 794484 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_5e975f.IT BndT_Na_001.SegItab_Na_5e975f.IT_sound BF NX0 BR XSTEP F0 PSS plan 794484 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aveAp2.

Module LibSegNa_aveAq1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_5e975f.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_5e975f.IT.
Definition ENDS : list Z := [794244].
Definition STOPS1 : list Z := [794244] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$44+$2-80$3$4$46$47$48$34+$2-80$43$49$42$4:$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-80#90$:##38#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1#&6+$:#30#3#7???8000#1!$:#18,8$26!$:#20,8$26'$26#1000#800000000000"%pstring).
Definition ss0 : sym_state := SS 794496 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<1>84#<1>84#5=#<1>84,20#$44+$2-80$3$4$46$47$48$34+$2-80$26$26$42$4:$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31,,11%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-80#90$:##38#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1#&6+$:#30#3#7???8000#1!$:#18,8$26!$:#20,8$26'$26#1000#800000000000,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 794244 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_5e975f.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 794496 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_5e975f.IT BndT_Na_001.SegItab_Na_5e975f.IT_sound BF NX0 BR XSTEP F0 PSS plan 794496 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aveAq1.

Module LibSegNa_aveAq2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_5e975f.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_5e975f.IT.
Definition ENDS : list Z := [794244].
Definition STOPS1 : list Z := [794244] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$44+$2-80$3$4$46$47$48$34+$2-80$43$49$42$4:$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1<%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-80#90$:##38#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1#&6+$:#30#3#7???8000#1!$:#18,8$26!$:#20,8$2>'$26#1000#800000000000'$2>#1018#800000000000&$2>#8'+$2>@-1$26#18#186:0($2>-8#8)##7???7000#100000001000$2>-8#8#&6+$2>-8#3#7???8000#1)$2>-8#8$2-80#90)$2>-8#8$:##38)$2>-8#8$32##80!$2>-8,8$2?'$2?#^#?#??????????????>"%pstring).
Definition ss0 : sym_state := SS 794496 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 46), (-8), ELit 8)].
Definition F0L : list SR.region := [((EVar 46), (-8), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<1>84#<1>84#5=#<1>84,20#$44+$2-80$3$4$46$47$48$34+$2-80+$2>-8+$2?#1$42$4:$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31,,19!$2>-8,8+$2?#1'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-80#90$:##38#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1#&6+$:#30#3#7???8000#1!$:#18,8$26!$:#20,8$2>'$26#1000#800000000000'$2>#1018#800000000000&$2>#8'+$2>@-1$26#18#186:0($2>-8#8)##7???7000#100000001000$2>-8#8#&6+$2>-8#3#7???8000#1)$2>-8#8$2-80#90)$2>-8#8$:##38)$2>-8#8$32##80'$2?#^#?#??????????????>,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 794244 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_5e975f.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 794496 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_5e975f.IT BndT_Na_001.SegItab_Na_5e975f.IT_sound BF NX0 BR XSTEP F0 PSS plan 794496 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aveAq2.

Module LibSegNa_aveAq2w.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_5e975f.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_5e975f.IT.
Definition ENDS : list Z := [794244].
Definition STOPS1 : list Z := [794244] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$44+$2-80$3$4$46$47$48$34+$2-80$43$49$42$4:$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1;%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-80#90$:##38#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1#&6+$:#30#3#7???8000#1!$:#18,8$26!$:#20,8$2>'$26#1000#800000000000'$2>#1018#800000000000&$2>#8'+$2>@-1$26#18#186:0($2>-8#8)##7???7000#100000001000$2>-8#8#&6+$2>-8#3#7???8000#1)$2>-8#8$2-80#90)$2>-8#8$:##38)$2>-8#8$32##80!$2>-8,8^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 794496 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 46), (-8), ELit 8)].
Definition F0L : list SR.region := [((EVar 46), (-8), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<1>84#<1>84#5=#<1>84,20#$44+$2-80$3$4$46$47$48$34+$2-80+$2>-8#$42$4:$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31,,18!$2>-8,8#'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-80#90$:##38#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1#&6+$:#30#3#7???8000#1!$:#18,8$26!$:#20,8$2>'$26#1000#800000000000'$2>#1018#800000000000&$2>#8'+$2>@-1$26#18#186:0($2>-8#8)##7???7000#100000001000$2>-8#8#&6+$2>-8#3#7???8000#1)$2>-8#8$2-80#90)$2>-8#8$:##38)$2>-8#8$32##80,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 794244 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_5e975f.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 794496 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_5e975f.IT BndT_Na_001.SegItab_Na_5e975f.IT_sound BF NX0 BR XSTEP F0 PSS plan 794496 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aveAq2w.

Module LibSegNa_aveAx.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_5e975f.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_5e975f.IT.
Definition ENDS : list Z := [794452].
Definition STOPS1 : list Z := [794452] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$44+$2-80$3$4$46$47$48$34+$2-80$43$49$42$4:$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",20%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$:#6;6000#7?????????<8&$:#8'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##8(+&6$32#3#7???8000##10!$32#78,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##80$33##1'$34#7???7?801060#800000000000&$34#10!$34-8,8$35!$34-10,8$36!$34-18,8$37!$34-20,8$38!$34-28,8$39!$34-30,8$3:!$34-38,8$3;!$34-40,8$3<!$34-48,8$3=!$34-50,8$3>!$34-58,8$3?!$34-60,8$40!$34-68,8$41)+$34-80##80$32##80)+$34-80##80$33##1"%pstring).
Definition ss0 : sym_state := SS 794244 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<1?54#<1?54#5=#<1?54,20#$35$34$3$4$46$47$48$36$37#1$49$42$4:$4;$4<$4=$4>$38$39$3:$3;$3<$3=$3>$3?$40$41$4?$45$30$31,,2?!$33#,1#!&6$32#3#7???800;,1^#?#??????????????5!&6$32#3#7???800:,1^#?#??????????????5!&6$32#3#7???8009,1^#?#??????????????5!&6$32#3#7???8008,1^#?#??????????????5!&6$32#3#7???800?,1^#?#??????????????5!&6$32#3#7???800>,1^#?#??????????????5!&6$32#3#7???800=,1^#?#??????????????5!&6$32#3#7???800<,1^#?#??????????????5!&6$32#3#7???8003,1^#?#??????????????5!&6$32#3#7???8002,1^#?#??????????????5!&6$32#3#7???8001,1^#?#??????????????5!&6$32#3#7???8000,1^#?#??????????????5!&6$32#3#7???8007,1^#?#??????????????5!&6$32#3#7???8006,1^#?#??????????????5!&6$32#3#7???8005,1^#?#??????????????5!&6$32#3#7???8004,1^#?#??????????????5!$32#,8#45>0360>'$:#6;6000#7?????????<8&$:#8'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##8(+&6$32#3#7???8000##10!$32#78,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##80$33##1'$34#7???7?801060#800000000000&$34#10!$34-8,8$35!$34-10,8$36!$34-18,8$37!$34-20,8$38!$34-28,8$39!$34-30,8$3:!$34-38,8$3;!$34-40,8$3<!$34-48,8$3=!$34-50,8$3>!$34-58,8$3?!$34-60,8$40!$34-68,8$41)+$34-80##80$32##80)+$34-80##80$33##1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 794452 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_5e975f.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 794244 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_5e975f.IT BndT_Na_001.SegItab_Na_5e975f.IT_sound BF NX0 BR XSTEP F0 PSS plan 794244 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aveAx.

Module LibSegNa_aveOa0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_56303d.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_56303d.IT.
Definition ENDS : list Z := [412000].
Definition STOPS1 : list Z := [412000; 797420] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; (EVar 2); EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",8%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20($2-80#80'$:#6;6000#7?????????<8'$<#6;6000#7??????????0"%pstring).
Definition ss0 : sym_state := SS 797296 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#64960#<2:><#64960#5=#64960,20##<2:>4+$2-80$3$4$5$6$7$2+$2-80#60#15?:78#1$=$>$?$10$11$12$<$14$:$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,16!$2-68,8$1;!$2-60,8$1:!$2-58,8$19!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1!$2-80,8#%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20($2-80#80'$:#6;6000#7?????????<8'$<#6;6000#7??????????0,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_56303d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 797296 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_56303d.IT BndT_Na_001.SegItab_Na_56303d.IT_sound BF NX0 BR XSTEP F0 PSS plan 797296 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aveOa0.

Module LibSegNa_aveOa16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_56303d.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_56303d.IT.
Definition ENDS : list Z := [412000].
Definition STOPS1 : list Z := [412000; 797420] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2#10$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",8%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20($2-80#90'$:#6;6000#7?????????<8'$<#6;6000#7??????????0"%pstring).
Definition ss0 : sym_state := SS 797296 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-128), ELit 144)].
Definition F0L : list SR.region := [((EVar 2), (-128), 144)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#64960#<2:><#64960#5=#64960,20##<2:>4+$2-80$3$4$5$6$7+$2#10+$2-80#60#15?:78#1$=$>$?$10$11$12$<$14$:$16$17$18#7???8000$1:$1;$1<$1=$1>$1?,,16!$2-58,8$1;!$2-50,8$1:!$2-48,8$19!$2-40,8$18!$2-38,8$17!$2-30,8$16!$2-28,8$15!$2-20,8$14!$2-18,8$13!$2-10,8$12!$2-8,8$9!$2#,8$8!$2#8,8$1!$2-70,8#%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20($2-80#90'$:#6;6000#7?????????<8'$<#6;6000#7??????????0,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_56303d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 797296 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_56303d.IT BndT_Na_001.SegItab_Na_56303d.IT_sound BF NX0 BR XSTEP F0 PSS plan 797296 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aveOa16.

Module LibSegNa_aveOb1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_56303d.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_56303d.IT.
Definition ENDS : list Z := [797620].
Definition STOPS1 : list Z := [797620; 798076] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$44+$2-80$3$4$46$47$48$34+$2-80$32$49$42$4:$4;$4<$4=$4>$12$<$14$:$16$17$18#7???8000$1:$1;$4?$45$30$31"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1>%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20($2-70#8'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80)$2-80#90$32##80)$32##80$:##38($32##18(+&6$32#3#7???8000##<'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-80#90$:##38#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$26#8&$27#8'+$27@-1$26#18#186:0)&6+$:#18#3#7???8000#1+&6$32#3#7???8000##<)&6+$:#20#3#7???8000#1+&6$32#3#7???8000##<"%pstring).
Definition ss0 : sym_state := SS 797412 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-112), ELit 8); ((EVar 50), (0), ELit 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), ELit 12)].
Definition F0L : list SR.region := [((EVar 2), (-112), 8); ((EVar 50), (0), 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), 12)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#<2;;4#<2=7<#<2;;4#5=#<2;;4,20#$44+$2-80$3$4$46$47$48$34+$2-80##1<;81$27$26^#?#??????????????8^#?#??????????????1$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31,,2=!$2-70,8$32!&6$32#3#7???800;,1^#?#??????????????3!&6$32#3#7???800:,1^#?#??????????????3!&6$32#3#7???8009,1^#?#??????????????3!&6$32#3#7???8008,1^#?#??????????????3!&6$32#3#7???8007,1^#?#??????????????3!&6$32#3#7???8006,1^#?#??????????????8!&6$32#3#7???8005,1^#?#??????????????8!&6$32#3#7???8004,1^#?#??????????????8!&6$32#3#7???8003,1^#?#??????????????1!&6$32#3#7???8002,1^#?#??????????????1!&6$32#3#7???8001,1^#?#??????????????1!&6$32#3#7???8000,1^#?#??????????????1!$32#10,8#<2:70!$32#8,8#1<;81!$32#,8#41;58:;3%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20($2-70#8'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80)$2-80#90$32##80)$32##80$:##38($32##18(+&6$32#3#7???8000##<'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38($:##38)$2-80#90$:##38#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$26#8&$27#8'+$27@-1$26#18#186:0)&6+$:#18#3#7???8000#1+&6$32#3#7???8000##<)&6+$:#20#3#7???8000#1+&6$32#3#7???8000##<,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 797620 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_56303d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 797412 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_56303d.IT BndT_Na_001.SegItab_Na_56303d.IT_sound BF NX0 BR XSTEP F0 PSS plan 797412 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aveOb1.

End BndP_Na_015.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_001 BndT_Na_000.
Module BndP_Na_016.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_001 BndT_Na_000.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Na_016 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_001ASegItab_Na_56303d2ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOb22BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOb23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOb22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOb25XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOb22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOb23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOb24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOb25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOb23kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016>LibSegNa_aveOc2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016>LibSegNa_aveOc3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016>LibSegNa_aveOc2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016>LibSegNa_aveOc5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016>LibSegNa_aveOc2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016>LibSegNa_aveOc3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016>LibSegNa_aveOc4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016>LibSegNa_aveOc5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016>LibSegNa_aveOc3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOp12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOp13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOp12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOp15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOp12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOp13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOp14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOp15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOp13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOp22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOp23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOp22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOp25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOp22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOp23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOp24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOp25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOp23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOq12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOq13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOq12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOq15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOq12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOq13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOq14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOq15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOq13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOq22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOq23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOq22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOq25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOq22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOq23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOq24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOq25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aveOq23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aveOq2w2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aveOq2w3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aveOq2w2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aveOq2w5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aveOq2w2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aveOq2w3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aveOq2w4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aveOq2w5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aveOq2w3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016>LibSegNa_aveOx2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016>LibSegNa_aveOx3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016>LibSegNa_aveOx2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016>LibSegNa_aveOx5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016>LibSegNa_aveOx2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016>LibSegNa_aveOx3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016>LibSegNa_aveOx4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016>LibSegNa_aveOx5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016>LibSegNa_aveOx3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_000ASegItab_Na_3293a72ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAn162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAn163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAn162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAn165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAn162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAn163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAn164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAn165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAn163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAn322BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAn323NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAn322BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAn325XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAn322F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAn323PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAn324planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAn325regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAn323kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aviAn52BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aviAn53NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aviAn52BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aviAn55XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aviAn52F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aviAn53PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aviAn54planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aviAn55regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aviAn53kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAn642BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAn643NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAn642BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAn645XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAn642F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAn643PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAn644planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAn645regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAn643kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aviAn82BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aviAn83NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aviAn82BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aviAn85XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aviAn82F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aviAn83PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aviAn84planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aviAn85regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016?LibSegNa_aviAn83kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAp162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAp163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAp162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAp165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAp162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAp163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAp164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAp165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_016@LibSegNa_aviAp163kn0".

Module LibSegNa_aveOb2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_56303d.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_56303d.IT.
Definition ENDS : list Z := [797724].
Definition STOPS1 : list Z := [797724] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$44+$2-80$3$4$46$47$48$34+$2-80$43$49$27$26$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",20%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-80#90$:##38#&6+$:#30#3#7???8000#1!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$26#8&$27#8'+$27@-1$26#18#186:0)$27-18#18$:##38)##7???7000#100000001000$27-18#18!$27-18,4$25'$25##????????!$27-10,8$2;'$2;#^#?#???????????????!$27-8,8$2:'$2:#^#?#???????????????#&6+$27-18#3#7???8000#1#&6+$27-10#3#7???8000#1#&6+$27-8#3#7???8000#1!$:#30,4$24'$24#1#1000"%pstring).
Definition ss0 : sym_state := SS 797620 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 10), (48), ELit 4)].
Definition F0L : list SR.region := [((EVar 10), (48), 4)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<2<1<#<2<1<#5=#<2<1<,20#$44+$2-80$3$4$46$47$48$34+$2-80+$27-18$2;$27$26],,4$25$2:$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31,,20!$:#30,4+$24-1%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-80#90$:##38#&6+$:#30#3#7???8000#1!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$26#8&$27#8'+$27@-1$26#18#186:0)$27-18#18$:##38)##7???7000#100000001000$27-18#18!$27-18,4$25'$25##????????!$27-10,8$2;'$2;#^#?#???????????????!$27-8,8$2:'$2:#^#?#???????????????#&6+$27-18#3#7???8000#1#&6+$27-10#3#7???8000#1#&6+$27-8#3#7???8000#1'$24#1#1000,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 797724 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_56303d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 797620 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_56303d.IT BndT_Na_001.SegItab_Na_56303d.IT_sound BF NX0 BR XSTEP F0 PSS plan 797620 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aveOb2.

Module LibSegNa_aveOc.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_56303d.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_56303d.IT.
Definition ENDS : list Z := [810712].
Definition STOPS1 : list Z := [810712] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$44+$2-80$3$4$46$47$48$34+$2-80$43$2=$42$4:$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8'$32#6;6000#7?????????80&$32#20'$2=#6#7'$<#6;6000#7??????????0"%pstring).
Definition ss0 : sym_state := SS 797752 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<5>=8#<5>=8#5=#<5>=8,20##<2<40+$2-80$3$4$46$47$48$34+$2-80$<$2=$42$4:$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31,,;%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8'$32#6;6000#7?????????80&$32#20'$2=#6#7'$<#6;6000#7??????????0,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_56303d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 797752 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_56303d.IT BndT_Na_001.SegItab_Na_56303d.IT_sound BF NX0 BR XSTEP F0 PSS plan 797752 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aveOc.

Module LibSegNa_aveOp1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_56303d.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_56303d.IT.
Definition ENDS : list Z := [797992].
Definition STOPS1 : list Z := [797992] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$44+$2-80$3$4$46$47$48$34+$2-80+$27-18$49$27$26$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",15%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-80#90$:##38#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1#&6+$:#30#3#7???8000#1!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$26#8&$27#8'+$27@-1$26#18#186:0"%pstring).
Definition ss0 : sym_state := SS 797972 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<2=28#<2=28#5=#<2=28,20#$44+$2-80$3$4$46$47$48$34+$2-80+$27-18^#:#::::::::::::::;+@-1$26$27$26$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31,,15%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-80#90$:##38#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1#&6+$:#30#3#7???8000#1!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$26#8&$27#8'+$27@-1$26#18#186:0,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 797992 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_56303d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 797972 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_56303d.IT BndT_Na_001.SegItab_Na_56303d.IT_sound BF NX0 BR XSTEP F0 PSS plan 797972 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aveOp1.

Module LibSegNa_aveOp2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_56303d.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_56303d.IT.
Definition ENDS : list Z := [812400].
Definition STOPS1 : list Z := [812400] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$44+$2-80$3$4$46$47$48$34+$2-80+$27-18$2<$42$26$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",16%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-80#90$:##38#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1#&6+$:#30#3#7???8000#1!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$26#8&$27#8'+$27@-1$26#18#186:0'$2<#1#1388"%pstring).
Definition ss0 : sym_state := SS 798000 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 10), (32), ELit 8)].
Definition F0L : list SR.region := [((EVar 10), (32), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6570#<6570#5=#<6570,20##<2=3<+$2-80$3$4$46$47$48$34+$2-80+$:#18$2<$42$26$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31,,16!$:#20,8+$27-18%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-80#90$:##38#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1#&6+$:#30#3#7???8000#1!$:#18,8$26'$26#1000#800000000000'$27#1018#800000000000&$26#8&$27#8'+$27@-1$26#18#186:0'$2<#1#1388,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 812400 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_56303d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 798000 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_56303d.IT BndT_Na_001.SegItab_Na_56303d.IT_sound BF NX0 BR XSTEP F0 PSS plan 798000 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aveOp2.

Module LibSegNa_aveOq1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_56303d.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_56303d.IT.
Definition ENDS : list Z := [797760].
Definition STOPS1 : list Z := [797760] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$44+$2-80$3$4$46$47$48$34+$2-80$43$49$42$4:$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-80#90$:##38#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1#&6+$:#30#3#7???8000#1!$:#18,8$26!$:#20,8$26'$26#1000#800000000000"%pstring).
Definition ss0 : sym_state := SS 798012 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<2<40#<2<40#5=#<2<40,20#$44+$2-80$3$4$46$47$48$34+$2-80$26$26$42$4:$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31,,11%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-80#90$:##38#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1#&6+$:#30#3#7???8000#1!$:#18,8$26!$:#20,8$26'$26#1000#800000000000,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 797760 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_56303d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 798012 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_56303d.IT BndT_Na_001.SegItab_Na_56303d.IT_sound BF NX0 BR XSTEP F0 PSS plan 798012 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aveOq1.

Module LibSegNa_aveOq2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_56303d.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_56303d.IT.
Definition ENDS : list Z := [797760].
Definition STOPS1 : list Z := [797760] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$44+$2-80$3$4$46$47$48$34+$2-80$43$49$42$4:$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1<%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-80#90$:##38#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1#&6+$:#30#3#7???8000#1!$:#18,8$26!$:#20,8$2>'$26#1000#800000000000'$2>#1018#800000000000&$2>#8'+$2>@-1$26#18#186:0($2>-8#8)##7???7000#100000001000$2>-8#8#&6+$2>-8#3#7???8000#1)$2>-8#8$2-80#90)$2>-8#8$:##38)$2>-8#8$32##80!$2>-8,8$2?'$2?#^#?#??????????????>"%pstring).
Definition ss0 : sym_state := SS 798012 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 46), (-8), ELit 8)].
Definition F0L : list SR.region := [((EVar 46), (-8), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<2<40#<2<40#5=#<2<40,20#$44+$2-80$3$4$46$47$48$34+$2-80+$2>-8+$2?#1$42$4:$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31,,19!$2>-8,8+$2?#1'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-80#90$:##38#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1#&6+$:#30#3#7???8000#1!$:#18,8$26!$:#20,8$2>'$26#1000#800000000000'$2>#1018#800000000000&$2>#8'+$2>@-1$26#18#186:0($2>-8#8)##7???7000#100000001000$2>-8#8#&6+$2>-8#3#7???8000#1)$2>-8#8$2-80#90)$2>-8#8$:##38)$2>-8#8$32##80'$2?#^#?#??????????????>,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 797760 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_56303d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 798012 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_56303d.IT BndT_Na_001.SegItab_Na_56303d.IT_sound BF NX0 BR XSTEP F0 PSS plan 798012 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aveOq2.

Module LibSegNa_aveOq2w.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_56303d.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_56303d.IT.
Definition ENDS : list Z := [797760].
Definition STOPS1 : list Z := [797760] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$44+$2-80$3$4$46$47$48$34+$2-80$43$49$42$4:$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1;%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-80#90$:##38#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1#&6+$:#30#3#7???8000#1!$:#18,8$26!$:#20,8$2>'$26#1000#800000000000'$2>#1018#800000000000&$2>#8'+$2>@-1$26#18#186:0($2>-8#8)##7???7000#100000001000$2>-8#8#&6+$2>-8#3#7???8000#1)$2>-8#8$2-80#90)$2>-8#8$:##38)$2>-8#8$32##80!$2>-8,8^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 798012 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 46), (-8), ELit 8)].
Definition F0L : list SR.region := [((EVar 46), (-8), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<2<40#<2<40#5=#<2<40,20#$44+$2-80$3$4$46$47$48$34+$2-80+$2>-8#$42$4:$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31,,18!$2>-8,8#'$2#7???7?801060#800000000000&$2#20'$:#6;6000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-80#90$:##38#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1#&6+$:#30#3#7???8000#1!$:#18,8$26!$:#20,8$2>'$26#1000#800000000000'$2>#1018#800000000000&$2>#8'+$2>@-1$26#18#186:0($2>-8#8)##7???7000#100000001000$2>-8#8#&6+$2>-8#3#7???8000#1)$2>-8#8$2-80#90)$2>-8#8$:##38)$2>-8#8$32##80,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 797760 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_56303d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 798012 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_56303d.IT BndT_Na_001.SegItab_Na_56303d.IT_sound BF NX0 BR XSTEP F0 PSS plan 798012 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aveOq2w.

Module LibSegNa_aveOx.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_56303d.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_56303d.IT.
Definition ENDS : list Z := [797968].
Definition STOPS1 : list Z := [797968] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$44+$2-80$3$4$46$47$48$34+$2-80$43$49$42$4:$4;$4<$4=$4>$32$<+$:#18$:+$:#20+&6$32#3#7???8000$32#7???8000+&6+$:#18#3#7???8000+&6+$:#20#3#7???8000$4?$45$30$31"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",20%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$:#6;6000#7?????????<8&$:#8'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##8(+&6$32#3#7???8000##10!$32#78,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##80$33##1'$34#7???7?801060#800000000000&$34#10!$34-8,8$35!$34-10,8$36!$34-18,8$37!$34-20,8$38!$34-28,8$39!$34-30,8$3:!$34-38,8$3;!$34-40,8$3<!$34-48,8$3=!$34-50,8$3>!$34-58,8$3?!$34-60,8$40!$34-68,8$41)+$34-80##80$32##80)+$34-80##80$33##1"%pstring).
Definition ss0 : sym_state := SS 797760 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<2=10#<2=10#5=#<2=10,20#$35$34$3$4$46$47$48$36$37#1$49$42$4:$4;$4<$4=$4>$38$39$3:$3;$3<$3=$3>$3?$40$41$4?$45$30$31,,2?!$33#,1#!&6$32#3#7???800;,1^#?#??????????????5!&6$32#3#7???800:,1^#?#??????????????5!&6$32#3#7???8009,1^#?#??????????????5!&6$32#3#7???8008,1^#?#??????????????5!&6$32#3#7???800?,1^#?#??????????????5!&6$32#3#7???800>,1^#?#??????????????5!&6$32#3#7???800=,1^#?#??????????????5!&6$32#3#7???800<,1^#?#??????????????5!&6$32#3#7???8003,1^#?#??????????????5!&6$32#3#7???8002,1^#?#??????????????5!&6$32#3#7???8001,1^#?#??????????????5!&6$32#3#7???8000,1^#?#??????????????5!&6$32#3#7???8007,1^#?#??????????????5!&6$32#3#7???8006,1^#?#??????????????5!&6$32#3#7???8005,1^#?#??????????????5!&6$32#3#7???8004,1^#?#??????????????5!$32#,8#45>0360>'$:#6;6000#7?????????<8&$:#8'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80($32##8(+&6$32#3#7???8000##10!$32#78,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##80$33##1'$34#7???7?801060#800000000000&$34#10!$34-8,8$35!$34-10,8$36!$34-18,8$37!$34-20,8$38!$34-28,8$39!$34-30,8$3:!$34-38,8$3;!$34-40,8$3<!$34-48,8$3=!$34-50,8$3>!$34-58,8$3?!$34-60,8$40!$34-68,8$41)+$34-80##80$32##80)+$34-80##80$33##1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 797968 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_56303d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 797760 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_56303d.IT BndT_Na_001.SegItab_Na_56303d.IT_sound BF NX0 BR XSTEP F0 PSS plan 797760 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aveOx.

Module LibSegNa_aviAn16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_3293a7.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_3293a7.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",14%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-40#40$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;^#?#???????????8000^#?#?????????????7?'$<##"%pstring).
Definition ss0 : sym_state := SS 795620 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<26><+$2-40$3$4$5$6$7$:$;$29+$2-33$<$=$>$?$10$11+$:#8#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1;!$2-33,1#=1!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-40#40$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;^#?#???????????8000^#?#?????????????7?'$<##,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_3293a7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 795620 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_3293a7.IT BndT_Na_000.SegItab_Na_3293a7.IT_sound BF NX0 BR XSTEP F0 PSS plan 795620 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aviAn16.

Module LibSegNa_aviAn32.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_3293a7.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_3293a7.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",14%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-40#40$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;^#?#???????80000000^#?#???????????7???'$<##"%pstring).
Definition ss0 : sym_state := SS 795620 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<272<+$2-40$3$4$5$6$7$:$;$29+$2-32$<$=$>$?$10$11+$:#8#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1;!$2-32,1#=2!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-40#40$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;^#?#???????80000000^#?#???????????7???'$<##,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_3293a7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 795620 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_3293a7.IT BndT_Na_000.SegItab_Na_3293a7.IT_sound BF NX0 BR XSTEP F0 PSS plan 795620 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aviAn32.

Module LibSegNa_aviAn5.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_3293a7.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_3293a7.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",14%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-40#40$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;^#?#?????????????>0^#?#???????????????'$<##"%pstring).
Definition ss0 : sym_state := SS 795620 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<261<+$2-40$3$4$5$6$7$:$;$29+$2-36$<$=$>$?$10$11$12#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1;!$2-36,1$;!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-40#40$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;^#?#?????????????>0^#?#???????????????'$<##,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_3293a7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 795620 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_3293a7.IT BndT_Na_000.SegItab_Na_3293a7.IT_sound BF NX0 BR XSTEP F0 PSS plan 795620 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aviAn5.

Module LibSegNa_aviAn64.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_3293a7.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_3293a7.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",14%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-40#40$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;^#8#^#?#???????7???????'$<##"%pstring).
Definition ss0 : sym_state := SS 795620 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<2594+$2-40$3$4$5$6$7$:$;$29+$2-31$<$=$>$?$10$11+$:#8#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1;!$2-31,1#=3!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-40#40$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;^#8#^#?#???????7???????'$<##,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_3293a7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 795620 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_3293a7.IT BndT_Na_000.SegItab_Na_3293a7.IT_sound BF NX0 BR XSTEP F0 PSS plan 795620 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aviAn64.

Module LibSegNa_aviAn8.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_3293a7.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_3293a7.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",14%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-40#40$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;^#?#?????????????80^#?#?????????????=?'$<##"%pstring).
Definition ss0 : sym_state := SS 795620 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<2604+$2-40$3$4$5$6$7$:$;$29+$2-35$<$=$>$?$10$11+$:#8#7???8000+&6+$:#8#3#7???8000$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1;!$2-35,1#=0!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-40#40$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;^#?#?????????????80^#?#?????????????=?'$<##,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_3293a7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 795620 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_3293a7.IT BndT_Na_000.SegItab_Na_3293a7.IT_sound BF NX0 BR XSTEP F0 PSS plan 795620 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aviAn8.

Module LibSegNa_aviAp16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_3293a7.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_3293a7.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",14%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-40#40$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#100#????'$<##"%pstring).
Definition ss0 : sym_state := SS 795620 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<26;8+$2-40$3$4$5$6$7$:$;$29+$2-39$<$=$>$?$10$11+$:#8#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1;!$2-39,1#<=!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-40#40$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#100#????'$<##,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_3293a7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 795620 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_3293a7.IT BndT_Na_000.SegItab_Na_3293a7.IT_sound BF NX0 BR XSTEP F0 PSS plan 795620 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_aviAp16.

End BndP_Na_016.
Module BndP_Na_034.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_001 BndT_Na_000.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Na_034 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_001ASegItab_Na_6651592ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034>LibSegNa_avuE02BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034>LibSegNa_avuE03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034>LibSegNa_avuE02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034>LibSegNa_avuE05XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034>LibSegNa_avuE02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034>LibSegNa_avuE03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034>LibSegNa_avuE04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034>LibSegNa_avuE05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034>LibSegNa_avuE03kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034>LibSegNa_avuE12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034>LibSegNa_avuE13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034>LibSegNa_avuE12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034>LibSegNa_avuE15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034>LibSegNa_avuE12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034>LibSegNa_avuE13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034>LibSegNa_avuE14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034>LibSegNa_avuE15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034>LibSegNa_avuE13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuE1w2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuE1w3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuE1w2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuE1w5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuE1w2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuE1w3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuE1w4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuE1w5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuE1w3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuJ162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuJ163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuJ162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuJ165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuJ162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuJ163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuJ164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuJ165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuJ163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuJ322BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuJ323NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuJ322BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuJ325XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuJ322F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuJ323PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuJ324planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuJ325regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuJ323kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034>LibSegNa_avuJ52BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034>LibSegNa_avuJ53NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034>LibSegNa_avuJ52BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034>LibSegNa_avuJ55XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034>LibSegNa_avuJ52F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034>LibSegNa_avuJ53PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034>LibSegNa_avuJ54planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034>LibSegNa_avuJ55regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034>LibSegNa_avuJ53kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuJ642BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuJ643NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuJ642BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuJ645XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuJ642F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuJ643PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuJ644planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuJ645regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_avuJ643kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_000ASegItab_Na_1a0dc22ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034=LibSegNa_awsA2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034=LibSegNa_awsA3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034=LibSegNa_awsA2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034=LibSegNa_awsA5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034=LibSegNa_awsA2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034=LibSegNa_awsA3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034=LibSegNa_awsA4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034=LibSegNa_awsA5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034=LibSegNa_awsA3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034=LibSegNa_awsB2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034=LibSegNa_awsB3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034=LibSegNa_awsB2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034=LibSegNa_awsB5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034=LibSegNa_awsB2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034=LibSegNa_awsB3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034=LibSegNa_awsB4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034=LibSegNa_awsB5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034=LibSegNa_awsB3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034=LibSegNa_awsE2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034=LibSegNa_awsE3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034=LibSegNa_awsE2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034=LibSegNa_awsE5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034=LibSegNa_awsE2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034=LibSegNa_awsE3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034=LibSegNa_awsE4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034=LibSegNa_awsE5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034=LibSegNa_awsE3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_awsH162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_awsH163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_awsH162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_awsH165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_awsH162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_awsH163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_awsH164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_awsH165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_awsH163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034@LibSegNa_awsH2552BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034@LibSegNa_awsH2553NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034@LibSegNa_awsH2552BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034@LibSegNa_awsH2555XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034@LibSegNa_awsH2552F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034@LibSegNa_awsH2553PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034@LibSegNa_awsH2554planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034@LibSegNa_awsH2555regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034@LibSegNa_awsH2553kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034ALibSegNa_awsH255b2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034ALibSegNa_awsH255b3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034ALibSegNa_awsH255b2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034ALibSegNa_awsH255b5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034ALibSegNa_awsH255b2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034ALibSegNa_awsH255b3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034ALibSegNa_awsH255b4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034ALibSegNa_awsH255b5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034ALibSegNa_awsH255b3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_awsH312BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_awsH313NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_awsH312BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_awsH315XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_awsH312F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_awsH313PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_awsH314planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_awsH315regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_034?LibSegNa_awsH313kn0".

Module LibSegNa_avuE0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_665159.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_665159.IT.
Definition ENDS : list Z := [795464].
Definition STOPS1 : list Z := [795464] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$25#7???8000$3:$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1;%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-40#40$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8!$:#18,8$26!$:#20,8$26'$26##800000000000!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31"%pstring).
Definition ss0 : sym_state := SS 795348 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<2348#<2348#5=#<2348,20#$2<$2$3$4$5$6$7$2=$2>#1$26$39$=$>$?$10$11$2?$30$31$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1;%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-40#40$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8!$:#18,8$26!$:#20,8$26'$26##800000000000!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 795464 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_665159.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 795348 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_665159.IT BndT_Na_001.SegItab_Na_665159.IT_sound BF NX0 BR XSTEP F0 PSS plan 795348 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_avuE0.

Module LibSegNa_avuE1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_665159.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_665159.IT.
Definition ENDS : list Z := [795464].
Definition STOPS1 : list Z := [795464] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$25#7???8000$3:$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",25%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-40#40$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$27#8'+$27@-1$26#18#186:0($27-18#18)##7???7000#100000001000+$27-18##18#&6+$27-8#3#7???8000#1)$27-18#18$2-40#40)$27-18#18$:##38!$27-8,8$2:'$2:#^#?#??????????????>!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31"%pstring).
Definition ss0 : sym_state := SS 795348 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<2348#<2348#5=#<2348,20#$2<$2$3$4$5$6$7$2=$2>#1+$2:#1$39$=$>$?$10$11$2?$30$31$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,22!$27-8,8+$2:#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-40#40$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$27#8'+$27@-1$26#18#186:0($27-18#18)##7???7000#100000001000+$27-18##18#&6+$27-8#3#7???8000#1)$27-18#18$2-40#40)$27-18#18$:##38'$2:#^#?#??????????????>!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 795464 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_665159.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 795348 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_665159.IT BndT_Na_001.SegItab_Na_665159.IT_sound BF NX0 BR XSTEP F0 PSS plan 795348 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_avuE1.

Module LibSegNa_avuE1w.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_665159.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_665159.IT.
Definition ENDS : list Z := [795464].
Definition STOPS1 : list Z := [795464] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$25#7???8000$3:$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",24%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-40#40$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$27#8'+$27@-1$26#18#186:0($27-18#18)##7???7000#100000001000+$27-18##18#&6+$27-8#3#7???8000#1)$27-18#18$2-40#40)$27-18#18$:##38!$27-8,8^#?#???????????????!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31"%pstring).
Definition ss0 : sym_state := SS 795348 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<2348#<2348#5=#<2348,20#$2<$2$3$4$5$6$7$2=$2>#1#$39$=$>$?$10$11$2?$30$31$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,21!$27-8,8#'$2#7???7?801040#800000000000&$2#10($2-40#40'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6$:#3#7???8000#7($:##38)$2-40#40$:##38#&6+$:#8#3#7???8000#1#&6+$:#18#3#7???8000#1#&6+$:#20#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$27#8'+$27@-1$26#18#186:0($27-18#18)##7???7000#100000001000+$27-18##18#&6+$27-8#3#7???8000#1)$27-18#18$2-40#40)$27-18#18$:##38!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 795464 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_665159.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 795348 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_665159.IT BndT_Na_001.SegItab_Na_665159.IT_sound BF NX0 BR XSTEP F0 PSS plan 795348 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_avuE1w.

Module LibSegNa_avuJ16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_665159.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_665159.IT.
Definition ENDS : list Z := [795348].
Definition STOPS1 : list Z := [795348] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$25#7???8000$3:$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 1376256 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487232 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-64)) (ELit 64)].
Definition ss0 : sym_state := SS 795516 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<22=4#<22=4#5=#<22=4,20#$1+$2-40$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$25#7???8000$3:$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,6%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 795348 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_665159.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 795516 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_665159.IT BndT_Na_001.SegItab_Na_665159.IT_sound BF NX0 BR XSTEP F0 PSS plan 795516 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_avuJ16.

Module LibSegNa_avuJ32.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_665159.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_665159.IT.
Definition ENDS : list Z := [795348].
Definition STOPS1 : list Z := [795348] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$25#7???8000$3:$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 1376256 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487232 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-64)) (ELit 64)].
Definition ss0 : sym_state := SS 795548 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<22=4#<22=4#5=#<22=4,20#$1+$2-40$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$25#7???8000$3:$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,6%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 795348 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_665159.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 795548 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_665159.IT BndT_Na_001.SegItab_Na_665159.IT_sound BF NX0 BR XSTEP F0 PSS plan 795548 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_avuJ32.

Module LibSegNa_avuJ5.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_665159.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_665159.IT.
Definition ENDS : list Z := [795348].
Definition STOPS1 : list Z := [795348] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$25#7???8000$3:$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 1376256 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487232 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-64)) (ELit 64)].
Definition ss0 : sym_state := SS 795248 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<22=4#<22=4#5=#<22=4,20#$1+$2-40$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$25#7???8000$3:$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,6%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 795348 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_665159.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 795248 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_665159.IT BndT_Na_001.SegItab_Na_665159.IT_sound BF NX0 BR XSTEP F0 PSS plan 795248 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_avuJ5.

Module LibSegNa_avuJ64.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_665159.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_665159.IT.
Definition ENDS : list Z := [795348].
Definition STOPS1 : list Z := [795348] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$25#7???8000$3:$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 1376256 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487232 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-64)) (ELit 64)].
Definition ss0 : sym_state := SS 795228 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<22=4#<22=4#5=#<22=4,20#$1+$2-40$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$25#7???8000$3:$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,6%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 795348 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_665159.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 795228 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_665159.IT BndT_Na_001.SegItab_Na_665159.IT_sound BF NX0 BR XSTEP F0 PSS plan 795228 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_avuJ64.

Module LibSegNa_awsA.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1a0dc2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1a0dc2.IT.
Definition ENDS : list Z := [841016].
Definition STOPS1 : list Z := [841016] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",17%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801070#800000000000&$2#10($2-70#70'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6+$:#8#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8)$2-70#70$:##38'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22##1???????)$2-70#70$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 822096 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-112), ELit 112)].
Definition F0L : list SR.region := [((EVar 2), (-112), 112)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<=538#<=538#5=#<=538,20##<8;<0+$2-70$3$4$5$6$7$;$:$21$22#15?:78$=$>$?$10$11+$;#8$13$14#7???8000+&6$;#3#7???8000+&6+$;#8#3#7???8000$18$19$1:$1;$1<$1=$1>$1?,,21!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801070#800000000000&$2#10($2-70#70'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6+$:#8#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8)$2-70#70$:##38'$;#1000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22##1???????)$2-70#70$;##10)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 841016 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1a0dc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 822096 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1a0dc2.IT BndT_Na_000.SegItab_Na_1a0dc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 822096 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awsA.

Module LibSegNa_awsB.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1a0dc2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1a0dc2.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-70$3$4$5$6$7$27$24$37$38$39$=$>$?$10$11$26+&6$24#3#7???8000$27#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",13%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801070#800000000000&$2#10($2-70#70'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-70#70$24##8'$29#1000#7?????????>8&$29#8'$27#1#7???????????!$27#,1$25'$25##??)$2-70#70$27##1'$26#1#1???????"%pstring).
Definition ss0 : sym_state := SS 822476 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<8<>8+$2-70$3$4$5$6$7$27$24$29+$2-51$39$=$>$?$10$11$26+&6$24#3#7???8000$27#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?,,14!$2-51,1$25%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801070#800000000000&$2#10($2-70#70'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-70#70$24##8'$29#1000#7?????????>8&$29#8'$27#1#7???????????!$27#,1$25'$25##??)$2-70#70$27##1'$26#1#1???????,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1a0dc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 822476 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1a0dc2.IT BndT_Na_000.SegItab_Na_1a0dc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 822476 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awsB.

Module LibSegNa_awsE.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1a0dc2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1a0dc2.IT.
Definition ENDS : list Z := [822584].
Definition STOPS1 : list Z := [822584] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-70$3$4$5$6$7$27$24$37$38$39$=$>$?$10$11#1+&6$24#3#7???8000$27#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801070#800000000000&$2#10($2-70#70'$27#1#7???????????!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31!$2-38,8$32!$2-40,8$33!$2-48,8$34!$2-50,8$35"%pstring).
Definition ss0 : sym_state := SS 822504 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<8=38#<8=38#5=#<8=38,20#$2<$2$3$4$5$6$7$2=$2>$37$38$39$=$>$?$10$11$2?$30$31$32$33$34$35$19$1:$1;$1<$1=$1>$1?,,11%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801070#800000000000&$2#10($2-70#70'$27#1#7???????????!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31!$2-38,8$32!$2-40,8$33!$2-48,8$34!$2-50,8$35,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 822584 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1a0dc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 822504 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1a0dc2.IT BndT_Na_000.SegItab_Na_1a0dc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 822504 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awsE.

Module LibSegNa_awsH16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1a0dc2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1a0dc2.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-70$3$4$5$6$7$;$:$37#$39$=$>$?$10$11$23$13$14#7???8000+&6$;#3#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1:%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801070#800000000000&$2#10($2-70#70'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6+$:#8#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8)$2-70#70$:##38'$;#1000#7??????????0'$23#1008#7??????????8!$;#,8$21!$23#,8$22'$21##800000000000'$22#100#????)$2-70#70$;##10)$2-70#70$23##8)##7???7000#100000001000$;##10)##7???7000#100000001000$23##8#&6$;#3#7???8000#1#&6$23#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 822208 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<8=64+$2-70$3$4$5$6$7$;$:$29+$2-51$39$=$>$?$10$11$23$22+$:#8#7???8000+&6$;#3#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?,,1;!$2-51,1#=:%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801070#800000000000&$2#10($2-70#70'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6+$:#8#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8)$2-70#70$:##38'$;#1000#7??????????0'$23#1008#7??????????8!$;#,8$21!$23#,8$22'$21##800000000000'$22#100#????)$2-70#70$;##10)$2-70#70$23##8)##7???7000#100000001000$;##10)##7???7000#100000001000$23##8#&6$;#3#7???8000#1#&6$23#3#7???8000#1,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1a0dc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 822208 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1a0dc2.IT BndT_Na_000.SegItab_Na_1a0dc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 822208 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awsH16.

Module LibSegNa_awsH255.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1a0dc2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1a0dc2.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-70$3$4$5$6$7$;$:$37#$39$=$>$?$10$11$23$13$14#7???8000+&6$;#3#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1:%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801070#800000000000&$2#10($2-70#70'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6+$:#8#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8)$2-70#70$:##38'$;#1000#7??????????0'$23#1008#7??????????8!$;#,8$21!$23#,8$22'$21##800000000000'$22#20#??)$2-70#70$;##10)$2-70#70$23##8)##7???7000#100000001000$;##10)##7???7000#100000001000$23##8#&6$;#3#7???8000#1#&6$23#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 822208 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<8<78+$2-70$3$4$5$6$7$;$:$29+$2-51$39$=$>$?$10$11$23$22+$:#8#7???8000+&6$;#3#7???8000+&6$23#3#7???8000+&6+$:#8#3#7???8000$19$1:$1;$1<$1=$1>$1?,,1;!$2-51,1#=9%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801070#800000000000&$2#10($2-70#70'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6+$:#8#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8)$2-70#70$:##38'$;#1000#7??????????0'$23#1008#7??????????8!$;#,8$21!$23#,8$22'$21##800000000000'$22#20#??)$2-70#70$;##10)$2-70#70$23##8)##7???7000#100000001000$;##10)##7???7000#100000001000$23##8#&6$;#3#7???8000#1#&6$23#3#7???8000#1,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1a0dc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 822208 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1a0dc2.IT BndT_Na_000.SegItab_Na_1a0dc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 822208 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awsH255.

Module LibSegNa_awsH255b.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1a0dc2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1a0dc2.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-70$3$4$5$6$7$;$:$37$38$39$=$>$?$10$11$23$22$24#7???8000+&6$;#3#7???8000+&6$23#3#7???8000+&6$24#3#7???8000$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801070#800000000000&$2#10($2-70#70'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-70#70$24##8'$29#1000#7?????????>8&$29#8'$22#20#??"%pstring).
Definition ss0 : sym_state := SS 822392 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<8<90+$2-70$3$4$5$6$7$;$:$29+$2-51$39$=$>$?$10$11$23$22$24#7???8000+&6$;#3#7???8000+&6$23#3#7???8000+&6$24#3#7???8000$19$1:$1;$1<$1=$1>$1?,,10!$2-51,1$22%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801070#800000000000&$2#10($2-70#70'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$2-70#70$24##8'$29#1000#7?????????>8&$29#8'$22#20#??,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1a0dc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 822392 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1a0dc2.IT BndT_Na_000.SegItab_Na_1a0dc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 822392 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awsH255b.

Module LibSegNa_awsH31.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1a0dc2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1a0dc2.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-70$3$4$5$6$7$;$:$37#$39$=$>$?$10$11$23$13$14#7???8000+&6$;#3#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1:%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801070#800000000000&$2#10($2-70#70'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6+$:#8#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8)$2-70#70$:##38'$;#1000#7??????????0'$23#1008#7??????????8!$;#,8$21!$23#,8$22'$21##800000000000'$22##1?)$2-70#70$;##10)$2-70#70$23##8)##7???7000#100000001000$;##10)##7???7000#100000001000$23##8#&6$;#3#7???8000#1#&6$23#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 822208 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<8<90+$2-70$3$4$5$6$7$;$:$29+$2-51$39$=$>$?$10$11$23$22$14#7???8000+&6$;#3#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?,,1;!$2-51,1+$22-60%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801070#800000000000&$2#10($2-70#70'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6+$:#8#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8)$2-70#70$:##38'$;#1000#7??????????0'$23#1008#7??????????8!$;#,8$21!$23#,8$22'$21##800000000000'$22##1?)$2-70#70$;##10)$2-70#70$23##8)##7???7000#100000001000$;##10)##7???7000#100000001000$23##8#&6$;#3#7???8000#1#&6$23#3#7???8000#1,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1a0dc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 822208 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1a0dc2.IT BndT_Na_000.SegItab_Na_1a0dc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 822208 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awsH31.

End BndP_Na_034.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_000 BndT_Na_003.
Module BndP_Na_035.
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
Ltac2 kr_t_BndP_Na_035 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_000ASegItab_Na_1a0dc22ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsH322BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsH323NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsH322BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsH325XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsH322F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsH323PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsH324planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsH325regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsH323kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsJ162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsJ163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsJ162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsJ165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsJ162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsJ163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsJ164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsJ165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsJ163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsJ322BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsJ323NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsJ322BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsJ325XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsJ322F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsJ323PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsJ324planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsJ325regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsJ323kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awsL02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awsL03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awsL02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awsL05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awsL02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awsL03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awsL04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awsL05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awsL03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awsL12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awsL13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awsL12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awsL15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awsL12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awsL13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awsL14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awsL15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awsL13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035=LibSegNa_awsN2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035=LibSegNa_awsN3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035=LibSegNa_awsN2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035=LibSegNa_awsN5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035=LibSegNa_awsN2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035=LibSegNa_awsN3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035=LibSegNa_awsN4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035=LibSegNa_awsN5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035=LibSegNa_awsN3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsW162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsW163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsW162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsW165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsW162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsW163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsW164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsW165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsW163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsW322BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsW323NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsW322BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsW325XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsW322F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsW323PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsW324planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsW325regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035?LibSegNa_awsW323kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e1bf422ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3a2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3a3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3a2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3a5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3a2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3a3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3a4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3a5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3a3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3b2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3b3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3b2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3b5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3b2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3b3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3b4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3b5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3b3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3c2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3c3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3c2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3c5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3c2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3c3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3c4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3c5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3c3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3z2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3z3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3z2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3z5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3z2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3z3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3z4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3z5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt3z3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt6a2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt6a3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt6a2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt6a5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt6a2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt6a3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt6a4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt6a5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt6a3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt6b2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt6b3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt6b2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt6b5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt6b2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt6b3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt6b4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt6b5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_035>LibSegNa_awt6b3kn0".

Module LibSegNa_awsH32.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1a0dc2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1a0dc2.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-70$3$4$5$6$7$;$:$37#$39$=$>$?$10$11$23$13$14#7???8000+&6$;#3#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1:%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801070#800000000000&$2#10($2-70#70'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6+$:#8#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8)$2-70#70$:##38'$;#1000#7??????????0'$23#1008#7??????????8!$;#,8$21!$23#,8$22'$21##800000000000'$22#10000#1???????)$2-70#70$;##10)$2-70#70$23##8)##7???7000#100000001000$;##10)##7???7000#100000001000$23##8#&6$;#3#7???8000#1#&6$23#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 822208 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<8<40+$2-70$3$4$5$6$7$;$:$29+$2-51$39$=$>$?$10$11$23$22+$:#8#7???8000+&6$;#3#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?,,1;!$2-51,1#=;%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801070#800000000000&$2#10($2-70#70'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38#&6+$:#8#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8)$2-70#70$:##38'$;#1000#7??????????0'$23#1008#7??????????8!$;#,8$21!$23#,8$22'$21##800000000000'$22#10000#1???????)$2-70#70$;##10)$2-70#70$23##8)##7???7000#100000001000$;##10)##7???7000#100000001000$23##8#&6$;#3#7???8000#1#&6$23#3#7???8000#1,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1a0dc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 822208 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1a0dc2.IT BndT_Na_000.SegItab_Na_1a0dc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 822208 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awsH32.

Module LibSegNa_awsJ16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1a0dc2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1a0dc2.IT.
Definition ENDS : list Z := [822460].
Definition STOPS1 : list Z := [822460] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-70$3$4$5$6$7$;$:$37$38$39$=$>$?$10$11$23$13$14#7???8000+&6$;#3#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801070#800000000000&$2#10'$:#1000#7?????????<8'$;#1000#7??????????0'$23#1008#7??????????8!$;#,8$21!$23#,8$22'$21##800000000000'$22#1#1???????)$2-70#70$;##10)$2-70#70$23##8)##7???7000#100000001000$;##10)##7???7000#100000001000$23##8#&6$;#3#7???8000#1#&6$23#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 822640 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<8<;<#<8<;<#5=#<8<;<,20#$1+$2-70$3$4$5$6$7$21+$:#8#$38$39$=$>$?$10$11$22+&6+$:#8#3#7???8000$21#7???8000+&6$;#3#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?,,12%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801070#800000000000&$2#10'$:#1000#7?????????<8'$;#1000#7??????????0'$23#1008#7??????????8!$;#,8$21!$23#,8$22'$21##800000000000'$22#1#1???????)$2-70#70$;##10)$2-70#70$23##8)##7???7000#100000001000$;##10)##7???7000#100000001000$23##8#&6$;#3#7???8000#1#&6$23#3#7???8000#1,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 822460 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1a0dc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 822640 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1a0dc2.IT BndT_Na_000.SegItab_Na_1a0dc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 822640 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awsJ16.

Module LibSegNa_awsJ32.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1a0dc2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1a0dc2.IT.
Definition ENDS : list Z := [822460].
Definition STOPS1 : list Z := [822460] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-70$3$4$5$6$7$;$:$37$38$39$=$>$?$10$11$23$13$14#7???8000+&6$;#3#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801070#800000000000&$2#10'$:#1000#7?????????<8'$;#1000#7??????????0'$23#1008#7??????????8!$;#,8$21!$23#,8$22'$21##800000000000'$22#1#1???????)$2-70#70$;##10)$2-70#70$23##8)##7???7000#100000001000$;##10)##7???7000#100000001000$23##8#&6$;#3#7???8000#1#&6$23#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 822348 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<8<;<#<8<;<#5=#<8<;<,20#$1+$2-70$3$4$5$6$7$21+$:#8#$38$39$=$>$?$10$11$22+&6+$:#8#3#7???8000$21#7???8000+&6$;#3#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?,,12%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801070#800000000000&$2#10'$:#1000#7?????????<8'$;#1000#7??????????0'$23#1008#7??????????8!$;#,8$21!$23#,8$22'$21##800000000000'$22#1#1???????)$2-70#70$;##10)$2-70#70$23##8)##7???7000#100000001000$;##10)##7???7000#100000001000$23##8#&6$;#3#7???8000#1#&6$23#3#7???8000#1,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 822460 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1a0dc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 822348 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1a0dc2.IT BndT_Na_000.SegItab_Na_1a0dc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 822348 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awsJ32.

Module LibSegNa_awsL0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1a0dc2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1a0dc2.IT.
Definition ENDS : list Z := [822584].
Definition STOPS1 : list Z := [822584] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-70$3$4$5$6$7$;$:$37$38$39$=$>$?$10$11$23$13$14#7???8000+&6$;#3#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1<%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801070#800000000000&$2#10($2-70#70'$;#1000#7??????????0'$23#1008#7??????????8!$;#,8$21!$23#,8$22'$21##800000000000'$22##)$2-70#70$;##10)$2-70#70$23##8)##7???7000#100000001000$;##10)##7???7000#100000001000$23##8#&6$;#3#7???8000#1#&6$23#3#7???8000#1!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31!$2-38,8$32!$2-40,8$33!$2-48,8$34!$2-50,8$35"%pstring).
Definition ss0 : sym_state := SS 822416 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<8=38#<8=38#5=#<8=38,20#$2<$2$3$4$5$6$7$2=$2>#$38$39$=$>$?$10$11$2?$30$31$32$33$34$35$19$1:$1;$1<$1=$1>$1?,,1<%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801070#800000000000&$2#10($2-70#70'$;#1000#7??????????0'$23#1008#7??????????8!$;#,8$21!$23#,8$22'$21##800000000000'$22##)$2-70#70$;##10)$2-70#70$23##8)##7???7000#100000001000$;##10)##7???7000#100000001000$23##8#&6$;#3#7???8000#1#&6$23#3#7???8000#1!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31!$2-38,8$32!$2-40,8$33!$2-48,8$34!$2-50,8$35,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 822584 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1a0dc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 822416 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1a0dc2.IT BndT_Na_000.SegItab_Na_1a0dc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 822416 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awsL0.

Module LibSegNa_awsL1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1a0dc2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1a0dc2.IT.
Definition ENDS : list Z := [822460].
Definition STOPS1 : list Z := [822460] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-70$3$4$5$6$7$;$:$37$38$39$=$>$?$10$11$23$13$14#7???8000+&6$;#3#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801070#800000000000&$2#10'$:#1000#7?????????<8'$;#1000#7??????????0'$23#1008#7??????????8!$;#,8$21!$23#,8$22'$21##800000000000'$22#1#1???????)$2-70#70$;##10)$2-70#70$23##8)##7???7000#100000001000$;##10)##7???7000#100000001000$23##8#&6$;#3#7???8000#1#&6$23#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 822416 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<8<;<#<8<;<#5=#<8<;<,20#$1+$2-70$3$4$5$6$7$21+$:#8#$38$39$=$>$?$10$11$22+&6+$:#8#3#7???8000$21#7???8000+&6$;#3#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?,,12%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801070#800000000000&$2#10'$:#1000#7?????????<8'$;#1000#7??????????0'$23#1008#7??????????8!$;#,8$21!$23#,8$22'$21##800000000000'$22#1#1???????)$2-70#70$;##10)$2-70#70$23##8)##7???7000#100000001000$;##10)##7???7000#100000001000$23##8#&6$;#3#7???8000#1#&6$23#3#7???8000#1,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 822460 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1a0dc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 822416 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1a0dc2.IT BndT_Na_000.SegItab_Na_1a0dc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 822416 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awsL1.

Module LibSegNa_awsN.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1a0dc2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1a0dc2.IT.
Definition ENDS : list Z := [822460].
Definition STOPS1 : list Z := [822460] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-70$3$4$5$6$7$27$24$37$38$39$=$>$?$10$11$26+&6$24#3#7???8000$27#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 1376256 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487280 140737488355328;
   KAlign (EVar 2) 16;
   KRange (EVar 39) 1 140737488355327;
   KRange (EVar 38) 2 536870911].
Definition ss0 : sym_state := SS 822504 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<8<;<#<8<;<#5=#<8<;<,20#$1+$2-70$3$4$5$6$7+$27#1$24$37$38$39$=$>$?$10$11+$26-1+&6$24#3#7???8000+$27#1#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?,,7%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801070#800000000000&$2#10'$27#1#7???????????'$26#2#1???????,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 822460 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1a0dc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 822504 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1a0dc2.IT BndT_Na_000.SegItab_Na_1a0dc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 822504 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awsN.

Module LibSegNa_awsW16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1a0dc2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1a0dc2.IT.
Definition ENDS : list Z := [811736].
Definition STOPS1 : list Z := [811736] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-70$3$4$5$6$7$;$:$37$38$39$=$>$?$10$11$23$22$24#7???8000+&6$;#3#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 1376256 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487280 140737488355328;
   KAlign (EVar 2) 16;
   KRange (EVar 34) 0 18446744073709551615].
Definition ss0 : sym_state := SS 822628 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<62=8#<62=8#5=#<62=8,20##<8=70+$2-70$3$4$5$6$7$;$:$22$24$39$=$>$?$10$11$23$22$24#7???8000+&6$;#3#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?,,6%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801070#800000000000&$2#10'$22#^#?#???????????????,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1a0dc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 822628 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1a0dc2.IT BndT_Na_000.SegItab_Na_1a0dc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 822628 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awsW16.

Module LibSegNa_awsW32.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1a0dc2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1a0dc2.IT.
Definition ENDS : list Z := [811884].
Definition STOPS1 : list Z := [811884] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-70$3$4$5$6$7$;$:$37$38$39$=$>$?$10$11$23$22$24#7???8000+&6$;#3#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 1376256 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487280 140737488355328;
   KAlign (EVar 2) 16;
   KRange (EVar 34) 0 18446744073709551615].
Definition ss0 : sym_state := SS 822336 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<636<#<636<#5=#<636<,20##<8<4<+$2-70$3$4$5$6$7$;$:%0$22#$24$39$=$>$?$10$11$23$22$24#7???8000+&6$;#3#7???8000+&6$23#3#7???8000$18$19$1:$1;$1<$1=$1>$1?,,6%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801070#800000000000&$2#10'$22#^#?#???????????????,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1a0dc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 822336 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1a0dc2.IT BndT_Na_000.SegItab_Na_1a0dc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 822336 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awsW32.

Module LibSegNa_awt3a.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e1bf42.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e1bf42.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$24$29$38$39$=$>$?$10$11$3:+&6$24#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$24##8$2-30#30'$29#1000#7?????????>8&$29#8"%pstring).
Definition ss0 : sym_state := SS 815116 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-47), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-47), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<701<+$2-30$3$4$5$6$7$;$24$29+$2-2?$39$=$>$?$10$11$3:+&6$24#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,?!$2-2?,1#=6%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$24##8$2-30#30'$29#1000#7?????????>8&$29#8,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e1bf42.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 815116 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e1bf42.IT BndT_Na_003.SegItab_Na_e1bf42.IT_sound BF NX0 BR XSTEP F0 PSS plan 815116 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awt3a.

Module LibSegNa_awt3b.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e1bf42.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e1bf42.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$24$37$38$39$=$>$?$10$11$3:+&6$24#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$24##8$2-30#30'$29#1000#7?????????>8&$29#8"%pstring).
Definition ss0 : sym_state := SS 815132 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-46), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-46), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<7038+$2-30$3$4$5$6$7$;$24$29+$2-2>$39$=$>$?$10$11$3:+&6$24#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,?!$2-2>,1^#?#???????????????%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$24##8$2-30#30'$29#1000#7?????????>8&$29#8,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e1bf42.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 815132 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e1bf42.IT BndT_Na_003.SegItab_Na_e1bf42.IT_sound BF NX0 BR XSTEP F0 PSS plan 815132 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awt3b.

Module LibSegNa_awt3c.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e1bf42.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e1bf42.IT.
Definition ENDS : list Z := [811884].
Definition STOPS1 : list Z := [811884] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$24$37$38$39$=$>$?$10$11$3:+&6$24#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",8%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30'$;#^#?#???????????????'$<#^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 815160 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<636<#<636<#5=#<636<,20##<7044+$2-30$3$4$5$6$7$;$24%0$;#$24$39$=$>$?$10$11$3:+&6$24#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,8%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30'$;#^#?#???????????????'$<#^#?#???????????????,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e1bf42.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 815160 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e1bf42.IT BndT_Na_003.SegItab_Na_e1bf42.IT_sound BF NX0 BR XSTEP F0 PSS plan 815160 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awt3c.

Module LibSegNa_awt3z.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e1bf42.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e1bf42.IT.
Definition ENDS : list Z := [815360].
Definition STOPS1 : list Z := [815360] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$24$37$38$39$=$>$?$10$11$3:+&6$24#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30"%pstring).
Definition ss0 : sym_state := SS 815172 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<7100#<7100#5=#<7100,20#$2<$2$3$4$5$6$7$2=$2>$37$38$39$=$>$?$10$11$2?$30$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 815360 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e1bf42.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 815172 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e1bf42.IT BndT_Na_003.SegItab_Na_e1bf42.IT_sound BF NX0 BR XSTEP F0 PSS plan 815172 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awt3z.

Module LibSegNa_awt6a.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e1bf42.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e1bf42.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$24$29$38$39$=$>$?$10$11$3:+&6$24#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$24##8$2-30#30'$29#1000#7?????????>8&$29#8"%pstring).
Definition ss0 : sym_state := SS 815280 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-45), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-45), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<70<0+$2-30$3$4$5$6$7$;$24$29+$2-2=$39$=$>$?$10$11$3:+&6$24#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,?!$2-2=,1#=7%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$24##8$2-30#30'$29#1000#7?????????>8&$29#8,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e1bf42.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 815280 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e1bf42.IT BndT_Na_003.SegItab_Na_e1bf42.IT_sound BF NX0 BR XSTEP F0 PSS plan 815280 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awt6a.

Module LibSegNa_awt6b.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e1bf42.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e1bf42.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$24$37$38$39$=$>$?$10$11$3:+&6$24#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$24##8$2-30#30'$29#1000#7?????????>8&$29#8"%pstring).
Definition ss0 : sym_state := SS 815296 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-44), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-44), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<70=<+$2-30$3$4$5$6$7$;$24$29+$2-2<$39$=$>$?$10$11$3:+&6$24#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,?!$2-2<,1^#?#???????????????%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$24##8$2-30#30'$29#1000#7?????????>8&$29#8,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e1bf42.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 815296 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e1bf42.IT BndT_Na_003.SegItab_Na_e1bf42.IT_sound BF NX0 BR XSTEP F0 PSS plan 815296 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awt6b.

End BndP_Na_035.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_003 BndT_Na_001.
Module BndP_Na_036.
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
Ltac2 kr_t_BndP_Na_036 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e1bf422ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt6c2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt6c3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt6c2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt6c5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt6c2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt6c3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt6c4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt6c5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt6c3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9a2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9a3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9a2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9a5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9a2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9a3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9a4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9a5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9a3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9b2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9b3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9b2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9b5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9b2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9b3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9b4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9b5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9b3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9c2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9c3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9c2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9c5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9c2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9c3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9c4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9c5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9c3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9d2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9d3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9d2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9d5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9d2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9d3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9d4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9d5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9d3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9e2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9e3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9e2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9e5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9e2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9e3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9e4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9e5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_awt9e3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_awtA2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_awtA3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_awtA2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_awtA5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_awtA2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_awtA3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_awtA4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_awtA5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_awtA3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_awtZ2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_awtZ3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_awtZ2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_awtZ5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_awtZ2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_awtZ3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_awtZ4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_awtZ5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_awtZ3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_001ASegItab_Na_754acc2ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeB2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeB3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeB2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeB5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeB2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeB3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeB4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeB5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeB3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeC2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeC3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeC2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeC5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeC2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeC3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeC4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeC5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeC3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeF2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeF3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeF2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeF5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeF2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeF3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeF4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeF5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeF3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeJ2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeJ3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeJ2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeJ5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeJ2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeJ3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeJ4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeJ5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeJ3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_axeJz2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_axeJz3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_axeJz2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_axeJz5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_axeJz2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_axeJz3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_axeJz4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_axeJz5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036>LibSegNa_axeJz3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeK2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeK3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeK2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeK5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeK2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeK3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeK4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeK5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0168;BndP_Na_036=LibSegNa_axeK3kn0".

Module LibSegNa_awt6c.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e1bf42.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e1bf42.IT.
Definition ENDS : list Z := [815412].
Definition STOPS1 : list Z := [815412] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$24$37$38$39$=$>$?$10$11$3:+&6$24#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 1376256 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487216 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48)].
Definition ss0 : sym_state := SS 815324 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<7134#<7134#5=#<7134,20##<70>8+$2-30$3$4$5$6$7$;$24$3:$24$39$=$>$?$10$11$3:+&6$24#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,6%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 815412 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e1bf42.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 815324 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e1bf42.IT BndT_Na_003.SegItab_Na_e1bf42.IT_sound BF NX0 BR XSTEP F0 PSS plan 815324 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awt6c.

Module LibSegNa_awt9a.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e1bf42.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e1bf42.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$24$37$38$39$=$>$?$10$11$3:+&6$24#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$24##8$2-30#30'$29#1000#7?????????>8&$29#8"%pstring).
Definition ss0 : sym_state := SS 815176 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-43), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-43), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<7064+$2-30$3$4$5$6$7$;$24$29+$2-2;$39$=$>$?$10$11$3:+&6$24#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,?!$2-2;,1#<7%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$24##8$2-30#30'$29#1000#7?????????>8&$29#8,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e1bf42.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 815176 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e1bf42.IT BndT_Na_003.SegItab_Na_e1bf42.IT_sound BF NX0 BR XSTEP F0 PSS plan 815176 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awt9a.

Module LibSegNa_awt9b.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e1bf42.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e1bf42.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$24$37$38$39$=$>$?$10$11$3:+&6$24#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$24##8$2-30#30'$29#1000#7?????????>8&$29#8"%pstring).
Definition ss0 : sym_state := SS 815204 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-42), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-42), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<7080+$2-30$3$4$5$6$7$;$24$29+$2-2:$39$=$>$?$10$11$3:+&6$24#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,?!$2-2:,1#<%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$24##8$2-30#30'$29#1000#7?????????>8&$29#8,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e1bf42.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 815204 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e1bf42.IT BndT_Na_003.SegItab_Na_e1bf42.IT_sound BF NX0 BR XSTEP F0 PSS plan 815204 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awt9b.

Module LibSegNa_awt9c.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e1bf42.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e1bf42.IT.
Definition ENDS : list Z := [813596].
Definition STOPS1 : list Z := [813596] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$24$37$38$39$=$>$?$10$11$3:+&6$24#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$24##8$2-30#30'$29#1000#7?????????>8&$29#8"%pstring).
Definition ss0 : sym_state := SS 815232 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-41), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-41), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<6:1<#<6:1<#5=#<6:1<,20##<709<+$2-30$3$4$5$6$7$;$24$29+$2-29$39$=$>$?$10$11$3:+&6$24#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,?!$2-29,1^#?#???????????????%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30'$24#1008#7?????????=0&$24#8)##7???7000#100000001000$24##8#&6$24#3#7???8000#1!$24#,8$29)$24##8$2-30#30'$29#1000#7?????????>8&$29#8,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e1bf42.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 815232 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e1bf42.IT BndT_Na_003.SegItab_Na_e1bf42.IT_sound BF NX0 BR XSTEP F0 PSS plan 815232 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awt9c.

Module LibSegNa_awt9d.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e1bf42.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e1bf42.IT.
Definition ENDS : list Z := [811884].
Definition STOPS1 : list Z := [811884] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$24$37$38$39$=$>$?$10$11$3:+&6$24#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",8%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30'$;#^#?#???????????????'$<#^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 815260 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<636<#<636<#5=#<636<,20##<70:8+$2-30$3$4$5$6$7$;$24%0$3:#$24$39$=$>$?$10$11$3:+&6$24#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,8%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30'$;#^#?#???????????????'$<#^#?#???????????????,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e1bf42.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 815260 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e1bf42.IT BndT_Na_003.SegItab_Na_e1bf42.IT_sound BF NX0 BR XSTEP F0 PSS plan 815260 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awt9d.

Module LibSegNa_awt9e.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e1bf42.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e1bf42.IT.
Definition ENDS : list Z := [815412].
Definition STOPS1 : list Z := [815412] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$24$37$38$39$=$>$?$10$11$3:+&6$24#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 1376256 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487216 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48)].
Definition ss0 : sym_state := SS 815272 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<7134#<7134#5=#<7134,20##<70>8+$2-30$3$4$5$6$7$;$24$;$24$39$=$>$?$10$11$3:+&6$24#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,6%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 815412 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e1bf42.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 815272 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e1bf42.IT BndT_Na_003.SegItab_Na_e1bf42.IT_sound BF NX0 BR XSTEP F0 PSS plan 815272 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awt9e.

Module LibSegNa_awtA.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e1bf42.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e1bf42.IT.
Definition ENDS : list Z := [815176; 815280; 815116].
Definition STOPS1 : list Z := [815176; 815280; 815116] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38($:##38)$2-30#30$:##38#&6+$:#8#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#^#?#???????????????'$<#^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 815024 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,6#<7048#<70;0#<700<#<7048#<70;0#<700<#5;#<6?><,20#$1+$2-30$3$4$5$6$7$;+$:#8&6+$:#8#3&6$;#22#15?:78$=$>$?$10$11$<+&6+$:#8#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,16!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38($:##38)$2-30#30$:##38#&6+$:#8#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#^#?#???????????????'$<#^#?#???????????????,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition arms2 := Eval vm_compute in (match SGP.branch_probe IT s1 with Some e => SGP.case_arms s1 e 0 | None => None end).
Definition f2 : sym_state := match arms2 with Some (Some s, _) => s | _ => s1 end.
Definition t2 : sym_state := match arms2 with Some (_, Some s) => s | _ => s1 end.

Definition ex3 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,6#<7048#<70;0#<700<#<7048#<70;0#<700<#5;#<7008,20#$1+$2-30$3$4$5$6$7$;+$:#8$29&6&8@#400000000$<$;#20#15?:78$=$>$?$10$11&8@#400000000$<$;+&6+$:#8#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,17'&4&1&6$;#22##1#1#1!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38($:##38)$2-30#30$:##38#&6+$:#8#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#^#?#???????????????'$<#^#?#???????????????,3<!"%pstring).
Definition s3 : sym_state := snd (snd ex3).

Definition arms4 := Eval vm_compute in (match SGP.branch_probe IT s3 with Some e => SGP.case_arms s3 e 0 | None => None end).
Definition f4 : sym_state := match arms4 with Some (Some s, _) => s | _ => s3 end.
Definition t4 : sym_state := match arms4 with Some (_, Some s) => s | _ => s3 end.

Definition ex5 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,6#<7048#<70;0#<700<#<7048#<70;0#<700<#5:#<700<,20#$1+$2-30$3$4$5$6$7$;+$:#8$29&6&8@#400000000$<$;#20#15?:78$=$>$?$10$11&8@#400000000$<$;+&6+$:#8#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,18'&4&1&6&8@#400000000$<$;#20##1#1#1'&4&1&6$;#22##1#1#1!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38($:##38)$2-30#30$:##38#&6+$:#8#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#^#?#???????????????'$<#^#?#???????????????,3<!"%pstring).
Definition s5 : sym_state := snd (snd ex5).

Definition ex6 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,6#<7048#<70;0#<700<#<7048#<70;0#<700<#5:#<70;0,20#$1+$2-30$3$4$5$6$7$;+$:#8$29&6&8@#400000000$<$;#20#15?:78$=$>$?$10$11&8@#400000000$<$;+&6+$:#8#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,18'&4&1&6&8@#400000000$<$;#20##1##'&4&1&6$;#22##1#1#1!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38($:##38)$2-30#30$:##38#&6+$:#8#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#^#?#???????????????'$<#^#?#???????????????,3<!"%pstring).
Definition s6 : sym_state := snd (snd ex6).

Definition ex7 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,6#<7048#<70;0#<700<#<7048#<70;0#<700<#5:#<7048,20#$1+$2-30$3$4$5$6$7$;+$:#8&6+$:#8#3&6$;#22#15?:78$=$>$?$10$11$<+&6+$:#8#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,17'&4&1&6$;#22##1##!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30'$:#1000#7?????????<8&$:#8)##7???7000#100000001000$:##38($:##38)$2-30#30$:##38#&6+$:#8#3#7???8000#1!$:#8,8$29'$29#1000#7?????????>8&$29#8'$;#^#?#???????????????'$<#^#?#???????????????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 815176 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition regs_out1 : list expr := Eval vm_compute in (s_regs s6).
Definition exit_sp_off1 : Z := Eval vm_compute in (spoff_of s6).
Definition cells1 : list kentry := Eval vm_compute in (cells_of s6 exit_sp_off1).
Definition nfresh1 : nat := Eval vm_compute in (s_next s6 - NX0)%nat.
Definition exit_pc1 : Z := Eval vm_compute in (s_pc s6).
Definition ps1 : SR.post_spec := SR.PS 815280 (map (fun i => (i, nth i regs_out1 (ELit 0))) (seq 1 31)) F0L cells1.

Definition regs_out2 : list expr := Eval vm_compute in (s_regs s5).
Definition exit_sp_off2 : Z := Eval vm_compute in (spoff_of s5).
Definition cells2 : list kentry := Eval vm_compute in (cells_of s5 exit_sp_off2).
Definition nfresh2 : nat := Eval vm_compute in (s_next s5 - NX0)%nat.
Definition exit_pc2 : Z := Eval vm_compute in (s_pc s5).
Definition ps2 : SR.post_spec := SR.PS 815116 (map (fun i => (i, nth i regs_out2 (ELit 0))) (seq 1 31)) F0L cells2.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0; ps1; ps2] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e1bf42.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 815024 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e1bf42.IT BndT_Na_003.SegItab_Na_e1bf42.IT_sound BF NX0 BR XSTEP F0 PSS plan 815024 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awtA.

Module LibSegNa_awtZ.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_003.SegItab_Na_e1bf42.ITR.
Definition IT : itab := BndT_Na_003.SegItab_Na_e1bf42.IT.
Definition ENDS : list Z := [815360].
Definition STOPS1 : list Z := [815360] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$24$37$38$39$=$>$?$10$11$3;+&6$24#3#7???8000$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30"%pstring).
Definition ss0 : sym_state := SS 815336 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<7100#<7100#5=#<7100,20#$2<$2$3$4$5$6$7$2=$2>$37$38$39$=$>$?$10$11$2?$30$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;%#150000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801030#800000000000&$2#10($2-30#30!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 815360 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_003.SegItab_Na_e1bf42.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 815336 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_003.SegItab_Na_e1bf42.IT BndT_Na_003.SegItab_Na_e1bf42.IT_sound BF NX0 BR XSTEP F0 PSS plan 815336 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_awtZ.

Module LibSegNa_axeB.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_754acc.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_754acc.IT.
Definition ENDS : list Z := [520280].
Definition STOPS1 : list Z := [520280; 799096; 799728; 799496; 799420; 801208; 801216; 801232; 801236; 801240; 801244] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$44+$2-:0$3$4$46$47$48$34+$2-:0$32$49$42$4:$4;$4<$4=$4>$12$13$:#7$2<$;$18$19$1:#7???8000$4?$45$30$31"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",=%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801080#800000000000&$2#20($2-90#8'$32#6;6000#7????????>00&$32#20)##7???7000#100000001000$32##200)$2-:0#;0$32##200($32##18(+&6$32#3#7???8000##34($32#>0#1"%pstring).
Definition ss0 : sym_state := SS 799076 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-144), ELit 8); ((EVar 50), (0), ELit 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), ELit 52); ((EVar 50), (224), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-144), 8); ((EVar 50), (0), 24); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), 52); ((EVar 50), (224), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,<#7?058#<3178#<33?0#<3308#<32;<#<39;8#<39<0#<39=0#<39=4#<39=8#<39=<#7?058#5=#7?058,20##<33:4+$2-:0$3$4$46$47$48$34+$2-:0+$32#>8##18#<30>8$4;$4<$4=$4>+&6$32#3#7???8000$32$:+$32#>0$2<$;$18$19$32#7???8000$4?$45$30$31,,46!$32#>0,1#!&6$32#3#7???801?,1#!&6$32#3#7???801>,1#!&6$32#3#7???801=,1#!&6$32#3#7???801<,1#!&6$32#3#7???8033,1^#?#??????????????3!&6$32#3#7???8032,1^#?#??????????????3!&6$32#3#7???8031,1^#?#??????????????3!&6$32#3#7???8030,1^#?#??????????????3!&6$32#3#7???802;,1^#?#??????????????2!&6$32#3#7???802:,1^#?#??????????????2!&6$32#3#7???8029,1^#?#??????????????2!&6$32#3#7???8028,1^#?#??????????????2!&6$32#3#7???8023,1^#?#??????????????2!&6$32#3#7???8022,1^#?#??????????????2!&6$32#3#7???8021,1^#?#??????????????2!&6$32#3#7???8020,1^#?#??????????????2!&6$32#3#7???801;,1^#?#??????????????2!&6$32#3#7???801:,1^#?#??????????????2!&6$32#3#7???8019,1^#?#??????????????2!&6$32#3#7???8018,1^#?#??????????????2!&6$32#3#7???8013,1^#?#??????????????2!&6$32#3#7???8012,1^#?#??????????????2!&6$32#3#7???8011,1^#?#??????????????2!&6$32#3#7???8010,1^#?#??????????????2!&6$32#3#7???800;,1^#?#??????????????2!&6$32#3#7???800:,1^#?#??????????????2!&6$32#3#7???8009,1^#?#??????????????2!&6$32#3#7???8008,1^#?#??????????????2!&6$32#3#7???802?,1^#?#??????????????8!&6$32#3#7???802>,1^#?#??????????????8!&6$32#3#7???802=,1^#?#??????????????8!&6$32#3#7???802<,1^#?#??????????????8!&6$32#3#7???8027,1^#?#??????????????8!&6$32#3#7???8026,1^#?#??????????????8!&6$32#3#7???8025,1^#?#??????????????8!&6$32#3#7???8024,1^#?#??????????????8!&6$32#3#7???8017,1^#?#??????????????8!&6$32#3#7???8016,1^#?#??????????????8!&6$32#3#7???8015,1^#?#??????????????8!&6$32#3#7???8014,1^#?#??????????????8!&6$32#3#7???800?,1^#?#??????????????8!&6$32#3#7???800>,1^#?#??????????????8!&6$32#3#7???800=,1^#?#??????????????8!&6$32#3#7???800<,1^#?#??????????????8!&6$32#3#7???8007,1^#?#??????????????8!&6$32#3#7???8006,1^#?#??????????????8!&6$32#3#7???8005,1^#?#??????????????8!&6$32#3#7???8004,1^#?#??????????????8!&6$32#3#7???8003,1^#?#??????????????1!&6$32#3#7???8002,1^#?#??????????????1!&6$32#3#7???8001,1^#?#??????????????1!&6$32#3#7???8000,1^#?#??????????????1!$32#10,8#<30>8!$32#8,8#1>9<3!$32#,8#41;58:;3!$2-90,8$32%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801080#800000000000&$2#20($2-90#8'$32#6;6000#7????????>00&$32#20)##7???7000#100000001000$32##200)$2-:0#;0$32##200($32##18(+&6$32#3#7???8000##34($32#>0#1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 520280 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_754acc.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 799076 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_754acc.IT BndT_Na_001.SegItab_Na_754acc.IT_sound BF NX0 BR XSTEP F0 PSS plan 799076 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_axeB.

Module LibSegNa_axeC.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_754acc.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_754acc.IT.
Definition ENDS : list Z := [816880].
Definition STOPS1 : list Z := [816880; 801208; 801216; 801232; 801236; 801240; 801244] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$44+$2-:0$3$4$46$47$48$34+$2-:0$43$49$42$4:$4;$4<$4=$4>+&6$32#3#7???8000$32$:+$32#>0$2<$;$18$19$32#7???8000$4?$45$30$31"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801080#800000000000&$2#20'$32#6;6000#7????????>00&$32#20)##7???7000#100000001000$32##200)$2-:0#;0$32##200'$;#6;6000#7??????????0)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1!$;#,8$21!$;#8,8$22'$21##800000000000'$22##1?)$;##10$32##200"%pstring).
Definition ss0 : sym_state := SS 799652 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,8#<76?0#<39;8#<39<0#<39=0#<39=4#<39=8#<39=<#<76?0#5=#<76?0,20##<33=8+$2-:0$3$4$46$47$48$34+$2-:0$21$22+$32#>0$4:$4;$4<$4=$4>+&6$32#3#7???8000$32$:+$32#>0$2<$;$18$19$32#7???8000$4?$45$30$31,,12%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801080#800000000000&$2#20'$32#6;6000#7????????>00&$32#20)##7???7000#100000001000$32##200)$2-:0#;0$32##200'$;#6;6000#7??????????0)##7???7000#100000001000$;##10#&6$;#3#7???8000#1#&6+$;#8#3#7???8000#1!$;#,8$21!$;#8,8$22'$21##800000000000'$22##1?)$;##10$32##200,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 816880 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_754acc.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 799652 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_754acc.IT BndT_Na_001.SegItab_Na_754acc.IT_sound BF NX0 BR XSTEP F0 PSS plan 799652 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_axeC.

Module LibSegNa_axeF.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_754acc.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_754acc.IT.
Definition ENDS : list Z := [810712].
Definition STOPS1 : list Z := [810712; 817008; 801208; 801216; 801232; 801236; 801240; 801244] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$44+$2-:0$3$4$46$47$48$34+$2-:0$43#16$42$4:$4;$4<$4=$4>+&6$32#3#7???8000$32$:+$32#>0$2<$;$18$19$32#7???8000$4?$45$30$31"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",8%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801080#800000000000&$2#20'$32#6;6000#7????????>00&$32#20)##7???7000#100000001000$32##200"%pstring).
Definition ss0 : sym_state := SS 799704 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,9#<5>=8#<7770#<39;8#<39<0#<39=0#<39=4#<39=8#<39=<#<5>=8#5=#<5>=8,20##<33><+$2-:0$3$4$46$47$48$34+$2-:0$2<#:$42$4:$4;$4<$4=$4>+&6$32#3#7???8000$32$:+$32#>0$2<$;$18$19$32#7???8000$4?$45$30$31,,8%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801080#800000000000&$2#20'$32#6;6000#7????????>00&$32#20)##7???7000#100000001000$32##200,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_754acc.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 799704 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_754acc.IT BndT_Na_001.SegItab_Na_754acc.IT_sound BF NX0 BR XSTEP F0 PSS plan 799704 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_axeF.

Module LibSegNa_axeJ.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_754acc.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_754acc.IT.
Definition ENDS : list Z := [800868].
Definition STOPS1 : list Z := [800868; 991168; 801208; 801216; 801232; 801236; 801240; 801244] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$44+$2-:0$3$4$46$47$48$34+$2-:0$43$49$42$4:$4;$4<$4=$4>+&6$32#3#7???8000$32$:+$32#>0+$32#120+$32#160+$32#168+$32#128$32#7???8000$4?$45$30$31"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",14%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801080#800000000000&$2#20'$32#6;6000#7????????>00&$32#20)##7???7000#100000001000$32##200!$32#>0,1$25'$25##??'&9$25#1##!$32#120,1$26'$26##??'&9$26#1##!$32#160,1$2:'$2:##??'&9$2:#1##(+&6$32#3#7???8000#1<#4(+&6$32#3#7???8000#24#4(+&6$32#3#7???8000#2<#4"%pstring).
Definition ss0 : sym_state := SS 800716 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (28), ELit 4); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (36), ELit 4); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (44), ELit 4)].
Definition F0L : list SR.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (28), 4); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (36), 4); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (44), 4)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,9#<3864#?1?<0#<39;8#<39<0#<39=0#<39=4#<39=8#<39=<#<3864#5=#<3864,20#$44+$2-:0$3$4$46$47$48$34+$2-:0^#?#??????????????8$49$42$4:$4;$4<$4=$4>+&6$32#3#7???8000$32^#?#??????????????8+$32#>0+$32#120+$32#160+$32#168+$32#128$32#7???8000$4?$45$30$31,,20!&6$32#3#7???801?,1^#?#??????????????8!&6$32#3#7???801>,1^#?#??????????????8!&6$32#3#7???801=,1^#?#??????????????8!&6$32#3#7???801<,1^#?#??????????????8!&6$32#3#7???8027,1^#?#??????????????8!&6$32#3#7???8026,1^#?#??????????????8!&6$32#3#7???8025,1^#?#??????????????8!&6$32#3#7???8024,1^#?#??????????????8!&6$32#3#7???802?,1^#?#??????????????8!&6$32#3#7???802>,1^#?#??????????????8!&6$32#3#7???802=,1^#?#??????????????8!&6$32#3#7???802<,1^#?#??????????????8%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801080#800000000000&$2#20'$32#6;6000#7????????>00&$32#20)##7???7000#100000001000$32##200!$32#>0,1$25'$25##??'&9$25#1##!$32#120,1$26'$26##??'&9$26#1##!$32#160,1$2:'$2:##??'&9$2:#1##(+&6$32#3#7???8000#1<#4(+&6$32#3#7???8000#24#4(+&6$32#3#7???8000#2<#4,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 800868 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_754acc.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 800716 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_754acc.IT BndT_Na_001.SegItab_Na_754acc.IT_sound BF NX0 BR XSTEP F0 PSS plan 800716 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_axeJ.

Module LibSegNa_axeJz.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_754acc.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_754acc.IT.
Definition ENDS : list Z := [800868].
Definition STOPS1 : list Z := [800868; 801208; 801216; 801232; 801236; 801240; 801244] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$44+$2-:0$3$4$46$47$48$34+$2-:0$43$49$42$4:$4;$4<$4=$4>+&6$32#3#7???8000$32$:+$32#>0$2<$;$18$19$32#7???8000$4?$45$30$31"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",<%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801080#800000000000&$2#20'$32#6;6000#7????????>00&$32#20)##7???7000#100000001000$32##200!$32#>0,1$25'$25##??'&9$25#1##(+&6$32#3#7???8000#1<#4"%pstring).
Definition ss0 : sym_state := SS 800288 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (28), ELit 4)].
Definition F0L : list SR.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (28), 4)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,8#<3864#<39;8#<39<0#<39=0#<39=4#<39=8#<39=<#<3864#5=#<3864,20#$44+$2-:0$3$4$46$47$48$34+$2-:0^#?#??????????????8$49$42$4:$4;$4<$4=$4>+&6$32#3#7???8000$32$:+$32#>0$2<$;$18$19$32#7???8000$4?$45$30$31,,10!&6$32#3#7???801?,1^#?#??????????????8!&6$32#3#7???801>,1^#?#??????????????8!&6$32#3#7???801=,1^#?#??????????????8!&6$32#3#7???801<,1^#?#??????????????8%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801080#800000000000&$2#20'$32#6;6000#7????????>00&$32#20)##7???7000#100000001000$32##200!$32#>0,1$25'$25##??'&9$25#1##(+&6$32#3#7???8000#1<#4,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 800868 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_754acc.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 800288 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_754acc.IT BndT_Na_001.SegItab_Na_754acc.IT_sound BF NX0 BR XSTEP F0 PSS plan 800288 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_axeJz.

Module LibSegNa_axeK.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_754acc.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_754acc.IT.
Definition ENDS : list Z := [817008].
Definition STOPS1 : list Z := [817008; 810712; 801208; 801216; 801232; 801236; 801240; 801244] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$44+$2-:0$3$4$46$47$48$34+$2-:0$43#$42$4:$4;$4<$4=$4>+&6$32#3#7???8000$32$:+$32#>0$2<$;$18$19$32#7???8000$4?$45$30$31"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",8%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801080#800000000000&$2#20'$32#6;6000#7????????>00&$32#20)##7???7000#100000001000$32##200"%pstring).
Definition ss0 : sym_state := SS 799704 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,9#<7770#<5>=8#<39;8#<39<0#<39=0#<39=4#<39=8#<39=<#<7770#5=#<7770,20##<3538+$2-:0$3$4$46$47$48$34+$2-:0+$32#>0#$42$4:$4;$4<$4=$4>+&6$32#3#7???8000$32$:+$32#>0$2<$;$18$19$32#7???8000$4?$45$30$31,,8%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801080#800000000000&$2#20'$32#6;6000#7????????>00&$32#20)##7???7000#100000001000$32##200,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 817008 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_754acc.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 799704 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_754acc.IT BndT_Na_001.SegItab_Na_754acc.IT_sound BF NX0 BR XSTEP F0 PSS plan 799704 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_axeK.

End BndP_Na_036.
