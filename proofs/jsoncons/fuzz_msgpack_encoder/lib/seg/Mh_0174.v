(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
Set Warnings "-require-in-module".
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel. From Stdlib Require ZArith NArith List Lia Bool. From LinuxProcessSemantics.LinuxProcessSem Require BvBase RiscvSemantics MemImageType State Run. From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Asan. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_002 BndT_Na_000. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Module BndP_Na_104.
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
Ltac2 kr_t_BndP_Na_104 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_002ASegItab_Na_89918d2ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104=LibSegNa_qtzB2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104=LibSegNa_qtzB3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104=LibSegNa_qtzB2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104=LibSegNa_qtzB5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104=LibSegNa_qtzB2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104=LibSegNa_qtzB3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104=LibSegNa_qtzB4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104=LibSegNa_qtzB5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104=LibSegNa_qtzB3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qtzC02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qtzC03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qtzC02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qtzC05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qtzC02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qtzC03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qtzC04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qtzC05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qtzC03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qtzC002BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qtzC003NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qtzC002BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qtzC005XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qtzC002F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qtzC003PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qtzC004planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qtzC005regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qtzC003kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qtzC12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qtzC13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qtzC12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qtzC15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qtzC12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qtzC13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qtzC14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qtzC15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qtzC13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qtzC102BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qtzC103NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qtzC102BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qtzC105XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qtzC102F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qtzC103PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qtzC104planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qtzC105regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qtzC103kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qtzC112BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qtzC113NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qtzC112BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qtzC115XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qtzC112F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qtzC113PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qtzC114planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qtzC115regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qtzC113kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104=LibSegNa_qtzD2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104=LibSegNa_qtzD3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104=LibSegNa_qtzD2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104=LibSegNa_qtzD5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104=LibSegNa_qtzD2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104=LibSegNa_qtzD3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104=LibSegNa_qtzD4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104=LibSegNa_qtzD5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104=LibSegNa_qtzD3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_000ASegItab_Na_2568f22ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104=LibSegNa_qvaA2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104=LibSegNa_qvaA3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104=LibSegNa_qvaA2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104=LibSegNa_qvaA5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104=LibSegNa_qvaA2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104=LibSegNa_qvaA3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104=LibSegNa_qvaA4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104=LibSegNa_qvaA5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104=LibSegNa_qvaA3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_000ASegItab_Na_0dd4162ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qvaDs22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qvaDs23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qvaDs22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qvaDs25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qvaDs22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qvaDs23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qvaDs24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qvaDs25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qvaDs23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qvaDt2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qvaDt3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qvaDt2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qvaDt5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qvaDt2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qvaDt3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qvaDt4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qvaDt5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qvaDt3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qvaKT02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qvaKT03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qvaKT02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qvaKT05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qvaKT02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qvaKT03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qvaKT04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qvaKT05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104?LibSegNa_qvaKT03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104@LibSegNa_qvaKT1n2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104@LibSegNa_qvaKT1n3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104@LibSegNa_qvaKT1n2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104@LibSegNa_qvaKT1n5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104@LibSegNa_qvaKT1n2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104@LibSegNa_qvaKT1n3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104@LibSegNa_qvaKT1n4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104@LibSegNa_qvaKT1n5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104@LibSegNa_qvaKT1n3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104@LibSegNa_qvaKT1z2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104@LibSegNa_qvaKT1z3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104@LibSegNa_qvaKT1z2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104@LibSegNa_qvaKT1z5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104@LibSegNa_qvaKT1z2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104@LibSegNa_qvaKT1z3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104@LibSegNa_qvaKT1z4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104@LibSegNa_qvaKT1z5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104@LibSegNa_qvaKT1z3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qvaKp2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qvaKp3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qvaKp2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qvaKp5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qvaKp2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qvaKp3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qvaKp4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qvaKp5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_104>LibSegNa_qvaKp3kn0".

Module LibSegNa_qtzB.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_89918d.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_89918d.IT.
Definition ENDS : list Z := [828448].
Definition STOPS1 : list Z := [828448; 827548; 828196] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-80$3$4$5$6$7$8+$2-80$32$;$<$=$>$?$10$11$12$22$21$15$16$17#7???8000$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12'$2#7???7?801080#800000000000&$2#20($2-68#8)+$2-80##80$32##80'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80)$21##20$32##80)&6$21#3#7???8000#4&6$32#3#7???8000#10($32##18(&6$32#3#7???8000#<'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-80#90$21##20!$21#8,8$23"%pstring).
Definition ss0 : sym_state := SS 827540 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#<:420#<:09<#<:324#<:420#5=#<:420,20##<:154+$2-80$3$4$5$6$7$8+$2-80$21$22#<:024^#?#??????????????3^#?#??????????????8^#?#??????????????1$10$11$32$22$21+$21#8+&6$32#3#7???8000$32#7???8000$23+&6+$21#8#3#7???8000$1;$1<$1=$1>$1?,,22!$2-68,8$32!&6$32#3#7???800;,1^#?#??????????????3!&6$32#3#7???800:,1^#?#??????????????3!&6$32#3#7???8009,1^#?#??????????????3!&6$32#3#7???8008,1^#?#??????????????3!&6$32#3#7???8007,1^#?#??????????????3!&6$32#3#7???8006,1^#?#??????????????8!&6$32#3#7???8005,1^#?#??????????????8!&6$32#3#7???8004,1^#?#??????????????8!&6$32#3#7???8003,1^#?#??????????????1!&6$32#3#7???8002,1^#?#??????????????1!&6$32#3#7???8001,1^#?#??????????????1!&6$32#3#7???8000,1^#?#??????????????1!$32#10,8#<:024!$32#8,8#21?8>!$32#,8#41;58:;3'$2#7???7?801080#800000000000&$2#20($2-68#8)+$2-80##80$32##80'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80)$21##20$32##80)&6$21#3#7???8000#4&6$32#3#7???8000#10($32##18(&6$32#3#7???8000#<'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-80#90$21##20!$21#8,8$23,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 828448 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_89918d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 827540 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_89918d.IT BndT_Na_002.SegItab_Na_89918d.IT_sound BF NX0 BR XSTEP F0 PSS plan 827540 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtzB.

Module LibSegNa_qtzC0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_89918d.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_89918d.IT.
Definition ENDS : list Z := [827888].
Definition STOPS1 : list Z := [827888; 828108; 827840; 828204] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$22$21+$21#8$16$17#7???8000#+&6+$21#8#3#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$26'$26##??'&9$26#1##!$21#8,8#'$22#1#2"%pstring).
Definition ss0 : sym_state := SS 827732 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 33), (8), ELit 8); ((EVar 33), (16), ELit 16)].
Definition F0L : list SR.region := [((EVar 33), (8), 8); ((EVar 33), (16), 16)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,5#<:1?0#<:2<<#<:1<0#<:32<#<:1?0#5=#<:1?0,20#$1$2$3$4$5$6$7$8$9+$21#18#1#$=$>$?$10$11$12$22+$21#10+$21#8$16$17#7???8000#1+&6+$21#8#3#7???8000$1;$1<$1=$1>$1?,,<!$21#18,8#!$21#10,8#!$21#8,8$22'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$26'$26##??'&9$26#1##'$22#1#2,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 827888 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_89918d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 827732 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_89918d.IT BndT_Na_002.SegItab_Na_89918d.IT_sound BF NX0 BR XSTEP F0 PSS plan 827732 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtzC0.

Module LibSegNa_qtzC00.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_89918d.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_89918d.IT.
Definition ENDS : list Z := [827888].
Definition STOPS1 : list Z := [827888; 828108; 827840; 828204; 827748] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12#$21+$21#8$16$17#7???8000#+&6+$21#8#3#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$26'$26##??'&9$26#1##!$21#8,8#"%pstring).
Definition ss0 : sym_state := SS 827732 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,6#<:1?0#<:2<<#<:1<0#<:32<#<:164#<:1?0#5=#<:1?0,20#$1$2$3$4$5$6$7$8$9#$;$<$=$>$?$10$11$12#$21+$21#8$16$17#7???8000#+&6+$21#8#3#7???8000$1;$1<$1=$1>$1?,,9!$21#8,8#'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$26'$26##??'&9$26#1##,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 827888 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_89918d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 827732 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_89918d.IT BndT_Na_002.SegItab_Na_89918d.IT_sound BF NX0 BR XSTEP F0 PSS plan 827732 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtzC00.

Module LibSegNa_qtzC1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_89918d.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_89918d.IT.
Definition ENDS : list Z := [827888].
Definition STOPS1 : list Z := [827888; 828108; 827840; 828204] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12#2$21+$21#8$16$17#7???8000#1+&6+$21#8#3#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$26'$26##??'&9$26#1##!$21#8,8#1!$21#10,8$24"%pstring).
Definition ss0 : sym_state := SS 827732 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 33), (8), ELit 8); ((EVar 33), (24), ELit 8)].
Definition F0L : list SR.region := [((EVar 33), (8), 8); ((EVar 33), (24), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,5#<:1?0#<:2<<#<:1<0#<:32<#<:1?0#5=#<:1?0,20#$1$2$3$4$5$6$7$8$9+$21#18#1#$=$>$?$10$11$12#2+$21#10+$21#8$16$17#7???8000#1+&6+$21#8#3#7???8000$1;$1<$1=$1>$1?,,;!$21#18,8#!$21#8,8#2'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$26'$26##??'&9$26#1##!$21#10,8$24,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 827888 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_89918d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 827732 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_89918d.IT BndT_Na_002.SegItab_Na_89918d.IT_sound BF NX0 BR XSTEP F0 PSS plan 827732 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtzC1.

Module LibSegNa_qtzC10.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_89918d.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_89918d.IT.
Definition ENDS : list Z := [827888].
Definition STOPS1 : list Z := [827888; 828108; 827840; 828204; 827748] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12#$21+$21#8$16$17#7???8000#1+&6+$21#8#3#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$26'$26##??'&9$26#1##!$21#8,8#1"%pstring).
Definition ss0 : sym_state := SS 827732 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,6#<:1?0#<:2<<#<:1<0#<:32<#<:164#<:1?0#5=#<:1?0,20#$1$2$3$4$5$6$7$8$9#$;$<$=$>$?$10$11$12#$21+$21#8$16$17#7???8000#1+&6+$21#8#3#7???8000$1;$1<$1=$1>$1?,,9!$21#8,8#'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$26'$26##??'&9$26#1##,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 827888 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_89918d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 827732 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_89918d.IT BndT_Na_002.SegItab_Na_89918d.IT_sound BF NX0 BR XSTEP F0 PSS plan 827732 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtzC10.

Module LibSegNa_qtzC11.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_89918d.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_89918d.IT.
Definition ENDS : list Z := [827888].
Definition STOPS1 : list Z := [827888; 828108; 827840; 828204; 827748] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12#1$21+$21#8$16$17#7???8000#1+&6+$21#8#3#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$26'$26##??'&9$26#1##!$21#8,8#1"%pstring).
Definition ss0 : sym_state := SS 827732 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,6#<:1?0#<:2<<#<:1<0#<:32<#<:164#<:1?0#5=#<:1?0,20#$1$2$3$4$5$6$7$8$9#$;$<$=$>$?$10$11$12#1$21+$21#8$16$17#7???8000#1+&6+$21#8#3#7???8000$1;$1<$1=$1>$1?,,9!$21#8,8#1'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$26'$26##??'&9$26#1##,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 827888 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_89918d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 827732 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_89918d.IT BndT_Na_002.SegItab_Na_89918d.IT_sound BF NX0 BR XSTEP F0 PSS plan 827732 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtzC11.

Module LibSegNa_qtzD.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_89918d.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_89918d.IT.
Definition ENDS : list Z := [828088].
Definition STOPS1 : list Z := [828088; 827984] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$34$9$:$;$<$=$>$?$10$11$32$13$14$15+&6$32#3#7???8000$32$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1>'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80)$21##20$32##80)&6$21#3#7???8000#4&6$32#3#7???8000#10($32##8(&6$32#3#7???8000#10!$32#78,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##80$33##1)$21##20$33##1'$34#7???7?801080#800000000000&$34#10!$34-8,8$35!$34-10,8$36!$34-18,8$37!$34-20,8$38!$34-28,8$39!$34-30,8$3:!$34-38,8$3;!$34-40,8$3<!$34-48,8$3=!$34-50,8$3>!$34-58,8$3?!$34-60,8$40)+$34-80##80$32##80)+$34-80##80$33##1)$34-80#80$21##20"%pstring).
Definition ss0 : sym_state := SS 827888 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#<:2;8#<:250#<:2;8#5=#<:2;8,20#$35$34$3$4$5$6$7$36$37$33$;$<$=$>$?$10$11$38$39$3:$3;$3<$3=$3>$3?$40$1;$1<$1=$1>$1?,,30!$33#,1#!&6$32#3#7???800;,1^#?#??????????????5!&6$32#3#7???800:,1^#?#??????????????5!&6$32#3#7???8009,1^#?#??????????????5!&6$32#3#7???8008,1^#?#??????????????5!&6$32#3#7???800?,1^#?#??????????????5!&6$32#3#7???800>,1^#?#??????????????5!&6$32#3#7???800=,1^#?#??????????????5!&6$32#3#7???800<,1^#?#??????????????5!&6$32#3#7???8003,1^#?#??????????????5!&6$32#3#7???8002,1^#?#??????????????5!&6$32#3#7???8001,1^#?#??????????????5!&6$32#3#7???8000,1^#?#??????????????5!&6$32#3#7???8007,1^#?#??????????????5!&6$32#3#7???8006,1^#?#??????????????5!&6$32#3#7???8005,1^#?#??????????????5!&6$32#3#7???8004,1^#?#??????????????5!$32#,8#45>0360>'$32#6;6000#7?????????80&$32#20)##7???7000#100000001000$32##80)$21##20$32##80)&6$21#3#7???8000#4&6$32#3#7???8000#10($32##8(&6$32#3#7???8000#10!$32#78,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##80$33##1)$21##20$33##1'$34#7???7?801080#800000000000&$34#10!$34-8,8$35!$34-10,8$36!$34-18,8$37!$34-20,8$38!$34-28,8$39!$34-30,8$3:!$34-38,8$3;!$34-40,8$3<!$34-48,8$3=!$34-50,8$3>!$34-58,8$3?!$34-60,8$40)+$34-80##80$32##80)+$34-80##80$33##1)$34-80#80$21##20,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 828088 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_89918d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 827888 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_89918d.IT BndT_Na_002.SegItab_Na_89918d.IT_sound BF NX0 BR XSTEP F0 PSS plan 827888 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtzD.

Module LibSegNa_qvaA.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2568f2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2568f2.IT.
Definition ENDS : list Z := [722704].
Definition STOPS1 : list Z := [722704] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 36); EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801050#800000000000&$2#10($2-50#50'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1"%pstring).
Definition ss0 : sym_state := SS 722616 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;0710#;0710#5=#;0710,20#$1+$2-50$3$4$5$6$7$24$9+$24#50$;#$=$>$?$10$11$>$=$<$;#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,12!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801050#800000000000&$2#10($2-50#50'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 722704 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2568f2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 722616 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2568f2.IT BndT_Na_000.SegItab_Na_2568f2.IT_sound BF NX0 BR XSTEP F0 PSS plan 722616 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvaA.

Module LibSegNa_qvaDs2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_0dd416.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_0dd416.IT.
Definition ENDS : list Z := [793388].
Definition STOPS1 : list Z := [793388] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$27$23$22$21#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#10#3#7???8000#1!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##8#&6$26#3#7???8000#1!$26#,8#151130###80022228#1'$2#7???7?801060#800000000000&$2#10"%pstring).
Definition ss0 : sym_state := SS 723000 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<1;2<#<1;2<#5=#<1;2<,20##;0890+$2-50$3$4$5$6$7$24$9$26$21$22$23$27#<1;2<$10$11$27$23$22$21#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,?%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#10#3#7???8000#1!$24#10,8$26'$26#6;6000#7?????????<8)##7???7000#100000001000$26##8#&6$26#3#7???8000#1!$26#,8#151130###80022228#1'$2#7???7?801060#800000000000&$2#10,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 793388 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_0dd416.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 723000 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_0dd416.IT BndT_Na_000.SegItab_Na_0dd416.IT_sound BF NX0 BR XSTEP F0 PSS plan 723000 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvaDs2.

Module LibSegNa_qvaDt.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2568f2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2568f2.IT.
Definition ENDS : list Z := [754920].
Definition STOPS1 : list Z := [754920; 723000] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$24$9+$24#50$;$<$=$>$?$10$11$12$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$25-18,4#!$25-10,4#1'$2#7???7?801060#800000000000&$2#10($2-48#8"%pstring).
Definition ss0 : sym_state := SS 722704 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;84>8#;0838#;84>8#5=#;84>8,20##;0838+$2-50$3$4$5$6$7$24+$24#48+$24#48+$2-44+$2-48#$>$?$10$11$12$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,>!$2-48,4#1!$2-44,4#'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1'$2#7???7?801060#800000000000&$2#10($2-48#8,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2568f2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 722704 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2568f2.IT BndT_Na_000.SegItab_Na_2568f2.IT_sound BF NX0 BR XSTEP F0 PSS plan 722704 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvaDt.

Module LibSegNa_qvaKT0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2568f2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2568f2.IT.
Definition ENDS : list Z := [754920].
Definition STOPS1 : list Z := [754920; 722960] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$24$9+$24#50$;$<$=$>$?$10$11$12$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1!$25-18,4#!$25-10,4#'$2#7???7?801060#800000000000&$2#10($2-48#8"%pstring).
Definition ss0 : sym_state := SS 722704 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;84>8#;0810#;84>8#5=#;84>8,20##;0810+$2-50$3$4$5$6$7$24+$24#48+$24#48+$2-44+$2-48#$>$?$10$11#1$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,>!$2-48,4#1!$2-44,4#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1'$2#7???7?801060#800000000000&$2#10($2-48#8,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2568f2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 722704 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2568f2.IT BndT_Na_000.SegItab_Na_2568f2.IT_sound BF NX0 BR XSTEP F0 PSS plan 722704 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvaKT0.

Module LibSegNa_qvaKT1n.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2568f2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2568f2.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 722936] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$24$9+$24#50$;$<$=$>$?$10$11$12$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-10,4#!$25-8,8$2;'$2;#1^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 722704 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#?4640#;07?8#?4640#5=#?4640,20##;07?8+$2-50$3$4$5$6$7$24+$24#48+$24#30#2<$25#$>$?$10$11#1$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,?'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-10,4#!$25-8,8$2;'$2;#1^#?#???????????????,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2568f2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 722704 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2568f2.IT BndT_Na_000.SegItab_Na_2568f2.IT_sound BF NX0 BR XSTEP F0 PSS plan 722704 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvaKT1n.

