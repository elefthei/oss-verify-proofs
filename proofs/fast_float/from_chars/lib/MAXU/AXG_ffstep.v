(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.fast_float.from_chars.images Require Import Ubsan.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require Import PropExec CatExec CatSim AxSymExec3 AxSymExec3Sound AxSymRun3.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.ZC Require MallocModel MallocInv MallocLemmasBase.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.ZC Require MallocWfMeta.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.ZC Require MallocWfRepr MallocWfMain.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.ZC.MallocModel OssFuzzTheorems.Proofs.fast_float.from_chars.lib.ZC.MallocInv OssFuzzTheorems.Proofs.fast_float.from_chars.lib.ZC.MallocLemmasBase OssFuzzTheorems.Proofs.fast_float.from_chars.lib.ZC.MallocWfMeta.MallocWfInv OssFuzzTheorems.Proofs.fast_float.from_chars.lib.ZC.MallocWfRepr OssFuzzTheorems.Proofs.fast_float.from_chars.lib.ZC.MallocWfMain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.MAX Require Import AxMng MngRepr MngHeap.
Import ListNotations.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Local Open Scope Z_scope.

Abbreviation SEGS := Ubsan.M.loaded_segments.

(* [comment removed for export] *)
Definition Heap0 (L : layout) (s : astate) (m : word -> option byte) : Prop :=
  WF s /\ repr L s (bview SEGS m) /\ markers_hold L s (bview SEGS m).

