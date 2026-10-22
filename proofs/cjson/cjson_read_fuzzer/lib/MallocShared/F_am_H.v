(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)

(* [comment removed for export] *)
From Stdlib Require ZArith.
From Stdlib Require NArith.
From Stdlib Require List.
From Stdlib Require Lia.
From Stdlib Require Bool.
From stdpp Require gmap.
From LinuxProcessSemantics.LinuxProcessSem Require BvBase.
From LinuxProcessSemantics.LinuxProcessSem Require RiscvSemantics.
From LinuxProcessSemantics.LinuxProcessSem Require MemImageType.
From LinuxProcessSemantics.LinuxProcessSem Require State.
From LinuxProcessSemantics.LinuxProcessSem Require Run.
From LinuxProcessSemantics.Riscv Require Prelude.
From LinuxProcessSemantics.Riscv Require Instr.
From LinuxProcessSemantics.Riscv Require Decode.
From LinuxProcessSemantics.Riscv Require DecodeC.
From LinuxProcessSemantics.Riscv Require Sem.
From LinuxProcessSemantics.Riscv Require Fpu.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib Require Tac.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib Require Image.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib Require ZBridge.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib Require SysStep.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib Require SFModel.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib Require Arr.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib Require ITree.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib Require Nodes.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib Require Decode.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require F_mm_syscalls.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require MallocRep.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require MallocFacts_Bpres.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require MallocTree.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec Require STree.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec Require Malloc.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec Require MallocCtrl.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec Require Prog.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require F_am_E.
Module F_am_F.
(* [comment removed for export] *)
(* [comment removed for export] *)
Import Stdlib.ZArith.ZArith Stdlib.NArith.NArith Stdlib.Lists.List Stdlib.micromega.Lia Stdlib.Bool.Bool.
Import stdpp.gmap.
Import LinuxProcessSemantics.LinuxProcessSem.BvBase LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics LinuxProcessSemantics.LinuxProcessSem.MemImageType LinuxProcessSemantics.LinuxProcessSem.State LinuxProcessSemantics.LinuxProcessSem.Run.
Import LinuxProcessSemantics.Riscv.Prelude LinuxProcessSemantics.Riscv.Instr LinuxProcessSemantics.Riscv.Decode LinuxProcessSemantics.Riscv.DecodeC LinuxProcessSemantics.Riscv.Sem LinuxProcessSemantics.Riscv.Fpu.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Tac OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Image OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.ZBridge OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.SysStep OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.SFModel OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Arr OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.ITree OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Nodes OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Decode.

Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.F_mm_syscalls OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocRep OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocFacts_Bpres.F_malloc_free OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocTree.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec.STree OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec.Malloc OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec.MallocCtrl OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec.Prog.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocFacts_Bpres.MallocKit_B OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocFacts_Bpres.MallocModel_B OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.F_am_E.MallocKit_B3 OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocFacts_Bpres.F_ntf_B.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.F_am_E.F_am_A OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.F_am_E.F_am_K OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.F_am_E.F_am_C.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Import ListNotations.
Open Scope bv_scope.
Open Scope Z_scope.

(* [comment removed for export] *)
Section CeilWrap.
Context {ACEIL : Ceil}.


Local Ltac Z.euclidean_division_equations_cleanup ::= idtac.

Lemma carve_st_regions st p : s_regions (carve_st st p) = s_regions st.
Proof.
  unfold carve_st. cbn [ctx upd_ctx s_ctx set_avail_meta_areas set_avail_meta_area_count c_meta_area_tail].
  destruct (c_meta_area_tail (s_ctx st)); reflexivity.
Qed.

