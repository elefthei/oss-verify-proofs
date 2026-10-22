(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
Set Warnings "-require-in-module".
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel. From Stdlib Require ZArith NArith List Lia Bool. From LinuxProcessSemantics.LinuxProcessSem Require BvBase RiscvSemantics MemImageType State Run. From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Plain. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Module BndP_Ns_102.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Plain.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKit.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Ns_102 () := "C47Corelib5Lists7ListDef3mapC5ARocqVerifyHarness?AgentSubmission7Mh_01126LibSym7itab_ofK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC6ARocqVerifyHarnessATaskSpecification8ProblemsWSrc_jsoncons_fuzz_msgpack_encoder_repro1M?loaded_segmentsC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102?LibSegNs_ad_fl22BFC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102?LibSegNs_ad_fl23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102?LibSegNs_ad_fl22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102?LibSegNs_ad_fl25XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102?LibSegNs_ad_fl22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102?LibSegNs_ad_fl23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102?LibSegNs_ad_fl24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102?LibSegNs_ad_fl25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102?LibSegNs_ad_fl23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102?LibSegNs_ad_fl23ITRK47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc03ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc13ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc102BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc103NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc102BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc105XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc102F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc103PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc104planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc105regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc103kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc103ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc112BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc113NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc112BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc115XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc112F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc113PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc114planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc115regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc113kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc113ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc122BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc123NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc122BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc125XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc122F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc123PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc124planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc125regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc123kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc123ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc132BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc133NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc132BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc135XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc132F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc133PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc134planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc135regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc133kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc133ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc142BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc143NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc142BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc145XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc142F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc143PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc144planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc145regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc143kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc143ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc152BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc153NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc152BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc155XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc152F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc153PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc154planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc155regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc153kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc153ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc163ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc172BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc173NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc172BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc175XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc172F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc173PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc174planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc175regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc173kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc173ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc182BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc183NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc182BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc185XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc182F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc183PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc184planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc185regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc183kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102BLibSegNs_ad_fuDc183ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc23ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc32BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc33NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc32BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc35XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc32F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc33PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc34planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc35regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc33kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_102ALibSegNs_ad_fuDc33ITR".

Module LibSegNs_ad_fl2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(239192, 4%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [263396].
Definition STOPS1 : list Z := [263396] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 36; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KRange (EVar 36) 140735332483072 140737488355232;
   KWord (SA (EVar 36) (16)) 8 (EVar 38);
   KRange (EVar 38) 140735332483072 140737488355272;
   KWord (SA (EVar 38) (0)) 8 (ELit 785968);
   KImg 65536 814272].
Definition ss0 : sym_state := SS 239192 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#404>4#404>4#5=#404>4,20#$1$2$3$4$5#404>4$7$8$9$26#;?>30$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$24#7???7?800000#7?????????:0!$24#10,8$26'$26#7???7?800000#7?????????<8!$26#,8#;?>30%#10000#<6<<0,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 263396 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 239192 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 239192 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fl2.

Module LibSegNs_ad_fuDc0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248872].
Definition STOPS1 : list Z := [248872] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 10 18446744073709551615].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-295), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-295), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<28#3<<28#5=#3<<28,20#$1+$2-140$3$4+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30$6$7$24#1&6/3$27^#<#<<<<<<<<<<<<<<=#3^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#$27+$2-127$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-127,1+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27#:^#?#???????????????,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248872 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDc0.

Module LibSegNs_ad_fuDc1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248872].
Definition STOPS1 : list Z := [248872] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#1$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 10 18446744073709551615].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-294), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-294), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<28#3<<28#5=#3<<28,20#$1+$2-140$3$4+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30$6$7$24#2&6/3$27^#<#<<<<<<<<<<<<<<=#3^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#1$27+$2-126$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-126,1+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27#:^#?#???????????????,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248872 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDc1.

Module LibSegNs_ad_fuDc10.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248872].
Definition STOPS1 : list Z := [248872] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#:$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 10 18446744073709551615].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-285), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-285), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<28#3<<28#5=#3<<28,20#$1+$2-140$3$4+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30$6$7$24#;&6/3$27^#<#<<<<<<<<<<<<<<=#3^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#:$27+$2-11=$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-11=,1+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27#:^#?#???????????????,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248872 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDc10.

Module LibSegNs_ad_fuDc11.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248872].
Definition STOPS1 : list Z := [248872] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#;$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 10 18446744073709551615].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-284), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-284), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<28#3<<28#5=#3<<28,20#$1+$2-140$3$4+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30$6$7$24#<&6/3$27^#<#<<<<<<<<<<<<<<=#3^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#;$27+$2-11<$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-11<,1+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27#:^#?#???????????????,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248872 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDc11.

Module LibSegNs_ad_fuDc12.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248872].
Definition STOPS1 : list Z := [248872] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#<$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 10 18446744073709551615].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-283), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-283), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<28#3<<28#5=#3<<28,20#$1+$2-140$3$4+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30$6$7$24#=&6/3$27^#<#<<<<<<<<<<<<<<=#3^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#<$27+$2-11;$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-11;,1+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27#:^#?#???????????????,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248872 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDc12.

Module LibSegNs_ad_fuDc13.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248872].
Definition STOPS1 : list Z := [248872] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#=$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 10 18446744073709551615].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-282), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-282), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<28#3<<28#5=#3<<28,20#$1+$2-140$3$4+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30$6$7$24#>&6/3$27^#<#<<<<<<<<<<<<<<=#3^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#=$27+$2-11:$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-11:,1+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27#:^#?#???????????????,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248872 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDc13.

Module LibSegNs_ad_fuDc14.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248872].
Definition STOPS1 : list Z := [248872] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#>$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 10 18446744073709551615].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-281), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-281), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<28#3<<28#5=#3<<28,20#$1+$2-140$3$4+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30$6$7$24#?&6/3$27^#<#<<<<<<<<<<<<<<=#3^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#>$27+$2-119$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-119,1+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27#:^#?#???????????????,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248872 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDc14.

Module LibSegNs_ad_fuDc15.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248872].
Definition STOPS1 : list Z := [248872] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#?$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 10 18446744073709551615].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-280), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-280), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<28#3<<28#5=#3<<28,20#$1+$2-140$3$4+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30$6$7$24#10&6/3$27^#<#<<<<<<<<<<<<<<=#3^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#?$27+$2-118$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-118,1+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27#:^#?#???????????????,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248872 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDc15.

Module LibSegNs_ad_fuDc16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248872].
Definition STOPS1 : list Z := [248872] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#10$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 10 18446744073709551615].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-279), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-279), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<28#3<<28#5=#3<<28,20#$1+$2-140$3$4+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30$6$7$24#11&6/3$27^#<#<<<<<<<<<<<<<<=#3^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#10$27+$2-117$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-117,1+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27#:^#?#???????????????,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248872 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDc16.

Module LibSegNs_ad_fuDc17.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248872].
Definition STOPS1 : list Z := [248872] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#11$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 10 18446744073709551615].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-278), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-278), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<28#3<<28#5=#3<<28,20#$1+$2-140$3$4+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30$6$7$24#12&6/3$27^#<#<<<<<<<<<<<<<<=#3^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#11$27+$2-116$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-116,1+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27#:^#?#???????????????,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248872 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDc17.

Module LibSegNs_ad_fuDc18.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248872].
Definition STOPS1 : list Z := [248872] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#12$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 10 18446744073709551615].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-277), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-277), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<28#3<<28#5=#3<<28,20#$1+$2-140$3$4+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30$6$7$24#13&6/3$27^#<#<<<<<<<<<<<<<<=#3^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#12$27+$2-115$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-115,1+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27#:^#?#???????????????,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248872 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDc18.

Module LibSegNs_ad_fuDc2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248872].
Definition STOPS1 : list Z := [248872] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#2$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 10 18446744073709551615].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-293), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-293), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<28#3<<28#5=#3<<28,20#$1+$2-140$3$4+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30$6$7$24#3&6/3$27^#<#<<<<<<<<<<<<<<=#3^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#2$27+$2-125$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-125,1+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27#:^#?#???????????????,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248872 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDc2.

Module LibSegNs_ad_fuDc3.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248872].
Definition STOPS1 : list Z := [248872] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#3$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 10 18446744073709551615].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-292), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-292), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<28#3<<28#5=#3<<28,20#$1+$2-140$3$4+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30$6$7$24#4&6/3$27^#<#<<<<<<<<<<<<<<=#3^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#3$27+$2-124$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-124,1+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27#:^#?#???????????????,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248872 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDc3.

End BndP_Ns_102.
Module BndP_Ns_103.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Plain.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKit.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Ns_103 () := "C47Corelib5Lists7ListDef3mapC5ARocqVerifyHarness?AgentSubmission7Mh_01126LibSym7itab_ofK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC6ARocqVerifyHarnessATaskSpecification8ProblemsWSrc_jsoncons_fuzz_msgpack_encoder_repro1M?loaded_segmentsC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc42BFC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc43NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc42BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc45XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc42F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc43PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc44planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc45regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc43kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc43ITRK47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc52BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc53NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc52BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc55XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc52F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc53PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc54planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc55regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc53kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc53ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc62BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc63NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc62BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc65XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc62F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc63PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc64planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc65regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc63kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc63ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc72BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc73NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc72BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc75XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc72F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc73PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc74planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc75regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc73kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc73ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc82BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc83NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc82BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc85XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc82F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc83PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc84planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc85regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc83kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc83ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc92BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc93NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc92BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc95XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc92F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc93PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc94planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc95regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc93kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDc93ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDx02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDx03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDx02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDx05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDx02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDx03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDx04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDx05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDx03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDx03ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDx12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDx13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDx12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDx15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDx12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDx13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDx14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDx15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDx13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103ALibSegNs_ad_fuDx13ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx102BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx103NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx102BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx105XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx102F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx103PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx104planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx105regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx103kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx103ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx112BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx113NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx112BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx115XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx112F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx113PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx114planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx115regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx113kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx113ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx122BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx123NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx122BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx125XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx122F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx123PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx124planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx125regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx123kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx123ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx132BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx133NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx132BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx135XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx132F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx133PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx134planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx135regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx133kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx133ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx142BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx143NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx142BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx145XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx142F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx143PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx144planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx145regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx143kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx143ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx152BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx153NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx152BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx155XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx152F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx153PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx154planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx155regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx153kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_103BLibSegNs_ad_fuDx153ITR".

Module LibSegNs_ad_fuDc4.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248872].
Definition STOPS1 : list Z := [248872] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#4$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 10 18446744073709551615].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-291), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-291), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<28#3<<28#5=#3<<28,20#$1+$2-140$3$4+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30$6$7$24#5&6/3$27^#<#<<<<<<<<<<<<<<=#3^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#4$27+$2-123$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-123,1+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27#:^#?#???????????????,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248872 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDc4.

Module LibSegNs_ad_fuDc5.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248872].
Definition STOPS1 : list Z := [248872] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#5$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 10 18446744073709551615].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-290), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-290), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<28#3<<28#5=#3<<28,20#$1+$2-140$3$4+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30$6$7$24#6&6/3$27^#<#<<<<<<<<<<<<<<=#3^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#5$27+$2-122$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-122,1+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27#:^#?#???????????????,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248872 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDc5.

Module LibSegNs_ad_fuDc6.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248872].
Definition STOPS1 : list Z := [248872] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#6$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 10 18446744073709551615].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-289), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-289), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<28#3<<28#5=#3<<28,20#$1+$2-140$3$4+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30$6$7$24#7&6/3$27^#<#<<<<<<<<<<<<<<=#3^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#6$27+$2-121$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-121,1+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27#:^#?#???????????????,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248872 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDc6.

Module LibSegNs_ad_fuDc7.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248872].
Definition STOPS1 : list Z := [248872] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#7$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 10 18446744073709551615].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-288), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-288), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<28#3<<28#5=#3<<28,20#$1+$2-140$3$4+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30$6$7$24#8&6/3$27^#<#<<<<<<<<<<<<<<=#3^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#7$27+$2-120$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-120,1+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27#:^#?#???????????????,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248872 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDc7.