Module LibSegNa_qvaKT1z.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2568f2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2568f2.IT.
Definition ENDS : list Z := [754920].
Definition STOPS1 : list Z := [754920; 722960] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$24$9+$24#50$;$<$=$>$?$10$11$12$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-10,4#!$25-8,8#'$2#7???7?801060#800000000000&$2#10($2-48#8"%pstring).
Definition ss0 : sym_state := SS 722704 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;84>8#;0810#;84>8#5=#;84>8,20##;0810+$2-50$3$4$5$6$7$24+$24#48+$24#48+$2-44+$2-48#$>$?$10$11#1$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,?!$2-48,4#1!$2-44,4#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-8#3#7???8000#1'$2#7???7?801060#800000000000&$2#10($2-48#8,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2568f2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 722704 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2568f2.IT BndT_Na_000.SegItab_Na_2568f2.IT_sound BF NX0 BR XSTEP F0 PSS plan 722704 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvaKT1z.

Module LibSegNa_qvaKp.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2568f2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2568f2.IT.
Definition ENDS : list Z := [754920].
Definition STOPS1 : list Z := [754920; 722960] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$8+$24#48$:$;$<$=$>$?$10$11#1$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332487264 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-72)) (ELit 8)].
Definition ss0 : sym_state := SS 722936 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;84>8#;0810#;84>8#5=#;84>8,20##;0810+$2-50$3$4$5$6$7$8+$24#48+$24#48+$2-44+$2-48$=$>$?$10$11#1$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-48,4#1!$2-44,4#1'$2#7???7?801060#800000000000&$2#10($2-48#8,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2568f2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 722936 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2568f2.IT BndT_Na_000.SegItab_Na_2568f2.IT_sound BF NX0 BR XSTEP F0 PSS plan 722936 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvaKp.

End BndP_Na_104.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_000 BndT_Na_002.
Module BndP_Na_105.
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
Ltac2 kr_t_BndP_Na_105 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_000ASegItab_Na_2568f22ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaKq2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaKq3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaKq2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaKq5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaKq2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaKq3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaKq4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaKq5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaKq3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvaV1n2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvaV1n3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvaV1n2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvaV1n5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvaV1n2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvaV1n3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvaV1n4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvaV1n5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvaV1n3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvaV1z2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvaV1z3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvaV1z2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvaV1z5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvaV1z2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvaV1z3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvaV1z4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvaV1z5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvaV1z3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvaVK22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvaVK23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvaVK22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvaVK25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvaVK22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvaVK23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvaVK24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvaVK25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvaVK23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaVp2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaVp3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaVp2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaVp5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaVp2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaVp3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaVp4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaVp5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaVp3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaVq2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaVq3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaVq2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaVq5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaVq2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaVq3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaVq4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaVq5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaVq3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaX02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaX03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaX02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaX05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaX02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaX03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaX04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaX05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaX03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaX12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaX13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaX12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaX15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaX12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaX13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaX14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaX15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvaX13kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_002ASegItab_Na_9d8eff2ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvbA02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvbA03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvbA02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvbA05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvbA02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvbA03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvbA04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvbA05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105>LibSegNa_qvbA03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvbA162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvbA163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvbA162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvbA165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvbA162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvbA163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvbA164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvbA165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105?LibSegNa_qvbA163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105ALibSegNa_qvbAk1e12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105ALibSegNa_qvbAk1e13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105ALibSegNa_qvbAk1e12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105ALibSegNa_qvbAk1e15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105ALibSegNa_qvbAk1e12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105ALibSegNa_qvbAk1e13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105ALibSegNa_qvbAk1e14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105ALibSegNa_qvbAk1e15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105ALibSegNa_qvbAk1e13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105ALibSegNa_qvbAk2e02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105ALibSegNa_qvbAk2e03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105ALibSegNa_qvbAk2e02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105ALibSegNa_qvbAk2e05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105ALibSegNa_qvbAk2e02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105ALibSegNa_qvbAk2e03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105ALibSegNa_qvbAk2e04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105ALibSegNa_qvbAk2e05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105ALibSegNa_qvbAk2e03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105ALibSegNa_qvbAk2e12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105ALibSegNa_qvbAk2e13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105ALibSegNa_qvbAk2e12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105ALibSegNa_qvbAk2e15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105ALibSegNa_qvbAk2e12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105ALibSegNa_qvbAk2e13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105ALibSegNa_qvbAk2e14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105ALibSegNa_qvbAk2e15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105ALibSegNa_qvbAk2e13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105=LibSegNa_qvbB2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105=LibSegNa_qvbB3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105=LibSegNa_qvbB2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105=LibSegNa_qvbB5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105=LibSegNa_qvbB2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105=LibSegNa_qvbB3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105=LibSegNa_qvbB4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105=LibSegNa_qvbB5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_105=LibSegNa_qvbB3kn0".

Module LibSegNa_qvaKq.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2568f2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2568f2.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 722972] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 36) 7036928 140737488355232].
Definition ss0 : sym_state := SS 722960 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#?4640#;081<#?4640#5=#?4640,20##;081<+$2-50$3$4$5$6$7$24$9+$24#30#5;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1'$24#6;6000#7?????????:0,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2568f2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 722960 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2568f2.IT BndT_Na_000.SegItab_Na_2568f2.IT_sound BF NX0 BR XSTEP F0 PSS plan 722960 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvaKq.

Module LibSegNa_qvaV1n.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2568f2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2568f2.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 722848] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$24$9+$24#50$;$<$=$>$?$10$11$12$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-14,4#1!$25-10,4#1!$25-8,8$2;'$2;#1^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 722704 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#?4640#;07:0#?4640#5=#?4640,20##;07:0+$2-50$3$4$5$6$7+$24#30+$24#48+$24#30#2<$25#$>$?$10$11$12$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-14,4#1!$25-10,4#1!$25-8,8$2;'$2;#1^#?#???????????????,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2568f2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 722704 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2568f2.IT BndT_Na_000.SegItab_Na_2568f2.IT_sound BF NX0 BR XSTEP F0 PSS plan 722704 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvaV1n.

Module LibSegNa_qvaV1z.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2568f2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2568f2.IT.
Definition ENDS : list Z := [754920].
Definition STOPS1 : list Z := [754920; 722876] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$24$9+$24#50$;$<$=$>$?$10$11$12$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",13'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-18,4#1!$25-14,4#1!$25-10,4#1!$25-8,8#'$2#7???7?801060#800000000000&$2#10($2-48#8"%pstring).
Definition ss0 : sym_state := SS 722704 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;84>8#;07;<#;84>8#5=#;84>8,20##;07;<+$2-50$3$4$5$6$7+$24#30+$24#48+$24#48+$2-44+$2-48#$>$?$10$11$12$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,10!$2-48,4#1!$2-44,4#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1'$2#7???7?801060#800000000000&$2#10($2-48#8,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2568f2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 722704 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2568f2.IT BndT_Na_000.SegItab_Na_2568f2.IT_sound BF NX0 BR XSTEP F0 PSS plan 722704 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvaV1z.

