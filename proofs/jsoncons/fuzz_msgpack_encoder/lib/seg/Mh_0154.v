(* Machine-generated data computed from the task's compiled program image (decoder-built tables and encoded data blocks); may contain fragments of third-party object code - see NOTICE. No Anthropic licence header applies to this file. *)
(* [comment removed for export] *)
Set Warnings "-require-in-module".
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel. From Stdlib Require ZArith NArith List Lia Bool. From LinuxProcessSemantics.LinuxProcessSem Require BvBase RiscvSemantics MemImageType State Run. From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Plain. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Module BndP_Ns_109.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Plain.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKit.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Ns_109 () := "C47Corelib5Lists7ListDef3mapC5ARocqVerifyHarness?AgentSubmission7Mh_01126LibSym7itab_ofK47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00K47Corelib7Numbers7BinNums8positive02C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC6ARocqVerifyHarnessATaskSpecification8ProblemsWSrc_jsoncons_fuzz_msgpack_encoder_repro1M?loaded_segmentsC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_encTE12BFC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_encTE13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_encTE12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_encTE15XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_encTE12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_encTE13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_encTE14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_encTE15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_encTE13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_encTE13ITRK47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109@LibSegNs_encTE1w2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109@LibSegNs_encTE1w3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109@LibSegNs_encTE1w2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109@LibSegNs_encTE1w5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109@LibSegNs_encTE1w2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109@LibSegNs_encTE1w3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109@LibSegNs_encTE1w4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109@LibSegNs_encTE1w5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109@LibSegNs_encTE1w3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109@LibSegNs_encTE1w3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evA12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evA13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evA12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evA15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evA12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evA13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evA14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evA15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evA13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evA13ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evA22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evA23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evA22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evA25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evA22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evA23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evA24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evA25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evA23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evA23ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evD02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evD03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evD02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evD05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evD02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evD03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evD04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evD05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evD03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evD03ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evD12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evD13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evD12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evD15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evD12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evD13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evD14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evD15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evD13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109=LibSegNs_evD13ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idA2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idA3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idA2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idA5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idA2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idA3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idA4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idA5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idA3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idA3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idB2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idB3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idB2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idB5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idB2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idB3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idB4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idB5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idB3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idB3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idC2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idC3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idC2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idC5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idC2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idC3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idC4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idC5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idC3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idC3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idD2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idD3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idD2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idD5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idD2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idD3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idD4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idD5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idD3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idD3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idE2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idE3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idE2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idE5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idE2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idE3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idE4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idE5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idE3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109<LibSegNs_idE3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcdel02BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcdel03NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcdel02BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcdel05XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcdel02F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcdel03PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcdel04planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcdel05regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcdel03kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcdel03ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcdel12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcdel13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcdel12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcdel15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcdel12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcdel13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcdel14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcdel15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcdel13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcdel13ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcnew12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcnew13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcnew12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcnew15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcnew12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcnew13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcnew14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcnew15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcnew13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_109?LibSegNs_lcnew13ITR".

Module LibSegNs_encTE1.
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
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",14'$2#7???7?800020#7?????????<0&$2#10($2-20#20'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-20#20$:##38!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$27#8'+$27@-1$26#18#186:0($27-18#18)$27-18#18$2-20#20)$27-18#18$:##38!$27-8,8$2:'$2:#^#?#??????????????>!$2-8,8$2<!$2-10,8$2="%pstring).
Definition ss0 : sym_state := SS 264364 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#408=4#408=4#5=#408=4,20#$2<$2$3$4$5$6$7$2=$9#1+$2:#1$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,14!$27-8,8+$2:#1'$2#7???7?800020#7?????????<0&$2#10($2-20#20'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-20#20$:##38!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$27#8'+$27@-1$26#18#186:0($27-18#18)$27-18#18$2-20#20)$27-18#18$:##38'$2:#^#?#??????????????>!$2-8,8$2<!$2-10,8$2=,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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
End LibSegNs_encTE1.

Module LibSegNs_encTE1w.
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
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",13'$2#7???7?800020#7?????????<0&$2#10($2-20#20'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-20#20$:##38!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$27#8'+$27@-1$26#18#186:0($27-18#18)$27-18#18$2-20#20)$27-18#18$:##38!$27-8,8^#?#???????????????!$2-8,8$2<!$2-10,8$2="%pstring).
Definition ss0 : sym_state := SS 264364 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#408=4#408=4#5=#408=4,20#$2<$2$3$4$5$6$7$2=$9#1#$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,13!$27-8,8#'$2#7???7?800020#7?????????<0&$2#10($2-20#20'$:#7???7?800000#7?????????<8&$:#8($:##38)$2-20#20$:##38!$:#18,8$26!$:#20,8$27'$26#1000#800000000000'$27#1018#800000000000&$27#8'+$27@-1$26#18#186:0($27-18#18)$27-18#18$2-20#20)$27-18#18$:##38!$2-8,8$2<!$2-10,8$2=,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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
End LibSegNs_encTE1w.

Module LibSegNs_evA1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(269504, 17%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [780464].
Definition STOPS1 : list Z := [780464] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483088 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-16)) (ELit 16);
   KImg 65536 814272;
   KRange (EVar 11) 1 4096].
Definition ss0 : sym_state := SS 269504 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;>8;0#;>8;0#5=#;>8;0,20##41<><+$2-10$3$4$5$6$7$;$9@#18$;@#20$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,7!$2-10,8$8!$2-8,8$1'$2#7???7?800010#800000000000&$2#10($2-10#10%#10000#<6<<0'$;#1#1000,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 780464 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 269504 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 269504 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_evA1.

Module LibSegNs_evA2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(269504, 17%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [269564].
Definition STOPS1 : list Z := [269564] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-10$3$4$5$6$7$23$9$25$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483088 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-16)) (ELit 16);
   KWord (SA (EVar 2) (-8)) 8 (EVar 44);
   KWord (SA (EVar 2) (-16)) 8 (EVar 45)].
Definition ss0 : sym_state := SS 269548 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41<?<#41<?<#5=#41<?<,20#$2<$2$3$4$5$6$7$2=$9$25$23$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,5'$2#7???7?800010#800000000000&$2#10($2-10#10!$2-8,8$2<!$2-10,8$2=,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 269564 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 269548 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 269548 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_evA2.

Module LibSegNs_evD0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(269396, 22%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [269480].
Definition STOPS1 : list Z := [269480] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483072 140737488355328;
   KAlign (EVar 2) 16;
   KRange (EVar 10) 140735332483072 140737488355296;
   KAlign (EVar 10) 8;
   KWord (SA (EVar 10) 8) 8 (EVar 34);
   KWord (SA (EVar 10) 16) 8 (EVar 34);
   KWord (SA (EVar 10) 0) 8 (ELit 0)].
Definition ss0 : sym_state := SS 269396 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41<:8#41<:8#5=#41<:8,20#$1$2$3$4$5$6$7$8$9$:$22#$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,7'$2#7???7?800000#800000000000&$2#10'$:#7???7?800000#7?????????>0&$:#8!$:#8,8$22!$:#10,8$22!$:#,8#,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 269480 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 269396 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 269396 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_evD0.