(* [comment removed for export] *)
Definition mp_strict (a : range_ans) : Prop := match a with RgErr e => e <> 38 | RgDone b => b = true end.
Lemma dec_mprotect_rw_weaken A L rsp a : dec_mprotect_rw A L rsp = Some a -> dec_mprotect A L rsp = Some a /\ mp_strict a.
Proof.
  unfold dec_mprotect_rw. destruct (dec_mprotect A L rsp) as [[e|b]|]; [| | discriminate].
  - destruct (Z.eqb_spec e ENOSYS); [discriminate|]. intros H; inversion H; subst. split; [reflexivity|]. cbn. unfold ENOSYS in *. exact n.
  - destruct b; [| discriminate]. intros H; inversion H; subst. split; reflexivity.
Qed.


End CeilWrap.
End F_am_F.

(* [comment removed for export] *)
Module F_am_G.
(* [comment removed for export] *)
(* [comment removed for export] *)
Import Stdlib.ZArith.ZArith Stdlib.NArith.NArith Stdlib.Lists.List Stdlib.micromega.Lia Stdlib.Bool.Bool.
Import stdpp.gmap.
Import LinuxProcessSemantics.LinuxProcessSem.BvBase LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics LinuxProcessSemantics.LinuxProcessSem.MemImageType LinuxProcessSemantics.LinuxProcessSem.State LinuxProcessSemantics.LinuxProcessSem.Run.
Import LinuxProcessSemantics.Riscv.Prelude LinuxProcessSemantics.Riscv.Instr LinuxProcessSemantics.Riscv.Decode LinuxProcessSemantics.Riscv.DecodeC LinuxProcessSemantics.Riscv.Sem LinuxProcessSemantics.Riscv.Fpu.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Tac OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Image OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.ZBridge OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.SysStep OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.SFModel OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Arr.

Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.F_mm_syscalls OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocRep OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocFacts_Bpres.F_malloc_free OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocTree.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec.STree OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec.Malloc OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec.MallocCtrl.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocFacts_Bpres.MallocKit_B OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocFacts_Bpres.MallocModel_B OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.F_am_E.MallocKit_B3 OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocFacts_Bpres.F_ntf_B.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.F_am_E.F_am_A OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.F_am_E.F_am_K OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.F_am_E.F_am_C F_am_F.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Import ListNotations.
Open Scope bv_scope.
Open Scope Z_scope.

(* [comment removed for export] *)
Section CeilWrap.
Context {ACEIL : Ceil}.


Local Ltac Z.euclidean_division_equations_cleanup ::= idtac.

(* [comment removed for export] *)
(* [comment removed for export] *)
Definition mm_ok_st (st : mstate) (rid : N) (n : Z) : mstate :=
  upd_ctx (fun c => set_meta_alloc_shift (c_meta_alloc_shift c + 1) (set_avail_meta_area_count (n - 1) (set_avail_meta_areas (Some (rid, 4096)) c))) st.

End CeilWrap.
End F_am_G.