Module LibSegNa_qvaVK2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2568f2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2568f2.IT.
Definition ENDS : list Z := [754920].
Definition STOPS1 : list Z := [754920; 722876] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$24$9+$24#50$;$<$=$>$?$10$11$12$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1!$25-18,4#1!$25-14,4#2!$25-10,4#1'$2#7???7?801060#800000000000&$2#10($2-48#8"%pstring).
Definition ss0 : sym_state := SS 722704 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;84>8#;07;<#;84>8#5=#;84>8,20##;07;<+$2-50$3$4$5$6$7+$24#30+$24#48+$24#48+$2-44+$2-48#$>$?$10$11$12$13$14$15#7???8000$17$18$19$1:$1;$1<$1=$1>$1?,,?!$2-48,4#1!$2-44,4#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-18#3#7???8000#1#&6+$25-14#3#7???8000#1'$2#7???7?801060#800000000000&$2#10($2-48#8,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2568f2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 722704 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2568f2.IT BndT_Na_000.SegItab_Na_2568f2.IT_sound BF NX0 BR XSTEP F0 PSS plan 722704 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvaVK2.

Module LibSegNa_qvaVp.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2568f2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2568f2.IT.
Definition ENDS : list Z := [754920].
Definition STOPS1 : list Z := [754920; 722876] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$8+$24#48$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332487264 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-72)) (ELit 8)].
Definition ss0 : sym_state := SS 722848 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#;84>8#;07;<#;84>8#5=#;84>8,20##;07;<+$2-50$3$4$5$6$7$8+$24#48+$24#48+$2-44+$2-48$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-48,4#1!$2-44,4#1'$2#7???7?801060#800000000000&$2#10($2-48#8,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2568f2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 722848 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2568f2.IT BndT_Na_000.SegItab_Na_2568f2.IT_sound BF NX0 BR XSTEP F0 PSS plan 722848 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvaVp.

Module LibSegNa_qvaVq.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2568f2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2568f2.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [1001024; 722972] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7+$24#30$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 722876 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#?4640#;081<#?4640#5=#?4640,20##;081<+$2-50$3$4$5$6$7+$24#30$9+$24#30#5;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2568f2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 722876 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2568f2.IT BndT_Na_000.SegItab_Na_2568f2.IT_sound BF NX0 BR XSTEP F0 PSS plan 722876 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvaVq.

Module LibSegNa_qvaX0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2568f2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2568f2.IT.
Definition ENDS : list Z := [723128].
Definition STOPS1 : list Z := [723128] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$2#7???7?801060#800000000000&$2#10!$2-8,8$3<!$2-10,8$3=!$2-18,8$3>!$2-20,8$3?!$2-28,8$40!$2-30,8$41!$2-38,8$42!$2-40,8$43"%pstring).
Definition ss0 : sym_state := SS 722972 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;08;8#;08;8#5=#;08;8,20#$3<$2$3$4$5$6$7$3=$3>#1$;$<$=$>$?$10$11$3?$40$41$42$43$17$18$19$1:$1;$1<$1=$1>$1?,,:'$2#7???7?801060#800000000000&$2#10!$2-8,8$3<!$2-10,8$3=!$2-18,8$3>!$2-20,8$3?!$2-28,8$40!$2-30,8$41!$2-38,8$42!$2-40,8$43,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 723128 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2568f2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 722972 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2568f2.IT BndT_Na_000.SegItab_Na_2568f2.IT_sound BF NX0 BR XSTEP F0 PSS plan 722972 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvaX0.

Module LibSegNa_qvaX1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_2568f2.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_2568f2.IT.
Definition ENDS : list Z := [723128].
Definition STOPS1 : list Z := [723128] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$2#7???7?801060#800000000000&$2#10!$2-8,8$3<!$2-10,8$3=!$2-18,8$3>!$2-20,8$3?!$2-28,8$40!$2-30,8$41!$2-38,8$42!$2-40,8$43"%pstring).
Definition ss0 : sym_state := SS 723088 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;08;8#;08;8#5=#;08;8,20#$3<$2$3$4$5$6$7$3=$3>#1$;$<$=$>$?$10$11$3?$40$41$42$43$17$18$19$1:$1;$1<$1=$1>$1?,,:'$2#7???7?801060#800000000000&$2#10!$2-8,8$3<!$2-10,8$3=!$2-18,8$3>!$2-20,8$3?!$2-28,8$40!$2-30,8$41!$2-38,8$42!$2-40,8$43,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 723128 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_2568f2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 723088 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_2568f2.IT BndT_Na_000.SegItab_Na_2568f2.IT_sound BF NX0 BR XSTEP F0 PSS plan 723088 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvaX1.

Module LibSegNa_qvbA0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_9d8eff.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_9d8eff.IT.
Definition ENDS : list Z := [411628].
Definition STOPS1 : list Z := [411628; 738796] ++ ENDS.
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
Definition ss0 : sym_state := SS 738668 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#647><#;45><#647><#5=#647><,20##;45><+$2-:0$3$4$5$6$7$2+$2-:0#40#15?:78#1$=$>$?$10$11$12$13$:$=$16$<$;$19#7???8000$1;$1<$1=$1>$1?,,15!$2-88,8$>!$2-68,8$1;!$2-60,8$1:!$2-58,8$19!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1!$2-:0,8#%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010:0#800000000000&$2#20($2-:0#:0,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_9d8eff.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 738668 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_9d8eff.IT BndT_Na_002.SegItab_Na_9d8eff.IT_sound BF NX0 BR XSTEP F0 PSS plan 738668 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvbA0.

Module LibSegNa_qvbA16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_9d8eff.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_9d8eff.IT.
Definition ENDS : list Z := [411628].
Definition STOPS1 : list Z := [411628; 738796] ++ ENDS.
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
Definition ss0 : sym_state := SS 738668 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#647><#;45><#647><#5=#647><,20##;45><+$2-:0$3$4$5$6$7+$2#10+$2-:0#40#15?:78#1$=$>$?$10$11$12$13$:$=$16$<$;$19#7???8000$1;$1<$1=$1>$1?,,15!$2-88,8$>!$2-58,8$1;!$2-50,8$1:!$2-48,8$19!$2-40,8$18!$2-38,8$17!$2-30,8$16!$2-28,8$15!$2-20,8$14!$2-18,8$13!$2-10,8$12!$2-8,8$9!$2#,8$8!$2#8,8$1!$2-90,8#%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?8010:0#7??????????0&$2#20($2-:0#;0,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_9d8eff.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 738668 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_9d8eff.IT BndT_Na_002.SegItab_Na_9d8eff.IT_sound BF NX0 BR XSTEP F0 PSS plan 738668 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvbA16.

Module LibSegNa_qvbAk1e1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_9d8eff.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_9d8eff.IT.
Definition ENDS : list Z := [740320].
Definition STOPS1 : list Z := [740320] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$14$15+&6+$24#50#3#7???8000$17$18$19#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4$2=!$25-10,4#1,$25-8#8'$2=##1($25-8#8)+$25-18##18$24##60"%pstring).
Definition ss0 : sym_state := SS 740200 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;4;>0#;4;>0#5=#;4;>0,20#$1$2$3$4$5$6$7$8$9+$25-10$2=+&6+$25-10#3#7???8000#1#2+$50#1$10$11$12+$24#50$14$15+&6+$24#50#3#7???8000$17$18$19#7???8000$1;$1<$1=$1>$1?,,11!$25-8,8+$50#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4$2=!$25-10,4#1'$2=##1($25-8#8)+$25-18##18$24##60,51!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 740320 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_9d8eff.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 740200 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_9d8eff.IT BndT_Na_002.SegItab_Na_9d8eff.IT_sound BF NX0 BR XSTEP F0 PSS plan 740200 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvbAk1e1.

Module LibSegNa_qvbAk2e0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_9d8eff.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_9d8eff.IT.
Definition ENDS : list Z := [740320].
Definition STOPS1 : list Z := [740320] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$14$15+&6+$24#50#3#7???8000$17$18$19#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1!$25-14,4#2!$25-10,4#($25-10#4)+$25-18##18$24##60"%pstring).
Definition ss0 : sym_state := SS 740200 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;4;>0#;4;>0#5=#;4;>0,20#$1$2$3$4$5$6$7$8$9+$25-10#1+&6+$25-10#3#7???8000##2$?$10$11$12+$24#50$14$15+&6+$24#50#3#7???8000$17$18$19#7???8000$1;$1<$1=$1>$1?,,>!$25-10,4#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1!$25-14,4#2($25-10#4)+$25-18##18$24##60,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 740320 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_9d8eff.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 740200 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_9d8eff.IT BndT_Na_002.SegItab_Na_9d8eff.IT_sound BF NX0 BR XSTEP F0 PSS plan 740200 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvbAk2e0.

Module LibSegNa_qvbAk2e1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_9d8eff.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_9d8eff.IT.
Definition ENDS : list Z := [740320].
Definition STOPS1 : list Z := [740320] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12+$24#50$14$15+&6+$24#50#3#7???8000$17$18$19#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4#2!$25-10,4#1,$25-8#8($25-10#4($25-8#8)+$25-18##18$24##60"%pstring).
Definition ss0 : sym_state := SS 740200 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;4;>0#;4;>0#5=#;4;>0,20#$1$2$3$4$5$6$7$8$9+$25-10#+&6+$25-10#3#7???8000#1#2+$50#1$10$11$12+$24#50$14$15+&6+$24#50#3#7???8000$17$18$19#7???8000$1;$1<$1=$1>$1?,,11!$25-10,4#!$25-8,8+$50#1'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1!$24#50,8$25'$25#1018#800000000000&$25#8)##7???7000#100000001000+$25-18##18#&6+$25-10#3#7???8000#1#&6+$25-14#3#7???8000#1#&6+$25-8#3#7???8000#1!$25-14,4#2($25-10#4($25-8#8)+$25-18##18$24##60,51!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 740320 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_9d8eff.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 740200 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_9d8eff.IT BndT_Na_002.SegItab_Na_9d8eff.IT_sound BF NX0 BR XSTEP F0 PSS plan 740200 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvbAk2e1.

Module LibSegNa_qvbB.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_9d8eff.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_9d8eff.IT.
Definition ENDS : list Z := [738956].
Definition STOPS1 : list Z := [738956] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8+$2-:0$32$;$<$=$>$?$10$11$12$13$24$15$16$17$18$19#7???8000$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$2#7???7?8010:0#800000000000&$2#20($2-70#8)+$2-:0##:0$32##40'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32##18(&6$32#3#7???8000#8'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1)&6+$24#50#3#7???8000#1&6$32#3#7???8000#8)+$2-:0##:0$24##60"%pstring).
Definition ss0 : sym_state := SS 738796 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;468<#;468<#5=#;468<,20#$1+$2-:0$3$4$5$6$7$8+$2-:0##1168?#;456<^#?#??????????????3^#?#??????????????8^#?#??????????????1$10$11$32+$24#50$24$15+&6+$24#50#3#7???8000$17$18$32#7???8000+&6$32#3#7???8000$1<$1=$1>$1?,,1;!$2-70,8$32!&6$32#3#7???8003,1^#?#??????????????1!&6$32#3#7???8002,1^#?#??????????????1!&6$32#3#7???8001,1^#?#??????????????1!&6$32#3#7???8000,1^#?#??????????????1!&6$32#3#7???8007,1^#?#??????????????3!&6$32#3#7???8006,1^#?#??????????????3!&6$32#3#7???8005,1^#?#??????????????8!&6$32#3#7???8004,1^#?#??????????????8!$32#10,8#;456<!$32#8,8#1168?!$32#,8#41;58:;3'$2#7???7?8010:0#800000000000&$2#20($2-70#8)+$2-:0##:0$32##40'$32#6;6000#7?????????<0&$32#20)##7???7000#100000001000$32##40($32##18(&6$32#3#7???8000#8'$24#6;6000#7?????????:0&$24#8)##7???7000#100000001000$24##60#&6+$24#50#3#7???8000#1)&6+$24#50#3#7???8000#1&6$32#3#7???8000#8)+$2-:0##:0$24##60,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 738956 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_9d8eff.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 738796 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_9d8eff.IT BndT_Na_002.SegItab_Na_9d8eff.IT_sound BF NX0 BR XSTEP F0 PSS plan 738796 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qvbB.

End BndP_Na_105.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_000 BndT_Na_001.
Module BndP_Na_099.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0147.Na0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Na_000 BndT_Na_001.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Na_099 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_000ASegItab_Na_32b2172ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd102BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd103NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd102BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd105XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd102F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd103PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd104planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd105regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd103kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd1n2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd1n3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd1n2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd1n5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd1n2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd1n3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd1n4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd1n5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd1n3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd202BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd203NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd202BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd205XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd202F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd203PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd204planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd205regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd203kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd212BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd213NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd212BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd215XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd212F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd213PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd214planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd215regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd213kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd2n2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd2n3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd2n2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd2n5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd2n2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd2n3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd2n4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd2n5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtd2n3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtdD1n2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtdD1n3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtdD1n2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtdD1n5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtdD1n2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtdD1n3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtdD1n4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtdD1n5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtdD1n3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtdD2n2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtdD2n3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtdD2n2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtdD2n5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtdD2n2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtdD2n3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtdD2n4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtdD2n5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtdD2n3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_001ASegItab_Na_5817292ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099=LibSegNa_qtgA2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099=LibSegNa_qtgA3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099=LibSegNa_qtgA2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099=LibSegNa_qtgA5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099=LibSegNa_qtgA2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099=LibSegNa_qtgA3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099=LibSegNa_qtgA4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099=LibSegNa_qtgA5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099=LibSegNa_qtgA3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtgAd2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtgAd3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtgAd2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtgAd5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtgAd2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtgAd3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtgAd4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtgAd5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtgAd3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtgB02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtgB03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtgB02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtgB05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtgB02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtgB03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtgB04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtgB05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtgB03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtgB0d2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtgB0d3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtgB0d2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtgB0d5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtgB0d2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtgB0d3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtgB0d4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtgB0d5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtgB0d3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtgB12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtgB13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtgB12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtgB15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtgB12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtgB13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtgB14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtgB15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099>LibSegNa_qtgB13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtgB1d2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtgB1d3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtgB1d2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtgB1d5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtgB1d2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtgB1d3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtgB1d4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtgB1d5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099?LibSegNa_qtgB1d3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099=LibSegNa_qtgC2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099=LibSegNa_qtgC3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099=LibSegNa_qtgC2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099=LibSegNa_qtgC5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099=LibSegNa_qtgC2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099=LibSegNa_qtgC3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099=LibSegNa_qtgC4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099=LibSegNa_qtgC5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_099=LibSegNa_qtgC3kn0".

