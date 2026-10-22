(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)

(* [comment removed for export] *)

From Stdlib Require Import NArith List QArith.
Require LinuxProcessSemantics.EquivalenceDefinition.Equivalence.
Require LinuxProcessSemantics.EquivalenceDefinition.MustExit.
Require LinuxProcessSemantics.EquivalenceDefinition.FinInput.
Require LinuxProcessSemantics.EquivalenceDefinition.Classifier.
Require LinuxProcessSemantics.EquivalenceDefinition.Measure.
Require LinuxProcessSemantics.EquivalenceDefinition.PatchClassifySpec.
Require LinuxProcessSemantics.EquivalenceDefinition.HaltsAllowed.
Require OssFuzzTheorems.fast_float.from_chars.images.Plain.
Require OssFuzzTheorems.fast_float.from_chars.images.Asan.
Require OssFuzzTheorems.fast_float.from_chars.images.Ubsan.
Require OssFuzzTheorems.fast_float.from_chars.images.AsanUbsan.

Require OssFuzzTheorems.Proofs.fast_float.from_chars.lib.TopUbsan.
Require OssFuzzTheorems.Proofs.fast_float.from_chars.lib.TopAsanH.
Require OssFuzzTheorems.Proofs.fast_float.from_chars.lib.TopBothH.
Module SpuriousCfgM <: LinuxProcessSemantics.EquivalenceDefinition.Equivalence.SPURIOUS_CFG.
  Definition cfg := LinuxProcessSemantics.LinuxProcessSem.Run.mkSpuriousCfg false true true true true true.
End SpuriousCfgM.

Module HaltsCfgForcedOnly <: LinuxProcessSemantics.EquivalenceDefinition.Equivalence.SPURIOUS_CFG.
  Definition cfg := LinuxProcessSemantics.LinuxProcessSem.Run.forced_only_cfg.
End HaltsCfgForcedOnly.

Module FastFloatFromCharsHaltsPlainExits <: LinuxProcessSemantics.EquivalenceDefinition.HaltsAllowed.ALLOWED_EXITS.
  Import stdpp.bitvector.bitvector.
  Import ListNotations.
  Definition codes : list (stdpp.bitvector.definitions.bv 64) := [Z_to_bv 64 0; Z_to_bv 64 2].
End FastFloatFromCharsHaltsPlainExits.

Module FastFloatFromCharsHaltsAsanExits <: LinuxProcessSemantics.EquivalenceDefinition.HaltsAllowed.ALLOWED_EXITS.
  Import stdpp.bitvector.bitvector.
  Import ListNotations.
  Definition codes : list (stdpp.bitvector.definitions.bv 64) := [Z_to_bv 64 0; Z_to_bv 64 2].
End FastFloatFromCharsHaltsAsanExits.

Module FastFloatFromCharsHaltsUbsanExits <: LinuxProcessSemantics.EquivalenceDefinition.HaltsAllowed.ALLOWED_EXITS.
  Import stdpp.bitvector.bitvector.
  Import ListNotations.
  Definition codes : list (stdpp.bitvector.definitions.bv 64) := [Z_to_bv 64 0; Z_to_bv 64 2].
End FastFloatFromCharsHaltsUbsanExits.

Module FastFloatFromCharsHaltsBothExits <: LinuxProcessSemantics.EquivalenceDefinition.HaltsAllowed.ALLOWED_EXITS.
  Import stdpp.bitvector.bitvector.
  Import ListNotations.
  Definition codes : list (stdpp.bitvector.definitions.bv 64) := [Z_to_bv 64 0; Z_to_bv 64 2].
End FastFloatFromCharsHaltsBothExits.

Theorem strong_universal_error_free_from_chars_asan :
  LinuxProcessSemantics.EquivalenceDefinition.Equivalence.strong_universal_error_free_T_scfg_budgets_abort
    SpuriousCfgM.cfg
    LinuxProcessSemantics.EquivalenceDefinition.Equivalence.SanitizerBudgets.lim_source
    LinuxProcessSemantics.EquivalenceDefinition.Equivalence.SanitizerBudgets.lim_target
    (LinuxProcessSemantics.LinuxProcessSem.MemImageType.mkImage OssFuzzTheorems.fast_float.from_chars.images.Plain.M.loaded_segments OssFuzzTheorems.fast_float.from_chars.images.Plain.M.init_pc OssFuzzTheorems.fast_float.from_chars.images.Plain.M.phdrs)
    (LinuxProcessSemantics.LinuxProcessSem.MemImageType.mkImage OssFuzzTheorems.fast_float.from_chars.images.Asan.M.loaded_segments OssFuzzTheorems.fast_float.from_chars.images.Asan.M.init_pc OssFuzzTheorems.fast_float.from_chars.images.Asan.M.phdrs).
Proof.
  exact OssFuzzTheorems.Proofs.fast_float.from_chars.lib.TopAsanH.base_asan.
Qed.

Theorem strong_universal_error_free_from_chars_ubsan :
  LinuxProcessSemantics.EquivalenceDefinition.Equivalence.strong_universal_error_free_T_scfg_budgets_abort
    SpuriousCfgM.cfg
    LinuxProcessSemantics.EquivalenceDefinition.Equivalence.ShippedBudgets.lim_source
    LinuxProcessSemantics.EquivalenceDefinition.Equivalence.ShippedBudgets.lim_target
    (LinuxProcessSemantics.LinuxProcessSem.MemImageType.mkImage OssFuzzTheorems.fast_float.from_chars.images.Plain.M.loaded_segments OssFuzzTheorems.fast_float.from_chars.images.Plain.M.init_pc OssFuzzTheorems.fast_float.from_chars.images.Plain.M.phdrs)
    (LinuxProcessSemantics.LinuxProcessSem.MemImageType.mkImage OssFuzzTheorems.fast_float.from_chars.images.Ubsan.M.loaded_segments OssFuzzTheorems.fast_float.from_chars.images.Ubsan.M.init_pc OssFuzzTheorems.fast_float.from_chars.images.Ubsan.M.phdrs).
Proof.
  exact OssFuzzTheorems.Proofs.fast_float.from_chars.lib.TopUbsan.base_ubsan.
Qed.

Theorem strong_universal_error_free_from_chars_both :
  LinuxProcessSemantics.EquivalenceDefinition.Equivalence.strong_universal_error_free_T_scfg_budgets_abort
    SpuriousCfgM.cfg
    LinuxProcessSemantics.EquivalenceDefinition.Equivalence.SanitizerBudgets.lim_source
    LinuxProcessSemantics.EquivalenceDefinition.Equivalence.SanitizerBudgets.lim_target
    (LinuxProcessSemantics.LinuxProcessSem.MemImageType.mkImage OssFuzzTheorems.fast_float.from_chars.images.Plain.M.loaded_segments OssFuzzTheorems.fast_float.from_chars.images.Plain.M.init_pc OssFuzzTheorems.fast_float.from_chars.images.Plain.M.phdrs)
    (LinuxProcessSemantics.LinuxProcessSem.MemImageType.mkImage OssFuzzTheorems.fast_float.from_chars.images.AsanUbsan.M.loaded_segments OssFuzzTheorems.fast_float.from_chars.images.AsanUbsan.M.init_pc OssFuzzTheorems.fast_float.from_chars.images.AsanUbsan.M.phdrs).
Proof.
  exact OssFuzzTheorems.Proofs.fast_float.from_chars.lib.TopBothH.base_both.
Qed.
