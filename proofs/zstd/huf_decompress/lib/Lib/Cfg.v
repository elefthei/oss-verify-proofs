(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)

From Stdlib Require Import ZArith NArith List Lia Bool Classical_Prop.
From LinuxProcessSemantics.LinuxProcessSem Require Import
  BvBase RiscvSemantics MemImageType Fs State Monad Specs Run.
From LinuxProcessSemantics.LinuxProcessSem.Sys Require Import Uapi Syscall Dispatch SyscallTable.
From LinuxProcessSemantics.LinuxProcessSem.Sys.Mm Require Import Mmap Mprotect Mremap.
From LinuxProcessSemantics.Riscv Require Import Prelude Sem.
Import ListNotations.
Open Scope bv_scope.

Definition ACFG : SpuriousCfg := alloc_only_cfg false.

(* [comment removed for export] *)

Lemma acfg_family_off_in : forall i,
  injected_family_off ACFG i = true -> In (bv_unsigned (in_sysno i)) alloc_mark_sysnos.
Proof.
  intros i H. unfold injected_family_off in H.
  destruct (injected_arm (bv_unsigned (in_sysno i))) as [a|] eqn:E; [|discriminate H].
  destruct (ia_family a) eqn:Ef; cbn in H; try discriminate H.
  exact (alloc_family_dispatched _ a E Ef).
Qed.

Lemma acfg_family_on_notin : forall i,
  ~ In (bv_unsigned (in_sysno i)) alloc_mark_sysnos -> injected_family_off ACFG i = false.
Proof.
  intros i Hn. destruct (injected_family_off ACFG i) eqn:E; [|reflexivity].
  exfalso. apply Hn. apply acfg_family_off_in. exact E.
Qed.

(* [comment removed for export] *)
Lemma acfg_nonspurious : forall i m eff,
  ~ In (bv_unsigned (in_sysno i)) alloc_mark_sysnos ->
  ~ spurious_refusal_cfg ACFG i m eff.
Proof.
  intros i m eff Hn. apply spurious_refusal_family_on. apply acfg_family_on_notin. exact Hn.
Qed.

Definition alloc_no_b (n : Z) : bool := existsb (Z.eqb n) alloc_mark_sysnos.

Lemma alloc_no_b_false : forall n, alloc_no_b n = false -> ~ In n alloc_mark_sysnos.
Proof.
  intros n H Hin. unfold alloc_no_b in H.
  assert (existsb (Z.eqb n) alloc_mark_sysnos = true) as Ht.
  { apply existsb_exists. exists n. split; [exact Hin | apply Z.eqb_refl]. }
  congruence.
Qed.

Lemma acfg_nonspurious_no : forall segs ms x8 n m eff,
  bv_unsigned x8 = n -> alloc_no_b n = false ->
  ~ spurious_refusal_cfg ACFG (sys_input segs ms x8) m eff.
Proof.
  intros segs ms x8 n m eff Hno Hb. apply acfg_nonspurious.
  change (in_sysno (sys_input segs ms x8)) with x8. rewrite Hno. apply alloc_no_b_false. exact Hb.
Qed.

Lemma acfg_family_off_222 : forall i, bv_unsigned (in_sysno i) = 222%Z -> injected_family_off ACFG i = true.
Proof. intros i E. unfold injected_family_off. rewrite E. reflexivity. Qed.
Lemma acfg_family_off_226 : forall i, bv_unsigned (in_sysno i) = 226%Z -> injected_family_off ACFG i = true.
Proof. intros i E. unfold injected_family_off. rewrite E. reflexivity. Qed.
Lemma acfg_family_off_216 : forall i, bv_unsigned (in_sysno i) = 216%Z -> injected_family_off ACFG i = true.
Proof. intros i E. unfold injected_family_off. rewrite E. reflexivity. Qed.
Lemma acfg_family_off_214 : forall i, bv_unsigned (in_sysno i) = 214%Z -> injected_family_off ACFG i = true.
Proof. intros i E. unfold injected_family_off. rewrite E. reflexivity. Qed.

