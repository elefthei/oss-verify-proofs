(* Machine-generated data computed from the task's compiled program image (decoder-built tables and encoded data blocks); may contain fragments of third-party object code - see NOTICE. No Anthropic licence header applies to this file. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Bool.
From OssFuzzTheorems.Proofs.leptonica.bilateral_fuzzer.lib.K5.AS Require Import AxSymExec3 AsanPlanCore AsanPlan AsanPlanSound.
From OssFuzzTheorems.Proofs.leptonica.bilateral_fuzzer.lib.K5.AS02 Require Import AsanTablesA AsanPlanImages.
From OssFuzzTheorems.Proofs.leptonica.bilateral_fuzzer.lib.K5.AS Require Import AsanInit.
From OssFuzzTheorems.Proofs.leptonica.bilateral_fuzzer.lib.K5.AS02 Require Import AsanStartup StartupPlanAsan StartupHSAsan.
Import ListNotations. Import AX2. Import AP.
Open Scope Z_scope.
From Ltac2 Require Import Ltac2 Constr Std Control.
From OssFuzzTheorems.Proofs.leptonica.bilateral_fuzzer.lib Require KReplay.
Ltac2 kr_t_AsanStartupCert () := "C7ARocqVerifyHarness?AgentSubmission2K52AS=AsanPlanSound3APSDmk_itab_ranges_soundC6ARocqVerifyHarness?AgentSubmission2K54AS02>AsanPlanImages5ASEGSC6ARocqVerifyHarness?AgentSubmission2K54AS02?StartupPlanAsanCstartup_plan_rangesK7ARocqVerifyHarness?AgentSubmission2K52AS8AsanPlan2AP4cres01K47Corelib4Init5Logic2eq01K47Corelib4Init9Datatypes6option02I47Corelib4Init5Logic2eq00C7ARocqVerifyHarness?AgentSubmission2K52AS8AsanPlan2AP5checkc6ARocqVerifyHarness?AgentSubmission2K54AS02?AsanStartupCert3IT0C6ARocqVerifyHarness?AgentSubmission2K54AS02;AsanTablesA6ASAN_AC7ARocqVerifyHarness?AgentSubmission2K52AS8AsanPlan2AP3NX0C6ARocqVerifyHarness?AgentSubmission2K52AS8AsanInit5LIMITC6ARocqVerifyHarness?AgentSubmission2K54AS02;AsanStartup3XN0C6ARocqVerifyHarness?AgentSubmission2K54AS02;AsanStartup3XE0C6ARocqVerifyHarness?AgentSubmission2K54AS02;AsanStartup3XB0C6ARocqVerifyHarness?AgentSubmission2K54AS02=StartupHSAsan7HS_asanc6ARocqVerifyHarness?AgentSubmission2K54AS02?AsanStartupCert3KC0c6ARocqVerifyHarness?AgentSubmission2K54AS02?AsanStartupCert5BFUELc6ARocqVerifyHarness?AgentSubmission2K54AS02?AsanStartupCert4FUELC6ARocqVerifyHarness?AgentSubmission2K54AS02;AsanTablesA;asan_a_initC6ARocqVerifyHarness?AgentSubmission2K54AS02?StartupPlanAsan<startup_planI7ARocqVerifyHarness?AgentSubmission2K52AS8AsanPlan2AP4cres00c6ARocqVerifyHarness?AgentSubmission2K54AS02?AsanStartupCert=startup_shapeI7ARocqVerifyHarness?AgentSubmission2K52AS8AsanPlan2AP7loopctx00".
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Ltac2 cert_refl (rhs : constr) :=
  let g := Control.goal () in
  let r := constr:(@eq_refl cres $rhs) in
  Std.exact_no_check (Constr.Unsafe.make (Constr.Unsafe.Cast r Constr.Cast.vm g)).

Definition BFUEL : nat := 400000.
Definition KC0 : nat := 0.
Definition FUEL : nat := 3000.
Definition IT0 : itab := mk_itab_ranges ASEGS startup_plan_ranges.
Lemma IT0_ok : itab_sound ASEGS IT0.
Proof.
KReplay.run1 (kr_t_AsanStartupCert ()) [] "p;2g0000j20Tg001Ag002B'0o". Qed.

Definition startup_shape : shape := (SHole 0).

Lemma startup_cert :
  check ASEGS IT0 ASAN_A NX0 AsanInit.LIMIT XN0 XE0 XB0 HS_asan KC0 BFUEL FUEL None asan_a_init startup_plan = COk startup_shape.
Proof.
KReplay.run1 (kr_t_AsanStartupCert ()) [] "p;1p;2p;3p;?g003Rj15Tg004Oj24Tg004ij10Tg005Kj33Tg005el?2Tg001Ag006ag007ag008`g009Zg00:Sg00;Og00<Kg00=Gg00>Ig00?Ig00@Kf0g00ALg00BPM?2p=1g00CYR0g00DV#5R1'4g00E`#0#1=301do". Qed.
