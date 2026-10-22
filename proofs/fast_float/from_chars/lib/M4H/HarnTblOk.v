(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Bool Lia.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr.
From OssFuzzTheorems.fast_float.from_chars.images Require Import Asan.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require Import FxLin FxCore FxSound FxImg.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require Import AsanTblM AsanTblAll.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require Import AsanTblH2 AsanBodyE.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require AsanTblH2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4H Require HarnTblL.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanTblH2.HarnTblX OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4H.HarnTblL.
Import ListNotations.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Open Scope Z_scope.

Lemma TBLHXL_ok : tbl_ok ASEGSL TBLHXL.
Proof. exact AsanTblAll.TBLA_ok. Qed.      (* [comment removed for export] *)
Lemma IMGHXL_ok : img_ok ASEGSL IMGHXL.
Proof.
  rewrite IMGHXL_eq. apply mk_img_runsH_ok; [|intros p w Hp; rewrite tget_empty in Hp; discriminate].
  assert (H : forallb (fun p => Z.leb 0 (fst p)) (HX_WR ++ S0M_WR) = true) by (vm_compute; reflexivity).
  rewrite forallb_forall in H. rewrite Forall_forall. intros p Hp. apply Z.leb_le. exact (H p Hp).
Qed.