Module LibSegNa_qtd10.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_32b217.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_32b217.IT.
Definition ENDS : list Z := [831116].
Definition STOPS1 : list Z := [831116] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801010#800000000000&$2#10($2-10#10'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-10#10$21##20!$21#,1$26'$26##??'&9$26#1##!$21#8,8#1!$21#10,8#"%pstring).
Definition ss0 : sym_state := SS 830872 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-8), ELit 8); ((EVar 33), (8), ELit 8); ((EVar 33), (0), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-8), 8); ((EVar 33), (8), 8); ((EVar 33), (0), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<:>8<#<:>8<#5=#<:>8<,20#$1$2$3$4##$7$8$9$21&9$26#?=+$21#8+&6$21#3#7???8000&6$21#3+&6+$21#8#3#7???8000+$21#10+$21#8$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,12!$21#,1&9$26#?=!$21#8,8#!$2-8,8$1%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801010#800000000000&$2#10($2-10#10'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-10#10$21##20'$26##??'&9$26#1##!$21#10,8#,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 831116 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_32b217.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 830872 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_32b217.IT BndT_Na_000.SegItab_Na_32b217.IT_sound BF NX0 BR XSTEP F0 PSS plan 830872 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtd10.

Module LibSegNa_qtd1n.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_32b217.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_32b217.IT.
Definition ENDS : list Z := [831116].
Definition STOPS1 : list Z := [831116] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801010#800000000000&$2#10($2-10#10'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-10#10$21##20!$21#,1$26'$26##??'&9$26#1##!$21#8,8#1!$21#10,8$24'$24#1^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 830872 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-8), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-8), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<:>8<#<:>8<#5=#<:>8<,20#$1$2$3$4#1$24$7$8$9$21+$21#8##7???8000&6$21#3+&6+$21#8#3#7???8000+$21#10+$21#10$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,13!$2-8,8$1%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801010#800000000000&$2#10($2-10#10'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-10#10$21##20!$21#,1$26'$26##??'&9$26#1##!$21#8,8#1!$21#10,8$24'$24#1^#?#???????????????,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 831116 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_32b217.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 830872 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_32b217.IT BndT_Na_000.SegItab_Na_32b217.IT_sound BF NX0 BR XSTEP F0 PSS plan 830872 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtd1n.

Module LibSegNa_qtd20.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_32b217.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_32b217.IT.
Definition ENDS : list Z := [831116].
Definition STOPS1 : list Z := [831116] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801010#800000000000&$2#10($2-10#10'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-10#10$21##20!$21#,1$26'$26##??'&9$26#1##!$21#8,8#2!$21#10,8#!$21#18,8#"%pstring).
Definition ss0 : sym_state := SS 830872 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-8), ELit 8); ((EVar 33), (8), ELit 8); ((EVar 33), (0), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-8), 8); ((EVar 33), (8), 8); ((EVar 33), (0), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<:>8<#<:>8<#5=#<:>8<,20#$1$2$3$4##$7$8$9$21&9$26#?=+$21#8+&6$21#3#7???8000&6$21#3+&6+$21#8#3#7???8000+$21#10+$21#8$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,13!$21#,1&9$26#?=!$21#8,8#!$2-8,8$1%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801010#800000000000&$2#10($2-10#10'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-10#10$21##20'$26##??'&9$26#1##!$21#10,8#!$21#18,8#,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 831116 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_32b217.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 830872 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_32b217.IT BndT_Na_000.SegItab_Na_32b217.IT_sound BF NX0 BR XSTEP F0 PSS plan 830872 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtd20.

Module LibSegNa_qtd21.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_32b217.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_32b217.IT.
Definition ENDS : list Z := [831116].
Definition STOPS1 : list Z := [831116] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",13%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801010#800000000000&$2#10($2-10#10'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-10#10$21##20!$21#,1$26'$26##??'&9$26#1##!$21#8,8#2!$21#10,8$24!$21#18,8#'$24#1^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 830872 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-8), ELit 8); ((EVar 33), (8), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-8), 8); ((EVar 33), (8), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<:>8<#<:>8<#5=#<:>8<,20#$1$2$3$4#1$24$7$8$9$21+$21#8##7???8000&6$21#3+&6+$21#8#3#7???8000+$21#10+$21#10$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,14!$21#8,8#1!$2-8,8$1%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801010#800000000000&$2#10($2-10#10'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-10#10$21##20!$21#,1$26'$26##??'&9$26#1##!$21#10,8$24!$21#18,8#'$24#1^#?#???????????????,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 831116 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_32b217.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 830872 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_32b217.IT BndT_Na_000.SegItab_Na_32b217.IT_sound BF NX0 BR XSTEP F0 PSS plan 830872 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtd21.

Module LibSegNa_qtd2n.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_32b217.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_32b217.IT.
Definition ENDS : list Z := [831116].
Definition STOPS1 : list Z := [831116] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",13%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801010#800000000000&$2#10($2-10#10'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-10#10$21##20!$21#,1$26'$26##??'&9$26#1##!$21#8,8#2!$21#10,8$24!$21#18,8$25'$25#1^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 830872 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-8), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-8), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<:>8<#<:>8<#5=#<:>8<,20#$1$2$3$4#2$25$7$8$9$21+$21#8##7???8000&6$21#3+&6+$21#8#3#7???8000+$21#10+$21#18$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,14!$2-8,8$1%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801010#800000000000&$2#10($2-10#10'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-10#10$21##20!$21#,1$26'$26##??'&9$26#1##!$21#8,8#2!$21#10,8$24!$21#18,8$25'$25#1^#?#???????????????,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 831116 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_32b217.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 830872 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_32b217.IT BndT_Na_000.SegItab_Na_32b217.IT_sound BF NX0 BR XSTEP F0 PSS plan 830872 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtd2n.

Module LibSegNa_qtdD1n.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_32b217.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_32b217.IT.
Definition ENDS : list Z := [831116].
Definition STOPS1 : list Z := [831116] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1;%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801010#800000000000&$2#10($2-10#10'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-10#10$21##20!$21#,1$26'$26##??'&9$26#1#1#1!$21#8,8#1!$21#10,8#8!$21#18,8$24'$24#1000#7?????????<0&$24#10)##7???7000#100000001000$24##40#&6$24#3#7???8000#8($24##40)$24##40$21##20)$2-10#10$24##40!$24#,8$25'$25#1^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 830872 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-8), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-8), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<:>8<#<:>8<#5=#<:>8<,20#$1$2$3$4#1$25$7$8$9$21+$21#8##7???8000&6$21#3+&6+$21#8#3#7???8000$24$24$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1<!$2-8,8$1%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801010#800000000000&$2#10($2-10#10'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-10#10$21##20!$21#,1$26'$26##??'&9$26#1#1#1!$21#8,8#1!$21#10,8#8!$21#18,8$24'$24#1000#7?????????<0&$24#10)##7???7000#100000001000$24##40#&6$24#3#7???8000#8($24##40)$24##40$21##20)$2-10#10$24##40!$24#,8$25'$25#1^#?#???????????????,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 831116 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_32b217.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 830872 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_32b217.IT BndT_Na_000.SegItab_Na_32b217.IT_sound BF NX0 BR XSTEP F0 PSS plan 830872 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtdD1n.

Module LibSegNa_qtdD2n.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_32b217.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_32b217.IT.
Definition ENDS : list Z := [831116].
Definition STOPS1 : list Z := [831116] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1;%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801010#800000000000&$2#10($2-10#10'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-10#10$21##20!$21#,1$26'$26##??'&9$26#1#1#1!$21#8,8#2!$21#10,8#8!$21#18,8$24'$24#1000#7?????????<0&$24#10)##7???7000#100000001000$24##40#&6$24#3#7???8000#8($24##40)$24##40$21##20)$2-10#10$24##40!$24#8,8$25'$25#1^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 830872 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-8), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-8), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<:>8<#<:>8<#5=#<:>8<,20#$1$2$3$4#2$25$7$8$9$21+$21#8##7???8000&6$21#3+&6+$21#8#3#7???8000$24+$24#8$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1<!$2-8,8$1%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801010#800000000000&$2#10($2-10#10'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-10#10$21##20!$21#,1$26'$26##??'&9$26#1#1#1!$21#8,8#2!$21#10,8#8!$21#18,8$24'$24#1000#7?????????<0&$24#10)##7???7000#100000001000$24##40#&6$24#3#7???8000#8($24##40)$24##40$21##20)$2-10#10$24##40!$24#8,8$25'$25#1^#?#???????????????,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 831116 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_32b217.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 830872 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_32b217.IT BndT_Na_000.SegItab_Na_32b217.IT_sound BF NX0 BR XSTEP F0 PSS plan 830872 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtdD2n.

Module LibSegNa_qtgA.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_581729.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_581729.IT.
Definition ENDS : list Z := [827428; 827348].
Definition STOPS1 : list Z := [827428; 827348] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 39); EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",18%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-40#40$21##20'$27#6;6000#7?????????>0&$27#8)##7???7000#100000001000$27##20#&6$27#3#7???8000#4!$27#,1$26'$26##??'&9$26#1##!$27#8,8$23!$27#10,8$24)$21##20$27##20!$27#18,8$25)$2-40#40$27##20"%pstring).
Definition ss0 : sym_state := SS 827044 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#<:024#<9?=4#<:024#<9?=4#5;#<9><8,20#$1+$2-40$3$4$5$6$7$21$9$21$27$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1?!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-40#40$21##20'$27#6;6000#7?????????>0&$27#8)##7???7000#100000001000$27##20#&6$27#3#7???8000#4!$27#,1$26'$26##??'&9$26#1##!$27#8,8$23!$27#10,8$24)$21##20$27##20!$27#18,8$25)$2-40#40$27##20,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition arms2 := Eval vm_compute in (match SGP.branch_probe IT s1 with Some e => SGP.case_arms s1 e 0 | None => None end).
Definition f2 : sym_state := match arms2 with Some (Some s, _) => s | _ => s1 end.
Definition t2 : sym_state := match arms2 with Some (_, Some s) => s | _ => s1 end.

Definition ex3 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#<:024#<9?=4#<:024#<9?=4#5=#<9?=4,20#$1$2$3$4$5$6$7$8$9$21$27$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,20'&4&1$21$27#1#1#1!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-40#40$21##20'$27#6;6000#7?????????>0&$27#8)##7???7000#100000001000$27##20#&6$27#3#7???8000#4!$27#,1$26'$26##??'&9$26#1##!$27#8,8$23!$27#10,8$24)$21##20$27##20!$27#18,8$25)$2-40#40$27##20,50!"%pstring).
Definition s3 : sym_state := snd (snd ex3).

Definition ex4 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#<:024#<9?=4#<:024#<9?=4#5=#<:024,20##<9?3<+$2-40$3$4$5$6$7$21$27$21$23$<$=$>$?$10$11+$27#10$23+&6$27#3#7???8000#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?,,20'&4&1$21$27#1##!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-40#40$21##20'$27#6;6000#7?????????>0&$27#8)##7???7000#100000001000$27##20#&6$27#3#7???8000#4!$27#,1$26'$26##??'&9$26#1##!$27#8,8$23!$27#10,8$24)$21##20$27##20!$27#18,8$25)$2-40#40$27##20,50!"%pstring).
Definition s4 : sym_state := snd (snd ex4).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PBranch (SGA.mkplan (fst ex3) (SGP.PEnd 1)) (SGA.mkplan (fst ex4) (SGP.PEnd 0))).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s4).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s4).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s4 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s4 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s4).
Definition ps0 : SR.post_spec := SR.PS 827428 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition regs_out1 : list expr := Eval vm_compute in (s_regs s3).
Definition exit_sp_off1 : Z := Eval vm_compute in (spoff_of s3).
Definition cells1 : list kentry := Eval vm_compute in (cells_of s3 exit_sp_off1).
Definition nfresh1 : nat := Eval vm_compute in (s_next s3 - NX0)%nat.
Definition exit_pc1 : Z := Eval vm_compute in (s_pc s3).
Definition ps1 : SR.post_spec := SR.PS 827348 (map (fun i => (i, nth i regs_out1 (ELit 0))) (seq 1 31)) F0L cells1.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0; ps1] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_581729.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 827044 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_581729.IT BndT_Na_001.SegItab_Na_581729.IT_sound BF NX0 BR XSTEP F0 PSS plan 827044 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtgA.

