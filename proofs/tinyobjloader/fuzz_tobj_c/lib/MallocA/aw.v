(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
Local Set Warnings "-require-in-module".
(* [comment removed for export] *)
From Stdlib Require ZArith List Bool.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require ar ag ae.

(* [comment removed for export] *)
Module F0A_b1A.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@Corelib.Init.Datatypes"; "bool"; "true"; "@Corelib.Init.Logic"; "eq"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "sprop"; "sprop_eqb"; "ss_facts"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "ax_S"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ar.F0A_bigno"; "big_fact"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.af.F0A_c1A"; "Ebg_1A"; "@Stdlib.Lists.List"; "existsb"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymCFG.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import StepA EntailA CFGA GlueA SummaryA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a6.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require af.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require ar.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a6.F0A_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.af.F0A_c1A OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ar.F0A_bigno.
Import ListNotations.
Open Scope Z_scope.

Lemma big_fact_1A : ltac2:(tb__ "0|0|
S2S0S9S3S4S7A1S5S6S8A1A1A3S1A3").
Proof. vm_cast_no_check (@eq_refl bool true). Qed.
End F0A_b1A.

(* [comment removed for export] *)
Module F0A_b1Be.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@Corelib.Init.Datatypes"; "bool"; "true"; "@Corelib.Init.Logic"; "eq"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "sprop"; "sprop_eqb"; "ss_facts"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "ax_S"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ar.F0A_bigno"; "big_fact"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.af.F0A_c1Be"; "Ebg_1Be"; "@Stdlib.Lists.List"; "existsb"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymCFG.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import StepA EntailA CFGA GlueA SummaryA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a6.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require af.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require ar.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a6.F0A_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.af.F0A_c1Be OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ar.F0A_bigno.
Import ListNotations.
Open Scope Z_scope.

Lemma big_fact_1Be : ltac2:(tb__ "0|0|
S2S0S9S3S4S7A1S5S6S8A1A1A3S1A3").
Proof. vm_cast_no_check (@eq_refl bool true). Qed.
End F0A_b1Be.

(* [comment removed for export] *)
Module F0A_b1Bf.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@Corelib.Init.Datatypes"; "bool"; "true"; "@Corelib.Init.Logic"; "eq"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "sprop"; "sprop_eqb"; "ss_facts"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "ax_S"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ar.F0A_bigno"; "big_fact"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ag.F0A_c1Bf"; "Ebg_1Bf"; "@Stdlib.Lists.List"; "existsb"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymCFG.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import StepA EntailA CFGA GlueA SummaryA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a6.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require ag.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require ar.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a6.F0A_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ag.F0A_c1Bf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ar.F0A_bigno.
Import ListNotations.
Open Scope Z_scope.

Lemma big_fact_1Bf : ltac2:(tb__ "0|0|
S2S0S9S3S4S7A1S5S6S8A1A1A3S1A3").
Proof. vm_cast_no_check (@eq_refl bool true). Qed.
End F0A_b1Bf.

(* [comment removed for export] *)
Module F0A_bL0A.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@Corelib.Init.Datatypes"; "bool"; "true"; "@Corelib.Init.Logic"; "eq"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "sprop"; "sprop_eqb"; "ss_facts"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "ax_S"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ar.F0A_bigno"; "big_fact"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ae.F0A_cL0A"; "Ebg_L0A"; "@Stdlib.Lists.List"; "existsb"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymCFG.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import StepA EntailA CFGA GlueA SummaryA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a6.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require ae.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require ar.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a6.F0A_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ae.F0A_cL0A OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ar.F0A_bigno.
Import ListNotations.
Open Scope Z_scope.

Lemma big_fact_L0A : ltac2:(tb__ "0|0|
S2S0S9S3S4S7A1S5S6S8A1A1A3S1A3").
Proof. vm_cast_no_check (@eq_refl bool true). Qed.
End F0A_bL0A.

(* [comment removed for export] *)
Module F0A_bL0Bf.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@Corelib.Init.Datatypes"; "bool"; "true"; "@Corelib.Init.Logic"; "eq"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "sprop"; "sprop_eqb"; "ss_facts"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "ax_S"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ar.F0A_bigno"; "big_fact"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ae.F0A_cL0Bf"; "Ebg_L0Bf"; "@Stdlib.Lists.List"; "existsb"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymCFG.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import StepA EntailA CFGA GlueA SummaryA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a6.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require ae.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require ar.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a6.F0A_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ae.F0A_cL0Bf OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ar.F0A_bigno.
Import ListNotations.
Open Scope Z_scope.

Lemma big_fact_L0Bf : ltac2:(tb__ "0|0|
S2S0S9S3S4S7A1S5S6S8A1A1A3S1A3").
Proof. vm_cast_no_check (@eq_refl bool true). Qed.
End F0A_bL0Bf.

(* [comment removed for export] *)
Module F0A_bL0Be.

From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@Corelib.Init.Datatypes"; "bool"; "true"; "@Corelib.Init.Logic"; "eq"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "sprop"; "sprop_eqb"; "ss_facts"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A.StepA"; "ax_S"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ar.F0A_bigno"; "big_fact"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ae.F0A_cL0Be"; "Ebg_L0Be"; "@Stdlib.Lists.List"; "existsb"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
From Stdlib Require Import ZArith List Bool.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3 Require Import SymState SymStep SymEntail SymCFG.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3A Require Import StepA EntailA CFGA GlueA SummaryA.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require a6.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require ae.
From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA Require ar.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.a6.F0A_states OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ae.F0A_cL0Be OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.MallocA.ar.F0A_bigno.
Import ListNotations.
Open Scope Z_scope.

Lemma big_fact_L0Be : ltac2:(tb__ "0|0|
S2S0S9S3S4S7A1S5S6S8A1A1A3S1A3").
Proof. vm_cast_no_check (@eq_refl bool true). Qed.
End F0A_bL0Be.

