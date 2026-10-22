(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* The three equivalence theorems for boost-beast, with their proofs.

   Each theorem states that the uninstrumented build (the Src_ image) and one
   sanitizer build (the Tgt_ image: ASan, UBSan, or both) are equivalent and
   error-free, at the statement that the checkers in ../Checker seal. Their
   names and types must not change.

   This file is the graded Proof.v reduced to these three theorems and the
   declarations of the graded Proof.v that they use. The other theorems of the
   graded run are removed, with the Requires that only they used. *)

(* [comment removed for export] *)

From Stdlib Require Import NArith List QArith.
Require LinuxProcessSemantics.EquivalenceDefinition.Equivalence.
Require LinuxProcessSemantics.EquivalenceDefinition.MustExit.
Require LinuxProcessSemantics.EquivalenceDefinition.FinInput.
Require LinuxProcessSemantics.EquivalenceDefinition.Classifier.
Require LinuxProcessSemantics.EquivalenceDefinition.Measure.
Require LinuxProcessSemantics.EquivalenceDefinition.PatchClassifySpec.
Require LinuxProcessSemantics.EquivalenceDefinition.HaltsAllowed.
Require OssFuzzTheorems.boost_beast.http_request.images.Plain.
Require OssFuzzTheorems.boost_beast.http_request.images.Asan.
Require OssFuzzTheorems.boost_beast.http_request.images.Ubsan.
Require OssFuzzTheorems.boost_beast.http_request.images.AsanUbsan.
Require OssFuzzTheorems.Proofs.boost_beast.http_request.lib.PairUbsan.
Require OssFuzzTheorems.Proofs.boost_beast.http_request.lib.Ref.XFuzz.
Require OssFuzzTheorems.Proofs.boost_beast.http_request.lib.Ub.XFuzz.
Require OssFuzzTheorems.Proofs.boost_beast.http_request.lib.As.AsanFinal.
Require OssFuzzTheorems.Proofs.boost_beast.http_request.lib.As.X8_H_ZZ.
Require OssFuzzTheorems.Proofs.boost_beast.http_request.lib.Bo.BothFinal.
Require OssFuzzTheorems.Proofs.boost_beast.http_request.lib.Bo.X8_H_ZZ.

Module SpuriousCfgM <: LinuxProcessSemantics.EquivalenceDefinition.Equivalence.SPURIOUS_CFG.
  Definition cfg := LinuxProcessSemantics.LinuxProcessSem.Run.mkSpuriousCfg false true true true true true.
End SpuriousCfgM.

Module HaltsCfgForcedOnly <: LinuxProcessSemantics.EquivalenceDefinition.Equivalence.SPURIOUS_CFG.
  Definition cfg := LinuxProcessSemantics.LinuxProcessSem.Run.forced_only_cfg.
End HaltsCfgForcedOnly.

Module BoostBeastHaltsPlainExits <: LinuxProcessSemantics.EquivalenceDefinition.HaltsAllowed.ALLOWED_EXITS.
  Import stdpp.bitvector.bitvector.
  Import ListNotations.
  Definition codes : list (stdpp.bitvector.definitions.bv 64) := [Z_to_bv 64 0; Z_to_bv 64 2].
End BoostBeastHaltsPlainExits.

Module BoostBeastHaltsAsanExits <: LinuxProcessSemantics.EquivalenceDefinition.HaltsAllowed.ALLOWED_EXITS.
  Import stdpp.bitvector.bitvector.
  Import ListNotations.
  Definition codes : list (stdpp.bitvector.definitions.bv 64) := [Z_to_bv 64 0; Z_to_bv 64 2].
End BoostBeastHaltsAsanExits.

Module BoostBeastHaltsUbsanExits <: LinuxProcessSemantics.EquivalenceDefinition.HaltsAllowed.ALLOWED_EXITS.
  Import stdpp.bitvector.bitvector.
  Import ListNotations.
  Definition codes : list (stdpp.bitvector.definitions.bv 64) := [Z_to_bv 64 0; Z_to_bv 64 2].
End BoostBeastHaltsUbsanExits.

Module BoostBeastHaltsBothExits <: LinuxProcessSemantics.EquivalenceDefinition.HaltsAllowed.ALLOWED_EXITS.
  Import stdpp.bitvector.bitvector.
  Import ListNotations.
  Definition codes : list (stdpp.bitvector.definitions.bv 64) := [Z_to_bv 64 0; Z_to_bv 64 2].
End BoostBeastHaltsBothExits.

