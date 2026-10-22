(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require Import FxLin FxCore FxFacts FxPlan.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require Import FxChDen FxChain FxChMain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB Require Import AcAst AcSubst.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB Require HarnChain HarnSubCh HarnMain HarnMainE HarnCertLib HETH.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanCallTP.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HarnChain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HarnSubCh OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HarnMain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HarnMainE OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HarnCertLib OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HETH OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanCallTP.HEFH.
Import ListNotations.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Definition HARN_FINS : list (sst * smodel * ast) := [(HEFH_S, HEFH_M, HEFH_A)].
Definition HARN_CH : MCH := HARN_E_ALL (genK HEFH_S HEFH_M (alins_a HEFH_A)).
Definition harn_res : option (list (sst * smodel * ast)) := PCHK [] HARN_CH HETH_S HETH_M HETH_A.
(* [comment removed for export] *)
Lemma harn_cert : PCHK [] HARN_CH HETH_S HETH_M HETH_A = Some HARN_FINS.
Proof. vm_cast_no_check (eq_refl (Some HARN_FINS)). Qed.
(* [comment removed for export] *)