Module LibSegNs_evD1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(269396, 22%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [409028].
Definition STOPS1 : list Z := [409028] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$2#7???7?800000#800000000000&$2#10'$:#7???7?800000#7?????????>0&$:#8!$:#8,8$22!$:#10,8$22!$:#,8$21!$:#18,8+$21$23'$21#1000#800000000000'$23#1#800000000000"%pstring).
Definition ss0 : sym_state := SS 269396 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#63=<4#63=<4#5=#63=<4,20#$1$2$3$4$5$6$7$8$9$21$23$21$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,:'$2#7???7?800000#800000000000&$2#10'$:#7???7?800000#7?????????>0&$:#8!$:#8,8$22!$:#10,8$22!$:#,8$21!$:#18,8+$21$23'$21#1000#800000000000'$23#1#800000000000,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 269396 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 269396 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_evD1.

Module LibSegNs_idA.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(440752, 1%nat) ; (439300, 54%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [590228].
Definition STOPS1 : list Z := [590228] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$2#7???7?800030#800000000000&$2#10($2-30#30'$:#1000#800000000000&$:#8($:##8!$:#30,8$21'$21#1000#800000000000#$:#38#50)$2-30#30$:##98"%pstring).
Definition ss0 : sym_state := SS 440752 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-40), ELit 40); ((EVar 10), (0), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-40), 40); ((EVar 10), (0), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#90194#90194#5=#90194,20##6;488+$2-30$3$4$5$6$7$:#+$:#30#<34;8$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,10!$:#,8#<34;8!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800030#800000000000&$2#10($2-30#30'$:#1000#800000000000&$:#8($:##8!$:#30,8$21'$21#1000#800000000000#$:#38#50)$2-30#30$:##98,30!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 590228 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 440752 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 440752 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_idA.

Module LibSegNs_idB.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(440752, 1%nat) ; (439300, 54%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [700788].
Definition STOPS1 : list Z := [700788] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$28$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483120 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48);
   KRange (EVar 40) 4096 140737488355328;
   KAlign (EVar 40) 8;
   KZero (SA (EVar 40) 56) (ELit 80);
   KDisj (SA (EVar 2) (-48)) (ELit 48) (SA (EVar 40) 0) (ELit 152)].
Definition ss0 : sym_state := SS 439432 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#:;174#:;174#5=#:;174,20##6;490+$2-30$3$4$5$6$7$28$9#$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,7'$2#7???7?800030#800000000000&$2#10($2-30#30'$28#1000#800000000000&$28#8#$28#38#50)$2-30#30$28##98,30!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 700788 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 439432 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 439432 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_idB.

Module LibSegNs_idC.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(440752, 1%nat) ; (439300, 54%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [700788].
Definition STOPS1 : list Z := [700788] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$28$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483120 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48);
   KRange (EVar 40) 4096 140737488355328;
   KAlign (EVar 40) 8;
   KZero (SA (EVar 40) 56) (ELit 80);
   KDisj (SA (EVar 2) (-48)) (ELit 48) (SA (EVar 40) 0) (ELit 152)].
Definition ss0 : sym_state := SS 439440 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#:;174#:;174#5=#:;174,20##6;498+$2-30$3$4$5$6$7$28$9#$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,7'$2#7???7?800030#800000000000&$2#10($2-30#30'$28#1000#800000000000&$28#8#$28#38#50)$2-30#30$28##98,30!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 700788 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 439440 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 439440 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_idC.

Module LibSegNs_idD.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(440752, 1%nat) ; (439300, 54%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [700788].
Definition STOPS1 : list Z := [700788] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$28$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483120 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48);
   KRange (EVar 40) 4096 140737488355328;
   KAlign (EVar 40) 8;
   KZero (SA (EVar 40) 56) (ELit 80);
   KDisj (SA (EVar 2) (-48)) (ELit 48) (SA (EVar 40) 0) (ELit 152)].
Definition ss0 : sym_state := SS 439448 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#:;174#:;174#5=#:;174,20##6;4:0+$2-30$3$4$5$6$7$28$9#$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,7'$2#7???7?800030#800000000000&$2#10($2-30#30'$28#1000#800000000000&$28#8#$28#38#50)$2-30#30$28##98,30!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 700788 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 439448 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 439448 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_idD.

Module LibSegNs_idE.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(440752, 1%nat) ; (439300, 54%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [700788].
Definition STOPS1 : list Z := [700788] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$28$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",<'$2#7???7?800030#800000000000&$2#10($2-30#30'$28#1000#800000000000&$28#8#$28#38#50)$2-30#30$28##98!$2-8,8$26!$2-10,8$27!$2-18,8$25!$2-20,8$24!$2-28,8$29"%pstring).
Definition ss0 : sym_state := SS 439456 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#:;174#:;174#5=#:;174,20#$26$2$3$4$5$6$7$27$25#$;$<$=$>$?$10$11$24$29$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,<'$2#7???7?800030#800000000000&$2#10($2-30#30'$28#1000#800000000000&$28#8#$28#38#50)$2-30#30$28##98!$2-8,8$26!$2-10,8$27!$2-18,8$25!$2-20,8$24!$2-28,8$29,30!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 700788 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 439456 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 439456 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_idE.

Module LibSegNs_lcdel0.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(409024, 2%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [700788].
Definition STOPS1 : list Z := [700788] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 409024 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#:;174#:;174#5=#:;174,20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,,30!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 700788 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 409024 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 409024 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_lcdel0.

Module LibSegNs_lcdel1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(409024, 2%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [700788].
Definition STOPS1 : list Z := [700788] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [].
Definition ss0 : sym_state := SS 409028 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#:;174#:;174#5=#:;174,20#$1$2$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,,30!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 700788 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 409028 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 409028 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_lcdel1.

Module LibSegNs_lcnew1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(780464, 28%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [701108].
Definition STOPS1 : list Z := [701108] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483088 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-16)) (ELit 16);
   KRange (EVar 10) 1 134217728].
Definition ss0 : sym_state := SS 780464 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [(EVar 2, (-16), ELit 16)].
Definition F0L : list SR.region := [(EVar 2, (-16), 16)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#:;2;4#:;2;4#5=#:;2;4,20##;>8<<+$2-10$3$4$5$6$7$:$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,6!$2-10,8$8!$2-8,8$1'$2#7???7?800010#800000000000&$2#10($2-10#10'$:#1#8000000,30!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 701108 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 780464 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 780464 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_lcnew1.

End BndP_Ns_109.
Module BndP_Ns_110.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Plain.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKit.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Ns_110 () := "C47Corelib5Lists7ListDef3mapC5ARocqVerifyHarness?AgentSubmission7Mh_01126LibSym7itab_ofK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC6ARocqVerifyHarnessATaskSpecification8ProblemsWSrc_jsoncons_fuzz_msgpack_encoder_repro1M?loaded_segmentsC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_lcnew1n2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_lcnew1n3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_lcnew1n2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_lcnew1n5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_lcnew1n2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_lcnew1n3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_lcnew1n4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_lcnew1n5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_lcnew1n3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_lcnew1n3ITRK47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110?LibSegNs_lcnew22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110?LibSegNs_lcnew23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110?LibSegNs_lcnew22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110?LibSegNs_lcnew25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110?LibSegNs_lcnew22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110?LibSegNs_lcnew23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110?LibSegNs_lcnew24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110?LibSegNs_lcnew25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110?LibSegNs_lcnew23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110?LibSegNs_lcnew23ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110<LibSegNs_liB2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110<LibSegNs_liB3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110<LibSegNs_liB2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110<LibSegNs_liB5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110<LibSegNs_liB2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110<LibSegNs_liB3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110<LibSegNs_liB4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110<LibSegNs_liB5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110<LibSegNs_liB3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110<LibSegNs_liB3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110<LibSegNs_liD2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110<LibSegNs_liD3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110<LibSegNs_liD2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110<LibSegNs_liD5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110<LibSegNs_liD2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110<LibSegNs_liD3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110<LibSegNs_liD4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110<LibSegNs_liD5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110<LibSegNs_liD3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110<LibSegNs_liD3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf32A12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf32A13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf32A12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf32A15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf32A12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf32A13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf32A14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf32A15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf32A13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf32A13ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf32A22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf32A23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf32A22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf32A25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf32A22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf32A23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf32A24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf32A25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf32A23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf32A23ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf32L2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf32L3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf32L2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf32L5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf32L2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf32L3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf32L4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf32L5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf32L3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf32L3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf32M2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf32M3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf32M2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf32M5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf32M2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf32M3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf32M4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf32M5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf32M3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf32M3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf64A12BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf64A13NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf64A12BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf64A15XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf64A12F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf64A13PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf64A14planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf64A15regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf64A13kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf64A13ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf64A22BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf64A23NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf64A22BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf64A25XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf64A22F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf64A23PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf64A24planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf64A25regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf64A23kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110ALibSegNs_ntbf64A23ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf64L2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf64L3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf64L2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf64L5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf64L2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf64L3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf64L4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf64L5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf64L3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf64L3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf64M2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf64M3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf64M2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf64M5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf64M2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf64M3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf64M4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf64M5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf64M3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbf64M3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbi16A2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbi16A3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbi16A2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbi16A5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbi16A2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbi16A3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbi16A4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbi16A5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbi16A3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbi16A3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbi16L2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbi16L3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbi16L2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbi16L5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbi16L2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbi16L3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbi16L4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbi16L5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbi16L3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_110@LibSegNs_ntbi16L3ITR".

Module LibSegNs_lcnew1n.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(780464, 28%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [701108].
Definition STOPS1 : list Z := [701108] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483088 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-16)) (ELit 16);
   KRange (EVar 10) 1 1073676288].