Module LibSegNa_qtgAd.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_581729.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_581729.IT.
Definition ENDS : list Z := [827428; 827348].
Definition STOPS1 : list Z := [827428; 827348] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 39); EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",19%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-40#40$21##20'$27#6;6000#7?????????>0&$27#8)##7???7000#100000001000$27##20#&6$27#3#7???8000#4!$27#,1$26'$26##??'&9$26#1#1#1!$27#8,8$23!$27#10,8#8!$27#18,8$2:'$2:#1000#7?????????<0)$21##20$27##20)$2-40#40$27##20"%pstring).
Definition ss0 : sym_state := SS 827044 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#<:024#<9?=4#<:024#<9?=4#5;#<9><8,20#$1+$2-40$3$4$5$6$7$21$9$21$27$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,20!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-40#40$21##20'$27#6;6000#7?????????>0&$27#8)##7???7000#100000001000$27##20#&6$27#3#7???8000#4!$27#,1$26'$26##??'&9$26#1#1#1!$27#8,8$23!$27#10,8#8!$27#18,8$2:'$2:#1000#7?????????<0)$21##20$27##20)$2-40#40$27##20,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition arms2 := Eval vm_compute in (match SGP.branch_probe IT s1 with Some e => SGP.case_arms s1 e 0 | None => None end).
Definition f2 : sym_state := match arms2 with Some (Some s, _) => s | _ => s1 end.
Definition t2 : sym_state := match arms2 with Some (_, Some s) => s | _ => s1 end.

Definition ex3 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#<:024#<9?=4#<:024#<9?=4#5=#<9?=4,20#$1$2$3$4$5$6$7$8$9$21$27$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,21'&4&1$21$27#1#1#1!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-40#40$21##20'$27#6;6000#7?????????>0&$27#8)##7???7000#100000001000$27##20#&6$27#3#7???8000#4!$27#,1$26'$26##??'&9$26#1#1#1!$27#8,8$23!$27#10,8#8!$27#18,8$2:'$2:#1000#7?????????<0)$21##20$27##20)$2-40#40$27##20,50!"%pstring).
Definition s3 : sym_state := snd (snd ex3).

Definition ex4 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#<:024#<9?=4#<:024#<9?=4#5=#<:024,20##<9?3<+$2-40$3$4$5$6$7$21$27$21$23$<$=$>$?$10$11$2:$23+&6$27#3#7???8000#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?,,21'&4&1$21$27#1##!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801040#800000000000&$2#10($2-40#40'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-40#40$21##20'$27#6;6000#7?????????>0&$27#8)##7???7000#100000001000$27##20#&6$27#3#7???8000#4!$27#,1$26'$26##??'&9$26#1#1#1!$27#8,8$23!$27#10,8#8!$27#18,8$2:'$2:#1000#7?????????<0)$21##20$27##20)$2-40#40$27##20,50!"%pstring).
Definition s4 : sym_state := snd (snd ex4).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PBranch (SGA.mkplan (fst ex3) (SGP.PEnd 1)) (SGA.mkplan (fst ex4) (SGP.PEnd 0))).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s4).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s4).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s4 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s4 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s4).
Definition ps0 : SR.post_spec := SR.PS 827428 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition regs_out1 : list expr := Eval vm_compute in (s_regs s3).
Definition exit_sp_off1 : Z := Eval vm_compute in (spoff_of s3).
Definition cells1 : list kentry := Eval vm_compute in (cells_of s3 exit_sp_off1).
Definition nfresh1 : nat := Eval vm_compute in (s_next s3 - NX0)%nat.
Definition exit_pc1 : Z := Eval vm_compute in (s_pc s3).
Definition ps1 : SR.post_spec := SR.PS 827348 (map (fun i => (i, nth i regs_out1 (ELit 0))) (seq 1 31)) F0L cells1.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0; ps1] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_581729.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 827044 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_581729.IT BndT_Na_001.SegItab_Na_581729.IT_sound BF NX0 BR XSTEP F0 PSS plan 827044 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtgAd.

Module LibSegNa_qtgB0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_581729.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_581729.IT.
Definition ENDS : list Z := [827348].
Definition STOPS1 : list Z := [827348; 519100] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$21$27$:$;$<$=$>$?$10$11+$27#10#+&6$27#3#7???8000#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$2#7???7?801040#800000000000&$2#10!$2-8,8$35!$2-10,8$36!$2-18,8$37!$2-20,8$38!$2-28,8$39!$2-30,8$3:!$2-38,8$3;'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$28'$28##??'&9$28#1##"%pstring).
Definition ss0 : sym_state := SS 827196 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#<9?=4#7>;;<#<9?=4#5=#<9?=4,20#$35$2$3$4$5$6$7$36$37$21$28+&6$21#3#7???8000$=$>$?$10$11$38$39$3:$3;$16$17$18$19$1:$1;$1<$1=$1>$1?,,11'$2#7???7?801040#800000000000&$2#10!$2-8,8$35!$2-10,8$36!$2-18,8$37!$2-20,8$38!$2-28,8$39!$2-30,8$3:!$2-38,8$3;'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$28'$28##??'&9$28#1##,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 827348 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_581729.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 827196 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_581729.IT BndT_Na_001.SegItab_Na_581729.IT_sound BF NX0 BR XSTEP F0 PSS plan 827196 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtgB0.

Module LibSegNa_qtgB0d.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_581729.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_581729.IT.
Definition ENDS : list Z := [827348].
Definition STOPS1 : list Z := [827348; 519100] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$21$27$:$;$<$=$>$?$10$11+$27#10#+&6$27#3#7???8000#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",13'$2#7???7?801040#800000000000&$2#10!$2-8,8$35!$2-10,8$36!$2-18,8$37!$2-20,8$38!$2-28,8$39!$2-30,8$3:!$2-38,8$3;'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$28'$28##??'&9$28#1#1#1!$21#18,8$2;'$2;#1000#7?????????<0"%pstring).
Definition ss0 : sym_state := SS 827196 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#<9?=4#7>;;<#<9?=4#5=#<9?=4,20#$35$2$3$4$5$6$7$36$37$21$28+&6$21#3#7???8000#$>$?$10$11$38$39$3:$3;$16$17$18$19$1:$1;$1<$1=$1>$1?,,13'$2#7???7?801040#800000000000&$2#10!$2-8,8$35!$2-10,8$36!$2-18,8$37!$2-20,8$38!$2-28,8$39!$2-30,8$3:!$2-38,8$3;'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$28'$28##??'&9$28#1#1#1!$21#18,8$2;'$2;#1000#7?????????<0,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 827348 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_581729.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 827196 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_581729.IT BndT_Na_001.SegItab_Na_581729.IT_sound BF NX0 BR XSTEP F0 PSS plan 827196 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtgB0d.

