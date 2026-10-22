(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
Set Warnings "-require-in-module".
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel. From Stdlib Require ZArith NArith List Lia Bool. From LinuxProcessSemantics.LinuxProcessSem Require BvBase RiscvSemantics MemImageType State Run. From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Plain. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Ns_000 BndT_Ns_002. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Module BndP_Ns_088.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Plain.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Ns_000 BndT_Ns_002.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Ns_088 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC6ARocqVerifyHarnessATaskSpecification8ProblemsWSrc_jsoncons_fuzz_msgpack_encoder_repro1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Ns_000ASegItab_Ns_0ede2b2ITC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088=LibSegNs_vbOu2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088=LibSegNs_vbOu3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088=LibSegNs_vbOu2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088=LibSegNs_vbOu5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088=LibSegNs_vbOu2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088=LibSegNs_vbOu3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088=LibSegNs_vbOu4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088=LibSegNs_vbOu5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088=LibSegNs_vbOu3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vbOu152BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vbOu153NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vbOu152BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vbOu155XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vbOu152F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vbOu153PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vbOu154planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vbOu155regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vbOu153kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vbOw162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vbOw163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vbOw162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vbOw165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vbOw162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vbOw163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vbOw164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vbOw165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vbOw163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vbOw322BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vbOw323NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vbOw322BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vbOw325XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vbOw322F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vbOw323PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vbOw324planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vbOw325regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vbOw323kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Ns_002ASegItab_Ns_efb0a72ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088<LibSegNs_vcB2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088<LibSegNs_vcB3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088<LibSegNs_vcB2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088<LibSegNs_vcB5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088<LibSegNs_vcB2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088<LibSegNs_vcB3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088<LibSegNs_vcB4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088<LibSegNs_vcB5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088<LibSegNs_vcB3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088<LibSegNs_vcE2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088<LibSegNs_vcE3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088<LibSegNs_vcE2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088<LibSegNs_vcE5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088<LibSegNs_vcE2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088<LibSegNs_vcE3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088<LibSegNs_vcE4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088<LibSegNs_vcE5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088<LibSegNs_vcE3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088=LibSegNs_vcS12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088=LibSegNs_vcS13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088=LibSegNs_vcS12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088=LibSegNs_vcS15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088=LibSegNs_vcS12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088=LibSegNs_vcS13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088=LibSegNs_vcS14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088=LibSegNs_vcS15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088=LibSegNs_vcS13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088<LibSegNs_vcX2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088<LibSegNs_vcX3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088<LibSegNs_vcX2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088<LibSegNs_vcX5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088<LibSegNs_vcX2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088<LibSegNs_vcX3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088<LibSegNs_vcX4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088<LibSegNs_vcX5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088<LibSegNs_vcX3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Ns_000ASegItab_Ns_50f3672ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbA2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbA3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbA2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbA5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbA2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbA3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbA4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbA5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbA3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbL2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbL3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbL2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbL5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbL2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbL3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbL4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbL5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbL3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbN2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbN3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbN2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbN5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbN2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbN3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbN4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbN5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbN3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbZ2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbZ3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbZ2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbZ5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbZ2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbZ3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbZ4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbZ5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dbZ3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Ns_000ASegItab_Ns_3f749a2ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dsA2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dsA3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dsA2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dsA5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dsA2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dsA3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dsA4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dsA5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dsA3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dsB2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dsB3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dsB2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dsB5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dsB2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dsB3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dsB4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dsB5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_088?LibSegNs_vd_dsB3kn0".

Module LibSegNs_vbOu.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_0ede2b.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_0ede2b.IT.
Definition ENDS : list Z := [263888].
Definition STOPS1 : list Z := [263888] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$;$39$37$38$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$2#7???7?800060#800000000000&$2#10($2-60#60!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31"%pstring).
Definition ss0 : sym_state := SS 263856 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#406=0#406=0#5=#406=0,20#$2<$2$3$4$5$6$7$2=$2>#1$38$<$=$>$?$10$11$2?$30$31$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,9'$2#7???7?800060#800000000000&$2#10($2-60#60!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 263888 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_0ede2b.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 263856 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_0ede2b.IT BndT_Ns_000.SegItab_Ns_0ede2b.IT_sound BF NX0 BR XSTEP F0 PSS plan 263856 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vbOu.

Module LibSegNs_vbOu15.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_0ede2b.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_0ede2b.IT.
Definition ENDS : list Z := [263888].
Definition STOPS1 : list Z := [263888] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$;$39$37$38$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$2#7???7?800060#800000000000&$2#10($2-60#60!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31"%pstring).
Definition ss0 : sym_state := SS 263760 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#406=0#406=0#5=#406=0,20#$2<$2$3$4$5$6$7$2=$2>#1$38$<$=$>$?$10$11$2?$30$31$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,9'$2#7???7?800060#800000000000&$2#10($2-60#60!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 263888 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_0ede2b.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 263760 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_0ede2b.IT BndT_Ns_000.SegItab_Ns_0ede2b.IT_sound BF NX0 BR XSTEP F0 PSS plan 263760 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vbOu15.

Module LibSegNs_vbOw16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_0ede2b.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_0ede2b.IT.
Definition ENDS : list Z := [269036].
Definition STOPS1 : list Z := [269036] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$;+$:#8$37$38$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483168 140737488355328;
   KAlign (EVar 2) 16;
   KRange (EVar 11) 0 18446744073709551615].
Definition ss0 : sym_state := SS 263796 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41:><#41:><#5=#41:><,20##40680+$2-60$3$4$5$6$7$;+$:#8$;+$:#8$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800060#800000000000&$2#10'$;#^#?#???????????????,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 269036 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_0ede2b.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 263796 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_0ede2b.IT BndT_Ns_000.SegItab_Ns_0ede2b.IT_sound BF NX0 BR XSTEP F0 PSS plan 263796 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vbOw16.

Module LibSegNs_vbOw32.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_0ede2b.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_0ede2b.IT.
Definition ENDS : list Z := [269136].
Definition STOPS1 : list Z := [269136] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$;+$:#8$37$38$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483168 140737488355328;
   KAlign (EVar 2) 16;
   KRange (EVar 11) 0 18446744073709551615].
Definition ss0 : sym_state := SS 263844 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41;50#41;50#5=#41;50,20##406;0+$2-60$3$4$5$6$7$;+$:#8%0$;#+$:#8$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800060#800000000000&$2#10'$;#^#?#???????????????,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 269136 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_0ede2b.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 263844 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_0ede2b.IT BndT_Ns_000.SegItab_Ns_0ede2b.IT_sound BF NX0 BR XSTEP F0 PSS plan 263844 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vbOw32.

Module LibSegNs_vcB.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_efb0a7.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_efb0a7.IT.
Definition ENDS : list Z := [280836; 280492].
Definition STOPS1 : list Z := [280836; 280492] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4#>?#>0#:0#?4#8?$25$;+$21$23#8#1-3>#?5-41#2#15==:#3$15$21$17$18$19$1:$1;#>=#9?#?0#90"%pstring).
Definition kn0 : list kentry := [KRange (EVar 33) 0 140737488355328;
   KRange (EVar 35) 0 140737488355328;
   KRange (EAlu Instr.ALU_ADD (EVar 33) (EVar 35)) 0 140737488355328].
Definition ss0 : sym_state := SS 280796 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#44904#447:<#44904#447:<#5;#448>0,20#$1+$2-60$3$4#>?#>0#:0#?4#8?$21$;+$21$23#8#1-3>#?5-41#2#15==:#3$15$21$17$18$19$1:$1;#>=#9?#?0#90,,3'$21##800000000000'$23##800000000000'+$21$23##800000000000,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition arms2 := Eval vm_compute in (match SGP.branch_probe IT s1 with Some e => SGP.case_arms s1 e 0 | None => None end).
Definition f2 : sym_state := match arms2 with Some (Some s, _) => s | _ => s1 end.
Definition t2 : sym_state := match arms2 with Some (_, Some s) => s | _ => s1 end.

Definition ex3 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#44904#447:<#44904#447:<#5=#44904,20#$1+$2-60$3$4#>?#>0#:0#?4#8?+$21$23#+$21$23#8#1-3>#?5-41#2#15==:#3$15$21$17$18$19$1:$1;#>=#9?#?0#90,,4'&4&1$21+$21$23#1#1#1'$21##800000000000'$23##800000000000'+$21$23##800000000000,3<!"%pstring).
Definition s3 : sym_state := snd (snd ex3).

Definition ex4 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#44904#447:<#44904#447:<#5=#447:<,20#$1+$2-60$3$4#>?#>0#:0#?4#8?$21$;+$21$23#8#1-3>#?5-41#2#15==:#3$15$21$17$18$19$1:$1;#>=#9?#?0#90,,4'&4&1$21+$21$23#1##'$21##800000000000'$23##800000000000'+$21$23##800000000000,3<!"%pstring).
Definition s4 : sym_state := snd (snd ex4).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PBranch (SGA.mkplan (fst ex3) (SGP.PEnd 0)) (SGA.mkplan (fst ex4) (SGP.PEnd 1))).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s3).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s3).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s3 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s3 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s3).
Definition ps0 : SR.post_spec := SR.PS 280836 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition regs_out1 : list expr := Eval vm_compute in (s_regs s4).
Definition exit_sp_off1 : Z := Eval vm_compute in (spoff_of s4).
Definition cells1 : list kentry := Eval vm_compute in (cells_of s4 exit_sp_off1).
Definition nfresh1 : nat := Eval vm_compute in (s_next s4 - NX0)%nat.
Definition exit_pc1 : Z := Eval vm_compute in (s_pc s4).
Definition ps1 : SR.post_spec := SR.PS 280492 (map (fun i => (i, nth i regs_out1 (ELit 0))) (seq 1 31)) F0L cells1.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0; ps1] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_efb0a7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 280796 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_efb0a7.IT BndT_Ns_002.SegItab_Ns_efb0a7.IT_sound BF NX0 BR XSTEP F0 PSS plan 280796 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vcB.

Module LibSegNs_vcE.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_efb0a7.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_efb0a7.IT.
Definition ENDS : list Z := [280884; 280492].
Definition STOPS1 : list Z := [280884; 280492] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 35); EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483168 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-96)) (ELit 96);
   KRange (EVar 33) 0 140737488355328;
   KRange (EVar 35) 0 536870911].
Definition ss0 : sym_state := SS 280364 regs0 [] kn0 NX0.
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

Definition arms1 := Eval vm_compute in (match SGP.branch_probe IT ss0 with Some e => SGP.case_arms ss0 e 0 | None => None end).
Definition f1 : sym_state := match arms1 with Some (Some s, _) => s | _ => ss0 end.
Definition t1 : sym_state := match arms1 with Some (_, Some s) => s | _ => ss0 end.

Definition ex2 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#44934#447:<#44934#447:<#5=#44934,20#$1$2$3$4$5$6$7$8$9$21$23$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,6'&4&1$23##1#1#1'$2#7???7?800060#800000000000&$2#10($2-60#60'$21##800000000000'$23##1???????,3<!"%pstring).
Definition s2 : sym_state := snd (snd ex2).

Definition ex3 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#44934#447:<#44934#447:<#5=#447:<,20#$1+$2-60$3$4#>?#>0#:0#?4#8?$21#15768+$21$23#8#1^#?#?????????????<2#?5^#?#?????????????;?#2#15==:#3$15$16$17$18$19$1:$1;#>=#9?#?0#90,,11!$2-58,8$1:!$2-50,8$19!$2-48,8$18!$2-40,8$17!$2-38,8$16!$2-30,8$15!$2-28,8$14!$2-20,8$13!$2-18,8$12!$2-10,8$9!$2-8,8$8'&4&1$23##1##'$2#7???7?800060#800000000000&$2#10($2-60#60'$21##800000000000'$23##1???????,3<!"%pstring).
Definition s3 : sym_state := snd (snd ex3).

Definition plan : SGP.splan := SGP.PBranch (SGA.mkplan (fst ex2) (SGP.PEnd 0)) (SGA.mkplan (fst ex3) (SGP.PEnd 1)).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

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
Definition ps0 : SR.post_spec := SR.PS 280884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition regs_out1 : list expr := Eval vm_compute in (s_regs s3).
Definition exit_sp_off1 : Z := Eval vm_compute in (spoff_of s3).
Definition cells1 : list kentry := Eval vm_compute in (cells_of s3 exit_sp_off1).
Definition nfresh1 : nat := Eval vm_compute in (s_next s3 - NX0)%nat.
Definition exit_pc1 : Z := Eval vm_compute in (s_pc s3).
Definition ps1 : SR.post_spec := SR.PS 280492 (map (fun i => (i, nth i regs_out1 (ELit 0))) (seq 1 31)) F0L cells1.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0; ps1] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_efb0a7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 280364 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_efb0a7.IT BndT_Ns_002.SegItab_Ns_efb0a7.IT_sound BF NX0 BR XSTEP F0 PSS plan 280364 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vcE.

Module LibSegNs_vcS1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_efb0a7.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_efb0a7.IT.
Definition ENDS : list Z := [280632].
Definition STOPS1 : list Z := [280632] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4#>?#>0#:0#?4#8?$21$;+$21$23#8#1-3>#?5-41#2#15==:#3$24$16$17$18$19$1:$1;#>=#9?#?0#90"%pstring).
Definition kn0 : list kentry := [KRange (EVar 33) 0 140737488355328;
   KRange (EVar 35) 1 536870912;
   KRange (EAlu Instr.ALU_ADD (EVar 33) (EVar 35)) 1 140737488355328].
Definition ss0 : sym_state := SS 280624 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#44838#44838#5=#44838,20#$1+$2-60$3$4#>?#>0#:0#?4#8?$21+&9$24#??#15==:+$21$23#8#1-3>#?5-41#2#15==:#3$24$16&9$24#??$18$19$1:$1;#>=#9?#?0#90,,3'$21##800000000000'$23#1#20000000'+$21$23#1#800000000000,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 280632 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_efb0a7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 280624 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_efb0a7.IT BndT_Ns_002.SegItab_Ns_efb0a7.IT_sound BF NX0 BR XSTEP F0 PSS plan 280624 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vcS1.

Module LibSegNs_vcX.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_efb0a7.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_efb0a7.IT.
Definition ENDS : list Z := [280884].
Definition STOPS1 : list Z := [280884] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>'$2#7???7?800060#800000000000&$2#10($2-60#60!$2-8,8$2=!$2-10,8$2>!$2-18,8$2?!$2-20,8$30!$2-28,8$31!$2-30,8$32!$2-38,8$33!$2-40,8$34!$2-48,8$35!$2-50,8$36!$2-58,8$37"%pstring).
Definition ss0 : sym_state := SS 280836 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#44934#44934#5=#44934,20#$1$2$3$4$5$6$7$2=$2>$:$;$<$=$>$?$10$11$2?$30$31$32$33$34$35$36$37$1;$1<$1=$1>$1?,,>'$2#7???7?800060#800000000000&$2#10($2-60#60!$2-8,8$2=!$2-10,8$2>!$2-18,8$2?!$2-20,8$30!$2-28,8$31!$2-30,8$32!$2-38,8$33!$2-40,8$34!$2-48,8$35!$2-50,8$36!$2-58,8$37,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 280884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_efb0a7.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 280836 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_efb0a7.IT BndT_Ns_002.SegItab_Ns_efb0a7.IT_sound BF NX0 BR XSTEP F0 PSS plan 280836 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vcX.

Module LibSegNs_vd_dbA.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_50f367.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_50f367.IT.
Definition ENDS : list Z := [251588; 251808].
Definition STOPS1 : list Z := [251588; 251808] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 60; EVar 61; EVar 50; EVar 34; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21'$3<#7???7?800040#800000000000'$3=##1:'$32##??"%pstring).
Definition ss0 : sym_state := SS 251488 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#3=6<4#3=7:0#3=6<4#3=7:0#5;#3=694,20#$1+$2-60$3$4$5$6$7$8$9$3<$3=$32$22$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,15!$2-60,8$1:!$2-58,8$19!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21'$3<#7???7?800040#800000000000'$3=##1:'$32##??,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition arms2 := Eval vm_compute in (match SGP.branch_probe IT s1 with Some e => SGP.case_arms s1 e 0 | None => None end).
Definition f2 : sym_state := match arms2 with Some (Some s, _) => s | _ => s1 end.
Definition t2 : sym_state := match arms2 with Some (_, Some s) => s | _ => s1 end.

