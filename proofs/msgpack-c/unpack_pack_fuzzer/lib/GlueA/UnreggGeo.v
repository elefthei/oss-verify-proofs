(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From Stdlib Require Import PrimInt63 Uint63.
From Stdlib Require Import Permutation.
From stdpp Require Import gmap.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Specs Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib Require Import PropExec MState Cells Frame ITree Nodes.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib Require ALib.Mem ALib.Step.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALibA Require Import AcctCore ExecF ITreeA NodesA.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALibA Require Shadow.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Spec Require Import STree AsanCtrl AsanEmbed.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.AsanW Require Import AImg AProto ABase AMalloc_iface.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.AsanW Require Import AMalloc_iface2.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Common Require Import RunDraw ShapeAlg.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX Require Import W64 Val IMap Instr State Step Plan PlanSound.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX Require Import Mem.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Heap Require Import Op.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Ctr Require Import Lib DefsA.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Bridge Require Import Ledger Op Adeq.
Import ListNotations.
Import W64 Val OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.Mem.Mem FI St Step Plan PlanS CtrLib HeapOp.
Open Scope Z_scope.
Unset Lia Cache.

From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Bridge Require Import Actr.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX Require Import W64Proofs ValProofs MemProofs StepSoundBase.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Br Require Import CtrFX.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Br Require HeapCtr HeapCtrB.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Bridge Require CallA GlueA CtrPre CtrFrame CtrNoDelta.
Unset Nia Cache. Unset Nra Cache.
Import ValP MemP CtrFX ActrA.
Module AP := OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.PropExec.
Module AM := OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Mem.
Module AS := OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Step.

Section Geo.
Context {rc : runConstT}.
Variable AI : AMallocIface2.
Variable ACCT : word -> alayout -> footprint -> astate -> list ablock -> Model -> Prop.
Variable UNIV : list (list Z).

Hypothesis AI_fake : AI_fake_law AI.
Lemma user_out : forall aw LB (m : amem) mo L RNG sta LBa a,
  aw_real AI ACCT UNIV aw LB m mo L RNG sta LBa -> in_user LB a ->
  (AIMG_HI <= a < KLS) \/ (0x10007fff8000 <= a < ATOP) \/ (0x80079e70 <= a < 0x10007fff8000).
Proof.
  intros aw LB m mo L RNG sta LBa a AR IU.
  destruct (Op.aw_real_user_band AI ACCT UNIV AI_fake aw LB m mo L RNG sta LBa a AR IU) as [G|[G|G]]; [left; exact G | right; left; exact G | right; right; lia].
Qed.
End Geo.

From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.BothW Require Import BImg.
Module TwinB.
Import stdpp.gmap.
Import LinuxProcessSemantics.LinuxProcessSem.BvBase LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics LinuxProcessSemantics.LinuxProcessSem.MemImageType LinuxProcessSemantics.LinuxProcessSem.State LinuxProcessSemantics.LinuxProcessSem.Specs LinuxProcessSemantics.LinuxProcessSem.Run.
Import LinuxProcessSemantics.Riscv.Prelude LinuxProcessSemantics.Riscv.Instr LinuxProcessSemantics.Riscv.Decode LinuxProcessSemantics.Riscv.DecodeC LinuxProcessSemantics.Riscv.Sem LinuxProcessSemantics.Riscv.Fpu.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.PropExec OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.MState OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Cells OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Frame OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.ITree OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Nodes.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALibA.AcctCore OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALibA.ExecF OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALibA.ITreeA OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALibA.NodesA.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Spec.STree OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Spec.AsanCtrl OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Spec.AsanEmbed.
Import AProto.TwinB ABase.TwinB AMalloc_iface.TwinB.
Import AMalloc_iface2.TwinB.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Common.RunDraw OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Common.ShapeAlg.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.W64 OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.Val OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.IMap OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.Instr OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.State OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.Step OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.Plan OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.PlanSound.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.Mem.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Heap.Op.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Ctr.Lib OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Ctr.DefsA.
Import Ledger.TwinB Op.TwinB Adeq.TwinB.

Import ListNotations.
Import W64 Val OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.Mem.Mem FI St Step Plan PlanS CtrLib HeapOp.
Open Scope Z_scope.
Unset Lia Cache.

Import Actr.TwinB.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.W64Proofs OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.ValProofs OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.MemProofs OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.StepSoundBase.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Br.CtrFX.

Unset Nia Cache. Unset Nra Cache.
Import ValP MemP CtrFX ActrA.
Module AP := OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.PropExec.
Module AM := OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Mem.
Module AS := OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Step.

Section Geo.
Context {rc : runConstT}.
Variable AI : AMallocIface2.
Variable ACCT : word -> alayout -> footprint -> astate -> list ablock -> Model -> Prop.
Variable UNIV : list (list Z).

Hypothesis AI_fake : AI_fake_law AI.
Lemma user_out : forall aw LB (m : amem) mo L RNG sta LBa a,
  aw_real AI ACCT UNIV aw LB m mo L RNG sta LBa -> in_user LB a ->
  (AIMG_HI <= a < KLS) \/ (0x10007fff8000 <= a < ATOP) \/ (0x8007a2a8 <= a < 0x10007fff8000).
Proof.
  intros aw LB m mo L RNG sta LBa a AR IU.
  destruct (Op.TwinB.aw_real_user_band AI ACCT UNIV AI_fake aw LB m mo L RNG sta LBa a AR IU) as [G|[G|G]]; [left; exact G | right; left; exact G | right; right; lia].
Qed.
End Geo.
End TwinB.