Module LibSegNs_ad_fuDc8.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248872].
Definition STOPS1 : list Z := [248872] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#8$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 10 18446744073709551615].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-287), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-287), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<28#3<<28#5=#3<<28,20#$1+$2-140$3$4+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30$6$7$24#9&6/3$27^#<#<<<<<<<<<<<<<<=#3^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#8$27+$2-11?$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-11?,1+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27#:^#?#???????????????,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248872 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDc8.

Module LibSegNs_ad_fuDc9.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248872].
Definition STOPS1 : list Z := [248872] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#9$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 10 18446744073709551615].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-286), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-286), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<28#3<<28#5=#3<<28,20#$1+$2-140$3$4+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30$6$7$24#:&6/3$27^#<#<<<<<<<<<<<<<<=#3^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#9$27+$2-11>$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-11>,1+&9%1$27@#:&6/3$27^#<#<<<<<<<<<<<<<<=#3-31#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27#:^#?#???????????????,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248872 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDc9.

Module LibSegNs_ad_fuDx0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 0 9].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-295), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-295), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4+$27#30$6$7$24#1#??^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#$27+$2-127+$2-127+$2-127$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-127,1+$27#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27##9,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDx0.

Module LibSegNs_ad_fuDx1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#1$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 0 9].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-294), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-294), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4+$27#30$6$7$24#2#??^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#1$27+$2-126+$2-127+$2-126$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-126,1+$27#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27##9,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDx1.

Module LibSegNs_ad_fuDx10.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#:$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 0 9].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-285), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-285), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4+$27#30$6$7$24#;#??^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#:$27+$2-11=+$2-127+$2-11=$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-11=,1+$27#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27##9,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDx10.

Module LibSegNs_ad_fuDx11.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#;$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 0 9].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-284), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-284), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4+$27#30$6$7$24#<#??^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#;$27+$2-11<+$2-127+$2-11<$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-11<,1+$27#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27##9,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDx11.

Module LibSegNs_ad_fuDx12.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#<$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 0 9].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-283), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-283), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4+$27#30$6$7$24#=#??^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#<$27+$2-11;+$2-127+$2-11;$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-11;,1+$27#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27##9,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDx12.

Module LibSegNs_ad_fuDx13.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#=$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 0 9].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-282), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-282), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4+$27#30$6$7$24#>#??^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#=$27+$2-11:+$2-127+$2-11:$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-11:,1+$27#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27##9,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDx13.

Module LibSegNs_ad_fuDx14.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#>$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 0 9].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-281), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-281), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4+$27#30$6$7$24#?#??^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#>$27+$2-119+$2-127+$2-119$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-119,1+$27#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27##9,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDx14.

Module LibSegNs_ad_fuDx15.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#?$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 0 9].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-280), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-280), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4+$27#30$6$7$24#10#??^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#?$27+$2-118+$2-127+$2-118$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-118,1+$27#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27##9,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDx15.

End BndP_Ns_103.
Module BndP_Ns_104.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Plain.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKit.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Ns_104 () := "C47Corelib5Lists7ListDef3mapC5ARocqVerifyHarness?AgentSubmission7Mh_01126LibSym7itab_ofK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC6ARocqVerifyHarnessATaskSpecification8ProblemsWSrc_jsoncons_fuzz_msgpack_encoder_repro1M?loaded_segmentsC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx162BFC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx165XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx163ITRK47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx172BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx173NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx172BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx175XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx172F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx173PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx174planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx175regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx173kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx173ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx182BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx183NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx182BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx185XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx182F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx183PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx184planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx185regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx183kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx183ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx192BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx193NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx192BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx195XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx192F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx193PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx194planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx195regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx193kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104BLibSegNs_ad_fuDx193ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx23ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx32BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx33NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx32BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx35XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx32F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx33PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx34planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx35regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx33kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx33ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx42BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx43NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx42BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx45XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx42F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx43PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx44planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx45regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx43kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx43ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx52BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx53NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx52BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx55XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx52F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx53PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx54planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx55regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx53kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx53ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx62BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx63NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx62BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx65XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx62F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx63PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx64planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx65regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx63kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx63ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx72BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx73NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx72BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx75XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx72F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx73PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx74planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx75regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx73kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx73ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx82BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx83NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx82BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx85XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx82F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx83PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx84planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx85regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx83kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx83ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx92BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx93NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx92BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx95XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx92F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx93PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx94planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx95regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx93kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuDx93ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104?LibSegNs_ad_fuE2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104?LibSegNs_ad_fuE3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104?LibSegNs_ad_fuE2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104?LibSegNs_ad_fuE5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104?LibSegNs_ad_fuE2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104?LibSegNs_ad_fuE3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104?LibSegNs_ad_fuE4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104?LibSegNs_ad_fuE5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104?LibSegNs_ad_fuE3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104?LibSegNs_ad_fuE3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuLb02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuLb03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuLb02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuLb05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuLb02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuLb03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuLb04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuLb05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuLb03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_104ALibSegNs_ad_fuLb03ITR".

Module LibSegNs_ad_fuDx16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#10$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 0 9].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-279), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-279), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4+$27#30$6$7$24#11#??^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#10$27+$2-117+$2-127+$2-117$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-117,1+$27#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27##9,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDx16.

Module LibSegNs_ad_fuDx17.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#11$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 0 9].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-278), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-278), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4+$27#30$6$7$24#12#??^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#11$27+$2-116+$2-127+$2-116$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-116,1+$27#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27##9,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDx17.

Module LibSegNs_ad_fuDx18.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#12$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 0 9].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-277), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-277), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4+$27#30$6$7$24#13#??^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#12$27+$2-115+$2-127+$2-115$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-115,1+$27#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27##9,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDx18.

Module LibSegNs_ad_fuDx19.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#13$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 0 9].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-276), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-276), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4+$27#30$6$7$24#14#??^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#13$27+$2-114+$2-127+$2-114$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-114,1+$27#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27##9,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDx19.

Module LibSegNs_ad_fuDx2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#2$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 0 9].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-293), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-293), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4+$27#30$6$7$24#3#??^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#2$27+$2-125+$2-127+$2-125$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-125,1+$27#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27##9,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDx2.

Module LibSegNs_ad_fuDx3.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#3$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 0 9].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-292), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-292), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4+$27#30$6$7$24#4#??^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#3$27+$2-124+$2-127+$2-124$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-124,1+$27#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27##9,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDx3.

Module LibSegNs_ad_fuDx4.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#4$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 0 9].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-291), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-291), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4+$27#30$6$7$24#5#??^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#4$27+$2-123+$2-127+$2-123$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-123,1+$27#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27##9,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDx4.

Module LibSegNs_ad_fuDx5.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#5$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 0 9].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-290), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-290), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4+$27#30$6$7$24#6#??^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#5$27+$2-122+$2-127+$2-122$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-122,1+$27#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27##9,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDx5.

Module LibSegNs_ad_fuDx6.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#6$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 0 9].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-289), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-289), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4+$27#30$6$7$24#7#??^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#6$27+$2-121+$2-127+$2-121$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-121,1+$27#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27##9,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDx6.

Module LibSegNs_ad_fuDx7.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#7$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 0 9].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-288), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-288), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4+$27#30$6$7$24#8#??^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#7$27+$2-120+$2-127+$2-120$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-120,1+$27#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27##9,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDx7.

Module LibSegNs_ad_fuDx8.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#8$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 0 9].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-287), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-287), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4+$27#30$6$7$24#9#??^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#8$27+$2-11?+$2-127+$2-11?$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-11?,1+$27#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27##9,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDx8.

Module LibSegNs_ad_fuDx9.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24#9$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KRange (EVar 39) 0 9].
Definition ss0 : sym_state := SS 248828 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-286), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-286), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4+$27#30$6$7$24#:#??^#<#<<<<<<<<<<<<<<=+$2-127#:#?>#9$27+$2-11>+$2-127+$2-11>$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5!$2-11>,1+$27#30'$2#7???7?800140#800000000000&$2#10($2-140#140'$27##9,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248828 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248828 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuDx9.

Module LibSegNs_ad_fuE.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248828].
Definition STOPS1 : list Z := [248828] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 39; EVar 36; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KImg 65536 814272].
Definition ss0 : sym_state := SS 248776 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-40), ELit 40)].
Definition F0L : list SR.region := [((EVar 2), (-40), 40)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<;?<#3<;?<#5=#3<;?<,20#$1+$2-140$3$4$5$6$7$24#$27^#<#<<<<<<<<<<<<<<=+$2-127#:#?>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,9!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800140#800000000000&$2#10($2-140#140%#10000#<6<<0,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248828 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248776 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248776 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuE.

Module LibSegNs_ad_fuLb0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-126$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320)].
Definition ss0 : sym_state := SS 248912 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-127$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800140#800000000000&$2#10($2-140#140,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248912 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248912 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLb0.

End BndP_Ns_104.
Module BndP_Ns_105.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Plain.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKit.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Ns_105 () := "C47Corelib5Lists7ListDef3mapC5ARocqVerifyHarness?AgentSubmission7Mh_01126LibSym7itab_ofK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC6ARocqVerifyHarnessATaskSpecification8ProblemsWSrc_jsoncons_fuzz_msgpack_encoder_repro1M?loaded_segmentsC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb12BFC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb15XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb13ITRK47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb102BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb103NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb102BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb105XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb102F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb103PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb104planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb105regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb103kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb103ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb112BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb113NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb112BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb115XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb112F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb113PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb114planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb115regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb113kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb113ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb122BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb123NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb122BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb125XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb122F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb123PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb124planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb125regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb123kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb123ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb132BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb133NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb132BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb135XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb132F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb133PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb134planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb135regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb133kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb133ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb142BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb143NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb142BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb145XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb142F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb143PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb144planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb145regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb143kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb143ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb152BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb153NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb152BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb155XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb152F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb153PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb154planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb155regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb153kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb153ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb163ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb172BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb173NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb172BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb175XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb172F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb173PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb174planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb175regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb173kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb173ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb182BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb183NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb182BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb185XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb182F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb183PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb184planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb185regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb183kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105BLibSegNs_ad_fuLb183ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb23ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb32BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb33NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb32BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb35XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb32F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb33PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb34planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb35regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb33kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb33ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb42BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb43NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb42BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb45XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb42F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb43PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb44planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb45regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb43kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb43ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb52BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb53NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb52BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb55XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb52F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb53PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb54planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb55regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb53kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_105ALibSegNs_ad_fuLb53ITR".

Module LibSegNs_ad_fuLb1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-125$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320)].
Definition ss0 : sym_state := SS 248912 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-126$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800140#800000000000&$2#10($2-140#140,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248912 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248912 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLb1.

Module LibSegNs_ad_fuLb10.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-11<$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320)].
Definition ss0 : sym_state := SS 248912 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-11=$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800140#800000000000&$2#10($2-140#140,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248912 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248912 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLb10.

Module LibSegNs_ad_fuLb11.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-11;$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320)].
Definition ss0 : sym_state := SS 248912 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-11<$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800140#800000000000&$2#10($2-140#140,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248912 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248912 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLb11.

Module LibSegNs_ad_fuLb12.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-11:$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320)].
Definition ss0 : sym_state := SS 248912 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-11;$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800140#800000000000&$2#10($2-140#140,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248912 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248912 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLb12.

Module LibSegNs_ad_fuLb13.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-119$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320)].
Definition ss0 : sym_state := SS 248912 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-11:$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800140#800000000000&$2#10($2-140#140,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248912 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248912 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLb13.

Module LibSegNs_ad_fuLb14.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-118$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320)].
Definition ss0 : sym_state := SS 248912 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-119$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800140#800000000000&$2#10($2-140#140,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248912 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248912 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLb14.

Module LibSegNs_ad_fuLb15.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-117$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320)].
Definition ss0 : sym_state := SS 248912 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-118$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800140#800000000000&$2#10($2-140#140,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248912 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248912 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLb15.

Module LibSegNs_ad_fuLb16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-116$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320)].
Definition ss0 : sym_state := SS 248912 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-117$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800140#800000000000&$2#10($2-140#140,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248912 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248912 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLb16.

