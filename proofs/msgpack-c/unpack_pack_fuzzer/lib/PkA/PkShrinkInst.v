(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
From Stdlib Require Import ZArith Bool List Lia.
From Stdlib Require Import PrimInt63 Uint63.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase MemImageType RiscvSemantics State.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Common Require Import ShapeAlg.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX Require Import W64 W64Proofs Val IMap Mem Instr State Step Plan Notation ValProofs MemProofs PlanSound.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Heap Require Import Op.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Unp Require Import Model Layout Inv OpsBridge Ops TdOps PkOps ClientX GLib PkMid.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Unp Require Import PkShrink.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Import W64 Val Mem FI St Step Plan ValP MemP PlanS HeapOp UB UO UG TD PK CX.
Open Scope Z_scope.

Module PkShrinkInst.
Section Sound.
Variable segs : list Segment.
Variable IMGX : list iv.
Variable AW : alloc_world segs IMGX.
Variable OPS : optable.
Hypothesis HOPS : heap_ops segs IMGX AW (unp_cw segs (XTP segs)) OPS.
Variable MP : Model -> Prop.
Variable PB : (int -> list byte) -> Prop.

Lemma cw3 : forall ca LB ws m, cw_holds (unp_cw segs (XTP segs)) 3 ca LB ws m -> PK.cw_pk_holds segs ca LB ws m.
Proof. intros ca LB ws m H. exact H. Qed.

Theorem pkshrink_sound : forall pc, contract_sound segs OPS MP PB (PkShrink.PkShrink.pkshrink_contract segs pc).
Proof. exact (PkShrink.PkShrink.pkshrink_sound segs IMGX AW (unp_cw segs (XTP segs)) OPS HOPS cw3 MP PB). Qed.

End Sound.
End PkShrinkInst.

Module TwinB.
Import LinuxProcessSemantics.Riscv.Prelude LinuxProcessSemantics.Riscv.Instr.
Import LinuxProcessSemantics.LinuxProcessSem.BvBase LinuxProcessSemantics.LinuxProcessSem.MemImageType LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics LinuxProcessSemantics.LinuxProcessSem.State.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Common.ShapeAlg.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.W64 OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.W64Proofs OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.Val OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.IMap OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.Mem OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.Instr OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.State OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.Step OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.Plan OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.Notation OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.ValProofs OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.MemProofs OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.PlanSound.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Heap.Op.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Unp.Model OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Unp.Layout OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Unp.Inv OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Unp.OpsBridge OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Unp.Ops OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Unp.TdOps OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Unp.PkOps OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Unp.ClientX OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Unp.GLib OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Unp.PkMid.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Unp.PkShrink.

Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Import W64 Val Mem FI St Step Plan ValP MemP PlanS HeapOp UB UO UG TD PK CX.
Open Scope Z_scope.

Module PkShrinkInst.
Section Sound.
Variable segs : list Segment.
Variable IMGX : list iv.
Variable AW : alloc_world segs IMGX.
Variable OPS : optable.
Hypothesis HOPS : heap_ops segs IMGX AW (unp_cw segs (XTP segs)) OPS.
Variable MP : Model -> Prop.
Variable PB : (int -> list byte) -> Prop.

Lemma cw3 : forall ca LB ws m, cw_holds (unp_cw segs (XTP segs)) 3 ca LB ws m -> PK.cw_pk_holds segs ca LB ws m.
Proof. intros ca LB ws m H. exact H. Qed.

Theorem pkshrink_sound : forall pc, contract_sound segs OPS MP PB (PkShrink.PkShrink.pkshrink_contract segs pc).
Proof. exact (PkShrink.PkShrink.pkshrink_sound segs IMGX AW (unp_cw segs (XTP segs)) OPS HOPS cw3 MP PB). Qed.

End Sound.
End PkShrinkInst.
End TwinB.