Definition ex3 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#3=6<4#3=7:0#3=6<4#3=7:0#5=#3=7:0,20#$1$2$3$4$5$6$7$8$9$3<$3=$32$22$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,16'&4&1$3=##1#1#1!$2-60,8$1:!$2-58,8$19!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21'$3<#7???7?800040#800000000000'$3=##1:'$32##??,:0!"%pstring).
Definition s3 : sym_state := snd (snd ex3).

Definition ex4 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#3=6<4#3=7:0#3=6<4#3=7:0#5=#3=6<4,20#$1+$2-60$3$4$5$6$7$22$32$3<$3=$32$22$>$?$10$11$3<+$3<$3=#:#1#44#2;#2=#65#45$1;$1<$1=$1>$1?,,16'&4&1$3=##1##!$2-60,8$1:!$2-58,8$19!$2-50,8$18!$2-48,8$17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21'$3<#7???7?800040#800000000000'$3=##1:'$32##??,:0!"%pstring).
Definition s4 : sym_state := snd (snd ex4).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PBranch (SGA.mkplan (fst ex3) (SGP.PEnd 0)) (SGA.mkplan (fst ex4) (SGP.PEnd 1))).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s3).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s3).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s3 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s3 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s3).
Definition ps0 : SR.post_spec := SR.PS 251808 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition regs_out1 : list expr := Eval vm_compute in (s_regs s4).
Definition exit_sp_off1 : Z := Eval vm_compute in (spoff_of s4).
Definition cells1 : list kentry := Eval vm_compute in (cells_of s4 exit_sp_off1).
Definition nfresh1 : nat := Eval vm_compute in (s_next s4 - NX0)%nat.
Definition exit_pc1 : Z := Eval vm_compute in (s_pc s4).
Definition ps1 : SR.post_spec := SR.PS 251588 (map (fun i => (i, nth i regs_out1 (ELit 0))) (seq 1 31)) F0L cells1.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0; ps1] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_50f367.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 251488 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_50f367.IT BndT_Ns_000.SegItab_Ns_50f367.IT_sound BF NX0 BR XSTEP F0 PSS plan 251488 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_dbA.

Module LibSegNs_vd_dbL.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_50f367.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_50f367.IT.
Definition ENDS : list Z := [251608; 418884].
Definition STOPS1 : list Z := [251608; 418884] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$32$:$;$<$=$>$?$10$11$33$34#:$35#44#2;#2=#65#45$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",18'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2=!$2-60,8$2>'$32##??'$35##1'$33#7???7?800040#7???????????'$34#7???7?800040#800000000000!$33#,1$36'$36##??"%pstring).
Definition ss0 : sym_state := SS 251588 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#3=6=8#66444#3=6=8#66444#5;#3=6<<,20#$1+$2-60$3$4$5$6$7$22$32+$36-30$36$<$=$>$?$10$11$33$34#:$35#44#2;#2=#65#45$1;$1<$1=$1>$1?,,18'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2=!$2-60,8$2>'$32##??'$35##1'$33#7???7?800040#7???????????'$34#7???7?800040#800000000000!$33#,1$36'$36##??,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition arms2 := Eval vm_compute in (match SGP.branch_probe IT s1 with Some e => SGP.case_arms s1 e 0 | None => None end).
Definition f2 : sym_state := match arms2 with Some (Some s, _) => s | _ => s1 end.
Definition t2 : sym_state := match arms2 with Some (_, Some s) => s | _ => s1 end.

Definition ex3 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#3=6=8#66444#3=6=8#66444#5=#66444,20##3=6=8+$2-60$3$4$5$6$7$22$32$21$36$<$=$>$?$10$11$33$34#:$35#44#2;#2=#65#45$1;$1<$1=$1>$1?,,19'&4+$36-30#:#1#1'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2=!$2-60,8$2>'$32##??'$35##1'$33#7???7?800040#7???????????'$34#7???7?800040#800000000000!$33#,1$36'$36##??,:0!"%pstring).
Definition s3 : sym_state := snd (snd ex3).

Definition ex4 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#3=6=8#66444#3=6=8#66444#5;#3=6>4,20#$1+$2-60$3$4$5$6$7$22$32+$36-30$36$<$=$>$?$10$11$33$34#:$35#44#2;#2=#65#45$1;$1<$1=$1>$1?,,19'&4+$36-30#:##'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2=!$2-60,8$2>'$32##??'$35##1'$33#7???7?800040#7???????????'$34#7???7?800040#800000000000!$33#,1$36'$36##??,:0!"%pstring).
Definition s4 : sym_state := snd (snd ex4).

Definition arms5 := Eval vm_compute in (match SGP.branch_probe IT s4 with Some e => SGP.case_arms s4 e 0 | None => None end).
Definition f5 : sym_state := match arms5 with Some (Some s, _) => s | _ => s4 end.
Definition t5 : sym_state := match arms5 with Some (_, Some s) => s | _ => s4 end.

Definition ex6 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#3=6=8#66444#3=6=8#66444#5;#3=6?4,20#$1+$2-60$3$4$5$6$7$22$32+$36-30$36$<$=$>$?$10$11$33$34#:$35#44#2;#2=#65#45$1;$1<$1=$1>$1?,,1:'&3#44$36#1#1'&4+$36-30#:##'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2=!$2-60,8$2>'$32##??'$35##1'$33#7???7?800040#7???????????'$34#7???7?800040#800000000000!$33#,1$36'$36##??,:0!"%pstring).
Definition s6 : sym_state := snd (snd ex6).

Definition arms7 := Eval vm_compute in (match SGP.branch_probe IT s6 with Some e => SGP.case_arms s6 e 0 | None => None end).
Definition f7 : sym_state := match arms7 with Some (Some s, _) => s | _ => s6 end.
Definition t7 : sym_state := match arms7 with Some (_, Some s) => s | _ => s6 end.

Definition ex8 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#3=6=8#66444#3=6=8#66444#5=#66444,20##3=6=8+$2-60$3$4$5$6$7$22$32$21#65$<$=$>$?$10$11$33$34#:##44#2;#2=#65#45$1;$1<$1=$1>$1?,,1;'&4&1$36#65#1#1#1'&3#44$36#1#1'&4+$36-30#:##'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2=!$2-60,8$2>'$32##??'$35##1'$33#7???7?800040#7???????????'$34#7???7?800040#800000000000!$33#,1$36'$36##??,:0!"%pstring).
Definition s8 : sym_state := snd (snd ex8).

Definition ex9 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#3=6=8#66444#3=6=8#66444#5;#3=6?8,20#$1+$2-60$3$4$5$6$7$22$32+$36-30$36$<$=$>$?$10$11$33$34#:$35#44#2;#2=#65#45$1;$1<$1=$1>$1?,,1;'&4&1$36#65#1##'&3#44$36#1#1'&4+$36-30#:##'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2=!$2-60,8$2>'$32##??'$35##1'$33#7???7?800040#7???????????'$34#7???7?800040#800000000000!$33#,1$36'$36##??,:0!"%pstring).
Definition s9 : sym_state := snd (snd ex9).

Definition arms10 := Eval vm_compute in (match SGP.branch_probe IT s9 with Some e => SGP.case_arms s9 e 0 | None => None end).
Definition f10 : sym_state := match arms10 with Some (Some s, _) => s | _ => s9 end.
Definition t10 : sym_state := match arms10 with Some (_, Some s) => s | _ => s9 end.

Definition ex11 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#3=6=8#66444#3=6=8#66444#5=#66444,20##3=6=8+$2-60$3$4$5$6$7$22$32$21#65$<$=$>$?$10$11$33$34#:##44#2;#2=#65#45$1;$1<$1=$1>$1?,,1<'&4&1$36#45#1#1#1'&4&1$36#65#1##'&3#44$36#1#1'&4+$36-30#:##'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2=!$2-60,8$2>'$32##??'$35##1'$33#7???7?800040#7???????????'$34#7???7?800040#800000000000!$33#,1$36'$36##??,:0!"%pstring).
Definition s11 : sym_state := snd (snd ex11).

Definition ex12 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#3=6=8#66444#3=6=8#66444#5;#3=708,20#$1+$2-60$3$4$5$6$7$22$32+$36-30$36$<$=$>$?$10$11$33$34#:$35#44#2;#2=#65#45$1;$1<$1=$1>$1?,,1<'&4&1$36#45#1##'&4&1$36#65#1##'&3#44$36#1#1'&4+$36-30#:##'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2=!$2-60,8$2>'$32##??'$35##1'$33#7???7?800040#7???????????'$34#7???7?800040#800000000000!$33#,1$36'$36##??,:0!"%pstring).
Definition s12 : sym_state := snd (snd ex12).

Definition arms13 := Eval vm_compute in (match SGP.branch_probe IT s12 with Some e => SGP.case_arms s12 e 0 | None => None end).
Definition f13 : sym_state := match arms13 with Some (Some s, _) => s | _ => s12 end.
Definition t13 : sym_state := match arms13 with Some (_, Some s) => s | _ => s12 end.

Definition ex14 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#3=6=8#66444#3=6=8#66444#5=#66444,20##3=6=8+$2-60$3$4$5$6$7$22$32$21#2>$<$=$>$?$10$11$33$34#:##44#2;#2=#65#45$1;$1<$1=$1>$1?,,1='&4&1$36$32#1#1#1'&4&1$36#45#1##'&4&1$36#65#1##'&3#44$36#1#1'&4+$36-30#:##'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2=!$2-60,8$2>'$32##??'$35##1'$33#7???7?800040#7???????????'$34#7???7?800040#800000000000!$33#,1$36'$36##??,:0!"%pstring).
Definition s14 : sym_state := snd (snd ex14).

Definition ex15 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#3=6=8#66444#3=6=8#66444#5=#3=6=8,20#$1+$2-60$3$4$5$6$7$22$32+$36-30$36$<$=$>$?$10$11$33$34#:$35#44#2;#2=#65#45$1;$1<$1=$1>$1?,,1='&4&1$36$32#1##'&4&1$36#45#1##'&4&1$36#65#1##'&3#44$36#1#1'&4+$36-30#:##'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2=!$2-60,8$2>'$32##??'$35##1'$33#7???7?800040#7???????????'$34#7???7?800040#800000000000!$33#,1$36'$36##??,:0!"%pstring).
Definition s15 : sym_state := snd (snd ex15).

Definition ex16 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#3=6=8#66444#3=6=8#66444#5;#3=6>8,20#$1+$2-60$3$4$5$6$7$22$32+$36-30$36$<$=$>$?$10$11$33$34#:$35#44#2;#2=#65#45$1;$1<$1=$1>$1?,,1:'&3#44$36##'&4+$36-30#:##'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2=!$2-60,8$2>'$32##??'$35##1'$33#7???7?800040#7???????????'$34#7???7?800040#800000000000!$33#,1$36'$36##??,:0!"%pstring).
Definition s16 : sym_state := snd (snd ex16).

Definition arms17 := Eval vm_compute in (match SGP.branch_probe IT s16 with Some e => SGP.case_arms s16 e 0 | None => None end).
Definition f17 : sym_state := match arms17 with Some (Some s, _) => s | _ => s16 end.
Definition t17 : sym_state := match arms17 with Some (_, Some s) => s | _ => s16 end.

Definition ex18 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#3=6=8#66444#3=6=8#66444#5=#66444,20##3=6=8+$2-60$3$4$5$6$7$22$32$21$36$<$=$>$?$10$11$33$34#:$35#44#2;#2=#65#45$1;$1<$1=$1>$1?,,1;'&4&1$36#2;#1#1#1'&3#44$36##'&4+$36-30#:##'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2=!$2-60,8$2>'$32##??'$35##1'$33#7???7?800040#7???????????'$34#7???7?800040#800000000000!$33#,1$36'$36##??,:0!"%pstring).
Definition s18 : sym_state := snd (snd ex18).

Definition ex19 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#3=6=8#66444#3=6=8#66444#5;#3=6><,20#$1+$2-60$3$4$5$6$7$22$32+$36-30$36$<$=$>$?$10$11$33$34#:$35#44#2;#2=#65#45$1;$1<$1=$1>$1?,,1;'&4&1$36#2;#1##'&3#44$36##'&4+$36-30#:##'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2=!$2-60,8$2>'$32##??'$35##1'$33#7???7?800040#7???????????'$34#7???7?800040#800000000000!$33#,1$36'$36##??,:0!"%pstring).
Definition s19 : sym_state := snd (snd ex19).

Definition arms20 := Eval vm_compute in (match SGP.branch_probe IT s19 with Some e => SGP.case_arms s19 e 0 | None => None end).
Definition f20 : sym_state := match arms20 with Some (Some s, _) => s | _ => s19 end.
Definition t20 : sym_state := match arms20 with Some (_, Some s) => s | _ => s19 end.

Definition ex21 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#3=6=8#66444#3=6=8#66444#5=#66444,20##3=6=8+$2-60$3$4$5$6$7$22$32$21$36$<$=$>$?$10$11$33$34#:$35#44#2;#2=#65#45$1;$1<$1=$1>$1?,,1<'&4&1$36#2=#1#1#1'&4&1$36#2;#1##'&3#44$36##'&4+$36-30#:##'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2=!$2-60,8$2>'$32##??'$35##1'$33#7???7?800040#7???????????'$34#7???7?800040#800000000000!$33#,1$36'$36##??,:0!"%pstring).
Definition s21 : sym_state := snd (snd ex21).

Definition ex22 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#3=6=8#66444#3=6=8#66444#5;#3=708,20#$1+$2-60$3$4$5$6$7$22$32+$36-30$36$<$=$>$?$10$11$33$34#:$35#44#2;#2=#65#45$1;$1<$1=$1>$1?,,1<'&4&1$36#2=#1##'&4&1$36#2;#1##'&3#44$36##'&4+$36-30#:##'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2=!$2-60,8$2>'$32##??'$35##1'$33#7???7?800040#7???????????'$34#7???7?800040#800000000000!$33#,1$36'$36##??,:0!"%pstring).
Definition s22 : sym_state := snd (snd ex22).

Definition arms23 := Eval vm_compute in (match SGP.branch_probe IT s22 with Some e => SGP.case_arms s22 e 0 | None => None end).
Definition f23 : sym_state := match arms23 with Some (Some s, _) => s | _ => s22 end.
Definition t23 : sym_state := match arms23 with Some (_, Some s) => s | _ => s22 end.

Definition ex24 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#3=6=8#66444#3=6=8#66444#5=#66444,20##3=6=8+$2-60$3$4$5$6$7$22$32$21#2>$<$=$>$?$10$11$33$34#:##44#2;#2=#65#45$1;$1<$1=$1>$1?,,1='&4&1$36$32#1#1#1'&4&1$36#2=#1##'&4&1$36#2;#1##'&3#44$36##'&4+$36-30#:##'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2=!$2-60,8$2>'$32##??'$35##1'$33#7???7?800040#7???????????'$34#7???7?800040#800000000000!$33#,1$36'$36##??,:0!"%pstring).
Definition s24 : sym_state := snd (snd ex24).

