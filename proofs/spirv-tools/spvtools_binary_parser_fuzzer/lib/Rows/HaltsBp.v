(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
From OssFuzzTheorems.Proofs.spirv_tools.spvtools_binary_parser_fuzzer.lib Require BvWfKernel.

From Stdlib Require Import ZArith NArith List.
From LinuxProcessSemantics.LinuxProcessSem Require Import MemImageType Run.
From LinuxProcessSemantics.EquivalenceDefinition Require Import Equivalence HaltsAllowed.
From OssFuzzTheorems.Proofs.spirv_tools.spvtools_binary_parser_fuzzer.lib.Rows Require Export HaltsBpS1.
From OssFuzzTheorems.Proofs.spirv_tools.spvtools_binary_parser_fuzzer.lib.Rows Require Import HaltsBpDrv.
From OssFuzzTheorems.Proofs.spirv_tools.spvtools_binary_parser_fuzzer.lib.Final Require FinalS1 FinalU1.
Require OssFuzzTheorems.spirv_tools.spvtools_binary_parser_fuzzer.images.Plain.
Require OssFuzzTheorems.spirv_tools.spvtools_binary_parser_fuzzer.images.Ubsan.
From OssFuzzTheorems.Proofs.spirv_tools.spvtools_binary_parser_fuzzer.lib Require KReplay.
Ltac2 kr_t_HaltsBp () := "C5ARocqVerifyHarness?AgentSubmission4Rows:HaltsBpDrvBhalts_bp_ubsan_drvC5ARocqVerifyHarness?AgentSubmission5Final7FinalU1Elib_contract_U1_final".
#[global] Unset Lia Cache. #[global] Unset Nia Cache. #[global] Unset Nra Cache.

Theorem halts_bp_ubsan :
  halts_allowed_T_scfg_budgets Run.forced_only_cfg ShippedBudgets.lim_source CODES02
    (mkImage OssFuzzTheorems.spirv_tools.spvtools_binary_parser_fuzzer.images.Ubsan.M.loaded_segments OssFuzzTheorems.spirv_tools.spvtools_binary_parser_fuzzer.images.Ubsan.M.init_pc OssFuzzTheorems.spirv_tools.spvtools_binary_parser_fuzzer.images.Ubsan.M.phdrs).
Proof.
ltac2:(KReplay.run1 (kr_t_HaltsBp ()) [] "p;1g0000j10Tg0017#0o"). Qed.
