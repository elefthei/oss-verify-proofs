(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib Require Top0Gc4. (* [comment removed for export] *)
From Stdlib Require Import ZArith List Bool.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib Require Import AxSymExec3 AsanPlanCore AsanPlan AsStartupPlan AsStartupHS1 AsStartupHSC AsImages AsPlanImages AsStartup.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib Require Import AsanPlanF.
Require Import OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Lib.CDef.
Local Ltac2 zQ s := CDef.cdeft "7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib8AsanPlan2AP05shape05SHole05SCase7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3libaAxSymExec33AX2l34EVar37Corelib4Init9Datatypespb4boolpb4true37Corelib4Init5Logics12eq6fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib9AsStartuptaaholes_only6fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3libfAsStartupCert90hi3dstartup_shape6fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3libcAsPlanImageshn65ASEGSpb4None6fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib8AsImageshs56ASAN_Hta3XB0ta3XE0ta3XN06fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3libcAsStartupHS1ihcbHS1_asan_906fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3libcAsStartupHSCima8HSC_asan6fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3libdAsStartupPlanir5aCERT_BFUELir59CERT_FUELir58CERT_KC0ir5h2startup_plan_seg90ir5hastartup_plan_seg90_xranges6fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib8AsanInitjl25LIMIT03COk03NX005check04cres07loopctx0emk_itab_ranges" s.   (* [comment removed for export] *)
Import ListNotations. Import AX2. Import AP.
Open Scope Z_scope.
Unset Lia Cache.

Definition startup_shape : ltac2:(zQ "10!je$0") := ltac2:(zQ "30!k5!kc!p4@4$1@1$2Na+a@1$0Nlb@1$0Nle").

Lemma startup_shape_holes : ltac2:(zQ "50!r3!ra!t5!hh6!hm5@3$2$0@1$3$4$1").
Proof. vm_compute. reflexivity. Qed.

From Ltac2 Require Import Ltac2 Constr Std Control.
(* [comment removed for export] *)
Ltac2 cert_refl (rhs : constr) :=
  let g := Control.goal () in
  let r := constr:(@eq_refl cres $rhs) in
  Std.exact_no_check (Constr.Unsafe.make (Constr.Unsafe.Cast r Constr.Cast.vm g)).

Lemma startup_cert : ltac2:(zQ "h60!hr5!hre!t5!ig0!iga!ih0!ih6!hm5!ilb!iq9!iv5!jg3!jh0!jhc!jj3!jod!jp6!jpb!jq0!jq7!jqd!jr6@3$2$h3@f$h2$0@2$h5$0$e$3$h1$f$6$5$4$9$c$a$b@1$1$h4$8$d@1$h0$7").
Proof. apply FC.check_of_f. cert_refl constr:(COk startup_shape). Qed.   (* [comment removed for export] *)
