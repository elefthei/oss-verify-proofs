(** Controls that live inside Rocq: this file compiles only if every [Fail]
    below fails and every lemma below holds.

    - [check_image_wf] refuses images that are not well formed, so the [_wf]
      lemma every harness's Images.v proves is a real check.
    - Each [_is_lps] lemma of OssFuzzTheorems.Core.Shapes is an equality
      between two different constants; the second group shows that such an
      equality is not free: a shape stated with a DIFFERENT budget, reading or
      exit set is not equal to lps's by [reflexivity]. *)
From Stdlib Require Import ZArith List.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase MemImageType State Run.
From LinuxProcessSemantics.EquivalenceDefinition Require Import Equivalence HaltsAllowed.
From OssFuzzTheorems.Core Require Import Images Shapes.
From OssFuzzTheorems.Tests.toy.exit0.images Require Plain.
Import ListNotations.

(** The toy image with its entry point moved past the end of its only
    segment: nothing is fetchable there. *)
Definition entry_outside : Image :=
  mkImage Plain.M.loaded_segments 0x20000%N Plain.M.phdrs.

Lemma entry_outside_not_wf : ~ image_wf entry_outside.
Proof. intros H. apply image_wf_b_complete in H. vm_compute in H. discriminate H. Qed.

Fail Definition entry_outside_wf : image_wf entry_outside := ltac:(check_image_wf).

(** The same image claiming a program-header table in unmapped memory. *)
Definition phdrs_outside : Image :=
  mkImage Plain.M.loaded_segments Plain.M.init_pc (mkPhdrInfo 0x30000%N 56%N 1%N).

Lemma phdrs_outside_not_wf : ~ image_wf phdrs_outside.
Proof. intros H. apply image_wf_b_complete in H. vm_compute in H. discriminate H. Qed.

Fail Definition phdrs_outside_wf : image_wf phdrs_outside := ltac:(check_image_wf).

(** No segments at all. *)
Fail Definition empty_wf : image_wf (mkImage [] 0x10078%N Plain.M.phdrs) := ltac:(check_image_wf).

(** The shapes' equalities with lps are not satisfied by a neighbouring
    definition: the reading, the budget and the exit set all matter. *)
Fail Definition halts_reading_matters : forall lim S img,
  halts_within_budget lim S img = halts_allowed_T_scfg_budgets may_fail_cfg lim S img
  := fun _ _ _ => eq_refl.
Fail Definition agrees_reading_matters : forall lp ls p s,
  agrees lp ls p s = strong_universal_error_free_T_budgets_abort lp ls p s
  := fun _ _ _ _ => eq_refl.
Fail Definition exits_matter :
  Exits.ok_or_refused = [Z_to_bv 64 0; Z_to_bv 64 1]
  := eq_refl.
Fail Definition budgets_matter :
  Budgets.Asan.lim_source = Budgets.Standard.lim_source
  := eq_refl.
