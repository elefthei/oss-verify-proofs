(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLin FxCore FxSound FxStep.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLoop.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxImg FxSubst FxLoop FxPlan FxFrame FxFacts FxEcall FxEnt FxCall.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLin OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxCore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSound OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxStep OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop.FxExplore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSubst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFrame OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFacts OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxEcall OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxEnt OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxCall.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxBacking FxChDen FxChNull FxChain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxWvC FxChEntM FxChSubst FxChMain FxChFam.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxBacking OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChDen OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChNull OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChain.FxChSys OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxWvC OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChEntM OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChSubst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChMain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB Require AcAst AcFam AcSubst.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB Require AcFam2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB Require AcFam2 AcFam3.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcAst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcFam OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcSubst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcFam2.AcExt OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcFam2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB.AcFam3.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require Import FxMchr AsanPNodes AsanBNodes AsanTailCh AsanBodyCh AsanBodyCh2.
Import ListNotations.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Section BodyCh2w.
Context {N : Type}.
Notation MC := (@mchain N).
Variable A1n : anode -> MC -> MC.
Variable A2n : anode2 -> MC -> MC.
Variable A3n : anode3 -> MC -> MC.
Variable BNn : bnode -> MC -> MC.
Variable VIA : positive.
Variable VCT : positive.
Variable OFF : nat.
(* [comment removed for export] *)
Definition DIAW (pc : Z) (k : MC) : MC := MJoin (MSegK 40 (planFR 3) (KCons pc 0 MEnd KNil)) pc k.
(* [comment removed for export] *)
Definition KTAILF_W (jb ib : nat) (k : MC) : MC :=
  BNn (BSplitW32 ib 6128) (BNn (BPlaceW jb)
    (SEGFR 0x82908 (A1n NUnw) (SEGFR 0x81f7c (A1n NPut) (DIAW 0xd4904 (KMSFR A1n (SEGFR 0x43e20 (KENQ A2n A3n BNn VCT) (SEGFR2 0x8fcb8 k))))))).
Definition TAILF_EW (jb ib : nat) (k : MC) : MC := A3n NCacheAdd (KFREEN A1n BNn VIA (KTAILF_W jb ib k)).
Definition TAILF_PW (jb ib : nat) (k : MC) : MC := A3n NCacheAdd (KFREEO_PJ A1n A2n A3n BNn VIA VCT OFF (KTAILF_W jb ib k)).
Definition TAILF_LW (jl : nat) (qu mp : positive) (jb ib : nat) (k : MC) : MC := A3n NCacheAdd (KFREEO_LJ A1n A2n A3n BNn VIA VCT OFF jl qu mp (KTAILF_W jb ib k)).
End BodyCh2w.
(* [comment removed for export] *)