Theorem strong_universal_error_free_boost_beast_asan :
  LinuxProcessSemantics.EquivalenceDefinition.Equivalence.strong_universal_error_free_T_scfg_budgets_abort
    SpuriousCfgM.cfg
    LinuxProcessSemantics.EquivalenceDefinition.Equivalence.SanitizerBudgets.lim_source
    LinuxProcessSemantics.EquivalenceDefinition.Equivalence.SanitizerBudgets.lim_target
    (LinuxProcessSemantics.LinuxProcessSem.MemImageType.mkImage OssFuzzTheorems.boost_beast.http_request.images.Plain.M.loaded_segments OssFuzzTheorems.boost_beast.http_request.images.Plain.M.init_pc OssFuzzTheorems.boost_beast.http_request.images.Plain.M.phdrs)
    (LinuxProcessSemantics.LinuxProcessSem.MemImageType.mkImage OssFuzzTheorems.boost_beast.http_request.images.Asan.M.loaded_segments OssFuzzTheorems.boost_beast.http_request.images.Asan.M.init_pc OssFuzzTheorems.boost_beast.http_request.images.Asan.M.phdrs).
Proof.
  exact (OssFuzzTheorems.Proofs.boost_beast.http_request.lib.As.AsanFinal.asan_base_of OssFuzzTheorems.Proofs.boost_beast.http_request.lib.As.X8_H_ZZ.AFUZZ_closed OssFuzzTheorems.Proofs.boost_beast.http_request.lib.As.X8_H_ZZ.ACOST_closed OssFuzzTheorems.Proofs.boost_beast.http_request.lib.Ref.XFuzz.xfuzz_plain).
Qed.

Theorem strong_universal_error_free_boost_beast_ubsan :
  LinuxProcessSemantics.EquivalenceDefinition.Equivalence.strong_universal_error_free_T_scfg_budgets_abort
    SpuriousCfgM.cfg
    LinuxProcessSemantics.EquivalenceDefinition.Equivalence.ShippedBudgets.lim_source
    LinuxProcessSemantics.EquivalenceDefinition.Equivalence.ShippedBudgets.lim_target
    (LinuxProcessSemantics.LinuxProcessSem.MemImageType.mkImage OssFuzzTheorems.boost_beast.http_request.images.Plain.M.loaded_segments OssFuzzTheorems.boost_beast.http_request.images.Plain.M.init_pc OssFuzzTheorems.boost_beast.http_request.images.Plain.M.phdrs)
    (LinuxProcessSemantics.LinuxProcessSem.MemImageType.mkImage OssFuzzTheorems.boost_beast.http_request.images.Ubsan.M.loaded_segments OssFuzzTheorems.boost_beast.http_request.images.Ubsan.M.init_pc OssFuzzTheorems.boost_beast.http_request.images.Ubsan.M.phdrs).
Proof.
  exact (OssFuzzTheorems.Proofs.boost_beast.http_request.lib.PairUbsan.ubsan_base OssFuzzTheorems.Proofs.boost_beast.http_request.lib.Ref.XFuzz.xfuzz_plain OssFuzzTheorems.Proofs.boost_beast.http_request.lib.Ub.XFuzz.xfuzz_ubsan).
Qed.

Theorem strong_universal_error_free_boost_beast_both :
  LinuxProcessSemantics.EquivalenceDefinition.Equivalence.strong_universal_error_free_T_scfg_budgets_abort
    SpuriousCfgM.cfg
    LinuxProcessSemantics.EquivalenceDefinition.Equivalence.SanitizerBudgets.lim_source
    LinuxProcessSemantics.EquivalenceDefinition.Equivalence.SanitizerBudgets.lim_target
    (LinuxProcessSemantics.LinuxProcessSem.MemImageType.mkImage OssFuzzTheorems.boost_beast.http_request.images.Plain.M.loaded_segments OssFuzzTheorems.boost_beast.http_request.images.Plain.M.init_pc OssFuzzTheorems.boost_beast.http_request.images.Plain.M.phdrs)
    (LinuxProcessSemantics.LinuxProcessSem.MemImageType.mkImage OssFuzzTheorems.boost_beast.http_request.images.AsanUbsan.M.loaded_segments OssFuzzTheorems.boost_beast.http_request.images.AsanUbsan.M.init_pc OssFuzzTheorems.boost_beast.http_request.images.AsanUbsan.M.phdrs).
Proof.
  exact (OssFuzzTheorems.Proofs.boost_beast.http_request.lib.Bo.BothFinal.both_base_of OssFuzzTheorems.Proofs.boost_beast.http_request.lib.Bo.X8_H_ZZ.BFUZZ_closed OssFuzzTheorems.Proofs.boost_beast.http_request.lib.Bo.X8_H_ZZ.BCOST_closed OssFuzzTheorems.Proofs.boost_beast.http_request.lib.Ref.XFuzz.xfuzz_plain).
Qed.
