(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* The allocation edition's mmap and mprotect checkers, copied here as local definitions ([check_mmap_ed],
   [check_mprotect_ed]), and the two transfer lemmas that make them a derived characterisation of the unedited
   model under [ACFG]: an outcome the unedited checker accepts and that is not a spurious refusal is one the
   edited checker accepts ([check_mmap_ed_fwd], outside the MAP_FIXED read-write destructive refusal the edition
   deletes and a forced refusal admits), and an outcome the edited checker accepts is a non-spurious outcome of
   the unedited one ([check_mmap_ed_bwd]). Nothing here assumes the edited model. *)
From Stdlib Require Import ZArith List Bool Lia.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType Fs State Monad Specs Run.
From LinuxProcessSemantics.LinuxProcessSem.Checks Require Import ExecutableSpecs.
From LinuxProcessSemantics.LinuxProcessSem.Checks.Sys Require Import DispatchCompute.
From LinuxProcessSemantics.LinuxProcessSem.Sys.Mm Require Import Mmap Mprotect.
From OssFuzzTheorems.Proofs.simdjson.fuzz_parser.lib.Lib Require Import Cfg.
Import ListNotations.
Open Scope bv_scope.

Definition w_nilb {A} (l : list A) : bool :=
  match l with [] => true | _ => false end.

Lemma w_nilb_true {A} (l : list A) : w_nilb l = true -> l = [].
Proof. destruct l; [reflexivity|discriminate]. Qed.

Definition check_mmap_ed (addr len prot flags fd off : word) (eff : SyscallEffect)
    (m : Model) : check_result :=
  if negb (mmap_off_aligned_b off) then
    (if mmap_pglen_ok_b len
     then check_ret_only eff (errno_ret EINVAL) m []
     else CheckUnmodeled)
  else if negb (mmap_anon_b flags) then CheckUnmodeled
  else if w_is0 len then
    (if mmap_plain_anon_b flags
     then check_ret_only eff (errno_ret EINVAL) m []
     else CheckUnmodeled)
  else if mmap_modeled_b prot flags off then
  match eff with
  | mkEffectU r [] zs [] [] [] =>
      if errno_ret_in (mmap_errnos_when (mmap_grant_refusable flags m
                         (page_round_up_Z (bv_unsigned len)))) r
      then match zs with [] => CheckOk m [] | _ => CheckReject end
      else
        let nZ := page_round_up_Z (bv_unsigned len) in
        let n := Z_to_bv 64 nZ in
        if (bv_unsigned r mod page_size =? 0)%Z && (0 <? bv_unsigned r)%Z
           && (bv_unsigned r + nZ <=? alloc_top (m_vmmaps m))%Z
           && region_free (vm_reserved (m_vmmaps m) ++ vm_maps (m_vmmaps m)) r n
           && mmap_noreserve_backed_ok flags m nZ
           && listNN_eqb zs [(r, n)]
        then CheckOk
               (with_mmap_backing flags r n
                (with_vmmaps (mkVmMapsFull (vm_reserved (m_vmmaps m))
                             ((r, n) :: vm_maps (m_vmmaps m))
                             (vm_noaccess (m_vmmaps m))
                             (vm_start_brk (m_vmmaps m))
                             (vm_brk (m_vmmaps m))
                             (vm_limit (m_vmmaps m))
                             (vm_mmap_base (m_vmmaps m))
                             (vm_init_sp (m_vmmaps m))) m)) []
        else CheckReject
  | _ => CheckReject
  end
  else if mmap_noaccess_b prot flags off then
  match eff with
  | mkEffectU r [] [] us [] [] =>
      if errno_ret_in (mmap_errnos_when (mmap_reserve_refusable m
                         (page_round_up_Z (bv_unsigned len)))) r
      then match us with [] => CheckOk m [] | _ => CheckReject end
      else
        let nZ := page_round_up_Z (bv_unsigned len) in
        let n := Z_to_bv 64 nZ in
        if (bv_unsigned r mod page_size =? 0)%Z && (0 <? bv_unsigned r)%Z
           && (bv_unsigned r + nZ <=? alloc_top (m_vmmaps m))%Z
           && region_free (vm_reserved (m_vmmaps m) ++ vm_maps (m_vmmaps m)) r n
           && listNN_eqb us [(r, n)]
        then CheckOk
               (with_mmap_backing flags r n
                (with_vmmaps (mkVmMapsFull (vm_reserved (m_vmmaps m))
                             ((r, n) :: vm_maps (m_vmmaps m))
                             ((r, n) :: vm_noaccess (m_vmmaps m))
                             (vm_start_brk (m_vmmaps m))
                             (vm_brk (m_vmmaps m))
                             (vm_limit (m_vmmaps m))
                             (vm_mmap_base (m_vmmaps m))
                             (vm_init_sp (m_vmmaps m))) m)) []
        else CheckReject
  | _ => CheckReject
  end
  else if mmap_fixed_noaccess_b prot flags off then
    let nZ := page_round_up_Z (bv_unsigned len) in
    if (two_pow_64 <=? bv_unsigned addr + nZ)%Z
    then check_ret_only eff (errno_ret ENOMEM) m []
    else if negb (bv_unsigned addr + nZ <=? alloc_top (m_vmmaps m))%Z then CheckUnmodeled
    else if negb (Z.eqb (bv_unsigned addr mod page_size) 0)
    then check_ret_only eff (errno_ret EINVAL) m []
    else if negb (0 <? bv_unsigned addr)%Z then CheckUnmodeled
    else
      let n := Z_to_bv 64 nZ in
      if region_free (vm_reserved (m_vmmaps m)) addr n
         && map_contains (vm_maps (m_vmmaps m)) addr n
      then
        match eff with
        | mkEffectU r [] [] us [] [] =>
            if errno_ret_in (mmap_errnos_when false) r && w_nilb us
            then CheckOk m []
            else if errno_ret_in mmap_destructive_errnos r
                    && listNN_eqb us [(addr, n)]
            then CheckOk
                   (with_mmap_destroyed addr n
                     (mmap_fixed_destroyed_next (m_vmmaps m) addr n) m) []
            else if bv_eqb r addr && listNN_eqb us [(addr, n)]
            then CheckOk
              (with_mmap_replacement flags addr n
               (with_vmmaps
                (mkVmMapsFull (vm_reserved (m_vmmaps m))
                  (vm_maps (m_vmmaps m))
                  ((addr, n) :: maps_subtract (vm_noaccess (m_vmmaps m))
                                  (bv_unsigned addr)
                                  (bv_unsigned addr + bv_unsigned n))
                  (vm_start_brk (m_vmmaps m)) (vm_brk (m_vmmaps m))
                  (vm_limit (m_vmmaps m))
                             (vm_mmap_base (m_vmmaps m))
                             (vm_init_sp (m_vmmaps m))) m)) []
            else CheckReject
        | _ => CheckReject
        end
      else if region_free (vm_reserved (m_vmmaps m) ++ vm_maps (m_vmmaps m))
                          addr n
      then
        match eff with
        | mkEffectU r [] [] us [] [] =>
            if errno_ret_in (mmap_errnos_when false) r
            then match us with [] => CheckOk m [] | _ => CheckReject end
            else if bv_eqb r addr && listNN_eqb us [(addr, n)]
            then CheckOk
                   (with_mmap_backing flags addr n
                    (with_vmmaps (mkVmMapsFull (vm_reserved (m_vmmaps m))
                                 ((addr, n) :: vm_maps (m_vmmaps m))
                                 ((addr, n) :: vm_noaccess (m_vmmaps m))
                                 (vm_start_brk (m_vmmaps m))
                                 (vm_brk (m_vmmaps m))
                                 (vm_limit (m_vmmaps m))
                             (vm_mmap_base (m_vmmaps m))
                             (vm_init_sp (m_vmmaps m))) m)) []
            else CheckReject
        | _ => CheckReject
        end
      else if region_free (vm_reserved (m_vmmaps m)) addr n
      then
        match eff with
        | mkEffectU r [] [] us [] [] =>
            if errno_ret_in (mmap_errnos_when false) r && w_nilb us
            then CheckOk m []
            else if errno_ret_in mmap_destructive_errnos r
                    && listNN_eqb us [(addr, n)]
            then CheckOk
                   (with_mmap_destroyed addr n
                     (mmap_fixed_destroyed_next (m_vmmaps m) addr n) m) []
            else if bv_eqb r addr && listNN_eqb us [(addr, n)]
            then CheckOk
              (with_mmap_replacement flags addr n
               (with_vmmaps
                 (mmap_fixed_noaccess_span_next (m_vmmaps m) addr n) m)) []
            else CheckReject
        | _ => CheckReject
        end
      else CheckUnmodeled
  else if mmap_fixed_rw_b prot flags off then
    let nZ := page_round_up_Z (bv_unsigned len) in
    if (two_pow_64 <=? bv_unsigned addr + nZ)%Z
    then check_ret_only eff (errno_ret ENOMEM) m []
    else if negb (bv_unsigned addr + nZ <=? alloc_top (m_vmmaps m))%Z then CheckUnmodeled
    else if negb (Z.eqb (bv_unsigned addr mod page_size) 0)
    then check_ret_only eff (errno_ret EINVAL) m []
    else if negb (0 <? bv_unsigned addr)%Z then CheckUnmodeled
    else
      let n := Z_to_bv 64 nZ in
      if region_free (vm_reserved (m_vmmaps m)) addr n
         && map_contains (vm_maps (m_vmmaps m)) addr n
      then
        match eff with
        | mkEffectU r [] zs us [] [] =>
            if errno_ret_in (mmap_errnos_when
                   (mmap_fixed_commit_refusable flags m addr n)) r
               && w_nilb zs && w_nilb us
            then CheckOk m []
            else if errno_ret_in mmap_destructive_errnos r
                    && w_nilb zs && listNN_eqb us [(addr, n)]
            then CheckOk
                   (with_mmap_destroyed addr n
                     (mmap_fixed_destroyed_next (m_vmmaps m) addr n) m) []
            else match us with
                 | _ :: _ => CheckReject       (* the success unmaps nothing *)
                 | [] =>
                     if bv_eqb r addr && listNN_eqb zs [(addr, n)]
                        && mmap_fixed_rw_budget_ok flags m addr n
                     then CheckOk
                       (with_mmap_replacement flags addr n
                         (with_vmmaps
                           (mmap_fixed_rw_next (m_vmmaps m) addr n) m)) []
                     else CheckReject
                 end
        | _ => CheckReject
        end
      else if region_free (vm_reserved (m_vmmaps m) ++ vm_maps (m_vmmaps m))
                          addr n
      then
        match eff with
        | mkEffectU r [] zs [] [] [] =>
            if errno_ret_in (mmap_errnos_when
                   (mmap_fixed_fresh_refusable flags m nZ)) r
            then match zs with [] => CheckOk m [] | _ => CheckReject end
            else if bv_eqb r addr && listNN_eqb zs [(addr, n)]
                    && mmap_noreserve_backed_ok flags m nZ
            then CheckOk
                   (with_mmap_backing flags addr n
                    (with_vmmaps (mkVmMapsFull (vm_reserved (m_vmmaps m))
                                 ((addr, n) :: vm_maps (m_vmmaps m))
                                 (vm_noaccess (m_vmmaps m))
                                 (vm_start_brk (m_vmmaps m))
                                 (vm_brk (m_vmmaps m))
                                 (vm_limit (m_vmmaps m))
                             (vm_mmap_base (m_vmmaps m))
                             (vm_init_sp (m_vmmaps m))) m)) []
            else CheckReject
        | _ => CheckReject
        end
      else if region_free (vm_reserved (m_vmmaps m)) addr n
      then
        match eff with
        | mkEffectU r [] zs us [] [] =>
            if errno_ret_in (mmap_errnos_when
                   (mmap_fixed_span_refusable flags m addr n)) r
               && w_nilb zs && w_nilb us
            then CheckOk m []
            else if errno_ret_in mmap_destructive_errnos r
                    && w_nilb zs && listNN_eqb us [(addr, n)]
            then CheckOk
                   (with_mmap_destroyed addr n
                     (mmap_fixed_destroyed_next (m_vmmaps m) addr n) m) []
            else match us with
                 | _ :: _ => CheckReject       (* the success unmaps nothing *)
                 | [] =>
                     if bv_eqb r addr && listNN_eqb zs [(addr, n)]
                        && mmap_fixed_rw_span_budget_ok flags m addr n
                     then CheckOk
                       (with_mmap_replacement flags addr n
                         (with_vmmaps
                           (mmap_fixed_rw_span_next (m_vmmaps m) addr n) m)) []
                     else CheckReject
                 end
        | _ => CheckReject
        end
      else CheckUnmodeled
  else if mmap_noreplace_noaccess_b prot flags off then
    (* MAP_FIXED_NOREPLACE, PROT_NONE: the MAP_FIXED argument gate, then
       one split on the ledger — the free-range reservation, or -EEXIST
       beside the environment errno (see [Mmap.mmap_spec]). *)
    let nZ := page_round_up_Z (bv_unsigned len) in
    if (two_pow_64 <=? bv_unsigned addr + nZ)%Z
    then check_ret_only eff (errno_ret ENOMEM) m []
    else if negb (bv_unsigned addr + nZ <=? alloc_top (m_vmmaps m))%Z then CheckUnmodeled
    else if negb (Z.eqb (bv_unsigned addr mod page_size) 0)
    then check_ret_only eff (errno_ret EINVAL) m []
    else if negb (0 <? bv_unsigned addr)%Z then CheckUnmodeled
    else
      let n := Z_to_bv 64 nZ in
      if region_free (vm_reserved (m_vmmaps m) ++ vm_maps (m_vmmaps m)) addr n
      then
        match eff with
        | mkEffectU r [] [] us [] [] =>
            if errno_ret_in (mmap_errnos_when false) r
            then match us with [] => CheckOk m [] | _ => CheckReject end
            else if bv_eqb r addr && listNN_eqb us [(addr, n)]
            then CheckOk
                   (with_mmap_backing flags addr n
                    (with_vmmaps (mkVmMapsFull (vm_reserved (m_vmmaps m))
                                 ((addr, n) :: vm_maps (m_vmmaps m))
                                 ((addr, n) :: vm_noaccess (m_vmmaps m))
                                 (vm_start_brk (m_vmmaps m))
                                 (vm_brk (m_vmmaps m))
                                 (vm_limit (m_vmmaps m))
                                 (vm_mmap_base (m_vmmaps m))
                                 (vm_init_sp (m_vmmaps m))) m)) []
            else CheckReject
        | _ => CheckReject
        end
      else
        match eff with
        | mkEffectU r [] [] [] [] [] =>
            if errno_ret_in (mmap_errnos_when false) r
               || bv_eqb r (errno_ret EEXIST)
            then CheckOk m [] else CheckReject
        | _ => CheckReject
        end
  else if mmap_noreplace_rw_b prot flags off then
    (* MAP_FIXED_NOREPLACE, rw: the same gate and split, with the rw
       free-range grant and its budget conjunct. *)
    let nZ := page_round_up_Z (bv_unsigned len) in
    if (two_pow_64 <=? bv_unsigned addr + nZ)%Z
    then check_ret_only eff (errno_ret ENOMEM) m []
    else if negb (bv_unsigned addr + nZ <=? alloc_top (m_vmmaps m))%Z then CheckUnmodeled
    else if negb (Z.eqb (bv_unsigned addr mod page_size) 0)
    then check_ret_only eff (errno_ret EINVAL) m []
    else if negb (0 <? bv_unsigned addr)%Z then CheckUnmodeled
    else
      let n := Z_to_bv 64 nZ in
      if region_free (vm_reserved (m_vmmaps m) ++ vm_maps (m_vmmaps m)) addr n
      then
        match eff with
        | mkEffectU r [] zs [] [] [] =>
            if errno_ret_in (mmap_errnos_when
                   (mmap_fixed_fresh_refusable flags m nZ)) r
            then match zs with [] => CheckOk m [] | _ => CheckReject end
            else if bv_eqb r addr && listNN_eqb zs [(addr, n)]
                    && mmap_noreserve_backed_ok flags m nZ
            then CheckOk
                   (with_mmap_backing flags addr n
                    (with_vmmaps (mkVmMapsFull (vm_reserved (m_vmmaps m))
                                 ((addr, n) :: vm_maps (m_vmmaps m))
                                 (vm_noaccess (m_vmmaps m))
                                 (vm_start_brk (m_vmmaps m))
                                 (vm_brk (m_vmmaps m))
                                 (vm_limit (m_vmmaps m))
                                 (vm_mmap_base (m_vmmaps m))
                                 (vm_init_sp (m_vmmaps m))) m)) []
            else CheckReject
        | _ => CheckReject
        end
      else
        match eff with
        | mkEffectU r [] [] [] [] [] =>
            if errno_ret_in (mmap_errnos_when false) r
               || bv_eqb r (errno_ret EEXIST)
            then CheckOk m [] else CheckReject
        | _ => CheckReject
        end
  else CheckUnmodeled.