Definition ss0 : sym_state := SS 780464 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [(EVar 2, (-16), ELit 16)].
Definition F0L : list SR.region := [(EVar 2, (-16), 16)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#:;2;4#:;2;4#5=#:;2;4,20##;>8<<+$2-10$3$4$5$6$7$:$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,6!$2-10,8$8!$2-8,8$1'$2#7???7?800010#800000000000&$2#10($2-10#10'$:#1#3???0000,30!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 701108 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 780464 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 780464 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_lcnew1n.

Module LibSegNs_lcnew2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(780464, 28%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [780532].
Definition STOPS1 : list Z := [780532] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-10$3$4$5$6$7$8$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483088 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-16)) (ELit 16);
   KRange (EVar 10) 1 18446744073709551615;
   KWord (SA (EVar 2) (-8)) 8 (EVar 40);
   KWord (SA (EVar 2) (-16)) 8 (EVar 41)].
Definition ss0 : sym_state := SS 780492 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;>8?4#;>8?4#5=#;>8?4,20#$28$2$3$4$5$6$7$29$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,6'$2#7???7?800010#800000000000&$2#10($2-10#10'$:#1^#?#???????????????!$2-8,8$28!$2-10,8$29,30!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 780532 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 780492 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 780492 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_lcnew2.

Module LibSegNs_liB.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(590012, 45%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [590104].
Definition STOPS1 : list Z := [590104] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 33; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$2#7???7?800020#800000000000&$2#10($2-20#20'$21#7???7?800020#7??????????8&$21#8)$2-20#20$21##8($21##8!##=7280,1#1!##=7278,8#=7690"%pstring).
Definition ss0 : sym_state := SS 590012 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-32), ELit 32); ((EVar 33), (0), ELit 8)].
Definition F0L : list SR.region := [((EVar 2), (-32), 32); ((EVar 33), (0), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#90118#90118#5=#90118,20#$1$2$3$4$5$6$7$8$9#=7690#=7690$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,>!$21#,8#=7690!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800020#800000000000&$2#10($2-20#20'$21#7???7?800020#7??????????8&$21#8)$2-20#20$21##8($21##8!##=7280,1#1!##=7278,8#=7690,30!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 590104 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 590012 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 590012 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_liB.

Module LibSegNs_liD.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(590228, 9%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [590260].
Definition STOPS1 : list Z := [590260] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 33; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KRange (EVar 33) 140735332483072 140737488355320;
   KWord (SA (EVar 33) 0) 8 (ELit 882320)].
Definition ss0 : sym_state := SS 590228 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#901;4#901;4#5=#901;4,20#$1$2$3$4$5$6$7$8$9#=7690#=7690$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,2'$21#7???7?800000#7??????????8!$21#,8#=7690,30!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 590260 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 590228 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 590228 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_liD.

Module LibSegNs_ntbf32A1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(270744, 34%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [270768].
Definition STOPS1 : list Z := [270768] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 11; EVar 56; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8"%pstring).
Definition ss0 : sym_state := SS 270744 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#421;0#421;0#5=#421;0,20#$1+$2-30$3$4$5$6$7$;$9$;$38$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,=!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 270768 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 270744 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 270744 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ntbf32A1.

Module LibSegNs_ntbf32A2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(270744, 34%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$9$37$38$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8'$37#^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 270772 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-40), ELit 4); ((EVar 2), (-33), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-40), 4); ((EVar 2), (-33), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##42200+$2-30$3$4$5$6$7$;+$2-28$29+$2-21&8&9&6$37#8#??00%6$37#18%6$37#18$>$?$10$11+$2-24$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,<!$2-21,1[,,1&8+@#1000000$37@#100&9$37#??00&8&9&6$37#8#??00%6$37#18!$2-28,4&8+@#1000000$37@#100&9$37#??00&8&9&6$37#8#??00%6$37#18'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8'$37#^#?#???????????????,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 270772 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 270772 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ntbf32A2.

Module LibSegNs_ntbf32L.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(270744, 34%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [270876].
Definition STOPS1 : list Z := [270876] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;+$2-25$37$38$39$=$>$?$10$11+$2-24$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483120 140737488355304;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48);
   KWord (SA (EVar 2) (-8)) 8 (EVar 44);
   KWord (SA (EVar 2) (-16)) 8 (EVar 45);
   KWord (SA (EVar 2) (-24)) 8 (EVar 46);
   KWord (SA (EVar 2) (-32)) 8 (EVar 47)].
Definition ss0 : sym_state := SS 270848 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#4221<#4221<#5=#4221<,20#$2<$2$3$4$5$6$7$2=$2>$37$38$39$=$>$?$10$11$2?$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,7'$2#7???7?800030#7?????????>8&$2#10($2-30#30!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 270876 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 270848 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 270848 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ntbf32L.

Module LibSegNs_ntbf32M.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(270744, 34%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$24$37$38$39$=$>$?$10$11+$2-24$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",='$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8'$24#1000#7??????????>'+$2@-1$24#26#28!$24#1,1$28'$28##??"%pstring).
Definition ss0 : sym_state := SS 270848 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-33), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-33), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##42200+$2-30$3$4$5$6$7$;+$24#1$29+$2-21$39$=$>$?$10$11+$2-24$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,>!$2-21,1$28'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8'$24#1000#7??????????>'+$2@-1$24#26#28!$24#1,1$28'$28##??,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 270848 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 270848 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ntbf32M.

Module LibSegNs_ntbf64A1.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(270880, 48%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [270904].
Definition STOPS1 : list Z := [270904] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 11; EVar 56; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8"%pstring).
Definition ss0 : sym_state := SS 270880 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#42238#42238#5=#42238,20#$1+$2-30$3$4$5$6$7$;$9$;$38$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,=!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 270904 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 270880 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 270880 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ntbf64A1.

Module LibSegNs_ntbf64A2.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(270880, 48%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$9$37$38$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8'$37#^#?#???????????????"%pstring).
Definition ss0 : sym_state := SS 270908 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-48), ELit 8); ((EVar 2), (-33), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-48), 8); ((EVar 2), (-33), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##422<0+$2-30$3$4$5$6$7$;+$2-30$29+$2-21&8+@#100000000000000$37@#10000000000&9$37#??00&8@#1000000&9$37#??0000@#100000000%6$37#18&8@#1000000&9$37#??0000@#100000000%6$37#18+&6$37#38&9&6$37#28#??00@#100000000000000$37$10$11+$2-28$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,<!$2-21,1[,,1&8&8+@#100000000000000$37@#10000000000&9$37#??00&8@#1000000&9$37#??0000@#100000000%6$37#18+&6$37#38+&9&6$37#18#??0000+&9&6$37#28#??00@#1000000%6&6$37#8#18!$2-30,8&8&8+@#100000000000000$37@#10000000000&9$37#??00&8@#1000000&9$37#??0000@#100000000%6$37#18+&6$37#38+&9&6$37#18#??0000+&9&6$37#28#??00@#1000000%6&6$37#8#18'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8'$37#^#?#???????????????,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 270908 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 270908 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ntbf64A2.

Module LibSegNs_ntbf64L.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(270880, 48%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [271068].
Definition STOPS1 : list Z := [271068] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;+$2-29$37$38$39$=$>$?$10$11+$2-28$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483120 140737488355304;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48);
   KWord (SA (EVar 2) (-8)) 8 (EVar 44);
   KWord (SA (EVar 2) (-16)) 8 (EVar 45);
   KWord (SA (EVar 2) (-24)) 8 (EVar 46);
   KWord (SA (EVar 2) (-32)) 8 (EVar 47)].
