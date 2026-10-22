(* Machine-generated data computed from the task's compiled program image (decoder-built tables and encoded data blocks); may contain fragments of third-party object code - see NOTICE. No Anthropic licence header applies to this file. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Bool.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib.K5.AS Require Import AxSymExec3 AsanPlanCore AsanPlan AsanPlanSound.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib.K5.ASB23 Require Import AsanTablesA AsanPlanImages.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib.K5.AS Require Import AsanInit.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib.K5.ASB23 Require Import AsanStartup StartupPlanAsan StartupHSAsan.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib.K5.AS Require Import AsanPlanFast AsanPlanFast2.
Import ListNotations. Import AX2. Import AP.
Open Scope Z_scope.
From Ltac2 Require Import Ltac2 Constr Std Control.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib Require KReplay.
Ltac2 kr_t_AsanStartupCert () := "C7ARocqVerifyHarness?AgentSubmission2K52AS=AsanPlanSound3APSDmk_itab_ranges_soundC6ARocqVerifyHarness?AgentSubmission2K55ASB23>AsanPlanImages5ASEGSC6ARocqVerifyHarness?AgentSubmission2K55ASB23?StartupPlanAsanCstartup_plan_rangesK47Corelib4Init9Datatypes6option02K7ARocqVerifyHarness?AgentSubmission2K52AS8AsanPlan2AP4cres01K47Corelib4Init5Logic2eq01I47Corelib4Init5Logic2eq00C7ARocqVerifyHarness?AgentSubmission2K52AS=AsanPlanFast24APF2;check_fast2C7ARocqVerifyHarness?AgentSubmission2K52AS=AsanPlanFast24APF2Dcheck_fast2_transferc6ARocqVerifyHarness?AgentSubmission2K55ASB23?AsanStartupCert3IT0C6ARocqVerifyHarness?AgentSubmission2K55ASB23;AsanTablesA6ASAN_AC7ARocqVerifyHarness?AgentSubmission2K52AS8AsanPlan2AP3NX0C6ARocqVerifyHarness?AgentSubmission2K52AS8AsanInit5LIMITC6ARocqVerifyHarness?AgentSubmission2K55ASB23;AsanStartup3XN0C6ARocqVerifyHarness?AgentSubmission2K55ASB23;AsanStartup3XE0C6ARocqVerifyHarness?AgentSubmission2K55ASB23;AsanStartup3XB0C6ARocqVerifyHarness?AgentSubmission2K55ASB23=StartupHSAsan7HS_asanc6ARocqVerifyHarness?AgentSubmission2K55ASB23?AsanStartupCert3KC0c6ARocqVerifyHarness?AgentSubmission2K55ASB23?AsanStartupCert5BFUELc6ARocqVerifyHarness?AgentSubmission2K55ASB23?AsanStartupCert4FUELC6ARocqVerifyHarness?AgentSubmission2K55ASB23;AsanTablesA;asan_a_initC6ARocqVerifyHarness?AgentSubmission2K55ASB23?StartupPlanAsan<startup_planI7ARocqVerifyHarness?AgentSubmission2K52AS8AsanPlan2AP7loopctx00c6ARocqVerifyHarness?AgentSubmission2K55ASB23?AsanStartupCert=startup_shapeI7ARocqVerifyHarness?AgentSubmission2K52AS8AsanPlan2AP4cres00".
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Ltac2 cert_refl (rhs : constr) :=
  let g := Control.goal () in
  let r := constr:(@eq_refl cres $rhs) in
  Std.exact_no_check (Constr.Unsafe.make (Constr.Unsafe.Cast r Constr.Cast.vm g)).

Definition BFUEL : nat := 400000.
Definition KC0 : nat := 0.
Definition FUEL : nat := 12000.   (* [comment removed for export] *)
Definition IT0 : itab := mk_itab_ranges ASEGS startup_plan_ranges.
Lemma IT0_ok : itab_sound ASEGS IT0.
Proof.
KReplay.run1 (kr_t_AsanStartupCert ()) [] "p;2g0000j20Tg001Ag002C'0o". Qed.

Definition startup_shape : shape := (SHole 0).

Lemma startup_cert :
  check ASEGS IT0 ASAN_A NX0 AsanInit.LIMIT XN0 XE0 XB0 HS_asan KC0 BFUEL FUEL None asan_a_init startup_plan = COk startup_shape.
Proof.
KReplay.run1 (kr_t_AsanStartupCert ()) [] "p;1p;2p;3p;?p;Ag003Tj17Tg0046j16Tg0053j20Tg005Mj35Tg005gl?3Tg0070lA4Tg001AR0g008BR1g009CR2g00:CR3g00;=R4g00<6R5g00=3R6g00>0R7g00>mR8g00@0R9g00A1R:g00B4R;f0R<g00C6R=g00D;R>M?3p=1P0P1P2P3P4P5P6P7P8P9P:P;f2P=P>f1P<MA4p=2g00EE#7R<g00FE#6R>g00GPR=/0>%1<=5=>d32o". Qed.
