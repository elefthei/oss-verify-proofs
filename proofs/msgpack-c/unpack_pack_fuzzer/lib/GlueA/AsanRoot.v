(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From Stdlib Require Import PrimInt63 Uint63.
From stdpp Require Import gmap.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Specs Run.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib Require Import PropExec MState Cells Frame.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib Require ALib.Mem ALib.Step.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALibA Require Import AcctCore ExecF.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Spec Require Import STree AsanCtrl AsanEmbed.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.AsanW Require Import AImg AProto ABase AMalloc_iface AMalloc_iface2.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Common Require Import RunDraw.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX Require Import W64 W64Proofs Val ValProofs IMap Instr State Step Plan.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Heap Require Import Op.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Bridge Require Import Ledger Op.
Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Import W64 Val St HeapOp.
Open Scope Z_scope.
Unset Lia Cache.
Arguments Uint63.to_Z : simpl never.
Arguments Z_to_bv : simpl never.

Section Root.
Context {rc : runConstT}.
Variable AI : AMallocIface2.
Variable ACCT : word -> alayout -> footprint -> astate -> list ablock -> Model -> Prop.
Variable UNIV : list (list Z).
Variable AI_fake : AI_fake_law AI.
Variable Cw : client_world.

Definition ROOT_HEAP_ARGS (CRED : int) : list sv :=
  [VL wzero; VL (wlit CRED); VL (wlit 3%uint63);
   VP 1%uint63 (Z2w (-8384512)); VL (wlit 140737488355328%uint63); VL wzero;
   VL (wlit 140737488356352%uint63); VL wzero; VL wzero;
   VL (wlit 211106232532992%uint63); VL wzero; VL wzero].

Variables (E : env) (CRED : int) (L : alayout) (RNG : footprint) (sta : astate) (m : amem) (mo : Model).

Hypothesis USP : bv_unsigned (ev E 1%uint63) = ATOP + 8388608.

Hypothesis AH : AHEAP AI L RNG sta [] m.

Hypothesis AC : ACCT (den E (VL (wlit CRED))) L RNG sta [] mo.
Hypothesis HU : incl UNIV (al_U L).

Hypothesis CW0 : forall ws, Forall (fun w => w_kind w = K_STACK) ws -> cw_holds Cw 0 [] [] ws m.

Hypothesis APR : aprist sta.

Definition ROOT_WS : list window := [Win (ATOP + 4096) (2 ^ 47) K_STACK; Win (ZC_BASE + 1024) 0 K_STACK; prist_win].
Definition ROOT_W : wit := mkWit L RNG sta [] [] [] m 1024.

Lemma root_decode : decode (map (den E) (ROOT_HEAP_ARGS CRED)) = Some (0, den E (VL (wlit CRED)), ROOT_WS, []).
Proof.
  pose proof atop_range as ATR.
  assert (D1 : bv_unsigned (den E (VP 1%uint63 (Z2w (-8384512)))) = ATOP + 4096).
  { rewrite ValP.den_VP. rewrite USP.
    assert (S : w2Zs (Z2w (-8384512)) = -8384512) by (vm_compute; reflexivity). rewrite S.
    rewrite Z.mod_small by (unfold two64; lia). lia. }
  unfold ROOT_HEAP_ARGS, decode. cbn [map].
  assert (N2 : Z.to_nat (bv_unsigned (den E (VL (wlit 3%uint63)))) = 3%nat) by (vm_compute; reflexivity).
  rewrite N2. cbn [decode_windows]. rewrite D1.
  assert (L1 : bv_unsigned (den E (VL (wlit 140737488355328%uint63))) = 2 ^ 47) by (vm_compute; reflexivity).
  assert (L0 : bv_unsigned (den E (VL wzero)) = 0) by (vm_compute; reflexivity).
  assert (LZ : bv_unsigned (den E (VL (wlit 140737488356352%uint63))) = ZC_BASE + 1024) by (vm_compute; reflexivity).
  assert (LP : bv_unsigned (den E (VL (wlit 211106232532992%uint63))) = PRIST_BASE) by (vm_compute; reflexivity).
  rewrite L1, L0, LZ, LP. reflexivity.
Qed.

Theorem root_heap_holds : heap_holdsX AI ACCT UNIV Cw (map (den E) (ROOT_HEAP_ARGS CRED)) m mo.
Proof.
  pose proof atop_range as ATR.
  exists 0, (den E (VL (wlit CRED))), ROOT_WS, [], [], ROOT_W.
  split; [exact root_decode|].
  split.
  {
    unfold aw_holds_w, ROOT_W. cbn [w_L w_RNG w_st w_LBa w_T w_FA w_ms w_zc].
    split; [exact AH|].
    split; [intros b []|]. split; [constructor|].
    split; [intros b []|]. split; [constructor|].
    split. { intros v. split; [intros []|]. intros [(b & [[] _] & _)|[(b & [] & _)|(b & [[[] _] _] & _)]]. }
    split; [intros a _ _; reflexivity|].
    split; [intros a H; unfold in_ivs in H; cbn [map] in H; apply Exists_nil in H; destruct H|].
    split; [lia|]. split; [cbn [length]; unfold ZTOTAL; lia|].
    split; [exact AC|]. split; [exact HU|].
    split; [intros b []|].
    split; [intros b [[[] _] _]|].
    intros b [[] _]. }
  split.
  {
    unfold ROOT_WS, prist_win, PRIST_BASE. constructor; [| constructor; [| constructor; [| constructor]]]; unfold window_wf, ZC_BASE, K_STACK; cbn [w_lo w_len w_kind]; unfold two64;
      (split; [lia|]; split; [lia|]; split; [lia|]; left; split; [reflexivity| lia]). }
  split.
  { apply CW0. unfold ROOT_WS, prist_win. constructor; [reflexivity| constructor; [reflexivity| constructor; [reflexivity| constructor]]]. }

  unfold ties, ROOT_W, ROOT_WS, prist_win, PRIST_BASE. cbn [w_T w_zc w_st].
  split; [intros b []|].
  split. { intros w [<-|[<-|[<-|[]]]] K; cbv in K; discriminate K. }
  split; [intros b [[[] _] _]|].
  split. { intros w [<-|[<-|[<-|[]]]] K; cbv in K; discriminate K. }
  split. { intros w [<-|[<-|[<-|[]]]] K; cbv in K; discriminate K. }
  split. { intros w [<-|[<-|[<-|[]]]] K Z0 B; cbn [w_len w_lo] in *; [lia| reflexivity| unfold ZC_BAND in B; lia]. }
  split; [right; left; reflexivity|].
  split. { intros w [<-|[<-|[<-|[]]]] K B; cbn [w_lo] in *; [reflexivity| unfold ZC_BASE in B; lia| unfold ZC_BASE in B; lia]. }
  split; [intros b [[] _]|].
  split; [| intros _; exact APR].
  intros w w' [<-|[<-|[<-|[]]]] Hw' K; cbv in K; try lia; try discriminate.
Qed.
End Root.

From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.BothW Require Import BImg.
Module TwinB.
Import stdpp.gmap.
Import LinuxProcessSemantics.LinuxProcessSem.BvBase LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics LinuxProcessSemantics.LinuxProcessSem.MemImageType LinuxProcessSemantics.LinuxProcessSem.State LinuxProcessSemantics.LinuxProcessSem.Specs LinuxProcessSemantics.LinuxProcessSem.Run.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.PropExec OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.MState OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Cells OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Frame.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALibA.AcctCore OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALibA.ExecF.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Spec.STree OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Spec.AsanCtrl OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Spec.AsanEmbed.
Import AProto.TwinB ABase.TwinB AMalloc_iface.TwinB AMalloc_iface2.TwinB.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Common.RunDraw.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.W64 OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.W64Proofs OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.Val OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.ValProofs OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.IMap OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.Instr OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.State OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.Step OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.Plan.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Heap.Op.
Import Ledger.TwinB Op.TwinB.

Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Import W64 Val St HeapOp.
Open Scope Z_scope.
Unset Lia Cache.
Arguments Uint63.to_Z : simpl never.
Arguments Z_to_bv : simpl never.

Section Root.
Context {rc : runConstT}.
Variable AI : AMallocIface2.
Variable ACCT : word -> alayout -> footprint -> astate -> list ablock -> Model -> Prop.
Variable UNIV : list (list Z).
Variable AI_fake : AI_fake_law AI.
Variable Cw : client_world.

Definition ROOT_HEAP_ARGS (CRED : int) : list sv :=
  [VL wzero; VL (wlit CRED); VL (wlit 3%uint63);
   VP 1%uint63 (Z2w (-8384512)); VL (wlit 140737488355328%uint63); VL wzero;
   VL (wlit 140737488356352%uint63); VL wzero; VL wzero;
   VL (wlit 211106232532992%uint63); VL wzero; VL wzero].

Variables (E : env) (CRED : int) (L : alayout) (RNG : footprint) (sta : astate) (m : amem) (mo : Model).

Hypothesis USP : bv_unsigned (ev E 1%uint63) = ATOP + 8388608.

Hypothesis AH : AHEAP AI L RNG sta [] m.

Hypothesis AC : ACCT (den E (VL (wlit CRED))) L RNG sta [] mo.
Hypothesis HU : incl UNIV (al_U L).

Hypothesis CW0 : forall ws, Forall (fun w => w_kind w = K_STACK) ws -> cw_holds Cw 0 [] [] ws m.

Hypothesis APR : aprist sta.

Definition ROOT_WS : list window := [Win (ATOP + 4096) (2 ^ 47) K_STACK; Win (ZC_BASE + 1024) 0 K_STACK; prist_win].
Definition ROOT_W : wit := mkWit L RNG sta [] [] [] m 1024.

Lemma root_decode : decode (map (den E) (ROOT_HEAP_ARGS CRED)) = Some (0, den E (VL (wlit CRED)), ROOT_WS, []).
Proof.
  pose proof atop_range as ATR.
  assert (D1 : bv_unsigned (den E (VP 1%uint63 (Z2w (-8384512)))) = ATOP + 4096).
  { rewrite ValP.den_VP. rewrite USP.
    assert (S : w2Zs (Z2w (-8384512)) = -8384512) by (vm_compute; reflexivity). rewrite S.
    rewrite Z.mod_small by (unfold two64; lia). lia. }
  unfold ROOT_HEAP_ARGS, decode. cbn [map].
  assert (N2 : Z.to_nat (bv_unsigned (den E (VL (wlit 3%uint63)))) = 3%nat) by (vm_compute; reflexivity).
  rewrite N2. cbn [decode_windows]. rewrite D1.
  assert (L1 : bv_unsigned (den E (VL (wlit 140737488355328%uint63))) = 2 ^ 47) by (vm_compute; reflexivity).
  assert (L0 : bv_unsigned (den E (VL wzero)) = 0) by (vm_compute; reflexivity).
  assert (LZ : bv_unsigned (den E (VL (wlit 140737488356352%uint63))) = ZC_BASE + 1024) by (vm_compute; reflexivity).
  assert (LP : bv_unsigned (den E (VL (wlit 211106232532992%uint63))) = PRIST_BASE) by (vm_compute; reflexivity).
  rewrite L1, L0, LZ, LP. reflexivity.
Qed.

Theorem root_heap_holds : heap_holdsX AI ACCT UNIV Cw (map (den E) (ROOT_HEAP_ARGS CRED)) m mo.
Proof.
  pose proof atop_range as ATR.
  exists 0, (den E (VL (wlit CRED))), ROOT_WS, [], [], ROOT_W.
  split; [exact root_decode|].
  split.
  {
    unfold aw_holds_w, ROOT_W. cbn [w_L w_RNG w_st w_LBa w_T w_FA w_ms w_zc].
    split; [exact AH|].
    split; [intros b []|]. split; [constructor|].
    split; [intros b []|]. split; [constructor|].
    split. { intros v. split; [intros []|]. intros [(b & [[] _] & _)|[(b & [] & _)|(b & [[[] _] _] & _)]]. }
    split; [intros a _ _; reflexivity|].
    split; [intros a H; unfold in_ivs in H; cbn [map] in H; apply Exists_nil in H; destruct H|].
    split; [lia|]. split; [cbn [length]; unfold ZTOTAL; lia|].
    split; [exact AC|]. split; [exact HU|].
    split; [intros b []|].
    split; [intros b [[[] _] _]|].
    intros b [[] _]. }
  split.
  {
    unfold ROOT_WS, prist_win, PRIST_BASE. constructor; [| constructor; [| constructor; [| constructor]]]; unfold window_wf, ZC_BASE, K_STACK; cbn [w_lo w_len w_kind]; unfold two64;
      (split; [lia|]; split; [lia|]; split; [lia|]; left; split; [reflexivity| lia]). }
  split.
  { apply CW0. unfold ROOT_WS, prist_win. constructor; [reflexivity| constructor; [reflexivity| constructor; [reflexivity| constructor]]]. }

  unfold ties, ROOT_W, ROOT_WS, prist_win, PRIST_BASE. cbn [w_T w_zc w_st].
  split; [intros b []|].
  split. { intros w [<-|[<-|[<-|[]]]] K; cbv in K; discriminate K. }
  split; [intros b [[[] _] _]|].
  split. { intros w [<-|[<-|[<-|[]]]] K; cbv in K; discriminate K. }
  split. { intros w [<-|[<-|[<-|[]]]] K; cbv in K; discriminate K. }
  split. { intros w [<-|[<-|[<-|[]]]] K Z0 B; cbn [w_len w_lo] in *; [lia| reflexivity| unfold ZC_BAND in B; lia]. }
  split; [right; left; reflexivity|].
  split. { intros w [<-|[<-|[<-|[]]]] K B; cbn [w_lo] in *; [reflexivity| unfold ZC_BASE in B; lia| unfold ZC_BASE in B; lia]. }
  split; [intros b [[] _]|].
  split; [| intros _; exact APR].
  intros w w' [<-|[<-|[<-|[]]]] Hw' K; cbv in K; try lia; try discriminate.
Qed.
End Root.
End TwinB.
