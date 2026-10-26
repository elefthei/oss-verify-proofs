(* Machine-generated data computed from the task's compiled program image (decoder-built tables and encoded data blocks); may contain fragments of third-party object code - see NOTICE. No Anthropic licence header applies to this file. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType StackLayout Fs State Run.
From OssFuzzTheorems.boost_json.fuzz_parse.images Require Import Asan.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib Require Import HeapCeil PropExec AsanAllocModel AsMainState.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.As Require Import ASegs AsIface AsInstance AsInstanceMain AS_InstTR AS_InstFree AS_InstFreePass AS_InstanceKit.
Require Import OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Lib.CDef.
Local Ltac2 zQ s := CDef.cdeft "7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2AsbAS_InstFree0dfree_stmt_big7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2AseAS_InstanceKitl03kip7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2AseAsInstanceMainpa5KCEILpa4mctx7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2AsaAsInstanceudh0as_instance_stmt6fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3libbAsMainStatehk16P_main6fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib8PropExecho93fx0" s.
Import ListNotations.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Local Existing Instance fx0.

(* [comment removed for export] *)
Lemma R_freebig_proved : ltac2:(zQ "40!k1!p4!te!u6>1k$3@2$0@1$2^1@1$1^1").
Proof. intros k. exact (@inst_free_big (KCEIL k) (kip k) TRLIST_length). Qed.

Theorem as_instance_closed : ltac2:(zQ "30!hid!hnf!hs4@2$0$2$1").
Proof. exact (as_instance_kit R_freebig_proved). Qed.
