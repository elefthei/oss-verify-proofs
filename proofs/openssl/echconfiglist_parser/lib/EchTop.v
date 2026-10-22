(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List QArith Lia.
Require LinuxProcessSemantics.EquivalenceDefinition.Equivalence.
Require OssFuzzTheorems.openssl.echconfiglist_parser.images.Plain.
Require OssFuzzTheorems.openssl.echconfiglist_parser.images.Ubsan.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase MemImageType State Run.
From OssFuzzTheorems.Proofs.openssl.echconfiglist_parser.lib Require Import Scfg ShapeAlg Spec HeapCeil HeapSecret.
From OssFuzzTheorems.Proofs.openssl.echconfiglist_parser.lib Require BaseUbsan.
From OssFuzzTheorems.Proofs.openssl.echconfiglist_parser.lib.Ref Require ECH_Iface MallocSR ECH_LibTop.
From OssFuzzTheorems.Proofs.openssl.echconfiglist_parser.lib.Ub Require ECH_Iface MallocSR ECH_LibTop.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Module SpuriousCfgM <: LinuxProcessSemantics.EquivalenceDefinition.Equivalence.SPURIOUS_CFG.
  Definition cfg := LinuxProcessSemantics.LinuxProcessSem.Run.mkSpuriousCfg false true true true true true.
End SpuriousCfgM.

(* [comment removed for export] *)
Definition FZ_p : forall (HCEIL : HeapCeil) (HSEC : HeapSecret),
    @OssFuzzTheorems.Proofs.openssl.echconfiglist_parser.lib.Ref.ECH_Iface.fuzz_stmt HCEIL (@OssFuzzTheorems.Proofs.openssl.echconfiglist_parser.lib.Ref.MallocSR.HS HCEIL HSEC)
  := OssFuzzTheorems.Proofs.openssl.echconfiglist_parser.lib.Ref.ECH_LibTop.fuzz_closed.

(* [comment removed for export] *)
Definition FZ_u : forall (HCEIL : HeapCeil) (HSEC : HeapSecret),
    @OssFuzzTheorems.Proofs.openssl.echconfiglist_parser.lib.Ub.ECH_Iface.fuzz_stmt HCEIL (@OssFuzzTheorems.Proofs.openssl.echconfiglist_parser.lib.Ub.MallocSR.HS HCEIL HSEC)
  := OssFuzzTheorems.Proofs.openssl.echconfiglist_parser.lib.Ub.ECH_LibTop.fuzz_closed.

Theorem strong_universal_error_free_echconfiglist_parser_ubsan :
  LinuxProcessSemantics.EquivalenceDefinition.Equivalence.strong_universal_error_free_T_scfg_budgets
    SpuriousCfgM.cfg
    LinuxProcessSemantics.EquivalenceDefinition.Equivalence.ShippedBudgets.lim_source
    LinuxProcessSemantics.EquivalenceDefinition.Equivalence.ShippedBudgets.lim_target
    (LinuxProcessSemantics.LinuxProcessSem.MemImageType.mkImage OssFuzzTheorems.openssl.echconfiglist_parser.images.Plain.M.loaded_segments OssFuzzTheorems.openssl.echconfiglist_parser.images.Plain.M.init_pc OssFuzzTheorems.openssl.echconfiglist_parser.images.Plain.M.phdrs)
    (LinuxProcessSemantics.LinuxProcessSem.MemImageType.mkImage OssFuzzTheorems.openssl.echconfiglist_parser.images.Ubsan.M.loaded_segments OssFuzzTheorems.openssl.echconfiglist_parser.images.Ubsan.M.init_pc OssFuzzTheorems.openssl.echconfiglist_parser.images.Ubsan.M.phdrs).
Proof. exact (BaseUbsan.ubsan_base FZ_p FZ_u). Qed.