Module LibSegNs_ad_fuLb17.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-115$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320)].
Definition ss0 : sym_state := SS 248912 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-116$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800140#800000000000&$2#10($2-140#140,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248912 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248912 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLb17.

Module LibSegNs_ad_fuLb18.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-114$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320)].
Definition ss0 : sym_state := SS 248912 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-115$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800140#800000000000&$2#10($2-140#140,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248912 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248912 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLb18.

Module LibSegNs_ad_fuLb2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-124$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320)].
Definition ss0 : sym_state := SS 248912 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-125$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800140#800000000000&$2#10($2-140#140,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248912 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248912 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLb2.

Module LibSegNs_ad_fuLb3.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-123$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320)].
Definition ss0 : sym_state := SS 248912 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-124$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800140#800000000000&$2#10($2-140#140,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248912 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248912 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLb3.

Module LibSegNs_ad_fuLb4.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-122$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320)].
Definition ss0 : sym_state := SS 248912 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-123$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800140#800000000000&$2#10($2-140#140,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248912 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248912 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLb4.

Module LibSegNs_ad_fuLb5.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-121$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320)].
Definition ss0 : sym_state := SS 248912 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-122$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800140#800000000000&$2#10($2-140#140,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248912 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248912 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLb5.

End BndP_Ns_105.
Module BndP_Ns_106.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Plain.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKit.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Ns_106 () := "C47Corelib5Lists7ListDef3mapC5ARocqVerifyHarness?AgentSubmission7Mh_01126LibSym7itab_ofK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC6ARocqVerifyHarnessATaskSpecification8ProblemsWSrc_jsoncons_fuzz_msgpack_encoder_repro1M?loaded_segmentsC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb62BFC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb63NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb62BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb65XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb62F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb63PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb64planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb65regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb63kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb63ITRK47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb72BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb73NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb72BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb75XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb72F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb73PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb74planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb75regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb73kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb73ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb82BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb83NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb82BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb85XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb82F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb83PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb84planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb85regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb83kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb83ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb92BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb93NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb92BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb95XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb92F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb93PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb94planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb95regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb93kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLb93ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLl02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLl03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLl02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLl05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLl02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLl03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLl04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLl05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLl03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLl03ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLl12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLl13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLl12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLl15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLl12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLl13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLl14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLl15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLl13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106ALibSegNs_ad_fuLl13ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl102BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl103NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl102BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl105XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl102F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl103PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl104planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl105regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl103kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl103ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl112BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl113NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl112BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl115XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl112F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl113PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl114planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl115regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl113kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl113ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl122BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl123NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl122BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl125XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl122F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl123PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl124planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl125regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl123kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl123ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl132BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl133NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl132BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl135XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl132F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl133PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl134planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl135regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl133kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl133ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl142BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl143NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl142BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl145XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl142F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl143PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl144planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl145regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl143kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl143ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl152BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl153NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl152BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl155XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl152F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl153PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl154planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl155regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl153kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl153ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl162BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl163NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl162BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl165XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl162F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl163PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl164planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl165regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl163kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl163ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl172BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl173NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl172BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl175XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl172F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl173PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl174planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl175regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl173kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_106BLibSegNs_ad_fuLl173ITR".

Module LibSegNs_ad_fuLb6.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-120$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320)].
Definition ss0 : sym_state := SS 248912 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-121$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800140#800000000000&$2#10($2-140#140,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248912 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248912 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLb6.

Module LibSegNs_ad_fuLb7.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-11?$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320)].
Definition ss0 : sym_state := SS 248912 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-120$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800140#800000000000&$2#10($2-140#140,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248912 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248912 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLb7.

Module LibSegNs_ad_fuLb8.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-11>$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320)].
Definition ss0 : sym_state := SS 248912 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-11?$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800140#800000000000&$2#10($2-140#140,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248912 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248912 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLb8.

Module LibSegNs_ad_fuLb9.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248900].
Definition STOPS1 : list Z := [248900] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-11=$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320)].
Definition ss0 : sym_state := SS 248912 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<44#3<<44#5=#3<<44,20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11+$2-127+$2-11>$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800140#800000000000&$2#10($2-140#140,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248900 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248912 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248912 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLb9.

Module LibSegNs_ad_fuLl0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12+$2-127$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KWord (SA (EVar 2) (-295)) 1 (EVar 46);
   KRange (EVar 46) 0 255].
Definition ss0 : sym_state := SS 248900 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3<<50+$2-140$3$4$5$6$7$24$9$24$2>$<$=$>$?$10$11$12+$2-127$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$2#7???7?800140#800000000000&$2#10($2-140#140!$2-127,1$2>'$2>##??,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248900 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248900 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLl0.

Module LibSegNs_ad_fuLl1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12+$2-126$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KWord (SA (EVar 2) (-294)) 1 (EVar 46);
   KRange (EVar 46) 0 255].
Definition ss0 : sym_state := SS 248900 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3<<50+$2-140$3$4$5$6$7$24$9$24$2>$<$=$>$?$10$11$12+$2-126$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$2#7???7?800140#800000000000&$2#10($2-140#140!$2-126,1$2>'$2>##??,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248900 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248900 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLl1.

Module LibSegNs_ad_fuLl10.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12+$2-11=$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KWord (SA (EVar 2) (-285)) 1 (EVar 46);
   KRange (EVar 46) 0 255].
Definition ss0 : sym_state := SS 248900 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3<<50+$2-140$3$4$5$6$7$24$9$24$2>$<$=$>$?$10$11$12+$2-11=$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$2#7???7?800140#800000000000&$2#10($2-140#140!$2-11=,1$2>'$2>##??,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248900 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248900 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLl10.

Module LibSegNs_ad_fuLl11.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12+$2-11<$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KWord (SA (EVar 2) (-284)) 1 (EVar 46);
   KRange (EVar 46) 0 255].
Definition ss0 : sym_state := SS 248900 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3<<50+$2-140$3$4$5$6$7$24$9$24$2>$<$=$>$?$10$11$12+$2-11<$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$2#7???7?800140#800000000000&$2#10($2-140#140!$2-11<,1$2>'$2>##??,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248900 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248900 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLl11.

Module LibSegNs_ad_fuLl12.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12+$2-11;$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KWord (SA (EVar 2) (-283)) 1 (EVar 46);
   KRange (EVar 46) 0 255].
Definition ss0 : sym_state := SS 248900 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3<<50+$2-140$3$4$5$6$7$24$9$24$2>$<$=$>$?$10$11$12+$2-11;$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$2#7???7?800140#800000000000&$2#10($2-140#140!$2-11;,1$2>'$2>##??,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248900 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248900 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLl12.

Module LibSegNs_ad_fuLl13.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12+$2-11:$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KWord (SA (EVar 2) (-282)) 1 (EVar 46);
   KRange (EVar 46) 0 255].
Definition ss0 : sym_state := SS 248900 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3<<50+$2-140$3$4$5$6$7$24$9$24$2>$<$=$>$?$10$11$12+$2-11:$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$2#7???7?800140#800000000000&$2#10($2-140#140!$2-11:,1$2>'$2>##??,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248900 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248900 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLl13.

Module LibSegNs_ad_fuLl14.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12+$2-119$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KWord (SA (EVar 2) (-281)) 1 (EVar 46);
   KRange (EVar 46) 0 255].
Definition ss0 : sym_state := SS 248900 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3<<50+$2-140$3$4$5$6$7$24$9$24$2>$<$=$>$?$10$11$12+$2-119$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$2#7???7?800140#800000000000&$2#10($2-140#140!$2-119,1$2>'$2>##??,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248900 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248900 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLl14.

Module LibSegNs_ad_fuLl15.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12+$2-118$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KWord (SA (EVar 2) (-280)) 1 (EVar 46);
   KRange (EVar 46) 0 255].
Definition ss0 : sym_state := SS 248900 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3<<50+$2-140$3$4$5$6$7$24$9$24$2>$<$=$>$?$10$11$12+$2-118$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$2#7???7?800140#800000000000&$2#10($2-140#140!$2-118,1$2>'$2>##??,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248900 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248900 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLl15.

Module LibSegNs_ad_fuLl16.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12+$2-117$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KWord (SA (EVar 2) (-279)) 1 (EVar 46);
   KRange (EVar 46) 0 255].
Definition ss0 : sym_state := SS 248900 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3<<50+$2-140$3$4$5$6$7$24$9$24$2>$<$=$>$?$10$11$12+$2-117$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$2#7???7?800140#800000000000&$2#10($2-140#140!$2-117,1$2>'$2>##??,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248900 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248900 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLl16.

Module LibSegNs_ad_fuLl17.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12+$2-116$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KWord (SA (EVar 2) (-278)) 1 (EVar 46);
   KRange (EVar 46) 0 255].
Definition ss0 : sym_state := SS 248900 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3<<50+$2-140$3$4$5$6$7$24$9$24$2>$<$=$>$?$10$11$12+$2-116$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$2#7???7?800140#800000000000&$2#10($2-140#140!$2-116,1$2>'$2>##??,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248900 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248900 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLl17.

End BndP_Ns_106.
Module BndP_Ns_107.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Plain.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKit.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Ns_107 () := "C47Corelib5Lists7ListDef3mapC5ARocqVerifyHarness?AgentSubmission7Mh_01126LibSym7itab_ofK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC6ARocqVerifyHarnessATaskSpecification8ProblemsWSrc_jsoncons_fuzz_msgpack_encoder_repro1M?loaded_segmentsC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107BLibSegNs_ad_fuLl182BFC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107BLibSegNs_ad_fuLl183NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107BLibSegNs_ad_fuLl182BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107BLibSegNs_ad_fuLl185XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107BLibSegNs_ad_fuLl182F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107BLibSegNs_ad_fuLl183PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107BLibSegNs_ad_fuLl184planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107BLibSegNs_ad_fuLl185regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107BLibSegNs_ad_fuLl183kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107BLibSegNs_ad_fuLl183ITRK47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107BLibSegNs_ad_fuLl192BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107BLibSegNs_ad_fuLl193NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107BLibSegNs_ad_fuLl192BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107BLibSegNs_ad_fuLl195XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107BLibSegNs_ad_fuLl192F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107BLibSegNs_ad_fuLl193PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107BLibSegNs_ad_fuLl194planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107BLibSegNs_ad_fuLl195regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107BLibSegNs_ad_fuLl193kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107BLibSegNs_ad_fuLl193ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl23ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl32BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl33NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl32BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl35XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl32F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl33PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl34planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl35regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl33kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl33ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl42BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl43NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl42BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl45XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl42F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl43PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl44planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl45regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl43kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl43ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl52BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl53NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl52BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl55XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl52F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl53PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl54planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl55regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl53kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl53ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl62BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl63NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl62BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl65XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl62F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl63PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl64planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl65regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl63kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl63ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl72BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl73NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl72BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl75XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl72F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl73PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl74planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl75regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl73kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl73ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl82BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl83NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl82BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl85XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl82F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl83PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl84planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl85regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl83kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl83ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl92BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl93NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl92BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl95XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl92F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl93PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl94planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl95regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl93kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107ALibSegNs_ad_fuLl93ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107@LibSegNs_ad_fuLx2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107@LibSegNs_ad_fuLx3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107@LibSegNs_ad_fuLx2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107@LibSegNs_ad_fuLx5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107@LibSegNs_ad_fuLx2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107@LibSegNs_ad_fuLx3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107@LibSegNs_ad_fuLx4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107@LibSegNs_ad_fuLx5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107@LibSegNs_ad_fuLx3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107@LibSegNs_ad_fuLx3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107<LibSegNs_dtA2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107<LibSegNs_dtA3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107<LibSegNs_dtA2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107<LibSegNs_dtA5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107<LibSegNs_dtA2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107<LibSegNs_dtA3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107<LibSegNs_dtA4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107<LibSegNs_dtA5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107<LibSegNs_dtA3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107<LibSegNs_dtA3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107=LibSegNs_dtBl2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107=LibSegNs_dtBl3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107=LibSegNs_dtBl2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107=LibSegNs_dtBl5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107=LibSegNs_dtBl2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107=LibSegNs_dtBl3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107=LibSegNs_dtBl4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107=LibSegNs_dtBl5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107=LibSegNs_dtBl3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107=LibSegNs_dtBl3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107=LibSegNs_dtBs2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107=LibSegNs_dtBs3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107=LibSegNs_dtBs2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107=LibSegNs_dtBs5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107=LibSegNs_dtBs2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107=LibSegNs_dtBs3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107=LibSegNs_dtBs4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107=LibSegNs_dtBs5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107=LibSegNs_dtBs3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_107=LibSegNs_dtBs3ITR".

