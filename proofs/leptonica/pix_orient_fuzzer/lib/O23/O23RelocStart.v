(* Machine-generated data computed from the task's compiled program image (decoder-built tables and encoded data blocks); may contain fragments of third-party object code - see NOTICE. No Anthropic licence header applies to this file. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib.Common.Reloc Require Import Reloc RelocBlocks RelocImg.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib.Common.Musl Require Import RelocStart.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib.O23 Require Import O23Reloc O23RelocImg.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib Require KReplay.
Ltac2 kr_t_O23RelocStart () := "K47Corelib4Init5Logic2eq01K47Corelib7Numbers7BinNums8positive02C6ARocqVerifyHarness?AgentSubmission6Common5Reloc5Reloc8rl_deltaC6ARocqVerifyHarness?AgentSubmission6Common5Reloc8RelocImg:rl_data_loC6ARocqVerifyHarness?AgentSubmission6Common4Musl:RelocStart8start_okI47Corelib4Init5Logic2eq00I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01C5ARocqVerifyHarness?AgentSubmission3O238O23Reloc9o23_relocK47Corelib7Numbers7BinNums8positive03C5ARocqVerifyHarness?AgentSubmission3O23;O23RelocImg8o23_data".
Local Open Scope Z_scope.

Lemma o23_start_ok : start_ok (@rl_delta o23_reloc 8%positive) (@rl_data_lo o23_reloc o23_data) = true.
Proof.
ltac2:(KReplay.run1 (kr_t_O23RelocStart ()) [] "p;2p;1p;3g0000j25Tg000Jj10Tg000oj22Tg001oj21Tg0034j24Tg0048j33Tg004RR0g0052R1'5g005RR2g006M#0#0#0'2g0072,12'4=301do"). Qed.
Definition o23_start : RelocStart o23_reloc o23_data := {| rl_start_ok := o23_start_ok |}.
