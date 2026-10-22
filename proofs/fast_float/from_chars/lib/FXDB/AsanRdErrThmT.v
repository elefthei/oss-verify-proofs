(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase MemImageType RiscvSemantics State Run Specs Fs.
From LinuxProcessSemantics.LinuxProcessSem.Sys Require Import Uapi Syscall.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr.
From OssFuzzTheorems.fast_float.from_chars.images Require Import AsanUbsan.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require ShapeSet RealizesCfg AsanAcct FxLin FxCore FxSound FxStep.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLoop.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxImg FxSubst FxLoop FxPlan FxFrame FxFacts FxEcall.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.ShapeSet OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.RealizesCfg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.AsanAcct OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLin OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxCore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSound OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxStep OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop.FxExplore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSubst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFrame OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFacts OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxEcall.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxBacking FxChDen FxChNull FxChain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChDir FxWvC FxChMain FxChFam.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxBacking OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChDen OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChNull OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChain.FxChSys OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChDir OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxWvC OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChMain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require Import AsanImgScan AsanImg AsanTbl AsanEntry AsanPlan AsanStart AsanFinC AsanTMain2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB Require Import AcAst AcHA AcFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanTblU.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLoop.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require FxQNode FxMchr FxMNode AsanQSites FxSNodes AsanSNodes.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanQcsNode.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanPNodes FxSFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanSFam3.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanSFam3.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanTblU OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop.FxQChk OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxQNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxMchr OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxMNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanQSites OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxSNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanSNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanQcsNode.AsanRpNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanPNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxSFam OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanSFam3.AsanCpNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanSFam3.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require FxDirConv AsanRdErr.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanRdConvT.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanUsageT.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanUsageThmT.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChLib.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require FxChFamI AsanFamU AsanUsageT AsanUsageThmT.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChWv.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require FxDirConvOwn AsanRdErrT AsanRdErrCertT AsanRdConvT.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxDirConv OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanRdErr OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanRdConvT.AsanRdConv OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanUsageT.AsanUsage OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanUsageThmT.AsanLeafLib OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChLib.FxKeep OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxChFamI OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanFamU OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanUsageT OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanUsageThmT OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChWv.FxDropOwn OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxDirConvOwn OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanRdErrT OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanRdErrCertT OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanRdConvT.
Import ListNotations.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Strategy opaque [TBLR IMGR mcheck].

Section RdT.
Variable cfg : SpuriousCfg.
Hypothesis Hoff : sc_alloc cfg = false.
Hypothesis Hfs : sc_fs cfg = true.
Variables (path0 : path) (fs0 : Fs.Fs) (argv0 : list byte).
Hypothesis Hp1 : path_eqb path0 [] = false.
Hypothesis Hp2 : path_has_slash path0 = false.
Hypothesis Hp4 : (length path0 < path_max)%nat.
Hypothesis Hp5 : Forall (fun b => b <> Z_to_bv 8 0) path0.

#[using="Type"] Lemma SHD_wfT : shp_wf (s_next SRT) SHD = true. Proof. LiaFast.lf_pins LiaFast.u0. vm_compute. reflexivity. Qed.
#[using="Type"] Lemma ART_wf : awfUT (s_next SRT) ART = true. Proof. LiaFast.lf_pins LiaFast.u0. vm_compute. reflexivity. Qed.

(* [comment removed for export] *)
#[using="Hoff Hfs Hp1 Hp2 Hp4 Hp5"] Theorem rd_handoffT : forall model0 mem0 E ms model,
  DEN ASEGS LIM model0 mem0 E TMAIN MMAIN ms model ->
  INV PV path0 [] fs0 true None mem0 E TMAIN MMAIN FSClosed model0 ->
  HA E MMAIN AMAIN mem0 ->
  Forall (fact_ok E) FSRT -> uE E (fst FRZT) <= uE E PV ->
  (forall w, uE E PV <= w < uE E PV + uE E SZR - 16 -> mem0 (Z_to_bv 64 w) <> None) ->
  mem0 (Z_to_bv 64 (uE E PV)) = Some (Z_to_bv 8 46) /\ mem0 (Z_to_bv 64 (uE E PV + 1)) = Some (Z_to_bv 8 0) ->
  realizes_cfg ASEGS cfg (mkCfg ms model) (shp_den path0 fs0 argv0 E SHD).
Proof. LiaFast.lf_pins (fun (Hoff Hfs Hp1 Hp2 Hp4 Hp5 : LiaFast.U) => LiaFast.u0).
  intros model0 mem0 E ms model Hd Hi HAa HF HP0 HM HB.
  pose proof (den_conv_rdT model0 mem0 E ms model Hd HF HP0 HM HB) as Hd1.
  apply (ut_realizesM cfg Hoff Hfs path0 fs0 argv0 Hp1 Hp2 Hp4 Hp5 RDCHT SRT MRT SHD ART [] rd_res_nilT model0 mem0 E ms model).
  - exact Hd1.
  - exact (INV_conv_rd path0 fs0 mem0 E TMAIN SRT MMAIN MRT FSClosed model0 SRT_next Hi).
  - split; [exact ART_wf|]. split.
    + apply (HA_ext E MMAIN MRT AMAIN mem0 mem0); [apply incl_refl | apply incl_refl | intros x Hx; exact Hx | intros x _ _; reflexivity | intros _ x _; reflexivity | exact HAa].
    + apply HA3_nil. reflexivity.
  - exact SHD_wfT.
  - intros S' M' FS' sh' a' model0' mem0' E' ms' model' Hin. destruct Hin.
Qed.
End RdT.
(* [comment removed for export] *)