Module LibSegNs_ad_fuLl18.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12+$2-115$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KWord (SA (EVar 2) (-277)) 1 (EVar 46);
   KRange (EVar 46) 0 255].
Definition ss0 : sym_state := SS 248900 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3<<50+$2-140$3$4$5$6$7$24$9$24$2>$<$=$>$?$10$11$12+$2-115$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$2#7???7?800140#800000000000&$2#10($2-140#140!$2-115,1$2>'$2>##??,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248900 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248900 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLl18.

Module LibSegNs_ad_fuLl19.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12+$2-114$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KWord (SA (EVar 2) (-276)) 1 (EVar 46);
   KRange (EVar 46) 0 255].
Definition ss0 : sym_state := SS 248900 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3<<50+$2-140$3$4$5$6$7$24$9$24$2>$<$=$>$?$10$11$12+$2-114$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$2#7???7?800140#800000000000&$2#10($2-140#140!$2-114,1$2>'$2>##??,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248900 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248900 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLl19.

Module LibSegNs_ad_fuLl2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12+$2-125$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KWord (SA (EVar 2) (-293)) 1 (EVar 46);
   KRange (EVar 46) 0 255].
Definition ss0 : sym_state := SS 248900 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3<<50+$2-140$3$4$5$6$7$24$9$24$2>$<$=$>$?$10$11$12+$2-125$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$2#7???7?800140#800000000000&$2#10($2-140#140!$2-125,1$2>'$2>##??,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248900 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248900 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLl2.

Module LibSegNs_ad_fuLl3.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12+$2-124$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KWord (SA (EVar 2) (-292)) 1 (EVar 46);
   KRange (EVar 46) 0 255].
Definition ss0 : sym_state := SS 248900 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3<<50+$2-140$3$4$5$6$7$24$9$24$2>$<$=$>$?$10$11$12+$2-124$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$2#7???7?800140#800000000000&$2#10($2-140#140!$2-124,1$2>'$2>##??,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248900 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248900 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLl3.

Module LibSegNs_ad_fuLl4.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12+$2-123$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KWord (SA (EVar 2) (-291)) 1 (EVar 46);
   KRange (EVar 46) 0 255].
Definition ss0 : sym_state := SS 248900 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3<<50+$2-140$3$4$5$6$7$24$9$24$2>$<$=$>$?$10$11$12+$2-123$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$2#7???7?800140#800000000000&$2#10($2-140#140!$2-123,1$2>'$2>##??,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248900 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248900 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLl4.

Module LibSegNs_ad_fuLl5.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12+$2-122$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KWord (SA (EVar 2) (-290)) 1 (EVar 46);
   KRange (EVar 46) 0 255].
Definition ss0 : sym_state := SS 248900 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3<<50+$2-140$3$4$5$6$7$24$9$24$2>$<$=$>$?$10$11$12+$2-122$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$2#7???7?800140#800000000000&$2#10($2-140#140!$2-122,1$2>'$2>##??,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248900 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248900 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLl5.

Module LibSegNs_ad_fuLl6.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12+$2-121$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KWord (SA (EVar 2) (-289)) 1 (EVar 46);
   KRange (EVar 46) 0 255].
Definition ss0 : sym_state := SS 248900 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3<<50+$2-140$3$4$5$6$7$24$9$24$2>$<$=$>$?$10$11$12+$2-121$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$2#7???7?800140#800000000000&$2#10($2-140#140!$2-121,1$2>'$2>##??,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248900 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248900 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLl6.

Module LibSegNs_ad_fuLl7.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12+$2-120$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KWord (SA (EVar 2) (-288)) 1 (EVar 46);
   KRange (EVar 46) 0 255].
Definition ss0 : sym_state := SS 248900 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3<<50+$2-140$3$4$5$6$7$24$9$24$2>$<$=$>$?$10$11$12+$2-120$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$2#7???7?800140#800000000000&$2#10($2-140#140!$2-120,1$2>'$2>##??,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248900 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248900 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLl7.

Module LibSegNs_ad_fuLl8.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12+$2-11?$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KWord (SA (EVar 2) (-287)) 1 (EVar 46);
   KRange (EVar 46) 0 255].
Definition ss0 : sym_state := SS 248900 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3<<50+$2-140$3$4$5$6$7$24$9$24$2>$<$=$>$?$10$11$12+$2-11?$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$2#7???7?800140#800000000000&$2#10($2-140#140!$2-11?,1$2>'$2>##??,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248900 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248900 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLl8.

Module LibSegNs_ad_fuLl9.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12+$2-11>$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483392 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-320)) (ELit 320);
   KWord (SA (EVar 2) (-286)) 1 (EVar 46);
   KRange (EVar 46) 0 255].
Definition ss0 : sym_state := SS 248900 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3<<50+$2-140$3$4$5$6$7$24$9$24$2>$<$=$>$?$10$11$12+$2-11>$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$2#7???7?800140#800000000000&$2#10($2-140#140!$2-11>,1$2>'$2>##??,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248900 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248900 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLl9.

Module LibSegNs_ad_fuLx.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(248776, 43%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [248944].
Definition STOPS1 : list Z := [248944] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-140$3$4$5$6$7$24$2=$:$;$<$=$>$?$10$11+$2-127+$2-127$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",8'$2#7???7?800140#800000000000&$2#10($2-140#140!$2-8,8$28!$2-10,8$29!$2-18,8$2:!$2-20,8$2;!$2-28,8$2<"%pstring).
Definition ss0 : sym_state := SS 248912 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<70#3<<70#5=#3<<70,20#$28$2$3$4$5$6$7$29$2:$2=$;$<$=$>$?$10$11$2;$2<$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,8'$2#7???7?800140#800000000000&$2#10($2-140#140!$2-8,8$28!$2-10,8$29!$2-18,8$2:!$2-20,8$2;!$2-28,8$2<,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248944 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 248912 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 248912 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_fuLx.

Module LibSegNs_dtA.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(234796, 54%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [409028].
Definition STOPS1 : list Z := [409028] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$2#7???7?800010#800000000000&$2#10($2-10#10'$21#7???7?800010#7????????>08&$21#8)$2-10#10$21##1?8($21##1?0%#10000#<6<<0!$21#1=8,8$25!$21#1>8,8$27'$25#1000#800000000000"%pstring).
Definition ss0 : sym_state := SS 234796 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-16), ELit 16); ((EVar 33), (400), ELit 8); ((EVar 33), (480), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-16), 16); ((EVar 33), (400), 8); ((EVar 33), (480), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#63=<4#63=<4#5=#63=<4,20##39560+$2-10$3$4$5$6$7$21$9$25+@-1$25$27$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,?!$21#1>0,8$25!$21#190,8#;?:88!$2-10,8$8!$2-8,8$1'$2#7???7?800010#800000000000&$2#10($2-10#10'$21#7???7?800010#7????????>08&$21#8)$2-10#10$21##1?8($21##1?0%#10000#<6<<0!$21#1=8,8$25!$21#1>8,8$27'$25#1000#800000000000,30!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 409028 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 234796 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 234796 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_dtA.

Module LibSegNs_dtBl.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(234796, 54%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [409028].
Definition STOPS1 : list Z := [409028] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-10$3$4$5$6$7$21$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",='$2#7???7?800010#800000000000&$2#10($2-10#10'$21#7???7?800010#7????????>08&$21#8)$2-10#10$21##1?8($21##1?0%#10000#<6<<0!$21#1<0,1$23'$23##??'&9$23#1#1#1,$21#1<1#7!$21#1=0,8$25"%pstring).
Definition ss0 : sym_state := SS 234848 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#63=<4#63=<4#5=#63=<4,20##3957<+$2-10$3$4$5$6$7$21$9$25@#2&6$30#1$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,='$2#7???7?800010#800000000000&$2#10($2-10#10'$21#7???7?800010#7????????>08&$21#8)$2-10#10$21##1?8($21##1?0%#10000#<6<<0!$21#1<0,1$23'$23##??'&9$23#1#1#1,$21#1<1#7!$21#1=0,8$25,31!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 409028 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 234848 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 234848 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_dtBl.

Module LibSegNs_dtBs.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(234796, 54%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [234876].
Definition STOPS1 : list Z := [234876] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-10$3$4$5$6$7$21$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$2#7???7?800010#800000000000&$2#10($2-10#10'$21#7???7?800010#7????????>08&$21#8)$2-10#10$21##1?8($21##1?0%#10000#<6<<0!$21#1<0,1$23'$23##??'&9$23#1##"%pstring).
Definition ss0 : sym_state := SS 234848 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3957<#3957<#5=#3957<,20#$1+$2-10$3$4$5$6$7$21$9#$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;'$2#7???7?800010#800000000000&$2#10($2-10#10'$21#7???7?800010#7????????>08&$21#8)$2-10#10$21##1?8($21##1?0%#10000#<6<<0!$21#1<0,1$23'$23##??'&9$23#1##,30!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 234876 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 234848 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 234848 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_dtBs.

End BndP_Ns_107.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Ns_001.
Module BndP_Ns_037.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Plain.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Ns_001.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Ns_037 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC6ARocqVerifyHarnessATaskSpecification8ProblemsWSrc_jsoncons_fuzz_msgpack_encoder_repro1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Ns_001ASegItab_Ns_7f7fc22ITC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A012BFC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A013NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A012BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A015XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A012F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A013PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A014planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A015regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A013kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A112BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A113NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A112BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A115XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A112F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A113PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A114planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A115regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A113kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A202BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A203NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A202BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A205XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A202F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A203PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A204planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A205regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A203kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A212BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A213NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A212BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A215XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A212F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A213PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A214planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A215regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6A213kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037?LibSegNs_ad_u6C2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037?LibSegNs_ad_u6C3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037?LibSegNs_ad_u6C2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037?LibSegNs_ad_u6C5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037?LibSegNs_ad_u6C2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037?LibSegNs_ad_u6C3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037?LibSegNs_ad_u6C4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037?LibSegNs_ad_u6C5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037?LibSegNs_ad_u6C3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Ns_001ASegItab_Ns_98dae32ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6Ed22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6Ed23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6Ed22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6Ed25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6Ed22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6Ed23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6Ed24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6Ed25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6Ed23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek0L2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek0L3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek0L2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek0L5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek0L2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek0L3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek0L4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek0L5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek0L3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek0S2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek0S3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek0S2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek0S5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek0S2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek0S3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek0S4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek0S5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek0S3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek1L2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek1L3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek1L2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek1L5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek1L2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek1L3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek1L4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek1L5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek1L3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek1S2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek1S3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek1S2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek1S5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek1S2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek1S3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek1S4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek1S5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037BLibSegNs_ad_u6Ek1S3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ILL2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ILL3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ILL2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ILL5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ILL2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ILL3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ILL4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ILL5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ILL3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ILS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ILS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ILS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ILS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ILS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ILS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ILS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ILS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ILS3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ISL2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ISL3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ISL2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ISL5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ISL2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ISL3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ISL4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ISL5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ISL3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ISS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ISS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ISS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ISS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ISS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ISS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ISS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ISS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_037ALibSegNs_ad_u6ISS3kn0".

Module LibSegNs_ad_u6A01.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_7f7fc2.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_7f7fc2.IT.
Definition ENDS : list Z := [237912].
Definition STOPS1 : list Z := [237912] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",17'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18##10000#>:000!$24#50,8$25!$25-14,4#!$25-10,4#1,$25-8#8!$2-8,8$28!$2-10,8$29!$2-18,8$2:!$2-20,8$2;!$2-28,8$2<!$2-30,8$35"%pstring).
Definition ss0 : sym_state := SS 237836 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3:158#3:158#5=#3:158,20#$28$2$3$4$5$6$7$29$2:#1#1##2$>$?$10$11$2;$2<$35$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,17!$25-8,8+$40#1'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18##10000#>:000!$24#50,8$25!$25-14,4#!$25-10,4#1!$2-8,8$28!$2-10,8$29!$2-18,8$2:!$2-20,8$2;!$2-28,8$2<!$2-30,8$35,41!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 237912 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_7f7fc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237836 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_7f7fc2.IT BndT_Ns_001.SegItab_Ns_7f7fc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 237836 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6A01.

Module LibSegNs_ad_u6A11.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_7f7fc2.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_7f7fc2.IT.
Definition ENDS : list Z := [237912].
Definition STOPS1 : list Z := [237912] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",17'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18##10000#>:000!$24#50,8$25!$25-14,4#1!$25-10,4#1,$25-8#8!$2-8,8$28!$2-10,8$29!$2-18,8$2:!$2-20,8$2;!$2-28,8$2<!$2-30,8$35"%pstring).
Definition ss0 : sym_state := SS 237836 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3:158#3:158#5=#3:158,20#$28$2$3$4$5$6$7$29$2:#1#1#1#2$>$?$10$11$2;$2<$35$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,17!$25-8,8+$40#1'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18##10000#>:000!$24#50,8$25!$25-14,4#1!$25-10,4#1!$2-8,8$28!$2-10,8$29!$2-18,8$2:!$2-20,8$2;!$2-28,8$2<!$2-30,8$35,41!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 237912 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_7f7fc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237836 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_7f7fc2.IT BndT_Ns_001.SegItab_Ns_7f7fc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 237836 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6A11.

