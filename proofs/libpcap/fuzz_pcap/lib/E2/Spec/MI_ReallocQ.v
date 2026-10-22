(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Bool Lia Permutation.
From stdpp Require Import gmap.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Specs Run.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require Import PropExec MState ITree Nodes Decode.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require Prelim Monad MSafe STree Malloc. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require KInv__Spec. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require AllocBridge__Spec. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require KStep__Spec. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require MI_Fuel__Spec. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require MI_Inv. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require MI_WSlot. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require MI_WSlot2__Spec. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require MI_Pres2__Spec. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require MI_Realloc2__Spec. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require LB_Inv. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require MI_Cnt__Spec. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require LB_Quant. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require LB_XferF__Spec. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require LB_Cnt__Spec. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require ProgFullQ. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require KPin__Spec. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.Prelim OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.Monad OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.MSafe OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.STree OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.Malloc OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.KInv__Spec.MallocRe OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.AllocBridge__Spec.AllocBridge OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.KInv__Spec.KInv OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.AllocBridge__Spec.KLink OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.KStep__Spec.KStep OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.MI_Fuel__Spec.MI_Tree OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.MI_Inv OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.MI_Fuel__Spec.MI_Kit OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.MI_Fuel__Spec.MI_Geom OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.MI_WSlot OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.MI_WSlot2__Spec.MI_WMalloc OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.MI_Pres2__Spec.MI_WFree OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.MI_Realloc2__Spec.MI_Stable OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.KInv__Spec.LB_Tables OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.LB_Inv OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.MI_Cnt__Spec.LB_Sum OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.LB_Quant OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.LB_XferF__Spec.LB_Tree OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.LB_XferF__Spec.LB_StmtA OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.KStep__Spec.LB_Embed OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.LB_Cnt__Spec.LB_Raw OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.MI_Realloc2__Spec.ProgFull OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.ProgFullQ OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.KPin__Spec.LB_WRealloc.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Import ITree.Exc.
Local Open Scope Z_scope.

(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)

Section WithCeil.
Context {CE : CEIL}.
Section RawRealloc.
Context {St : Type} {AS : OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.AllocBridge__Spec.AllocBridge.AllocSt St}.
Hypothesis MQ : malloc_core_fq_stmt.

(* [comment removed for export] *)
#[using="MQ"] Theorem raw_reallocF_Q_pt X P G p n n' s0 mo0 :
  frame_ok G -> 0 <= n' -> size_overflows n' = false -> n' + 3 * PGSZ < LEN_MAX -> bigb n' <= QMAX ->
  FQ ((p, n) :: X) P G s0 mo0 -> ROOMN (map snd ((p, n) :: X)) P n' ->
  mspec (fun s mo => s = s0 /\ mo = mo0) (raw_reallocF peekG (Some p) n')
        (fun r s mo => match r with
                       | Some q => FQ ((q, n') :: X) P G s mo /\ (forall q0 sz, In (q0, sz) X -> conc (ps_m s) q0 = conc (ps_m s0) q0)
                       | None => FQ ((p, n) :: X) P G s mo /\ (forall q0 sz, In (q0, sz) ((p, n) :: X) -> conc (ps_m s) q0 = conc (ps_m s0) q0)
                       end
                       /\ ps_rest s = ps_rest s0 /\ vm_only mo0 mo).
Proof.
  intros HG Hn' Hov Hnx HQ HF HR. unfold raw_reallocF.
  eapply mspec_bind; [apply mspec_get|]. intros s1.
  apply mspec_pointwise. intros ? ? [-> [-> ->]].
  destruct HF as [(L & LS & BL & INV & SI & HAQ & HK & HL & HP) HGs].
  apply (ROOMN_eq ((p, n) :: X) BL P n' HP) in HR.
  assert (Hin : In (p, n) (map blk_ptr BL)) by (eapply Permutation_in; [exact HP| left; reflexivity]).
  apply in_map_iff in Hin as ([[c off] n_] & Ebp & Hk). unfold blk_ptr in Ebp. cbn [bslot boff bsize fst snd] in Ebp.
  assert (En : n_ = n) by congruence. subst n_. assert (Ep : p = aadd c (UNIT * off)) by congruence.
  pose proof (blk_ptr_remove_perm c off n BL Hk (INVL_nodup_slots _ _ _ _ _ INV)) as BP.
  assert (HPX : Permutation X (map blk_ptr (bl_remove c BL))).
  { apply (Permutation_cons_inv (a := (p, n))). etransitivity; [exact HP|]. rewrite Ep.
    change (blk_ptr (c, off, n)) with (aadd c (UNIT * off), n) in BP. exact BP. }
  destruct (realloc_ftq MQ P (PHI P + R63 BL + bigb n') (ps_m s0) L BL LS c off n n' INV SI HAQ Hk Hn' Hov Hnx HR ltac:(unfold PGSZ; lia) HQ) as [FT _].
  rewrite <- Ep in FT.
  eapply mspec_bind.
  { eapply mspec_pre; [apply (membedF_LI (realloc (ps_m s0) (Some p) n') _ (Gsince G s0 mo0) L s0 (Gsince_frame G s0 mo0 HG) FT)|].
    intros s mo [-> ->]. split; [reflexivity|]. split; [exact HK|]. split; [exact HL|]. split; [exact HGs|]. split; [reflexivity| apply vm_only_refl]. }
  intros [st' q]. cbn beta iota.
  apply mspec_pointwise. intros s2 mo2 (L' & Hp & HPost & HK' & HL' & (HG' & Hr' & Hvo') & Hm' & Hx).
  unfold realloc_postQ in HPost. cbn [fst snd] in HPost.
  (* [comment removed for export] *)
  assert (STABX : forall BLr, cstable (ps_m s0) BLr st' -> forall Y, Permutation Y (map blk_ptr BLr) ->
            forall q0 sz, In (q0, sz) Y -> conc st' q0 = conc (ps_m s0) q0).
  { intros BLr CS Y PY q0 sz Hin0. assert (Hin' : In (q0, sz) (map blk_ptr BLr)) by (eapply Permutation_in; [exact PY| exact Hin0]).
    apply in_map_iff in Hin' as ([[c0 off0] n0] & Ebp0 & Hk0). unfold blk_ptr in Ebp0. cbn [bslot boff bsize fst snd] in Ebp0.
    assert (Eq0 : q0 = aadd c0 (UNIT * off0)) by congruence. rewrite Eq0. change c0 with (bslot (c0, off0, n0)). apply CS. exact Hk0. }
  eapply mspec_seq with (R := fun s mo => s = set_m st' s2 /\ mo = mo2).
  { apply mspec_upd'. intros s mo [-> ->]. auto. }
  intros _. apply mspec_ret. intros s mo [-> ->]. unfold FQ. autorewrite with alloc_lens.
  assert (HG2 : G (set_m st' s2) mo2). { apply (HG s2 _ mo2 _); [apply ps_rest_set_m| apply vm_only_refl| exact HG']. }
  split; [| split; [exact Hr'| exact Hvo']].
  destruct q as [q|].
  - destruct HPost as [(c' & off' & LS' & Hq' & Hoff & INV' & Hc' & SI' & HAQ') CS].
    split; [| exact (STABX _ CS X HPX)].
    split; [| exact HG2]. exists L', LS', (((c', off'), n') :: bl_remove c BL). split; [exact INV'|]. split; [exact SI'|]. split; [exact HAQ'|]. split; [exact HK'|]. split; [exact HL'|].
    cbn [map]. unfold blk_ptr at 1. cbn [bslot boff bsize fst snd]. rewrite <- Hq'. apply perm_skip. exact HPX.
  - destruct HPost as [((LS' & INV') & SI' & HAQ') CS].
    split; [| exact (STABX _ CS ((p, n) :: X) HP)].
    split; [| exact HG2]. exists L', LS', BL. split; [exact INV'|]. split; [exact SI'|]. split; [exact HAQ'|]. split; [exact HK'|]. split; [exact HL'| exact HP].
Qed.

#[using="MQ"] Theorem raw_reallocF_Q X P G p n n' :
  frame_ok G -> 0 <= n' -> size_overflows n' = false -> n' + 3 * PGSZ < LEN_MAX -> bigb n' <= QMAX ->
  mspec (fun s mo => FQ ((p, n) :: X) P G s mo /\ ROOMN (map snd ((p, n) :: X)) P n') (raw_reallocF peekG (Some p) n')
        (fun r s mo => match r with Some q => FQ ((q, n') :: X) P G s mo | None => FQ ((p, n) :: X) P G s mo end).
Proof.
  intros HG Hn' Hov Hnx HQ. apply mspec_pointwise. intros s0 mo0 [HF HR].
  eapply mspec_post; [apply (raw_reallocF_Q_pt X P G p n n' s0 mo0 HG Hn' Hov Hnx HQ HF HR)|]. intros a s mo [H _]. destruct a; exact (proj1 H).
Qed.
End RawRealloc.

End WithCeil.