Module LibSegNa_qtgB1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_581729.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_581729.IT.
Definition ENDS : list Z := [519100].
Definition STOPS1 : list Z := [519100; 827348] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$21$27$:$;$<$=$>$?$10$11+$27#10$23+&6$27#3#7???8000#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",16'$2#7???7?801040#800000000000&$2#10'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$28'$28##??'&9$28#1##'$23#1#2'$27#6;6000#7?????????>0&$27#8)##7???7000#100000001000$27##20#&6$27#3#7???8000#4!$27#,1$26'$26##??'&9$26#1##!$27#8,8$23!$27#10,8$24)$21##20$27##20!$27#18,8$25"%pstring).
Definition ss0 : sym_state := SS 827196 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 33), (0), ELit 1)].
Definition F0L : list SR.region := [((EVar 33), (0), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#7>;;<#<9?=4#7>;;<#5=#7>;;<,20##<9?;0+$2-40$3$4$5$6$7$21$27+$21#10+$27#10@#8$23#$>$?$10$11+$27#10$23+&6$27#3#7???8000#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?,,16!$21#,1&8&9$26#2&9$28#?='$2#7???7?801040#800000000000&$2#10'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20'$28##??'&9$28#1##'$23#1#2'$27#6;6000#7?????????>0&$27#8)##7???7000#100000001000$27##20#&6$27#3#7???8000#4!$27#,1$26'$26##??'&9$26#1##!$27#8,8$23!$27#10,8$24)$21##20$27##20!$27#18,8$25,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_581729.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 827196 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_581729.IT BndT_Na_001.SegItab_Na_581729.IT_sound BF NX0 BR XSTEP F0 PSS plan 827196 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtgB1.

Module LibSegNa_qtgB1d.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_581729.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_581729.IT.
Definition ENDS : list Z := [519100].
Definition STOPS1 : list Z := [519100; 827348] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$21$27$:$;$<$=$>$?$10$11$2:$23+&6$27#3#7???8000#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",17'$2#7???7?801040#800000000000&$2#10'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20!$21#,1$28'$28##??'&9$28#1##'$23#1#2'$27#6;6000#7?????????>0&$27#8)##7???7000#100000001000$27##20#&6$27#3#7???8000#4!$27#,1$26'$26##??'&9$26#1#1#1!$27#8,8$23!$27#10,8#8!$27#18,8$2:'$2:#1000#7?????????<0)$21##20$27##20"%pstring).
Definition ss0 : sym_state := SS 827196 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 33), (0), ELit 1)].
Definition F0L : list SR.region := [((EVar 33), (0), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#7>;;<#<9?=4#7>;;<#5=#7>;;<,20##<9?;0+$2-40$3$4$5$6$7$21$27+$21#10$2:@#8$23#$>$?$10$11$2:$23+&6$27#3#7???8000#7???8000$16$17$18$19$1:$1;$1<$1=$1>$1?,,17!$21#,1&8&9$26#2&9$28#?='$2#7???7?801040#800000000000&$2#10'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20'$28##??'&9$28#1##'$23#1#2'$27#6;6000#7?????????>0&$27#8)##7???7000#100000001000$27##20#&6$27#3#7???8000#4!$27#,1$26'$26##??'&9$26#1#1#1!$27#8,8$23!$27#10,8#8!$27#18,8$2:'$2:#1000#7?????????<0)$21##20$27##20,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_581729.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 827196 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_581729.IT BndT_Na_001.SegItab_Na_581729.IT_sound BF NX0 BR XSTEP F0 PSS plan 827196 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtgB1d.

Module LibSegNa_qtgC.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_001.SegItab_Na_581729.ITR.
Definition IT : itab := BndT_Na_001.SegItab_Na_581729.IT.
Definition ENDS : list Z := [827348].
Definition STOPS1 : list Z := [827348] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$21$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$2#7???7?801040#800000000000&$2#10!$2-8,8$35!$2-10,8$36!$2-18,8$37!$2-20,8$38!$2-28,8$39!$2-30,8$3:!$2-38,8$3;"%pstring).
Definition ss0 : sym_state := SS 827312 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#<9?=4#<9?=4#5=#<9?=4,20#$35$2$3$4$5$6$7$36$37$21$;$<$=$>$?$10$11$38$39$3:$3;$16$17$18$19$1:$1;$1<$1=$1>$1?,,9'$2#7???7?801040#800000000000&$2#10!$2-8,8$35!$2-10,8$36!$2-18,8$37!$2-20,8$38!$2-28,8$39!$2-30,8$3:!$2-38,8$3;,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 827348 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_001.SegItab_Na_581729.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 827312 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_001.SegItab_Na_581729.IT BndT_Na_001.SegItab_Na_581729.IT_sound BF NX0 BR XSTEP F0 PSS plan 827312 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtgC.

End BndP_Na_099.
Module BndP_Na_103.
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
Ltac2 kr_t_BndP_Na_103 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_002ASegItab_Na_b3c5092ITC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR0b2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0147:Na0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR0b3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR0b2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR0b5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR0b2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR0b3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR0b4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR0b5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR0b3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR0c2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR0c3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR0c2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR0c5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR0c2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR0c3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR0c4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR0c5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR0c3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR1a2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR1a3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR1a2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR1a5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR1a2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR1a3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR1a4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR1a5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR1a3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR1b2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR1b3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR1b2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR1b5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR1b2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR1b3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR1b4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR1b5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR1b3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR1c2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR1c3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR1c2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR1c5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR1c2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR1c3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR1c4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR1c5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwR1c3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtwT2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtwT3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtwT2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtwT5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtwT2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtwT3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtwT4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtwT5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtwT3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwT1d2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwT1d3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwT1d2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwT1d5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwT1d2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwT1d3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwT1d4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwT1d5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwT1d3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwT2d2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwT2d3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwT2d2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwT2d5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwT2d2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwT2d3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwT2d4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwT2d5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtwT2d3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtwZ2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtwZ3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtwZ2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtwZ5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtwZ2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtwZ3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtwZ4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtwZ5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtwZ3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103>LibSegNa_qtwZt2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103>LibSegNa_qtwZt3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103>LibSegNa_qtwZt2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103>LibSegNa_qtwZt5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103>LibSegNa_qtwZt2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103>LibSegNa_qtwZt3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103>LibSegNa_qtwZt4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103>LibSegNa_qtwZt5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103>LibSegNa_qtwZt3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_000ASegItab_Na_1a89882ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtxI2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtxI3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtxI2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtxI5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtxI2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtxI3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtxI4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtxI5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtxI3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_000ASegItab_Na_12bfca2ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtyI2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtyI3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtyI2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtyI5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtyI2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtyI3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtyI4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtyI5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103=LibSegNa_qtyI3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_002ASegItab_Na_89918d2ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103>LibSegNa_qtzA02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103>LibSegNa_qtzA03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103>LibSegNa_qtzA02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103>LibSegNa_qtzA05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103>LibSegNa_qtzA02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103>LibSegNa_qtzA03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103>LibSegNa_qtzA04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103>LibSegNa_qtzA05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103>LibSegNa_qtzA03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtzA162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtzA163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtzA162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtzA165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtzA162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtzA163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtzA164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtzA165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0174;BndP_Na_103?LibSegNa_qtzA163kn0".

Module LibSegNa_qtwR0b.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b3c509.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b3c509.IT.
Definition ENDS : list Z := [868432].
Definition STOPS1 : list Z := [833184; 999896; 1001024; 520280; 817564; 868976; 867724; 991168; 868980; 868992; 869008; 869012; 869016; 869020; 868432; 868536] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2->0$3$4$5$6$7$8+$2->0$:$;$<$=$>$?$10$11#7???8000$13$2=$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12'$2#7???7?8010>0#800000000000&$2#20!$2-<0,8+&6$32#3#7???8000!$2-<8,8$32!$2-=0,8$32'$2=#6;6000#7?????????>8&$2=#8)##7???7000#100000001000$2=##18#&6$2=#3#7???8000#1#&6+$2=#10#3#7???8000#1#&6+$2=#8#3#7???8000#1!$2=#,1$2?'$2?##??'&9$2?#1#1#1!$2=#8,8$28!$2=#10,8$29'$28#2#15'$29#1000#7?????????>0"%pstring).
Definition ss0 : sym_state := SS 868288 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,11#<;6:0#?41=8#?4640#7?058#<799<#=4270#=3=8<#?1?<0#=4274#=4280#=4290#=4294#=4298#=429<#=4050#=40;8#=4050#5=#=4050,20#$1+$2->0$3$4$5$6$7$8+$2->0$29++$28$29-1++$28$29-1$=+$29#1$?$10$11#7???8000+&6$32#3#7???8000$2=$15$32$32$18$19$1:$1;$1<$1=$1>$1?,,12'$2#7???7?8010>0#800000000000&$2#20!$2-<0,8+&6$32#3#7???8000!$2-<8,8$32!$2-=0,8$32'$2=#6;6000#7?????????>8&$2=#8)##7???7000#100000001000$2=##18#&6$2=#3#7???8000#1#&6+$2=#10#3#7???8000#1#&6+$2=#8#3#7???8000#1!$2=#,1$2?'$2?##??'&9$2?#1#1#1!$2=#8,8$28!$2=#10,8$29'$28#2#15'$29#1000#7?????????>0,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 868432 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b3c509.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 868288 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b3c509.IT BndT_Na_002.SegItab_Na_b3c509.IT_sound BF NX0 BR XSTEP F0 PSS plan 868288 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtwR0b.

Module LibSegNa_qtwR0c.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b3c509.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b3c509.IT.
Definition ENDS : list Z := [868432].
Definition STOPS1 : list Z := [833184; 999896; 1001024; 520280; 817564; 868976; 867724; 991168; 868980; 868992; 869008; 869012; 869016; 869020; 868432; 868536] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2->0$3$4$5$6$7$8+$2->0$:$;$<$=$>$?$10$11#7???8000$13$2=$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12'$2#7???7?8010>0#800000000000&$2#20!$2-<0,8+&6$32#3#7???8000!$2-<8,8$32!$2-=0,8$32'$2=#6;6000#7?????????>8&$2=#8)##7???7000#100000001000$2=##18#&6$2=#3#7???8000#1#&6+$2=#10#3#7???8000#1#&6+$2=#8#3#7???8000#1!$2=#,1$2?'$2?##??'&9$2?#1#1#1!$2=#8,8$28!$2=#10,8$29'$28#2#1>'$29#1000#7?????????>0"%pstring).
Definition ss0 : sym_state := SS 868288 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,11#<;6:0#?41=8#?4640#7?058#<799<#=4270#=3=8<#?1?<0#=4274#=4280#=4290#=4294#=4298#=429<#=4050#=40;8#=4050#5=#=4050,20#$1+$2->0$3$4$5$6$7$8+$2->0$29++$28$29-1++$28$29-1$=+$29#1$?$10$11#7???8000+&6$32#3#7???8000$2=$15$32$32$18$19$1:$1;$1<$1=$1>$1?,,12'$2#7???7?8010>0#800000000000&$2#20!$2-<0,8+&6$32#3#7???8000!$2-<8,8$32!$2-=0,8$32'$2=#6;6000#7?????????>8&$2=#8)##7???7000#100000001000$2=##18#&6$2=#3#7???8000#1#&6+$2=#10#3#7???8000#1#&6+$2=#8#3#7???8000#1!$2=#,1$2?'$2?##??'&9$2?#1#1#1!$2=#8,8$28!$2=#10,8$29'$28#2#1>'$29#1000#7?????????>0,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 868432 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b3c509.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 868288 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b3c509.IT BndT_Na_002.SegItab_Na_b3c509.IT_sound BF NX0 BR XSTEP F0 PSS plan 868288 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtwR0c.

Module LibSegNa_qtwR1a.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b3c509.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b3c509.IT.
Definition ENDS : list Z := [868432].
Definition STOPS1 : list Z := [833184; 999896; 1001024; 520280; 817564; 868976; 867724; 991168; 868980; 868992; 869008; 869012; 869016; 869020; 868536] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$2:+$2:$2;+$2:$2;$=+$2:#1$?$10$11#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",='$2:#1000#7?????????>0'$2;#3#14)##7???7000#100000001000$2:##1)##7???7000#100000001000+$2:$2;##1#&6$2:#3#7???8000#1#&6+$2:$2;#3#7???8000#1!$2:#,1$2<'$2<##??!+$2:$2;#,1$2>'$2>##??($2:##1(+$2:$2;##1)$2:##1+$2:$2;##1"%pstring).
Definition ss0 : sym_state := SS 868432 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 42), (0), ELit 1); ((EAlu Instr.ALU_ADD (EVar 42) (EVar 43)), (0), ELit 1)].
Definition F0L : list SR.region := [((EVar 42), (0), 1); ((EAlu Instr.ALU_ADD (EVar 42) (EVar 43)), (0), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition s1 : sym_state := Eval vm_compute in (SegCodec.run SegCodec.sc_sstate "#=4050,20#$1$2$3$4$5$6$7$8$9+$2:#1++$2:$2;-1++$2:$2;-1+$2:#1+$2:#2$2>$10$11#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,=!+$2:$2;#,1$2<!$2:#,1$2>'$2:#1000#7?????????>0'$2;#3#14)##7???7000#100000001000$2:##1)##7???7000#100000001000+$2:$2;##1#&6$2:#3#7???8000#1#&6+$2:$2;#3#7???8000#1'$2<##??'$2>##??($2:##1(+$2:$2;##1)$2:##1+$2:$2;##1,50!"%pstring).

Definition ex2 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",#5=#=4050,20#$1$2$3$4$5$6$7$8$9+$2:#1++$2:$2;-1++$2:$2;-1+$2:#1+$2:#2$2>$10$11#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,=!+$2:$2;#,1$2<!$2:#,1$2>'$2:#1000#7?????????>0'$2;#3#14)##7???7000#100000001000$2:##1)##7???7000#100000001000+$2:$2;##1#&6$2:#3#7???8000#1#&6+$2:$2;#3#7???8000#1'$2<##??'$2>##??($2:##1(+$2:$2;##1)$2:##1+$2:$2;##1,50!"%pstring).
Definition s2 : sym_state := snd (snd ex2).

Definition plan : SGP.splan := SGP.PStep (SR.SBlock STOPS1) (SGA.mkplan (fst ex2) (SGP.PEnd 0)).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s2).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s2).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s2 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s2 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s2).
Definition ps0 : SR.post_spec := SR.PS 868432 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b3c509.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 868432 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b3c509.IT BndT_Na_002.SegItab_Na_b3c509.IT_sound BF NX0 BR XSTEP F0 PSS plan 868432 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtwR1a.

Module LibSegNa_qtwR1b.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b3c509.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b3c509.IT.
Definition ENDS : list Z := [868536].
Definition STOPS1 : list Z := [833184; 999896; 1001024; 520280; 817564; 868976; 867724; 991168; 868980; 868992; 869008; 869012; 869016; 869020; 868536] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$2:+$2:$2;+$2:$2;$=+$2:#1$?$10$11#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",='$2:#1000#7?????????>0'$2;#1#2)##7???7000#100000001000$2:##1)##7???7000#100000001000+$2:$2;##1#&6$2:#3#7???8000#1#&6+$2:$2;#3#7???8000#1!$2:#,1$2<'$2<##??!+$2:$2;#,1$2>'$2>##??($2:##1(+$2:$2;##1)$2:##1+$2:$2;##1"%pstring).
Definition ss0 : sym_state := SS 868432 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 42), (0), ELit 1); ((EAlu Instr.ALU_ADD (EVar 42) (EVar 43)), (0), ELit 1)].
Definition F0L : list SR.region := [((EVar 42), (0), 1); ((EAlu Instr.ALU_ADD (EVar 42) (EVar 43)), (0), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition s1 : sym_state := Eval vm_compute in (SegCodec.run SegCodec.sc_sstate "#=40;8,20#$1$2$3$4$5$6$7$8$9+$2:#1++$2:$2;-1++$2:$2;-1+$2:#1+$2:#2$2>$10$11#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,=!+$2:$2;#,1$2<!$2:#,1$2>'$2:#1000#7?????????>0'$2;#1#2)##7???7000#100000001000$2:##1)##7???7000#100000001000+$2:$2;##1#&6$2:#3#7???8000#1#&6+$2:$2;#3#7???8000#1'$2<##??'$2>##??($2:##1(+$2:$2;##1)$2:##1+$2:$2;##1,50!"%pstring).

Definition ex2 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",#5=#=40;8,20#$1$2$3$4$5$6$7$8$9+$2:#1++$2:$2;-1++$2:$2;-1+$2:#1+$2:#2$2>$10$11#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,=!+$2:$2;#,1$2<!$2:#,1$2>'$2:#1000#7?????????>0'$2;#1#2)##7???7000#100000001000$2:##1)##7???7000#100000001000+$2:$2;##1#&6$2:#3#7???8000#1#&6+$2:$2;#3#7???8000#1'$2<##??'$2>##??($2:##1(+$2:$2;##1)$2:##1+$2:$2;##1,50!"%pstring).
Definition s2 : sym_state := snd (snd ex2).

Definition plan : SGP.splan := SGP.PStep (SR.SBlock STOPS1) (SGA.mkplan (fst ex2) (SGP.PEnd 0)).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s2).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s2).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s2 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s2 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s2).
Definition ps0 : SR.post_spec := SR.PS 868536 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b3c509.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 868432 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b3c509.IT BndT_Na_002.SegItab_Na_b3c509.IT_sound BF NX0 BR XSTEP F0 PSS plan 868432 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtwR1b.

Module LibSegNa_qtwR1c.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b3c509.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b3c509.IT.
Definition ENDS : list Z := [868432].
Definition STOPS1 : list Z := [833184; 999896; 1001024; 520280; 817564; 868976; 867724; 991168; 868980; 868992; 869008; 869012; 869016; 869020; 868536] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$2:+$2:$2;+$2:$2;$=+$2:#1$?$10$11#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",='$2:#1000#7?????????>0'$2;#3#1=)##7???7000#100000001000$2:##1)##7???7000#100000001000+$2:$2;##1#&6$2:#3#7???8000#1#&6+$2:$2;#3#7???8000#1!$2:#,1$2<'$2<##??!+$2:$2;#,1$2>'$2>##??($2:##1(+$2:$2;##1)$2:##1+$2:$2;##1"%pstring).
Definition ss0 : sym_state := SS 868432 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 42), (0), ELit 1); ((EAlu Instr.ALU_ADD (EVar 42) (EVar 43)), (0), ELit 1)].
Definition F0L : list SR.region := [((EVar 42), (0), 1); ((EAlu Instr.ALU_ADD (EVar 42) (EVar 43)), (0), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition s1 : sym_state := Eval vm_compute in (SegCodec.run SegCodec.sc_sstate "#=4050,20#$1$2$3$4$5$6$7$8$9+$2:#1++$2:$2;-1++$2:$2;-1+$2:#1+$2:#2$2>$10$11#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,=!+$2:$2;#,1$2<!$2:#,1$2>'$2:#1000#7?????????>0'$2;#3#1=)##7???7000#100000001000$2:##1)##7???7000#100000001000+$2:$2;##1#&6$2:#3#7???8000#1#&6+$2:$2;#3#7???8000#1'$2<##??'$2>##??($2:##1(+$2:$2;##1)$2:##1+$2:$2;##1,50!"%pstring).

Definition ex2 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",#5=#=4050,20#$1$2$3$4$5$6$7$8$9+$2:#1++$2:$2;-1++$2:$2;-1+$2:#1+$2:#2$2>$10$11#7???8000$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,=!+$2:$2;#,1$2<!$2:#,1$2>'$2:#1000#7?????????>0'$2;#3#1=)##7???7000#100000001000$2:##1)##7???7000#100000001000+$2:$2;##1#&6$2:#3#7???8000#1#&6+$2:$2;#3#7???8000#1'$2<##??'$2>##??($2:##1(+$2:$2;##1)$2:##1+$2:$2;##1,50!"%pstring).
Definition s2 : sym_state := snd (snd ex2).

Definition plan : SGP.splan := SGP.PStep (SR.SBlock STOPS1) (SGA.mkplan (fst ex2) (SGP.PEnd 0)).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s2).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s2).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s2 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s2 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s2).
Definition ps0 : SR.post_spec := SR.PS 868432 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b3c509.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 868432 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b3c509.IT BndT_Na_002.SegItab_Na_b3c509.IT_sound BF NX0 BR XSTEP F0 PSS plan 868432 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtwR1c.