Definition check_mprotect_ed (addr len prot : word) (eff : SyscallEffect) (m : Model)
    : check_result :=
  if mprotect_grows_conflict_b prot
  then check_ret_only eff (errno_ret EINVAL) m []
  else if negb (Z.eqb (bv_unsigned addr mod page_size) 0)
  then check_ret_only eff (errno_ret EINVAL) m []
  else if w_is0 len then check_ret_only eff (Z_to_bv 64 0) m []
  else if (two_pow_64 <=? bv_unsigned addr + page_round_up_Z (bv_unsigned len))%Z
  then check_ret_only eff (errno_ret ENOMEM) m []
  else if negb (mprotect_modeled_b prot) then CheckUnmodeled
  else
    let nZ := page_round_up_Z (bv_unsigned len) in
    let n := Z_to_bv 64 nZ in
    if map_contains (vm_noaccess (m_vmmaps m)) addr n
       && map_contains (vm_maps (m_vmmaps m)) addr n then
      match eff with
      | mkEffectU r [] zs [] [] [] =>
          if errno_ret_in (mprotect_errnos_when (mprotect_refusable m addr n)) r
          then match zs with [] => CheckOk m [] | _ => CheckReject end
          else if mprotect_budget_ok m addr n
                  && w_is0 r && listNN_eqb zs [(addr, n)]
          then CheckOk
            (mprotect_model_next m addr n) []
          else CheckReject
      | _ => CheckReject
      end
    else if map_contains (vm_maps (m_vmmaps m)) addr n
            && region_free (vm_noaccess (m_vmmaps m)) addr n then
      match eff with
      | mkEffectU r [] [] [] [] [] =>
          if w_is0 r then CheckOk m [] else CheckReject
      | _ => CheckReject
      end
    else CheckUnmodeled.

Ltac same := let H := fresh "H" in intros H; exact H.

Lemma errno_ret_in_when_false_of : forall b r,
  errno_ret_in mmap_errnos r = false -> errno_ret_in (mmap_errnos_when b) r = false.
Proof. intros [|] r H; [exact H| reflexivity]. Qed.

Lemma errno_ret_in_mprotect_when_false_of : forall b r,
  errno_ret_in mprotect_errnos r = false -> errno_ret_in (mprotect_errnos_when b) r = false.
Proof. intros [|] r H; [exact H| reflexivity]. Qed.

Lemma aligned_not_mmap_errno : forall a : word,
  (bv_unsigned a mod page_size = 0)%Z -> errno_ret_in mmap_errnos a = false.
Proof. intros a H. exact (ret_in_errnos_ENOMEM_aligned a H). Qed.

Lemma eexist_not_mmap_errno : errno_ret_in mmap_errnos (errno_ret EEXIST) = false.
Proof. vm_compute. reflexivity. Qed.

Lemma zero_not_mprotect_errno : errno_ret_in mprotect_errnos (Z_to_bv 64 0) = false.
Proof. vm_compute. reflexivity. Qed.

Lemma listNN_eqb_refl' : forall l, listNN_eqb l l = true.
Proof. intros l. apply listNN_eqb_eq. reflexivity. Qed.