Definition ss0 : sym_state := SS 271040 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#422=<#422=<#5=#422=<,20#$2<$2$3$4$5$6$7$2=$2>$37$38$39$=$>$?$10$11$2?$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,7'$2#7???7?800030#7?????????>8&$2#10($2-30#30!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 271068 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 271040 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 271040 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ntbf64L.

Module LibSegNs_ntbf64M.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(270880, 48%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$24$37$38$39$=$>$?$10$11+$2-28$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",='$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8'$24#1000#7??????????>'+$2@-1$24#2:#30!$24#1,1$28'$28##??"%pstring).
Definition ss0 : sym_state := SS 271040 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-33), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-33), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##422<0+$2-30$3$4$5$6$7$;+$24#1$29+$2-21$39$=$>$?$10$11+$2-28$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,>!$2-21,1$28'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8'$24#1000#7??????????>'+$2@-1$24#2:#30!$24#1,1$28'$28##??,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 271040 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 271040 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ntbf64M.

Module LibSegNs_ntbi16A.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(270320, 26%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8"%pstring).
Definition ss0 : sym_state := SS 270320 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##42038+$2-30$3$4$5$6$7$;+$2-24$29+$2-21$<$=$>$?$10$11+$2-22$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,?!$2-21,1[,,1&8@#100$:&6@#1000000000000$:#38!$2-24,2&8@#100$:&6@#1000000000000$:#38!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 270320 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 270320 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ntbi16A.

Module LibSegNs_ntbi16L.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(270320, 26%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [270420].
Definition STOPS1 : list Z := [270420] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;+$2-23$37$38$39$=$>$?$10$11+$2-22$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483120 140737488355304;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48);
   KWord (SA (EVar 2) (-8)) 8 (EVar 44);
   KWord (SA (EVar 2) (-16)) 8 (EVar 45);
   KWord (SA (EVar 2) (-24)) 8 (EVar 46);
   KWord (SA (EVar 2) (-32)) 8 (EVar 47)].
Definition ss0 : sym_state := SS 270392 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#42054#42054#5=#42054,20#$2<$2$3$4$5$6$7$2=$2>$37$38$39$=$>$?$10$11$2?$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,7'$2#7???7?800030#7?????????>8&$2#10($2-30#30!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 270420 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 270392 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 270392 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ntbi16L.

End BndP_Ns_110.
Module BndP_Ns_112.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Plain.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKit.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Ns_112 () := "C47Corelib5Lists7ListDef3mapC5ARocqVerifyHarness?AgentSubmission7Mh_01126LibSym7itab_ofK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC6ARocqVerifyHarnessATaskSpecification8ProblemsWSrc_jsoncons_fuzz_msgpack_encoder_repro1M?loaded_segmentsC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112@LibSegNs_ntbu64L2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112@LibSegNs_ntbu64L3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112@LibSegNs_ntbu64L2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112@LibSegNs_ntbu64L5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112@LibSegNs_ntbu64L2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112@LibSegNs_ntbu64L3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112@LibSegNs_ntbu64L4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112@LibSegNs_ntbu64L5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112@LibSegNs_ntbu64L3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112@LibSegNs_ntbu64L3ITRK47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112@LibSegNs_ntbu64M2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112@LibSegNs_ntbu64M3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112@LibSegNs_ntbu64M2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112@LibSegNs_ntbu64M5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112@LibSegNs_ntbu64M2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112@LibSegNs_ntbu64M3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112@LibSegNs_ntbu64M4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112@LibSegNs_ntbu64M5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112@LibSegNs_ntbu64M3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112@LibSegNs_ntbu64M3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdA2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdA3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdA2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdA5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdA2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdA3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdA4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdA5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdA3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdA3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdB2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdB3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdB2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdB5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdB2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdB3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdB4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdB5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdB3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdB3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdC2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdC3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdC2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdC5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdC2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdC3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdC4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdC5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdC3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_rdC3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112>LibSegNs_scH232BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112>LibSegNs_scH233NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112>LibSegNs_scH232BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112>LibSegNs_scH235XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112>LibSegNs_scH232F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112>LibSegNs_scH233PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112>LibSegNs_scH234planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112>LibSegNs_scH235regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112>LibSegNs_scH233kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112>LibSegNs_scH233ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112=LibSegNs_scHg2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112=LibSegNs_scHg3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112=LibSegNs_scHg2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112=LibSegNs_scHg5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112=LibSegNs_scHg2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112=LibSegNs_scHg3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112=LibSegNs_scHg4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112=LibSegNs_scHg5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112=LibSegNs_scHg3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112=LibSegNs_scHg3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scN2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scN3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scN2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scN5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scN2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scN3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scN4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scN5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scN3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scN3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scS2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scS3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scS2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scS5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scS2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scS3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scS4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scS5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scS3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scS3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scT2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scT3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scT2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scT5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scT2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scT3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scT4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scT5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scT3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scT3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scZ2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scZ3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scZ2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scZ5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scZ2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scZ3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scZ4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scZ5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scZ3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_scZ3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdA2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdA3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdA2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdA5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdA2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdA3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdA4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdA5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdA3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdA3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdB2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdB3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdB2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdB5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdB2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdB3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdB4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdB5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdB3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdB3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdC2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdC3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdC2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdC5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdC2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdC3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdC4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdC5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdC3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_112<LibSegNs_sdC3ITR".

Module LibSegNs_ntbu64L.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(270132, 47%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [270316].
Definition STOPS1 : list Z := [270316] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;+$2-29$37$38$39$=$>$?$10$11+$2-28$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483120 140737488355304;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48);
   KWord (SA (EVar 2) (-8)) 8 (EVar 44);
   KWord (SA (EVar 2) (-16)) 8 (EVar 45);
   KWord (SA (EVar 2) (-24)) 8 (EVar 46);
   KWord (SA (EVar 2) (-32)) 8 (EVar 47)].
Definition ss0 : sym_state := SS 270288 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41?><#41?><#5=#41?><,20#$2<$2$3$4$5$6$7$2=$2>$37$38$39$=$>$?$10$11$2?$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,7'$2#7???7?800030#7?????????>8&$2#10($2-30#30!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 270316 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 270288 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 270288 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ntbu64L.

Module LibSegNs_ntbu64M.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(270132, 47%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$24$37$38$39$=$>$?$10$11+$2-28$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",='$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8'$24#1000#7??????????>'+$2@-1$24#2:#30!$24#1,1$28'$28##??"%pstring).
Definition ss0 : sym_state := SS 270288 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-33), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-33), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##41?=0+$2-30$3$4$5$6$7$;+$24#1$29+$2-21$39$=$>$?$10$11+$2-28$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,>!$2-21,1$28'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8'$24#1000#7??????????>'+$2@-1$24#2:#30!$24#1,1$28'$28##??,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 270288 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 270288 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ntbu64M.