Definition ex25 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,4#3=6=8#66444#3=6=8#66444#5=#3=6=8,20#$1+$2-60$3$4$5$6$7$22$32+$36-30$36$<$=$>$?$10$11$33$34#:$35#44#2;#2=#65#45$1;$1<$1=$1>$1?,,1='&4&1$36$32#1##'&4&1$36#2=#1##'&4&1$36#2;#1##'&3#44$36##'&4+$36-30#:##'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2=!$2-60,8$2>'$32##??'$35##1'$33#7???7?800040#7???????????'$34#7???7?800040#800000000000!$33#,1$36'$36##??,:0!"%pstring).
Definition s25 : sym_state := snd (snd ex25).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PBranch (SGA.mkplan (fst ex3) (SGP.PEnd 0)) (SGA.mkplan (fst ex4) (SGP.PBranch (SGA.mkplan (fst ex6) (SGP.PBranch (SGA.mkplan (fst ex8) (SGP.PEnd 1)) (SGA.mkplan (fst ex9) (SGP.PBranch (SGA.mkplan (fst ex11) (SGP.PEnd 2)) (SGA.mkplan (fst ex12) (SGP.PBranch (SGA.mkplan (fst ex14) (SGP.PEnd 3)) (SGA.mkplan (fst ex15) (SGP.PEnd 4)))))))) (SGA.mkplan (fst ex16) (SGP.PBranch (SGA.mkplan (fst ex18) (SGP.PEnd 5)) (SGA.mkplan (fst ex19) (SGP.PBranch (SGA.mkplan (fst ex21) (SGP.PEnd 6)) (SGA.mkplan (fst ex22) (SGP.PBranch (SGA.mkplan (fst ex24) (SGP.PEnd 7)) (SGA.mkplan (fst ex25) (SGP.PEnd 8))))))))))).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s3).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s3).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s3 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s3 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s3).
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition regs_out1 : list expr := Eval vm_compute in (s_regs s8).
Definition exit_sp_off1 : Z := Eval vm_compute in (spoff_of s8).
Definition cells1 : list kentry := Eval vm_compute in (cells_of s8 exit_sp_off1).
Definition nfresh1 : nat := Eval vm_compute in (s_next s8 - NX0)%nat.
Definition exit_pc1 : Z := Eval vm_compute in (s_pc s8).
Definition ps1 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out1 (ELit 0))) (seq 1 31)) F0L cells1.

Definition regs_out2 : list expr := Eval vm_compute in (s_regs s11).
Definition exit_sp_off2 : Z := Eval vm_compute in (spoff_of s11).
Definition cells2 : list kentry := Eval vm_compute in (cells_of s11 exit_sp_off2).
Definition nfresh2 : nat := Eval vm_compute in (s_next s11 - NX0)%nat.
Definition exit_pc2 : Z := Eval vm_compute in (s_pc s11).
Definition ps2 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out2 (ELit 0))) (seq 1 31)) F0L cells2.

Definition regs_out3 : list expr := Eval vm_compute in (s_regs s14).
Definition exit_sp_off3 : Z := Eval vm_compute in (spoff_of s14).
Definition cells3 : list kentry := Eval vm_compute in (cells_of s14 exit_sp_off3).
Definition nfresh3 : nat := Eval vm_compute in (s_next s14 - NX0)%nat.
Definition exit_pc3 : Z := Eval vm_compute in (s_pc s14).
Definition ps3 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out3 (ELit 0))) (seq 1 31)) F0L cells3.

Definition regs_out4 : list expr := Eval vm_compute in (s_regs s15).
Definition exit_sp_off4 : Z := Eval vm_compute in (spoff_of s15).
Definition cells4 : list kentry := Eval vm_compute in (cells_of s15 exit_sp_off4).
Definition nfresh4 : nat := Eval vm_compute in (s_next s15 - NX0)%nat.
Definition exit_pc4 : Z := Eval vm_compute in (s_pc s15).
Definition ps4 : SR.post_spec := SR.PS 251608 (map (fun i => (i, nth i regs_out4 (ELit 0))) (seq 1 31)) F0L cells4.

Definition regs_out5 : list expr := Eval vm_compute in (s_regs s18).
Definition exit_sp_off5 : Z := Eval vm_compute in (spoff_of s18).
Definition cells5 : list kentry := Eval vm_compute in (cells_of s18 exit_sp_off5).
Definition nfresh5 : nat := Eval vm_compute in (s_next s18 - NX0)%nat.
Definition exit_pc5 : Z := Eval vm_compute in (s_pc s18).
Definition ps5 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out5 (ELit 0))) (seq 1 31)) F0L cells5.

Definition regs_out6 : list expr := Eval vm_compute in (s_regs s21).
Definition exit_sp_off6 : Z := Eval vm_compute in (spoff_of s21).
Definition cells6 : list kentry := Eval vm_compute in (cells_of s21 exit_sp_off6).
Definition nfresh6 : nat := Eval vm_compute in (s_next s21 - NX0)%nat.
Definition exit_pc6 : Z := Eval vm_compute in (s_pc s21).
Definition ps6 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out6 (ELit 0))) (seq 1 31)) F0L cells6.

Definition regs_out7 : list expr := Eval vm_compute in (s_regs s24).
Definition exit_sp_off7 : Z := Eval vm_compute in (spoff_of s24).
Definition cells7 : list kentry := Eval vm_compute in (cells_of s24 exit_sp_off7).
Definition nfresh7 : nat := Eval vm_compute in (s_next s24 - NX0)%nat.
Definition exit_pc7 : Z := Eval vm_compute in (s_pc s24).
Definition ps7 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out7 (ELit 0))) (seq 1 31)) F0L cells7.

Definition regs_out8 : list expr := Eval vm_compute in (s_regs s25).
Definition exit_sp_off8 : Z := Eval vm_compute in (spoff_of s25).
Definition cells8 : list kentry := Eval vm_compute in (cells_of s25 exit_sp_off8).
Definition nfresh8 : nat := Eval vm_compute in (s_next s25 - NX0)%nat.
Definition exit_pc8 : Z := Eval vm_compute in (s_pc s25).
Definition ps8 : SR.post_spec := SR.PS 251608 (map (fun i => (i, nth i regs_out8 (ELit 0))) (seq 1 31)) F0L cells8.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0; ps1; ps2; ps3; ps4; ps5; ps6; ps7; ps8] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_50f367.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 251588 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_50f367.IT BndT_Ns_000.SegItab_Ns_50f367.IT_sound BF NX0 BR XSTEP F0 PSS plan 251588 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_dbL.

Module LibSegNs_vd_dbN.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_50f367.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_50f367.IT.
Definition ENDS : list Z := [251588; 251808; 418884].
Definition STOPS1 : list Z := [251588; 251808; 418884] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$32$:$;$<$=$>$?$10$11$33$34#:$35#44#2;#2=#65#45$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",16'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2=!$2-60,8$2>'$32##??'$35##1'$33#7???7?800040#7???????????'$34#7???7?800040#800000000000"%pstring).
Definition ss0 : sym_state := SS 251608 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,6#3=6<4#3=7:0#66444#3=6<4#3=7:0#66444#5;#3=6=<,20#$1+$2-60$3$4$5$6$7$22$32$:$;$<$=$>$?$10$11+$33#1$34#:$35#44#2;#2=#65#45$1;$1<$1=$1>$1?,,16'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2=!$2-60,8$2>'$32##??'$35##1'$33#7???7?800040#7???????????'$34#7???7?800040#800000000000,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition arms2 := Eval vm_compute in (match SGP.branch_probe IT s1 with Some e => SGP.case_arms s1 e 0 | None => None end).
Definition f2 : sym_state := match arms2 with Some (Some s, _) => s | _ => s1 end.
Definition t2 : sym_state := match arms2 with Some (_, Some s) => s | _ => s1 end.

Definition ex3 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,6#3=6<4#3=7:0#66444#3=6<4#3=7:0#66444#5=#3=6<4,20#$1+$2-60$3$4$5$6$7$22$32$:$;$<$=$>$?$10$11+$33#1$34#:$35#44#2;#2=#65#45$1;$1<$1=$1>$1?,,17'&4+$33#1$34#1#1'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2=!$2-60,8$2>'$32##??'$35##1'$33#7???7?800040#7???????????'$34#7???7?800040#800000000000,:0!"%pstring).
Definition s3 : sym_state := snd (snd ex3).

Definition ex4 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,6#3=6<4#3=7:0#66444#3=6<4#3=7:0#66444#5;#3=71<,20#$1+$2-60$3$4$5$6$7$22$32$35$;$<$=$>$?$10$11+$33#1$34#:$35#44#2;#2=#65#45$1;$1<$1=$1>$1?,,17'&4+$33#1$34##'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2=!$2-60,8$2>'$32##??'$35##1'$33#7???7?800040#7???????????'$34#7???7?800040#800000000000,:0!"%pstring).
Definition s4 : sym_state := snd (snd ex4).

Definition arms5 := Eval vm_compute in (match SGP.branch_probe IT s4 with Some e => SGP.case_arms s4 e 0 | None => None end).
Definition f5 : sym_state := match arms5 with Some (Some s, _) => s | _ => s4 end.
Definition t5 : sym_state := match arms5 with Some (_, Some s) => s | _ => s4 end.

Definition ex6 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,6#3=6<4#3=7:0#66444#3=6<4#3=7:0#66444#5=#3=7:0,20#$23$2$3$4$5$6$7$24$25$35$;$<$=$>$?$10$11$26$27$28$29$2:$2;$2<$2=$2>$1;$1<$1=$1>$1?,,18'&4&1$35##1#1#1'&4+$33#1$34##'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2=!$2-60,8$2>'$32##??'$35##1'$33#7???7?800040#7???????????'$34#7???7?800040#800000000000,:0!"%pstring).
Definition s6 : sym_state := snd (snd ex6).

Definition ex7 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,6#3=6<4#3=7:0#66444#3=6<4#3=7:0#66444#5=#66444,20##3=72<+$2-60$3$4$5$6$7$22$32$21#2>$<$=$>$?$10$11+$33#1$34#:$35#44#2;#2=#65#45$1;$1<$1=$1>$1?,,18'&4&1$35##1##'&4+$33#1$34##'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2=!$2-60,8$2>'$32##??'$35##1'$33#7???7?800040#7???????????'$34#7???7?800040#800000000000,:0!"%pstring).
Definition s7 : sym_state := snd (snd ex7).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PBranch (SGA.mkplan (fst ex3) (SGP.PEnd 0)) (SGA.mkplan (fst ex4) (SGP.PBranch (SGA.mkplan (fst ex6) (SGP.PEnd 1)) (SGA.mkplan (fst ex7) (SGP.PEnd 2))))).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s3).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s3).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s3 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s3 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s3).
Definition ps0 : SR.post_spec := SR.PS 251588 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition regs_out1 : list expr := Eval vm_compute in (s_regs s6).
Definition exit_sp_off1 : Z := Eval vm_compute in (spoff_of s6).
Definition cells1 : list kentry := Eval vm_compute in (cells_of s6 exit_sp_off1).
Definition nfresh1 : nat := Eval vm_compute in (s_next s6 - NX0)%nat.
Definition exit_pc1 : Z := Eval vm_compute in (s_pc s6).
Definition ps1 : SR.post_spec := SR.PS 251808 (map (fun i => (i, nth i regs_out1 (ELit 0))) (seq 1 31)) F0L cells1.

Definition regs_out2 : list expr := Eval vm_compute in (s_regs s7).
Definition exit_sp_off2 : Z := Eval vm_compute in (spoff_of s7).
Definition cells2 : list kentry := Eval vm_compute in (cells_of s7 exit_sp_off2).
Definition nfresh2 : nat := Eval vm_compute in (s_next s7 - NX0)%nat.
Definition exit_pc2 : Z := Eval vm_compute in (s_pc s7).
Definition ps2 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out2 (ELit 0))) (seq 1 31)) F0L cells2.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0; ps1; ps2] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_50f367.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 251608 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_50f367.IT BndT_Ns_000.SegItab_Ns_50f367.IT_sound BF NX0 BR XSTEP F0 PSS plan 251608 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_dbN.

Module LibSegNs_vd_dbZ.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_50f367.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_50f367.IT.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-60$3$4$5$6$7$22$32$:$;$<$=$>$?$10$11$33$34#:$35#44#2;#2=#65#45$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",16'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2=!$2-60,8$2>'$32##??'$35##1'$33#7???7?800040#800000000000'$34#7???7?800040#800000000000"%pstring).
Definition ss0 : sym_state := SS 251692 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20#$23$2$3$4$5$6$7$24$25$21#30$<$=$>$?$10$11$26$27$28$29$2:$2;$2<$2=$2>$1;$1<$1=$1>$1?,,16'$2#7???7?800080#800000000000&$2#10($2-60#60'$22#7???7?800000#7??????????8)$2-60#60$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28!$2-38,8$29!$2-40,8$2:!$2-48,8$2;!$2-50,8$2<!$2-58,8$2=!$2-60,8$2>'$32##??'$35##1'$33#7???7?800040#800000000000'$34#7???7?800040#800000000000,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_50f367.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 251692 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_50f367.IT BndT_Ns_000.SegItab_Ns_50f367.IT_sound BF NX0 BR XSTEP F0 PSS plan 251692 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_dbZ.

Module LibSegNs_vd_dsA.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_3f749a.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_3f749a.IT.
Definition ENDS : list Z := [756768].
Definition STOPS1 : list Z := [756768] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 50; EVar 51; EVar 52; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483200 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-80)) (ELit 80);
   KRange (EVar 50) 140735332483136 140737488355326;
   KRange (EVar 51) 1 26].
Definition ss0 : sym_state := SS 255472 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;8<20#;8<20#5=#;8<20,20##3>628+$2-50$3$4$5$6$7$34$32$32+$2-38$34$=$>$?$10$11$12$33+$32$33$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,<!$2-38,8#!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800080#800000000000&$2#10($2-50#50'$32#7???7?800040#7??????????>'$33#1#1:,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 756768 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_3f749a.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 255472 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_3f749a.IT BndT_Ns_000.SegItab_Ns_3f749a.IT_sound BF NX0 BR XSTEP F0 PSS plan 255472 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_dsA.

Module LibSegNs_vd_dsB.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_3f749a.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_3f749a.IT.
Definition ENDS : list Z := [255532].
Definition STOPS1 : list Z := [255532] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483200 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-80)) (ELit 80);
   KWord (SA (EVar 2) (-56)) 8 (EVar 60)].
Definition ss0 : sym_state := SS 255528 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3>62<#3>62<#5=#3>62<,20#$1+$2-50$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$3<$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,4'$2#7???7?800080#800000000000&$2#10($2-50#50!$2-38,8$3<,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 255532 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_3f749a.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 255528 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_3f749a.IT BndT_Ns_000.SegItab_Ns_3f749a.IT_sound BF NX0 BR XSTEP F0 PSS plan 255528 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_dsB.

End BndP_Ns_088.
Module BndP_Ns_089.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Plain.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Ns_000 BndT_Ns_002.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Ns_089 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC6ARocqVerifyHarnessATaskSpecification8ProblemsWSrc_jsoncons_fuzz_msgpack_encoder_repro1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Ns_000ASegItab_Ns_3f749a2ITC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_dsD2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_dsD3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_dsD2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_dsD5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_dsD2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_dsD3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_dsD4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_dsD5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_dsD3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Ns_002ASegItab_Ns_e3b9df2ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feA2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feA3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feA2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feA5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feA2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feA3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feA4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feA5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feA3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089@LibSegNs_vd_feBn2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089@LibSegNs_vd_feBn3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089@LibSegNs_vd_feBn2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089@LibSegNs_vd_feBn5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089@LibSegNs_vd_feBn2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089@LibSegNs_vd_feBn3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089@LibSegNs_vd_feBn4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089@LibSegNs_vd_feBn5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089@LibSegNs_vd_feBn3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089@LibSegNs_vd_feBp2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089@LibSegNs_vd_feBp3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089@LibSegNs_vd_feBp2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089@LibSegNs_vd_feBp5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089@LibSegNs_vd_feBp2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089@LibSegNs_vd_feBp3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089@LibSegNs_vd_feBp4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089@LibSegNs_vd_feBp5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089@LibSegNs_vd_feBp3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCn12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCn13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCn12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCn15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCn12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCn13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCn14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCn15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCn13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCn22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCn23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCn22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCn25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCn22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCn23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCn24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCn25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCn23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCn32BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCn33NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCn32BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCn35XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCn32F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCn33PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCn34planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCn35regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCn33kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCp12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCp13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCp12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCp15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCp12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCp13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCp14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCp15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCp13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCp22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCp23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCp22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCp25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCp22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCp23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCp24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCp25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCp23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCp32BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCp33NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCp32BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCp35XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCp32F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCp33PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCp34planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCp35regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089ALibSegNs_vd_feCp33kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feD2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feD3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feD2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feD5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feD2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feD3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feD4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feD5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feD3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feE2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feE3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feE2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feE5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feE2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feE3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feE4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feE5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feE3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feF2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feF3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feF2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feF5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feF2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feF3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feF4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feF5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_feF3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Ns_002ASegItab_Ns_c879a82ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_gfA2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_gfA3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_gfA2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_gfA5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_gfA2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_gfA3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_gfA4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_gfA5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_089?LibSegNs_vd_gfA3kn0".