Module LibSegNa_qtwT.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b3c509.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b3c509.IT.
Definition ENDS : list Z := [868976].
Definition STOPS1 : list Z := [833184; 999896; 1001024; 520280; 817564; 868976; 867724; 991168; 868980; 868992; 869008; 869012; 869016; 869020; 868836] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2->0$3$4$5$6$7$34+$2->0$:$;$<$=$>$?$10$11$12+&6$32#3#7???8000$14+$32#60$32$32+$32#20$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",24'$32#6;6000#7?????????00&$32#20)##7???7000#100000001000$32##100($32##8(&6$32#3#7???8000#20!$32#?8,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##100$33##1'$34#7???7?8010>0#800000000000&$34#10!$34-8,8$35!$34-10,8$36!$34-18,8$37!$34-20,8$38!$34-28,8$39!$34-30,8$3:!$34-38,8$3;!$34-40,8$3<!$34-48,8$3=!$34-50,8$3>!$34-58,8$3?!$34-60,8$40!$34-68,8$41)+$34->0##>0$32##100)+$34->0##>0$33##1'$2#7???7?8010>0#800000000000&$2#20!$2-88,1#!$32#60,1$27'$27##??'&9$27#1##!$32#20,1$30'$30##??'&9$30#1##"%pstring).
Definition ss0 : sym_state := SS 868536 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 50), (0), ELit 8); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), ELit 32); ((EVar 51), (0), ELit 1)].
Definition F0L : list SR.region := [((EVar 50), (0), 8); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), 32); ((EVar 51), (0), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,10#<;6:0#?41=8#?4640#7?058#<799<#=4270#=3=8<#?1?<0#=4274#=4280#=4290#=4294#=4298#=429<#=41>4#=4270#5=#=4270,20#$35$34$3$4$5$6$7$36$37$33$;$<$=$>$?$10$11$38$39$3:$3;$3<$3=$3>$3?$40$41$1<$1=$1>$1?,,45!$33#,1#!&6$32#3#7???801;,1^#?#??????????????5!&6$32#3#7???801:,1^#?#??????????????5!&6$32#3#7???8019,1^#?#??????????????5!&6$32#3#7???8018,1^#?#??????????????5!&6$32#3#7???801?,1^#?#??????????????5!&6$32#3#7???801>,1^#?#??????????????5!&6$32#3#7???801=,1^#?#??????????????5!&6$32#3#7???801<,1^#?#??????????????5!&6$32#3#7???8013,1^#?#??????????????5!&6$32#3#7???8012,1^#?#??????????????5!&6$32#3#7???8011,1^#?#??????????????5!&6$32#3#7???8010,1^#?#??????????????5!&6$32#3#7???8017,1^#?#??????????????5!&6$32#3#7???8016,1^#?#??????????????5!&6$32#3#7???8015,1^#?#??????????????5!&6$32#3#7???8014,1^#?#??????????????5!&6$32#3#7???800;,1^#?#??????????????5!&6$32#3#7???800:,1^#?#??????????????5!&6$32#3#7???8009,1^#?#??????????????5!&6$32#3#7???8008,1^#?#??????????????5!&6$32#3#7???800?,1^#?#??????????????5!&6$32#3#7???800>,1^#?#??????????????5!&6$32#3#7???800=,1^#?#??????????????5!&6$32#3#7???800<,1^#?#??????????????5!&6$32#3#7???8003,1^#?#??????????????5!&6$32#3#7???8002,1^#?#??????????????5!&6$32#3#7???8001,1^#?#??????????????5!&6$32#3#7???8000,1^#?#??????????????5!&6$32#3#7???8007,1^#?#??????????????5!&6$32#3#7???8006,1^#?#??????????????5!&6$32#3#7???8005,1^#?#??????????????5!&6$32#3#7???8004,1^#?#??????????????5!$32#,8#45>0360>'$32#6;6000#7?????????00&$32#20)##7???7000#100000001000$32##100($32##8(&6$32#3#7???8000#20!$32#?8,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##100$33##1'$34#7???7?8010>0#800000000000&$34#10!$34-8,8$35!$34-10,8$36!$34-18,8$37!$34-20,8$38!$34-28,8$39!$34-30,8$3:!$34-38,8$3;!$34-40,8$3<!$34-48,8$3=!$34-50,8$3>!$34-58,8$3?!$34-60,8$40!$34-68,8$41)+$34->0##>0$32##100)+$34->0##>0$33##1'$2#7???7?8010>0#800000000000&$2#20!$32#60,1$27'$27##??'&9$27#1##!$32#20,1$30'$30##??'&9$30#1##,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 868976 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b3c509.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 868536 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b3c509.IT BndT_Na_002.SegItab_Na_b3c509.IT_sound BF NX0 BR XSTEP F0 PSS plan 868536 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtwT.

Module LibSegNa_qtwT1d.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b3c509.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b3c509.IT.
Definition ENDS : list Z := [991168].
Definition STOPS1 : list Z := [833184; 999896; 1001024; 520280; 817564; 868976; 867724; 991168; 868980; 868992; 869008; 869012; 869016; 869020; 868836] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2->0$3$4$5$6$7$34+$2->0$:$;$<$=$>$?$10$11$12+&6$32#3#7???8000$14+$32#60$32$32+$32#20$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",27'$32#6;6000#7?????????00&$32#20)##7???7000#100000001000$32##100($32##8(&6$32#3#7???8000#20!$32#?8,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##100$33##1'$34#7???7?8010>0#800000000000&$34#10!$34-8,8$35!$34-10,8$36!$34-18,8$37!$34-20,8$38!$34-28,8$39!$34-30,8$3:!$34-38,8$3;!$34-40,8$3<!$34-48,8$3=!$34-50,8$3>!$34-58,8$3?!$34-60,8$40!$34-68,8$41)+$34->0##>0$32##100)+$34->0##>0$33##1'$2#7???7?8010>0#800000000000&$2#20!$2-88,1#!$32#60,1$27'$27##??'&9$27#1##!$32#20,1$30'$30##??'&9$30#1#1#1!$32#38,8$2='$2=#1000#7?????????<0!$32#30,8#8"%pstring).
Definition ss0 : sym_state := SS 868536 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (12), ELit 4)].
Definition F0L : list SR.region := [((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (12), 4)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,10#<;6:0#?41=8#?4640#7?058#<799<#=4270#=3=8<#?1?<0#=4274#=4280#=4290#=4294#=4298#=429<#=41>4#?1?<0#5=#?1?<0,20##=4130+$2->0$3$4$5$6$7$34+$2->0$2=#40$<$=$>$?$10$11$12+&6$32#3#7???8000$14+$32#60$32$32+$32#20$19$1:$1;$1<$1=$1>$1?,,2;!&6$32#3#7???800?,1^#?#??????????????8!&6$32#3#7???800>,1^#?#??????????????8!&6$32#3#7???800=,1^#?#??????????????8!&6$32#3#7???800<,1^#?#??????????????8'$32#6;6000#7?????????00&$32#20)##7???7000#100000001000$32##100($32##8(&6$32#3#7???8000#20!$32#?8,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##100$33##1'$34#7???7?8010>0#800000000000&$34#10!$34-8,8$35!$34-10,8$36!$34-18,8$37!$34-20,8$38!$34-28,8$39!$34-30,8$3:!$34-38,8$3;!$34-40,8$3<!$34-48,8$3=!$34-50,8$3>!$34-58,8$3?!$34-60,8$40!$34-68,8$41)+$34->0##>0$32##100)+$34->0##>0$33##1'$2#7???7?8010>0#800000000000&$2#20!$2-88,1#!$32#60,1$27'$27##??'&9$27#1##!$32#20,1$30'$30##??'&9$30#1#1#1!$32#38,8$2='$2=#1000#7?????????<0!$32#30,8#8,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b3c509.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 868536 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b3c509.IT BndT_Na_002.SegItab_Na_b3c509.IT_sound BF NX0 BR XSTEP F0 PSS plan 868536 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtwT1d.

Module LibSegNa_qtwT2d.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b3c509.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b3c509.IT.
Definition ENDS : list Z := [868976].
Definition STOPS1 : list Z := [833184; 999896; 1001024; 520280; 817564; 868976; 867724; 991168; 868980; 868992; 869008; 869012; 869016; 869020; 868836] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2->0$3$4$5$6$7$34+$2->0$:$;$<$=$>$?$10$11$12+&6$32#3#7???8000$14+$32#60$32$32+$32#20$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1='$32#6;6000#7?????????00&$32#20)##7???7000#100000001000$32##100($32##8(&6$32#3#7???8000#20!$32#?8,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##100$33##1'$34#7???7?8010>0#800000000000&$34#10!$34-8,8$35!$34-10,8$36!$34-18,8$37!$34-20,8$38!$34-28,8$39!$34-30,8$3:!$34-38,8$3;!$34-40,8$3<!$34-48,8$3=!$34-50,8$3>!$34-58,8$3?!$34-60,8$40!$34-68,8$41)+$34->0##>0$32##100)+$34->0##>0$33##1'$2#7???7?8010>0#800000000000&$2#20"%pstring).
Definition ss0 : sym_state := SS 868656 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 50), (0), ELit 8); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), ELit 32); ((EVar 51), (0), ELit 1)].
Definition F0L : list SR.region := [((EVar 50), (0), 8); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), 32); ((EVar 51), (0), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,10#<;6:0#?41=8#?4640#7?058#<799<#=4270#=3=8<#?1?<0#=4274#=4280#=4290#=4294#=4298#=429<#=41>4#=4270#5=#=4270,20#$35$34$3$4$5$6$7$36$37$33$;$<$=$>$?$10$11$38$39$3:$3;$3<$3=$3>$3?$40$41$1<$1=$1>$1?,,3?!$33#,1#!&6$32#3#7???801;,1^#?#??????????????5!&6$32#3#7???801:,1^#?#??????????????5!&6$32#3#7???8019,1^#?#??????????????5!&6$32#3#7???8018,1^#?#??????????????5!&6$32#3#7???801?,1^#?#??????????????5!&6$32#3#7???801>,1^#?#??????????????5!&6$32#3#7???801=,1^#?#??????????????5!&6$32#3#7???801<,1^#?#??????????????5!&6$32#3#7???8013,1^#?#??????????????5!&6$32#3#7???8012,1^#?#??????????????5!&6$32#3#7???8011,1^#?#??????????????5!&6$32#3#7???8010,1^#?#??????????????5!&6$32#3#7???8017,1^#?#??????????????5!&6$32#3#7???8016,1^#?#??????????????5!&6$32#3#7???8015,1^#?#??????????????5!&6$32#3#7???8014,1^#?#??????????????5!&6$32#3#7???800;,1^#?#??????????????5!&6$32#3#7???800:,1^#?#??????????????5!&6$32#3#7???8009,1^#?#??????????????5!&6$32#3#7???8008,1^#?#??????????????5!&6$32#3#7???800?,1^#?#??????????????5!&6$32#3#7???800>,1^#?#??????????????5!&6$32#3#7???800=,1^#?#??????????????5!&6$32#3#7???800<,1^#?#??????????????5!&6$32#3#7???8003,1^#?#??????????????5!&6$32#3#7???8002,1^#?#??????????????5!&6$32#3#7???8001,1^#?#??????????????5!&6$32#3#7???8000,1^#?#??????????????5!&6$32#3#7???8007,1^#?#??????????????5!&6$32#3#7???8006,1^#?#??????????????5!&6$32#3#7???8005,1^#?#??????????????5!&6$32#3#7???8004,1^#?#??????????????5!$32#,8#45>0360>'$32#6;6000#7?????????00&$32#20)##7???7000#100000001000$32##100($32##8(&6$32#3#7???8000#20!$32#?8,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##100$33##1'$34#7???7?8010>0#800000000000&$34#10!$34-8,8$35!$34-10,8$36!$34-18,8$37!$34-20,8$38!$34-28,8$39!$34-30,8$3:!$34-38,8$3;!$34-40,8$3<!$34-48,8$3=!$34-50,8$3>!$34-58,8$3?!$34-60,8$40!$34-68,8$41)+$34->0##>0$32##100)+$34->0##>0$33##1'$2#7???7?8010>0#800000000000&$2#20,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 868976 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b3c509.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 868656 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b3c509.IT BndT_Na_002.SegItab_Na_b3c509.IT_sound BF NX0 BR XSTEP F0 PSS plan 868656 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtwT2d.

Module LibSegNa_qtwZ.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b3c509.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b3c509.IT.
Definition ENDS : list Z := [1001024].
Definition STOPS1 : list Z := [833184; 999896; 1001024; 520280; 817564; 868976; 867724; 991168; 868980; 868992; 869008; 869012; 869016; 869020] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2->0$3$4$5$6$7$8+$2->0$:$;$<$=$>$?$10$11#+&6$32#3#7???8000$2=#7???8000$32$32+$32#20$21$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332487392 140737488355328;
   KAlign (EVar 2) 32;
   KWr (SA (EVar 2) (-224)) (ELit 224)].