Module LibSegNs_rdA.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(234672, 25%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [282324].
Definition STOPS1 : list Z := [282324] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1$2$3$4$5$6$7$8$9$21+$21#248$26$22$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483120 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48)].
Definition ss0 : sym_state := SS 234672 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#44>=4#44>=4#5=#44>=4,20##394>0+$2-30$3$4$5$6$7$21$9$21+$21#248$22$>$>$?$10$11$>$26$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,8!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800030#800000000000&$2#10($2-30#30,30!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 282324 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 234672 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 234672 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_rdA.

Module LibSegNs_rdB.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(234672, 25%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [282700].
Definition STOPS1 : list Z := [282700] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$21$9$:$;$<$=$>$?$10$11$12$26$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483120 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48)].
Definition ss0 : sym_state := SS 234720 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#4504<#4504<#5=#4504<,20##394?4+$2-30$3$4$5$6$7$21+$21#190+$21#190$26$12$=$>$?$10$11$12$26$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,3'$2#7???7?800030#800000000000&$2#10($2-30#30,30!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 282700 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 234720 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 234720 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_rdB.

Module LibSegNs_rdC.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(234672, 25%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [234768].
Definition STOPS1 : list Z := [234768] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$21+$21#190$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",<'$2#7???7?800030#800000000000&$2#10($2-30#30'$21#7???7?800030#7????????>08&$21#8)$2-30#30$21##1?8($21#1?0#8!$2-8,8$28!$2-10,8$29!$2-18,8$2:!$2-20,8$2;!$2-28,8$2<"%pstring).
Definition ss0 : sym_state := SS 234740 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 33), (496), ELit 8)].
Definition F0L : list SR.region := [((EVar 33), (496), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#39510#39510#5=#39510,20#$28$2$3$4$5$6$7$29$2:$:$;$<$=$>$?$10$11$2;$2<$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,=!$21#1?0,8+$21#190'$2#7???7?800030#800000000000&$2#10($2-30#30'$21#7???7?800030#7????????>08&$21#8)$2-30#30$21##1?8($21#1?0#8!$2-8,8$28!$2-10,8$29!$2-18,8$2:!$2-20,8$2;!$2-28,8$2<,30!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 234768 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 234740 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 234740 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_rdC.

Module LibSegNs_scH23.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(234216, 46%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [780464].
Definition STOPS1 : list Z := [780464] ++ ENDS.
Definition NX0 : nat := 52.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 35); ELit 23; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483120 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48);
   KRange (EVar 33) 140735332483120 140737488355304;
   KAlign (EVar 33) 8;
   KDisj (SA (EVar 2) (-48)) (ELit 48) (SA (EVar 33) 0) (ELit 24);
   KWr (SA (EVar 33) 0) (ELit 24)].
Definition ss0 : sym_state := SS 234216 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;>8;0#;>8;0#5=#;>8;0,20##39350+$2-30$3$4$5$6$7#17$23#1:^#?#??????????????8#17$=$>$?$10$11$21$13#1:$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,=!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800030#800000000000&$2#10($2-30#30'$21#7???7?800030#7?????????>8&$21#8)$2-30#30$21##18($21##18,34!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 780464 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 234216 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 234216 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_scH23.

Module LibSegNs_scHg.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(234216, 46%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [780464].
Definition STOPS1 : list Z := [780464] ++ ENDS.
Definition NX0 : nat := 52.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 35); (EVar 34); EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$2#7???7?800030#800000000000&$2#10($2-30#30'$21#7???7?800030#7?????????>8&$21#8)$2-30#30$21##18($21##18'$22#18#3??????'&8$22#7#18#4000007"%pstring).
Definition ss0 : sym_state := SS 234216 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;>8;0#;>8;0#5=#;>8;0,20##39350+$2-30$3$4$5$6$7$22$23+@#8&6$22#3#8^#?#??????????????8$22$=$>$?$10$11$21$13+@#8&6$22#3#8$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,?!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800030#800000000000&$2#10($2-30#30'$21#7???7?800030#7?????????>8&$21#8)$2-30#30$21##18($21##18'$22#18#3??????'&8$22#7#18#4000007,34!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 780464 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 234216 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 234216 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_scHg.

Module LibSegNs_scN.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(234216, 46%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [761212].
Definition STOPS1 : list Z := [761212] ++ ENDS.
Definition NX0 : nat := 52.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$22$23$24$;$<$=$>$?$10$11$21$13$25$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$2#7???7?800030#800000000000&$2#10($2-30#30'$21#7???7?800030#7?????????>8&$21#8)$2-30#30$21##18($21##18'$22#17#3??????'$25#1:#4000008"%pstring).
Definition ss0 : sym_state := SS 234320 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 33), (0), ELit 24)].
Definition F0L : list SR.region := [((EVar 33), (0), 24)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;9=7<#;9=7<#5=#;9=7<,20##39374+$2-30$3$4$5$6$7$22$23$24$23$22$=$>$?$10$11$21$24+$25#1$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,<!$21#10,8$24!$21#8,8$22!$21#,8+$25#1'$2#7???7?800030#800000000000&$2#10($2-30#30'$21#7???7?800030#7?????????>8&$21#8)$2-30#30$21##18($21##18'$22#17#3??????'$25#1:#4000008,34!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 234320 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 234320 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_scN.

Module LibSegNs_scS.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(234216, 46%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [761212].
Definition STOPS1 : list Z := [761212] ++ ENDS.
Definition NX0 : nat := 52.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); (EVar 35); (EVar 34); EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",8'$2#7???7?800030#800000000000&$2#10($2-30#30'$21#7???7?800030#7?????????>8&$21#8)$2-30#30$21##18($21##18'$22#1#16"%pstring).
Definition ss0 : sym_state := SS 234216 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-48), ELit 48); ((EVar 33), (0), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-48), 48); ((EVar 33), (0), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#;9=7<#;9=7<#5=#;9=7<,20##39374+$2-30$3$4$5$6$7$22$23+$21#1$23$22$=$>$?$10$11$21+$21#1$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,?!$21#,1@#2$22!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800030#800000000000&$2#10($2-30#30'$21#7???7?800030#7?????????>8&$21#8)$2-30#30$21##18($21##18'$22#1#16,34!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 234216 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 234216 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_scS.

Module LibSegNs_scT.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(234216, 46%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [234392].
Definition STOPS1 : list Z := [234392] ++ ENDS.
Definition NX0 : nat := 52.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$22$9$:$;$<$=$>$?$10$11$12$27$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",='$2#7???7?800030#800000000000&$2#10($2-30#30!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31'$27#1000#800000000000'$22##3??????(+$27$22##1)$2-30#30+$27$22##1"%pstring).
Definition ss0 : sym_state := SS 234356 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EAlu Instr.ALU_ADD (EVar 39) (EVar 34)), (0), ELit 1)].
Definition F0L : list SR.region := [((EAlu Instr.ALU_ADD (EVar 39) (EVar 34)), (0), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#39398#39398#5=#39398,20#$2<$2$3$4$5$6$7$2=$2>$:$;$<$=$>$?$10$11$2?$30$31$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,>!+$22$27#,1#'$2#7???7?800030#800000000000&$2#10($2-30#30!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?!$2-28,8$30!$2-30,8$31'$27#1000#800000000000'$22##3??????(+$27$22##1)$2-30#30+$27$22##1,34!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 234392 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 234356 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 234356 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_scT.

Module LibSegNs_scZ.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(234216, 46%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [234392].
Definition STOPS1 : list Z := [234392] ++ ENDS.
Definition NX0 : nat := 52.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; (EVar 33); EVar 11; ELit 0; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483120 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48);
   KRange (EVar 33) 140735332483120 140737488355304;
   KAlign (EVar 33) 8;
   KDisj (SA (EVar 2) (-48)) (ELit 48) (SA (EVar 33) 0) (ELit 24);
   KWr (SA (EVar 33) 0) (ELit 24)].
Definition ss0 : sym_state := SS 234216 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-48), ELit 48); ((EVar 33), (0), ELit 2)].
Definition F0L : list SR.region := [((EVar 2), (-48), 48); ((EVar 33), (0), 2)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#39398#39398#5=#39398,20#$1$2$3$4$5$6$7$8$9#^#?#??????????????8#$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,?!$21#1,1#!$21#,1#!$2-30,8$14!$2-28,8$13!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800030#800000000000&$2#10($2-30#30'$21#7???7?800030#7?????????>8&$21#8)$2-30#30$21##18($21##18,34!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 234392 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 234216 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 234216 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_scZ.

Module LibSegNs_sdA.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(259972, 36%nat) ; (441500, 1%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [409028].
Definition STOPS1 : list Z := [409028] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$2#7???7?800020#800000000000&$2#10($2-20#20'$:#1000#800000000000&$:#8)$2-20#20$:##128!$:#108,8$21'$21#1000#800000000000!$:#110,8$22"%pstring).
Definition ss0 : sym_state := SS 259972 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#63=<4#63=<4#5=#63=<4,20##3?7:<+$2-20$3$4$5$6$7$:$9$21$22$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,=!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800020#800000000000&$2#10($2-20#20'$:#1000#800000000000&$:#8)$2-20#20$:##128!$:#108,8$21'$21#1000#800000000000!$:#110,8$22,30!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 409028 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 259972 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 259972 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_sdA.

Module LibSegNs_sdB.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(259972, 36%nat) ; (441500, 1%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [590228].
Definition STOPS1 : list Z := [590228] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-20$3$4$5$6$7$28$9$:$;$<$=$>$?$10$11$12$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",:'$2#7???7?800020#800000000000&$2#10($2-20#20%#10000#<6<<0'$28#1000#800000000000&$28#8)$2-20#20$28##128($28#58#8($28#8#8($28#18#8"%pstring).
Definition ss0 : sym_state := SS 260012 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 40), (88), ELit 8); ((EVar 40), (8), ELit 8); ((EVar 40), (24), ELit 8)].
Definition F0L : list SR.region := [((EVar 40), (88), 8); ((EVar 40), (8), 8); ((EVar 40), (24), 8)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#90194#90194#5=#90194,20##3?7>4+$2-20$3$4$5$6$7$28+$28#8+$28#20#<3518#;?=88$=$>$?$10$11+$28#58$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,<!$28#18,8#<3518!$28#8,8#;?=60!$28#58,8#;?=88'$2#7???7?800020#800000000000&$2#10($2-20#20'$28#1000#800000000000&$28#8)$2-20#20$28##128($28#58#8($28#8#8($28#18#8,30!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 590228 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 260012 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 260012 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_sdB.

Module LibSegNs_sdC.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(259972, 36%nat) ; (441500, 1%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [440752].
Definition STOPS1 : list Z := [440752] ++ ENDS.
Definition NX0 : nat := 48.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-20$3$4$5$6$7$8$29$:$;$<$=$>$?$10$11$2:$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483104 140737488355328;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-32)) (ELit 32);
   KWord (SA (EVar 2) (-8)) 8 (EVar 38);
   KWord (SA (EVar 2) (-16)) 8 (EVar 39);
   KWord (SA (EVar 2) (-24)) 8 (EVar 37);
   KWord (SA (EVar 2) (-32)) 8 (EVar 36)].