(** An outcome is forced when, if it is a refusal, every outcome the checker accepts at the same arguments and
    model is one. *)
Definition forced_mmap (addr len prot flags fd off : word) (m : Model) (eff : SyscallEffect) : Prop :=
  errno_ret_in mmap_errnos (eff_ret eff) = true ->
  forall eff2 m2 evs2, check_mmap addr len prot flags fd off eff2 m = CheckOk m2 evs2 ->
  errno_ret_in mmap_errnos (eff_ret eff2) = true.

Definition forced_mprotect (addr len prot : word) (m : Model) (eff : SyscallEffect) : Prop :=
  errno_ret_in mprotect_errnos (eff_ret eff) = true ->
  forall eff2 m2 evs2, check_mprotect addr len prot eff2 m = CheckOk m2 evs2 ->
  errno_ret_in mprotect_errnos (eff_ret eff2) = true.

(** The one outcome the edition deletes and a forced refusal admits: in a MAP_FIXED read-write arm, a refusal that
    destroys the range. Excluded when the outcome destroys nothing, or when the request commits over an existing
    mapping whose budget test passes (then a refusal is never forced). *)
Definition mmap_corner_free (addr len prot flags off : word) (m : Model) (eff : SyscallEffect) : Prop :=
  mmap_fixed_rw_b prot flags off = true ->
  eff_unmaps eff = [] \/
  (region_free (vm_reserved (m_vmmaps m)) addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))
   && map_contains (vm_maps (m_vmmaps m)) addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len))) = true
   /\ mmap_fixed_rw_budget_ok flags m addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len))) = true).

Lemma check_mmap_ed_fwd : forall addr len prot flags fd off eff m m' evs,
  check_mmap addr len prot flags fd off eff m = CheckOk m' evs ->
  forced_mmap addr len prot flags fd off m eff ->
  mmap_corner_free addr len prot flags off m eff ->
  check_mmap_ed addr len prot flags fd off eff m = CheckOk m' evs.
