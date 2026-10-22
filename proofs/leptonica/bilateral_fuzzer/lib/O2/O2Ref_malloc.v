(* Machine-generated data computed from the task's compiled program image (decoder-built tables and encoded data blocks); may contain fragments of third-party object code - see NOTICE. No Anthropic licence header applies to this file. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import
  BvBase RiscvSemantics MemImageType StackLayout Fs State Monad Specs Run.
From OssFuzzTheorems.Proofs.leptonica.bilateral_fuzzer.lib.Common Require Import PropExec.
From OssFuzzTheorems.Proofs.leptonica.bilateral_fuzzer.lib.Common.Mallocng Require Import MallocLayout RefStmts.
From OssFuzzTheorems.Proofs.leptonica.bilateral_fuzzer.lib.Common.Mallocng Require RRef_malloc.
From OssFuzzTheorems.Proofs.leptonica.bilateral_fuzzer.lib.O2 Require Import O2MallocLayout O2Reloc O2RelocCode O2RelocSites O2RelocML.
From OssFuzzTheorems.Proofs.leptonica.bilateral_fuzzer.lib Require KReplay.
Ltac2 kr_t_O2Ref_malloc () := "C6ARocqVerifyHarness?AgentSubmission6Common8Mallocng;RelocLayout<reloc_layoutC6ARocqVerifyHarness?AgentSubmission6Common8Mallocng8RefStmts;malloc_stmtC6ARocqVerifyHarness?AgentSubmission6Common8Mallocng;RRef_malloc>malloc_refinesC47Corelib4Init5Logic8eq_ind_rI6ARocqVerifyHarness?AgentSubmission6Common8Mallocng<MallocLayout<MallocLayout00C5ARocqVerifyHarness?AgentSubmission2O27O2Reloc8o2_relocC5ARocqVerifyHarness?AgentSubmission2O2;O2RelocCode7o2_codeC5ARocqVerifyHarness?AgentSubmission2O2<O2RelocSites8o2_sitesC5ARocqVerifyHarness?AgentSubmission2O2>O2MallocLayout4LS16C5ARocqVerifyHarness?AgentSubmission2O29O2RelocML9lo2_reloc".

Section Malloc.
Context {fx : FPState}.

Theorem malloc_refines : malloc_stmt.
Proof.
ltac2:(KReplay.run1 (kr_t_O2Ref_malloc ()) ["Malloc"] "h01mp;1p;2p;4p;6g0000j13Tg001=j22Tg002Fj40Tg003Uj61Tg0043R0g005CR1#3p,2fxR2f0'2X00P2P1g006;g0076C0g0083g008nE1o"). Qed.
End Malloc.