Module LibSegNs_vd_dsD.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_3f749a.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_3f749a.IT.
Definition ENDS : list Z := [255592].
Definition STOPS1 : list Z := [255592] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-50$3$4$5$6$7$8$9$3=$;$<$=$>$?$10$11$3<$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$2#7???7?800080#800000000000&$2#10($2-50#50!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28'$3=##3??"%pstring).
Definition ss0 : sym_state := SS 255544 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3>668#3>668#5=#3>668,20#$23$2$3$4$5$6$7$24$25$3<&9+&4&9$3=#81#1-1#22$<$=$>$?$10$11$26$27$28$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,:'$2#7???7?800080#800000000000&$2#10($2-50#50!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27!$2-30,8$28'$3=##3??,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 255592 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_3f749a.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 255544 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_3f749a.IT BndT_Ns_000.SegItab_Ns_3f749a.IT_sound BF NX0 BR XSTEP F0 PSS plan 255544 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_dsD.

Module LibSegNs_vd_feA.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_e3b9df.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_e3b9df.IT.
Definition ENDS : list Z := [254788].
Definition STOPS1 : list Z := [254788] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483136 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-32)) (ELit 32);
   KRange (EVar 11) 140735332483072 140737488355320;
   KDisj (SA (EVar 2) (-32)) (ELit 32) (SA (EVar 11) 0) (ELit 8);
   KWord (SA (EVar 11) 0) 8 (EVar 33)].
Definition ss0 : sym_state := SS 254756 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3>344#3>344#5=#3>344,20#$1+$2-20$3$4$5$6$7$;$:$:$;$21$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,:!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800040#800000000000&$2#10($2-20#20'$;#7???7?800000#7??????????8)$2-20#20$;##8!$;#,8$21,30!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 254788 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_e3b9df.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 254756 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_e3b9df.IT BndT_Ns_002.SegItab_Ns_e3b9df.IT_sound BF NX0 BR XSTEP F0 PSS plan 254756 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_feA.

Module LibSegNs_vd_feBn.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_e3b9df.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_e3b9df.IT.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-20$3$4$5$6$7$22$28$28$22$21$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$2#7???7?800040#800000000000&$2#10($2-20#20'$22#7???7?800000#7??????????8)$2-20#20$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26'$28^#?#????????????<19^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 254788 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3>364+$2-20$3$4$5$6$7$22$28$21#2=$21$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;'$2#7???7?800040#800000000000&$2#10($2-20#20'$22#7???7?800000#7??????????8)$2-20#20$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26'$28^#?#????????????<19^#?#???????????????,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_e3b9df.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 254788 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_e3b9df.IT BndT_Ns_002.SegItab_Ns_e3b9df.IT_sound BF NX0 BR XSTEP F0 PSS plan 254788 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_feBn.

Module LibSegNs_vd_feBp.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_e3b9df.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_e3b9df.IT.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-20$3$4$5$6$7$22$28$28$22$21$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$2#7???7?800040#800000000000&$2#10($2-20#20'$22#7???7?800000#7??????????8)$2-20#20$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26'$28##3>7"%pstring).
Definition ss0 : sym_state := SS 254788 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3>354+$2-20$3$4$5$6$7$22$28$21#2;$21$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;'$2#7???7?800040#800000000000&$2#10($2-20#20'$22#7???7?800000#7??????????8)$2-20#20$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26'$28##3>7,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_e3b9df.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 254788 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_e3b9df.IT BndT_Ns_002.SegItab_Ns_e3b9df.IT_sound BF NX0 BR XSTEP F0 PSS plan 254788 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_feBp.

Module LibSegNs_vd_feCn1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_e3b9df.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_e3b9df.IT.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-20$3$4$5$6$7$22$28$:$;$<$=$>$?$10$11$29$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$2#7???7?800040#800000000000&$2#10($2-20#20'$22#7???7?800000#7??????????8)$2-20#20$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26'$28^#?#??????????????7^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 254820 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3>37<+$2-20$3$4$5$6$7$22@-1$28$21#30$<$=$>$?$10$11$29$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;'$2#7???7?800040#800000000000&$2#10($2-20#20'$22#7???7?800000#7??????????8)$2-20#20$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26'$28^#?#??????????????7^#?#???????????????,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_e3b9df.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 254820 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_e3b9df.IT BndT_Ns_002.SegItab_Ns_e3b9df.IT_sound BF NX0 BR XSTEP F0 PSS plan 254820 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_feCn1.

Module LibSegNs_vd_feCn2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_e3b9df.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_e3b9df.IT.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-20$3$4$5$6$7$22$28$:$;$<$=$>$?$10$11$29$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$2#7???7?800040#800000000000&$2#10($2-20#20'$22#7???7?800000#7??????????8)$2-20#20$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26'$28^#?#?????????????9=^#?#??????????????6"%pstring).
Definition ss0 : sym_state := SS 254820 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3>3?8+$2-20$3$4$5$6$7$22@-1$28$21+&6@-<=$28#;#30#<=$=$>$?$10$11&6@-<=$28#;$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;'$2#7???7?800040#800000000000&$2#10($2-20#20'$22#7???7?800000#7??????????8)$2-20#20$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26'$28^#?#?????????????9=^#?#??????????????6,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_e3b9df.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 254820 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_e3b9df.IT BndT_Ns_002.SegItab_Ns_e3b9df.IT_sound BF NX0 BR XSTEP F0 PSS plan 254820 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_feCn2.

Module LibSegNs_vd_feCn3.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_e3b9df.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_e3b9df.IT.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-20$3$4$5$6$7$22$28$:$;$<$=$>$?$10$11$29$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$2#7???7?800040#800000000000&$2#10($2-20#20'$22#7???7?800000#7??????????8)$2-20#20$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26'$28^#?#????????????<19^#?#?????????????9<"%pstring).
Definition ss0 : sym_state := SS 254820 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3>3=0+$2-20$3$4$5$6$7$22@-1$28$21+&6@#147;&6@-1000000000000$28#32#11#30$<$=$>$?$10$11&6@#147;&6@-1000000000000$28#32#11$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;'$2#7???7?800040#800000000000&$2#10($2-20#20'$22#7???7?800000#7??????????8)$2-20#20$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26'$28^#?#????????????<19^#?#?????????????9<,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_e3b9df.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 254820 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_e3b9df.IT BndT_Ns_002.SegItab_Ns_e3b9df.IT_sound BF NX0 BR XSTEP F0 PSS plan 254820 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_feCn3.

Module LibSegNs_vd_feCp1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_e3b9df.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_e3b9df.IT.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-20$3$4$5$6$7$22$28$:$;$<$=$>$?$10$11$29$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$2#7???7?800040#800000000000&$2#10($2-20#20'$22#7???7?800000#7??????????8)$2-20#20$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26'$28##9"%pstring).
Definition ss0 : sym_state := SS 254804 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3>37<+$2-20$3$4$5$6$7$22$28$21#30$<$=$>$?$10$11$29$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;'$2#7???7?800040#800000000000&$2#10($2-20#20'$22#7???7?800000#7??????????8)$2-20#20$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26'$28##9,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_e3b9df.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 254804 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_e3b9df.IT BndT_Ns_002.SegItab_Ns_e3b9df.IT_sound BF NX0 BR XSTEP F0 PSS plan 254804 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_feCp1.

Module LibSegNs_vd_feCp2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_e3b9df.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_e3b9df.IT.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-20$3$4$5$6$7$22$28$:$;$<$=$>$?$10$11$29$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$2#7???7?800040#800000000000&$2#10($2-20#20'$22#7???7?800000#7??????????8)$2-20#20$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26'$28#:#63"%pstring).
Definition ss0 : sym_state := SS 254804 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3>3?8+$2-20$3$4$5$6$7$22$28$21+&6@#<=$28#;#30#<=$=$>$?$10$11&6@#<=$28#;$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;'$2#7???7?800040#800000000000&$2#10($2-20#20'$22#7???7?800000#7??????????8)$2-20#20$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26'$28#:#63,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_e3b9df.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 254804 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_e3b9df.IT BndT_Ns_002.SegItab_Ns_e3b9df.IT_sound BF NX0 BR XSTEP F0 PSS plan 254804 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_feCp2.

Module LibSegNs_vd_feCp3.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_e3b9df.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_e3b9df.IT.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-20$3$4$5$6$7$22$28$:$;$<$=$>$?$10$11$29$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$2#7???7?800040#800000000000&$2#10($2-20#20'$22#7???7?800000#7??????????8)$2-20#20$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26'$28#64#3>7"%pstring).
Definition ss0 : sym_state := SS 254804 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3>3=0+$2-20$3$4$5$6$7$22$28$21+&6@#147;&6@#1000000000000$28#32#11#30$<$=$>$?$10$11&6@#147;&6@#1000000000000$28#32#11$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;'$2#7???7?800040#800000000000&$2#10($2-20#20'$22#7???7?800000#7??????????8)$2-20#20$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26'$28#64#3>7,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_e3b9df.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 254804 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_e3b9df.IT BndT_Ns_002.SegItab_Ns_e3b9df.IT_sound BF NX0 BR XSTEP F0 PSS plan 254804 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_feCp3.

Module LibSegNs_vd_feD.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_e3b9df.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_e3b9df.IT.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-20$3$4$5$6$7$22$28$:$;$<$=$>$?$10$11$29$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$2#7???7?800040#800000000000&$2#10($2-20#20'$22#7???7?800000#7??????????8)$2-20#20$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26'$28##9"%pstring).
Definition ss0 : sym_state := SS 254844 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20#$23$2$3$4$5$6$7$24$25$21+$28#30$<$=$>$?$10$11$26$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;'$2#7???7?800040#800000000000&$2#10($2-20#20'$22#7???7?800000#7??????????8)$2-20#20$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26'$28##9,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_e3b9df.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 254844 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_e3b9df.IT BndT_Ns_002.SegItab_Ns_e3b9df.IT_sound BF NX0 BR XSTEP F0 PSS plan 254844 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_feD.

Module LibSegNs_vd_feE.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_e3b9df.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_e3b9df.IT.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-20$3$4$5$6$7$22$28$:$;$<$=$>$?$10$11$29$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",<'$2#7???7?800040#800000000000&$2#10($2-20#20'$22#7???7?800000#7??????????8)$2-20#20$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26'$28#64#3>7'$29#1#9"%pstring).
Definition ss0 : sym_state := SS 254928 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3>3?8+$2-20$3$4$5$6$7$22+$28@-64$29$21+&9&6@#<=&9+$28@-64$29#??#;-31#30&9+$28@-64$29#??$=$>$?$10$11&6@#<=&9+$28@-64$29#??#;$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,<'$2#7???7?800040#800000000000&$2#10($2-20#20'$22#7???7?800000#7??????????8)$2-20#20$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26'$28#64#3>7'$29#1#9,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_e3b9df.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 254928 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_e3b9df.IT BndT_Ns_002.SegItab_Ns_e3b9df.IT_sound BF NX0 BR XSTEP F0 PSS plan 254928 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_feE.

Module LibSegNs_vd_feF.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_e3b9df.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_e3b9df.IT.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-20$3$4$5$6$7$22$28$:$;$<$=$>$?$10$11$29$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",<'$2#7???7?800040#800000000000&$2#10($2-20#20'$22#7???7?800000#7??????????8)$2-20#20$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26'$28##63'$29##9"%pstring).
Definition ss0 : sym_state := SS 254968 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20#$23$2$3$4$5$6$7$24$25$21&9+&9+$28@-:$29-31#30#??$<$=$>$?$10$11$26$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,<'$2#7???7?800040#800000000000&$2#10($2-20#20'$22#7???7?800000#7??????????8)$2-20#20$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26'$28##63'$29##9,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_e3b9df.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 254968 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_e3b9df.IT BndT_Ns_002.SegItab_Ns_e3b9df.IT_sound BF NX0 BR XSTEP F0 PSS plan 254968 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_feF.

Module LibSegNs_vd_gfA.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_c879a8.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_c879a8.IT.
Definition ENDS : list Z := [256012].
Definition STOPS1 : list Z := [256012] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 50; EVar 34; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483200 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-160)) (ELit 160);
   KRange (EVar 50) 0 255].
Definition ss0 : sym_state := SS 255988 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3>80<#3>80<#5=#3>80<,20#$1+$2-:0$3$4$5$6$7$8$9$32$22$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,9!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800080#800000000000&$2#10($2-:0#:0'$32##??,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 256012 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_c879a8.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 255988 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_c879a8.IT BndT_Ns_002.SegItab_Ns_c879a8.IT_sound BF NX0 BR XSTEP F0 PSS plan 255988 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_gfA.

End BndP_Ns_089.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Ns_002 BndT_Ns_000.
Module BndP_Ns_090.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Plain.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Ns_002 BndT_Ns_000.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Ns_090 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC6ARocqVerifyHarnessATaskSpecification8ProblemsWSrc_jsoncons_fuzz_msgpack_encoder_repro1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Ns_002ASegItab_Ns_c879a82ITC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfA22BFC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfA23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfA22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfA25XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfA22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfA23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfA24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfA25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfA23kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfE02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfE03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfE02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfE05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfE02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfE03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfE04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfE05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfE03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS32BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS33NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS32BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS35XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS32F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS33PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS34planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS35regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS33kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS42BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS43NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS42BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS45XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS42F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS43PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS44planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS45regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfS43kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfT02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfT03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfT02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfT05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfT02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfT03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfT04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfT05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfT03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090ALibSegNs_vd_gfT342BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090ALibSegNs_vd_gfT343NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090ALibSegNs_vd_gfT342BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090ALibSegNs_vd_gfT345XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090ALibSegNs_vd_gfT342F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090ALibSegNs_vd_gfT343PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090ALibSegNs_vd_gfT344planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090ALibSegNs_vd_gfT345regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090ALibSegNs_vd_gfT343kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090?LibSegNs_vd_gfU2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090?LibSegNs_vd_gfU3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090?LibSegNs_vd_gfU2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090?LibSegNs_vd_gfU5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090?LibSegNs_vd_gfU2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090?LibSegNs_vd_gfU3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090?LibSegNs_vd_gfU4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090?LibSegNs_vd_gfU5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090?LibSegNs_vd_gfU3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ32BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ33NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ32BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ35XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ32F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ33PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ34planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ35regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ33kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ42BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ43NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ42BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ45XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ42F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ43PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ44planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ45regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090@LibSegNs_vd_gfZ43kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Ns_000ASegItab_Ns_0d47412ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090?LibSegNs_vd_opA2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090?LibSegNs_vd_opA3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090?LibSegNs_vd_opA2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090?LibSegNs_vd_opA5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090?LibSegNs_vd_opA2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090?LibSegNs_vd_opA3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090?LibSegNs_vd_opA4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090?LibSegNs_vd_opA5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_090?LibSegNs_vd_opA3kn0".

Module LibSegNs_vd_gfA2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_c879a8.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_c879a8.IT.
Definition ENDS : list Z := [256020].
Definition STOPS1 : list Z := [256020] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$8$9$:$22$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483200 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-160)) (ELit 160)].
Definition ss0 : sym_state := SS 256016 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3>814#3>814#5=#3>814,20#$1+$2-:0$3$4$5$6$7$22$9$:$22$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800080#800000000000&$2#10($2-:0#:0,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 256020 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_c879a8.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 256016 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_c879a8.IT BndT_Ns_002.SegItab_Ns_c879a8.IT_sound BF NX0 BR XSTEP F0 PSS plan 256016 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_gfA2.