(* [comment removed for export] *)
Lemma refusal_b_222 : forall i m r, bv_unsigned (in_sysno i) = 222%Z ->
  refusal_b i m r = ret_in_errnos mmap_errnos r.
Proof. intros i m r E. unfold refusal_b. rewrite E. reflexivity. Qed.
Lemma refusal_b_226 : forall i m r, bv_unsigned (in_sysno i) = 226%Z ->
  refusal_b i m r = ret_in_errnos mprotect_errnos r.
Proof. intros i m r E. unfold refusal_b. rewrite E. reflexivity. Qed.
Lemma refusal_b_216 : forall i m r, bv_unsigned (in_sysno i) = 216%Z ->
  refusal_b i m r = ret_in_errnos mremap_errnos r.
Proof. intros i m r E. unfold refusal_b. rewrite E. reflexivity. Qed.
Lemma refusal_b_214 : forall i m r, bv_unsigned (in_sysno i) = 214%Z ->
  refusal_b i m r = brk_refusal_b m (in_arg i 0) r.
Proof. intros i m r E. unfold refusal_b. rewrite E. reflexivity. Qed.

Lemma ret_in_errnos_ENOMEM : forall r,
  ret_in_errnos [ENOMEM] r = bv_eqb r (errno_ret ENOMEM).
Proof. intros r. cbn. rewrite orb_false_r. reflexivity. Qed.

Lemma ret_in_errnos_errno : forall es e, In e es -> ret_in_errnos es (errno_ret e) = true.
Proof.
  intros es e Hin. unfold ret_in_errnos. apply existsb_exists. exists e. split; [exact Hin|].
  apply bv_eqb_eq. reflexivity.
Qed.

(* [comment removed for export] *)

