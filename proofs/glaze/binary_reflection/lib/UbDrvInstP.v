(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
From OssFuzzTheorems.Proofs.glaze.binary_reflection.lib Require BvWfKernel.
From OssFuzzTheorems.Proofs.glaze.binary_reflection.lib Require WdZS.
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType Fs State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr.
Require OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Common.PropExec OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Common.CatExec OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Common.StoreOk OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Common.AsanAcctShape OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Spec4 OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxSymStepR OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxSymExec3 OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxSymExec3B OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxSymExec3Sound OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzPlanSound OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxPlanCore OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxPlan OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzIface OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzSpecsStr OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzCall OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.B2JCutShare OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzConst OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbMhDefs OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzImageUbsan OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbDrvHooks OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbMhAInv OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbMhIface3 OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.MhK OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.AsIface3 OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzClosureUbsanInst OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbDrvNodesSound OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbDrvS3Plan OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbDrvSSound OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbDrvS3Sound OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbDrvS2Plan OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbDrvS2Sound OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbDrvS2Glue. Import OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Common.PropExec OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Common.CatExec.CatSim OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Common.StoreOk.ShapeAlg OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Common.AsanAcctShape.ShapeRel OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Common.AsanAcctShape.ShapeRetry OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Spec4.AgentLib OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxSymStepR OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxSymExec3 OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxSymExec3B OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxSymExec3Sound OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzPlanSound.GxSymRun3 OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxPlanCore OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxPlan OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzPlanSound.GxPlanSound OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzPlanSound OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzIface OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzSpecsStr.GlzContracts OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzCall.GlzFrame OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzCall OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.B2JCutShare.GlzCallCert OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzSpecsStr.GlzNodesSound OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzConst OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbMhDefs.UbImg OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzImageUbsan OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbDrvHooks.GuFuzzT OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Spec4 OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Common.CatExec.MallocDefs OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbMhDefs OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbMhAInv OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbMhIface3.UbMhSpec3 OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbMhIface3 OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.MhK OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.AsIface3.MhKInst OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzClosureUbsanInst.UbMhFree3 OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbDrvHooks.UbDrvIT OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzSpecsStr.UbDrvNodes OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbDrvNodesSound OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbDrvHooks OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbDrvS3Plan.UbDrvHooksS OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbDrvS3Plan OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbDrvSSound.UbDrvTPlan OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbDrvSSound.UbDrvTSound OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbDrvSSound.UbDrvTInst OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbDrvSSound.UbDrvTGlue OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbDrvSSound OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbDrvS3Sound OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbDrvS2Plan OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbDrvS2Sound OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.UbDrvS2Glue OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzClosureUbsanInst.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations. Import AX2. Import AX2S. Import AP. Import APS. Import GPS.
Open Scope Z_scope.

#[local] Notation RSEGS := USEGS.
(* [comment removed for export] *)
Ltac lia ::= Zify.zify; xlia zchecker.
Ltac Zify.zify_convert_to_euclidean_division_equations_flag ::= constr:(false).

(* [comment removed for export] *)
Definition SRP : shape_rel RSEGS := SR_realizes RSEGS.
Lemma SRXP : sr_exactness RSEGS SRP.
Proof. exact (exact_realizes RSEGS). Qed.
Lemma SRP_rel : forall c T, sr_rel RSEGS SRP c T <-> realizes RSEGS c T.
Proof. intros c T. split; intros H; exact H. Qed.

(* [comment removed for export] *)
Lemma SWIN_T_img : forall lo hi, In (lo, hi) SWIN_T ->
  g_ro_hi GUBSAN <= lo /\ hi <= g_img_hi GUBSAN /\ (forall plo phi, In (plo, phi) (g_priv GUBSAN) -> hi <= plo \/ phi <= lo).
Proof.
  intros lo hi Hin. unfold SWIN_T, PERM_Tc, RSTAGE_W, DN.FILE1, DN.FILE2 in Hin. cbn in Hin.
  cbn [g_ro_hi g_img_hi g_priv GUBSAN].
  destruct Hin as [H|[H|[H|[H|[H|[H|[H|[H|[]]]]]]]]]; injection H as <- <-;
    (split; [lia | split; [lia | intros plo phi [X|[X|[X|[]]]]; injection X as <- <-; lia]]).
Qed.

Lemma BCAP_ok : 0 + BCAP <= GBUDGET. Proof. unfold BCAP. lia. Qed.
Lemma CCAP_ok : 0 + CCAP <= GCOUNT. Proof. unfold CCAP. lia. Qed.

Section InstP.
Context {RC : run_ceil}.
(* [comment removed for export] *)
Hypothesis HMW : forall fx : FPState, @MALLOC_KATW fx RC MSTK_M.
Hypothesis HMA : forall fx : FPState, @MALLOC_ALT_F fx RC MSTK_M.
Hypothesis HMB : forall fx : FPState, @MALLOC_BIG_R fx RC MSTK_M.

#[local] Notation RZ := (sr_rel RSEGS SRP).
#[local] Notation AINVcT TOP M0 := (AINV_f SWIN_T GUBSAN AINV PERM_Tc TOP [] M0 0 0).
#[local] Notation AINVcS TOP M0 := (AINV_f SWIN_T GUBSAN AINV_R PERM_Tc TOP [] M0 0 0).
#[local] Notation cs_okT TOP FS0 M0 := (GPS.cs_ok RSEGS PERM_Tc TOP FS0 fds_std (AINVcT TOP M0) fx_ok UTRUE).
#[local] Notation cs_okS TOP FS0 M0 := (GPS.cs_ok RSEGS PERM_Tc TOP FS0 fds_std (AINVcS TOP M0) fx_ok UTRUE).

(* [comment removed for export] *)
Lemma HFRP : forall fx : FPState, @FREE_R fx RC MSTK_M.
Proof. intros fx. exact (@free_r3 fx RC). Qed.

(* [comment removed for export] *)
Lemma GC_TP : forall TOP FS0 M0,
  gcontracts RSEGS ITD AUBSAN NXD PERM_Tc TOP FS0 fds_std (AINVcT TOP M0) fx_ok UTRUE RZ GUBSAN BCAP CCAP.
Proof.
  intros TOP FS0 M0.
  exact (GC_ALL HMW SWIN_T swin_ok_T SWIN_T_img ITD NXD BCAP CCAP PERM_Tc TOP [] M0 0 0 FS0 fds_std UTRUE
           ITD_ok (Z.le_refl 0) (Z.le_refl 0) BCAP_ok CCAP_ok UTRUE_agree).
Qed.

(* [comment removed for export] *)
Lemma FZNP : callee_contract RSEGS SWIN_T GUBSAN fx_ok RZ AINV FuzzN.ce.
Proof. exact (fuzz_closed_N HMW). Qed.
Lemma FZEP : callee_contract RSEGS SWIN_T GUBSAN fx_ok RZ AINV FuzzE.ce.
Proof. exact (fuzz_closed_E HMW). Qed.





(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
Section ReadLoop.
Variables (p : Fs.path) (data : list byte) (TOP : Z) (M0 : word -> option byte).
(* [comment removed for export] *)
Hypothesis REFP : forall len E fx R M model,
  GPS.cs_ok RSEGS PERM_Tc TOP (m_fs model) (FDSr p (len + (2 ^ 26 - len))) (AINVcS TOP M0) fx_ok (U_rd data len (2 ^ 26)) E tVRb fx R M model ->
  realizes RSEGS (cfgF RSEGS fx R (pc tVRb) M model) (t_die msg_refused (m_fs model)).

End ReadLoop.
End InstP.