Module LibSegNs_vd_gfE0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_c879a8.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_c879a8.IT.
Definition ENDS : list Z := [256180].
Definition STOPS1 : list Z := [256180] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$22$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$2#7???7?800080#800000000000&$2#10($2-:0#:0'$22#7???7?800000#7??????????8)$2-:0#:0$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27"%pstring).
Definition ss0 : sym_state := SS 256260 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3>8;4#3>8;4#5=#3>8;4,20#$23+$2-:0$3$4$5$6$7$24$25#1$;$<$=$>$?$10$11$26$27$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;'$2#7???7?800080#800000000000&$2#10($2-:0#:0'$22#7???7?800000#7??????????8)$2-:0#:0$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 256180 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_c879a8.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 256260 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_c879a8.IT BndT_Ns_002.SegItab_Ns_c879a8.IT_sound BF NX0 BR XSTEP F0 PSS plan 256260 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_gfE0.

Module LibSegNs_vd_gfS1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_c879a8.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_c879a8.IT.
Definition ENDS : list Z := [716248].
Definition STOPS1 : list Z := [716248] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$22$32$:$;$<$=$>$?$10$11$33$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$2#7???7?800080#800000000000&$2#10($2-:0#:0'$22#7???7?800000#7??????????8)$2-:0#:0$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27"%pstring).
Definition ss0 : sym_state := SS 256088 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#:>==8#:>==8#5=#:>==8,20##3>874+$2-:0$3$4$5$6$7$22$32+$2-94#64#12<0;#?$33$?$10$11$33$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;'$2#7???7?800080#800000000000&$2#10($2-:0#:0'$22#7???7?800000#7??????????8)$2-:0#:0$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 716248 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_c879a8.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 256088 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_c879a8.IT BndT_Ns_002.SegItab_Ns_c879a8.IT_sound BF NX0 BR XSTEP F0 PSS plan 256088 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_gfS1.

Module LibSegNs_vd_gfS2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_c879a8.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_c879a8.IT.
Definition ENDS : list Z := [255472].
Definition STOPS1 : list Z := [255472] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$22$32$34$;$<$=$>$?$10$11$33$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",<'$2#7???7?800080#800000000000&$2#10($2-:0#:0'$22#7???7?800000#7??????????8)$2-:0#:0$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27'$34#1#1:"%pstring).
Definition ss0 : sym_state := SS 256116 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-160), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-160), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3>5?0#3>5?0#5=#3>5?0,20##3>890+$2-:0$3$4$5$6$7$22$32+$2-94$34+$2-:0$=$>$?$10$11$33$34$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,=!$2-:0,8#'$2#7???7?800080#800000000000&$2#10($2-:0#:0'$22#7???7?800000#7??????????8)$2-:0#:0$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27'$34#1#1:,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 255472 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_c879a8.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 256116 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_c879a8.IT BndT_Ns_002.SegItab_Ns_c879a8.IT_sound BF NX0 BR XSTEP F0 PSS plan 256116 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_gfS2.

Module LibSegNs_vd_gfS3.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_c879a8.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_c879a8.IT.
Definition ENDS : list Z := [716248].
Definition STOPS1 : list Z := [716248] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$22$32$:$;$<$=$>$?$10$11$33$34$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$2#7???7?800080#800000000000&$2#10($2-:0#:0'$22#7???7?800000#7??????????8)$2-:0#:0$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27"%pstring).
Definition ss0 : sym_state := SS 256204 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#:>==8#:>==8#5=#:>==8,20##3>8>8+$2-:0$3$4$5$6$7$22$32+$2-94#64#12<0;#11$33$?$10$11$33$34$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;'$2#7???7?800080#800000000000&$2#10($2-:0#:0'$22#7???7?800000#7??????????8)$2-:0#:0$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 716248 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_c879a8.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 256204 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_c879a8.IT BndT_Ns_002.SegItab_Ns_c879a8.IT_sound BF NX0 BR XSTEP F0 PSS plan 256204 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_gfS3.

Module LibSegNs_vd_gfS4.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_c879a8.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_c879a8.IT.
Definition ENDS : list Z := [251488].
Definition STOPS1 : list Z := [251488] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$22$32$36$;$<$=$>$?$10$11$33$34$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",<'$2#7???7?800080#800000000000&$2#10($2-:0#:0'$22#7???7?800000#7??????????8)$2-:0#:0$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27'$36#1#1:"%pstring).
Definition ss0 : sym_state := SS 256232 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3=660#3=660#5=#3=660,20##3>904+$2-:0$3$4$5$6$7$22$32+$2-94$36$32$22$>$?$10$11$33$36$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,<'$2#7???7?800080#800000000000&$2#10($2-:0#:0'$22#7???7?800000#7??????????8)$2-:0#:0$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27'$36#1#1:,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 251488 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_c879a8.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 256232 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_c879a8.IT BndT_Ns_002.SegItab_Ns_c879a8.IT_sound BF NX0 BR XSTEP F0 PSS plan 256232 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_gfS4.

Module LibSegNs_vd_gfT0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_c879a8.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_c879a8.IT.
Definition ENDS : list Z := [256192].
Definition STOPS1 : list Z := [256192] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$22$9$:$35$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",<'$2#7???7?800080#800000000000&$2#10($2-:0#:0'$22#7???7?800000#7??????????8)$2-:0#:0$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27'$35##"%pstring).
Definition ss0 : sym_state := SS 256144 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3>8<0#3>8<0#5=#3>8<0,20#$1+$2-:0$3$4$5$6$7$22$9#16#$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,<'$2#7???7?800080#800000000000&$2#10($2-:0#:0'$22#7???7?800000#7??????????8)$2-:0#:0$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27'$35##,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 256192 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_c879a8.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 256144 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_c879a8.IT BndT_Ns_002.SegItab_Ns_c879a8.IT_sound BF NX0 BR XSTEP F0 PSS plan 256144 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_gfT0.

Module LibSegNs_vd_gfT34.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_c879a8.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_c879a8.IT.
Definition ENDS : list Z := [256192].
Definition STOPS1 : list Z := [256192] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$22$9$:$35$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",<'$2#7???7?800080#800000000000&$2#10($2-:0#:0'$22#7???7?800000#7??????????8)$2-:0#:0$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27'$35#22#22"%pstring).
Definition ss0 : sym_state := SS 256144 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3>8<0#3>8<0#5=#3>8<0,20#$1+$2-:0$3$4$5$6$7$22$9#16#22$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,<'$2#7???7?800080#800000000000&$2#10($2-:0#:0'$22#7???7?800000#7??????????8)$2-:0#:0$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27'$35#22#22,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 256192 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_c879a8.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 256144 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_c879a8.IT BndT_Ns_002.SegItab_Ns_c879a8.IT_sound BF NX0 BR XSTEP F0 PSS plan 256144 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_gfT34.

Module LibSegNs_vd_gfU.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_c879a8.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_c879a8.IT.
Definition ENDS : list Z := [251488].
Definition STOPS1 : list Z := [251488] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$22$32$:$;$<$=$>$?$10$11$33$34$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$2#7???7?800080#800000000000&$2#10($2-:0#:0'$22#7???7?800000#7??????????8)$2-:0#:0$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27"%pstring).
Definition ss0 : sym_state := SS 256240 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3=660#3=660#5=#3=660,20##3>904+$2-:0$3$4$5$6$7$22$32+$2-94$34$32$22$>$?$10$11$33$34$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;'$2#7???7?800080#800000000000&$2#10($2-:0#:0'$22#7???7?800000#7??????????8)$2-:0#:0$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 251488 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_c879a8.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 256240 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_c879a8.IT BndT_Ns_002.SegItab_Ns_c879a8.IT_sound BF NX0 BR XSTEP F0 PSS plan 256240 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_gfU.

Module LibSegNs_vd_gfZ1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_c879a8.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_c879a8.IT.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$22$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$2#7???7?800080#800000000000&$2#10($2-:0#:0'$22#7???7?800000#7??????????8)$2-:0#:0$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27"%pstring).
Definition ss0 : sym_state := SS 256032 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3>82<+$2-:0$3$4$5$6$7$22$9$21#30$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;'$2#7???7?800080#800000000000&$2#10($2-:0#:0'$22#7???7?800000#7??????????8)$2-:0#:0$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_c879a8.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 256032 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_c879a8.IT BndT_Ns_002.SegItab_Ns_c879a8.IT_sound BF NX0 BR XSTEP F0 PSS plan 256032 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_gfZ1.

Module LibSegNs_vd_gfZ2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_c879a8.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_c879a8.IT.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$22$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$2#7???7?800080#800000000000&$2#10($2-:0#:0'$22#7???7?800000#7??????????8)$2-:0#:0$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27"%pstring).
Definition ss0 : sym_state := SS 256044 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3>838+$2-:0$3$4$5$6$7$22$9$21#2>$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;'$2#7???7?800080#800000000000&$2#10($2-:0#:0'$22#7???7?800000#7??????????8)$2-:0#:0$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_c879a8.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 256044 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_c879a8.IT BndT_Ns_002.SegItab_Ns_c879a8.IT_sound BF NX0 BR XSTEP F0 PSS plan 256044 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_gfZ2.

Module LibSegNs_vd_gfZ3.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_c879a8.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_c879a8.IT.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$22$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$2#7???7?800080#800000000000&$2#10($2-:0#:0'$22#7???7?800000#7??????????8)$2-:0#:0$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27"%pstring).
Definition ss0 : sym_state := SS 256056 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3>844+$2-:0$3$4$5$6$7$22$9$21#30$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;'$2#7???7?800080#800000000000&$2#10($2-:0#:0'$22#7???7?800000#7??????????8)$2-:0#:0$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_c879a8.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 256056 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_c879a8.IT BndT_Ns_002.SegItab_Ns_c879a8.IT_sound BF NX0 BR XSTEP F0 PSS plan 256056 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_gfZ3.

Module LibSegNs_vd_gfZ4.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_c879a8.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_c879a8.IT.
Definition ENDS : list Z := [256180].
Definition STOPS1 : list Z := [256180] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-:0$3$4$5$6$7$22$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$2#7???7?800080#800000000000&$2#10($2-:0#:0'$22#7???7?800000#7??????????8)$2-:0#:0$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27"%pstring).
Definition ss0 : sym_state := SS 256068 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3>8;4#3>8;4#5=#3>8;4,20#$23+$2-:0$3$4$5$6$7$24$25#1$;$<$=$>$?$10$11$26$27$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;'$2#7???7?800080#800000000000&$2#10($2-:0#:0'$22#7???7?800000#7??????????8)$2-:0#:0$22##8!$22#,8$21!$2-8,8$23!$2-10,8$24!$2-18,8$25!$2-20,8$26!$2-28,8$27,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 256180 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_c879a8.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 256068 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_c879a8.IT BndT_Ns_002.SegItab_Ns_c879a8.IT_sound BF NX0 BR XSTEP F0 PSS plan 256068 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_gfZ4.

Module LibSegNs_vd_opA.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_0d4741.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_0d4741.IT.
Definition ENDS : list Z := [255776].
Definition STOPS1 : list Z := [255776] ++ ENDS.
Definition NX0 : nat := 160.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 50; EVar 34; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$2#7???7?800080#800000000000&$2#10($2-100#100'$32#7???7?800040#7??????????4)$2-100#100$32##<!$32#,1#!$32#4,4#!$32#8,1$38'$38##??"%pstring).
Definition ss0 : sym_state := SS 250572 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-256), ELit 256)].
Definition F0L : list SR.region := [((EVar 2), (-256), 256)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3>720#3>720#5=#3>720,20##3=480+$2-100$3$4$5$6$7$22$32$38$22##$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,<!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800080#800000000000&$2#10($2-100#100'$32#7???7?800040#7??????????4)$2-100#100$32##<!$32#,1#!$32#4,4#!$32#8,1$38'$38##??,:0!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 255776 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_0d4741.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 250572 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_0d4741.IT BndT_Ns_000.SegItab_Ns_0d4741.IT_sound BF NX0 BR XSTEP F0 PSS plan 250572 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vd_opA.

End BndP_Ns_090.
Module BndP_Ns_098.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Plain.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Ns_002 BndT_Ns_000.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Ns_098 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC6ARocqVerifyHarnessATaskSpecification8ProblemsWSrc_jsoncons_fuzz_msgpack_encoder_repro1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Ns_002ASegItab_Ns_ecf95b2ITC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuB162BFC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuB163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuB162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuB165XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuB162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuB163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuB164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuB165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuB163kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuB322BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuB323NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuB322BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuB325XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuB322F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuB323PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuB324planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuB325regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuB323kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuB642BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuB643NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuB642BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuB645XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuB642F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuB643PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuB644planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuB645regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuB643kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuB82BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuB83NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuB82BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuB85XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuB82F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuB83PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuB84planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuB85regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuB83kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuE02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuE03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuE02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuE05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuE02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuE03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuE04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuE05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuE03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuE12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuE13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuE12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuE15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuE12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuE13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuE14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuE15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuE13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuE1w2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuE1w3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuE1w2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuE1w5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuE1w2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuE1w3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuE1w4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuE1w5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuE1w3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuJ162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuJ163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuJ162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuJ165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuJ162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuJ163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuJ164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuJ165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuJ163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuJ322BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuJ323NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuJ322BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuJ325XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuJ322F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuJ323PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuJ324planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuJ325regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuJ323kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuJ52BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuJ53NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuJ52BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuJ55XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuJ52F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuJ53PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuJ54planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuJ55regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098=LibSegNs_vuJ53kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuJ642BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuJ643NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuJ642BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuJ645XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuJ642F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuJ643PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuJ644planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuJ645regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098>LibSegNs_vuJ643kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Ns_000ASegItab_Ns_1285a52ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098<LibSegNs_wsA2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098<LibSegNs_wsA3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098<LibSegNs_wsA2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098<LibSegNs_wsA5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098<LibSegNs_wsA2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098<LibSegNs_wsA3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098<LibSegNs_wsA4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098<LibSegNs_wsA5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098<LibSegNs_wsA3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098<LibSegNs_wsB2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098<LibSegNs_wsB3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098<LibSegNs_wsB2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098<LibSegNs_wsB5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098<LibSegNs_wsB2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098<LibSegNs_wsB3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098<LibSegNs_wsB4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098<LibSegNs_wsB5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098<LibSegNs_wsB3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098<LibSegNs_wsE2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098<LibSegNs_wsE3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098<LibSegNs_wsE2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098<LibSegNs_wsE5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098<LibSegNs_wsE2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098<LibSegNs_wsE3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098<LibSegNs_wsE4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098<LibSegNs_wsE5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_098<LibSegNs_wsE3kn0".

Module LibSegNs_vuB16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_ecf95b.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_ecf95b.IT.
Definition ENDS : list Z := [269036].
Definition STOPS1 : list Z := [269036] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$24$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483120 140737488355264;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48);
   KRange (EVar 36) 140735332483072 140737488355280;
   KAlign (EVar 36) 8;
   KRange (EVar 11) 256 65535;
   KRange (EVar 12) 0 0].
Definition ss0 : sym_state := SS 262536 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41:><#41:><#5=#41:><,20##40194+$2-30$3$4$5$6$7$:$;$;$24$39$=$>$?$10$11$24$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,7'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$24#7???7?800000#7?????????=0&$24#8'$;#100#????'$<##,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 269036 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_ecf95b.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 262536 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_ecf95b.IT BndT_Ns_002.SegItab_Ns_ecf95b.IT_sound BF NX0 BR XSTEP F0 PSS plan 262536 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vuB16.

Module LibSegNs_vuB32.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_ecf95b.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_ecf95b.IT.
Definition ENDS : list Z := [269136].
Definition STOPS1 : list Z := [269136] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$24$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483120 140737488355264;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48);
   KRange (EVar 36) 140735332483072 140737488355280;
   KAlign (EVar 36) 8;
   KRange (EVar 11) 65536 4294967295;
   KRange (EVar 12) 0 0].
Definition ss0 : sym_state := SS 262568 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41;50#41;50#5=#41;50,20##401;4+$2-30$3$4$5$6$7$:$;%0$;#$24$39$=$>$?$10$11$24$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,7'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$24#7???7?800000#7?????????=0&$24#8'$;#10000#????????'$<##,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 269136 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_ecf95b.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 262568 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_ecf95b.IT BndT_Ns_002.SegItab_Ns_ecf95b.IT_sound BF NX0 BR XSTEP F0 PSS plan 262568 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vuB32.

