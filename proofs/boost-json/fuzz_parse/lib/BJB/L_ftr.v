(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib Require Import HeapCeil.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Bs Require Import AsIface Fuzz_stmt.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.BJB Require Import BJIface BJIfaceTop.
Require Import OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Lib.CDef.
Local Ltac2 zQ s := CDef.cdeft "37Corelib4Init5Logic03and7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3BJB7BJIfaceh9h0dtor_value_tr_ok7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3BJBaBJIfaceTopmbcjparse_tr_ok7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2Bs7AsIfacerb3asr7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2Bs9Fuzz_stmtveafuzz_tr_ok6fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib8HeapCeilhka8HeapCeil" s.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Lemma ftr_eq : ltac2:(zQ "60!h4!l7!qc!v8!hjd!ho5>2HC$5>1H$3>0@1$4^1@2$0@1$2^2@1$1^2").
Proof.
  intros HC H F.
  unfold Fuzz_stmt.fuzz_tr_ok, Fuzz_stmt.ftr_pv, Fuzz_stmt.ftr_po, Fuzz_stmt.ftr_dtor, Fuzz_stmt.ftr in F.
  unfold jparse_tr_ok, pv_tr_ok, dtor_vs_tr_ok, push_object_tr_ok, grow_one_tr_ok, dtor_value_tr_ok, push_sca_tr_ok, push_sca_site, site_tr_ok.
  cbn. tauto.
Qed.
