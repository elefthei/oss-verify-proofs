(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode.
From OssFuzzTheorems.fast_float.from_chars.images Require Import Asan.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require Import PropExec StepTac.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLin FxCore FxSound FxStep.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLoop.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxSubst FxEnt FxImg FxPlan FxLoop FxFrame FxDrv FxCall FxWork FxWorkX FxGenA FxGenX.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLin OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxCore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSound OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxStep OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop.FxExplore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSubst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxEnt OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFrame OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxDrv OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxCall OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxWork OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxWorkX OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxGenA OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxGenX.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib Require M4A_kfn.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib Require M4A_kfn M4A_kfnf.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4A_kfn.M4A_tmpl OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4A_kfn OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4A_kfnf.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib Require M4A_kfn.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4X Require SpfA SpfAThm.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4X Require Import FcfA.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4X Require Import FxConstGen.
Import ListNotations.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Open Scope Z_scope.

Lemma TM_eq : TM = mk_tbl ASEGS 0x97d00 1382.
Proof. vm_cast_no_check (eq_refl TM). Qed.
Lemma IMGW_eq : IMGW = mk_imgs_acc IMGR TEmpty.
Proof. vm_cast_no_check (eq_refl IMGW). Qed.
Lemma IMGW_ok : img_ok ASEGS IMGW.
Proof.
  rewrite IMGW_eq.
  apply mk_imgs_acc_ok; [unfold IMGR; repeat constructor; cbn; lia|]. intros p v Hp. rewrite tget_empty in Hp. discriminate.
Qed.
Lemma FRETS_ok : Forall (is_ret ASEGS) FRETS.
Proof. unfold FRETS. repeat constructor. exists (Z_to_bv 32 0x00008067). (split; [|split]); vm_refl_bv. Qed.
Lemma xsites_NODES1 : xsites NODES1 = [(OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4A_kfn.M4A_inff.P0, OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4A_kfn.M4A_inff.Q); (SpfA.P0, SpfA.SPF_Q)].
Proof. reflexivity. Qed.
Lemma xhandl_NODES1 : xhandl NODES1 = [].
Proof. reflexivity. Qed.
Lemma xksites_NODES1 : xksites NODES1 = [].
Proof. reflexivity. Qed.
Lemma xfsites_NODES1 : xfsites NODES1 = [].
Proof. reflexivity. Qed.

Section Fcf.
Hypothesis H_SM4 : kfn_ok ASEGS SM4_P0 SM4_Q.
Hypothesis H_MS32 : kfn_ok ASEGS MEMSET32_P0 MEMSET32_Q.
Hypothesis H_MS27 : kfn_ok ASEGS MEMSET27_P0 MEMSET27_Q.
Hypothesis H_SSF5 : kfn_ok ASEGS SSF5_P0 SSF5_Q.
Hypothesis H_DCFf : forall frac, kfrag_ok ASEGS (DCF_P0f frac) (DCF_Qf frac) 0x9b078.

#[using="H_SM4 H_MS32 H_MS27 H_SSF5 H_DCFf"] Theorem fcf_ok : fn_ok ASEGS FP0 FCF_Q FRETS.
Proof. LiaFast.lf_pins (fun (H_SM4 H_MS32 H_MS27 H_SSF5 H_DCFf : LiaFast.U) => LiaFast.u0).
  apply (fn_ok_of_wcertx ASEGS (fun _ _ _ => True) TM IMGW 10 FP0RUN NODES1C FP0 FCF_Q FRETS ltac:(rewrite TM_eq; apply mk_tbl_ok) IMGW_ok FCF_cert).
  - intros P0' Q' H. rewrite NODES1C_xsites, xsites_NODES1 in H.
    destruct H as [H|[H|[]]]; injection H as <- <-.
    + exists OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4A_kfn.M4A_inff.RETS. exact OssFuzzTheorems.Proofs.fast_float.from_chars.lib.M4A_kfn.M4A_inff.inff_ok.
    + exists SpfA.RETS. exact (SpfAThm.spf_ok H_SM4 H_MS32 H_MS27 H_SSF5 H_DCFf).
  - intros f H. rewrite NODES1C_xhandl, xhandl_NODES1 in H. destruct H.
  - intros P0' Q' H. rewrite NODES1C_xksites, xksites_NODES1 in H. destruct H.
  - intros P0' Q' pcQ H. rewrite NODES1C_xfsites, xfsites_NODES1 in H. destruct H.
  - vm_compute. reflexivity.
  - vm_compute. reflexivity.
  - vm_compute. reflexivity.
  - exact FRETS_ok.
Qed.
End Fcf.
