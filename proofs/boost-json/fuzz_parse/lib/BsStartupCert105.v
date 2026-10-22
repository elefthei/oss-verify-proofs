(* [comment removed for export] *)
From Stdlib Require Import ZArith List Bool.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib Require Import AxSymExec3 AsanPlanCore AsanPlan BsStartupPlan BsStartupHSA BsStartupHSF BothImages BothPlanImages BsStartup.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib Require Import AsanPlanF.   (* [comment removed for export] *)
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib Require Import BsStartupItab.
Require Import OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Lib.CDef.
Local Ltac2 zQ s := CDef.cdeft "7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib8AsanPlan2AP05shape05SHole37Corelib4Init9Datatypeskc4boolkc4true37Corelib4Init5Logicn22eq6fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib9BsStartupobaholes_only6fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3libh0BsStartupCert105t4dstartup_shape6fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3libeBothPlanImageshi85ASEGSkc4None6fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib8AsanInithn95LIMIT03COk03NX005check04cres07loopctx0emk_itab_ranges6fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3libaBothImageshud6BOTH_Hob3XB0ob3XE0ob3XN06fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3libcBsStartupHSAik6cHSA_asan_1056fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3libcBsStartupHSFip58HSF_asan6fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3libdBsStartupPlaniu0aCERT_BFUELiu09CERT_FUELiu08CERT_KC0iu0h3startup_plan_seg105iu0hbstartup_plan_seg105_xranges" s.   (* [comment removed for export] *)
Import ListNotations. Import AX2. Import AP.
Open Scope Z_scope.
Unset Lia Cache.

Definition startup_shape : ltac2:(zQ "10!je$0") := ltac2:(zQ "10!k5@1$0N5").

Lemma startup_shape_holes : ltac2:(zQ "50!m4!mb!o6!s7!hh8@3$2$0@1$3$4$1").
Proof. vm_compute. reflexivity. Qed.

From Ltac2 Require Import Ltac2 Constr Std Control.
(* [comment removed for export] *)
Ltac2 cert_refl (rhs : constr) :=
  let g := Control.goal () in
  let r := constr:(@eq_refl cres $rhs) in
  Std.exact_no_check (Constr.Unsafe.make (Constr.Unsafe.Cast r Constr.Cast.vm g)).

Lemma startup_cert : ltac2:(zQ "h60!hm9!hn2!o6!hr4!hrd!hs2!hs7!hse!ht4!htd!iia!ij4!ija!ik0!hh8!io5!it4!ji0!jie!jjb!jk7!jlf@3$2$7@f$6$0@2$9$0$h5$a$5$3$d$c$b$h0$h3$h1$h2@1$1$8$f$h4@1$4$e").
Proof. ltac1:(replace startup_plan_seg105_xranges with startup_plan_seg100_xranges by reflexivity; rewrite <- ARM_ITAB_eq). apply FC.check_of_f. cert_refl constr:(COk startup_shape). Qed.   (* [comment removed for export] *)
