(* Machine-generated data computed from the task's compiled program image (decoder-built tables and encoded data blocks); may contain fragments of third-party object code - see NOTICE. No Anthropic licence header applies to this file. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Bool.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib.AS Require Import AxSymExec3 AsanPlanCore AsanPlan AsanPlanSound AsanPlanImages AsanInit AsanNodesWJoin AsanStartup StartupPlanAsan StartupHSAsan StartupPlan2Asan StartupHS2Asan AsanCertDefs.
Import ListNotations. Import AX2. Import AP.
Open Scope Z_scope.
From Ltac2 Require Import Ltac2.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib Require KReplay.
Ltac2 kr_t_AsanStartupCertH () := "K6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP4cres01K47Corelib4Init5Logic2eq01C5ARocqVerifyHarness?AgentSubmission2AS>AsanNodesWJoin3XNSK47Corelib4Init9Datatypes6option02I47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP5checkC5ARocqVerifyHarness?AgentSubmission2AS>AsanPlanImages5ASEGSC5ARocqVerifyHarness?AgentSubmission2AS<AsanCertDefs3IT0C6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP4ASANC6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP3NX0C5ARocqVerifyHarness?AgentSubmission2AS8AsanInit6LIMITHC5ARocqVerifyHarness?AgentSubmission2AS;AsanStartup3XE0C5ARocqVerifyHarness?AgentSubmission2AS;AsanStartup3XB0C5ARocqVerifyHarness?AgentSubmission2AS=StartupHSAsan8HS_asanAC5ARocqVerifyHarness?AgentSubmission2AS<AsanCertDefs3KC0C5ARocqVerifyHarness?AgentSubmission2AS<AsanCertDefs5BFUELC5ARocqVerifyHarness?AgentSubmission2AS<AsanCertDefs4FUELC6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP9asan_initC5ARocqVerifyHarness?AgentSubmission2AS?StartupPlanAsan<startup_planI6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP4cres00C5ARocqVerifyHarness?AgentSubmission2AS<AsanCertDefs=startup_shapeI6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP7loopctx00".

Lemma startup_cert_h :
  check ASEGS IT0 ASAN NX0 AsanInit.LIMITH (XNS ASEGS ASAN NX0 AsanInit.LIMITH) XE0 XB0 HS_asanA KC0 BFUEL FUEL None asan_init startup_plan = COk startup_shape.
Proof.
KReplay.run1 (kr_t_AsanStartupCertH ()) [] "p;1p;2p;4p;3p;?g0000j16Tg000jj25Tg001Dj40Tg002>j11Tg002`j32Tg003:l?3Tg0043R0g004og005gR1g006_R2g007VR3f1g008Mg009Dg00:;g00;9g00<1g00<kf0g00=dg00>aM?3p=4g00?eR4g00@_#6R5'5P0P1P2P3C0g00Aa#1'4=245do". Time Qed.