Definition ss0 : sym_state := SS 260068 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#6;9;0#6;9;0#5=#6;9;0,20#$26$2$3$4$5$6$7$27$25$2:#;?=:0$<$=$>$?$10$11$24$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,7'$2#7???7?800020#800000000000&$2#10($2-20#20!$2-8,8$26!$2-10,8$27!$2-18,8$25!$2-20,8$24,30!"%pstring).
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
Definition ps0 : SR.post_spec := SR.PS 440752 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 260068 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 260068 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_sdC.

End BndP_Ns_112.
Module BndP_Ns_111.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegCodec.  Import SegCodec.StrNota.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Plain.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require AxSymExec3Sound. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require SegPlan. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3B OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.AxSymExec3Sound OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AsanPlanCore OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0130.SegRun OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.SegPlan OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0137.SegPlanAuto OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.SegPlanJoin OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0140.Ns0PlanKit.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0128.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndP_Ns_111 () := "C47Corelib5Lists7ListDef3mapC5ARocqVerifyHarness?AgentSubmission7Mh_01126LibSym7itab_ofK47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1Z02K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_ok_fastC6ARocqVerifyHarness?AgentSubmission7Mh_0128;SegPlanFast3SGF<cert_of_fastC6ARocqVerifyHarnessATaskSpecification8ProblemsWSrc_jsoncons_fuzz_msgpack_encoder_repro1M?loaded_segmentsC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_CPYC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_SETC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5X_LENC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_LOC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit5RO_HIc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi16M2BFC5ARocqVerifyHarness?AgentSubmission7Mh_0140:Ns0PlanKit2A0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi16M3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi16M2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi16M5XSTEPC5ARocqVerifyHarness?AgentSubmission7SegPlan3SGP;xstep2_nonec7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi16M2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi16M3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi16M4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi16M5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi16M3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi16M3ITRK47Corelib7Numbers7BinNums8positive03I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32A2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32A3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32A2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32A5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32A2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32A3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32A4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32A5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32A3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32A3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32L2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32L3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32L2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32L5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32L2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32L3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32L4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32L5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32L3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32L3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32M2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32M3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32M2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32M5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32M2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32M3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32M4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32M5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32M3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi32M3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64A2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64A3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64A2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64A5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64A2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64A3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64A4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64A5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64A3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64A3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64L2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64L3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64L2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64L5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64L2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64L3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64L4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64L5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64L3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64L3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64M2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64M3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64M2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64M5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64M2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64M3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64M4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64M5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64M3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbi64M3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16A2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16A3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16A2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16A5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16A2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16A3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16A4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16A5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16A3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16A3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16L2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16L3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16L2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16L5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16L2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16L3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16L4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16L5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16L3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16L3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16M2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16M3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16M2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16M5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16M2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16M3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16M4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16M5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16M3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu16M3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32A2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32A3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32A2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32A5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32A2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32A3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32A4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32A5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32A3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32A3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32L2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32L3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32L2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32L5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32L2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32L3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32L4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32L5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32L3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32L3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32M2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32M3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32M2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32M5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32M2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32M3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32M4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32M5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32M3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu32M3ITRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu64A2BFc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu64A3NX0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu64A2BRc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu64A5XSTEPc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu64A2F0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu64A3PSSc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu64A4planc7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu64A5regs0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu64A3kn0c7ARocqVerifyHarness?AgentSubmission3seg7Mh_0154;BndP_Ns_111@LibSegNs_ntbu64A3ITR".

Module LibSegNs_ntbi16M.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(270320, 26%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$24$37$38$39$=$>$?$10$11+$2-22$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",='$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8'$24#1000#7??????????>'+$2@-1$24#24#24!$24#1,1$28'$28##??"%pstring).
Definition ss0 : sym_state := SS 270392 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-33), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-33), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##42038+$2-30$3$4$5$6$7$;+$24#1$29+$2-21$39$=$>$?$10$11+$2-22$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,>!$2-21,1$28'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8'$24#1000#7??????????>'+$2@-1$24#24#24!$24#1,1$28'$28##??,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 270392 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 270392 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ntbi16M.

