(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib Require Import HeapCeil HeapSecret.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Agent Require Import MallocTree ASlot_I MallocFacts_AM MallocFacts_AMP.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Ref Require Import RMallocTree RMalloc_iface RAllocSlot_iface RF_malloc_core RF_malloc_top RASlot_I RF_alloc_slot RF_malloc_big RF_am_P RF_alloc_meta.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Ref Require Import RBand.
Require Import OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Lib.CDef.
Local Ltac2 zQ s := CDef.cdeft "7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3RefdRMalloc_iface0crmalloc_stmt7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3RefdRF_malloc_topl2frmalloc_stmt_at7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3RefaRMallocRepq8drmalloc_entry" s.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Section HCW.
  Context {HCEIL : HeapCeil} {HSEC : HeapSecret}.

Theorem rmalloc_spec : ltac2:(zQ "10!k4@2$0?5HCEIL?4HSEC").
Proof. try hcb. try hsb.
  exact (rmalloc_spec_proof ras_pre2 as_inv2 ralloc_slot_spec ras_pre2_intro (rbig_spec ram_pre ralloc_meta_spec ramp_big)).
Qed.

(* [comment removed for export] *)
Theorem rmalloc_entry_spec : ltac2:(zQ "20!p6!u9@3$0?5HCEIL?4HSEC$1").
Proof. try hcb. try hsb.
  exact (rmalloc_spec_entry_proof ras_pre2 as_inv2 ralloc_slot_spec ras_pre2_intro (rbig_spec ram_pre ralloc_meta_spec ramp_big)).
Qed.

End HCW.