Module LibSegNs_vuB64.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_ecf95b.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_ecf95b.IT.
Definition ENDS : list Z := [270132].
Definition STOPS1 : list Z := [270132] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$24$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483120 140737488355264;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48);
   KRange (EVar 36) 140735332483072 140737488355280;
   KAlign (EVar 36) 8;
   KRange (EVar 11) 4294967296 18446744073709551615;
   KRange (EVar 12) 0 0].
Definition ss0 : sym_state := SS 262372 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41?34#41?34#5=#41?34,20##400?0+$2-30$3$4$5$6$7$:$;$;$24$39$=$>$?$10$11$24$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,7'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$24#7???7?800000#7?????????=0&$24#8'$;#100000000^#?#???????????????'$<##,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 270132 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_ecf95b.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 262372 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_ecf95b.IT BndT_Ns_002.SegItab_Ns_ecf95b.IT_sound BF NX0 BR XSTEP F0 PSS plan 262372 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vuB64.

Module LibSegNs_vuB8.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_ecf95b.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_ecf95b.IT.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$25$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",<'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8'$;#80#??'$<##"%pstring).
Definition ss0 : sym_state := SS 262444 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-36), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-36), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##4013<+$2-30$3$4$5$6$7$:$;$29+$2-24$39$=$>$?$10$11$25$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,=!$2-24,1$;'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8'$;#80#??'$<##,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 269572 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_ecf95b.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 262444 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_ecf95b.IT BndT_Ns_002.SegItab_Ns_ecf95b.IT_sound BF NX0 BR XSTEP F0 PSS plan 262444 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vuB8.

Module LibSegNs_vuE0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_ecf95b.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_ecf95b.IT.
Definition ENDS : list Z := [262508].
Definition STOPS1 : list Z := [262508] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$25$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8!$:#18,8$26!$:#20,8$26'$26##800000000000!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?"%pstring).
Definition ss0 : sym_state := SS 262460 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#4016<#4016<#5=#4016<,20#$2<$2$3$4$5$6$7$2=$2>#1$26$39$=$>$?$10$11$2?$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,11'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8!$:#18,8$26!$:#20,8$26'$26##800000000000!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 262508 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_ecf95b.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 262460 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_ecf95b.IT BndT_Ns_002.SegItab_Ns_ecf95b.IT_sound BF NX0 BR XSTEP F0 PSS plan 262460 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vuE0.

Module LibSegNs_vuE1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_ecf95b.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_ecf95b.IT.
Definition ENDS : list Z := [262508].
Definition STOPS1 : list Z := [262508] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$25$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",19'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$27#8'+$27@-1$26#18#186:0($27-18#18)$27-18#18$2-30#30)$27-18#18$:##38!$27-8,8$2:'$2:#^#?#??????????????>!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?"%pstring).
Definition ss0 : sym_state := SS 262460 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#4016<#4016<#5=#4016<,20#$2<$2$3$4$5$6$7$2=$2>#1+$2:#1$39$=$>$?$10$11$2?$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,19!$27-8,8+$2:#1'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$27#8'+$27@-1$26#18#186:0($27-18#18)$27-18#18$2-30#30)$27-18#18$:##38'$2:#^#?#??????????????>!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 262508 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_ecf95b.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 262460 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_ecf95b.IT BndT_Ns_002.SegItab_Ns_ecf95b.IT_sound BF NX0 BR XSTEP F0 PSS plan 262460 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vuE1.

Module LibSegNs_vuE1w.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_ecf95b.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_ecf95b.IT.
Definition ENDS : list Z := [262508].
Definition STOPS1 : list Z := [262508] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$25$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",18'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$27#8'+$27@-1$26#18#186:0($27-18#18)$27-18#18$2-30#30)$27-18#18$:##38!$27-8,8^#?#???????????????!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?"%pstring).
Definition ss0 : sym_state := SS 262460 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#4016<#4016<#5=#4016<,20#$2<$2$3$4$5$6$7$2=$2>#1#$39$=$>$?$10$11$2?$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,18!$27-8,8#'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$27#8'+$27@-1$26#18#186:0($27-18#18)$27-18#18$2-30#30)$27-18#18$:##38!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 262508 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_ecf95b.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 262460 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_ecf95b.IT BndT_Ns_002.SegItab_Ns_ecf95b.IT_sound BF NX0 BR XSTEP F0 PSS plan 262460 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vuE1w.

Module LibSegNs_vuJ16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_ecf95b.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_ecf95b.IT.
Definition ENDS : list Z := [262460].
Definition STOPS1 : list Z := [262460] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$25$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483120 140737488355264;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48)].
Definition ss0 : sym_state := SS 262548 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#4013<#4013<#5=#4013<,20#$1+$2-30$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$25$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800030#7?????????<0&$2#10($2-30#30,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 262460 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_ecf95b.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 262548 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_ecf95b.IT BndT_Ns_002.SegItab_Ns_ecf95b.IT_sound BF NX0 BR XSTEP F0 PSS plan 262548 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vuJ16.

Module LibSegNs_vuJ32.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_ecf95b.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_ecf95b.IT.
Definition ENDS : list Z := [262460].
Definition STOPS1 : list Z := [262460] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$25$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483120 140737488355264;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48)].
Definition ss0 : sym_state := SS 262580 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#4013<#4013<#5=#4013<,20#$1+$2-30$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$25$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800030#7?????????<0&$2#10($2-30#30,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 262460 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_ecf95b.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 262580 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_ecf95b.IT BndT_Ns_002.SegItab_Ns_ecf95b.IT_sound BF NX0 BR XSTEP F0 PSS plan 262580 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vuJ32.

Module LibSegNs_vuJ5.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_ecf95b.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_ecf95b.IT.
Definition ENDS : list Z := [262460].
Definition STOPS1 : list Z := [262460] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$25$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483120 140737488355264;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48)].
Definition ss0 : sym_state := SS 262404 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#4013<#4013<#5=#4013<,20#$1+$2-30$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$25$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800030#7?????????<0&$2#10($2-30#30,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 262460 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_ecf95b.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 262404 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_ecf95b.IT BndT_Ns_002.SegItab_Ns_ecf95b.IT_sound BF NX0 BR XSTEP F0 PSS plan 262404 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vuJ5.

Module LibSegNs_vuJ64.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_002.SegItab_Ns_ecf95b.ITR.
Definition IT : itab := BndT_Ns_002.SegItab_Ns_ecf95b.IT.
Definition ENDS : list Z := [262460].
Definition STOPS1 : list Z := [262460] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$25$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483120 140737488355264;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48)].
Definition ss0 : sym_state := SS 262384 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#4013<#4013<#5=#4013<,20#$1+$2-30$3$4$5$6$7$:$;$37$38$39$=$>$?$10$11$25$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800030#7?????????<0&$2#10($2-30#30,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 262460 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_002.SegItab_Ns_ecf95b.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 262384 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_002.SegItab_Ns_ecf95b.IT BndT_Ns_002.SegItab_Ns_ecf95b.IT_sound BF NX0 BR XSTEP F0 PSS plan 262384 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_vuJ64.

Module LibSegNs_wsA.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_1285a5.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_1285a5.IT.
Definition ENDS : list Z := [280364].
Definition STOPS1 : list Z := [280364] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",='$2#7???7?800040#800000000000&$2#10($2-40#40'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-40#40$:##38'$;#7???7?800000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22##1???????)$2-40#40$;##10"%pstring).
Definition ss0 : sym_state := SS 273212 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#4472<#4472<#5=#4472<,20##42;6<+$2-40$3$4$5$6$7$:$;$21$22$21$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,12!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-40#40$:##38'$;#7???7?800000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22##1???????)$2-40#40$;##10,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 280364 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_1285a5.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 273212 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_1285a5.IT BndT_Ns_000.SegItab_Ns_1285a5.IT_sound BF NX0 BR XSTEP F0 PSS plan 273212 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wsA.

Module LibSegNs_wsB.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_1285a5.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_1285a5.IT.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:$24$37$38$<$=$>$?$10$11$26$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-40#40$:##38!$:#8,8$29'$29#7???7?800000#7?????????>8&$29#8'$24#1#7???????????!$24#,1$25'$25##??'$26#1#1???????)$2-40#40$24##1"%pstring).
Definition ss0 : sym_state := SS 273408 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##42<14+$2-40$3$4$5$6$7$:$24$29+$2-29$<$=$>$?$10$11$26$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,10!$2-29,1$25'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-40#40$:##38!$:#8,8$29'$29#7???7?800000#7?????????>8&$29#8'$24#1#7???????????!$24#,1$25'$25##??'$26#1#1???????)$2-40#40$24##1,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 269572 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_1285a5.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 273408 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_1285a5.IT BndT_Ns_000.SegItab_Ns_1285a5.IT_sound BF NX0 BR XSTEP F0 PSS plan 273408 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wsB.

Module LibSegNs_wsE.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_1285a5.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_1285a5.IT.
Definition ENDS : list Z := [273464].
Definition STOPS1 : list Z := [273464] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:$24$37$38$<$=$>$?$10$11#1$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#1#7???????????!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30"%pstring).
Definition ss0 : sym_state := SS 273428 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#42<38#42<38#5=#42<38,20#$2<$2$3$4$5$6$7$2=$2>$37$38$<$=$>$?$10$11$2?$30$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,9'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#1#7???????????!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 273464 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_1285a5.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 273428 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_1285a5.IT BndT_Ns_000.SegItab_Ns_1285a5.IT_sound BF NX0 BR XSTEP F0 PSS plan 273428 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wsE.

End BndP_Ns_098.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Ns_000 BndT_Ns_001.
Module BndP_Ns_099.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Plain.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Ns_000 BndT_Ns_001.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Ns_099 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC6ARocqVerifyHarnessATaskSpecification8ProblemsWSrc_jsoncons_fuzz_msgpack_encoder_repro1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Ns_000ASegItab_Ns_1285a52ITC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsH162BFC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsH163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsH162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsH165XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsH162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsH163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsH164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsH165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsH163kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099?LibSegNs_wsH2552BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099?LibSegNs_wsH2553NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099?LibSegNs_wsH2552BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099?LibSegNs_wsH2555XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099?LibSegNs_wsH2552F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099?LibSegNs_wsH2553PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099?LibSegNs_wsH2554planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099?LibSegNs_wsH2555regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099?LibSegNs_wsH2553kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099@LibSegNs_wsH255b2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099@LibSegNs_wsH255b3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099@LibSegNs_wsH255b2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099@LibSegNs_wsH255b5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099@LibSegNs_wsH255b2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099@LibSegNs_wsH255b3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099@LibSegNs_wsH255b4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099@LibSegNs_wsH255b5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099@LibSegNs_wsH255b3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsH312BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsH313NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsH312BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsH315XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsH312F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsH313PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsH314planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsH315regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsH313kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsH322BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsH323NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsH322BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsH325XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsH322F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsH323PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsH324planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsH325regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsH323kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsJ162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsJ163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsJ162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsJ165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsJ162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsJ163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsJ164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsJ165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsJ163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsJ322BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsJ323NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsJ322BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsJ325XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsJ322F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsJ323PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsJ324planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsJ325regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsJ323kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wsL02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wsL03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wsL02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wsL05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wsL02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wsL03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wsL04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wsL05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wsL03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wsL12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wsL13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wsL12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wsL15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wsL12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wsL13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wsL14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wsL15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wsL13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099<LibSegNs_wsN2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099<LibSegNs_wsN3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099<LibSegNs_wsN2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099<LibSegNs_wsN5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099<LibSegNs_wsN2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099<LibSegNs_wsN3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099<LibSegNs_wsN4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099<LibSegNs_wsN5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099<LibSegNs_wsN3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsW162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsW163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsW162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsW165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsW162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsW163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsW164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsW165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsW163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsW322BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsW323NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsW322BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsW325XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsW322F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsW323PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsW324planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsW325regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099>LibSegNs_wsW323kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Ns_001ASegItab_Ns_575fc62ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wt3a2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wt3a3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wt3a2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wt3a5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wt3a2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wt3a3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wt3a4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wt3a5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wt3a3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wt3b2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wt3b3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wt3b2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wt3b5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wt3b2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wt3b3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wt3b4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wt3b5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_099=LibSegNs_wt3b3kn0".

Module LibSegNs_wsH16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_1285a5.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_1285a5.IT.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:$;$37#$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",10'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-40#40$:##38!$:#8,8$29'$29#7???7?800000#7?????????>8&$29#8'$;#7???7?800000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#100#????)$2-40#40$;##10"%pstring).
Definition ss0 : sym_state := SS 273260 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##42<54+$2-40$3$4$5$6$7$:$;$29+$2-29$<$=$>$?$10$11$22+$:#8$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,11!$2-29,1#=:'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-40#40$:##38!$:#8,8$29'$29#7???7?800000#7?????????>8&$29#8'$;#7???7?800000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#100#????)$2-40#40$;##10,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 269572 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_1285a5.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 273260 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_1285a5.IT BndT_Ns_000.SegItab_Ns_1285a5.IT_sound BF NX0 BR XSTEP F0 PSS plan 273260 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wsH16.

Module LibSegNs_wsH255.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_1285a5.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_1285a5.IT.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:$;$37#$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",10'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-40#40$:##38!$:#8,8$29'$29#7???7?800000#7?????????>8&$29#8'$;#7???7?800000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#20#??)$2-40#40$;##10"%pstring).
Definition ss0 : sym_state := SS 273260 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##42;>4+$2-40$3$4$5$6$7$:$;$29+$2-29$<$=$>$?$10$11$22$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,11!$2-29,1#=9'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-40#40$:##38!$:#8,8$29'$29#7???7?800000#7?????????>8&$29#8'$;#7???7?800000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#20#??)$2-40#40$;##10,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 269572 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_1285a5.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 273260 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_1285a5.IT BndT_Ns_000.SegItab_Ns_1285a5.IT_sound BF NX0 BR XSTEP F0 PSS plan 273260 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wsH255.

Module LibSegNs_wsH255b.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_1285a5.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_1285a5.IT.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:$;$37$38$<$=$>$?$10$11$22$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-40#40$:##38!$:#8,8$29'$29#7???7?800000#7?????????>8&$29#8'$22#20#??"%pstring).
Definition ss0 : sym_state := SS 273380 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##42;?4+$2-40$3$4$5$6$7$:$;$29+$2-29$<$=$>$?$10$11$22$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,<!$2-29,1$22'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-40#40$:##38!$:#8,8$29'$29#7???7?800000#7?????????>8&$29#8'$22#20#??,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 269572 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_1285a5.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 273380 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_1285a5.IT BndT_Ns_000.SegItab_Ns_1285a5.IT_sound BF NX0 BR XSTEP F0 PSS plan 273380 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wsH255b.

Module LibSegNs_wsH31.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_1285a5.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_1285a5.IT.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:$;$37#$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",10'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-40#40$:##38!$:#8,8$29'$29#7???7?800000#7?????????>8&$29#8'$;#7???7?800000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22##1?)$2-40#40$;##10"%pstring).
Definition ss0 : sym_state := SS 273260 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##42;?4+$2-40$3$4$5$6$7$:$;$29+$2-29$<$=$>$?$10$11$22$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,11!$2-29,1+$22#:0'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-40#40$:##38!$:#8,8$29'$29#7???7?800000#7?????????>8&$29#8'$;#7???7?800000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22##1?)$2-40#40$;##10,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 269572 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_1285a5.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 273260 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_1285a5.IT BndT_Ns_000.SegItab_Ns_1285a5.IT_sound BF NX0 BR XSTEP F0 PSS plan 273260 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wsH31.

Module LibSegNs_wsH32.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_1285a5.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_1285a5.IT.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:$;$37#$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",10'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-40#40$:##38!$:#8,8$29'$29#7???7?800000#7?????????>8&$29#8'$;#7???7?800000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#10000#1???????)$2-40#40$;##10"%pstring).
Definition ss0 : sym_state := SS 273260 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##42;<0+$2-40$3$4$5$6$7$:$;$29+$2-29$<$=$>$?$10$11$22+$:#8$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,11!$2-29,1#=;'$2#7???7?800040#800000000000&$2#10($2-40#40'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-40#40$:##38!$:#8,8$29'$29#7???7?800000#7?????????>8&$29#8'$;#7???7?800000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#10000#1???????)$2-40#40$;##10,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 269572 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_1285a5.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 273260 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_1285a5.IT BndT_Ns_000.SegItab_Ns_1285a5.IT_sound BF NX0 BR XSTEP F0 PSS plan 273260 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wsH32.

