(* Machine-generated data computed from the task's compiled program image (decoder-built tables and encoded data blocks); may contain fragments of third-party object code - see NOTICE. No Anthropic licence header applies to this file. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import
  BvBase RiscvSemantics MemImageType StackLayout Fs State Monad Specs Run.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib.Common Require Import PropExec.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib.Common.Mallocng Require Import MallocLayout RefStmts.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib.Common.Mallocng Require RRef_free.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib.O23 Require Import O23MallocLayout O23Reloc O23RelocCode O23RelocSites O23RelocML.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib Require KReplay.
Ltac2 kr_t_O23Ref_free () := "C6ARocqVerifyHarness?AgentSubmission6Common8Mallocng;RelocLayout<reloc_layoutC6ARocqVerifyHarness?AgentSubmission6Common8Mallocng8RefStmts9free_stmtC6ARocqVerifyHarness?AgentSubmission6Common8Mallocng9RRef_free<free_refinesC47Corelib4Init5Logic8eq_ind_rI6ARocqVerifyHarness?AgentSubmission6Common8Mallocng<MallocLayout<MallocLayout00C5ARocqVerifyHarness?AgentSubmission3O238O23Reloc9o23_relocC5ARocqVerifyHarness?AgentSubmission3O23<O23RelocCode8o23_codeC5ARocqVerifyHarness?AgentSubmission3O23=O23RelocSites9o23_sitesC5ARocqVerifyHarness?AgentSubmission3O23?O23MallocLayout4LS16C5ARocqVerifyHarness?AgentSubmission3O23:O23RelocML:lo23_reloc".

Section Free.
Context {fx : FPState}.

Theorem free_refines : free_stmt.
Proof.
ltac2:(KReplay.run1 (kr_t_O23Ref_free ()) ["Free"] "h01mp;1p;2p;4p;6g0000j13Tg001=j22Tg002Dj40Tg003Oj61Tg003mR0g005=R1#3p,2fxR2f0'2X00P2P1g0068g0076C0g0086g0093E1o"). Qed.
End Free.
