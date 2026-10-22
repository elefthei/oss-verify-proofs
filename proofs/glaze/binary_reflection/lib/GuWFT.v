(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
From OssFuzzTheorems.Proofs.glaze.binary_reflection.lib Require BvWfKernel.
From OssFuzzTheorems.Proofs.glaze.binary_reflection.lib Require WdZS.
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Bool Lia.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Instr.
Require OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Common.PropExec OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Common.StoreOk OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxSymStepR OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxSymExec3 OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxSymExec3B OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxSymExec3Sound OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzPlanSound OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxPlanCore OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxPlan OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzIface OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzSpecsStr OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzImageUbsan OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Common.AsanAcctShape OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzPopcnt OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.B2JCutShare OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzCall. Import OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Common.PropExec OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Common.StoreOk.ShapeAlg OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxSymStepR OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxSymExec3 OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxSymExec3B OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxSymExec3Sound OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzPlanSound.GxSymRun3 OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxPlanCore OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxPlan OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzPlanSound.GxPlanSound OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzPlanSound OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzIface OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzSpecsStr.GlzContracts OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzSpecsStr.GlzNodesSound OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzImageUbsan OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Common.AsanAcctShape.GlzArith OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzIface.GlzNodesArith OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzPopcnt OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.B2JCutShare.GlzNodesImg OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzCall.GlzFrame OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzCall OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.B2JCutShare.GlzCallCert.
From OssFuzzTheorems.Proofs.glaze.binary_reflection.lib Require Import GuCommon.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations. Import AX2. Import AX2S. Import AP. Import GPS.
Open Scope Z_scope.

Definition ENTRY : Z := 0x39a6c.
Definition RETPC : Z := 0x3a0b0.
Definition IT : itab := mk_itab_ranges USEGS [(ENTRY, 593%nat); (0x3a3b0, 28%nat); (0x3a420, 27%nat)].
Lemma IT_ok : itab_sound USEGS IT. Proof. apply APS.mk_itab_ranges_sound. Qed.

Definition NXF : nat := 31.
Definition e_buf := e_a0.
Definition K : Z := 17.          (* [comment removed for export] *)
Definition FR : Z := 80.         (* [comment removed for export] *)
Definition WS : list (expr * expr) := [(e_buf, ELit K)].
(* [comment removed for export] *)
Definition YLO : Z := 80.
Definition kn_in : list kentry :=
  [ KRange e_buf PTRLO (objhi K); KDisj (SA e_buf 0) (ELit K) (SA e_sp (- YLO)) (ELit YLO);   (* [comment removed for export] *)
    KWr (SA e_buf 0) (ELit K); KUnk (SA e_buf 0) (ELit K); KWr (SA e_sp (- FR)) (ELit FR) ]
  ++ sp_facts YLO ++ [ img_apart (e_buf) 0 (ELit K); KImg 0x10000 0x75000 ].
Definition tin : acs := mkcs YLO WS ENTRY regs0 kn_in NXF.

(* [comment removed for export] *)
Definition MMAX : Z := 16.
Definition M : nat := 120.        (* [comment removed for export] *)
Definition LO : nat := 121.
Definition js_regs : list expr :=
  sr_havoc (sr_upd (sr_upd regs0 10 (eadd e_buf (EVar M))) 11 (EVar LO)) caller_saved_but_a01 (S LO).
Definition kn_out : list kentry :=
  [ KRange (EVar M) 0 MMAX; KWr (SA e_buf 0) (ELit K); KUnk (SA e_buf 0) (ELit K); KWr (SA e_sp (- FR)) (ELit FR) ] ++ sp_facts YLO.
Definition tout : acs := mkcs YLO WS RETPC js_regs kn_out (LO + 14)%nat.
Definition ce : gcallee := GCE NXF tin [tout] 0 0.