Module LibSegNs_ad_u6A20.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_7f7fc2.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_7f7fc2.IT.
Definition ENDS : list Z := [237912].
Definition STOPS1 : list Z := [237912] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",17'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18##10000#>:000!$24#50,8$25!$25-14,4#2!$25-10,4#,$25-8#8!$2-8,8$28!$2-10,8$29!$2-18,8$2:!$2-20,8$2;!$2-28,8$2<!$2-30,8$35"%pstring).
Definition ss0 : sym_state := SS 237836 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3:158#3:158#5=#3:158,20#$28$2$3$4$5$6$7$29$2:#1#1#2#2$>$?$10$11$2;$2<$35$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,17!$25-10,4#1'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18##10000#>:000!$24#50,8$25!$25-14,4#2,$25-8#8!$2-8,8$28!$2-10,8$29!$2-18,8$2:!$2-20,8$2;!$2-28,8$2<!$2-30,8$35,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 237912 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_7f7fc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237836 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_7f7fc2.IT BndT_Ns_001.SegItab_Ns_7f7fc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 237836 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6A20.

Module LibSegNs_ad_u6A21.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_7f7fc2.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_7f7fc2.IT.
Definition ENDS : list Z := [237912].
Definition STOPS1 : list Z := [237912] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",17'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18##10000#>:000!$24#50,8$25!$25-14,4#2!$25-10,4#1,$25-8#8!$2-8,8$28!$2-10,8$29!$2-18,8$2:!$2-20,8$2;!$2-28,8$2<!$2-30,8$35"%pstring).
Definition ss0 : sym_state := SS 237836 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 37), (-8), ELit 8); ((EVar 37), (-16), ELit 4)].
Definition F0L : list SR.region := [((EVar 37), (-8), 8); ((EVar 37), (-16), 4)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3:158#3:158#5=#3:158,20#$28$2$3$4$5$6$7$29$2:#1##2#2$>$?$10$11$2;$2<$35$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,17!$25-10,4#!$25-8,8+$40#1'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18##10000#>:000!$24#50,8$25!$25-14,4#2!$2-8,8$28!$2-10,8$29!$2-18,8$2:!$2-20,8$2;!$2-28,8$2<!$2-30,8$35,41!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 237912 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_7f7fc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237836 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_7f7fc2.IT BndT_Ns_001.SegItab_Ns_7f7fc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 237836 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6A21.

Module LibSegNs_ad_u6C.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_7f7fc2.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_7f7fc2.IT.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$24+$24#30$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 237824 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3:10<+$2-40$3$4$5$6$7$24+$24#30+$24#30#3:$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_7f7fc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237824 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_7f7fc2.IT BndT_Ns_001.SegItab_Ns_7f7fc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 237824 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6C.

Module LibSegNs_ad_u6Ed2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_98dae3.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_98dae3.IT.
Definition ENDS : list Z := [262160].
Definition STOPS1 : list Z := [262160] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 36; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",17'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18$26##38)$25-18#18##10000#>:000!$24#50,8$25!$25-18,4#!$25-10,4#1'$26#7???7?800040#7?????????<8)$2-40#40$26##38)$24##60$26##38!$26#,8#;?>30!$24#10,8$26%#10000#<6<<0"%pstring).
Definition ss0 : sym_state := SS 237304 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#40010#40010#5=#40010,20##39?>4+$2-40$3$4$5$6$7$24$>$26$;$<$=$>#40010$10$11$=$<$;$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1=!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18$26##38)$25-18#18##10000#>:000!$24#50,8$25!$25-18,4#!$25-10,4#1'$26#7???7?800040#7?????????<8)$2-40#40$26##38)$24##60$26##38!$26#,8#;?>30!$24#10,8$26%#10000#<6<<0,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 262160 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_98dae3.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237304 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_98dae3.IT BndT_Ns_001.SegItab_Ns_98dae3.IT_sound BF NX0 BR XSTEP F0 PSS plan 237304 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6Ed2.

