(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require Import FxLin FxCore.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require Import FxChMain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require Import AsanTMain2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require FxCertLib AsanRdErr.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanUsageT.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanCoNFT.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanUsageT AsanCoNFT.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxCertLib OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanRdErr OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanUsageT.AsanUsage OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanCoNFT.AsanCoNFDefs OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanUsageT OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanCoNFT.
Import ListNotations.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Lemma nf1_res_eqT : nf1_resT = Some [(S_OPT, MMAIN, FSClosed, SH_NFT, ANFT)]. Proof. vm_cast_no_check (eq_refl (Some [(S_OPT, MMAIN, FSClosed, SH_NFT, ANFT)])). Qed.
Lemma nf2_res_ab_nilT : nf2_res_abT = Some []. Proof. apply res_nil_eq. vm_cast_no_check (eq_refl true). Qed.
Lemma nf2_res_c_nilT : nf2_res_cT = Some []. Proof. apply res_nil_eq. vm_cast_no_check (eq_refl true). Qed.
(* [comment removed for export] *)