(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From stdpp Require Import gmap.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run Fs.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib Require Import Tac Image ZBridge SysStep SFModel Arr ITree Nodes Decode.

From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require Import F_mm_syscalls MallocRep.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require MallocFacts_Bpres.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocFacts_Bpres.F_malloc_free.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require Import MallocTree.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec Require Import STree Malloc MallocCtrl Prog.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec Require KStep.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require MallocFacts_Bpres.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocFacts_Bpres.MallocKit_B.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require MallocFacts_Bpres.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocFacts_Bpres.MallocModel_B.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require F_am_E.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.F_am_E.MallocKit_B3.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require MallocFacts_Bpres.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocFacts_Bpres.F_ntf_B.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require F_am_E.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.F_am_E.F_am_A.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require F_am_E.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.F_am_E.F_am_K.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require F_am_E.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.F_am_E.F_am_C.
Import F_am_F.
Import F_am_G.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Import ListNotations.
Open Scope bv_scope.
Open Scope Z_scope.

(* [comment removed for export] *)
Section CeilWrap.
Context {ACEIL : Ceil}.


Local Ltac Z.euclidean_division_equations_cleanup ::= idtac.

(* [comment removed for export] *)
(* [comment removed for export] *)
Section BRKNODES.
Variables (x1 sp gp tp t0 t1 t2 s0 s1 a1 a2 a3 a4 a5 a6 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 : word) (F : bvmap 5 word) (fc : bv 32)
          (m : word -> option byte).

(* [comment removed for export] *)
Definition brk_res (cur req : Z) (a : brk_ans) : Z := match a with BrkGrown => req | BrkSame => cur end.
Definition brk_mem (cur req : Z) (a : brk_ans) : word -> option byte :=
  match a with
  | BrkGrown => match brk_new_pages cur req with Some (lo, n) => apply_zeros m [(wa lo, Z_to_bv 64 n)] | None => m end
  | BrkSame => m
  end.
End BRKNODES.

(* [comment removed for export] *)
(* [comment removed for export] *)
Lemma land_neg_aligned cur : 0 < cur < 2^64 -> cur mod 4096 = 0 -> Z.land (bv_unsigned (Z_to_bv 64 (0 + - cur))) 4095 = 0.
Proof.
  intros H AL. rewrite Z_to_bv_unsigned. unfold bv_wrap. change (bv_modulus 64) with (2^64).
  replace ((0 + - cur) mod 2^64) with ((2^52 - cur / 4096) * 4096) by (Z.div_mod_to_equations; lia).
  change 4095 with (Z.ones 12). rewrite Z.land_ones by lia. change (2^12) with 4096. apply Z.mod_mul. lia.
Qed.

(* [comment removed for export] *)
Lemma brk_new_pages_aligned cur n : 0 <= cur -> 0 < n -> cur mod 4096 = 0 -> n mod 4096 = 0 ->
  brk_new_pages cur (cur + n) = Some (cur, n).
Proof.
  intros C0 N0 CA NA. unfold brk_new_pages. rewrite <- !KStep.round_up_pg_eq.
  rewrite !KStep.round_up_pg_aligned by (auto; rewrite Z.add_mod, CA, NA by lia; reflexivity).
  replace (cur <? cur + n) with true by (symmetry; apply Z.ltb_lt; lia). f_equal. f_equal. lia.
Qed.

(* [comment removed for export] *)
Definition fx_rel (A : Z) (a : fixed_ans) (r : word) (u : bool) : Prop :=
  match a with
  | FxKept e => errno_of r = Some e /\ u = false
  | FxDone => r = Z_to_bv 64 A /\ u = true
  | FxLost e => errno_of r = Some e /\ u = true
  end.
Lemma dec_mmap_fixed_shape A L rsp a : dec_mmap_fixed A L rsp = Some a -> exists r u, fx_rel A a r u /\ rsp = fixed_shape A L r u.
Proof.
  unfold dec_mmap_fixed, fixed_shape. destruct rsp as [r ws zs us cps cis].
  destruct ws; [| discriminate]. destruct zs; [| discriminate].
  assert (CC : (cps = [] /\ cis = []) \/ dec_mmap_fixed A L (mkEffectU r [] [] us cps cis) = None)
    by (destruct us as [|[? ?] [|? ?]]; destruct cps; destruct cis; cbn; auto).
  destruct CC as [[-> ->]|CC]; [| unfold dec_mmap_fixed in CC; rewrite CC; discriminate].
  destruct us as [|[ua un] us].
  - destruct (errno_of r) eqn:E; [| discriminate]. intros H; inversion H; subst. exists r, false. cbn. rewrite E. auto.
  - destruct us; [| discriminate]. destruct (bv_eqb ua (Z_to_bv 64 A) && bv_eqb un (Z_to_bv 64 (mmap_len L))) eqn:E; [| discriminate].
    apply andb_prop in E. destruct E as [E1 E2]. apply Fs.bv_eqb_eq in E1. apply Fs.bv_eqb_eq in E2. subst ua un.
    destruct (errno_of r) eqn:E.
    + intros H; inversion H; subst. exists r, true. cbn. rewrite E. auto.
    + destruct (bv_eqb r (Z_to_bv 64 A)) eqn:E3; [| discriminate]. apply Fs.bv_eqb_eq in E3. intros H; inversion H; subst. exists (Z_to_bv 64 A), true. cbn. auto.
Qed.

End CeilWrap.
