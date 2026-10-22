(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib Require Import HeapCeil HeapSecret.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Ref Require Import RSegs RMalloc_iface_stmt.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.BJ Require Import HeapMF_iface.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.BJ Require BJEhTabs.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.EH Require Import EhIface EhGlue.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.EH Require EhX_plain EhSums.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Ref Require MallocMF.
Require Import OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Lib.CDef.
Local Ltac2 zQ s := CDef.cdeft "7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3Ref8MallocMF03HMF7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2BJcHeapMF_ifacek4cheap_mf_hyps8fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2EH7EhIface3EHIp53EHK7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2BJ8BJEhTabstc9bj_ehtabs" s.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Open Scope Z_scope.

Module EHC.
Section Plain.
Context {HCEIL : HeapCeil} {HSEC : HeapSecret}.

Theorem heap_mf_hyps_plain : ltac2:(zQ "30!jf!o6!t6@3$1?5HCEIL@2$0?5HCEIL?4HSEC@1$2@2$0?5HCEIL?4HSEC").
Proof. exact (EHG.heap_mf_hyps_HMF EhSums.eh_copy_spec EhSums.eh_fill_spec). Qed.

(* [comment removed for export] *)
Theorem bj_ehtabs_plain : ltac2:(zQ "30!hha!t6!jf@1$0@1$1@2$2?5HCEIL?4HSEC").
Proof. exact (EHG.L_tabs MallocMF.HMF). Qed.

End Plain.
End EHC.
(* [comment removed for export] *)
