(* Machine-generated data computed from the task's compiled program image (decoder-built tables and encoded data blocks); may contain fragments of third-party object code - see NOTICE. No Anthropic licence header applies to this file. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List.
From LinuxProcessSemantics.EquivalenceDefinition Require Import Equivalence.
From LinuxProcessSemantics.LinuxProcessSem Require Import MemImageType Run.
From OssFuzzTheorems.leptonica.pix_orient_fuzzer.images Require Import Plain.
From OssFuzzTheorems.leptonica.pix_orient_fuzzer.images Require Import Asan.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib.Common Require Import PropExec AllocIface.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib.Common.Mallocng Require Import MallocLayout MallocAllocLayout AllocBase AllocCalloc AllocSure AllocCredit.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib.O23 Require Import O23MallocLayout O23Pins O23Alloc O23Sure O23Credit O23LeptPinsI.
Require OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib.K5.A23.TopA_final.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib.Top Require Import BasePixOrientAsanPre.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib Require KReplay.
Ltac2 kr_t_BasePixOrientAsan () := "C6ARocqVerifyHarness?AgentSubmission6Common8MallocngAMallocAllocLayoutEmallocng_alloc_layoutC6ARocqVerifyHarness?AgentSubmission6Common8MallocngAMallocAllocLayoutFmallocng_calloc_layoutC6ARocqVerifyHarness?AgentSubmission6Common8Mallocng;AllocCredit8acr_sureC5ARocqVerifyHarness?AgentSubmission3O23<O23LeptPinsI=s16_fuzz_callC5ARocqVerifyHarness?AgentSubmission3TopDBasePixOrientAsanPreCpix_orient_asan_preC5ARocqVerifyHarness?AgentSubmission3O23?O23MallocLayout4LS16C5ARocqVerifyHarness?AgentSubmission3O239O23Credit:s16_creditC5ARocqVerifyHarness?AgentSubmission3O237O23Pins8s16_pinsC6ARocqVerifyHarness?AgentSubmission2K53A23:TopA_final:s3s_closed".

Theorem strong_universal_error_free_pix_orient_fuzzer_asan :
  strong_universal_error_free_T_scfg_budgets (Run.alloc_only_cfg false) SanitizerBudgets.lim_source SanitizerBudgets.lim_target
    (mkImage Plain.M.loaded_segments Plain.M.init_pc Plain.M.phdrs)
    (mkImage Asan.M.loaded_segments Asan.M.init_pc Asan.M.phdrs).
Proof.
ltac2:(KReplay.run1 (kr_t_BasePixOrientAsan ()) [] "p;1p;3p;6g0000j14Tg001Lj13Tg002ij30Tg0042j11Tg0055j62Tg006FR0#4R1%30R0g007CR29010g008@%12g0099E2o"). Qed.
