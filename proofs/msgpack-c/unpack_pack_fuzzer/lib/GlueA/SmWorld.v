(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From Stdlib Require Import PrimInt63 Uint63.
From stdpp Require Import gmap.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Specs Run.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib Require Import PropExec MState Cells Frame.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALibA Require Import AcctCore ExecF.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Spec Require Import STree AsanCtrl AsanEmbed.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.AsanW Require Import AImg AProto ABase AMalloc_iface.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Common Require Import RunDraw.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX Require Import W64 W64Proofs.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Heap Require Import Op.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Bridge Require Import Ledger Op.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.GlueA Require Import SmShape.
Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Import HeapOp.
Open Scope Z_scope.
Unset Lia Cache.

Definition fsize (c : Z) : Z := 64 * 2 ^ c.
Lemma cls_cases : forall cls : int, PrimInt63.leb cls 2%uint63 = true -> cls = 0%uint63 \/ cls = 1%uint63 \/ cls = 2%uint63.
Proof.
  intros cls H. apply Uint63.leb_spec in H. change (to_Z 2%uint63) with 2 in H. pose proof (Uint63.to_Z_bounded cls) as B.
  assert (C : to_Z cls = 0 \/ to_Z cls = 1 \/ to_Z cls = 2) by lia.
  destruct C as [C|[C|C]]; [left| right; left| right; right]; apply Uint63.to_Z_inj; rewrite C; reflexivity.
Qed.
Lemma cls_lits : forall cls : int, PrimInt63.leb cls 2%uint63 = true ->
  let n := fsize (to_Z cls) in
  to_Z (sm_size cls) = n /\ to_Z (sm_usz cls) = n - 8 /\ to_Z (sm_tlen cls) = n / 8 /\ (n = 64 \/ n = 128 \/ n = 256).
Proof. intros cls H. destruct (cls_cases cls H) as [->|[->| ->]]; vm_compute; repeat split; auto. Qed.

From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.BothW Require Import BImg.
Module TwinB.
Import stdpp.gmap.
Import LinuxProcessSemantics.LinuxProcessSem.BvBase LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics LinuxProcessSemantics.LinuxProcessSem.MemImageType LinuxProcessSemantics.LinuxProcessSem.State LinuxProcessSemantics.LinuxProcessSem.Specs LinuxProcessSemantics.LinuxProcessSem.Run.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.PropExec OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.MState OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Cells OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Frame.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALibA.AcctCore OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALibA.ExecF.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Spec.STree OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Spec.AsanCtrl OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Spec.AsanEmbed.
Import AProto.TwinB ABase.TwinB AMalloc_iface.TwinB.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Common.RunDraw.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.W64 OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.W64Proofs.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Heap.Op.
Import Ledger.TwinB Op.TwinB.
Import SmShape.TwinB.

Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Import HeapOp.
Open Scope Z_scope.
Unset Lia Cache.

Definition fsize (c : Z) : Z := 64 * 2 ^ c.
Lemma cls_cases : forall cls : int, PrimInt63.leb cls 2%uint63 = true -> cls = 0%uint63 \/ cls = 1%uint63 \/ cls = 2%uint63.
Proof.
  intros cls H. apply Uint63.leb_spec in H. change (to_Z 2%uint63) with 2 in H. pose proof (Uint63.to_Z_bounded cls) as B.
  assert (C : to_Z cls = 0 \/ to_Z cls = 1 \/ to_Z cls = 2) by lia.
  destruct C as [C|[C|C]]; [left| right; left| right; right]; apply Uint63.to_Z_inj; rewrite C; reflexivity.
Qed.
Lemma cls_lits : forall cls : int, PrimInt63.leb cls 2%uint63 = true ->
  let n := fsize (to_Z cls) in
  to_Z (sm_size cls) = n /\ to_Z (sm_usz cls) = n - 8 /\ to_Z (sm_tlen cls) = n / 8 /\ (n = 64 \/ n = 128 \/ n = 256).
Proof. intros cls H. destruct (cls_cases cls H) as [->|[->| ->]]; vm_compute; repeat split; auto. Qed.

End TwinB.