Proof.
  intros addr len prot flags fd off eff m m' evs H Hf Hc. revert H.
  unfold check_mmap_ed, check_mmap. cbv zeta.
  destruct (negb (mmap_off_aligned_b off)) eqn:G0; [same|].
  destruct (negb (mmap_anon_b flags)) eqn:G1; [same|].
  destruct (w_is0 len) eqn:G2; [same|].
  destruct (mmap_modeled_b prot flags off) eqn:G3.
  { destruct eff as [r ws zs us cs ci].
    destruct ws as [|? ?]; [|intros H; discriminate H].
    destruct us as [|? ?]; [|intros H; discriminate H].
    destruct cs as [|? ?]; [|intros H; discriminate H].
    destruct ci as [|? ?]; [|intros H; discriminate H].
    destruct (errno_ret_in mmap_errnos r) eqn:E.
    - destruct (mmap_grant_refusable flags m (page_round_up_Z (bv_unsigned len))) eqn:R.
      + cbn [mmap_errnos_when]. rewrite E. same.
      + intros _. exfalso.
        destruct (not_refusable_grant_conj _ _ _ R) as (Hb & a & Ha1 & Ha2 & Ha3 & Ha4).
        assert (Hck : exists m2, check_mmap addr len prot flags fd off
                  (mkEffectU a [] [(a, Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))] [] [] []) m = CheckOk m2 []).
        { eexists. unfold check_mmap. rewrite G0, G1, G2, G3. cbv beta iota zeta.
          rewrite (aligned_not_mmap_errno a Ha1).
          rewrite (proj2 (Z.eqb_eq _ _) Ha1), (proj2 (Z.ltb_lt _ _) Ha2), (proj2 (Z.leb_le _ _) Ha3), Ha4, Hb,
                  listNN_eqb_refl'.
          reflexivity. }
        destruct Hck as (m2 & Hck). pose proof (Hf E _ _ _ Hck) as Hx. cbn [eff_ret] in Hx.
        rewrite (aligned_not_mmap_errno a Ha1) in Hx. discriminate Hx.
    - rewrite (errno_ret_in_when_false_of _ r E). same. }
  destruct (mmap_noaccess_b prot flags off) eqn:G4.
  { destruct eff as [r ws zs us cs ci].
    destruct ws as [|? ?]; [|intros H; discriminate H].
    destruct zs as [|? ?]; [|intros H; discriminate H].
    destruct cs as [|? ?]; [|intros H; discriminate H].
    destruct ci as [|? ?]; [|intros H; discriminate H].
    destruct (errno_ret_in mmap_errnos r) eqn:E.
    - destruct (mmap_reserve_refusable m (page_round_up_Z (bv_unsigned len))) eqn:R.
      + cbn [mmap_errnos_when]. rewrite E. same.
      + intros _. exfalso.
        destruct (not_refusable_reserve_conj _ _ R) as (a & Ha1 & Ha2 & Ha3 & Ha4).
        assert (Hck : exists m2, check_mmap addr len prot flags fd off
                  (mkEffectU a [] [] [(a, Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))] [] []) m = CheckOk m2 []).
        { eexists. unfold check_mmap. rewrite G0, G1, G2, G3, G4. cbv beta iota zeta.
          rewrite (aligned_not_mmap_errno a Ha1).
          rewrite (proj2 (Z.eqb_eq _ _) Ha1), (proj2 (Z.ltb_lt _ _) Ha2), (proj2 (Z.leb_le _ _) Ha3), Ha4,
                  listNN_eqb_refl'.
          reflexivity. }
        destruct Hck as (m2 & Hck). pose proof (Hf E _ _ _ Hck) as Hx. cbn [eff_ret] in Hx.
        rewrite (aligned_not_mmap_errno a Ha1) in Hx. discriminate Hx.
    - rewrite (errno_ret_in_when_false_of _ r E). same. }
  destruct (mmap_fixed_noaccess_b prot flags off) eqn:G5.
  { destruct (two_pow_64 <=? bv_unsigned addr + page_round_up_Z (bv_unsigned len))%Z eqn:W; [same|].
    destruct (negb (bv_unsigned addr + page_round_up_Z (bv_unsigned len) <=? alloc_top (m_vmmaps m))%Z) eqn:T; [same|].
    destruct (negb (Z.eqb (bv_unsigned addr mod page_size) 0)) eqn:A; [same|].
    destruct (negb (0 <? bv_unsigned addr)%Z) eqn:P; [same|].
    assert (Na : errno_ret_in mmap_errnos addr = false).
    { apply aligned_not_mmap_errno. apply negb_false_iff, Z.eqb_eq in A. exact A. }
    destruct (region_free (vm_reserved (m_vmmaps m)) addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))
              && map_contains (vm_maps (m_vmmaps m)) addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))) eqn:S1.
    { destruct eff as [r ws zs us cs ci].
      destruct ws as [|? ?]; [|intros H; discriminate H].
      destruct zs as [|? ?]; [|intros H; discriminate H].
      destruct cs as [|? ?]; [|intros H; discriminate H].
      destruct ci as [|? ?]; [|intros H; discriminate H].
      destruct (errno_ret_in mmap_errnos r) eqn:E; [|same].
      intros _. exfalso.
      assert (Hck : exists m2, check_mmap addr len prot flags fd off
                (mkEffectU addr [] [] [(addr, Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))] [] []) m = CheckOk m2 []).
      { eexists. unfold check_mmap. rewrite G0, G1, G2, G3, G4, G5. cbv beta iota zeta.
        rewrite W, T, A, P, S1. cbv beta iota. rewrite Na, bv_eqb_refl, listNN_eqb_refl'. reflexivity. }
      destruct Hck as (m2 & Hck). pose proof (Hf E _ _ _ Hck) as Hx. cbn [eff_ret] in Hx.
      rewrite Na in Hx. discriminate Hx. }
    destruct (region_free (vm_reserved (m_vmmaps m) ++ vm_maps (m_vmmaps m)) addr
                (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))) eqn:S2.
    { destruct eff as [r ws zs us cs ci].
      destruct ws as [|? ?]; [|intros H; discriminate H].
      destruct zs as [|? ?]; [|intros H; discriminate H].
      destruct cs as [|? ?]; [|intros H; discriminate H].
      destruct ci as [|? ?]; [|intros H; discriminate H].
      destruct (errno_ret_in mmap_errnos r) eqn:E; [|same].
      intros _. exfalso.
      assert (Hck : exists m2, check_mmap addr len prot flags fd off
                (mkEffectU addr [] [] [(addr, Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))] [] []) m = CheckOk m2 []).
      { eexists. unfold check_mmap. rewrite G0, G1, G2, G3, G4, G5. cbv beta iota zeta.
        rewrite W, T, A, P, S1, S2. cbv beta iota. rewrite Na, bv_eqb_refl, listNN_eqb_refl'. reflexivity. }
      destruct Hck as (m2 & Hck). pose proof (Hf E _ _ _ Hck) as Hx. cbn [eff_ret] in Hx.
      rewrite Na in Hx. discriminate Hx. }
    destruct (region_free (vm_reserved (m_vmmaps m)) addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))) eqn:S3;
      [|same].
    destruct eff as [r ws zs us cs ci].
    destruct ws as [|? ?]; [|intros H; discriminate H].
    destruct zs as [|? ?]; [|intros H; discriminate H].
    destruct cs as [|? ?]; [|intros H; discriminate H].
    destruct ci as [|? ?]; [|intros H; discriminate H].
    destruct (errno_ret_in mmap_errnos r) eqn:E; [|same].
    intros _. exfalso.
    assert (Hck : exists m2, check_mmap addr len prot flags fd off
              (mkEffectU addr [] [] [(addr, Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))] [] []) m = CheckOk m2 []).
    { eexists. unfold check_mmap. rewrite G0, G1, G2, G3, G4, G5. cbv beta iota zeta.
      rewrite W, T, A, P, S3, S1, S2. cbv beta iota. rewrite Na, bv_eqb_refl, listNN_eqb_refl'. reflexivity. }
    destruct Hck as (m2 & Hck). pose proof (Hf E _ _ _ Hck) as Hx. cbn [eff_ret] in Hx.
    rewrite Na in Hx. discriminate Hx. }
  destruct (mmap_fixed_rw_b prot flags off) eqn:G6.
  { destruct (two_pow_64 <=? bv_unsigned addr + page_round_up_Z (bv_unsigned len))%Z eqn:W; [same|].
    destruct (negb (bv_unsigned addr + page_round_up_Z (bv_unsigned len) <=? alloc_top (m_vmmaps m))%Z) eqn:T; [same|].
    destruct (negb (Z.eqb (bv_unsigned addr mod page_size) 0)) eqn:A; [same|].
    destruct (negb (0 <? bv_unsigned addr)%Z) eqn:P; [same|].
    assert (Na : errno_ret_in mmap_errnos addr = false).
    { apply aligned_not_mmap_errno. apply negb_false_iff, Z.eqb_eq in A. exact A. }
    destruct (region_free (vm_reserved (m_vmmaps m)) addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))
              && map_contains (vm_maps (m_vmmaps m)) addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))) eqn:S1.
    { destruct eff as [r ws zs us cs ci].
      destruct ws as [|? ?]; [|intros H; discriminate H].
      destruct cs as [|? ?]; [|intros H; discriminate H].
      destruct ci as [|? ?]; [|intros H; discriminate H].
      destruct (errno_ret_in mmap_errnos r) eqn:E.
      - destruct (mmap_fixed_commit_refusable flags m addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))) eqn:R.
        + intros H. destruct zs as [|? ?]; [|discriminate H].
          destruct us as [|u us].
          * cbn [mmap_errnos_when w_nilb]. rewrite E. exact H.
          * exfalso. destruct (Hc G6) as [Hu|[_ Hbud]]; [discriminate Hu|].
            unfold mmap_fixed_commit_refusable in R. rewrite Hbud in R. discriminate R.
        + intros _. exfalso.
          assert (Hbud : mmap_fixed_rw_budget_ok flags m addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len))) = true)
            by (unfold mmap_fixed_commit_refusable in R; apply negb_false_iff in R; exact R).
          assert (Hck : exists m2, check_mmap addr len prot flags fd off
                    (mkEffectU addr [] [(addr, Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))] [] [] []) m = CheckOk m2 []).
          { eexists. unfold check_mmap. rewrite G0, G1, G2, G3, G4, G5, G6. cbv beta iota zeta.
            rewrite W, T, A, P, S1. cbv beta iota. rewrite Na. cbv beta iota.
            rewrite bv_eqb_refl, listNN_eqb_refl', Hbud. reflexivity. }
          destruct Hck as (m2 & Hck). pose proof (Hf E _ _ _ Hck) as Hx. cbn [eff_ret] in Hx.
          rewrite Na in Hx. discriminate Hx.
      - rewrite (errno_ret_in_when_false_of _ r E). same. }
    destruct (region_free (vm_reserved (m_vmmaps m) ++ vm_maps (m_vmmaps m)) addr
                (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))) eqn:S2.
    { destruct eff as [r ws zs us cs ci].
      destruct ws as [|? ?]; [|intros H; discriminate H].
      destruct us as [|? ?]; [|intros H; discriminate H].
      destruct cs as [|? ?]; [|intros H; discriminate H].
      destruct ci as [|? ?]; [|intros H; discriminate H].
      destruct (errno_ret_in mmap_errnos r) eqn:E.
      - destruct (mmap_fixed_fresh_refusable flags m (page_round_up_Z (bv_unsigned len))) eqn:R.
        + cbn [mmap_errnos_when]. rewrite E. same.
        + intros _. exfalso.
          assert (Hb : mmap_noreserve_backed_ok flags m (page_round_up_Z (bv_unsigned len)) = true)
            by (unfold mmap_fixed_fresh_refusable in R; apply negb_false_iff in R; exact R).
          assert (Hck : exists m2, check_mmap addr len prot flags fd off
                    (mkEffectU addr [] [(addr, Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))] [] [] []) m = CheckOk m2 []).
          { eexists. unfold check_mmap. rewrite G0, G1, G2, G3, G4, G5, G6. cbv beta iota zeta.
            rewrite W, T, A, P, S1, S2. cbv beta iota. rewrite Na, bv_eqb_refl, listNN_eqb_refl', Hb. reflexivity. }
          destruct Hck as (m2 & Hck). pose proof (Hf E _ _ _ Hck) as Hx. cbn [eff_ret] in Hx.
          rewrite Na in Hx. discriminate Hx.
      - rewrite (errno_ret_in_when_false_of _ r E). same. }
    destruct (region_free (vm_reserved (m_vmmaps m)) addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))) eqn:S3;
      [|same].
    destruct eff as [r ws zs us cs ci].
    destruct ws as [|? ?]; [|intros H; discriminate H].
    destruct cs as [|? ?]; [|intros H; discriminate H].
    destruct ci as [|? ?]; [|intros H; discriminate H].
    destruct (errno_ret_in mmap_errnos r) eqn:E.
    - destruct (mmap_fixed_span_refusable flags m addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))) eqn:R.
      + intros H. destruct zs as [|? ?]; [|discriminate H].
        destruct us as [|u us].
        * cbn [mmap_errnos_when w_nilb]. rewrite E. exact H.
        * exfalso. destruct (Hc G6) as [Hu|[HS _]]; [discriminate Hu|]. rewrite S3, S1 in HS. discriminate HS.
      + intros _. exfalso.
        assert (Hbud : mmap_fixed_rw_span_budget_ok flags m addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len))) = true)
          by (unfold mmap_fixed_span_refusable in R; apply negb_false_iff in R; exact R).
        assert (Hck : exists m2, check_mmap addr len prot flags fd off
                  (mkEffectU addr [] [(addr, Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))] [] [] []) m = CheckOk m2 []).
        { eexists. unfold check_mmap. rewrite G0, G1, G2, G3, G4, G5, G6. cbv beta iota zeta.
          rewrite W, T, A, P, S3, S1, S2. cbv beta iota. rewrite Na. cbv beta iota.
          rewrite bv_eqb_refl, listNN_eqb_refl', Hbud. reflexivity. }
        destruct Hck as (m2 & Hck). pose proof (Hf E _ _ _ Hck) as Hx. cbn [eff_ret] in Hx.
        rewrite Na in Hx. discriminate Hx.
    - rewrite (errno_ret_in_when_false_of _ r E). same. }
  destruct (mmap_noreplace_noaccess_b prot flags off) eqn:G7.
  { destruct (two_pow_64 <=? bv_unsigned addr + page_round_up_Z (bv_unsigned len))%Z eqn:W; [same|].
    destruct (negb (bv_unsigned addr + page_round_up_Z (bv_unsigned len) <=? alloc_top (m_vmmaps m))%Z) eqn:T; [same|].
    destruct (negb (Z.eqb (bv_unsigned addr mod page_size) 0)) eqn:A; [same|].
    destruct (negb (0 <? bv_unsigned addr)%Z) eqn:P; [same|].
    assert (Na : errno_ret_in mmap_errnos addr = false).
    { apply aligned_not_mmap_errno. apply negb_false_iff, Z.eqb_eq in A. exact A. }
    destruct (region_free (vm_reserved (m_vmmaps m) ++ vm_maps (m_vmmaps m)) addr
                (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))) eqn:S2.
    { destruct eff as [r ws zs us cs ci].
      destruct ws as [|? ?]; [|intros H; discriminate H].
      destruct zs as [|? ?]; [|intros H; discriminate H].
      destruct cs as [|? ?]; [|intros H; discriminate H].
      destruct ci as [|? ?]; [|intros H; discriminate H].
      destruct (errno_ret_in mmap_errnos r) eqn:E; [|same].
      intros _. exfalso.
      assert (Hck : exists m2, check_mmap addr len prot flags fd off
                (mkEffectU addr [] [] [(addr, Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))] [] []) m = CheckOk m2 []).
      { eexists. unfold check_mmap. rewrite G0, G1, G2, G3, G4, G5, G6, G7. cbv beta iota zeta.
        rewrite W, T, A, P, S2. cbv beta iota. rewrite Na, bv_eqb_refl, listNN_eqb_refl'. reflexivity. }
      destruct Hck as (m2 & Hck). pose proof (Hf E _ _ _ Hck) as Hx. cbn [eff_ret] in Hx.
      rewrite Na in Hx. discriminate Hx. }
    destruct eff as [r ws zs us cs ci].
    destruct ws as [|? ?]; [|intros H; discriminate H].
    destruct zs as [|? ?]; [|intros H; discriminate H].
    destruct us as [|? ?]; [|intros H; discriminate H].
    destruct cs as [|? ?]; [|intros H; discriminate H].
    destruct ci as [|? ?]; [|intros H; discriminate H].
    destruct (errno_ret_in mmap_errnos r) eqn:E; [|same].
    intros _. exfalso.
    assert (Hck : check_mmap addr len prot flags fd off (mkEffectU (errno_ret EEXIST) [] [] [] [] []) m = CheckOk m []).
    { unfold check_mmap. rewrite G0, G1, G2, G3, G4, G5, G6, G7. cbv beta iota zeta.
      rewrite W, T, A, P, S2. cbv beta iota. rewrite bv_eqb_refl, orb_true_r. reflexivity. }
    pose proof (Hf E _ _ _ Hck) as Hx. cbn [eff_ret] in Hx. rewrite eexist_not_mmap_errno in Hx. discriminate Hx. }
  destruct (mmap_noreplace_rw_b prot flags off) eqn:G8; [|same].
  destruct (two_pow_64 <=? bv_unsigned addr + page_round_up_Z (bv_unsigned len))%Z eqn:W; [same|].
  destruct (negb (bv_unsigned addr + page_round_up_Z (bv_unsigned len) <=? alloc_top (m_vmmaps m))%Z) eqn:T; [same|].
  destruct (negb (Z.eqb (bv_unsigned addr mod page_size) 0)) eqn:A; [same|].
  destruct (negb (0 <? bv_unsigned addr)%Z) eqn:P; [same|].
  assert (Na : errno_ret_in mmap_errnos addr = false).
  { apply aligned_not_mmap_errno. apply negb_false_iff, Z.eqb_eq in A. exact A. }
  destruct (region_free (vm_reserved (m_vmmaps m) ++ vm_maps (m_vmmaps m)) addr
              (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))) eqn:S2.
  { destruct eff as [r ws zs us cs ci].
    destruct ws as [|? ?]; [|intros H; discriminate H].
    destruct us as [|? ?]; [|intros H; discriminate H].
    destruct cs as [|? ?]; [|intros H; discriminate H].
    destruct ci as [|? ?]; [|intros H; discriminate H].
    destruct (errno_ret_in mmap_errnos r) eqn:E.
    - destruct (mmap_fixed_fresh_refusable flags m (page_round_up_Z (bv_unsigned len))) eqn:R.
      + cbn [mmap_errnos_when]. rewrite E. same.
      + intros _. exfalso.
        assert (Hb : mmap_noreserve_backed_ok flags m (page_round_up_Z (bv_unsigned len)) = true)
          by (unfold mmap_fixed_fresh_refusable in R; apply negb_false_iff in R; exact R).
        assert (Hck : exists m2, check_mmap addr len prot flags fd off
                  (mkEffectU addr [] [(addr, Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))] [] [] []) m = CheckOk m2 []).
        { eexists. unfold check_mmap. rewrite G0, G1, G2, G3, G4, G5, G6, G7, G8. cbv beta iota zeta.
          rewrite W, T, A, P, S2. cbv beta iota. rewrite Na, bv_eqb_refl, listNN_eqb_refl', Hb. reflexivity. }
        destruct Hck as (m2 & Hck). pose proof (Hf E _ _ _ Hck) as Hx. cbn [eff_ret] in Hx.
        rewrite Na in Hx. discriminate Hx.
    - rewrite (errno_ret_in_when_false_of _ r E). same. }
  destruct eff as [r ws zs us cs ci].
  destruct ws as [|? ?]; [|intros H; discriminate H].
  destruct zs as [|? ?]; [|intros H; discriminate H].
  destruct us as [|? ?]; [|intros H; discriminate H].
  destruct cs as [|? ?]; [|intros H; discriminate H].
  destruct ci as [|? ?]; [|intros H; discriminate H].
  destruct (errno_ret_in mmap_errnos r) eqn:E; [|same].
  intros _. exfalso.
  assert (Hck : check_mmap addr len prot flags fd off (mkEffectU (errno_ret EEXIST) [] [] [] [] []) m = CheckOk m []).
  { unfold check_mmap. rewrite G0, G1, G2, G3, G4, G5, G6, G7, G8. cbv beta iota zeta.
    rewrite W, T, A, P, S2. cbv beta iota. rewrite bv_eqb_refl, orb_true_r. reflexivity. }
  pose proof (Hf E _ _ _ Hck) as Hx. cbn [eff_ret] in Hx. rewrite eexist_not_mmap_errno in Hx. discriminate Hx.
