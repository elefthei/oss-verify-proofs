(* Machine-generated data computed from the task's compiled program image (decoder-built tables and encoded data blocks); may contain fragments of third-party object code - see NOTICE. No Anthropic licence header applies to this file. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType.
From OssFuzzTheorems.Proofs.leptonica.bilateral_fuzzer.lib.Common.Reloc Require Import Reloc RelocCode CanonCode.
From OssFuzzTheorems.Proofs.leptonica.bilateral_fuzzer.lib.O2 Require Import O2Reloc.
From OssFuzzTheorems.Proofs.leptonica.bilateral_fuzzer.lib Require KReplay.
Ltac2 kr_t_O2RelocCode () := "K47Corelib4Init5Logic2eq01C6ARocqVerifyHarness?AgentSubmission6Common5Reloc5Reloc7rl_segsC6ARocqVerifyHarness?AgentSubmission6Common5Reloc5Reloc8rl_deltaC6ARocqVerifyHarness?AgentSubmission6Common5Reloc9RelocCode:code_checkI47Corelib4Init5Logic2eq00I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01C5ARocqVerifyHarness?AgentSubmission2O27O2Reloc8o2_relocC6ARocqVerifyHarness?AgentSubmission6Common5Reloc9CanonCode:canon_code".

Lemma o2_code_ok : code_check (@rl_segs o2_reloc) (@rl_delta o2_reloc) canon_code = true.
Proof.
ltac2:(KReplay.run1 (kr_t_O2RelocCode ()) [] "p;2p;1p;3g0000j24Tg000Jj13Tg001Ij10Tg002Ij31Tg003Oj32Tg003iR0g004IR1'4g004iR2#3%02g005a31=201do"). Qed.

Definition o2_code : RelocCode o2_reloc := {| rl_code_ok := o2_code_ok |}.