Module LibSegNs_ad_u6Ek0L.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_7f7fc2.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_7f7fc2.IT.
Definition ENDS : list Z := [248776].
Definition STOPS1 : list Z := [248776] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 36; EVar 54; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1;'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18##10000#>:000!$24#50,8$25!$25-10,4#%#10000#<6<<0!$24#18,1$2>'$2>##??'&9$2>#1#1#1!$24#20,8$2?!$24#28,8$30'$2?##80000000'$30#1000#7??????00000($30##1)$2-40#40$30##1)$24##60$30##1)$30##1##10000#>:000"%pstring).
Definition ss0 : sym_state := SS 237304 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-64), ELit 64); ((EVar 48), (0), ELit 1); ((EVar 36), (32), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-64), 64); ((EVar 48), (0), 1); ((EVar 36), (32), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<;<8#3<;<8#5=#3<;<8,20##39?6<+$2-40$3$4$5$6$7$24$>$36+$24#18#$=$>$?$10$11$=$<$36$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,21!$24#20,8#!$30#,1#!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18##10000#>:000!$24#50,8$25%#10000#<6<<0!$24#18,1$2>'$2>##??'&9$2>#1#1#1!$24#28,8$30'$2?##80000000'$30#1000#7??????00000($30##1)$2-40#40$30##1)$24##60$30##1)$30##1##10000#>:000,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248776 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_7f7fc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237304 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_7f7fc2.IT BndT_Ns_001.SegItab_Ns_7f7fc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 237304 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6Ek0L.

Module LibSegNs_ad_u6Ek0S.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_7f7fc2.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_7f7fc2.IT.
Definition ENDS : list Z := [248776].
Definition STOPS1 : list Z := [248776] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 36; EVar 54; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",13'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18##10000#>:000!$24#50,8$25!$25-10,4#%#10000#<6<<0!$24#18,1@#2$2='$2=##16'&9@#2$2=#1##"%pstring).
Definition ss0 : sym_state := SS 237304 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-64), ELit 64); ((EVar 36), (24), ELit 2)].
Definition F0L : list SR.region := [((EVar 2), (-64), 64); ((EVar 36), (24), 2)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<;<8#3<;<8#5=#3<;<8,20##39?6<+$2-40$3$4$5$6$7$24$>$36+$24#18#$=$>$?$10$11$=$<$36$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,19!$24#18,2#!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18##10000#>:000!$24#50,8$25!$25-10,4#%#10000#<6<<0'$2=##16'&9@#2$2=#1##,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248776 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_7f7fc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237304 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_7f7fc2.IT BndT_Ns_001.SegItab_Ns_7f7fc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 237304 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6Ek0S.

Module LibSegNs_ad_u6Ek1L.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_7f7fc2.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_7f7fc2.IT.
Definition ENDS : list Z := [248776].
Definition STOPS1 : list Z := [248776] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 36; EVar 54; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1<'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18##10000#>:000!$24#50,8$25!$25-18,4#1!$25-10,4#1%#10000#<6<<0!$24#18,1$2>'$2>##??'&9$2>#1#1#1!$24#20,8$2?!$24#28,8$30'$2?##80000000'$30#1000#7??????00000($30##1)$2-40#40$30##1)$24##60$30##1)$30##1##10000#>:000"%pstring).
Definition ss0 : sym_state := SS 237304 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-64), ELit 64); ((EVar 48), (0), ELit 1); ((EVar 36), (32), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-64), 64); ((EVar 48), (0), 1); ((EVar 36), (32), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<;<8#3<;<8#5=#3<;<8,20##39?6<+$2-40$3$4$5$6$7$24$>$36+$24#18#1$=$>$?$10$11$=$<$36$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,21!$24#20,8#!$30#,1#!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18##10000#>:000!$24#50,8$25%#10000#<6<<0!$24#18,1$2>'$2>##??'&9$2>#1#1#1!$24#28,8$30'$2?##80000000'$30#1000#7??????00000($30##1)$2-40#40$30##1)$24##60$30##1)$30##1##10000#>:000,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248776 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_7f7fc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237304 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_7f7fc2.IT BndT_Ns_001.SegItab_Ns_7f7fc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 237304 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6Ek1L.

Module LibSegNs_ad_u6Ek1S.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_7f7fc2.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_7f7fc2.IT.
Definition ENDS : list Z := [248776].
Definition STOPS1 : list Z := [248776] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 36; EVar 54; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",14'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18##10000#>:000!$24#50,8$25!$25-18,4#1!$25-10,4#1%#10000#<6<<0!$24#18,1@#2$2='$2=##16'&9@#2$2=#1##"%pstring).
Definition ss0 : sym_state := SS 237304 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-64), ELit 64); ((EVar 36), (24), ELit 2)].
Definition F0L : list SR.region := [((EVar 2), (-64), 64); ((EVar 36), (24), 2)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<;<8#3<;<8#5=#3<;<8,20##39?6<+$2-40$3$4$5$6$7$24$>$36+$24#18#1$=$>$?$10$11$=$<$36$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1:!$24#18,2#!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18##10000#>:000!$24#50,8$25!$25-18,4#1!$25-10,4#1%#10000#<6<<0'$2=##16'&9@#2$2=#1##,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 248776 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_7f7fc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237304 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_7f7fc2.IT BndT_Ns_001.SegItab_Ns_7f7fc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 237304 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6Ek1S.

Module LibSegNs_ad_u6ILL.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_7f7fc2.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_7f7fc2.IT.
Definition ENDS : list Z := [249068].
Definition STOPS1 : list Z := [249068] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$24+$24#30$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",19'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48!$24#30,1$32'$32##??'&9$32#1#1#1!$24#38,8$33!$24#40,8$34'$33##80000000'$34#1000#7??????00000!$24#18,1$2>'$2>##??'&9$2>#1#1#1!$24#20,8$2?!$24#28,8$30'$2?##80000000'$30#1000#7??????00000($30##1)$2-40#40$30##1)$24##60$30##1)$30##1##10000#>:000"%pstring).
Definition ss0 : sym_state := SS 237480 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<><#3<<><#5=#3<<><,20##3:078+$2-40$3$4$5$6$7$24+$24#30+$24#30+$33$34$30+$2?$30$2?$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,19'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48!$24#30,1$32'$32##??'&9$32#1#1#1!$24#38,8$33!$24#40,8$34'$33##80000000'$34#1000#7??????00000!$24#18,1$2>'$2>##??'&9$2>#1#1#1!$24#20,8$2?!$24#28,8$30'$2?##80000000'$30#1000#7??????00000($30##1)$2-40#40$30##1)$24##60$30##1)$30##1##10000#>:000,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 249068 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_7f7fc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237480 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_7f7fc2.IT BndT_Ns_001.SegItab_Ns_7f7fc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 237480 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6ILL.

Module LibSegNs_ad_u6ILS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_7f7fc2.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_7f7fc2.IT.
Definition ENDS : list Z := [249068].
Definition STOPS1 : list Z := [249068] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$24+$24#30$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48!$24#30,1$32'$32##??'&9$32#1#1#1!$24#38,8$33!$24#40,8$34'$33##80000000'$34#1000#7??????00000!$24#18,1@#2$2='$2=##16'&9@#2$2=#1##"%pstring).
Definition ss0 : sym_state := SS 237480 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<><#3<<><#5=#3<<><,20##3:078+$2-40$3$4$5$6$7$24+$24#30+$24#30+$33$34+$24#19++$24$2=#19$2=$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,11'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48!$24#30,1$32'$32##??'&9$32#1#1#1!$24#38,8$33!$24#40,8$34'$33##80000000'$34#1000#7??????00000!$24#18,1@#2$2='$2=##16'&9@#2$2=#1##,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 249068 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_7f7fc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237480 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_7f7fc2.IT BndT_Ns_001.SegItab_Ns_7f7fc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 237480 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6ILS.

Module LibSegNs_ad_u6ISL.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_7f7fc2.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_7f7fc2.IT.
Definition ENDS : list Z := [249068].
Definition STOPS1 : list Z := [249068] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$24+$24#30$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",15'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48!$24#30,1@#2$31'$31##16'&9@#2$31#1##!$24#18,1$2>'$2>##??'&9$2>#1#1#1!$24#20,8$2?!$24#28,8$30'$2?##80000000'$30#1000#7??????00000($30##1)$2-40#40$30##1)$24##60$30##1)$30##1##10000#>:000"%pstring).
Definition ss0 : sym_state := SS 237480 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<><#3<<><#5=#3<<><,20##3:078+$2-40$3$4$5$6$7$24+$24#30+$24#30++$24$31#31$30+$2?$30$2?$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,15'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48!$24#30,1@#2$31'$31##16'&9@#2$31#1##!$24#18,1$2>'$2>##??'&9$2>#1#1#1!$24#20,8$2?!$24#28,8$30'$2?##80000000'$30#1000#7??????00000($30##1)$2-40#40$30##1)$24##60$30##1)$30##1##10000#>:000,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 249068 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_7f7fc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237480 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_7f7fc2.IT BndT_Ns_001.SegItab_Ns_7f7fc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 237480 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6ISL.

Module LibSegNs_ad_u6ISS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_7f7fc2.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_7f7fc2.IT.
Definition ENDS : list Z := [249068].
Definition STOPS1 : list Z := [249068] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$24+$24#30$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",='$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48!$24#30,1@#2$31'$31##16'&9@#2$31#1##!$24#18,1@#2$2='$2=##16'&9@#2$2=#1##"%pstring).
Definition ss0 : sym_state := SS 237480 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<><#3<<><#5=#3<<><,20##3:078+$2-40$3$4$5$6$7$24+$24#30+$24#30++$24$31#31+$24#19++$24$2=#19$2=$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,='$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48!$24#30,1@#2$31'$31##16'&9@#2$31#1##!$24#18,1@#2$2='$2=##16'&9@#2$2=#1##,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 249068 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_7f7fc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237480 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_7f7fc2.IT BndT_Ns_001.SegItab_Ns_7f7fc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 237480 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6ISS.

End BndP_Ns_037.
Module BndP_Ns_038.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Plain.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKit OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKitIt.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.seg Require BndT_Ns_001.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Ns_038 () := "C47Corelib5Lists7ListDef3mapK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC6ARocqVerifyHarnessATaskSpecification8ProblemsWSrc_jsoncons_fuzz_msgpack_encoder_repro1M?loaded_segmentsC6ARocqVerifyHarness?AgentSubmission3seg;BndT_Ns_001ASegItab_Ns_7f7fc22ITC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038?LibSegNs_ad_u6J2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038?LibSegNs_ad_u6J3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038?LibSegNs_ad_u6J2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038?LibSegNs_ad_u6J5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038?LibSegNs_ad_u6J2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038?LibSegNs_ad_u6J3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038?LibSegNs_ad_u6J4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038?LibSegNs_ad_u6J5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038?LibSegNs_ad_u6J3kn0K47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KILL2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KILL3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KILL2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KILL5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KILL2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KILL3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KILL4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KILL5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KILL3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KILS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KILS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KILS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KILS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KILS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KILS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KILS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KILS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KILS3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KISL2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KISL3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KISL2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KISL5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KISL2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KISL3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KISL4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KISL5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KISL3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KISS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KISS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KISS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KISS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KISS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KISS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KISS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KISS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KISS3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6Kbn2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6Kbn3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6Kbn2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6Kbn5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6Kbn2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6Kbn3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6Kbn4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6Kbn5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6Kbn3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6Kbz2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6Kbz3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6Kbz2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6Kbz5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6Kbz2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6Kbz3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6Kbz4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6Kbz5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6Kbz3kn0C6ARocqVerifyHarness?AgentSubmission3seg;BndT_Ns_001ASegItab_Ns_98dae32ITc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KdL22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KdL23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KdL22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KdL25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KdL22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KdL23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KdL24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KdL25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KdL23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KdS22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KdS23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KdS22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KdS25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KdS22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KdS23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KdS24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KdS25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038BLibSegNs_ad_u6KdS23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038@LibSegNs_ad_u6R12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038@LibSegNs_ad_u6R13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038@LibSegNs_ad_u6R12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038@LibSegNs_ad_u6R15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038@LibSegNs_ad_u6R12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038@LibSegNs_ad_u6R13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038@LibSegNs_ad_u6R14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038@LibSegNs_ad_u6R15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038@LibSegNs_ad_u6R13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038@LibSegNs_ad_u6R22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038@LibSegNs_ad_u6R23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038@LibSegNs_ad_u6R22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038@LibSegNs_ad_u6R25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038@LibSegNs_ad_u6R22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038@LibSegNs_ad_u6R23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038@LibSegNs_ad_u6R24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038@LibSegNs_ad_u6R25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038@LibSegNs_ad_u6R23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6V1n2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6V1n3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6V1n2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6V1n5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6V1n2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6V1n3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6V1n4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6V1n5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6V1n3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6V1z2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6V1z3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6V1z2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6V1z5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6V1z2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6V1z3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6V1z4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6V1z5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038ALibSegNs_ad_u6V1z3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038@LibSegNs_ad_u6V22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038@LibSegNs_ad_u6V23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038@LibSegNs_ad_u6V22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038@LibSegNs_ad_u6V25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038@LibSegNs_ad_u6V22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038@LibSegNs_ad_u6V23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038@LibSegNs_ad_u6V24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038@LibSegNs_ad_u6V25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_038@LibSegNs_ad_u6V23kn0".

Module LibSegNs_ad_u6J.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_7f7fc2.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_7f7fc2.IT.
Definition ENDS : list Z := [237836].
Definition STOPS1 : list Z := [237836] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 237688 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3:10<#3:10<#5=#3:10<,20#$1+$2-40$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 237836 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_7f7fc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237688 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_7f7fc2.IT BndT_Ns_001.SegItab_Ns_7f7fc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 237688 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6J.

Module LibSegNs_ad_u6KILL.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_7f7fc2.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_7f7fc2.IT.
Definition ENDS : list Z := [249068].
Definition STOPS1 : list Z := [249068] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",19'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48!$24#30,1$32'$32##??'&9$32#1#1#1!$24#38,8$33!$24#40,8$34'$33##80000000'$34#1000#7??????00000!$24#18,1$2>'$2>##??'&9$2>#1#1#1!$24#20,8$2?!$24#28,8$30'$2?##80000000'$30#1000#7??????00000($30##1)$2-40#40$30##1)$24##60$30##1)$30##1##10000#>:000"%pstring).
Definition ss0 : sym_state := SS 237572 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<><#3<<><#5=#3<<><,20##3:100+$2-40$3$4$5$6$7$24+$24#30+$24#30+$33$34$30+$2?$30$2?$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,19'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48!$24#30,1$32'$32##??'&9$32#1#1#1!$24#38,8$33!$24#40,8$34'$33##80000000'$34#1000#7??????00000!$24#18,1$2>'$2>##??'&9$2>#1#1#1!$24#20,8$2?!$24#28,8$30'$2?##80000000'$30#1000#7??????00000($30##1)$2-40#40$30##1)$24##60$30##1)$30##1##10000#>:000,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 249068 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_7f7fc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237572 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_7f7fc2.IT BndT_Ns_001.SegItab_Ns_7f7fc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 237572 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6KILL.

Module LibSegNs_ad_u6KILS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_7f7fc2.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_7f7fc2.IT.
Definition ENDS : list Z := [249068].
Definition STOPS1 : list Z := [249068] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48!$24#30,1$32'$32##??'&9$32#1#1#1!$24#38,8$33!$24#40,8$34'$33##80000000'$34#1000#7??????00000!$24#18,1@#2$2='$2=##16'&9@#2$2=#1##"%pstring).
Definition ss0 : sym_state := SS 237572 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<><#3<<><#5=#3<<><,20##3:100+$2-40$3$4$5$6$7$24+$24#30+$24#30+$33$34+$24#19++$24$2=#19$2=$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,11'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48!$24#30,1$32'$32##??'&9$32#1#1#1!$24#38,8$33!$24#40,8$34'$33##80000000'$34#1000#7??????00000!$24#18,1@#2$2='$2=##16'&9@#2$2=#1##,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 249068 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_7f7fc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237572 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_7f7fc2.IT BndT_Ns_001.SegItab_Ns_7f7fc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 237572 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6KILS.

Module LibSegNs_ad_u6KISL.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_7f7fc2.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_7f7fc2.IT.
Definition ENDS : list Z := [249068].
Definition STOPS1 : list Z := [249068] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",15'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48!$24#30,1@#2$31'$31##16'&9@#2$31#1##!$24#18,1$2>'$2>##??'&9$2>#1#1#1!$24#20,8$2?!$24#28,8$30'$2?##80000000'$30#1000#7??????00000($30##1)$2-40#40$30##1)$24##60$30##1)$30##1##10000#>:000"%pstring).
Definition ss0 : sym_state := SS 237572 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<><#3<<><#5=#3<<><,20##3:100+$2-40$3$4$5$6$7$24+$24#30+$24#30++$24$31#31$30+$2?$30$2?$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,15'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48!$24#30,1@#2$31'$31##16'&9@#2$31#1##!$24#18,1$2>'$2>##??'&9$2>#1#1#1!$24#20,8$2?!$24#28,8$30'$2?##80000000'$30#1000#7??????00000($30##1)$2-40#40$30##1)$24##60$30##1)$30##1##10000#>:000,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 249068 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_7f7fc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237572 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_7f7fc2.IT BndT_Ns_001.SegItab_Ns_7f7fc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 237572 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6KISL.

Module LibSegNs_ad_u6KISS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_7f7fc2.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_7f7fc2.IT.
Definition ENDS : list Z := [249068].
Definition STOPS1 : list Z := [249068] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",='$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48!$24#30,1@#2$31'$31##16'&9@#2$31#1##!$24#18,1@#2$2='$2=##16'&9@#2$2=#1##"%pstring).
Definition ss0 : sym_state := SS 237572 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3<<><#3<<><#5=#3<<><,20##3:100+$2-40$3$4$5$6$7$24+$24#30+$24#30++$24$31#31+$24#19++$24$2=#19$2=$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,='$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48!$24#30,1@#2$31'$31##16'&9@#2$31#1##!$24#18,1@#2$2='$2=##16'&9@#2$2=#1##,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 249068 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_7f7fc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237572 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_7f7fc2.IT BndT_Ns_001.SegItab_Ns_7f7fc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 237572 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6KISS.

