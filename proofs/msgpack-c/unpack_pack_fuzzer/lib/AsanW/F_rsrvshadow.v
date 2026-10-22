(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Specs Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib Require Import PropExec MState Mem Cells Exec Step Frame Arr Tac ITree Nodes Decode SysStep InitMem.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Common Require Import MM_syscalls.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALibA Require Import SysStepF.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Spec Require Import STree AsanCtrl AsanEmbed.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.AsanW Require Import AImg AProto ABase ABytes AKit AKit2 RT_stubs. From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.AsanW Require F_ammap. Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.AsanW.F_ammap.F_ammap. From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.AsanW Require Import FsKit. From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.AsanW Require F_apoison. Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.AsanW.F_apoison.F_apoison. From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.AsanW Require Import APoisonR_iface.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Common Require Import RunDraw.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Import Exc.
Open Scope Z_scope.
Local Ltac Z.euclidean_division_equations_cleanup ::= idtac.
Local Ltac solve_load ::= solve_load_g.
Local Ltac solve_store ::= solve_store_g.

Section CANSEC1. Context {rc : runConstT}.
Definition ARSRV : Z := 0x78570.
End CANSEC1.
Notation RSRV_STACK := 592 (only parsing).

Section CANSEC2. Context {rc : runConstT}.
Definition got6 (m : amem) : Prop :=
  rw_cells asegs m 0xd1508 [C8 (Z_to_bv 64 0x16b5e8); C8 (Z_to_bv 64 0xd72b8); C8 (Z_to_bv 64 0xd9ab8);
                            C8 (Z_to_bv 64 0xda7a8); C8 (Z_to_bv 64 0xda7b0); C8 (Z_to_bv 64 0xda7a0)].

Definition arelro0 (m : amem) : Prop := forall i, ARELRO_LO <= i < ARELRO_HI -> m (wa i) = None.

Lemma arelro0_munch : forall W m m', arelro0 m -> munch W m m' ->
  Forall (fun iv => ARELRO_HI <= fst iv \/ snd iv <= ARELRO_LO) W -> arelro0 m'.
Proof.
  intros W m m' RR MU HW i Hi. rewrite <- (RR i Hi). pose proof (MU (wa i)) as E.
  rewrite wa_unsigned in E by (unfold ARELRO_LO, ARELRO_HI in Hi; lia). apply E.
  clear -HW Hi. induction W as [|[lo hi] W IH]; cbn; [exact I|]. inversion HW; subst. cbn in *.
  split; [lia| apply IH; assumption].
Qed.

Lemma remu_lit : forall x y, 0 <= x < 2^64 -> 0 < y < 2^64 ->
  mul_div M_REMU (Z_to_bv 64 x) (Z_to_bv 64 y) = Z_to_bv 64 (x mod y).
Proof.
  intros x y Hx Hy. unfold mul_div. rewrite !unsigned_lit by lia.
  replace (y =? 0) with false by (symmetry; apply Z.eqb_neq; lia). cbv iota.
  apply bv_eq. rewrite bv_modu_unsigned, !unsigned_lit; [reflexivity| | lia | lia].
  split; [apply Z.mod_pos_bound; lia|]. eapply Z.lt_trans; [apply Z.mod_pos_bound; lia| lia].
Qed.

Lemma premap_cells_frame : forall m m' W, premap_cells m -> munch W m m' -> wmono asegs m m' ->
  Forall (fun iv => AIMG_HI <= fst iv) W -> premap_cells m'.
Proof.
  intros m m' W (R1 & R2 & R3 & R4 & R5 & R6 & R7) MU WM HW. unfold AIMG_HI in HW.
  assert (D : forall A k, 0 <= k -> A + k <= 0x62f000 -> disjoint_from W A k).
  { clear -HW. intros A k Hk HA. induction W as [|[lo hi] W IH]; cbn; [exact I|]. inversion HW; subst. cbn in *. split; [lia| apply IH; assumption]. }
  unfold premap_cells. repeat lazymatch goal with |- _ /\ _ => split end;
    first [ apply premap_canary_any
          | (eapply rw_cells_transport; [eassumption | exact MU | exact WM | cbn; apply D; lia]) ].
Qed.

Lemma got6_frame : forall m m' W, got6 m -> munch W m m' -> wmono asegs m m' ->
  Forall (fun iv => AIMG_HI <= fst iv) W -> got6 m'.
Proof.
  intros m m' W R MU WM HW. unfold AIMG_HI in HW.
  assert (D : forall A k, 0 <= k -> A + k <= 0x62f000 -> disjoint_from W A k).
  { clear -HW. intros A k Hk HA. induction W as [|[lo hi] W IH]; cbn; [exact I|]. inversion HW; subst. cbn in *. split; [lia| apply IH; assumption]. }
  unfold got6. eapply rw_cells_transport; [eassumption | exact MU | exact WM | cbn; apply D; lia].
Qed.

End CANSEC2.

From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.BothW Require Import BImg.
Module TwinB.
Import LinuxProcessSemantics.LinuxProcessSem.BvBase LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics LinuxProcessSemantics.LinuxProcessSem.MemImageType LinuxProcessSemantics.LinuxProcessSem.State LinuxProcessSemantics.LinuxProcessSem.Specs LinuxProcessSemantics.LinuxProcessSem.Run.
Import LinuxProcessSemantics.Riscv.Prelude LinuxProcessSemantics.Riscv.Instr LinuxProcessSemantics.Riscv.Decode LinuxProcessSemantics.Riscv.DecodeC LinuxProcessSemantics.Riscv.Sem LinuxProcessSemantics.Riscv.Fpu.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.PropExec OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.MState OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Mem OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Cells OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Exec OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Step OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Frame OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Arr OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Tac OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.ITree OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Nodes OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Decode OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.SysStep OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.InitMem.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Common.MM_syscalls.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALibA.SysStepF.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Spec.STree OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Spec.AsanCtrl OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Spec.AsanEmbed.
Import AProto.TwinB ABase.TwinB ABytes.TwinB AKit.TwinB AKit2.TwinB RT_stubs.TwinB.

  Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.AsanW.F_ammap.TwinB.F_ammap. Import FsKit.TwinB.  Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.AsanW.F_apoison.TwinB.F_apoison. Import APoisonR_iface.TwinB.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Common.RunDraw.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Import Exc.
Open Scope Z_scope.
Local Ltac Z.euclidean_division_equations_cleanup ::= idtac.
Local Ltac solve_load ::= solve_load_g.
Local Ltac solve_store ::= solve_store_g.

Section CANSEC1. Context {rc : runConstT}.
Definition ARSRV : Z := 0x78f00.
End CANSEC1.
Notation RSRV_STACK := 592 (only parsing).

Section CANSEC2. Context {rc : runConstT}.
Definition got6 (m : amem) : Prop :=
  rw_cells bsegs m 0xd3620 [C8 (Z_to_bv 64 0x16d7a8); C8 (Z_to_bv 64 0xd9478); C8 (Z_to_bv 64 0xdbc78);
                            C8 (Z_to_bv 64 0xdc968); C8 (Z_to_bv 64 0xdc970); C8 (Z_to_bv 64 0xdc960)].

Definition arelro0 (m : amem) : Prop := forall i, ARELRO_LO <= i < ARELRO_HI -> m (wa i) = None.

Lemma arelro0_munch : forall W m m', arelro0 m -> munch W m m' ->
  Forall (fun iv => ARELRO_HI <= fst iv \/ snd iv <= ARELRO_LO) W -> arelro0 m'.
Proof.
  intros W m m' RR MU HW i Hi. rewrite <- (RR i Hi). pose proof (MU (wa i)) as E.
  rewrite wa_unsigned in E by (unfold ARELRO_LO, ARELRO_HI in Hi; lia). apply E.
  clear -HW Hi. induction W as [|[lo hi] W IH]; cbn; [exact I|]. inversion HW; subst. cbn in *.
  split; [lia| apply IH; assumption].
Qed.

Lemma remu_lit : forall x y, 0 <= x < 2^64 -> 0 < y < 2^64 ->
  mul_div M_REMU (Z_to_bv 64 x) (Z_to_bv 64 y) = Z_to_bv 64 (x mod y).
Proof.
  intros x y Hx Hy. unfold mul_div. rewrite !unsigned_lit by lia.
  replace (y =? 0) with false by (symmetry; apply Z.eqb_neq; lia). cbv iota.
  apply bv_eq. rewrite bv_modu_unsigned, !unsigned_lit; [reflexivity| | lia | lia].
  split; [apply Z.mod_pos_bound; lia|]. eapply Z.lt_trans; [apply Z.mod_pos_bound; lia| lia].
Qed.

Lemma premap_cells_frame : forall m m' W, premap_cells m -> munch W m m' -> wmono bsegs m m' ->
  Forall (fun iv => AIMG_HI <= fst iv) W -> premap_cells m'.
Proof.
  intros m m' W (R1 & R2 & R3 & R4 & R5 & R6 & R7) MU WM HW. unfold AIMG_HI in HW.
  assert (D : forall A k, 0 <= k -> A + k <= 0x631000 -> disjoint_from W A k).
  { clear -HW. intros A k Hk HA. induction W as [|[lo hi] W IH]; cbn; [exact I|]. inversion HW; subst. cbn in *. split; [lia| apply IH; assumption]. }
  unfold premap_cells. repeat lazymatch goal with |- _ /\ _ => split end;
    first [ apply premap_canary_any
          | (eapply rw_cells_transport; [eassumption | exact MU | exact WM | cbn; apply D; lia]) ].
Qed.

Lemma got6_frame : forall m m' W, got6 m -> munch W m m' -> wmono bsegs m m' ->
  Forall (fun iv => AIMG_HI <= fst iv) W -> got6 m'.
Proof.
  intros m m' W R MU WM HW. unfold AIMG_HI in HW.
  assert (D : forall A k, 0 <= k -> A + k <= 0x631000 -> disjoint_from W A k).
  { clear -HW. intros A k Hk HA. induction W as [|[lo hi] W IH]; cbn; [exact I|]. inversion HW; subst. cbn in *. split; [lia| apply IH; assumption]. }
  unfold got6. eapply rw_cells_transport; [eassumption | exact MU | exact WM | cbn; apply D; lia].
Qed.

End CANSEC2.
End TwinB.