Module LibSegNs_ntbi32A.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(270424, 33%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8"%pstring).
Definition ss0 : sym_state := SS 270424 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##420;<+$2-30$3$4$5$6$7$;+$2-28$29+$2-21@#100&9$:#??00%6$:#18$>$?$10$11+$2-24$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,?!$2-21,1[,,1&8+@#1000000$:@#100&9$:#??00&8&9&6$:#8#??00%6$:#18!$2-28,4&8+@#1000000$:@#100&9$:#??00&8&9&6$:#8#??00%6$:#18!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 270424 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 270424 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ntbi32A.

Module LibSegNs_ntbi32L.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(270424, 33%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [270552].
Definition STOPS1 : list Z := [270552] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;+$2-25$37$38$39$=$>$?$10$11+$2-24$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483120 140737488355304;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48);
   KWord (SA (EVar 2) (-8)) 8 (EVar 44);
   KWord (SA (EVar 2) (-16)) 8 (EVar 45);
   KWord (SA (EVar 2) (-24)) 8 (EVar 46);
   KWord (SA (EVar 2) (-32)) 8 (EVar 47)].
Definition ss0 : sym_state := SS 270524 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#420=8#420=8#5=#420=8,20#$2<$2$3$4$5$6$7$2=$2>$37$38$39$=$>$?$10$11$2?$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,7'$2#7???7?800030#7?????????>8&$2#10($2-30#30!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 270552 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 270524 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 270524 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ntbi32L.

Module LibSegNs_ntbi32M.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(270424, 33%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$24$37$38$39$=$>$?$10$11+$2-24$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",='$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8'$24#1000#7??????????>'+$2@-1$24#26#28!$24#1,1$28'$28##??"%pstring).
Definition ss0 : sym_state := SS 270524 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-33), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-33), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##420;<+$2-30$3$4$5$6$7$;+$24#1$29+$2-21$39$=$>$?$10$11+$2-24$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,>!$2-21,1$28'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8'$24#1000#7??????????>'+$2@-1$24#26#28!$24#1,1$28'$28##??,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 270524 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 270524 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ntbi32M.

Module LibSegNs_ntbi64A.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(270556, 47%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8"%pstring).
Definition ss0 : sym_state := SS 270556 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##42178+$2-30$3$4$5$6$7$;+$2-30$29+$2-21@#10000000000&9$:#??00+&9&6$:#18#??0000@#1000000%6&6$:#8#18&8@#1000000&9$:#??0000@#100000000%6$:#18@#1000000&9$:#??0000$10$11+$2-28$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,?!$2-21,1[,,1&8&8+@#100000000000000$:@#10000000000&9$:#??00&8@#1000000&9$:#??0000@#100000000%6$:#18&8+&9&6$:#18#??0000@#1000000%6&6$:#8#18&8&9&6$:#28#??00&6$:#38!$2-30,8&8&8+@#100000000000000$:@#10000000000&9$:#??00&8@#1000000&9$:#??0000@#100000000%6$:#18&8+&9&6$:#18#??0000@#1000000%6&6$:#8#18&8&9&6$:#28#??00&6$:#38!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 270556 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 270556 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ntbi64A.

Module LibSegNs_ntbi64L.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(270556, 47%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [270740].
Definition STOPS1 : list Z := [270740] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;+$2-29$37$38$39$=$>$?$10$11+$2-28$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483120 140737488355304;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48);
   KWord (SA (EVar 2) (-8)) 8 (EVar 44);
   KWord (SA (EVar 2) (-16)) 8 (EVar 45);
   KWord (SA (EVar 2) (-24)) 8 (EVar 46);
   KWord (SA (EVar 2) (-32)) 8 (EVar 47)].
Definition ss0 : sym_state := SS 270712 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#42194#42194#5=#42194,20#$2<$2$3$4$5$6$7$2=$2>$37$38$39$=$>$?$10$11$2?$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,7'$2#7???7?800030#7?????????>8&$2#10($2-30#30!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 270740 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 270712 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 270712 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ntbi64L.

Module LibSegNs_ntbi64M.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(270556, 47%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$24$37$38$39$=$>$?$10$11+$2-28$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",='$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8'$24#1000#7??????????>'+$2@-1$24#2:#30!$24#1,1$28'$28##??"%pstring).
Definition ss0 : sym_state := SS 270712 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-33), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-33), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##42178+$2-30$3$4$5$6$7$;+$24#1$29+$2-21$39$=$>$?$10$11+$2-28$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,>!$2-21,1$28'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8'$24#1000#7??????????>'+$2@-1$24#2:#30!$24#1,1$28'$28##??,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 270712 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 270712 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ntbi64M.

Module LibSegNs_ntbu16A.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(269036, 25%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8"%pstring).
Definition ss0 : sym_state := SS 269036 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##41;30+$2-30$3$4$5$6$7$;+$2-24$29+$2-21$<$=$>$?$10$11+$2-22$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,?!$2-21,1[,,1&8@#100$:&6$:#8!$2-24,2&8@#100$:&6$:#8!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 269036 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 269036 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ntbu16A.

Module LibSegNs_ntbu16L.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(269036, 25%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [269132].
Definition STOPS1 : list Z := [269132] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;+$2-23$37$38$39$=$>$?$10$11+$2-22$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483120 140737488355304;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48);
   KWord (SA (EVar 2) (-8)) 8 (EVar 44);
   KWord (SA (EVar 2) (-16)) 8 (EVar 45);
   KWord (SA (EVar 2) (-24)) 8 (EVar 46);
   KWord (SA (EVar 2) (-32)) 8 (EVar 47)].
Definition ss0 : sym_state := SS 269104 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41;4<#41;4<#5=#41;4<,20#$2<$2$3$4$5$6$7$2=$2>$37$38$39$=$>$?$10$11$2?$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,7'$2#7???7?800030#7?????????>8&$2#10($2-30#30!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 269132 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 269104 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 269104 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ntbu16L.

Module LibSegNs_ntbu16M.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(269036, 25%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$24$37$38$39$=$>$?$10$11+$2-22$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",='$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8'$24#1000#7??????????>'+$2@-1$24#24#24!$24#1,1$28'$28##??"%pstring).
Definition ss0 : sym_state := SS 269104 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-33), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-33), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##41;30+$2-30$3$4$5$6$7$;+$24#1$29+$2-21$39$=$>$?$10$11+$2-22$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,>!$2-21,1$28'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8'$24#1000#7??????????>'+$2@-1$24#24#24!$24#1,1$28'$28##??,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 269104 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 269104 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ntbu16M.