Module LibSegNs_wsJ16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_1285a5.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_1285a5.IT.
Definition ENDS : list Z := [273408].
Definition STOPS1 : list Z := [273408] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:$;$37$38$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",8'$2#7???7?800040#800000000000&$2#10'$;#7???7?800000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#1#1???????)$2-40#40$;##10"%pstring).
Definition ss0 : sym_state := SS 273504 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#42<00#42<00#5=#42<00,20#$1+$2-40$3$4$5$6$7$:$21$37$38$<$=$>$?$10$11$22$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,8'$2#7???7?800040#800000000000&$2#10'$;#7???7?800000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#1#1???????)$2-40#40$;##10,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 273408 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_1285a5.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 273504 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_1285a5.IT BndT_Ns_000.SegItab_Ns_1285a5.IT_sound BF NX0 BR XSTEP F0 PSS plan 273504 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wsJ16.

Module LibSegNs_wsJ32.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_1285a5.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_1285a5.IT.
Definition ENDS : list Z := [273408].
Definition STOPS1 : list Z := [273408] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:$;$37$38$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",8'$2#7???7?800040#800000000000&$2#10'$;#7???7?800000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#1#1???????)$2-40#40$;##10"%pstring).
Definition ss0 : sym_state := SS 273356 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#42<00#42<00#5=#42<00,20#$1+$2-40$3$4$5$6$7$:$21$37$38$<$=$>$?$10$11$22$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,8'$2#7???7?800040#800000000000&$2#10'$;#7???7?800000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#1#1???????)$2-40#40$;##10,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 273408 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_1285a5.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 273356 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_1285a5.IT BndT_Ns_000.SegItab_Ns_1285a5.IT_sound BF NX0 BR XSTEP F0 PSS plan 273356 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wsJ32.

Module LibSegNs_wsL0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_1285a5.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_1285a5.IT.
Definition ENDS : list Z := [273464].
Definition STOPS1 : list Z := [273464] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:$;$37$38$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$2#7???7?800040#800000000000&$2#10($2-40#40'$;#7???7?800000#7??????????0!$;#8,8#)$2-40#40$;##10!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30"%pstring).
Definition ss0 : sym_state := SS 273396 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#42<38#42<38#5=#42<38,20#$2<$2$3$4$5$6$7$2=$2>$37$38$<$=$>$?$10$11$2?$30$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;'$2#7???7?800040#800000000000&$2#10($2-40#40'$;#7???7?800000#7??????????0!$;#8,8#)$2-40#40$;##10!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 273464 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_1285a5.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 273396 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_1285a5.IT BndT_Ns_000.SegItab_Ns_1285a5.IT_sound BF NX0 BR XSTEP F0 PSS plan 273396 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wsL0.

Module LibSegNs_wsL1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_1285a5.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_1285a5.IT.
Definition ENDS : list Z := [273408].
Definition STOPS1 : list Z := [273408] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:$;$37$38$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",8'$2#7???7?800040#800000000000&$2#10'$;#7???7?800000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#1#1???????)$2-40#40$;##10"%pstring).
Definition ss0 : sym_state := SS 273396 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#42<00#42<00#5=#42<00,20#$1+$2-40$3$4$5$6$7$:$21$37$38$<$=$>$?$10$11$22$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,8'$2#7???7?800040#800000000000&$2#10'$;#7???7?800000#7??????????0!$;#,8$21!$;#8,8$22'$21##800000000000'$22#1#1???????)$2-40#40$;##10,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 273408 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_1285a5.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 273396 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_1285a5.IT BndT_Ns_000.SegItab_Ns_1285a5.IT_sound BF NX0 BR XSTEP F0 PSS plan 273396 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wsL1.

Module LibSegNs_wsN.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_1285a5.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_1285a5.IT.
Definition ENDS : list Z := [273408].
Definition STOPS1 : list Z := [273408] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:$24$37$38$<$=$>$?$10$11$26$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483136 140737488355328;
   KAlign (EVar 2) 16;
   KRange (EVar 36) 1 140737488355327;
   KRange (EVar 38) 2 536870911].
Definition ss0 : sym_state := SS 273428 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#42<00#42<00#5=#42<00,20#$1+$2-40$3$4$5$6$7$:+$24#1$37$38$<$=$>$?$10$11+$26-1$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,4'$2#7???7?800040#800000000000&$2#10'$24#1#7???????????'$26#2#1???????,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 273408 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_1285a5.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 273428 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_1285a5.IT BndT_Ns_000.SegItab_Ns_1285a5.IT_sound BF NX0 BR XSTEP F0 PSS plan 273428 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wsN.

Module LibSegNs_wsW16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_1285a5.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_1285a5.IT.
Definition ENDS : list Z := [269036].
Definition STOPS1 : list Z := [269036] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:$;$37$38$<$=$>$?$10$11$22+$:#8$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483136 140737488355328;
   KAlign (EVar 2) 16;
   KRange (EVar 34) 0 18446744073709551615].
Definition ss0 : sym_state := SS 273492 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41:><#41:><#5=#41:><,20##42<60+$2-40$3$4$5$6$7$:$;$22+$:#8$<$=$>$?$10$11$22+$:#8$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800040#800000000000&$2#10'$22#^#?#???????????????,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 269036 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_1285a5.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 273492 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_1285a5.IT BndT_Ns_000.SegItab_Ns_1285a5.IT_sound BF NX0 BR XSTEP F0 PSS plan 273492 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wsW16.

Module LibSegNs_wsW32.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_1285a5.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_1285a5.IT.
Definition ENDS : list Z := [269136].
Definition STOPS1 : list Z := [269136] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$:$;$37$38$<$=$>$?$10$11$22+$:#8$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483136 140737488355328;
   KAlign (EVar 2) 16;
   KRange (EVar 34) 0 18446744073709551615].
Definition ss0 : sym_state := SS 273344 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41;50#41;50#5=#41;50,20##42;<<+$2-40$3$4$5$6$7$:$;%0$22#+$:#8$<$=$>$?$10$11$22+$:#8$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800040#800000000000&$2#10'$22#^#?#???????????????,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 269136 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_1285a5.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 273344 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_1285a5.IT BndT_Ns_000.SegItab_Ns_1285a5.IT_sound BF NX0 BR XSTEP F0 PSS plan 273344 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wsW32.

Module LibSegNs_wt3a.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_575fc6.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_575fc6.IT.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;+$:#8$29$38$39$=$>$?$10$11$:$3:$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8"%pstring).
Definition ss0 : sym_state := SS 269916 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##41>6<+$2-30$3$4$5$6$7$;+$:#8$29+$2-2?$39$=$>$?$10$11$:$3:$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;!$2-2?,1#=6'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 269572 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_575fc6.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 269916 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_575fc6.IT BndT_Ns_001.SegItab_Ns_575fc6.IT_sound BF NX0 BR XSTEP F0 PSS plan 269916 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wt3a.

Module LibSegNs_wt3b.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_575fc6.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_575fc6.IT.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;+$:#8$37$38$39$=$>$?$10$11$:$3:$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8"%pstring).
Definition ss0 : sym_state := SS 269932 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##41>80+$2-30$3$4$5$6$7$;+$:#8$29+$2-2>$39$=$>$?$10$11$:$3:$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;!$2-2>,1^#?#???????????????'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 269572 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_575fc6.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 269932 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_575fc6.IT BndT_Ns_001.SegItab_Ns_575fc6.IT_sound BF NX0 BR XSTEP F0 PSS plan 269932 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wt3b.

End BndP_Ns_099.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Ns_001 BndT_Ns_000.
Module BndP_Ns_100.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Plain.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Ns_001 BndT_Ns_000.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Ns_100 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC6ARocqVerifyHarnessATaskSpecification8ProblemsWSrc_jsoncons_fuzz_msgpack_encoder_repro1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Ns_001ASegItab_Ns_575fc62ITC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt3c2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt3c3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt3c2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt3c5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt3c2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt3c3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt3c4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt3c5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt3c3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt3z2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt3z3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt3z2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt3z5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt3z2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt3z3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt3z4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt3z5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt3z3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt6a2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt6a3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt6a2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt6a5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt6a2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt6a3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt6a4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt6a5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt6a3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt6b2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt6b3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt6b2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt6b5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt6b2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt6b3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt6b4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt6b5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt6b3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt6c2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt6c3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt6c2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt6c5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt6c2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt6c3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt6c4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt6c5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt6c3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9a2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9a3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9a2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9a5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9a2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9a3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9a4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9a5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9a3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9b2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9b3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9b2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9b5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9b2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9b3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9b4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9b5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9b3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9c2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9c3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9c2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9c5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9c2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9c3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9c4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9c5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9c3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9d2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9d3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9d2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9d5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9d2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9d3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9d4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9d5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9d3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9e2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9e3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9e2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9e5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9e2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9e3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9e4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9e5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_wt9e3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100<LibSegNs_wtA2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100<LibSegNs_wtA3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100<LibSegNs_wtA2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100<LibSegNs_wtA5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100<LibSegNs_wtA2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100<LibSegNs_wtA3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100<LibSegNs_wtA4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100<LibSegNs_wtA5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100<LibSegNs_wtA3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100<LibSegNs_wtZ2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100<LibSegNs_wtZ3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100<LibSegNs_wtZ2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100<LibSegNs_wtZ5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100<LibSegNs_wtZ2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100<LibSegNs_wtZ3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100<LibSegNs_wtZ4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100<LibSegNs_wtZ5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100<LibSegNs_wtZ3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Ns_000ASegItab_Ns_4c25892ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_xgA02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_xgA03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_xgA02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_xgA05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_xgA02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_xgA03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_xgA04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_xgA05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_xgA03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_xgA12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_xgA13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_xgA12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_xgA15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_xgA12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_xgA13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_xgA14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_xgA15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_100=LibSegNs_xgA13kn0".

Module LibSegNs_wt3c.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_575fc6.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_575fc6.IT.
Definition ENDS : list Z := [269136].
Definition STOPS1 : list Z := [269136] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;+$:#8$37$38$39$=$>$?$10$11$:$3:$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483120 140737488355264;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48);
   KRange (EVar 11) 0 18446744073709551615;
   KRange (EVar 12) 0 18446744073709551615].
Definition ss0 : sym_state := SS 269952 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41;50#41;50#5=#41;50,20##41>8<+$2-30$3$4$5$6$7$;+$:#8%0$;#+$:#8$39$=$>$?$10$11$:$3:$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$;#^#?#???????????????'$<#^#?#???????????????,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 269136 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_575fc6.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 269952 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_575fc6.IT BndT_Ns_001.SegItab_Ns_575fc6.IT_sound BF NX0 BR XSTEP F0 PSS plan 269952 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wt3c.

Module LibSegNs_wt3z.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_575fc6.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_575fc6.IT.
Definition ENDS : list Z := [270128].
Definition STOPS1 : list Z := [270128] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$3;$37$38$39$=$>$?$10$11$:$3:$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",8'$2#7???7?800030#7?????????<0&$2#10($2-30#30!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30"%pstring).
Definition ss0 : sym_state := SS 269964 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41?30#41?30#5=#41?30,20#$2<$2$3$4$5$6$7$2=$2>$37$38$39$=$>$?$10$11$2?$30$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,8'$2#7???7?800030#7?????????<0&$2#10($2-30#30!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 270128 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_575fc6.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 269964 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_575fc6.IT BndT_Ns_001.SegItab_Ns_575fc6.IT_sound BF NX0 BR XSTEP F0 PSS plan 269964 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wt3z.

Module LibSegNs_wt6a.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_575fc6.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_575fc6.IT.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;+$:#8$29$38$39$=$>$?$10$11$:$3:$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8"%pstring).
Definition ss0 : sym_state := SS 270056 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##41>?8+$2-30$3$4$5$6$7$;+$:#8$29+$2-2=$39$=$>$?$10$11$:$3:$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;!$2-2=,1#=7'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 269572 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_575fc6.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 270056 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_575fc6.IT BndT_Ns_001.SegItab_Ns_575fc6.IT_sound BF NX0 BR XSTEP F0 PSS plan 270056 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wt6a.

Module LibSegNs_wt6b.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_575fc6.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_575fc6.IT.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;+$:#8$37$38$39$=$>$?$10$11$:$3:$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8"%pstring).
Definition ss0 : sym_state := SS 270072 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##41?0<+$2-30$3$4$5$6$7$;+$:#8$29+$2-2<$39$=$>$?$10$11$:$3:$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;!$2-2<,1^#?#???????????????'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 269572 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_575fc6.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 270072 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_575fc6.IT BndT_Ns_001.SegItab_Ns_575fc6.IT_sound BF NX0 BR XSTEP F0 PSS plan 270072 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wt6b.

Module LibSegNs_wt6c.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_575fc6.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_575fc6.IT.
Definition ENDS : list Z := [270132].
Definition STOPS1 : list Z := [270132] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;+$:#8$37$38$39$=$>$?$10$11$:$3:$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483120 140737488355264;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48)].
Definition ss0 : sym_state := SS 270092 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41?34#41?34#5=#41?34,20##41?18+$2-30$3$4$5$6$7$;+$:#8$3:+$:#8$39$=$>$?$10$11$:$3:$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800030#7?????????<0&$2#10($2-30#30,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 270132 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_575fc6.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 270092 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_575fc6.IT BndT_Ns_001.SegItab_Ns_575fc6.IT_sound BF NX0 BR XSTEP F0 PSS plan 270092 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wt6c.

Module LibSegNs_wt9a.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_575fc6.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_575fc6.IT.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$<$37$38$39$=$>$?$10$11$:$3:$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8"%pstring).
Definition ss0 : sym_state := SS 269968 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##41>:8+$2-30$3$4$5$6$7$;$<$29+$2-2;$39$=$>$?$10$11$:+$:#8$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;!$2-2;,1#<7'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 269572 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_575fc6.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 269968 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_575fc6.IT BndT_Ns_001.SegItab_Ns_575fc6.IT_sound BF NX0 BR XSTEP F0 PSS plan 269968 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wt9a.

Module LibSegNs_wt9b.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_575fc6.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_575fc6.IT.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$<$37$38$39$=$>$?$10$11$:+$:#8$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8"%pstring).
Definition ss0 : sym_state := SS 269992 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##41>;<+$2-30$3$4$5$6$7$;$<$29+$2-2:$39$=$>$?$10$11$:+$:#8$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;!$2-2:,1#<'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 269572 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_575fc6.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 269992 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_575fc6.IT BndT_Ns_001.SegItab_Ns_575fc6.IT_sound BF NX0 BR XSTEP F0 PSS plan 269992 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wt9b.

Module LibSegNs_wt9c.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_575fc6.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_575fc6.IT.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$<$37$38$39$=$>$?$10$11$:+$:#8$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8"%pstring).
Definition ss0 : sym_state := SS 270012 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##41>=0+$2-30$3$4$5$6$7$;$<$29+$2-29$39$=$>$?$10$11$:+$:#8$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;!$2-29,1^#?#???????????????'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 269572 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_575fc6.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 270012 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_575fc6.IT BndT_Ns_001.SegItab_Ns_575fc6.IT_sound BF NX0 BR XSTEP F0 PSS plan 270012 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wt9c.

Module LibSegNs_wt9d.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_575fc6.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_575fc6.IT.
Definition ENDS : list Z := [269136].
Definition STOPS1 : list Z := [269136] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$<$37$38$39$=$>$?$10$11$:+$:#8$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483120 140737488355264;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48);
   KRange (EVar 11) 0 18446744073709551615;
   KRange (EVar 12) 0 18446744073709551615].
Definition ss0 : sym_state := SS 270032 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41;50#41;50#5=#41;50,20##41>=<+$2-30$3$4$5$6$7$;$<%0$<#+$:#8$39$=$>$?$10$11$:+$:#8$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$;#^#?#???????????????'$<#^#?#???????????????,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 269136 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_575fc6.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 270032 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_575fc6.IT BndT_Ns_001.SegItab_Ns_575fc6.IT_sound BF NX0 BR XSTEP F0 PSS plan 270032 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wt9d.

