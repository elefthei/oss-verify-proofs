(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From stdpp.bitvector Require Import definitions.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0089. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0092. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0179. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0080. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0018. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0024. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0290. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0253. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0260. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PnAStaticsTop. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0077. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0057. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0225. From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PnAHarness. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0024. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0038.StoreOk OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.HeapIface OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0089.HeapIfaceA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0089.IcptIfaceA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.LibIface OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0092.LibIfaceAB OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0084.L5Defs OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.L5Core OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0179.L5DefsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0089.HeapIfaceAMx OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0080.HeapIfaceAMxI OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0089.HeapIfaceAMr OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0018.PmLayout OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0024.PmLayoutA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0024.PnLayoutA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.PmStatics OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0092.PmStaticsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0090.PmSpecs OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PmSpecsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnSpecsAa OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0080.PnSpecsAmc OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0018.PnLayoutQ OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0024.PnLayoutQA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0092.PnQStaticsA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0213.PnRunAa OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0179.PnAImgGap OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0080.PnTopAL OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0290.NTopAsmA OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0253.PnATsTsw OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0260.PnATsVPot OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0290.PnAHarnessStmts OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PnAStaticsTop OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0077.PnAExitCells OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0057.Na0ExitCells OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0225.VaSpec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PnAHarness.
Import ListNotations. Local Ltac Zify.zify_convert_to_euclidean_division_equations_flag ::= constr:(false).
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Module PQALO.
Abbreviation RSEGS := Asan.M.loaded_segments.
Section SCFG_1.
Context {SCFG_P : ScfgP}.

(* [comment removed for export] *)
Definition lib_ok_stmtF (L : asan_layout) (C : asan_statics_cells) (IL : icpt_layout) (LR : HAR.layoutR) (Lay : lib_layoutA) (LSt : lib_statics) : Prop :=
  forall (ar : asan_run) (HIk : list (list Z) -> asan_iface), NTASMA.fam_ok L C IL LR ar HIk ->
    lla_L Lay = L /\ lib_iface_okA Lay ar SCFG (HAJ.strict_of (HIk [])) LSt.

Section LibOk.
Variables (L : asan_layout) (C : asan_statics_cells) (IL : icpt_layout) (LR : HAR.layoutR).
Variable RES : credit.
Hypothesis LY : PMA.layout L C.
Hypothesis ILY : as0_icpt_layout IL.
Hypothesis MCC : PMAMC.mcmp_cells C.
Hypothesis SNPC : VA.snp_cells C.      (* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
Hypothesis RESGE : PMSP.credit_le (PQATSPV.T12VMAX L PQATSTW.TSWMAX NTASMA.TSPVMAX) RES.
Let TSP_LE : forall D RC, PMSP.credit_le PMSP.cr0 (NTASMA.tsp L LR D RC) /\ PMSP.credit_le (NTASMA.tsp L LR D RC) RES := NTASMA.TSP_LE L C LR LY RES RESGE.
(* [comment removed for export] *)
Let HARNESS : PQHAS.harness_call_stmt RES := PQHA.harness_call_ok RES (proj1 (PQHA.res_nonneg (NTASMA.tsp L LR) RES TSP_LE)) (proj2 (PQHA.res_nonneg (NTASMA.tsp L LR) RES TSP_LE)).
(* [comment removed for export] *)
Hypothesis OPENA : forall (ar : asan_run) (HIk : list (list Z) -> asan_iface), NTASMA.fam_ok L C IL LR ar HIk -> NTASMA.open_A L C IL LR ar HIk RES.

Theorem lib_okF : lib_ok_stmtF L C IL LR (PQHAS.LayA RES L) (PQSTA.TopLSA RSEGS PMA.AD PMA.AAD PnLayoutQA.QADDR_A).
Proof.
  intros ar HIk FAM. split; [reflexivity|].
  constructor.
  - exact (HARNESS L C IL ar (HIk []) LY ILY (proj1 (proj2 FAM) []) (NTASMA.deps_std L C IL LR LY ILY MCC SNPC ar HIk RES RESGE FAM (OPENA ar HIk FAM))).
  - exact (PQSTT.statics_initA L ar C RES LY).
  - exact (PQSTT.statics_frameA L ar RES).
Qed.
End LibOk.

(* [comment removed for export] *)
Theorem lsxfa : forall (ar : asan_run) (g : PMST.st) (M : word -> option byte),
  LibIface.ls_ok ((fun _ : asan_run => PQSTA.TopLSA RSEGS PMA.AD PMA.AAD PnLayoutQA.QADDR_A) ar) g M -> exists ax : axv, atexit_cellsA M ax.
Proof. intros ar g M H. exact (PQAXC.lsx_atexit g M H). Qed.
End SCFG_1.
End PQALO.
