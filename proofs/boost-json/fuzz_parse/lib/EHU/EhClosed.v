(* Machine-generated data computed from the task's compiled program image (decoder-built tables and encoded data blocks); may contain fragments of third-party object code - see NOTICE. No Anthropic licence header applies to this file. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib Require Import HeapCeil HeapSecret.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.RefU Require Import RSegs RMalloc_iface_stmt.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.RefU Require Import HeapMF_iface.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.BJU Require BJEhTabs.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.EHU Require Import EhIface EhGlue.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.EHU Require EhX_ubsan EhSums.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.RefU Require MallocMF.
Require Import OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Lib.CDef.
Local Ltac2 zQ s := CDef.cdeft "7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib4RefU8MallocMF03HMF8fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3EHU7EhIface3EHIk53EHK7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib4RefUcHeapMF_ifaceodcheap_mf_hyps7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3BJU8BJEhTabsu09bj_ehtabs9fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3EHU8EhClosed3EHC5Plainhibh2heap_mf_hyps_plainhibfbj_ehtabs_plain" s.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Open Scope Z_scope.

Module EHC.
Section Plain.
Context {HCEIL : HeapCeil} {HSEC : HeapSecret}.

Theorem heap_mf_hyps_plain : ltac2:(zQ "30!k0!o7!t1@3$2?5HCEIL@2$0?5HCEIL?4HSEC@1$1@2$0?5HCEIL?4HSEC").
Proof. exact (EHG.heap_mf_hyps_HMF EhSums.eh_copy_spec EhSums.eh_fill_spec). Qed.

(* [comment removed for export] *)
Theorem bj_ehtabs_plain : ltac2:(zQ "30!hhf!o7!k0@1$0@1$1@2$2?5HCEIL?4HSEC").
Proof. exact (EHG.L_tabs MallocMF.HMF). Qed.

Definition heap_mf_hyps_ubsan := heap_mf_hyps_plain.
Definition bj_ehtabs_ubsan := bj_ehtabs_plain.
End Plain.
End EHC.
(* [comment removed for export] *)