(* [comment removed for export] *)
Lemma refusal_spurious_of_grant : forall cfg i m eff eff' m' evs',
  injected_family_off cfg i = true ->
  refusal_b i m (eff_ret eff) = true ->
  syscall_spec i m (Ok eff' m' evs') ->
  refusal_b i m (eff_ret eff') = false ->
  spurious_refusal_cfg cfg i m eff.
Proof.
  intros cfg i m eff eff' m' evs' Hoff Hr Hs' Hnr.
  split; [exact Hoff|]. split; [exact Hr|]. exists eff', m', evs'. split; assumption.
Qed.

(* [comment removed for export] *)
Lemma nonspurious_not_refusal_of_grant : forall cfg i m eff eff' m' evs',
  injected_family_off cfg i = true ->
  ~ spurious_refusal_cfg cfg i m eff ->
  syscall_spec i m (Ok eff' m' evs') ->
  refusal_b i m (eff_ret eff') = false ->
  refusal_b i m (eff_ret eff) = false.
Proof.
  intros cfg i m eff eff' m' evs' Hoff Hns Hs' Hnr.
  destruct (refusal_b i m (eff_ret eff)) eqn:R; [|reflexivity]. exfalso.
  exact (Hns (refusal_spurious_of_grant cfg i m eff eff' m' evs' Hoff R Hs' Hnr)).
Qed.

(* [comment removed for export] *)
Lemma nonspurious_refusal_no_grant : forall cfg i m eff,
  ~ spurious_refusal_cfg cfg i m eff ->
  injected_family_off cfg i = true ->
  refusal_b i m (eff_ret eff) = true ->
  forall eff' m' evs', syscall_spec i m (Ok eff' m' evs') -> refusal_b i m (eff_ret eff') = true.
Proof.
  intros cfg i m eff Hns Hoff Hr eff' m' evs' Hs'.
  destruct (refusal_b i m (eff_ret eff')) eqn:E; [reflexivity|]. exfalso.
  apply Hns. split; [exact Hoff|]. split; [exact Hr|]. exists eff', m', evs'. split; assumption.
Qed.

(* [comment removed for export] *)
Lemma not_spurious_forced : forall cfg i m eff,
  (forall eff' m' evs', syscall_spec i m (Ok eff' m' evs') -> refusal_b i m (eff_ret eff') = true) ->
  ~ spurious_refusal_cfg cfg i m eff.
Proof.
  intros cfg i m eff Hall (_ & _ & eff' & m' & evs' & Hspec & Hnr).
  rewrite (Hall eff' m' evs' Hspec) in Hnr. discriminate Hnr.
Qed.

(* [comment removed for export] *)
Lemma spurious_refusal_transport : forall cfg i1 i2 m eff,
  in_sysno i1 = in_sysno i2 ->
  in_arg i1 0 = in_arg i2 0 ->
  (forall eff' m' evs', syscall_spec i1 m (Ok eff' m' evs') <-> syscall_spec i2 m (Ok eff' m' evs')) ->
  spurious_refusal_cfg cfg i1 m eff <-> spurious_refusal_cfg cfg i2 m eff.
Proof.
  intros cfg i1 i2 m eff Hno Ha0 Hspec.
  assert (Hoff : injected_family_off cfg i1 = injected_family_off cfg i2).
  { unfold injected_family_off. rewrite Hno. reflexivity. }
  assert (Hr : forall r, refusal_b i1 m r = refusal_b i2 m r).
  { intros r. unfold refusal_b. rewrite Hno, Ha0. reflexivity. }
  unfold spurious_refusal_cfg. rewrite Hoff, Hr. split.
  - intros (H1 & H2 & (eff' & m' & evs' & Hs & Hn)). split; [exact H1|]. split; [exact H2|].
    exists eff', m', evs'. split; [apply Hspec; exact Hs| rewrite <- Hr; exact Hn].
  - intros (H1 & H2 & (eff' & m' & evs' & Hs & Hn)). split; [exact H1|]. split; [exact H2|].
    exists eff', m', evs'. split; [apply Hspec; exact Hs| rewrite Hr; exact Hn].
Qed.

(* [comment removed for export] *)
Lemma exists_nonspurious : forall cfg i m eff0 m0 evs0,
  syscall_spec i m (Ok eff0 m0 evs0) ->
  exists eff m' evs, syscall_spec i m (Ok eff m' evs) /\ ~ spurious_refusal_cfg cfg i m eff.
Proof.
  intros cfg i m eff0 m0 evs0 H0.
  destruct (classic (exists eff' m' evs', syscall_spec i m (Ok eff' m' evs') /\ refusal_b i m (eff_ret eff') = false))
    as [(eff' & m' & evs' & Hs & Hnr)|Hno].
  - exists eff', m', evs'. split; [exact Hs|]. apply spurious_refusal_not_refusal. exact Hnr.
  - exists eff0, m0, evs0. split; [exact H0|]. intros (_ & _ & Hex). exact (Hno Hex).
Qed.

(* [comment removed for export] *)

Section Steps.
Variable segs : list Segment.

Lemma sstep_of_cfg : forall cfg c e st, sstep_cfg segs cfg c e st -> sstep segs c e st.
Proof. intros cfg c e st H. exact (sstep_cfg_sub segs cfg c e st H). Qed.

Lemma star_of_cfg : forall cfg c tr c', star_cfg segs cfg c tr c' -> star segs c tr c'.
Proof. intros cfg c tr c' H. exact (star_cfg_sub segs cfg c tr c' H). Qed.

(* [comment removed for export] *)
Definition cfg_transparent (c : config) : Prop :=
  forall e st, sstep segs c e st -> sstep_cfg segs ACFG c e st.

Lemma transparent_instr : forall ms model,
  ms_svc_pending ms = None -> cfg_transparent (mkCfg ms model).
Proof.
  intros ms model Hsvc e st H. inversion H; subst;
    try (match goal with H1 : ms_svc_pending ms = Some _ |- _ => rewrite Hsvc in H1; discriminate H1 end).
  - eapply sstep_cfg_instr; eassumption.
  - eapply sstep_cfg_instr_fault; eassumption.
  - eapply sstep_cfg_instr_unmodeled; eassumption.
Qed.

Lemma transparent_family_on : forall ms model x8,
  ms_svc_pending ms = Some x8 ->
  injected_family_off ACFG (sys_input segs ms x8) = false ->
  cfg_transparent (mkCfg ms model).
Proof.
  intros ms model x8 Hsvc Hoff e st H. inversion H; subst;
    try (match goal with H1 : ms_svc_pending ms = None |- _ => rewrite Hsvc in H1; discriminate H1 end);
    match goal with H1 : ms_svc_pending ms = Some ?y |- _ =>
      rewrite Hsvc in H1; injection H1; intro; subst y end.
  - eapply sstep_cfg_syscall; try eassumption. apply spurious_refusal_family_on. exact Hoff.
  - eapply sstep_cfg_syscall_materialization_fault; try eassumption.
    apply spurious_refusal_family_on. exact Hoff.
  - eapply sstep_cfg_exit; eassumption.
  - eapply sstep_cfg_killed; eassumption.
  - eapply sstep_cfg_syscall_unmodeled; eassumption.
Qed.

Lemma transparent_nonalloc : forall ms model x8,
  ms_svc_pending ms = Some x8 ->
  ~ In (bv_unsigned x8) alloc_mark_sysnos ->
  cfg_transparent (mkCfg ms model).
Proof.
  intros ms model x8 Hsvc Hnin. apply (transparent_family_on ms model x8 Hsvc).
  apply acfg_family_on_notin. exact Hnin.
Qed.

Lemma transparent_nonalloc_no : forall ms model x8 n,
  ms_svc_pending ms = Some x8 -> bv_unsigned x8 = n -> alloc_no_b n = false ->
  cfg_transparent (mkCfg ms model).
Proof.
  intros ms model x8 n Hsvc Hno Hb. apply (transparent_nonalloc ms model x8 Hsvc).
  rewrite Hno. apply alloc_no_b_false. exact Hb.
Qed.

(* [comment removed for export] *)
Lemma sstep_cfg_syscall_nonrefusal : forall cfg ms model x8 eff model' model'' evs,
  m_halted model = None ->
  ms_svc_pending ms = Some x8 ->
  syscall_spec (sys_input segs ms x8) model (Ok eff model' evs) ->
  refusal_b (sys_input segs ms x8) model (eff_ret eff) = false ->
  m_halted model' = None ->
  materialize_model_accesses model' (syscall_effect_accesses eff) = Some model'' ->
  sstep_cfg segs cfg (mkCfg ms model) evs
            (SNext (mkCfg (advance_past_svc (apply_effect ms eff)) model'')).
Proof.
  intros cfg ms model x8 eff model' model'' evs Hh Hsvc Hspec Hnr Hh' Hmat.
  eapply sstep_cfg_syscall; try eassumption.
  apply spurious_refusal_not_refusal. exact Hnr.
Qed.

End Steps.

(* [comment removed for export] *)

Section Star.
Variable segs : list Segment.
Variable cfg : SpuriousCfg.

Lemma star_cfg_one : forall c evs c',
  sstep_cfg segs cfg c evs (SNext c') -> star_cfg segs cfg c evs c'.
Proof.
  intros c evs c' H. rewrite <- (app_nil_r evs). eapply star_cfg_step; [exact H | apply star_cfg_refl].
Qed.

Lemma star_cfg_trans : forall c1 tr1 c2 tr2 c3,
  star_cfg segs cfg c1 tr1 c2 -> star_cfg segs cfg c2 tr2 c3 ->
  star_cfg segs cfg c1 (tr1 ++ tr2) c3.
Proof.
  intros c1 tr1 c2 tr2 c3 H12 H23.
  induction H12 as [c | c evs c' tr c'' Hs Hst IH].
  - exact H23.
  - rewrite <- app_assoc. eapply star_cfg_step; [exact Hs | apply IH; exact H23].
Qed.

Lemma obs_trace_cfg_nil : forall c0, obs_trace_cfg segs cfg c0 [].
Proof. intros c0. exists [], c0. split; [apply star_cfg_refl | exact I]. Qed.

Lemma sstep_cfg_halted_none : forall c e st,
  sstep_cfg segs cfg c e st -> m_halted (cfg_model c) = None.
Proof. intros c e st H; inversion H; subst; cbn; assumption. Qed.

Lemma star_cfg_halted_nil : forall c tr c',
  m_halted (cfg_model c) <> None -> star_cfg segs cfg c tr c' -> tr = [] /\ c' = c.
Proof.
  intros c tr c' Hh Hstar. inversion Hstar as [|c1 evs c2 tr2 c3 Hss Hstar2]; subst.
  - split; reflexivity.
  - exfalso. apply Hh. eapply sstep_cfg_halted_none. exact Hss.
Qed.

Lemma reaches_error_cfg_here : forall c evs,
  sstep_cfg segs cfg c evs SError -> reaches_error_cfg segs cfg c.
Proof. intros c evs H. exists [], c, evs. split; [apply star_cfg_refl | exact H]. Qed.

Lemma reaches_error_cfg_step : forall c evs c',
  sstep_cfg segs cfg c evs (SNext c') ->
  reaches_error_cfg segs cfg c' -> reaches_error_cfg segs cfg c.
Proof.
  intros c evs c' Hs (tr & c2 & evs2 & Hst & He).
  exists (evs ++ tr), c2, evs2. split; [eapply star_cfg_step; eassumption | exact He].
Qed.

End Star.

Section SysInv.
Variable segs : list Segment.
Variable cfg : SpuriousCfg.

Lemma sstep_cfg_sys_inv : forall ms model x8 evs st,
  ms_svc_pending ms = Some x8 ->
  sstep_cfg segs cfg (mkCfg ms model) evs st ->
  let i := sys_input segs ms x8 in
  (exists eff model' evs0,
      syscall_spec i model (Ok eff model' evs0)
      /\ ~ spurious_refusal_cfg cfg i model eff
      /\ m_halted model' = None
      /\ match materialize_model_accesses model' (syscall_effect_accesses eff) with
         | Some model'' => evs = evs0 /\ st = SNext (mkCfg (advance_past_svc (apply_effect ms eff)) model'')
         | None => evs = [] /\ st = SError
         end)
  \/ (exists eff model' evs0 code',
      syscall_spec i model (Ok eff model' evs0)
      /\ m_halted model' = Some code' /\ m_killed model' = None
      /\ evs = evs0 ++ [ExitEv code' (m_fs model')] /\ st = SNext (mkCfg ms model'))
  \/ (exists eff model' evs0 sig,
      syscall_spec i model (Ok eff model' evs0)
      /\ m_killed model' = Some sig
      /\ evs = evs0 ++ [KillEv sig (m_fs model')] /\ st = SNext (mkCfg ms model'))
  \/ (syscall_spec i model Unmodeled /\ evs = [] /\ st = SError).
Proof.
  intros ms model x8 evs st Hsvc Hss. cbv zeta.
  inversion Hss; subst;
    try match goal with H : ms_svc_pending ms = None |- _ => rewrite Hsvc in H; discriminate H end;
    match goal with H : ms_svc_pending ms = Some ?x |- _ => rewrite Hsvc in H; injection H as <- end.
  - left. eexists _, _, _. repeat (split; [eassumption|]).
    match goal with H : materialize_model_accesses _ _ = Some _ |- _ => rewrite H end. split; reflexivity.
  - left. eexists _, _, _. repeat (split; [eassumption|]).
    match goal with H : materialize_model_accesses _ _ = None |- _ => rewrite H end. split; reflexivity.
  - right; left. eexists _, _, _, _. repeat (split; [eassumption|]). split; reflexivity.
  - right; right; left. eexists _, _, _, _. repeat (split; [eassumption|]). split; reflexivity.
  - right; right; right. split; [assumption|]. split; reflexivity.
Qed.

End SysInv.