Definition ss0 : sym_state := SS 867960 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,?#<;6:0#?41=8#?4640#7?058#<799<#=4270#=3=8<#?1?<0#=4274#=4280#=4290#=4294#=4298#=429<#?4640#5=#?4640,20##=4004+$2->0$3$4$5$6$7$8+$2->0$2=#30$<$=$>$?$10$11#+&6$32#3#7???8000$2=#7???8000$32$32+$32#20$21$1:$1;$1<$1=$1>$1?,,3'$2#7???7?8010>0#800000000000&$2#20($2->0#>0,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b3c509.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 867960 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b3c509.IT BndT_Na_002.SegItab_Na_b3c509.IT_sound BF NX0 BR XSTEP F0 PSS plan 867960 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtwZ.

Module LibSegNa_qtwZt.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_b3c509.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_b3c509.IT.
Definition ENDS : list Z := [868976].
Definition STOPS1 : list Z := [833184; 999896; 1001024; 520280; 817564; 868976; 867724; 991168; 868980; 868992; 869008; 869012; 869016; 869020; 868836] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$34$9$:$;$<$=$>$?$10$11$12+&6$32#3#7???8000$14$15$32$32+$32#20$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1>'$32#6;6000#7?????????00&$32#20)##7???7000#100000001000$32##100($32##8(&6$32#3#7???8000#20!$32#?8,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##100$33##1'$34#7???7?8010>0#800000000000&$34#10!$34-8,8$35!$34-10,8$36!$34-18,8$37!$34-20,8$38!$34-28,8$39!$34-30,8$3:!$34-38,8$3;!$34-40,8$3<!$34-48,8$3=!$34-50,8$3>!$34-58,8$3?!$34-60,8$40!$34-68,8$41)+$34->0##>0$32##100)+$34->0##>0$33##1!$32#20,1$30'$30##??'&9$30#1##"%pstring).
Definition ss0 : sym_state := SS 868356 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 50), (0), ELit 8); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), ELit 32); ((EVar 51), (0), ELit 1)].
Definition F0L : list SR.region := [((EVar 50), (0), 8); ((EAlu Instr.ALU_ADD (EAlu Instr.ALU_SRL (EVar 50) (ELit 3)) (ELit (2147450880))), (0), 32); ((EVar 51), (0), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,10#<;6:0#?41=8#?4640#7?058#<799<#=4270#=3=8<#?1?<0#=4274#=4280#=4290#=4294#=4298#=429<#=41>4#=4270#5=#=4270,20#$35$34$3$4$5$6$7$36$37$33$;$<$=$>$?$10$11$38$39$3:$3;$3<$3=$3>$3?$40$41$1<$1=$1>$1?,,40!$33#,1#!&6$32#3#7???801;,1^#?#??????????????5!&6$32#3#7???801:,1^#?#??????????????5!&6$32#3#7???8019,1^#?#??????????????5!&6$32#3#7???8018,1^#?#??????????????5!&6$32#3#7???801?,1^#?#??????????????5!&6$32#3#7???801>,1^#?#??????????????5!&6$32#3#7???801=,1^#?#??????????????5!&6$32#3#7???801<,1^#?#??????????????5!&6$32#3#7???8013,1^#?#??????????????5!&6$32#3#7???8012,1^#?#??????????????5!&6$32#3#7???8011,1^#?#??????????????5!&6$32#3#7???8010,1^#?#??????????????5!&6$32#3#7???8017,1^#?#??????????????5!&6$32#3#7???8016,1^#?#??????????????5!&6$32#3#7???8015,1^#?#??????????????5!&6$32#3#7???8014,1^#?#??????????????5!&6$32#3#7???800;,1^#?#??????????????5!&6$32#3#7???800:,1^#?#??????????????5!&6$32#3#7???8009,1^#?#??????????????5!&6$32#3#7???8008,1^#?#??????????????5!&6$32#3#7???800?,1^#?#??????????????5!&6$32#3#7???800>,1^#?#??????????????5!&6$32#3#7???800=,1^#?#??????????????5!&6$32#3#7???800<,1^#?#??????????????5!&6$32#3#7???8003,1^#?#??????????????5!&6$32#3#7???8002,1^#?#??????????????5!&6$32#3#7???8001,1^#?#??????????????5!&6$32#3#7???8000,1^#?#??????????????5!&6$32#3#7???8007,1^#?#??????????????5!&6$32#3#7???8006,1^#?#??????????????5!&6$32#3#7???8005,1^#?#??????????????5!&6$32#3#7???8004,1^#?#??????????????5!$32#,8#45>0360>'$32#6;6000#7?????????00&$32#20)##7???7000#100000001000$32##100($32##8(&6$32#3#7???8000#20!$32#?8,8$33'$33#1000#7???????????($33##1)##7???7000#100000001000$33##1)$32##100$33##1'$34#7???7?8010>0#800000000000&$34#10!$34-8,8$35!$34-10,8$36!$34-18,8$37!$34-20,8$38!$34-28,8$39!$34-30,8$3:!$34-38,8$3;!$34-40,8$3<!$34-48,8$3=!$34-50,8$3>!$34-58,8$3?!$34-60,8$40!$34-68,8$41)+$34->0##>0$32##100)+$34->0##>0$33##1!$32#20,1$30'$30##??'&9$30#1##,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 868976 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_b3c509.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 868356 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_b3c509.IT BndT_Na_002.SegItab_Na_b3c509.IT_sound BF NX0 BR XSTEP F0 PSS plan 868356 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtwZt.

Module LibSegNa_qtxI.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_1a8988.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_1a8988.IT.
Definition ENDS : list Z := [833440].
Definition STOPS1 : list Z := [833440; 833444] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 39); EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1:%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801010#800000000000&$2#10($2-10#10'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-10#10$21##20!$21#,1$28'$28##??'$27#6;6000#7?????????>0&$27#8)##7???7000#100000001000$27##20#&6$27#3#7???8000#4!$27#,1$26'$26##??'&9$26#1##!$27#8,8$23!$27#10,8$24)$21##20$27##20!$27#18,8$25)$2-10#10$27##20"%pstring).
Definition ss0 : sym_state := SS 833184 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-8), ELit 8); ((EVar 33), (0), ELit 1); ((EVar 33), (8), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-8), 8); ((EVar 33), (0), 1); ((EVar 33), (8), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#<;7:0#<;7:4#<;7:0#5=#<;7:0,20#$1$2$3$4$5$6$7$8$9+$21#18$25#+$21#10#7???8000#$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1>!$21#18,8$25!$21#10,8$24!$21#8,8$23!$21#,1+@#4&6$28#2&9$26#2!$2-8,8$1%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801010#800000000000&$2#10($2-10#10'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-10#10$21##20'$28##??'$27#6;6000#7?????????>0&$27#8)##7???7000#100000001000$27##20#&6$27#3#7???8000#4!$27#,1$26'$26##??'&9$26#1##!$27#8,8$23!$27#10,8$24)$21##20$27##20!$27#18,8$25)$2-10#10$27##20,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 833440 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_1a8988.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 833184 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_1a8988.IT BndT_Na_000.SegItab_Na_1a8988.IT_sound BF NX0 BR XSTEP F0 PSS plan 833184 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtxI.

Module LibSegNa_qtyI.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_000.SegItab_Na_12bfca.ITR.
Definition IT : itab := BndT_Na_000.SegItab_Na_12bfca.IT.
Definition ENDS : list Z := [838360].
Definition STOPS1 : list Z := [838360; 838364] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 39); EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1:%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801010#800000000000&$2#10($2-10#10'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-10#10$21##20!$21#,1$28'$28##??'$27#6;6000#7?????????>0&$27#8)##7???7000#100000001000$27##20#&6$27#3#7???8000#4!$27#,1$26'$26##??'&9$26#1##!$27#8,8$23!$27#10,8$24)$21##20$27##20!$27#18,8$25)$2-10#10$27##20"%pstring).
Definition ss0 : sym_state := SS 838104 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-8), ELit 8); ((EVar 33), (0), ELit 1); ((EVar 33), (8), ELit 24)].
Definition F0L : list SR.region := [((EVar 2), (-8), 8); ((EVar 33), (0), 1); ((EVar 33), (8), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#<<:=8#<<:=<#<<:=8#5=#<<:=8,20#$1$2$3$4$5$6$7$8$9+$21#18$25#+$21#10#7???8000#$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1>!$21#18,8$25!$21#10,8$24!$21#8,8$23!$21#,1+@#4&6$28#2&9$26#2!$2-8,8$1%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801010#800000000000&$2#10($2-10#10'$21#6;6000#7?????????>0&$21#8)##7???7000#100000001000$21##20#&6$21#3#7???8000#4($21##20)$2-10#10$21##20'$28##??'$27#6;6000#7?????????>0&$27#8)##7???7000#100000001000$27##20#&6$27#3#7???8000#4!$27#,1$26'$26##??'&9$26#1##!$27#8,8$23!$27#10,8$24)$21##20$27##20!$27#18,8$25)$2-10#10$27##20,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 838360 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Na_000.SegItab_Na_12bfca.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 838104 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_000.SegItab_Na_12bfca.IT BndT_Na_000.SegItab_Na_12bfca.IT_sound BF NX0 BR XSTEP F0 PSS plan 838104 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtyI.

Module LibSegNa_qtzA0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_89918d.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_89918d.IT.
Definition ENDS : list Z := [412000].
Definition STOPS1 : list Z := [412000; 827548] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 34); EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KImg 65536 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487296 140737488355328;
   KAlign (EVar 2) 32;
   KWr (SA (EVar 2) (-128)) (ELit 128)].
Definition ss0 : sym_state := SS 827428 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#64960#<:09<#64960#5=#64960,20##<:094+$2-80$3$4$5$6$7$2+$2-80#60#15?:78#1$=$>$?$10$11$12$22$21$15$16$17#7???8000$19$1:$1;$1<$1=$1>$1?,,13!$2-60,8$1:!$2-58,8$19!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1!$2-80,8#%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801080#800000000000&$2#20($2-80#80,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_89918d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 827428 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_89918d.IT BndT_Na_002.SegItab_Na_89918d.IT_sound BF NX0 BR XSTEP F0 PSS plan 827428 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtzA0.

Module LibSegNa_qtzA16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Na_002.SegItab_Na_89918d.ITR.
Definition IT : itab := BndT_Na_002.SegItab_Na_89918d.IT.
Definition ENDS : list Z := [412000].
Definition STOPS1 : list Z := [412000; 827548] ++ ENDS.
Definition NX0 : nat := 80.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2#10$3$4$5$6$7$8$9$21$22$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KImg 65536 1409024;
   KWord (SA (ELit 0) 1440376) 8 (ELit 2147450880);
   KWord (SA (ELit 0) 1440384) 4 (ELit 1);
   KRange (EVar 2) 140735332487296 140737488355312;
   KAlign (EVar 2) 32;
   KWr (SA (EVar 2) (-128)) (ELit 144)].
Definition ss0 : sym_state := SS 827428 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,3#64960#<:09<#64960#5=#64960,20##<:094+$2-80$3$4$5$6$7+$2#10+$2-80#60#15?:78#1$=$>$?$10$11$12$22$21$15$16$17#7???8000$19$1:$1;$1<$1=$1>$1?,,13!$2-50,8$1:!$2-48,8$19!$2-40,8$18!$2-38,8$17!$2-30,8$16!$2-28,8$15!$2-20,8$14!$2-18,8$13!$2-10,8$12!$2-8,8$9!$2#,8$8!$2#8,8$1!$2-70,8#%#10000#158000!##15?:78,8#7???8000!##15?:80,4#1'$2#7???7?801080#7??????????0&$2#20($2-80#90,50!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS BndT_Na_002.SegItab_Na_89918d.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 827428 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := as0_plan_sound_it BndT_Na_002.SegItab_Na_89918d.IT BndT_Na_002.SegItab_Na_89918d.IT_sound BF NX0 BR XSTEP F0 PSS plan 827428 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNa_qtzA16.

End BndP_Na_103.