Qed.

Lemma check_mprotect_ed_fwd : forall addr len prot eff m m' evs,
  check_mprotect addr len prot eff m = CheckOk m' evs ->
  forced_mprotect addr len prot m eff ->
  check_mprotect_ed addr len prot eff m = CheckOk m' evs.
Proof.
  intros addr len prot eff m m' evs H Hf. revert H.
  unfold check_mprotect_ed, check_mprotect. cbv zeta.
  destruct (mprotect_grows_conflict_b prot) eqn:G0; [same|].
  destruct (negb (Z.eqb (bv_unsigned addr mod page_size) 0)) eqn:G1; [same|].
  destruct (w_is0 len) eqn:G2; [same|].
  destruct (two_pow_64 <=? bv_unsigned addr + page_round_up_Z (bv_unsigned len))%Z eqn:G3; [same|].
  destruct (negb (mprotect_modeled_b prot)) eqn:G4; [same|].
  destruct (map_contains (vm_noaccess (m_vmmaps m)) addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))
            && map_contains (vm_maps (m_vmmaps m)) addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))) eqn:S1;
    [|same].
  destruct eff as [r ws zs us cs ci].
  destruct ws as [|? ?]; [|intros H; discriminate H].
  destruct us as [|? ?]; [|intros H; discriminate H].
  destruct cs as [|? ?]; [|intros H; discriminate H].
  destruct ci as [|? ?]; [|intros H; discriminate H].
  destruct (errno_ret_in mprotect_errnos r) eqn:E.
  - destruct (mprotect_refusable m addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))) eqn:R.
    + cbn [mprotect_errnos_when]. rewrite E. same.
    + intros _. exfalso.
      assert (Hbud : mprotect_budget_ok m addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len))) = true)
        by (unfold mprotect_refusable in R; apply negb_false_iff in R; exact R).
      assert (Hck : exists m2, check_mprotect addr len prot
                (mkEffectU (Z_to_bv 64 0) [] [(addr, Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))] [] [] []) m
                = CheckOk m2 []).
      { eexists. unfold check_mprotect. rewrite G0, G1, G2, G3, G4. cbv beta iota zeta. rewrite S1. cbv beta iota.
        rewrite zero_not_mprotect_errno, Hbud, listNN_eqb_refl'. reflexivity. }
      destruct Hck as (m2 & Hck). pose proof (Hf E _ _ _ Hck) as Hx. cbn [eff_ret] in Hx.
      rewrite zero_not_mprotect_errno in Hx. discriminate Hx.
  - rewrite (errno_ret_in_mprotect_when_false_of _ r E). same.
Qed.

Lemma refusal_neq : forall r a : word,
  errno_ret_in mmap_errnos r = true -> errno_ret_in mmap_errnos a = false -> bv_eqb r a = false.
Proof.
  intros r a Hr Ha. destruct (bv_eqb r a) eqn:Q; [|reflexivity].
  apply bv_eqb_eq in Q. subst a. congruence.
Qed.

Lemma forced_mmap_nonrefusal : forall addr len prot flags fd off m eff,
  errno_ret_in mmap_errnos (eff_ret eff) = false -> forced_mmap addr len prot flags fd off m eff.
Proof. intros addr len prot flags fd off m eff H Hr. congruence. Qed.

Lemma forced_mprotect_nonrefusal : forall addr len prot m eff,
  errno_ret_in mprotect_errnos (eff_ret eff) = false -> forced_mprotect addr len prot m eff.
Proof. intros addr len prot m eff H Hr. congruence. Qed.

(** The condition of an accepting [if] whose else branch rejects. *)
Ltac if_cond H C :=
  cbv beta iota in H;
  lazymatch type of H with
  | (if ?c then _ else _) = CheckOk _ _ => destruct c eqn:C; [|discriminate H]
  end.

Ltac andb_split C :=
  repeat match type of C with
  | (_ && _) = true => let C' := fresh "C" in apply andb_prop in C as [C C']
  end.

Lemma check_mmap_ed_bwd : forall addr len prot flags fd off eff m m' evs,
  check_mmap_ed addr len prot flags fd off eff m = CheckOk m' evs ->
  check_mmap addr len prot flags fd off eff m = CheckOk m' evs
  /\ forced_mmap addr len prot flags fd off m eff.
