(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase MemImageType RiscvSemantics State Run Specs Fs.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr.
From OssFuzzTheorems.fast_float.from_chars.images Require Import AsanUbsan.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require ShapeSet RealizesCfg AsanAcct FxLin FxCore FxSound FxStep.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLoop.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxImg FxSubst FxLoop FxPlan FxFrame FxFacts FxEcall.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.ShapeSet OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.RealizesCfg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.AsanAcct OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLin OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxCore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSound OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxStep OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop.FxExplore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSubst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFrame OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFacts OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxEcall.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxBacking FxChDen FxChNull FxChain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxWvC FxChMain FxChFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChFam.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxBacking OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChDen OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChNull OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChain.FxChSys OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxWvC OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChMain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChFam OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChFam.FxChMap.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanImgScan AsanImg AsanTbl AsanTblM AsanTblMd AsanTblML AsanEntry AsanPlan AsanStart AsanFinC.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanTMain2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanTMain2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanMainSF.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanMainSF AsanMainWF.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanMainP.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanMainP.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanMainP.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanPhases3.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanLit AsanCpSW AsanPhases3 AsanErrT AsanPhT1.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanImgScan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTbl OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTblM OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTblMd OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTblML OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanEntry OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanStart OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanFinC OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTMain2.AsanShort OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTMain2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanMainSF.AsanSpecF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanMainSF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanMainWF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanMainP.AsanMainG1F OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanMainP.AsanPhases OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanMainP OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanPhases3.AsanPhases2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanLit OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanCpSW OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanPhases3 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanErrT OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanPhT1.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require Import AsanPNodes.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB Require Import AcAst AcFam AcSubst AcMALlib.
Import ListNotations.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Definition CONTS0 : list (sst * smodel * fstate * shp * ast) := [PHT1_C; TERR_C].
Definition NB1 : positive := Eval vm_compute in s_next PHT1_S.
Definition CHAIN0 : MCF := MAINP4 (KERR 1) (GC (MCont 0 NB1)).     (* [comment removed for export] *)
Definition S1P2 : sst := S1c2 65536 GHI.
Definition ph0_res : option (list (sst * smodel * fstate * shp * ast)) :=
  mcheck ASEGS LIM TBLM IMGMd PV 65536 GHI false (Some H0) apostF anil aeqb awf acopy_alloc asubst ag_ok alins_a aset_a amod_a [] CONTS0 CHAIN0 S1P2 M1c FSClosed SHG A1c.
Definition ph0_chk : bool := is_some ph0_res.
(* [comment removed for export] *)
