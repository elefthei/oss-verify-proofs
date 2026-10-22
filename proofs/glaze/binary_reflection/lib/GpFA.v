(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
From OssFuzzTheorems.Proofs.glaze.binary_reflection.lib Require BvWfKernel.
From OssFuzzTheorems.Proofs.glaze.binary_reflection.lib Require WdZS.
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Bool Lia.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
Require OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Common.PropExec OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Common.StoreOk OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxSymStepR OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxSymExec3 OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxSymExec3B OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxSymExec3Sound OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzPlanSound OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxPlanCore OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxPlan OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzConst OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzIface OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzSpecsStr OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzImagePlain OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzCall OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.B2JCutShare. Import OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Common.PropExec OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.Common.StoreOk.ShapeAlg OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxSymStepR OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxSymExec3 OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxSymExec3B OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxSymExec3Sound OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzPlanSound.GxSymRun3 OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxPlanCore OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GxPlan OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzPlanSound.GxPlanSound OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzPlanSound OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzConst OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzIface OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzSpecsStr.GlzContracts OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzSpecsStr.GlzNodesSound OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzImagePlain OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.GlzCall OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.B2JCutShare.GlzCallCert.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations. Import AX2. Import AX2S. Import AP. Import GPS.
Open Scope Z_scope.

Definition IT : itab := mk_itab_ranges PSEGS [(0x2fd88, 620%nat)].
Lemma IT_ok : itab_sound PSEGS IT. Proof. apply APS.mk_itab_ranges_sound. Qed.

Definition NXF : nat := 34.
Definition regs0 : list expr := ELit 0 :: map EVar (seq 0 31).
Definition e_sp : expr := EVar 1.
Definition AV : expr := EVar 9. Definition C : expr := EVar 10. Definition Q : expr := EVar 11. Definition EE : expr := EVar 12.
Definition B : expr := EVar 31. Definition O : expr := EVar 32. Definition ERP : expr := EVar 33.
Definition FR : Z := 2112.          (* [comment removed for export] *)
Definition BUFMAX : Z := 2 ^ 26.         (* [comment removed for export] *)
Definition kn_common : list kentry :=
  [KWr (SA Q 0) (ELit 8);
   KUnk (SA B 0) (esub EE B); KWr (SA B 0) (esub EE B); KRange (esub EE B) 0 BUFMAX; KRange B PTRLO PTRHI; KRange EE PTRLO PTRHI;
   KWr (SA AV 0) (ELit 24); KWr (SA C 0) (ELit 4);
   KRange AV CEIL HI47; KRange C CEIL HI47; KRange Q CEIL HI47;            (* [comment removed for export] *)
   KDisj (SA AV 0) (ELit 24) (SA C 0) (ELit 40); KDisj (SA AV 0) (ELit 24) (SA Q 0) (ELit 8); KDisj (SA C 0) (ELit 40) (SA Q 0) (ELit 8);
   KDisj (SA AV 0) (ELit 24) (SA B 0) (esub EE B); KDisj (SA C 0) (ELit 40) (SA B 0) (esub EE B); KDisj (SA Q 0) (ELit 8) (SA B 0) (esub EE B);
   KWr (SA e_sp (- FR)) (ELit FR);
   KDisj (SA e_sp (- FR)) (ELit FR) (SA AV 0) (ELit 24); KDisj (SA e_sp (- FR)) (ELit FR) (SA C 0) (ELit 40);
   KDisj (SA e_sp (- FR)) (ELit FR) (SA Q 0) (ELit 8); KDisj (SA e_sp (- FR)) (ELit FR) (SA B 0) (esub EE B);
   KAlign e_sp 16; KRange e_sp (CEIL + 4096) HI47; KImg 0x10000 0x71000].
Definition kn0 : list kentry :=
  [KWord (SA Q 0) 8 (eadd B O); KRange O 0 BUFMAX; KRange (esub (esub EE B) O) 0 BUFMAX; KWord (SA C 0) 4 ERP; KRange ERP 0 0] ++ kn_common.
Definition WS : list (expr * expr) := [(AV, ELit 24); (C, ELit 4); (Q, ELit 8)].
Definition mkcs (p : Z) (regs : list expr) (k : list kentry) (nx : nat) : acs :=
  ACS (mk_ss p regs k nx) [] 0 FR 0 [] WS 0 e_sp FdStd false.   (* [comment removed for export] *)
Definition tin : acs := mkcs 0x2fd88 regs0 kn0 NXF.

Definition CT (id : nat) : option gcallee := None.
Definition XN : nat -> list expr -> acs -> option acs := XNc PSEGS IT APLAIN NXF GPLAIN 0 0 CT.
Definition LIMIT : Z := 2 ^ 34.

(* [comment removed for export] *)
Definition RET : Z := 0x30724.
Definition O' : expr := EVar 40. Definition ER' : expr := EVar 41.
Definition clobbered : list nat := [5; 6; 7; 10; 11; 12; 13; 14; 15; 16; 17; 28; 29; 30; 31]%nat.
Fixpoint sr_havoc (sr : list expr) (ixs : list nat) (v : nat) : list expr :=
  match ixs with [] => sr | i :: t => sr_havoc (sr_upd sr i (EVar v)) t (S v) end.
Definition x_regs : list expr := sr_havoc regs0 clobbered 42.
Definition x_kn : list kentry :=
  [KWord (SA Q 0) 8 (eadd B O'); KRange O' 0 BUFMAX; KRange (esub (esub EE B) O') 0 BUFMAX; KWord (SA C 0) 4 ER'; KRange ER' 0 24] ++ kn_common.
Definition tout : acs := mkcs RET x_regs x_kn 57.

Definition ce : gcallee := GCE NXF tin [tout] 0 0.

(* [comment removed for export] *)
Definition CNT : expr := EVar 150.


Definition FUEL : nat := 3000. Definition BFUEL : nat := 600.