Proof.
  intros addr len prot flags fd off eff m m' evs H.
  destruct (errno_ret_in mmap_errnos (eff_ret eff)) eqn:Er.
  2:{ split; [|apply forced_mmap_nonrefusal; exact Er].
      revert H. unfold check_mmap_ed, check_mmap. cbv zeta.
      destruct eff as [r ws zs us cs ci]. cbn [eff_ret] in Er.
      repeat (rewrite (errno_ret_in_when_false_of _ r Er)).
      change (errno_ret_in mmap_destructive_errnos r) with false.
      rewrite Er. intros H.
      destruct (negb (mmap_off_aligned_b off)); [exact H|].
      destruct (negb (mmap_anon_b flags)); [exact H|].
      destruct (w_is0 len); [exact H|].
      destruct (mmap_modeled_b prot flags off); [exact H|].
      destruct (mmap_noaccess_b prot flags off); [exact H|].
      destruct (mmap_fixed_noaccess_b prot flags off); [exact H|].
      destruct (mmap_fixed_rw_b prot flags off); [exact H|].
      destruct (mmap_noreplace_noaccess_b prot flags off); [exact H|].
      exact H. }
  (* a refusal *)
  revert H. unfold check_mmap_ed. cbv zeta.
  destruct (negb (mmap_off_aligned_b off)) eqn:G0.
  { intros H. destruct (mmap_pglen_ok_b len); [|discriminate H].
    apply check_ret_only_ok_iff in H as (-> & _ & _). vm_compute in Er. discriminate Er. }
  destruct (negb (mmap_anon_b flags)) eqn:G1; [intros H; discriminate H|].
  destruct (w_is0 len) eqn:G2.
  { intros H. destruct (mmap_plain_anon_b flags); [|discriminate H].
    apply check_ret_only_ok_iff in H as (-> & _ & _). vm_compute in Er. discriminate Er. }
  destruct eff as [r ws zs us cs ci]. cbn [eff_ret] in Er.
  destruct (mmap_modeled_b prot flags off) eqn:G3.
  { destruct ws as [|? ?]; [|intros H; discriminate H].
    destruct us as [|? ?]; [|intros H; discriminate H].
    destruct cs as [|? ?]; [|intros H; discriminate H].
    destruct ci as [|? ?]; [|intros H; discriminate H].
    destruct (mmap_grant_refusable flags m (page_round_up_Z (bv_unsigned len))) eqn:R.
    - cbn [mmap_errnos_when]. rewrite Er. intros H. split.
      + unfold check_mmap. rewrite G0, G1, G2, G3. cbv beta iota zeta. rewrite Er. exact H.
      + intros _ eff2 m2 evs2 H2. destruct (errno_ret_in mmap_errnos (eff_ret eff2)) eqn:E2; [reflexivity|].
        exfalso. unfold check_mmap in H2. rewrite G0, G1, G2, G3 in H2. cbv zeta in H2.
        destruct eff2 as [r2 ws2 zs2 us2 cs2 ci2]. cbn [eff_ret] in E2.
        destruct ws2 as [|? ?]; [|discriminate H2]. destruct us2 as [|? ?]; [|discriminate H2].
        destruct cs2 as [|? ?]; [|discriminate H2]. destruct ci2 as [|? ?]; [|discriminate H2].
        rewrite E2 in H2. if_cond H2 C. andb_split C.
        apply Z.eqb_eq in C. apply Z.ltb_lt in C4. apply Z.leb_le in C3.
        rewrite (grant_conj_not_refusable flags m _ r2 C C4 C3 C2 C1) in R. discriminate R.
    - cbn [mmap_errnos_when errno_ret_in existsb]. intros H. exfalso.
      if_cond H C. andb_split C. apply Z.eqb_eq in C.
      rewrite (aligned_not_mmap_errno r C) in Er. discriminate Er. }
  destruct (mmap_noaccess_b prot flags off) eqn:G4.
  { destruct ws as [|? ?]; [|intros H; discriminate H].
    destruct zs as [|? ?]; [|intros H; discriminate H].
    destruct cs as [|? ?]; [|intros H; discriminate H].
    destruct ci as [|? ?]; [|intros H; discriminate H].
    destruct (mmap_reserve_refusable m (page_round_up_Z (bv_unsigned len))) eqn:R.
    - cbn [mmap_errnos_when]. rewrite Er. intros H. split.
      + unfold check_mmap. rewrite G0, G1, G2, G3, G4. cbv beta iota zeta. rewrite Er. exact H.
      + intros _ eff2 m2 evs2 H2. destruct (errno_ret_in mmap_errnos (eff_ret eff2)) eqn:E2; [reflexivity|].
        exfalso. unfold check_mmap in H2. rewrite G0, G1, G2, G3, G4 in H2. cbv zeta in H2.
        destruct eff2 as [r2 ws2 zs2 us2 cs2 ci2]. cbn [eff_ret] in E2.
        destruct ws2 as [|? ?]; [|discriminate H2]. destruct zs2 as [|? ?]; [|discriminate H2].
        destruct cs2 as [|? ?]; [|discriminate H2]. destruct ci2 as [|? ?]; [|discriminate H2].
        rewrite E2 in H2. if_cond H2 C. andb_split C.
        apply Z.eqb_eq in C. apply Z.ltb_lt in C3. apply Z.leb_le in C2.
        rewrite (reserve_conj_not_refusable m _ r2 C C3 C2 C1) in R. discriminate R.
    - cbn [mmap_errnos_when errno_ret_in existsb]. intros H. exfalso.
      if_cond H C. andb_split C. apply Z.eqb_eq in C.
      rewrite (aligned_not_mmap_errno r C) in Er. discriminate Er. }
  destruct (mmap_fixed_noaccess_b prot flags off) eqn:G5.
  { destruct (two_pow_64 <=? bv_unsigned addr + page_round_up_Z (bv_unsigned len))%Z eqn:W.
    { intros H. split.
      - unfold check_mmap. rewrite G0, G1, G2, G3, G4, G5. cbv beta iota zeta. rewrite W. exact H.
      - intros _ eff2 m2 evs2 H2. unfold check_mmap in H2. rewrite G0, G1, G2, G3, G4, G5 in H2. cbv zeta in H2.
        rewrite W in H2. apply check_ret_only_ok_iff in H2 as (-> & _ & _). vm_compute. reflexivity. }
    destruct (negb (bv_unsigned addr + page_round_up_Z (bv_unsigned len) <=? alloc_top (m_vmmaps m))%Z) eqn:T;
      [intros H; discriminate H|].
    destruct (negb (Z.eqb (bv_unsigned addr mod page_size) 0)) eqn:A.
    { intros H. apply check_ret_only_ok_iff in H as (H & _ & _). apply (f_equal eff_ret) in H. cbn in H. subst r.
      vm_compute in Er. discriminate Er. }
    destruct (negb (0 <? bv_unsigned addr)%Z) eqn:P; [intros H; discriminate H|].
    assert (Na : errno_ret_in mmap_errnos addr = false).
    { apply aligned_not_mmap_errno. apply negb_false_iff, Z.eqb_eq in A. exact A. }
    rewrite (refusal_neq r addr Er Na).
    change (errno_ret_in (mmap_errnos_when false) r) with false.
    change (errno_ret_in mmap_destructive_errnos r) with false.
    intros H. exfalso.
    destruct (region_free (vm_reserved (m_vmmaps m)) addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))
              && map_contains (vm_maps (m_vmmaps m)) addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len))));
    [|destruct (region_free (vm_reserved (m_vmmaps m) ++ vm_maps (m_vmmaps m)) addr
                  (Z_to_bv 64 (page_round_up_Z (bv_unsigned len))));
      [|destruct (region_free (vm_reserved (m_vmmaps m)) addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len))))]];
    try discriminate H;
    destruct ws as [|? ?]; try discriminate H; destruct zs as [|? ?]; try discriminate H;
    destruct cs as [|? ?]; try discriminate H; destruct ci as [|? ?]; try discriminate H;
    destruct us as [|? ?]; discriminate H. }
  destruct (mmap_fixed_rw_b prot flags off) eqn:G6.
  { destruct (two_pow_64 <=? bv_unsigned addr + page_round_up_Z (bv_unsigned len))%Z eqn:W.
    { intros H. split.
      - unfold check_mmap. rewrite G0, G1, G2, G3, G4, G5, G6. cbv beta iota zeta. rewrite W. exact H.
      - intros _ eff2 m2 evs2 H2. unfold check_mmap in H2. rewrite G0, G1, G2, G3, G4, G5, G6 in H2. cbv zeta in H2.
        rewrite W in H2. apply check_ret_only_ok_iff in H2 as (-> & _ & _). vm_compute. reflexivity. }
    destruct (negb (bv_unsigned addr + page_round_up_Z (bv_unsigned len) <=? alloc_top (m_vmmaps m))%Z) eqn:T;
      [intros H; discriminate H|].
    destruct (negb (Z.eqb (bv_unsigned addr mod page_size) 0)) eqn:A.
    { intros H. apply check_ret_only_ok_iff in H as (H & _ & _). apply (f_equal eff_ret) in H. cbn in H. subst r.
      vm_compute in Er. discriminate Er. }
    destruct (negb (0 <? bv_unsigned addr)%Z) eqn:P; [intros H; discriminate H|].
    assert (Na : errno_ret_in mmap_errnos addr = false).
    { apply aligned_not_mmap_errno. apply negb_false_iff, Z.eqb_eq in A. exact A. }
    rewrite (refusal_neq r addr Er Na).
    change (errno_ret_in mmap_destructive_errnos r) with false.
    destruct (region_free (vm_reserved (m_vmmaps m)) addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))
              && map_contains (vm_maps (m_vmmaps m)) addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))) eqn:S1.
    { destruct ws as [|? ?]; [|intros H; discriminate H].
      destruct cs as [|? ?]; [|intros H; discriminate H].
      destruct ci as [|? ?]; [|intros H; discriminate H].
      destruct (mmap_fixed_commit_refusable flags m addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))) eqn:R.
      - cbn [mmap_errnos_when]. rewrite Er.
        destruct zs as [|? ?]; [|intros H; destruct us; discriminate H].
        destruct us as [|? ?]; [|intros H; discriminate H].
        intros H. split.
        + unfold check_mmap. rewrite G0, G1, G2, G3, G4, G5, G6. cbv beta iota zeta. rewrite W, T, A, P, S1.
          cbv beta iota. rewrite Er. exact H.
        + intros _ eff2 m2 evs2 H2. destruct (errno_ret_in mmap_errnos (eff_ret eff2)) eqn:E2; [reflexivity|].
          exfalso. unfold check_mmap in H2. rewrite G0, G1, G2, G3, G4, G5, G6 in H2. cbv zeta in H2.
          rewrite W, T, A, P, S1 in H2.
          destruct eff2 as [r2 ws2 zs2 us2 cs2 ci2]. cbn [eff_ret] in E2.
          destruct ws2 as [|? ?]; [|discriminate H2]. destruct cs2 as [|? ?]; [|discriminate H2].
          destruct ci2 as [|? ?]; [|discriminate H2]. rewrite E2 in H2.
          destruct us2 as [|? ?]; [|discriminate H2].
          if_cond H2 C. andb_split C. unfold mmap_fixed_commit_refusable in R. rewrite C0 in R. discriminate R.
      - cbn [mmap_errnos_when errno_ret_in existsb]. intros H. exfalso.
        destruct us; discriminate H. }
    destruct (region_free (vm_reserved (m_vmmaps m) ++ vm_maps (m_vmmaps m)) addr
                (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))) eqn:S2.
    { destruct ws as [|? ?]; [|intros H; discriminate H].
      destruct us as [|? ?]; [|intros H; discriminate H].
      destruct cs as [|? ?]; [|intros H; discriminate H].
      destruct ci as [|? ?]; [|intros H; discriminate H].
      destruct (mmap_fixed_fresh_refusable flags m (page_round_up_Z (bv_unsigned len))) eqn:R.
      - cbn [mmap_errnos_when]. rewrite Er. intros H. split.
        + unfold check_mmap. rewrite G0, G1, G2, G3, G4, G5, G6. cbv beta iota zeta. rewrite W, T, A, P, S1, S2.
          cbv beta iota. rewrite Er. exact H.
        + intros _ eff2 m2 evs2 H2. destruct (errno_ret_in mmap_errnos (eff_ret eff2)) eqn:E2; [reflexivity|].
          exfalso. unfold check_mmap in H2. rewrite G0, G1, G2, G3, G4, G5, G6 in H2. cbv zeta in H2.
          rewrite W, T, A, P, S1, S2 in H2.
          destruct eff2 as [r2 ws2 zs2 us2 cs2 ci2]. cbn [eff_ret] in E2.
          destruct ws2 as [|? ?]; [|discriminate H2]. destruct us2 as [|? ?]; [|discriminate H2].
          destruct cs2 as [|? ?]; [|discriminate H2]. destruct ci2 as [|? ?]; [|discriminate H2].
          rewrite E2 in H2. if_cond H2 C. andb_split C.
          unfold mmap_fixed_fresh_refusable in R. rewrite C0 in R. discriminate R.
      - cbn [mmap_errnos_when errno_ret_in existsb]. intros H. exfalso. discriminate H. }
    destruct (region_free (vm_reserved (m_vmmaps m)) addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))) eqn:S3;
      [|intros H; discriminate H].
    destruct ws as [|? ?]; [|intros H; discriminate H].
    destruct cs as [|? ?]; [|intros H; discriminate H].
    destruct ci as [|? ?]; [|intros H; discriminate H].
    destruct (mmap_fixed_span_refusable flags m addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))) eqn:R.
    - cbn [mmap_errnos_when]. rewrite Er.
      destruct zs as [|? ?]; [|intros H; destruct us; discriminate H].
      destruct us as [|? ?]; [|intros H; discriminate H].
      intros H. split.
      + unfold check_mmap. rewrite G0, G1, G2, G3, G4, G5, G6. cbv beta iota zeta. rewrite W, T, A, P, S3, S1, S2.
        cbv beta iota. rewrite Er. exact H.
      + intros _ eff2 m2 evs2 H2. destruct (errno_ret_in mmap_errnos (eff_ret eff2)) eqn:E2; [reflexivity|].
        exfalso. unfold check_mmap in H2. rewrite G0, G1, G2, G3, G4, G5, G6 in H2. cbv zeta in H2.
        rewrite W, T, A, P, S3, S1, S2 in H2.
        destruct eff2 as [r2 ws2 zs2 us2 cs2 ci2]. cbn [eff_ret] in E2.
        destruct ws2 as [|? ?]; [|discriminate H2]. destruct cs2 as [|? ?]; [|discriminate H2].
        destruct ci2 as [|? ?]; [|discriminate H2]. rewrite E2 in H2.
        destruct us2 as [|? ?]; [|discriminate H2].
        if_cond H2 C. andb_split C. unfold mmap_fixed_span_refusable in R. rewrite C0 in R. discriminate R.
    - cbn [mmap_errnos_when errno_ret_in existsb]. intros H. exfalso.
      destruct us; discriminate H. }
  destruct (mmap_noreplace_noaccess_b prot flags off) eqn:G7.
  { destruct (two_pow_64 <=? bv_unsigned addr + page_round_up_Z (bv_unsigned len))%Z eqn:W.
    { intros H. split.
      - unfold check_mmap. rewrite G0, G1, G2, G3, G4, G5, G6, G7. cbv beta iota zeta. rewrite W. exact H.
      - intros _ eff2 m2 evs2 H2. unfold check_mmap in H2. rewrite G0, G1, G2, G3, G4, G5, G6, G7 in H2.
        cbv zeta in H2. rewrite W in H2. apply check_ret_only_ok_iff in H2 as (-> & _ & _). vm_compute. reflexivity. }
    destruct (negb (bv_unsigned addr + page_round_up_Z (bv_unsigned len) <=? alloc_top (m_vmmaps m))%Z) eqn:T;
      [intros H; discriminate H|].
    destruct (negb (Z.eqb (bv_unsigned addr mod page_size) 0)) eqn:A.
    { intros H. apply check_ret_only_ok_iff in H as (H & _ & _). apply (f_equal eff_ret) in H. cbn in H. subst r.
      vm_compute in Er. discriminate Er. }
    destruct (negb (0 <? bv_unsigned addr)%Z) eqn:P; [intros H; discriminate H|].
    assert (Na : errno_ret_in mmap_errnos addr = false).
    { apply aligned_not_mmap_errno. apply negb_false_iff, Z.eqb_eq in A. exact A. }
    assert (Nx : bv_eqb r (errno_ret EEXIST) = false) by (apply (refusal_neq r _ Er eexist_not_mmap_errno)).
    rewrite (refusal_neq r addr Er Na), Nx.
    change (errno_ret_in (mmap_errnos_when false) r) with false.
    intros H. exfalso.
    destruct (region_free (vm_reserved (m_vmmaps m) ++ vm_maps (m_vmmaps m)) addr
                (Z_to_bv 64 (page_round_up_Z (bv_unsigned len))));
    destruct ws as [|? ?]; try discriminate H; destruct zs as [|? ?]; try discriminate H;
    destruct cs as [|? ?]; try discriminate H; destruct ci as [|? ?]; try discriminate H;
    destruct us as [|? ?]; discriminate H. }
  destruct (mmap_noreplace_rw_b prot flags off) eqn:G8; [|intros H; discriminate H].
  destruct (two_pow_64 <=? bv_unsigned addr + page_round_up_Z (bv_unsigned len))%Z eqn:W.
  { intros H. split.
    - unfold check_mmap. rewrite G0, G1, G2, G3, G4, G5, G6, G7, G8. cbv beta iota zeta. rewrite W. exact H.
    - intros _ eff2 m2 evs2 H2. unfold check_mmap in H2. rewrite G0, G1, G2, G3, G4, G5, G6, G7, G8 in H2.
      cbv zeta in H2. rewrite W in H2. apply check_ret_only_ok_iff in H2 as (-> & _ & _). vm_compute. reflexivity. }
  destruct (negb (bv_unsigned addr + page_round_up_Z (bv_unsigned len) <=? alloc_top (m_vmmaps m))%Z) eqn:T;
    [intros H; discriminate H|].
  destruct (negb (Z.eqb (bv_unsigned addr mod page_size) 0)) eqn:A.
  { intros H. apply check_ret_only_ok_iff in H as (H & _ & _). apply (f_equal eff_ret) in H. cbn in H. subst r.
    vm_compute in Er. discriminate Er. }
  destruct (negb (0 <? bv_unsigned addr)%Z) eqn:P; [intros H; discriminate H|].
  assert (Na : errno_ret_in mmap_errnos addr = false).
  { apply aligned_not_mmap_errno. apply negb_false_iff, Z.eqb_eq in A. exact A. }
  assert (Nx : bv_eqb r (errno_ret EEXIST) = false) by (apply (refusal_neq r _ Er eexist_not_mmap_errno)).
  rewrite (refusal_neq r addr Er Na), Nx.
  destruct (region_free (vm_reserved (m_vmmaps m) ++ vm_maps (m_vmmaps m)) addr
              (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))) eqn:S2.
  2:{ change (errno_ret_in (mmap_errnos_when false) r) with false. intros H. exfalso.
      destruct ws as [|? ?]; try discriminate H; destruct zs as [|? ?]; try discriminate H;
      destruct cs as [|? ?]; try discriminate H; destruct ci as [|? ?]; try discriminate H;
      destruct us as [|? ?]; discriminate H. }
  destruct ws as [|? ?]; [|intros H; discriminate H].
  destruct us as [|? ?]; [|intros H; discriminate H].
  destruct cs as [|? ?]; [|intros H; discriminate H].
  destruct ci as [|? ?]; [|intros H; discriminate H].
  destruct (mmap_fixed_fresh_refusable flags m (page_round_up_Z (bv_unsigned len))) eqn:R.
  - cbn [mmap_errnos_when]. rewrite Er. intros H. split.
    + unfold check_mmap. rewrite G0, G1, G2, G3, G4, G5, G6, G7, G8. cbv beta iota zeta. rewrite W, T, A, P, S2.
      cbv beta iota. rewrite Er. exact H.
    + intros _ eff2 m2 evs2 H2. destruct (errno_ret_in mmap_errnos (eff_ret eff2)) eqn:E2; [reflexivity|].
      exfalso. unfold check_mmap in H2. rewrite G0, G1, G2, G3, G4, G5, G6, G7, G8 in H2. cbv zeta in H2.
      rewrite W, T, A, P, S2 in H2.
      destruct eff2 as [r2 ws2 zs2 us2 cs2 ci2]. cbn [eff_ret] in E2.
      destruct ws2 as [|? ?]; [|discriminate H2]. destruct us2 as [|? ?]; [|discriminate H2].
      destruct cs2 as [|? ?]; [|discriminate H2]. destruct ci2 as [|? ?]; [|discriminate H2].
      rewrite E2 in H2. if_cond H2 C. andb_split C.
      unfold mmap_fixed_fresh_refusable in R. rewrite C0 in R. discriminate R.
  - cbn [mmap_errnos_when errno_ret_in existsb]. intros H. exfalso. discriminate H.
