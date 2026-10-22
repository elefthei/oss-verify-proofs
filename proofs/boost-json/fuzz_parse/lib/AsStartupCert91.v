(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib Require Top0Gc4. (* [comment removed for export] *)
From Stdlib Require Import ZArith List Bool.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib Require Import AxSymExec3 AsanPlanCore AsanPlan AsStartupPlan AsStartupHSA AsStartupHSC AsImages AsPlanImages AsStartup.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib Require Import AsanPlanF.
Require Import OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Lib.CDef.
Local Ltac2 zQ s := CDef.cdeft "7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib8AsanPlan2AP05shape05SHole37Corelib4Init9Datatypeskc4boolkc4true37Corelib4Init5Logicn22eq6fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib9AsStartupobaholes_only6fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3libfAsStartupCert91t4dstartup_shape6fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3libcAsPlanImageshi65ASEGSkc4None6fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib8AsImageshn56ASAN_Hob3XB0ob3XE0ob3XN06fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3libcAsStartupHSAhsc8HSA_asan6fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3libcAsStartupHSCih7bHSC_asan_916fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3libdAsStartupPlanim5aCERT_BFUELim59CERT_FUELim58CERT_KC0im5h2startup_plan_seg91im5hastartup_plan_seg91_xranges6fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib8AsanInitjg25LIMIT03COk03NX005check04cres07loopctx0emk_itab_ranges" s.   (* [comment removed for export] *)
Import ListNotations. Import AX2. Import AP.
Open Scope Z_scope.
Unset Lia Cache.

Definition startup_shape : ltac2:(zQ "10!je$0") := ltac2:(zQ "10!k5@1$0Nm6").

Lemma startup_shape_holes : ltac2:(zQ "50!m4!mb!o6!s7!hh6@3$2$0@1$3$4$1").
Proof. vm_compute. reflexivity. Qed.

From Ltac2 Require Import Ltac2 Constr Std Control.
(* [comment removed for export] *)
Ltac2 cert_refl (rhs : constr) :=
  let g := Control.goal () in
  let r := constr:(@eq_refl cres $rhs) in
  Std.exact_no_check (Constr.Unsafe.make (Constr.Unsafe.Cast r Constr.Cast.vm g)).

Lemma startup_cert : ltac2:(zQ "h60!hm5!hme!o6!hr0!hra!hs0!hs6!hh6!igb!il6!iq5!ir3!is0!isc!iu3!jjd!jk6!jkb!jl0!jl7!jld!jm6@3$2$h3@f$h2$0@2$h5$0$e$3$h1$f$6$5$4$8$c$a$b@1$1$h4$9$d@1$h0$7").
Proof. apply FC.check_of_f. cert_refl constr:(COk startup_shape). Qed.   (* [comment removed for export] *)