Module LibSegNs_ntbu32A.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(269136, 33%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8"%pstring).
Definition ss0 : sym_state := SS 269136 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##41;;4+$2-30$3$4$5$6$7$;+$2-28$29+$2-21@#100&9$:#??00%6$:#18$>$?$10$11+$2-24$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,?!$2-21,1[,,1&8+@#1000000$:@#100&9$:#??00&8&9&6$:#8#??00%6$:#18!$2-28,4&8+@#1000000$:@#100&9$:#??00&8&9&6$:#8#??00%6$:#18!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 269136 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 269136 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ntbu32A.

Module LibSegNs_ntbu32L.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(269136, 33%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [269264].
Definition STOPS1 : list Z := [269264] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;+$2-25$37$38$39$=$>$?$10$11+$2-24$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := [KRange (EVar 2) 140735332483120 140737488355304;
   KAlign (EVar 2) 16;
   KWr (SA (EVar 2) (-48)) (ELit 48);
   KWord (SA (EVar 2) (-8)) 8 (EVar 44);
   KWord (SA (EVar 2) (-16)) 8 (EVar 45);
   KWord (SA (EVar 2) (-24)) 8 (EVar 46);
   KWord (SA (EVar 2) (-32)) 8 (EVar 47)].
Definition ss0 : sym_state := SS 269236 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [].
Definition F0L : list SR.region := [].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41;=0#41;=0#5=#41;=0,20#$2<$2$3$4$5$6$7$2=$2>$37$38$39$=$>$?$10$11$2?$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,7'$2#7???7?800030#7?????????>8&$2#10($2-30#30!$2-8,8$2<!$2-10,8$2=!$2-18,8$2>!$2-20,8$2?,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
     | KUnk (SA b k) (ELit n) => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KRange _ _ _ | KAlign _ _ => negb (in_kn0 K)
     | _ => false end)%bool (s_know sF).
Definition spoff_of (sF : sym_state) : Z := match nth 2 (s_regs sF) (ELit 0) with EAlu _ (EVar v) (ELit k) => if Nat.eqb v SPV then k else 0 | _ => 0 end.

Definition regs_out0 : list expr := Eval vm_compute in (s_regs s1).
Definition exit_sp_off0 : Z := Eval vm_compute in (spoff_of s1).
Definition cells0 : list kentry := Eval vm_compute in (cells_of s1 exit_sp_off0).
Definition nfresh0 : nat := Eval vm_compute in (s_next s1 - NX0)%nat.
Definition exit_pc0 : Z := Eval vm_compute in (s_pc s1).
Definition ps0 : SR.post_spec := SR.PS 269264 (map (fun i => (i, nth i regs_out0 (ELit 0))) (seq 1 31)) F0L cells0.

Definition SXALL : list sym_state := [].
Definition mkps (st : sym_state) : SR.post_spec :=
  SR.PS (s_pc st) (map (fun i => (i, nth i (s_regs st) (ELit 0))) (seq 1 31)) F0L (cells_of st (spoff_of st)).
Definition PSS : list SR.post_spec := [ps0] ++ map mkps SXALL.
Definition ps := ps0. Definition regs_out := regs_out0. Definition cells := cells0. Definition nfresh := nfresh0.

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 269236 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 269236 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ntbu32L.

Module LibSegNs_ntbu32M.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(269136, 33%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_E) ",20#$1+$2-30$3$4$5$6$7$;$24$37$38$39$=$>$?$10$11+$2-24$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?"%pstring).
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",='$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8'$24#1000#7??????????>'+$2@-1$24#26#28!$24#1,1$28'$28##??"%pstring).
Definition ss0 : sym_state := SS 269236 regs0 [] kn0 NX0.
Definition F0 : list SGP.region := [((EVar 2), (-33), ELit 1)].
Definition F0L : list SR.region := [((EVar 2), (-33), 1)].
Definition BF : nat := 1000.

Definition BR : list SGP.bfact := [].

Definition XSTEP := SGP.xstep_none.
Definition XSTEP2 := SGP.xstep2_none.
Definition AUTO := SGA.auto RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF STOPS1 ENDS A0 F0.
Definition LOADB := SGP.loadbyte IT BR.
Definition BLOCK := SGP.step1 RSEGS IT X_CPY X_SET X_LEN RO_LO RO_HI BF F0 (SR.SBlock STOPS1).
Set Printing Width 1000000. Set Printing Depth 1000000.

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##41;;4+$2-30$3$4$5$6$7$;+$24#1$29+$2-21$39$=$>$?$10$11+$2-24$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,>!$2-21,1$28'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8'$24#1000#7??????????>'+$2@-1$24#26#28!$24#1,1$28'$28##??,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 269236 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 269236 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ntbu32M.

Module LibSegNs_ntbu64A.
Import ListNotations. Import AX2. Import AX2B.
Open Scope Z_scope.
Unset Lia Cache.
Abbreviation RSEGS := Plain.M.loaded_segments.
Definition ITR : list (Z * nat) := [(270132, 47%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Definition ENDS : list Z := [269572].
Definition STOPS1 : list Z := [269572] ++ ENDS.
Definition NX0 : nat := 60.
Definition v0 (k : Z) : expr := EAlu Instr.ALU_ADD (EVar 0) (ELit k).
Definition L : expr := EVar 4.
Definition regs0 : list expr := [ELit 0; EVar 1; EVar 2; EVar 3; EVar 4; EVar 5; EVar 6; EVar 7; EVar 8; EVar 9; EVar 10; EVar 11; EVar 12; EVar 13; EVar 14; EVar 15; EVar 16; EVar 17; EVar 18; EVar 19; EVar 20; EVar 21; EVar 22; EVar 23; EVar 24; EVar 25; EVar 26; EVar 27; EVar 28; EVar 29; EVar 30; EVar 31].
Definition kn0 : list kentry := Eval vm_compute in (SegCodec.run (SegCodec.lst SegCodec.sc_kentry) ",9'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8"%pstring).
Definition ss0 : sym_state := SS 270132 regs0 [] kn0 NX0.
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

Definition ex1 : list SGA.aitem * (Z * sym_state) := Eval vm_compute in (SegCodec.run (SegCodec.sc_pair (SegCodec.lst SegCodec.sc_aitem) (SegCodec.sc_pair SegCodec.sc_Z SegCodec.sc_sstate)) ",1!!,2#41=04#41=04#5=#41=04,20##41?=0+$2-30$3$4$5$6$7$;+$2-30$29+$2-21@#10000000000&9$:#??00+&9&6$:#18#??0000@#1000000%6&6$:#8#18&8@#1000000&9$:#??0000@#100000000%6$:#18@#1000000&9$:#??0000$10$11+$2-28$13$14$15$16$17$18$19$1:$1;$1<$1=$1>$1?,,?!$2-21,1[,,1&8&8+@#100000000000000$:@#10000000000&9$:#??00&8@#1000000&9$:#??0000@#100000000%6$:#18&8+&9&6$:#18#??0000@#1000000%6&6$:#8#18&8&9&6$:#28#??00&6$:#38!$2-30,8&8&8+@#100000000000000$:@#10000000000&9$:#??00&8@#1000000&9$:#??0000@#100000000%6$:#18&8+&9&6$:#18#??0000@#1000000%6&6$:#8#18&8&9&6$:#28#??00&6$:#38!$2-20,8$12!$2-18,8$9!$2-10,8$8!$2-8,8$1'$2#7???7?800030#7?????????>8&$2#10($2-30#30'$;#7???7?800000#7??????????8&$;#8!$;#,8$29)$;##8$2-30#30'$29#7???7?800000#7?????????>8&$29#8,3<!"%pstring).
Definition s1 : sym_state := snd (snd ex1).

Definition plan : SGP.splan := SGA.mkplan (fst ex1) (SGP.PEnd 0).
Definition in_foot (b : expr) (k : Z) (w : Z) : bool :=
  existsb (fun r : SR.region => let '(rb, rlo, rlen) := r in (expr_eqb rb b && Z.leb rlo k && Z.leb (k + w) (rlo + rlen))%bool) F0L.
Definition in_kn0 (K : kentry) : bool := existsb (APC.kentry_eqb K) kn0.
Definition SPV : nat := 2%nat.
Definition live (spoff : Z) (b : expr) (k : Z) : bool := (negb (expr_eqb b (EVar SPV)) || Z.leb spoff k)%bool.

Definition cells_of (sF : sym_state) (spoff : Z) : list kentry :=
  List.filter (fun K => match K with
     | KWord (SA b k) w _ => live spoff b k && (in_foot b k (Z.of_nat w) || negb (in_kn0 K))
     | KZero (SA b k) (ELit n) | KFill (SA b k) (ELit n) _ | KBlob (SA b k) (ELit n) _ => live spoff b k && (in_foot b k n || negb (in_kn0 K))
     | KZero (SA b k) _ | KFill (SA b k) _ _ | KBlob (SA b k) _ _ => live spoff b k && (in_foot b k 1 || negb (in_kn0 K))
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

Lemma cert : SGP.cert_ok RSEGS (itab_of RSEGS ITR) X_CPY X_SET X_LEN RO_LO RO_HI BF A0 NX0 BR XSTEP SGP.xstep2_none F0 PSS plan 270132 regs0 kn0 = true.
Proof. apply Mh_0128.SegPlanFast.SGF.cert_of_fast. vm_cast_no_check (@eq_refl bool true). Qed.

Definition seg_sound_ax := src0_plan_sound ITR BF NX0 BR XSTEP F0 PSS plan 270132 regs0 kn0 cert (SGP.xstep_none_ok RSEGS NX0 BR F0).
End LibSegNs_ntbu64A.

End BndP_Ns_111.