Qed.

Lemma check_mprotect_ed_bwd : forall addr len prot eff m m' evs,
  check_mprotect_ed addr len prot eff m = CheckOk m' evs ->
  check_mprotect addr len prot eff m = CheckOk m' evs /\ forced_mprotect addr len prot m eff.
Proof.
  intros addr len prot eff m m' evs H.
  destruct (errno_ret_in mprotect_errnos (eff_ret eff)) eqn:Er.
  2:{ split; [|apply forced_mprotect_nonrefusal; exact Er].
      revert H. unfold check_mprotect_ed, check_mprotect. cbv zeta.
      destruct eff as [r ws zs us cs ci]. cbn [eff_ret] in Er.
      rewrite (errno_ret_in_mprotect_when_false_of _ r Er), Er. intros H. exact H. }
  revert H. unfold check_mprotect_ed. cbv zeta.
  destruct (mprotect_grows_conflict_b prot) eqn:G0.
  { intros H. apply check_ret_only_ok_iff in H as (-> & _ & _). vm_compute in Er. discriminate Er. }
  destruct (negb (Z.eqb (bv_unsigned addr mod page_size) 0)) eqn:G1.
  { intros H. apply check_ret_only_ok_iff in H as (-> & _ & _). vm_compute in Er. discriminate Er. }
  destruct (w_is0 len) eqn:G2.
  { intros H. apply check_ret_only_ok_iff in H as (-> & _ & _). vm_compute in Er. discriminate Er. }
  destruct (two_pow_64 <=? bv_unsigned addr + page_round_up_Z (bv_unsigned len))%Z eqn:G3.
  { intros H. split.
    - unfold check_mprotect. rewrite G0, G1, G2, G3. exact H.
    - intros _ eff2 m2 evs2 H2. unfold check_mprotect in H2. rewrite G0, G1, G2, G3 in H2.
      apply check_ret_only_ok_iff in H2 as (-> & _ & _). vm_compute. reflexivity. }
  destruct (negb (mprotect_modeled_b prot)) eqn:G4; [intros H; discriminate H|].
  destruct eff as [r ws zs us cs ci]. cbn [eff_ret] in Er.
  destruct (map_contains (vm_noaccess (m_vmmaps m)) addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))
            && map_contains (vm_maps (m_vmmaps m)) addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))) eqn:S1.
  2:{ intros H. exfalso.
      destruct (map_contains (vm_maps (m_vmmaps m)) addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))
                && region_free (vm_noaccess (m_vmmaps m)) addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len))));
        [|discriminate H].
      destruct ws as [|? ?]; try discriminate H; destruct zs as [|? ?]; try discriminate H;
      destruct us as [|? ?]; try discriminate H; destruct cs as [|? ?]; try discriminate H;
      destruct ci as [|? ?]; try discriminate H.
      destruct (w_is0 r) eqn:Z0; [|discriminate H].
      unfold w_is0 in Z0. apply bv_eqb_eq in Z0. subst r. vm_compute in Er. discriminate Er. }
  destruct ws as [|? ?]; [|intros H; discriminate H].
  destruct us as [|? ?]; [|intros H; discriminate H].
  destruct cs as [|? ?]; [|intros H; discriminate H].
  destruct ci as [|? ?]; [|intros H; discriminate H].
  destruct (mprotect_refusable m addr (Z_to_bv 64 (page_round_up_Z (bv_unsigned len)))) eqn:R.
  - cbn [mprotect_errnos_when]. rewrite Er. intros H. split.
    + unfold check_mprotect. rewrite G0, G1, G2, G3, G4. cbv beta iota zeta. rewrite S1. cbv beta iota.
      rewrite Er. exact H.
    + intros _ eff2 m2 evs2 H2. destruct (errno_ret_in mprotect_errnos (eff_ret eff2)) eqn:E2; [reflexivity|].
      exfalso. unfold check_mprotect in H2. rewrite G0, G1, G2, G3, G4 in H2. cbv zeta in H2. rewrite S1 in H2.
      destruct eff2 as [r2 ws2 zs2 us2 cs2 ci2]. cbn [eff_ret] in E2.
      destruct ws2 as [|? ?]; [|discriminate H2]. destruct us2 as [|? ?]; [|discriminate H2].
      destruct cs2 as [|? ?]; [|discriminate H2]. destruct ci2 as [|? ?]; [|discriminate H2].
      rewrite E2 in H2. if_cond H2 C. andb_split C.
      unfold mprotect_refusable in R. rewrite C in R. discriminate R.
  - cbn [mprotect_errnos_when errno_ret_in existsb]. intros H. exfalso.
    if_cond H C. andb_split C. unfold w_is0 in C1. apply bv_eqb_eq in C1. subst r.
    vm_compute in Er. discriminate Er.