Module LibSegNs_ad_u6Kbn.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_7f7fc2.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_7f7fc2.IT.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18##10000#>:000!$24#50,8$25!$25-18,4#1!$25-10,4#!$25-8,8$27'$27#1^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 237420 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##3:004+$2-40$3$4$5$6$7$24$9+$24#30#2<#1$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,12'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18##10000#>:000!$24#50,8$25!$25-18,4#1!$25-10,4#!$25-8,8$27'$27#1^#?#???????????????,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_7f7fc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237420 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_7f7fc2.IT BndT_Ns_001.SegItab_Ns_7f7fc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 237420 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6Kbn.

Module LibSegNs_ad_u6Kbz.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_7f7fc2.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_7f7fc2.IT.
Definition ENDS : list Z := [237572].
Definition STOPS1 : list Z := [237572] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18##10000#>:000!$24#50,8$25!$25-18,4#1!$25-10,4#!$25-8,8#"%pstring).
Definition ss0 : sym_state := SS 237420 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3:004#3:004#5=#3:004,20#$1+$2-40$3$4$5$6$7$24$9##1#1$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,11'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18##10000#>:000!$24#50,8$25!$25-18,4#1!$25-10,4#!$25-8,8#,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 237572 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_7f7fc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237420 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_7f7fc2.IT BndT_Ns_001.SegItab_Ns_7f7fc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 237420 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6Kbz.

Module LibSegNs_ad_u6KdL2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_98dae3.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_98dae3.IT.
Definition ENDS : list Z := [264208].
Definition STOPS1 : list Z := [264208] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",23'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18$26##38)$25-18#18##10000#>:000!$24#50,8$25!$25-18,4#!$25-10,4#'$26#7???7?800040#7?????????<8)$2-40#40$26##38)$24##60$26##38!$26#,8#;?>30!$24#10,8$26%#10000#<6<<0!$24#18,1$2>'$2>##??'&9$2>#1#1#1!$24#20,8$2?!$24#28,8$30'$2?##80000000'$30#1000#7??????00000($30##1)$2-40#40$30##1)$24##60$30##1)$30##1##10000#>:000)$30##1$26##38"%pstring).
Definition ss0 : sym_state := SS 237420 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-64), ELit 16)].
Definition F0L : list SR.region := [((EVar 2), (-64), 16)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#40810#40810#5=#40810,20##3:0><+$2-40$3$4$5$6$7$24$9$26+$2-40$12$9#40810$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,25!$2-38,8$2?!$2-40,8$30'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18$26##38)$25-18#18##10000#>:000!$24#50,8$25!$25-18,4#!$25-10,4#'$26#7???7?800040#7?????????<8)$2-40#40$26##38)$24##60$26##38!$26#,8#;?>30!$24#10,8$26%#10000#<6<<0!$24#18,1$2>'$2>##??'&9$2>#1#1#1!$24#20,8$2?!$24#28,8$30'$2?##80000000'$30#1000#7??????00000($30##1)$2-40#40$30##1)$24##60$30##1)$30##1##10000#>:000)$30##1$26##38,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 264208 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_98dae3.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237420 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_98dae3.IT BndT_Ns_001.SegItab_Ns_98dae3.IT_sound BF NX0 BR XSTEP F0 PSS plan 237420 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6KdL2.

Module LibSegNs_ad_u6KdS2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_98dae3.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_98dae3.IT.
Definition ENDS : list Z := [264208].
Definition STOPS1 : list Z := [264208] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",1:'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18$26##38)$25-18#18##10000#>:000!$24#50,8$25!$25-18,4#!$25-10,4#'$26#7???7?800040#7?????????<8)$2-40#40$26##38)$24##60$26##38!$26#,8#;?>30!$24#10,8$26%#10000#<6<<0!$24#18,1@#2$2='$2=##16'&9@#2$2=#1##"%pstring).
Definition ss0 : sym_state := SS 237420 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-64), ELit 16)].
Definition F0L : list SR.region := [((EVar 2), (-64), 16)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#40810#40810#5=#40810,20##3:0><+$2-40$3$4$5$6$7$24$9$26+$2-40$12$9#40810$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,1<!$2-38,8$2=!$2-40,8+$24#19'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18$26##38)$25-18#18##10000#>:000!$24#50,8$25!$25-18,4#!$25-10,4#'$26#7???7?800040#7?????????<8)$2-40#40$26##38)$24##60$26##38!$26#,8#;?>30!$24#10,8$26%#10000#<6<<0!$24#18,1@#2$2='$2=##16'&9@#2$2=#1##,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 264208 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_98dae3.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237420 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_98dae3.IT BndT_Ns_001.SegItab_Ns_98dae3.IT_sound BF NX0 BR XSTEP F0 PSS plan 237420 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6KdS2.

Module LibSegNs_ad_u6R1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_98dae3.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_98dae3.IT.
Definition ENDS : list Z := [237836].
Definition STOPS1 : list Z := [237836] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 237540 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3:10<#3:10<#5=#3:10<,20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 237836 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_98dae3.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237540 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_98dae3.IT BndT_Ns_001.SegItab_Ns_98dae3.IT_sound BF NX0 BR XSTEP F0 PSS plan 237540 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6R1.

Module LibSegNs_ad_u6R2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_98dae3.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_98dae3.IT.
Definition ENDS : list Z := [237836].
Definition STOPS1 : list Z := [237836] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 237804 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3:10<#3:10<#5=#3:10<,20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 237836 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_98dae3.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237804 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_98dae3.IT BndT_Ns_001.SegItab_Ns_98dae3.IT_sound BF NX0 BR XSTEP F0 PSS plan 237804 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6R2.

Module LibSegNs_ad_u6V1n.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_7f7fc2.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_7f7fc2.IT.
Definition ENDS : list Z := [418884].
Definition STOPS1 : list Z := [418884] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",13'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18##10000#>:000!$24#50,8$25!$25-18,4#1!$25-14,4#1!$25-10,4#1!$25-8,8$27'$27#1^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 237420 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#66444#66444#5=#66444,20##39?:8+$2-40$3$4$5$6$7$24+$24#30+$24#30#2<#2$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,13'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18##10000#>:000!$24#50,8$25!$25-18,4#1!$25-14,4#1!$25-10,4#1!$25-8,8$27'$27#1^#?#???????????????,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 418884 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_7f7fc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237420 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_7f7fc2.IT BndT_Ns_001.SegItab_Ns_7f7fc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 237420 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6V1n.

Module LibSegNs_ad_u6V1z.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_7f7fc2.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_7f7fc2.IT.
Definition ENDS : list Z := [237480].
Definition STOPS1 : list Z := [237480] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",12'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18##10000#>:000!$24#50,8$25!$25-18,4#1!$25-14,4#1!$25-10,4#1!$25-8,8#"%pstring).
Definition ss0 : sym_state := SS 237420 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#39?:8#39?:8#5=#39?:8,20#$1+$2-40$3$4$5$6$7$24+$24#30##1#2$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,12'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18##10000#>:000!$24#50,8$25!$25-18,4#1!$25-14,4#1!$25-10,4#1!$25-8,8#,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 237480 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_7f7fc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237420 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_7f7fc2.IT BndT_Ns_001.SegItab_Ns_7f7fc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 237420 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6V1z.

Module LibSegNs_ad_u6V2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := BndT_Ns_001.SegItab_Ns_7f7fc2.ITR.
Definition IT : itab := BndT_Ns_001.SegItab_Ns_7f7fc2.IT.
Definition ENDS : list Z := [237480].
Definition STOPS1 : list Z := [237480] ++ ENDS.
Definition NX0 : nat := 64.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-40$3$4$5$6$7$24$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",11'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18##10000#>:000!$24#50,8$25!$25-18,4#1!$25-14,4#2!$25-10,4#1"%pstring).
Definition ss0 : sym_state := SS 237420 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#39?:8#39?:8#5=#39?:8,20#$1+$2-40$3$4$5$6$7$24+$24#30$25#2#2$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,11'$2#7???7?800040#800000000000&$2#10($2-40#40'$24#7???7?800040#7?????????:0&$24#8)$2-40#40$24##60($24#18#48'$25#1018#7??????00000&$25#8($25-18#18)$2-40#40$25-18#18)$24##60$25-18#18)$25-18#18##10000#>:000!$24#50,8$25!$25-18,4#1!$25-14,4#2!$25-10,4#1,40!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 237480 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS BndT_Ns_001.SegItab_Ns_7f7fc2.IT X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 237420 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound_it BndT_Ns_001.SegItab_Ns_7f7fc2.IT BndT_Ns_001.SegItab_Ns_7f7fc2.IT_sound BF NX0 BR XSTEP F0 PSS plan 237420 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ad_u6V2.

End BndP_Ns_038.
Module BndP_Ns_108.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Plain.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKit.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Ns_108 () := "C47Corelib5Lists7ListDef3mapC5ARocqVerifyHarness?AgentSubmission7Mh_01126LibSym7itab_ofK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC6ARocqVerifyHarnessATaskSpecification8ProblemsWSrc_jsoncons_fuzz_msgpack_encoder_repro1M?loaded_segmentsC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtCl2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtCl3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtCl2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtCl5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtCl2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtCl3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtCl4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtCl5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtCl3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtCl3ITRK47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtCs2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtCs3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtCs2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtCs5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtCs2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtCs3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtCs4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtCs5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtCs3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtCs3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108<LibSegNs_dtD2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108<LibSegNs_dtD3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108<LibSegNs_dtD2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108<LibSegNs_dtD5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108<LibSegNs_dtD2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108<LibSegNs_dtD3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108<LibSegNs_dtD4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108<LibSegNs_dtD5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108<LibSegNs_dtD3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108<LibSegNs_dtD3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtE02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtE03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtE02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtE05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtE02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtE03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtE04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtE05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtE03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtE03ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtE12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtE13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtE12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtE15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtE12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtE13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtE14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtE15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtE13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtE13ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtFl2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtFl3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtFl2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtFl5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtFl2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtFl3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtFl4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtFl5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtFl3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtFl3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtFs2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtFs3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtFs2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtFs5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtFs2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtFs3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtFs4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtFs5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtFs3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108=LibSegNs_dtFs3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108<LibSegNs_dtG2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108<LibSegNs_dtG3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108<LibSegNs_dtG2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108<LibSegNs_dtG5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108<LibSegNs_dtG2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108<LibSegNs_dtG3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108<LibSegNs_dtG4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108<LibSegNs_dtG5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108<LibSegNs_dtG3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108<LibSegNs_dtG3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108>LibSegNs_encNA2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108>LibSegNs_encNA3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108>LibSegNs_encNA2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108>LibSegNs_encNA5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108>LibSegNs_encNA2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108>LibSegNs_encNA3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108>LibSegNs_encNA4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108>LibSegNs_encNA5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108>LibSegNs_encNA3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108>LibSegNs_encNA3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encNE02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encNE03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encNE02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encNE05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encNE02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encNE03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encNE04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encNE05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encNE03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encNE03ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encNE12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encNE13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encNE12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encNE15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encNE12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encNE13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encNE14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encNE15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encNE13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encNE13ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108@LibSegNs_encNE1w2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108@LibSegNs_encNE1w3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108@LibSegNs_encNE1w2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108@LibSegNs_encNE1w5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108@LibSegNs_encNE1w2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108@LibSegNs_encNE1w3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108@LibSegNs_encNE1w4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108@LibSegNs_encNE1w5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108@LibSegNs_encNE1w3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108@LibSegNs_encNE1w3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108>LibSegNs_encTA2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108>LibSegNs_encTA3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108>LibSegNs_encTA2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108>LibSegNs_encTA5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108>LibSegNs_encTA2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108>LibSegNs_encTA3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108>LibSegNs_encTA4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108>LibSegNs_encTA5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108>LibSegNs_encTA3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108>LibSegNs_encTA3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encTE02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encTE03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encTE02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encTE05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encTE02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encTE03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encTE04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encTE05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encTE03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0153;BndP_Ns_108?LibSegNs_encTE03ITR".

