(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require Import FxLin FxCore FxFacts FxPlan.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require Import FxChDen FxChain FxChMain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB Require Import AcAst AcSubst.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB Require HarnChain HarnSubCh HarnMain HarnPM2 HarnCertLib HarnCrlsCert_G HPT_G.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanCallTP.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanCallTP.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HarnChain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HarnSubCh OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HarnMain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HarnPM2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HarnCertLib OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HarnCrlsCert_G OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4HB.HPT_G OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanCallTP.HPMT OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanCallTP.HPMF.
Import ListNotations.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Definition MID_SUBS : SUBSC := [(HPT_G_S, HPT_G_M, HPT_G_A, CRLS_FINS_G)].
Definition NBM : positive := Eval vm_compute in Pos.pred (s_next HPMT_S).      (* [comment removed for export] *)
Definition MID_FINS : list (sst * smodel * ast) := [(HPMF_S, HPMF_M, HPMF_A)].
Definition MID_CH : MCH := MIDCH 0 NBM.
Lemma mid_cert : PCHK MID_SUBS MID_CH HPMT_S HPMT_M HPMT_A = Some MID_FINS.
Proof. vm_cast_no_check (eq_refl (Some MID_FINS)). Qed.
(* [comment removed for export] *)