Qed.

(** The spurious-refusal filter at an mmap or mprotect input, read at the checker: an outcome is not a spurious
    refusal exactly when it is forced in the sense above. *)
Lemma forced_of_ns_mmap : forall i m eff,
  bv_unsigned (in_sysno i) = 222%Z ->
  ~ spurious_refusal_cfg ACFG i m eff ->
  forced_mmap (in_arg i 0) (in_arg i 1) (in_arg i 2) (in_arg i 3) (in_arg i 4) (in_arg i 5) m eff.
Proof.
  intros i m eff Hno Hns Hr eff2 m2 evs2 H2.
  change (errno_ret_in mmap_errnos (eff_ret eff2)) with (ret_in_errnos mmap_errnos (eff_ret eff2)).
  rewrite <- (refusal_b_222 i m (eff_ret eff2) Hno).
  apply (nonspurious_refusal_no_grant ACFG i m eff Hns (acfg_family_off_222 i Hno)) with (m' := m2) (evs' := evs2).
  - rewrite (refusal_b_222 i m (eff_ret eff) Hno). exact Hr.
  - apply check_syscall_ok_iff. rewrite (check_syscall_mmap i eff2 m Hno). exact H2.
Qed.

Lemma ns_of_forced_mmap : forall i m eff,
  bv_unsigned (in_sysno i) = 222%Z ->
  forced_mmap (in_arg i 0) (in_arg i 1) (in_arg i 2) (in_arg i 3) (in_arg i 4) (in_arg i 5) m eff ->
  ~ spurious_refusal_cfg ACFG i m eff.
Proof.
  intros i m eff Hno Hf (_ & Hr & (eff' & m' & evs' & Hs & Hnr)).
  rewrite (refusal_b_222 i m _ Hno) in Hr. rewrite (refusal_b_222 i m _ Hno) in Hnr.
  apply check_syscall_ok_iff in Hs. rewrite (check_syscall_mmap i eff' m Hno) in Hs.
  pose proof (Hf Hr _ _ _ Hs) as Hx. change (errno_ret_in mmap_errnos (eff_ret eff')) with
    (ret_in_errnos mmap_errnos (eff_ret eff')) in Hx. congruence.
Qed.

Lemma forced_of_ns_mprotect : forall i m eff,
  bv_unsigned (in_sysno i) = 226%Z ->
  ~ spurious_refusal_cfg ACFG i m eff ->
  forced_mprotect (in_arg i 0) (in_arg i 1) (in_arg i 2) m eff.
Proof.
  intros i m eff Hno Hns Hr eff2 m2 evs2 H2.
  change (errno_ret_in mprotect_errnos (eff_ret eff2)) with (ret_in_errnos mprotect_errnos (eff_ret eff2)).
  rewrite <- (refusal_b_226 i m (eff_ret eff2) Hno).
  apply (nonspurious_refusal_no_grant ACFG i m eff Hns (acfg_family_off_226 i Hno)) with (m' := m2) (evs' := evs2).
  - rewrite (refusal_b_226 i m (eff_ret eff) Hno). exact Hr.
  - apply check_syscall_ok_iff. rewrite (check_syscall_mprotect i eff2 m Hno). exact H2.
Qed.

Lemma ns_of_forced_mprotect : forall i m eff,
  bv_unsigned (in_sysno i) = 226%Z ->
  forced_mprotect (in_arg i 0) (in_arg i 1) (in_arg i 2) m eff ->
  ~ spurious_refusal_cfg ACFG i m eff.
Proof.
  intros i m eff Hno Hf (_ & Hr & (eff' & m' & evs' & Hs & Hnr)).
  rewrite (refusal_b_226 i m _ Hno) in Hr. rewrite (refusal_b_226 i m _ Hno) in Hnr.
  apply check_syscall_ok_iff in Hs. rewrite (check_syscall_mprotect i eff' m Hno) in Hs.
  pose proof (Hf Hr _ _ _ Hs) as Hx. change (errno_ret_in mprotect_errnos (eff_ret eff')) with
    (ret_in_errnos mprotect_errnos (eff_ret eff')) in Hx. congruence.
Qed.

(** The forms the proofs use: an mmap (mprotect) input's checker and filter, as the edited checker. *)
Lemma check_mmap_ed_of_ns : forall i m eff m' evs,
  bv_unsigned (in_sysno i) = 222%Z ->
  check_syscall i eff m = CheckOk m' evs ->
  ~ spurious_refusal_cfg ACFG i m eff ->
  mmap_corner_free (in_arg i 0) (in_arg i 1) (in_arg i 2) (in_arg i 3) (in_arg i 5) m eff ->
  check_mmap_ed (in_arg i 0) (in_arg i 1) (in_arg i 2) (in_arg i 3) (in_arg i 4) (in_arg i 5) eff m = CheckOk m' evs.
Proof.
  intros i m eff m' evs Hno Hc Hns Hcf. rewrite (check_syscall_mmap i eff m Hno) in Hc.
  apply check_mmap_ed_fwd; [exact Hc| apply forced_of_ns_mmap; assumption| exact Hcf].
Qed.

Lemma ns_of_check_mmap_ed : forall i m eff m' evs,
  bv_unsigned (in_sysno i) = 222%Z ->
  check_mmap_ed (in_arg i 0) (in_arg i 1) (in_arg i 2) (in_arg i 3) (in_arg i 4) (in_arg i 5) eff m = CheckOk m' evs ->
  check_syscall i eff m = CheckOk m' evs /\ ~ spurious_refusal_cfg ACFG i m eff.
Proof.
  intros i m eff m' evs Hno H. destruct (check_mmap_ed_bwd _ _ _ _ _ _ _ _ _ _ H) as [Hc Hf].
  split; [rewrite (check_syscall_mmap i eff m Hno); exact Hc| apply ns_of_forced_mmap; assumption].
Qed.

Lemma check_mprotect_ed_of_ns : forall i m eff m' evs,
  bv_unsigned (in_sysno i) = 226%Z ->
  check_syscall i eff m = CheckOk m' evs ->
  ~ spurious_refusal_cfg ACFG i m eff ->
  check_mprotect_ed (in_arg i 0) (in_arg i 1) (in_arg i 2) eff m = CheckOk m' evs.
Proof.
  intros i m eff m' evs Hno Hc Hns. rewrite (check_syscall_mprotect i eff m Hno) in Hc.
  apply check_mprotect_ed_fwd; [exact Hc| apply forced_of_ns_mprotect; assumption].
Qed.

Lemma ns_of_check_mprotect_ed : forall i m eff m' evs,
  bv_unsigned (in_sysno i) = 226%Z ->
  check_mprotect_ed (in_arg i 0) (in_arg i 1) (in_arg i 2) eff m = CheckOk m' evs ->
  check_syscall i eff m = CheckOk m' evs /\ ~ spurious_refusal_cfg ACFG i m eff.
Proof.
  intros i m eff m' evs Hno H. destruct (check_mprotect_ed_bwd _ _ _ _ _ _ _ H) as [Hc Hf].
  split; [rewrite (check_syscall_mprotect i eff m Hno); exact Hc| apply ns_of_forced_mprotect; assumption].
Qed.

(** A non-refusal and the mmap fixed-read-write arms: the corner premise holds when the arm is not read-write, when
    nothing is destroyed, or when the commit's budget test passes. *)
Lemma mmap_corner_free_not_rw : forall addr len prot flags off m eff,
  mmap_fixed_rw_b prot flags off = false -> mmap_corner_free addr len prot flags off m eff.
Proof. intros addr len prot flags off m eff H H'. congruence. Qed.