Module LibSegNs_wt9e.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_575fc6.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_575fc6.IT.
Definition ENDS : list Z := [270132].
Definition STOPS1 : list Z := [270132] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$<$37$38$39$=$>$?$10$11$:+$:#8$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483120 140737488355264;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48)].
Definition ss0 : sym_state := SS 270044 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41?34#41?34#5=#41?34,20##41?18+$2-30$3$4$5$6$7$;$<$;+$:#8$39$=$>$?$10$11$:+$:#8$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800030#7?????????<0&$2#10($2-30#30,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 270132 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_575fc6.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 270044 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_575fc6.IT BndT_Ns_001.SegItab_Ns_575fc6.IT_sound BF NX0 BR XSTEP F0 PSS plan 270044 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wt9e.

Module LibSegNs_wtA.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_575fc6.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_575fc6.IT.
Definition ENDS : list Z := [269968; 270056; 269916].
Definition STOPS1 : list Z := [269968; 270056; 269916] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",<'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8'$;#^#?#???????????????'$<#^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 269848 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,6#41>90#41>>8#41>5<#41>90#41>>8#41>5<#5;#41>40,20#$1+$2-30$3$4$5$6$7$;$<$:&6$;#22$<$=$>$?$10$11$:$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,11!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8'$;#^#?#???????????????'$<#^#?#???????????????,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition arms2 := Eval vm_compute in (match SGP.branch_probe IT s1 with Some e => SGP.case_arms s1 e 0 | None => None end).
Definition f2 : sym_state := match arms2 with Some (Some s, _) => s | _ => s1 end.
Definition t2 : sym_state := match arms2 with Some (_, Some s) => s | _ => s1 end.

Definition ex3 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,6#41>90#41>>8#41>5<#41>90#41>>8#41>5<#5;#41>58,20#$1+$2-30$3$4$5$6$7$;+$:#8$29&6&8@#400000000$<$;#20$<$=$>$?$10$11$:&8@#400000000$<$;$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,12'&4&1&6$;#22##1#1#1!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8'$;#^#?#???????????????'$<#^#?#???????????????,3<!"%pstring).
Definition s3 : sym_state := snd (snd ex3).

Definition arms4 := Eval vm_compute in (match SGP.branch_probe IT s3 with Some e => SGP.case_arms s3 e 0 | None => None end).
Definition f4 : sym_state := match arms4 with Some (Some s, _) => s | _ => s3 end.
Definition t4 : sym_state := match arms4 with Some (_, Some s) => s | _ => s3 end.

Definition ex5 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,6#41>90#41>>8#41>5<#41>90#41>>8#41>5<#5:#41>5<,20#$1+$2-30$3$4$5$6$7$;+$:#8$29&6&8@#400000000$<$;#20$<$=$>$?$10$11$:&8@#400000000$<$;$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,13'&4&1&6&8@#400000000$<$;#20##1#1#1'&4&1&6$;#22##1#1#1!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8'$;#^#?#???????????????'$<#^#?#???????????????,3<!"%pstring).
Definition s5 : sym_state := snd (snd ex5).

Definition ex6 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,6#41>90#41>>8#41>5<#41>90#41>>8#41>5<#5:#41>>8,20#$1+$2-30$3$4$5$6$7$;+$:#8$29&6&8@#400000000$<$;#20$<$=$>$?$10$11$:&8@#400000000$<$;$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,13'&4&1&6&8@#400000000$<$;#20##1##'&4&1&6$;#22##1#1#1!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8'$;#^#?#???????????????'$<#^#?#???????????????,3<!"%pstring).
Definition s6 : sym_state := snd (snd ex6).

Definition ex7 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,6#41>90#41>>8#41>5<#41>90#41>>8#41>5<#5:#41>90,20#$1+$2-30$3$4$5$6$7$;$<$:&6$;#22$<$=$>$?$10$11$:$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,12'&4&1&6$;#22##1##!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800030#7?????????<0&$2#10($2-30#30'$:#7???7?800000#7?????????<8&$:#8($:##38!$:#8,8$29)$2-30#30$:##38'$29#7???7?800000#7?????????>8&$29#8'$;#^#?#???????????????'$<#^#?#???????????????,3<!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 269968 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition regs_out1 : list expr := Eval vm_compute in (s_regs s6).
Definition exit_sp_off1 : Z := Eval vm_compute in (spoff_of s6).
Definition cells1 : list kentry := Eval vm_compute in (cells_of s6 exit_sp_off1).
Definition nfresh1 : nat := Eval vm_compute in (s_next s6 - NX0)%nat.
Definition exit_pc1 : Z := Eval vm_compute in (s_pc s6).
Definition ps1 : SR.post_spec := SR.PS 270056 (map (fun i => (i, nth i regs_out1 (ELit 0))) (seq 1 31)) F0L cells1.

Definition regs_out2 : list expr := Eval vm_compute in (s_regs s5).
Definition exit_sp_off2 : Z := Eval vm_compute in (spoff_of s5).
Definition cells2 : list kentry := Eval vm_compute in (cells_of s5 exit_sp_off2).
Definition nfresh2 : nat := Eval vm_compute in (s_next s5 - NX0)%nat.
Definition exit_pc2 : Z := Eval vm_compute in (s_pc s5).
Definition ps2 : SR.post_spec := SR.PS 269916 (map (fun i => (i, nth i regs_out2 (ELit 0))) (seq 1 31)) F0L cells2.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0; ps1; ps2] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_575fc6.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 269848 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_575fc6.IT BndT_Ns_001.SegItab_Ns_575fc6.IT_sound BF NX0 BR XSTEP F0 PSS plan 269848 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wtA.

Module LibSegNs_wtZ.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_575fc6.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_575fc6.IT.
Definition ENDS : list Z := [270128].
Definition STOPS1 : list Z := [270128] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$3;$37$38$39$=$>$?$10$11$:$3:$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",8'$2#7???7?800030#7?????????<0&$2#10($2-30#30!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30"%pstring).
Definition ss0 : sym_state := SS 270104 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41?30#41?30#5=#41?30,20#$2<$2$3$4$5$6$7$2=$2>$37$38$39$=$>$?$10$11$2?$30$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,8'$2#7???7?800030#7?????????<0&$2#10($2-30#30!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 270128 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_575fc6.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 270104 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_575fc6.IT BndT_Ns_001.SegItab_Ns_575fc6.IT_sound BF NX0 BR XSTEP F0 PSS plan 270104 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_wtZ.

Module LibSegNs_xgA0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_4c2589.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_4c2589.IT.
Definition ENDS : list Z := [441180].
Definition STOPS1 : list Z := [441180] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 36; EVar 37; ELit 16384; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",>'$2#7???7?800050#800000000000&$2#10($2-50#50'$24#7???7?800050#7?????????00&$24#8)$2-50#50$24##100%#10000#<6<<0!$24#,8#<3598!$24#18,8$21!$24#20,8$21!$24#30,8#!$24#58,8$21!$24#60,4#8'$21#1000#800000000000"%pstring).
Definition ss0 : sym_state := SS 440916 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#6;;5<#6;;5<#5=#6;;5<,20#$1$2$3$4$5$6$7$8$9#^#?#???????????????$21$21$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,18!$2-50,8#!$2-48,8#6;:><!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800050#800000000000&$2#10($2-50#50'$24#7???7?800050#7?????????00&$24#8)$2-50#50$24##100%#10000#<6<<0!$24#,8#<3598!$24#18,8$21!$24#20,8$21!$24#30,8#!$24#58,8$21!$24#60,4#8'$21#1000#800000000000,30!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 441180 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_4c2589.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 440916 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_4c2589.IT BndT_Ns_000.SegItab_Ns_4c2589.IT_sound BF NX0 BR XSTEP F0 PSS plan 440916 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_xgA0.

Module LibSegNs_xgA1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_4c2589.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_4c2589.IT.
Definition ENDS : list Z := [761212].
Definition STOPS1 : list Z := [761212] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 36; EVar 37; ELit 16384; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$2#7???7?800050#800000000000&$2#10($2-50#50'$24#7???7?800050#7?????????00&$24#8)$2-50#50$24##100%#10000#<6<<0!$24#,8#<3598!$24#18,8$21!$24#20,8+$21$23!$24#30,8#!$24#58,8+$21$23!$24#60,4#8'$21#1000#800000000000'$23#1#4000"%pstring).
Definition ss0 : sym_state := SS 440916 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;9=7<#;9=7<#5=#;9=7<,20##6;;28+$2-40$3$4$5$6$7##4000$25$21$23$=$>$?$10$11$25$24$23#7???????^#?#???????????????$17$18$19$1:$1;$1<$1=$1>$1?,,17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800050#800000000000&$2#10($2-50#50'$24#7???7?800050#7?????????00&$24#8)$2-50#50$24##100%#10000#<6<<0!$24#,8#<3598!$24#18,8$21!$24#20,8+$21$23!$24#30,8#!$24#58,8+$21$23!$24#60,4#8'$21#1000#800000000000'$23#1#4000,30!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 761212 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_4c2589.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 440916 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_4c2589.IT BndT_Ns_000.SegItab_Ns_4c2589.IT_sound BF NX0 BR XSTEP F0 PSS plan 440916 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_xgA1.

End BndP_Ns_100.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Ns_000.
Module BndP_Ns_101.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Plain.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Ns_000.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Ns_101 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC6ARocqVerifyHarnessATaskSpecification8ProblemsWSrc_jsoncons_fuzz_msgpack_encoder_repro1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Ns_000ASegItab_Ns_4c25892ITC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_101=LibSegNs_xgA22BFC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_101=LibSegNs_xgA23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_101=LibSegNs_xgA22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_101=LibSegNs_xgA25XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_101=LibSegNs_xgA22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_101=LibSegNs_xgA23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_101=LibSegNs_xgA24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_101=LibSegNs_xgA25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_101=LibSegNs_xgA23kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_101=LibSegNs_xgC12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_101=LibSegNs_xgC13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_101=LibSegNs_xgC12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_101=LibSegNs_xgC15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_101=LibSegNs_xgC12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_101=LibSegNs_xgC13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_101=LibSegNs_xgC14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_101=LibSegNs_xgC15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_101=LibSegNs_xgC13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_101=LibSegNs_xgC22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_101=LibSegNs_xgC23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_101=LibSegNs_xgC22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_101=LibSegNs_xgC25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_101=LibSegNs_xgC22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_101=LibSegNs_xgC23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_101=LibSegNs_xgC24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_101=LibSegNs_xgC25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0165;BndP_Ns_101=LibSegNs_xgC23kn0".

Module LibSegNs_xgA2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_4c2589.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_4c2589.IT.
Definition ENDS : list Z := [761212].
Definition STOPS1 : list Z := [761212] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 36; EVar 37; ELit 16384; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",?'$2#7???7?800050#800000000000&$2#10($2-50#50'$24#7???7?800050#7?????????00&$24#8)$2-50#50$24##100%#10000#<6<<0!$24#,8#<3598!$24#18,8$21!$24#20,8+$21$23!$24#30,8#!$24#58,8+$21$23!$24#60,4#8'$21#1000#800000000000'$23#4001#8000000"%pstring).
Definition ss0 : sym_state := SS 440916 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;9=7<#;9=7<#5=#;9=7<,20##6;;28+$2-40$3$4$5$6$7##4000$25$21#4000$=$>$?$10$11$25$24#4000#7???????^#?#???????????????$17$18$19$1:$1;$1<$1=$1>$1?,,17!$2-40,8$16!$2-38,8$15!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800050#800000000000&$2#10($2-50#50'$24#7???7?800050#7?????????00&$24#8)$2-50#50$24##100%#10000#<6<<0!$24#,8#<3598!$24#18,8$21!$24#20,8+$21$23!$24#30,8#!$24#58,8+$21$23!$24#60,4#8'$21#1000#800000000000'$23#4001#8000000,30!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 761212 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_4c2589.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 440916 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_4c2589.IT BndT_Ns_000.SegItab_Ns_4c2589.IT_sound BF NX0 BR XSTEP F0 PSS plan 440916 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_xgA2.

Module LibSegNs_xgC1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_4c2589.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_4c2589.IT.
Definition ENDS : list Z := [441180].
Definition STOPS1 : list Z := [441180] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7##4000$:$;$<$=$>$?$10$11$12$24#4000#7???????^#?#???????????????$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",17'$2#7???7?800050#800000000000&$2#10($2-50#50'$24#7???7?800050#7?????????00&$24#8)$2-50#50$24##100%#10000#<6<<0!$24#,8#<3598!$24#18,8$21!$24#20,8$22!$24#30,8#!$24#58,8$22!$24#60,4#8($24#18#8!$2-8,8$25!$2-10,8$26!$2-18,8$27!$2-20,8$28!$2-28,8$29!$2-30,8$2:!$2-38,8$2;!$2-40,8$2<'$21#1000#800000000000"%pstring).
Definition ss0 : sym_state := SS 441128 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-80), ELit 80); ((EVar 36), (24), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-80), 80); ((EVar 36), (24), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#6;;5<#6;;5<#5=#6;;5<,20#$25$2$3$4$5$6$7$26$27#4000$21$<$=$>$?$10$11$28$29$2:$2;$2<$17$18$19$1:$1;$1<$1=$1>$1?,,17!$24#18,8+$21#4000'$2#7???7?800050#800000000000&$2#10($2-50#50'$24#7???7?800050#7?????????00&$24#8)$2-50#50$24##100%#10000#<6<<0!$24#,8#<3598!$24#20,8$22!$24#30,8#!$24#58,8$22!$24#60,4#8($24#18#8!$2-8,8$25!$2-10,8$26!$2-18,8$27!$2-20,8$28!$2-28,8$29!$2-30,8$2:!$2-38,8$2;!$2-40,8$2<'$21#1000#800000000000,30!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 441180 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_4c2589.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 441128 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_4c2589.IT BndT_Ns_000.SegItab_Ns_4c2589.IT_sound BF NX0 BR XSTEP F0 PSS plan 441128 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_xgC1.

Module LibSegNs_xgC2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_000.SegItab_Ns_4c2589.ITR.
Definition IT : itab := BndT_Ns_000.SegItab_Ns_4c2589.IT.
Definition ENDS : list Z := [441180].
Definition STOPS1 : list Z := [441180] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7##4000$:$;$<$=$>$?$10$11$12$24$23#7???????^#?#???????????????$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",18'$2#7???7?800050#800000000000&$2#10($2-50#50'$24#7???7?800050#7?????????00&$24#8)$2-50#50$24##100%#10000#<6<<0!$24#,8#<3598!$24#18,8$21!$24#20,8+$21$23!$24#30,8#!$24#58,8+$21$23!$24#60,4#8($24#18#8!$2-8,8$25!$2-10,8$26!$2-18,8$27!$2-20,8$28!$2-28,8$29!$2-30,8$2:!$2-38,8$2;!$2-40,8$2<'$21#1000#800000000000'$23#1#3???"%pstring).
Definition ss0 : sym_state := SS 441128 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-80), ELit 80); ((EVar 36), (24), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-80), 80); ((EVar 36), (24), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#6;;5<#6;;5<#5=#6;;5<,20#$25$2$3$4$5$6$7$26$27$23^#?#???????????????+$21$23+$21$23$>$?$10$11$28$29$2:$2;$2<$17$18$19$1:$1;$1<$1=$1>$1?,,1:!$2-50,8$23!$2-48,8#6;:><!$24#18,8+$21$23'$2#7???7?800050#800000000000&$2#10($2-50#50'$24#7???7?800050#7?????????00&$24#8)$2-50#50$24##100%#10000#<6<<0!$24#,8#<3598!$24#20,8+$21$23!$24#30,8#!$24#58,8+$21$23!$24#60,4#8($24#18#8!$2-8,8$25!$2-10,8$26!$2-18,8$27!$2-20,8$28!$2-28,8$29!$2-30,8$2:!$2-38,8$2;!$2-40,8$2<'$21#1000#800000000000'$23#1#3???,30!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 441180 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_000.SegItab_Ns_4c2589.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 441128 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_000.SegItab_Ns_4c2589.IT BndT_Ns_000.SegItab_Ns_4c2589.IT_sound BF NX0 BR XSTEP F0 PSS plan 441128 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_xgC2.

End BndP_Ns_101.
