(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
From LinuxProcessSemantics.EquivalenceDefinition Require Import Equivalence.
From LinuxProcessSemantics.LinuxProcessSem Require Import MemImageType.
Require OssFuzzTheorems.coturn.FuzzStunClient.images.Plain.
Require OssFuzzTheorems.coturn.FuzzStunClient.images.AsanUbsan.
From OssFuzzTheorems.Proofs.coturn.FuzzStunClient.lib Require Import BothTopW.
From OssFuzzTheorems.Proofs.coturn.FuzzStunClient.lib.Asan Require Import Main5W1Both.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Theorem both_base :
  strong_universal_error_free_T_budgets SanitizerBudgets.lim_source SanitizerBudgets.lim_target
    (mkImage OssFuzzTheorems.coturn.FuzzStunClient.images.Plain.M.loaded_segments
             OssFuzzTheorems.coturn.FuzzStunClient.images.Plain.M.init_pc
             OssFuzzTheorems.coturn.FuzzStunClient.images.Plain.M.phdrs)
    (mkImage OssFuzzTheorems.coturn.FuzzStunClient.images.AsanUbsan.M.loaded_segments
             OssFuzzTheorems.coturn.FuzzStunClient.images.AsanUbsan.M.init_pc
             OssFuzzTheorems.coturn.FuzzStunClient.images.AsanUbsan.M.phdrs).
Proof. exact (both_base_W1 TW1 TW1_ok). Qed.