Module LibSegNs_dtCl.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(234796, 54%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [409028].
Definition STOPS1 : list Z := [409028] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-10$3$4$5$6$7$21$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",='$2#7???7?800010#800000000000&$2#10($2-10#10'$21#7???7?800010#7????????>08&$21#8)$2-10#10$21##1?8($21##1?0%#10000#<6<<0!$21#1:8,1$23'$23##??'&9$23#1#1#1,$21#1:9#7!$21#1;8,8$25"%pstring).
Definition ss0 : sym_state := SS 234876 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#63=<4#63=<4#5=#63=<4,20##39598+$2-10$3$4$5$6$7$21$9$25@#2&6$30#1$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,='$2#7???7?800010#800000000000&$2#10($2-10#10'$21#7???7?800010#7????????>08&$21#8)$2-10#10$21##1?8($21##1?0%#10000#<6<<0!$21#1:8,1$23'$23##??'&9$23#1#1#1,$21#1:9#7!$21#1;8,8$25,31!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 409028 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 234876 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 234876 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_dtCl.

Module LibSegNs_dtCs.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(234796, 54%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [234904].
Definition STOPS1 : list Z := [234904] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-10$3$4$5$6$7$21$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$2#7???7?800010#800000000000&$2#10($2-10#10'$21#7???7?800010#7????????>08&$21#8)$2-10#10$21##1?8($21##1?0%#10000#<6<<0!$21#1:8,1$23'$23##??'&9$23#1##"%pstring).
Definition ss0 : sym_state := SS 234876 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#39598#39598#5=#39598,20#$1+$2-10$3$4$5$6$7$21$9#$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;'$2#7???7?800010#800000000000&$2#10($2-10#10'$21#7???7?800010#7????????>08&$21#8)$2-10#10$21##1?8($21##1?0%#10000#<6<<0!$21#1:8,1$23'$23##??'&9$23#1##,30!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 234904 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 234876 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 234876 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_dtCs.

Module LibSegNs_dtD.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(234796, 54%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [409028].
Definition STOPS1 : list Z := [409028] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-10$3$4$5$6$7$21$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$2#7???7?800010#800000000000&$2#10($2-10#10'$21#7???7?800010#7????????>08&$21#8)$2-10#10$21##1?8($21##1?0%#10000#<6<<0!$21#178,8$24!$21#188,8$27'$24#1000#800000000000"%pstring).
Definition ss0 : sym_state := SS 234904 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 33), (0), ELit 8); ((EVar 33), (384), ELit 8)].
Definition F0L : list SR.region := [((EVar 33), (0), 8); ((EVar 33), (384), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#63=<4#63=<4#5=#63=<4,20##395;<+$2-10$3$4$5$6$7$21$9$24+@-1$24$27$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,=!$21#180,8$24!$21#,8#;?<>8'$2#7???7?800010#800000000000&$2#10($2-10#10'$21#7???7?800010#7????????>08&$21#8)$2-10#10$21##1?8($21##1?0%#10000#<6<<0!$21#178,8$24!$21#188,8$27'$24#1000#800000000000,30!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 409028 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 234904 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 234904 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_dtD.

Module LibSegNs_dtE0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(234796, 54%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [234964].
Definition STOPS1 : list Z := [234964] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-10$3$4$5$6$7$21$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$2#7???7?800010#800000000000&$2#10($2-10#10'$21#7???7?800010#7????????>08&$21#8)$2-10#10$21##1?8($21##1?0%#10000#<6<<0!$21#160,8#"%pstring).
Definition ss0 : sym_state := SS 234940 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#395=4#395=4#5=#395=4,20#$1+$2-10$3$4$5$6$7$21$9#$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,9'$2#7???7?800010#800000000000&$2#10($2-10#10'$21#7???7?800010#7????????>08&$21#8)$2-10#10$21##1?8($21##1?0%#10000#<6<<0!$21#160,8#,30!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 234964 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 234940 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 234940 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_dtE0.

Module LibSegNs_dtE1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(234796, 54%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [409028].
Definition STOPS1 : list Z := [409028] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-10$3$4$5$6$7$21$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$2#7???7?800010#800000000000&$2#10($2-10#10'$21#7???7?800010#7????????>08&$21#8)$2-10#10$21##1?8($21##1?0%#10000#<6<<0!$21#160,8$24!$21#170,8$27'$24#1000#800000000000"%pstring).
Definition ss0 : sym_state := SS 234940 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 33), (360), ELit 8)].
Definition F0L : list SR.region := [((EVar 33), (360), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#63=<4#63=<4#5=#63=<4,20##395=4+$2-10$3$4$5$6$7$21$9$24+@-1$24$27$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,<!$21#168,8$24'$2#7???7?800010#800000000000&$2#10($2-10#10'$21#7???7?800010#7????????>08&$21#8)$2-10#10$21##1?8($21##1?0%#10000#<6<<0!$21#160,8$24!$21#170,8$27'$24#1000#800000000000,30!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 409028 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 234940 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 234940 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_dtE1.

Module LibSegNs_dtFl.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(234796, 54%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [409028].
Definition STOPS1 : list Z := [409028] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-10$3$4$5$6$7$21$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",='$2#7???7?800010#800000000000&$2#10($2-10#10'$21#7???7?800010#7????????>08&$21#8)$2-10#10$21##1?8($21##1?0%#10000#<6<<0!$21#148,1$23'$23##??'&9$23#1#1#1,$21#149#7!$21#158,8$25"%pstring).
Definition ss0 : sym_state := SS 234964 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#63=<4#63=<4#5=#63=<4,20##395?0+$2-10$3$4$5$6$7$21$9$25@#2&6$30#1$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,='$2#7???7?800010#800000000000&$2#10($2-10#10'$21#7???7?800010#7????????>08&$21#8)$2-10#10$21##1?8($21##1?0%#10000#<6<<0!$21#148,1$23'$23##??'&9$23#1#1#1,$21#149#7!$21#158,8$25,31!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 409028 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 234964 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 234964 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_dtFl.

Module LibSegNs_dtFs.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(234796, 54%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [234992].
Definition STOPS1 : list Z := [234992] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-10$3$4$5$6$7$21$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$2#7???7?800010#800000000000&$2#10($2-10#10'$21#7???7?800010#7????????>08&$21#8)$2-10#10$21##1?8($21##1?0%#10000#<6<<0!$21#148,1$23'$23##??'&9$23#1##"%pstring).
Definition ss0 : sym_state := SS 234964 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#395?0#395?0#5=#395?0,20#$1+$2-10$3$4$5$6$7$21$9#$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,;'$2#7???7?800010#800000000000&$2#10($2-10#10'$21#7???7?800010#7????????>08&$21#8)$2-10#10$21##1?8($21##1?0%#10000#<6<<0!$21#148,1$23'$23##??'&9$23#1##,30!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 234992 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 234964 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 234964 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_dtFs.

Module LibSegNs_dtG.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(234796, 54%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [259972].
Definition STOPS1 : list Z := [259972] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-10$3$4$5$6$7$21$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483088 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-16)) (ELit 16);
   KImg 65536 814272;
   KWord (SA (EVar 2) (-8)) 8 (EVar 40);
   KWord (SA (EVar 2) (-16)) 8 (EVar 41)].
Definition ss0 : sym_state := SS 234992 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#3?784#3?784#5=#3?784,20#$28$2$3$4$5$6$7$29$9+$21#18$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,6'$2#7???7?800010#800000000000&$2#10($2-10#10%#10000#<6<<0!$2-8,8$28!$2-10,8$29,30!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 259972 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 234992 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 234992 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_dtG.

Module LibSegNs_encNA.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(264248, 20%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$2#7???7?800020#7?????????<0&$2#10($2-20#20'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-20#20$:##38!$:#8,8$29'$29#7???7?800000#7?????????>8&$29#8"%pstring).
Definition ss0 : sym_state := SS 264248 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##4085<+$2-20$3$4$5$6$7$:$9$29+$2-11$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,=!$2-11,1#<0!$2-10,8$8!$2-8,8$1'$2#7???7?800020#7?????????<0&$2#10($2-20#20'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-20#20$:##38!$:#8,8$29'$29#7???7?800000#7?????????>8&$29#8,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 264248 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 264248 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_encNA.

Module LibSegNs_encNE0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(264248, 20%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [264324].
Definition STOPS1 : list Z := [264324] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-20$3$4$5$6$7$:$9$37$38$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",<'$2#7???7?800020#7?????????<0&$2#10($2-20#20'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-20#20$:##38!$:#18,8$26!$:#20,8$26'$26##800000000000!$2-8,8$2<!$2-10,8$2="%pstring).
Definition ss0 : sym_state := SS 264284 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#40884#40884#5=#40884,20#$2<$2$3$4$5$6$7$2=$9#1$26$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,<'$2#7???7?800020#7?????????<0&$2#10($2-20#20'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-20#20$:##38!$:#18,8$26!$:#20,8$26'$26##800000000000!$2-8,8$2<!$2-10,8$2=,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 264324 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 264284 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 264284 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_encNE0.

Module LibSegNs_encNE1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(264248, 20%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [264324].
Definition STOPS1 : list Z := [264324] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-20$3$4$5$6$7$:$9$37$38$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",14'$2#7???7?800020#7?????????<0&$2#10($2-20#20'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-20#20$:##38!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$27#8'+$27@-1$26#18#186:0($27-18#18)$27-18#18$2-20#20)$27-18#18$:##38!$27-8,8$2:'$2:#^#?#??????????????>!$2-8,8$2<!$2-10,8$2="%pstring).
Definition ss0 : sym_state := SS 264284 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#40884#40884#5=#40884,20#$2<$2$3$4$5$6$7$2=$9#1+$2:#1$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,14!$27-8,8+$2:#1'$2#7???7?800020#7?????????<0&$2#10($2-20#20'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-20#20$:##38!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$27#8'+$27@-1$26#18#186:0($27-18#18)$27-18#18$2-20#20)$27-18#18$:##38'$2:#^#?#??????????????>!$2-8,8$2<!$2-10,8$2=,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 264324 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 264284 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 264284 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_encNE1.

Module LibSegNs_encNE1w.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(264248, 20%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [264324].
Definition STOPS1 : list Z := [264324] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-20$3$4$5$6$7$:$9$37$38$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",13'$2#7???7?800020#7?????????<0&$2#10($2-20#20'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-20#20$:##38!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$27#8'+$27@-1$26#18#186:0($27-18#18)$27-18#18$2-20#20)$27-18#18$:##38!$27-8,8^#?#???????????????!$2-8,8$2<!$2-10,8$2="%pstring).
Definition ss0 : sym_state := SS 264284 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#40884#40884#5=#40884,20#$2<$2$3$4$5$6$7$2=$9#1#$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,13!$27-8,8#'$2#7???7?800020#7?????????<0&$2#10($2-20#20'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-20#20$:##38!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$27#8'+$27@-1$26#18#186:0($27-18#18)$27-18#18$2-20#20)$27-18#18$:##38!$2-8,8$2<!$2-10,8$2=,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 264324 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 264284 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 264284 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_encNE1w.

Module LibSegNs_encTA.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(264328, 20%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",;'$2#7???7?800020#7?????????<0&$2#10($2-20#20'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-20#20$:##38!$:#8,8$29'$29#7???7?800000#7?????????>8&$29#8'$;##1"%pstring).
Definition ss0 : sym_state := SS 264328 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##408:<+$2-20$3$4$5$6$7$:$9$29+$2-11$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,>!$2-11,1+$;#<2!$2-10,8$8!$2-8,8$1'$2#7???7?800020#7?????????<0&$2#10($2-20#20'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-20#20$:##38!$:#8,8$29'$29#7???7?800000#7?????????>8&$29#8'$;##1,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 264328 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 264328 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_encTA.

Module LibSegNs_encTE0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(264328, 20%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [264404].
Definition STOPS1 : list Z := [264404] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-20$3$4$5$6$7$:$9$37$38$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",<'$2#7???7?800020#7?????????<0&$2#10($2-20#20'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-20#20$:##38!$:#18,8$26!$:#20,8$26'$26##800000000000!$2-8,8$2<!$2-10,8$2="%pstring).
Definition ss0 : sym_state := SS 264364 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#408=4#408=4#5=#408=4,20#$2<$2$3$4$5$6$7$2=$9#1$26$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,<'$2#7???7?800020#7?????????<0&$2#10($2-20#20'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-20#20$:##38!$:#18,8$26!$:#20,8$26'$26##800000000000!$2-8,8$2<!$2-10,8$2=,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 264404 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 264364 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 264364 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_encTE0.

End BndP_Ns_108.
