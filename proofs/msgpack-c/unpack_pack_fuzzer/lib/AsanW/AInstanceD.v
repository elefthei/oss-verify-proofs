(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From stdpp Require Import gmap.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib Require Import PropExec MState Mem Cells Step Frame Arr ITree Nodes Decode.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALibA Require Import ExecF ITreeA.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Spec Require Import STree AsanCtrl AsanEmbed.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.AsanW Require Import AImg AProto ABase ARep ALayout AHeapP ARepQ ARepQP ASec ASecFrame ADepot_iface F_adepot AFake_iface. From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.AsanW Require AFake_arep. Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.AsanW.AFake_arep.AFake_arep. From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.AsanW Require Import AInstance AHolesD. From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.AsanW Require ASF_kit. Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.AsanW.ASF_kit.ASF_kit. From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.AsanW Require Import AExh ARefillP_x ASecFrameD.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Common Require Import RunDraw.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

Section CANSEC1. Context {rc : runConstT} {ov : annOV} {gb : GcBit}.
Theorem AHI_lawsD : ahole_lawsD AHI.
Proof.
  constructor; cbn [AHI ah_quar ah_sec ah_depot ah_fake].
  - exact AQUAR_frameD.
  - exact asec_hx_get.
  - exact asec_hsD.
  - cbn [ADEPOT adepot_iface]. exact adepot_frameD.
  - exact afake_frameD.
Qed.

Corollary AH_lawsD : ahole_lawsD (AH adepot_iface AQUAR ASEC_of).
Proof. rewrite <- AHI_eq. exact AHI_lawsD. Qed.
End CANSEC1.

From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.BothW Require Import BImg.
Module TwinB.
Import stdpp.gmap.
Import LinuxProcessSemantics.LinuxProcessSem.BvBase LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics LinuxProcessSemantics.LinuxProcessSem.MemImageType LinuxProcessSemantics.LinuxProcessSem.State LinuxProcessSemantics.LinuxProcessSem.Run.
Import LinuxProcessSemantics.Riscv.Prelude.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.PropExec OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.MState OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Mem OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Cells OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Step OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Frame OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Arr OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.ITree OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Nodes OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Decode.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALibA.ExecF OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALibA.ITreeA.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Spec.STree OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Spec.AsanCtrl OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Spec.AsanEmbed.
Import AProto.TwinB ABase.TwinB ARep.TwinB ALayout.TwinB AHeapP.TwinB ARepQ.TwinB ARepQP.TwinB ASec.TwinB ASecFrame.TwinB ADepot_iface.TwinB F_adepot.TwinB AFake_iface.TwinB.

  Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.AsanW.AFake_arep.TwinB.AFake_arep. Import AInstance.TwinB AHolesD.TwinB.  Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.AsanW.ASF_kit.TwinB.ASF_kit. Import AExh.TwinB ARefillP_x.TwinB ASecFrameD.TwinB.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Common.RunDraw.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

Section CANSEC1. Context {rc : runConstT} {ov : annOV} {gb : GcBit}.
Theorem AHI_lawsD : ahole_lawsD AHI.
Proof.
  constructor; cbn [AHI ah_quar ah_sec ah_depot ah_fake].
  - exact AQUAR_frameD.
  - exact asec_hx_get.
  - exact asec_hsD.
  - cbn [ADEPOT adepot_iface]. exact adepot_frameD.
  - exact afake_frameD.
Qed.

Corollary AH_lawsD : ahole_lawsD (AH adepot_iface AQUAR ASEC_of).
Proof. rewrite <- AHI_eq. exact AHI_lawsD. Qed.
End CANSEC1.
End TwinB.
