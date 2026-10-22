(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib Require Import PropExec.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Lib Require Import Tac WalkLib SegsA0.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz Require Import BzTac BzTac2 BzArr BzCMem BzCStream BzCState BzCMtf BzArrD BzCRebuildF CmpMem CmpCut CmpCutSM CmpCutSmA CmpCutSmB BzCFactsSmA BzCFactsSmB CmpSmKit CmpFsKit CmpHmKit.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz Require Import AsanKit AsanCut.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz Require Import A0_cmp_fsV.   (* [comment removed for export] *)
From Stdlib Require Lia. Unset Lia Cache.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib Require Import ACeilTac.
Import ListNotations. Open Scope bv_scope.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib Require Import ACeil.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz Require Import BzParams.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz Require Import CmpCut6.   (* [comment removed for export] *)
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz Require Import CmpLiaP.   (* [comment removed for export] *)
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Lib Require StepFast.
Local Ltac Lib.Step.step_core segs R F pc fc rv m ro ::= StepFast.sf_step_core.
Local Ltac Lib.Step.zstep ::= StepFast.sf_zstep.
#[local] Ltac2 Set StepFast.sf_foldgoal := Ltac2.Init.true.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Lib Require StoreFast StoreFastZ StoreFastC.
Local Ltac Lib.Step.transport_chunks segs m a bs ::= StoreFast.transport_chunks_fast segs m a bs.
Local Ltac Lib.Tac.footprint_after_store segs m a bs ::= StoreFast.footprint_after_store_fast segs m a bs.
Local Ltac Lib.Step.mem_after_store ::= first [ StoreFastC.mem_after_store_fastzc | StoreFastZ.mem_after_store_fastz | StoreFast.mem_after_store_fast ].
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Local Ltac Z.euclidean_division_equations_cleanup ::= idtac.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz Require CmpFast.   (* [comment removed for export] *)
Local Ltac BzTac.mlia ::= CmpFast.mlia_fast.   (* [comment removed for export] *)
Local Ltac Lib.ZBridge.mlia ::= CmpFast.mlia_fast.   (* [comment removed for export] *)
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Lib Require RangeFast RangeFastEnv.
#[local] Ltac2 Set RangeFast.RF.rc_atom_facts := RangeFastEnv.env_atom_facts.
Local Ltac Lib.ZBridge.flia ::= RangeFast.rc_decide ltac:(first [ assumption | Lib.ZBridge.slim; lia | lia ]).
Local Ltac Lib.ZBridge.mlia ::= RangeFast.rc_decide ltac:(CmpFast.mlia_fast).
Local Ltac Bz.BzTac.mlia ::= RangeFast.rc_decide ltac:(CmpFast.mlia_fast).
#[local] Ltac2 Set RangeFast.RF.rc_or_boxes := fun () => [constr:(@id); constr:(Lib.StoreFast.sf_hide)].
Local Ltac Lib.StoreFast.tlia ::= first [ Zify.zify; xlia zchecker | RangeFast.rc_prune_lia | Lib.StoreFast.sf_unhide; first [ Lib.StoreFast.zify_prune_neg; Zify.zify; xlia zchecker | Lib.StoreFast.zify_prune_plain; Zify.zify; xlia zchecker | lia ] ].
Local Ltac Bz.BzSepTac.tlia2 ::= first [ RangeFast.rc_prune_lia | Lib.StoreFast.sf_unhide; Bz.BzSepTac.unhide_disj; first [ Lib.StoreFast.zify_prune_neg; Zify.zify; xlia zchecker | Lib.StoreFast.zify_prune_plain; Zify.zify; xlia zchecker | Zify.zify; xlia zchecker ] ].
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz Require CmpLiaC.   (* [comment removed for export] *)
Local Ltac lia ::= CmpLiaC.lia_c.   (* [comment removed for export] *)
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz Require CmpSepV.   (* [comment removed for export] *)
Local Ltac Lib.Step.slia ::= CmpSepV.slia_v.   (* [comment removed for export] *)
Local Ltac Lib.StoreFast.tslia ::= CmpSepV.tslia_v.   (* [comment removed for export] *)
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz Require CmpStEq.   (* [comment removed for export] *)
Local Ltac BzTac.st_eq ::= CmpStEq.st_eq_fast.   (* [comment removed for export] *)
Local Ltac simpl_arr_sizes ::= CmpFast.sas10_all.   (* [comment removed for export] *)
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Lib Require Import CpsOpen.
(* [comment removed for export] *)
Local Ltac Lib.Step.solve_load ::= AsanKit.asan_solve_load.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.Bz Require CmpRel.   (* [comment removed for export] *)
Local Ltac lia ::= CmpRel.lia_cr.   (* [comment removed for export] *)
Local Ltac Lib.StoreFast.tlia ::= RelLia.tlia_r.   (* [comment removed for export] *)
Section ACeilS1. Context {BZP : BzParams} {ACEIL__ : ACeil}.

Section FC.
  Variables (cx : cctx) (e : est) (Q : machine_state -> Prop).
  Variables (gp tp s0 : word) (F : bvmap 5 word) (fc : bv 32).
  Variables (P SHE CO FV : Z).
  Variables (lp cb : zarr) (gs nSel totc : Z).
  Hypothesis CX : cctx_ok cx.
  Hypothesis CEP : (CEIL <= P)%Z. Hypothesis PHI : (P + 1616 <= 18446744073709551616)%Z.
  Hypothesis COL : (0 < CO)%Z. Hypothesis COH : (CO + 12 <= CEIL)%Z.
  Notation E := (c_E cx). Notation A1 := (c_A1 cx). Notation J := (c_J cx).
  Notation arr1 := (e_arr1 e). Notation A := (sm_alpha e). Notation nG := (smA_ng e). Notation nMTF := (sm_nmtf e).
  Notation q := (QV arr1 gs). Notation p := (PV arr1 lp gs).
  Hypothesis HA : (3 <= A <= 258)%Z. Hypothesis NG6 : nG = 6%Z.
  Hypothesis Hgs : (0 <= gs)%Z. Hypothesis HgsM : (gs + 50 <= nMTF)%Z. Hypothesis HM : (nMTF <= (NBLOCKMAX + 20))%Z.
  Hypothesis HnS : (0 <= nSel < 18002)%Z. Hypothesis Htc : (0 <= totc <= 4294967296)%Z.
  Hypothesis ZB : zbok arr1.
  Hypothesis QB : forall k, (0 <= k < 50)%Z -> (0 <= q k < A)%Z.
  Hypothesis PB : forall k j, (0 <= k < 50)%Z -> (0 <= j < 3)%Z -> (0 <= p k j < 2097152)%Z.
  Hypothesis PD : forall k j, (0 <= k < 50)%Z -> (0 <= j < 3)%Z -> zdef lp (4 * q k + j) = true.
  Ltac openCX :=
    let H := fresh "CXL" in pose proof CX as H; bz_ceil; bz_params; unfold cctx_ok, ESTATE_SIZE, FTAB_WORDS, BZFILE_SIZE, CEIL in H; cbv zeta in H;
    cps_destruct H as (?XE0 & ?XE1 & ?XA10 & ?XA11 & ?XA20 & ?XA21 & ?XF0 & ?XF1 & ?Xb0 & ?Xb1 & ?Xf0 & ?Xf1 & ?ME & ?MA1 & ?MA2 & ?MF & ?Mb & ?Mf & ?LJ & ?LJb).
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  Ltac bzl :=
    repeat match goal with
    | |- context [Z.shiftr ?a ?k] => is_Zlit_zb k; rewrite (zb_shiftr_div a k) by lia
    | |- context [Z.shiftl ?a ?k] => is_Zlit_zb k; rewrite (zb_shiftl_mul a k) by lia
    | |- context [Z.modulo ?e 18446744073709551616] => rewrite (Z.mod_small e 18446744073709551616) by lia
    | |- context [bv_swrap 32 ?e] => rewrite (swrap32_id e) by lia
    end; zb_fold_lits.
  Ltac lstep := zstep; bzl.
  (* [comment removed for export] *)
  Ltac fstep := AsanKit.a_zstep_nofb; bzl; AsanKit.a_try_lit_branch.
  Ltac frun_to p := first [ AsanKit.a_at_pc p | AsanKit.a_pc_is_lit; fstep; frun_to p | fail 1 "frun_to: stuck before" p ].
  Notation Wsp := [(P + 232, P + 1344)]%Z.
  (* [comment removed for export] *)
  Ltac RDQ VAR1 k :=
    lazymatch goal with MU' : munch _ _ ?mm |- evt _ _ (MS _ _ _ _ _ ?mm _) =>
      let AR1v := fresh "AR1v" in let RD := fresh "RD" in
      pose proof (VAR1 mm MU') as AR1v;
      pose proof (zb8_read2 a0segs mm A1 arr1 ARR1_SIZE (2 * (gs + k)) _ AR1v ltac:(lia) ltac:(lia) ZB ltac:(unfold wa; f_equal; lia)) as RD;
      clear AR1v;
      change (rd16 arr1 (2 * (gs + k))) with (q k) in RD;
      pose proof (QB k ltac:(lia)) as ?QBk;
      lstep; clear RD; rewrite (zx16_lit (q k)) by lia end.
  (* [comment removed for export] *)
  Ltac RDP VLPK k j :=
    lazymatch goal with MU' : munch _ _ ?mm |- evt _ _ (MS _ _ _ _ _ ?mm _) =>
      let LPKv := fresh "LPKv" in let RD := fresh "RD" in
      pose proof (VLPK mm MU') as LPKv;
      pose proof (ovw_read a0segs mm (E + 51640) lp (jseg J 51640 4128) 1032 (4 * q k + j) _ LPKv ltac:(pose proof (QB k ltac:(lia)); lia) (PD k j ltac:(lia) ltac:(lia)) ltac:(unfold wa; f_equal; lia)) as RD;
      clear LPKv;
      change (zget lp (4 * q k + j)) with (p k j) in RD;
      pose proof (PB k j ltac:(lia) ltac:(lia)) as ?PBk;
      lstep; clear RD; rewrite (sx32_of_Z (p k j)) by (change (2^31)%Z with 2147483648%Z; lia) end.
  (* [comment removed for export] *)
  Ltac RDV V :=
    lazymatch goal with MU' : munch _ _ ?mm |- evt _ _ (MS _ _ _ _ _ ?mm _) =>
      let RO := fresh "RO" in pose proof (V mm MU') as RO; lstep; clear RO end.
  Ltac SST := lstep; lit_store.
  (* [comment removed for export] *)
  Ltac CST COST i :=
    lazymatch goal with |- evt _ _ (MS _ _ _ _ _ ?mm _) =>
    pose proof (u8arr_storeN_ok a0segs mm CO _ i 2 _ COST ltac:(lia) ltac:(rewrite zb8_length_nat; lia) ltac:(unfold wa; f_equal; lia)) as SO;
    lstep; store_addr (CO + i)%Z; zb8_store2 COST i; rewrite unsigned_lit in COST by lia end.
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  Lemma A0_fc5 : forall (m me : word -> option byte) (xa2 xa4 x232 x240 x248 x256 x264 x272 x280 x288 x296 x304 x312 x320 x328 x336 x344 x352 x360 x368 x376 x392 x1312 x1320 x1328 x1336 x1360 : word),
    rw_cells a0segs m (P + 232) [C8 x232; C8 x240; C8 x248; C8 x256; C8 x264; C8 x272; C8 x280; C8 x288; C8 x296; C8 x304; C8 x312; C8 x320; C8 x328; C8 x336; C8 x344; C8 x352; C8 x360; C8 x368; C8 x376; C8 (Z_to_bv 64 (p 42 2)); C8 x392; C8 (Z_to_bv 64 (p 42 1)); C8 (Z_to_bv 64 (p 42 0)); C8 (Z_to_bv 64 (p 41 2)); C8 (Z_to_bv 64 (p 41 1)); C8 (Z_to_bv 64 (p 41 0)); C8 (Z_to_bv 64 (p 40 2)); C8 (Z_to_bv 64 (p 40 1)); C8 (Z_to_bv 64 (p 40 0)); C8 (Z_to_bv 64 (p 39 2)); C8 (Z_to_bv 64 (p 39 1)); C8 (Z_to_bv 64 (p 39 0)); C8 (Z_to_bv 64 (p 38 2)); C8 (Z_to_bv 64 (p 38 1)); C8 (Z_to_bv 64 (p 38 0)); C8 (Z_to_bv 64 (p 37 2)); C8 (Z_to_bv 64 (p 37 1)); C8 (Z_to_bv 64 (p 37 0)); C8 (Z_to_bv 64 (p 36 2)); C8 (Z_to_bv 64 (p 36 1)); C8 (Z_to_bv 64 (p 36 0)); C8 (Z_to_bv 64 (p 35 2)); C8 (Z_to_bv 64 (p 35 1)); C8 (Z_to_bv 64 (p 35 0)); C8 (Z_to_bv 64 (p 34 2)); C8 (Z_to_bv 64 (p 34 1)); C8 (Z_to_bv 64 (p 34 0)); C8 (Z_to_bv 64 (p 33 2)); C8 (Z_to_bv 64 (p 33 1)); C8 (Z_to_bv 64 (p 33 0)); C8 (Z_to_bv 64 (p 32 2)); C8 (Z_to_bv 64 (p 32 1)); C8 (Z_to_bv 64 (p 32 0)); C8 (Z_to_bv 64 (p 31 2)); C8 (Z_to_bv 64 (p 31 1)); C8 (Z_to_bv 64 (p 31 0)); C8 (Z_to_bv 64 (p 30 2)); C8 (Z_to_bv 64 (p 30 1)); C8 (Z_to_bv 64 (p 30 0)); C8 (Z_to_bv 64 (p 29 2)); C8 (Z_to_bv 64 (p 29 1)); C8 (Z_to_bv 64 (p 29 0)); C8 (Z_to_bv 64 (p 28 2)); C8 (Z_to_bv 64 (p 28 1)); C8 (Z_to_bv 64 (p 28 0)); C8 (Z_to_bv 64 (p 27 2)); C8 (Z_to_bv 64 (p 27 1)); C8 (Z_to_bv 64 (p 27 0)); C8 (Z_to_bv 64 (p 26 2)); C8 (Z_to_bv 64 (p 26 1)); C8 (Z_to_bv 64 (p 26 0)); C8 (Z_to_bv 64 (p 25 2)); C8 (Z_to_bv 64 (p 25 1)); C8 (Z_to_bv 64 (p 25 0)); C8 (Z_to_bv 64 (p 24 2)); C8 (Z_to_bv 64 (p 24 1)); C8 (Z_to_bv 64 (p 24 0)); C8 (Z_to_bv 64 (p 23 2)); C8 (Z_to_bv 64 (p 23 1)); C8 (Z_to_bv 64 (p 23 0)); C8 (Z_to_bv 64 (p 22 2)); C8 (Z_to_bv 64 (p 22 1)); C8 (Z_to_bv 64 (p 22 0)); C8 (Z_to_bv 64 (p 21 2)); C8 (Z_to_bv 64 (p 21 1)); C8 (Z_to_bv 64 (p 21 0)); C8 (Z_to_bv 64 (p 20 2)); C8 (Z_to_bv 64 (p 20 1)); C8 (Z_to_bv 64 (p 20 0)); C8 (Z_to_bv 64 (p 19 2)); C8 (Z_to_bv 64 (p 19 1)); C8 (Z_to_bv 64 (p 19 0)); C8 (Z_to_bv 64 (p 18 2)); C8 (Z_to_bv 64 (p 18 1)); C8 (Z_to_bv 64 (p 18 0)); C8 (Z_to_bv 64 (p 17 2)); C8 (Z_to_bv 64 (p 17 1)); C8 (Z_to_bv 64 (p 17 0)); C8 (Z_to_bv 64 (p 16 2)); C8 (Z_to_bv 64 (p 16 1)); C8 (Z_to_bv 64 (p 16 0)); C8 (Z_to_bv 64 (p 15 2)); C8 (Z_to_bv 64 (p 15 1)); C8 (Z_to_bv 64 (p 15 0)); C8 (Z_to_bv 64 (p 14 2)); C8 (Z_to_bv 64 (p 14 1)); C8 (Z_to_bv 64 (p 14 0)); C8 (Z_to_bv 64 (p 13 2)); C8 (Z_to_bv 64 (p 13 1)); C8 (Z_to_bv 64 (p 13 0)); C8 (Z_to_bv 64 (p 12 2)); C8 (Z_to_bv 64 (p 12 1)); C8 (Z_to_bv 64 (p 12 0)); C8 (Z_to_bv 64 (p 11 2)); C8 (Z_to_bv 64 (p 11 1)); C8 (Z_to_bv 64 (p 11 0)); C8 (Z_to_bv 64 (p 10 2)); C8 (Z_to_bv 64 (p 10 1)); C8 (Z_to_bv 64 (p 10 0)); C8 (Z_to_bv 64 (p 9 2)); C8 (Z_to_bv 64 (p 9 1)); C8 (Z_to_bv 64 (p 9 0)); C8 (Z_to_bv 64 (p 8 2)); C8 (Z_to_bv 64 (p 8 1)); C8 (Z_to_bv 64 (p 8 0)); C8 (Z_to_bv 64 (p 7 2)); C8 (Z_to_bv 64 (p 7 1)); C8 (Z_to_bv 64 (p 7 0)); C8 (Z_to_bv 64 (p 6 2)); C8 (Z_to_bv 64 (p 6 1)); C8 (Z_to_bv 64 (p 6 0)); C8 (Z_to_bv 64 (p 5 2)); C8 (Z_to_bv 64 (p 5 1)); C8 (Z_to_bv 64 (p 5 0)); C8 (Z_to_bv 64 (p 4 2)); C8 x1312; C8 x1320; C8 x1328; C8 x1336] ->
    rw_cells a0segs m (P + 1344) [C8 (Z_to_bv 64 (E + 37708)); C8 (Z_to_bv 64 (999999999)); C8 x1360; C8 (Z_to_bv 64 (flag6 nG)); C8 (Z_to_bv 64 (CO)); C8 (Z_to_bv 64 (FV)); C8 (Z_to_bv 64 (E + 1704)); C8 (Z_to_bv 64 (E + 45448)); C8 (Z_to_bv 64 (E + 45448 + 1032 * nG)); C8 (Z_to_bv 64 (A)); C8 (Z_to_bv 64 (totc)); C8 (Z_to_bv 64 (gs))] ->
    mem_inv a0segs m -> munch [(P + 232, P + 1344); (P + 1360, P + 1368)]%Z me m -> wmono a0segs me m ->
    (forall m', munch [(P + 232, P + 1344); (P + 1360, P + 1368)]%Z me m' -> u8arr a0segs m' A1 (zb8 arr1 ARR1_SIZE)) ->
    shzW a0segs [(P + 232, P + 1344); (P + 1360, P + 1368)]%Z me A1 (A1 + ARR1_SIZE) ->
    (forall m', munch [(P + 232, P + 1344); (P + 1360, P + 1368)]%Z me m' -> u32arr a0segs m' (E + 51640) (ovw lp (jseg J 51640 4128) 1032)) ->
    shzW a0segs [(P + 232, P + 1344); (P + 1360, P + 1368)]%Z me E (E + ESTATE_SIZE) ->
    (forall m',
      rw_cells a0segs m' (P + 232) [C8 (Z_to_bv 64 (p 49 1)); C8 (Z_to_bv 64 (p 49 0)); C8 (Z_to_bv 64 (p 48 2)); C8 (Z_to_bv 64 (p 48 1)); C8 (Z_to_bv 64 (p 48 0)); C8 (Z_to_bv 64 (p 47 2)); C8 (Z_to_bv 64 (p 47 1)); C8 (Z_to_bv 64 (p 47 0)); C8 (Z_to_bv 64 (p 46 2)); C8 (Z_to_bv 64 (p 46 1)); C8 (Z_to_bv 64 (p 46 0)); C8 (Z_to_bv 64 (p 45 2)); C8 (Z_to_bv 64 (p 45 1)); C8 (Z_to_bv 64 (p 45 0)); C8 (Z_to_bv 64 (p 44 0)); C8 (Z_to_bv 64 (p 43 2)); C8 (Z_to_bv 64 (p 43 1)); C8 (Z_to_bv 64 (p 44 2)); C8 (Z_to_bv 64 (p 43 0)); C8 (Z_to_bv 64 (p 42 2)); C8 (Z_to_bv 64 (p 44 1)); C8 (Z_to_bv 64 (p 42 1)); C8 (Z_to_bv 64 (p 42 0)); C8 (Z_to_bv 64 (p 41 2)); C8 (Z_to_bv 64 (p 41 1)); C8 (Z_to_bv 64 (p 41 0)); C8 (Z_to_bv 64 (p 40 2)); C8 (Z_to_bv 64 (p 40 1)); C8 (Z_to_bv 64 (p 40 0)); C8 (Z_to_bv 64 (p 39 2)); C8 (Z_to_bv 64 (p 39 1)); C8 (Z_to_bv 64 (p 39 0)); C8 (Z_to_bv 64 (p 38 2)); C8 (Z_to_bv 64 (p 38 1)); C8 (Z_to_bv 64 (p 38 0)); C8 (Z_to_bv 64 (p 37 2)); C8 (Z_to_bv 64 (p 37 1)); C8 (Z_to_bv 64 (p 37 0)); C8 (Z_to_bv 64 (p 36 2)); C8 (Z_to_bv 64 (p 36 1)); C8 (Z_to_bv 64 (p 36 0)); C8 (Z_to_bv 64 (p 35 2)); C8 (Z_to_bv 64 (p 35 1)); C8 (Z_to_bv 64 (p 35 0)); C8 (Z_to_bv 64 (p 34 2)); C8 (Z_to_bv 64 (p 34 1)); C8 (Z_to_bv 64 (p 34 0)); C8 (Z_to_bv 64 (p 33 2)); C8 (Z_to_bv 64 (p 33 1)); C8 (Z_to_bv 64 (p 33 0)); C8 (Z_to_bv 64 (p 32 2)); C8 (Z_to_bv 64 (p 32 1)); C8 (Z_to_bv 64 (p 32 0)); C8 (Z_to_bv 64 (p 31 2)); C8 (Z_to_bv 64 (p 31 1)); C8 (Z_to_bv 64 (p 31 0)); C8 (Z_to_bv 64 (p 30 2)); C8 (Z_to_bv 64 (p 30 1)); C8 (Z_to_bv 64 (p 30 0)); C8 (Z_to_bv 64 (p 29 2)); C8 (Z_to_bv 64 (p 29 1)); C8 (Z_to_bv 64 (p 29 0)); C8 (Z_to_bv 64 (p 28 2)); C8 (Z_to_bv 64 (p 28 1)); C8 (Z_to_bv 64 (p 28 0)); C8 (Z_to_bv 64 (p 27 2)); C8 (Z_to_bv 64 (p 27 1)); C8 (Z_to_bv 64 (p 27 0)); C8 (Z_to_bv 64 (p 26 2)); C8 (Z_to_bv 64 (p 26 1)); C8 (Z_to_bv 64 (p 26 0)); C8 (Z_to_bv 64 (p 25 2)); C8 (Z_to_bv 64 (p 25 1)); C8 (Z_to_bv 64 (p 25 0)); C8 (Z_to_bv 64 (p 24 2)); C8 (Z_to_bv 64 (p 24 1)); C8 (Z_to_bv 64 (p 24 0)); C8 (Z_to_bv 64 (p 23 2)); C8 (Z_to_bv 64 (p 23 1)); C8 (Z_to_bv 64 (p 23 0)); C8 (Z_to_bv 64 (p 22 2)); C8 (Z_to_bv 64 (p 22 1)); C8 (Z_to_bv 64 (p 22 0)); C8 (Z_to_bv 64 (p 21 2)); C8 (Z_to_bv 64 (p 21 1)); C8 (Z_to_bv 64 (p 21 0)); C8 (Z_to_bv 64 (p 20 2)); C8 (Z_to_bv 64 (p 20 1)); C8 (Z_to_bv 64 (p 20 0)); C8 (Z_to_bv 64 (p 19 2)); C8 (Z_to_bv 64 (p 19 1)); C8 (Z_to_bv 64 (p 19 0)); C8 (Z_to_bv 64 (p 18 2)); C8 (Z_to_bv 64 (p 18 1)); C8 (Z_to_bv 64 (p 18 0)); C8 (Z_to_bv 64 (p 17 2)); C8 (Z_to_bv 64 (p 17 1)); C8 (Z_to_bv 64 (p 17 0)); C8 (Z_to_bv 64 (p 16 2)); C8 (Z_to_bv 64 (p 16 1)); C8 (Z_to_bv 64 (p 16 0)); C8 (Z_to_bv 64 (p 15 2)); C8 (Z_to_bv 64 (p 15 1)); C8 (Z_to_bv 64 (p 15 0)); C8 (Z_to_bv 64 (p 14 2)); C8 (Z_to_bv 64 (p 14 1)); C8 (Z_to_bv 64 (p 14 0)); C8 (Z_to_bv 64 (p 13 2)); C8 (Z_to_bv 64 (p 13 1)); C8 (Z_to_bv 64 (p 13 0)); C8 (Z_to_bv 64 (p 12 2)); C8 (Z_to_bv 64 (p 12 1)); C8 (Z_to_bv 64 (p 12 0)); C8 (Z_to_bv 64 (p 11 2)); C8 (Z_to_bv 64 (p 11 1)); C8 (Z_to_bv 64 (p 11 0)); C8 (Z_to_bv 64 (p 10 2)); C8 (Z_to_bv 64 (p 10 1)); C8 (Z_to_bv 64 (p 10 0)); C8 (Z_to_bv 64 (p 9 2)); C8 (Z_to_bv 64 (p 9 1)); C8 (Z_to_bv 64 (p 9 0)); C8 (Z_to_bv 64 (p 8 2)); C8 (Z_to_bv 64 (p 8 1)); C8 (Z_to_bv 64 (p 8 0)); C8 (Z_to_bv 64 (p 7 2)); C8 (Z_to_bv 64 (p 7 1)); C8 (Z_to_bv 64 (p 37 2 + p 38 2)); C8 (Z_to_bv 64 (p 6 2)); C8 (Z_to_bv 64 (p 6 1)); C8 (Z_to_bv 64 (p 6 0)); C8 (Z_to_bv 64 (p 37 1 + p 38 1)); C8 (Z_to_bv 64 (p 37 0 + p 38 0)); C8 (Z_to_bv 64 (E + 16 * q 49 + 51648)); C8 (Z_to_bv 64 (p 29 0 + p 30 0)); C8 (Z_to_bv 64 (1)); C8 (Z_to_bv 64 (49)); C8 (Z_to_bv 64 (gs + 49)); C8 (Z_to_bv 64 (gs + 50))] ->
      rw_cells a0segs m' (P + 1344) [C8 (Z_to_bv 64 (E + 37708)); C8 (Z_to_bv 64 (999999999)); C8 (Z_to_bv 64 (nSel)); C8 (Z_to_bv 64 (flag6 nG)); C8 (Z_to_bv 64 (CO)); C8 (Z_to_bv 64 (FV)); C8 (Z_to_bv 64 (E + 1704)); C8 (Z_to_bv 64 (E + 45448)); C8 (Z_to_bv 64 (E + 45448 + 1032 * nG)); C8 (Z_to_bv 64 (A)); C8 (Z_to_bv 64 (totc)); C8 (Z_to_bv 64 (gs))] ->
      mem_inv a0segs m' -> munch [(P + 232, P + 1344); (P + 1360, P + 1368)]%Z me m' -> wmono a0segs me m' ->
      evt a0segs Q (MS (mkR (Z_to_bv 64 (p 22 0 + p 23 0 + p 24 0)) (Z_to_bv 64 (P)) gp tp (Z_to_bv 64 (p 4 0 + p 5 0 + p 6 0)) (Z_to_bv 64 (p 0 1 + p 1 1 + p 2 1 + p 3 1)) (Z_to_bv 64 (p 31 2)) s0 (Z_to_bv 64 (P)) (Z_to_bv 64 (p 37 2 + p 38 2)) (Z_to_bv 64 (p 29 0 + p 30 0 + p 31 0)) (Z_to_bv 64 (p 22 1 + p 23 1 + p 24 1)) (Z_to_bv 64 (p 11 0 + p 12 0 + p 13 0)) (Z_to_bv 64 (p 0 0 + p 1 0 + p 2 0 + p 3 0)) (Z_to_bv 64 (p 4 2 + p 5 2 + p 6 2)) (Z_to_bv 64 (p 22 2 + p 23 2 + p 24 2)) (Z_to_bv 64 (p 0 2 + p 1 2 + p 2 2 + p 3 2)) (Z_to_bv 64 (p 16 0 + p 17 0 + p 18 0)) (Z_to_bv 64 (p 7 1 + p 8 1 + p 9 1)) (Z_to_bv 64 (2147450880)) (Z_to_bv 64 (p 11 1 + p 12 1 + p 13 1)) (Z_to_bv 64 (p 29 1 + p 30 1 + p 31 1)) (Z_to_bv 64 (p 11 2 + p 12 2 + p 13 2)) (Z_to_bv 64 (p 29 2 + p 30 2)) (Z_to_bv 64 (p 2 1 + p 3 1)) (Z_to_bv 64 (p 7 2 + p 8 2 + p 9 2)) (Z_to_bv 64 (p 4 1 + p 5 1 + p 6 1)) (Z_to_bv 64 (p 2 0 + p 3 0)) (Z_to_bv 64 (p 7 0 + p 8 0 + p 9 0)) (Z_to_bv 64 (p 16 1 + p 17 1 + p 18 1)) (Z_to_bv 64 (p 16 2 + p 17 2 + p 18 2)))
           F (Z_to_bv 64 0x8c708) fc None m' (seg_rom a0segs))) ->
    evt a0segs Q (MS (mkR (Z_to_bv 64 (p 3 2)) (Z_to_bv 64 (P)) gp tp (Z_to_bv 64 (p 0 1)) (Z_to_bv 64 (p 4 1)) (Z_to_bv 64 (p 0 2)) s0 (Z_to_bv 64 (P)) (Z_to_bv 64 (A1 + 2 * gs)) (Z_to_bv 64 (E + 16 * q 43 + 51640)) xa2 (Z_to_bv 64 (E + 51640)) xa4 (Z_to_bv 64 (p 42 0)) (Z_to_bv 64 (p 4 0)) (Z_to_bv 64 (p 0 0)) (Z_to_bv 64 (49)) (Z_to_bv 64 (p 1 2)) (Z_to_bv 64 (2147450880)) (Z_to_bv 64 (nSel)) (Z_to_bv 64 (1)) (Z_to_bv 64 (p 2 0)) (Z_to_bv 64 (p 2 2)) (Z_to_bv 64 (p 2 1)) (Z_to_bv 64 (p 3 0)) (Z_to_bv 64 (p 3 1)) (Z_to_bv 64 (p 1 0)) (Z_to_bv 64 (gs + 50)) (Z_to_bv 64 (p 1 1)) (Z_to_bv 64 (gs + 49)))
         F (Z_to_bv 64 0x8c1f0) fc None m (seg_rom a0segs)).
  Proof.
    intros m me xa2 xa4 x232 x240 x248 x256 x264 x272 x280 x288 x296 x304 x312 x320 x328 x336 x344 x352 x360 x368 x376 x392 x1312 x1320 x1328 x1336 x1360 SPL HI MI MU WM VAR1 SHa VLPK SHe K.
    openCX. try clear ME MA1 MA2 MF Mb Mf. clear XA20 XA21 XF0 XF1 Xb0 Xb1 Xf0 Xf1 LJb. unfold ESTATE_SIZE in SHe. assert (HAd : A = (e_nInUse e + 2)%Z) by reflexivity.
    pose proof (QB 43 ltac:(lia)) as QB43.
    pose proof (PB 0 0 ltac:(lia) ltac:(lia)) as PB0_0.
    pose proof (PB 1 0 ltac:(lia) ltac:(lia)) as PB1_0.
    pose proof (PB 2 0 ltac:(lia) ltac:(lia)) as PB2_0.
    pose proof (PB 3 0 ltac:(lia) ltac:(lia)) as PB3_0.
    pose proof (PB 4 0 ltac:(lia) ltac:(lia)) as PB4_0.
    pose proof (PB 5 0 ltac:(lia) ltac:(lia)) as PB5_0.
    pose proof (PB 6 0 ltac:(lia) ltac:(lia)) as PB6_0.
    pose proof (PB 7 0 ltac:(lia) ltac:(lia)) as PB7_0.
    pose proof (PB 8 0 ltac:(lia) ltac:(lia)) as PB8_0.
    pose proof (PB 9 0 ltac:(lia) ltac:(lia)) as PB9_0.
    pose proof (PB 10 0 ltac:(lia) ltac:(lia)) as PB10_0.
    pose proof (PB 11 0 ltac:(lia) ltac:(lia)) as PB11_0.
    pose proof (PB 12 0 ltac:(lia) ltac:(lia)) as PB12_0.
    pose proof (PB 13 0 ltac:(lia) ltac:(lia)) as PB13_0.
    pose proof (PB 14 0 ltac:(lia) ltac:(lia)) as PB14_0.
    pose proof (PB 15 0 ltac:(lia) ltac:(lia)) as PB15_0.
    pose proof (PB 16 0 ltac:(lia) ltac:(lia)) as PB16_0.
    pose proof (PB 17 0 ltac:(lia) ltac:(lia)) as PB17_0.
    pose proof (PB 18 0 ltac:(lia) ltac:(lia)) as PB18_0.
    pose proof (PB 19 0 ltac:(lia) ltac:(lia)) as PB19_0.
    pose proof (PB 20 0 ltac:(lia) ltac:(lia)) as PB20_0.
    pose proof (PB 21 0 ltac:(lia) ltac:(lia)) as PB21_0.
    pose proof (PB 22 0 ltac:(lia) ltac:(lia)) as PB22_0.
    pose proof (PB 23 0 ltac:(lia) ltac:(lia)) as PB23_0.
    pose proof (PB 24 0 ltac:(lia) ltac:(lia)) as PB24_0.
    pose proof (PB 25 0 ltac:(lia) ltac:(lia)) as PB25_0.
    pose proof (PB 26 0 ltac:(lia) ltac:(lia)) as PB26_0.
    pose proof (PB 27 0 ltac:(lia) ltac:(lia)) as PB27_0.
    pose proof (PB 28 0 ltac:(lia) ltac:(lia)) as PB28_0.
    pose proof (PB 29 0 ltac:(lia) ltac:(lia)) as PB29_0.
    pose proof (PB 30 0 ltac:(lia) ltac:(lia)) as PB30_0.
    pose proof (PB 31 0 ltac:(lia) ltac:(lia)) as PB31_0.
    pose proof (PB 32 0 ltac:(lia) ltac:(lia)) as PB32_0.
    pose proof (PB 33 0 ltac:(lia) ltac:(lia)) as PB33_0.
    pose proof (PB 34 0 ltac:(lia) ltac:(lia)) as PB34_0.
    pose proof (PB 35 0 ltac:(lia) ltac:(lia)) as PB35_0.
    pose proof (PB 36 0 ltac:(lia) ltac:(lia)) as PB36_0.
    pose proof (PB 37 0 ltac:(lia) ltac:(lia)) as PB37_0.
    pose proof (PB 38 0 ltac:(lia) ltac:(lia)) as PB38_0.
    pose proof (PB 39 0 ltac:(lia) ltac:(lia)) as PB39_0.
    pose proof (PB 40 0 ltac:(lia) ltac:(lia)) as PB40_0.
    pose proof (PB 41 0 ltac:(lia) ltac:(lia)) as PB41_0.
    pose proof (PB 42 0 ltac:(lia) ltac:(lia)) as PB42_0.
    pose proof (PB 0 1 ltac:(lia) ltac:(lia)) as PB0_1.
    pose proof (PB 1 1 ltac:(lia) ltac:(lia)) as PB1_1.
    pose proof (PB 2 1 ltac:(lia) ltac:(lia)) as PB2_1.
    pose proof (PB 3 1 ltac:(lia) ltac:(lia)) as PB3_1.
    pose proof (PB 4 1 ltac:(lia) ltac:(lia)) as PB4_1.
    pose proof (PB 5 1 ltac:(lia) ltac:(lia)) as PB5_1.
    pose proof (PB 6 1 ltac:(lia) ltac:(lia)) as PB6_1.
    pose proof (PB 7 1 ltac:(lia) ltac:(lia)) as PB7_1.
    pose proof (PB 8 1 ltac:(lia) ltac:(lia)) as PB8_1.
    pose proof (PB 9 1 ltac:(lia) ltac:(lia)) as PB9_1.
    pose proof (PB 10 1 ltac:(lia) ltac:(lia)) as PB10_1.
    pose proof (PB 11 1 ltac:(lia) ltac:(lia)) as PB11_1.
    pose proof (PB 12 1 ltac:(lia) ltac:(lia)) as PB12_1.
    pose proof (PB 13 1 ltac:(lia) ltac:(lia)) as PB13_1.
    pose proof (PB 14 1 ltac:(lia) ltac:(lia)) as PB14_1.
    pose proof (PB 15 1 ltac:(lia) ltac:(lia)) as PB15_1.
    pose proof (PB 16 1 ltac:(lia) ltac:(lia)) as PB16_1.
    pose proof (PB 17 1 ltac:(lia) ltac:(lia)) as PB17_1.
    pose proof (PB 18 1 ltac:(lia) ltac:(lia)) as PB18_1.
    pose proof (PB 19 1 ltac:(lia) ltac:(lia)) as PB19_1.
    pose proof (PB 20 1 ltac:(lia) ltac:(lia)) as PB20_1.
    pose proof (PB 21 1 ltac:(lia) ltac:(lia)) as PB21_1.
    pose proof (PB 22 1 ltac:(lia) ltac:(lia)) as PB22_1.
    pose proof (PB 23 1 ltac:(lia) ltac:(lia)) as PB23_1.
    pose proof (PB 24 1 ltac:(lia) ltac:(lia)) as PB24_1.
    pose proof (PB 25 1 ltac:(lia) ltac:(lia)) as PB25_1.
    pose proof (PB 26 1 ltac:(lia) ltac:(lia)) as PB26_1.
    pose proof (PB 27 1 ltac:(lia) ltac:(lia)) as PB27_1.
    pose proof (PB 28 1 ltac:(lia) ltac:(lia)) as PB28_1.
    pose proof (PB 29 1 ltac:(lia) ltac:(lia)) as PB29_1.
    pose proof (PB 30 1 ltac:(lia) ltac:(lia)) as PB30_1.
    pose proof (PB 31 1 ltac:(lia) ltac:(lia)) as PB31_1.
    pose proof (PB 32 1 ltac:(lia) ltac:(lia)) as PB32_1.
    pose proof (PB 33 1 ltac:(lia) ltac:(lia)) as PB33_1.
    pose proof (PB 34 1 ltac:(lia) ltac:(lia)) as PB34_1.
    pose proof (PB 35 1 ltac:(lia) ltac:(lia)) as PB35_1.
    pose proof (PB 36 1 ltac:(lia) ltac:(lia)) as PB36_1.
    pose proof (PB 37 1 ltac:(lia) ltac:(lia)) as PB37_1.
    pose proof (PB 38 1 ltac:(lia) ltac:(lia)) as PB38_1.
    pose proof (PB 39 1 ltac:(lia) ltac:(lia)) as PB39_1.
    pose proof (PB 40 1 ltac:(lia) ltac:(lia)) as PB40_1.
    pose proof (PB 41 1 ltac:(lia) ltac:(lia)) as PB41_1.
    pose proof (PB 42 1 ltac:(lia) ltac:(lia)) as PB42_1.
    pose proof (PB 0 2 ltac:(lia) ltac:(lia)) as PB0_2.
    pose proof (PB 1 2 ltac:(lia) ltac:(lia)) as PB1_2.
    pose proof (PB 2 2 ltac:(lia) ltac:(lia)) as PB2_2.
    pose proof (PB 3 2 ltac:(lia) ltac:(lia)) as PB3_2.
    pose proof (PB 4 2 ltac:(lia) ltac:(lia)) as PB4_2.
    pose proof (PB 5 2 ltac:(lia) ltac:(lia)) as PB5_2.
    pose proof (PB 6 2 ltac:(lia) ltac:(lia)) as PB6_2.
    pose proof (PB 7 2 ltac:(lia) ltac:(lia)) as PB7_2.
    pose proof (PB 8 2 ltac:(lia) ltac:(lia)) as PB8_2.
    pose proof (PB 9 2 ltac:(lia) ltac:(lia)) as PB9_2.
    pose proof (PB 10 2 ltac:(lia) ltac:(lia)) as PB10_2.
    pose proof (PB 11 2 ltac:(lia) ltac:(lia)) as PB11_2.
    pose proof (PB 12 2 ltac:(lia) ltac:(lia)) as PB12_2.
    pose proof (PB 13 2 ltac:(lia) ltac:(lia)) as PB13_2.
    pose proof (PB 14 2 ltac:(lia) ltac:(lia)) as PB14_2.
    pose proof (PB 15 2 ltac:(lia) ltac:(lia)) as PB15_2.
    pose proof (PB 16 2 ltac:(lia) ltac:(lia)) as PB16_2.
    pose proof (PB 17 2 ltac:(lia) ltac:(lia)) as PB17_2.
    pose proof (PB 18 2 ltac:(lia) ltac:(lia)) as PB18_2.
    pose proof (PB 19 2 ltac:(lia) ltac:(lia)) as PB19_2.
    pose proof (PB 20 2 ltac:(lia) ltac:(lia)) as PB20_2.
    pose proof (PB 21 2 ltac:(lia) ltac:(lia)) as PB21_2.
    pose proof (PB 22 2 ltac:(lia) ltac:(lia)) as PB22_2.
    pose proof (PB 23 2 ltac:(lia) ltac:(lia)) as PB23_2.
    pose proof (PB 24 2 ltac:(lia) ltac:(lia)) as PB24_2.
    pose proof (PB 25 2 ltac:(lia) ltac:(lia)) as PB25_2.
    pose proof (PB 26 2 ltac:(lia) ltac:(lia)) as PB26_2.
    pose proof (PB 27 2 ltac:(lia) ltac:(lia)) as PB27_2.
    pose proof (PB 28 2 ltac:(lia) ltac:(lia)) as PB28_2.
    pose proof (PB 29 2 ltac:(lia) ltac:(lia)) as PB29_2.
    pose proof (PB 30 2 ltac:(lia) ltac:(lia)) as PB30_2.
    pose proof (PB 31 2 ltac:(lia) ltac:(lia)) as PB31_2.
    pose proof (PB 32 2 ltac:(lia) ltac:(lia)) as PB32_2.
    pose proof (PB 33 2 ltac:(lia) ltac:(lia)) as PB33_2.
    pose proof (PB 34 2 ltac:(lia) ltac:(lia)) as PB34_2.
    pose proof (PB 35 2 ltac:(lia) ltac:(lia)) as PB35_2.
    pose proof (PB 36 2 ltac:(lia) ltac:(lia)) as PB36_2.
    pose proof (PB 37 2 ltac:(lia) ltac:(lia)) as PB37_2.
    pose proof (PB 38 2 ltac:(lia) ltac:(lia)) as PB38_2.
    pose proof (PB 39 2 ltac:(lia) ltac:(lia)) as PB39_2.
    pose proof (PB 40 2 ltac:(lia) ltac:(lia)) as PB40_2.
    pose proof (PB 41 2 ltac:(lia) ltac:(lia)) as PB41_2.
    pose proof (PB 42 2 ltac:(lia) ltac:(lia)) as PB42_2.
    frun_to 0x8c200%Z. RDP VLPK 43%Z 0%Z.
    frun_to 0x8c204%Z. SST.
    frun_to 0x8c220%Z. RDP VLPK 43%Z 1%Z.
    frun_to 0x8c224%Z. SST.
    frun_to 0x8c240%Z. RDP VLPK 43%Z 2%Z.
    frun_to 0x8c244%Z. SST.
    frun_to 0x8c254%Z. RDQ VAR1 44%Z.
    frun_to 0x8c284%Z. RDP VLPK 44%Z 0%Z.
    frun_to 0x8c288%Z. SST.
    frun_to 0x8c2a4%Z. RDP VLPK 44%Z 1%Z.
    frun_to 0x8c2a8%Z. SST.
    frun_to 0x8c2c4%Z. RDP VLPK 44%Z 2%Z.
    frun_to 0x8c2c8%Z. SST.
    frun_to 0x8c2d4%Z. RDQ VAR1 45%Z.
    frun_to 0x8c304%Z. RDP VLPK 45%Z 0%Z.
    frun_to 0x8c308%Z. SST.
    frun_to 0x8c324%Z. RDP VLPK 45%Z 1%Z.
    frun_to 0x8c328%Z. SST.
    frun_to 0x8c344%Z. RDP VLPK 45%Z 2%Z.
    frun_to 0x8c348%Z. SST.
    frun_to 0x8c354%Z. RDQ VAR1 46%Z.
    frun_to 0x8c384%Z. RDP VLPK 46%Z 0%Z.
    frun_to 0x8c388%Z. SST.
    frun_to 0x8c3a4%Z. RDP VLPK 46%Z 1%Z.
    frun_to 0x8c3a8%Z. SST.
    frun_to 0x8c3c4%Z. RDP VLPK 46%Z 2%Z.
    frun_to 0x8c3c8%Z. SST.
    frun_to 0x8c3d4%Z. RDQ VAR1 47%Z.
    frun_to 0x8c404%Z. RDP VLPK 47%Z 0%Z.
    frun_to 0x8c408%Z. SST.
    frun_to 0x8c424%Z. RDP VLPK 47%Z 1%Z.
    frun_to 0x8c428%Z. SST.
    frun_to 0x8c444%Z. RDP VLPK 47%Z 2%Z.
    frun_to 0x8c448%Z. SST.
    frun_to 0x8c454%Z. RDQ VAR1 48%Z.
    frun_to 0x8c484%Z. RDP VLPK 48%Z 0%Z.
    frun_to 0x8c488%Z. SST.
    frun_to 0x8c4a4%Z. RDP VLPK 48%Z 1%Z.
    frun_to 0x8c4a8%Z. SST.
    frun_to 0x8c4c4%Z. RDP VLPK 48%Z 2%Z.
    frun_to 0x8c4c8%Z. SST.
    frun_to 0x8c4d8%Z. RDQ VAR1 49%Z.
    frun_to 0x8c508%Z. RDP VLPK 49%Z 0%Z.
    frun_to 0x8c50c%Z. SST.
    frun_to 0x8c518%Z. SST.
    frun_to 0x8c51c%Z. SST.
    frun_to 0x8c520%Z. SST.
    frun_to 0x8c524%Z. SST.
    frun_to 0x8c528%Z. SST.
    frun_to 0x8c53c%Z. RDP VLPK 49%Z 1%Z.
    frun_to 0x8c540%Z. SST.
    frun_to 0x8c564%Z. lstep.
    frun_to 0x8c56c%Z. lstep.
    frun_to 0x8c574%Z. lstep.
    frun_to 0x8c578%Z. SST.
    frun_to 0x8c57c%Z. lstep.
    frun_to 0x8c584%Z. lstep.
    frun_to 0x8c588%Z. lstep.
    frun_to 0x8c590%Z. lstep.
    frun_to 0x8c594%Z. lstep.
    frun_to 0x8c59c%Z. lstep.
    frun_to 0x8c5a0%Z. lstep.
    frun_to 0x8c5a8%Z. lstep.
    frun_to 0x8c5ac%Z. lstep.
    frun_to 0x8c5b4%Z. lstep.
    frun_to 0x8c5b8%Z. lstep.
    frun_to 0x8c5c0%Z. lstep.
    frun_to 0x8c5c4%Z. lstep.
    frun_to 0x8c5cc%Z. lstep.
    frun_to 0x8c5d0%Z. lstep.
    frun_to 0x8c5d8%Z. lstep.
    frun_to 0x8c5dc%Z. lstep.
    frun_to 0x8c5e4%Z. lstep.
    frun_to 0x8c5e8%Z. lstep.
    frun_to 0x8c5f0%Z. lstep.
    frun_to 0x8c5f4%Z. lstep.
    frun_to 0x8c5fc%Z. lstep.
    frun_to 0x8c600%Z. lstep.
    frun_to 0x8c608%Z. lstep.
    frun_to 0x8c60c%Z. lstep.
    frun_to 0x8c614%Z. lstep.
    frun_to 0x8c618%Z. lstep.
    frun_to 0x8c620%Z. SST.
    frun_to 0x8c624%Z. lstep.
    frun_to 0x8c628%Z. lstep.
    frun_to 0x8c630%Z. lstep.
    frun_to 0x8c634%Z. lstep.
    frun_to 0x8c63c%Z. lstep.
    frun_to 0x8c640%Z. lstep.
    frun_to 0x8c648%Z. SST.
    frun_to 0x8c64c%Z. lstep.
    frun_to 0x8c650%Z. lstep.
    frun_to 0x8c658%Z. SST.
    frun_to 0x8c65c%Z. lstep.
    frun_to 0x8c660%Z. lstep.
    frun_to 0x8c668%Z. SST.
    frun_to 0x8c678%Z. lstep.
    frun_to 0x8c680%Z. lstep.
    frun_to 0x8c688%Z. lstep.
    frun_to 0x8c690%Z. lstep.
    frun_to 0x8c698%Z. lstep.
    frun_to 0x8c6a0%Z. lstep.
    frun_to 0x8c6a8%Z. lstep.
    frun_to 0x8c6b0%Z. lstep.
    frun_to 0x8c6b8%Z. lstep.
    frun_to 0x8c6c0%Z. lstep.
    frun_to 0x8c6c8%Z. lstep.
    frun_to 0x8c6d0%Z. lstep.
    frun_to 0x8c6d8%Z. lstep.
    frun_to 0x8c6e0%Z. lstep.
    frun_to 0x8c6e8%Z. lstep.
    frun_to 0x8c6f0%Z. lstep.
    frun_to 0x8c6f4%Z. lstep.
    frun_to 0x8c6fc%Z. lstep.
    frun_to 0x8c704%Z. lstep.
    frun_to 0x8c708%Z.
    lazymatch goal with |- evt _ _ (MS _ _ _ _ _ ?mm _) => enter_with (K mm) end;
      [ st_eq
      | lazymatch type of SPL with rw_cells _ _ _ ?L => lazymatch goal with |- rw_cells _ _ _ ?L2 => replace L2 with L; [exact SPL| CmpFast.rlf] end end
      | lazymatch type of HI with rw_cells _ _ _ ?L => lazymatch goal with |- rw_cells _ _ _ ?L2 => replace L2 with L; [exact HI| CmpFast.rlf] end end
      | assumption | exact MU | exact WM ].
  Qed.
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  Lemma A0_fc6 : forall (m me : word -> option byte),
    rw_cells a0segs m (P + 232) [C8 (Z_to_bv 64 (p 49 1)); C8 (Z_to_bv 64 (p 49 0)); C8 (Z_to_bv 64 (p 48 2)); C8 (Z_to_bv 64 (p 48 1)); C8 (Z_to_bv 64 (p 48 0)); C8 (Z_to_bv 64 (p 47 2)); C8 (Z_to_bv 64 (p 47 1)); C8 (Z_to_bv 64 (p 47 0)); C8 (Z_to_bv 64 (p 46 2)); C8 (Z_to_bv 64 (p 46 1)); C8 (Z_to_bv 64 (p 46 0)); C8 (Z_to_bv 64 (p 45 2)); C8 (Z_to_bv 64 (p 45 1)); C8 (Z_to_bv 64 (p 45 0)); C8 (Z_to_bv 64 (p 44 0)); C8 (Z_to_bv 64 (p 43 2)); C8 (Z_to_bv 64 (p 43 1)); C8 (Z_to_bv 64 (p 44 2)); C8 (Z_to_bv 64 (p 43 0)); C8 (Z_to_bv 64 (p 42 2)); C8 (Z_to_bv 64 (p 44 1)); C8 (Z_to_bv 64 (p 42 1)); C8 (Z_to_bv 64 (p 42 0)); C8 (Z_to_bv 64 (p 41 2)); C8 (Z_to_bv 64 (p 41 1)); C8 (Z_to_bv 64 (p 41 0)); C8 (Z_to_bv 64 (p 40 2)); C8 (Z_to_bv 64 (p 40 1)); C8 (Z_to_bv 64 (p 40 0)); C8 (Z_to_bv 64 (p 39 2)); C8 (Z_to_bv 64 (p 39 1)); C8 (Z_to_bv 64 (p 39 0)); C8 (Z_to_bv 64 (p 38 2)); C8 (Z_to_bv 64 (p 38 1)); C8 (Z_to_bv 64 (p 38 0)); C8 (Z_to_bv 64 (p 37 2)); C8 (Z_to_bv 64 (p 37 1)); C8 (Z_to_bv 64 (p 37 0)); C8 (Z_to_bv 64 (p 36 2)); C8 (Z_to_bv 64 (p 36 1)); C8 (Z_to_bv 64 (p 36 0)); C8 (Z_to_bv 64 (p 35 2)); C8 (Z_to_bv 64 (p 35 1)); C8 (Z_to_bv 64 (p 35 0)); C8 (Z_to_bv 64 (p 34 2)); C8 (Z_to_bv 64 (p 34 1)); C8 (Z_to_bv 64 (p 34 0)); C8 (Z_to_bv 64 (p 33 2)); C8 (Z_to_bv 64 (p 33 1)); C8 (Z_to_bv 64 (p 33 0)); C8 (Z_to_bv 64 (p 32 2)); C8 (Z_to_bv 64 (p 32 1)); C8 (Z_to_bv 64 (p 32 0)); C8 (Z_to_bv 64 (p 31 2)); C8 (Z_to_bv 64 (p 31 1)); C8 (Z_to_bv 64 (p 31 0)); C8 (Z_to_bv 64 (p 30 2)); C8 (Z_to_bv 64 (p 30 1)); C8 (Z_to_bv 64 (p 30 0)); C8 (Z_to_bv 64 (p 29 2)); C8 (Z_to_bv 64 (p 29 1)); C8 (Z_to_bv 64 (p 29 0)); C8 (Z_to_bv 64 (p 28 2)); C8 (Z_to_bv 64 (p 28 1)); C8 (Z_to_bv 64 (p 28 0)); C8 (Z_to_bv 64 (p 27 2)); C8 (Z_to_bv 64 (p 27 1)); C8 (Z_to_bv 64 (p 27 0)); C8 (Z_to_bv 64 (p 26 2)); C8 (Z_to_bv 64 (p 26 1)); C8 (Z_to_bv 64 (p 26 0)); C8 (Z_to_bv 64 (p 25 2)); C8 (Z_to_bv 64 (p 25 1)); C8 (Z_to_bv 64 (p 25 0)); C8 (Z_to_bv 64 (p 24 2)); C8 (Z_to_bv 64 (p 24 1)); C8 (Z_to_bv 64 (p 24 0)); C8 (Z_to_bv 64 (p 23 2)); C8 (Z_to_bv 64 (p 23 1)); C8 (Z_to_bv 64 (p 23 0)); C8 (Z_to_bv 64 (p 22 2)); C8 (Z_to_bv 64 (p 22 1)); C8 (Z_to_bv 64 (p 22 0)); C8 (Z_to_bv 64 (p 21 2)); C8 (Z_to_bv 64 (p 21 1)); C8 (Z_to_bv 64 (p 21 0)); C8 (Z_to_bv 64 (p 20 2)); C8 (Z_to_bv 64 (p 20 1)); C8 (Z_to_bv 64 (p 20 0)); C8 (Z_to_bv 64 (p 19 2)); C8 (Z_to_bv 64 (p 19 1)); C8 (Z_to_bv 64 (p 19 0)); C8 (Z_to_bv 64 (p 18 2)); C8 (Z_to_bv 64 (p 18 1)); C8 (Z_to_bv 64 (p 18 0)); C8 (Z_to_bv 64 (p 17 2)); C8 (Z_to_bv 64 (p 17 1)); C8 (Z_to_bv 64 (p 17 0)); C8 (Z_to_bv 64 (p 16 2)); C8 (Z_to_bv 64 (p 16 1)); C8 (Z_to_bv 64 (p 16 0)); C8 (Z_to_bv 64 (p 15 2)); C8 (Z_to_bv 64 (p 15 1)); C8 (Z_to_bv 64 (p 15 0)); C8 (Z_to_bv 64 (p 14 2)); C8 (Z_to_bv 64 (p 14 1)); C8 (Z_to_bv 64 (p 14 0)); C8 (Z_to_bv 64 (p 13 2)); C8 (Z_to_bv 64 (p 13 1)); C8 (Z_to_bv 64 (p 13 0)); C8 (Z_to_bv 64 (p 12 2)); C8 (Z_to_bv 64 (p 12 1)); C8 (Z_to_bv 64 (p 12 0)); C8 (Z_to_bv 64 (p 11 2)); C8 (Z_to_bv 64 (p 11 1)); C8 (Z_to_bv 64 (p 11 0)); C8 (Z_to_bv 64 (p 10 2)); C8 (Z_to_bv 64 (p 10 1)); C8 (Z_to_bv 64 (p 10 0)); C8 (Z_to_bv 64 (p 9 2)); C8 (Z_to_bv 64 (p 9 1)); C8 (Z_to_bv 64 (p 9 0)); C8 (Z_to_bv 64 (p 8 2)); C8 (Z_to_bv 64 (p 8 1)); C8 (Z_to_bv 64 (p 8 0)); C8 (Z_to_bv 64 (p 7 2)); C8 (Z_to_bv 64 (p 7 1)); C8 (Z_to_bv 64 (p 37 2 + p 38 2)); C8 (Z_to_bv 64 (p 6 2)); C8 (Z_to_bv 64 (p 6 1)); C8 (Z_to_bv 64 (p 6 0)); C8 (Z_to_bv 64 (p 37 1 + p 38 1)); C8 (Z_to_bv 64 (p 37 0 + p 38 0)); C8 (Z_to_bv 64 (E + 16 * q 49 + 51648)); C8 (Z_to_bv 64 (p 29 0 + p 30 0)); C8 (Z_to_bv 64 (1)); C8 (Z_to_bv 64 (49)); C8 (Z_to_bv 64 (gs + 49)); C8 (Z_to_bv 64 (gs + 50))] ->
    rw_cells a0segs m (P + 1344) [C8 (Z_to_bv 64 (E + 37708)); C8 (Z_to_bv 64 (999999999)); C8 (Z_to_bv 64 (nSel)); C8 (Z_to_bv 64 (flag6 nG)); C8 (Z_to_bv 64 (CO)); C8 (Z_to_bv 64 (FV)); C8 (Z_to_bv 64 (E + 1704)); C8 (Z_to_bv 64 (E + 45448)); C8 (Z_to_bv 64 (E + 45448 + 1032 * nG)); C8 (Z_to_bv 64 (A)); C8 (Z_to_bv 64 (totc)); C8 (Z_to_bv 64 (gs))] ->
    u8arr a0segs m CO (zb8 cb 12) ->
    mem_inv a0segs m -> munch [(P + 232, P + 1344); (CO, CO + 12)]%Z me m -> wmono a0segs me m ->
    (forall m', munch [(P + 232, P + 1344); (CO, CO + 12)]%Z me m' -> u32arr a0segs m' (E + 51640) (ovw lp (jseg J 51640 4128) 1032)) ->
    shzW a0segs [(P + 232, P + 1344); (CO, CO + 12)]%Z me E (E + ESTATE_SIZE) ->
    frdW a0segs [(P + 232, P + 1344); (CO, CO + 12)]%Z me (P + 176) [C8 (Z_to_bv 64 (E + 668))] ->
    frdW a0segs [(P + 232, P + 1344); (CO, CO + 12)]%Z me (P + 184) [C8 (Z_to_bv 64 (SHE + 83))] ->
    frdW a0segs [(P + 232, P + 1344); (CO, CO + 12)]%Z me (P + 192) [C8 (Z_to_bv 64 (A))] ->
    frdW a0segs [(P + 232, P + 1344); (CO, CO + 12)]%Z me (P + 200) [C8 (Z_to_bv 64 (nG))] ->
    frdW a0segs [(P + 232, P + 1344); (CO, CO + 12)]%Z me (P + 208) [C8 (Z_to_bv 64 (E + 37708))] ->
    frdW a0segs [(P + 232, P + 1344); (CO, CO + 12)]%Z me (P + 216) [C8 (Z_to_bv 64 (A1))] ->
    (forall m' (S0 S1 S2 : Z) (yra yt0 yt1 ya0 ya1 ya2 ya3 ya4 ya5 ya6 ya7 : word),
      S0 = psum arr1 lp gs 0 0 50 -> S1 = psum arr1 lp gs 1 0 50 -> S2 = psum arr1 lp gs 2 0 50 ->
      rw_cells a0segs m' (P + 232) [C8 (Z_to_bv 64 (p 49 1)); C8 (Z_to_bv 64 (p 49 0)); C8 (Z_to_bv 64 (p 48 2)); C8 (Z_to_bv 64 (p 48 1)); C8 (Z_to_bv 64 (p 48 0)); C8 (Z_to_bv 64 (p 47 2)); C8 (Z_to_bv 64 (p 47 1)); C8 (Z_to_bv 64 (p 47 0)); C8 (Z_to_bv 64 (p 46 2)); C8 (Z_to_bv 64 (p 46 1)); C8 (Z_to_bv 64 (p 46 0)); C8 (Z_to_bv 64 (p 45 2)); C8 (Z_to_bv 64 (p 45 1)); C8 (Z_to_bv 64 (p 45 0)); C8 (Z_to_bv 64 (p 44 0)); C8 (Z_to_bv 64 (p 43 2)); C8 (Z_to_bv 64 (p 43 1)); C8 (Z_to_bv 64 (p 44 2)); C8 (Z_to_bv 64 (p 43 0)); C8 (Z_to_bv 64 (p 42 2)); C8 (Z_to_bv 64 (p 44 1)); C8 (Z_to_bv 64 (p 42 1)); C8 (Z_to_bv 64 (p 42 0)); C8 (Z_to_bv 64 (p 41 2)); C8 (Z_to_bv 64 (p 41 1)); C8 (Z_to_bv 64 (p 41 0)); C8 (Z_to_bv 64 (p 40 2)); C8 (Z_to_bv 64 (p 40 1)); C8 (Z_to_bv 64 (p 40 0)); C8 (Z_to_bv 64 (p 39 2)); C8 (Z_to_bv 64 (p 39 1)); C8 (Z_to_bv 64 (p 39 0)); C8 (Z_to_bv 64 (p 38 2)); C8 (Z_to_bv 64 (p 38 1)); C8 (Z_to_bv 64 (p 38 0)); C8 (Z_to_bv 64 (p 37 2)); C8 (Z_to_bv 64 (p 37 1)); C8 (Z_to_bv 64 (p 37 0)); C8 (Z_to_bv 64 (p 36 2)); C8 (Z_to_bv 64 (p 36 1)); C8 (Z_to_bv 64 (p 36 0)); C8 (Z_to_bv 64 (p 35 2)); C8 (Z_to_bv 64 (p 35 1)); C8 (Z_to_bv 64 (p 35 0)); C8 (Z_to_bv 64 (p 34 2)); C8 (Z_to_bv 64 (p 34 1)); C8 (Z_to_bv 64 (p 34 0)); C8 (Z_to_bv 64 (p 33 2)); C8 (Z_to_bv 64 (p 33 1)); C8 (Z_to_bv 64 (p 33 0)); C8 (Z_to_bv 64 (p 32 2)); C8 (Z_to_bv 64 (p 32 1)); C8 (Z_to_bv 64 (p 32 0)); C8 (Z_to_bv 64 (p 31 2)); C8 (Z_to_bv 64 (p 31 1)); C8 (Z_to_bv 64 (p 31 0)); C8 (Z_to_bv 64 (p 30 2)); C8 (Z_to_bv 64 (p 30 1)); C8 (Z_to_bv 64 (p 30 0)); C8 (Z_to_bv 64 (p 29 2)); C8 (Z_to_bv 64 (p 29 1)); C8 (Z_to_bv 64 (p 29 0)); C8 (Z_to_bv 64 (p 28 2)); C8 (Z_to_bv 64 (p 28 1)); C8 (Z_to_bv 64 (p 28 0)); C8 (Z_to_bv 64 (p 27 2)); C8 (Z_to_bv 64 (p 27 1)); C8 (Z_to_bv 64 (p 27 0)); C8 (Z_to_bv 64 (p 26 2)); C8 (Z_to_bv 64 (p 26 1)); C8 (Z_to_bv 64 (p 26 0)); C8 (Z_to_bv 64 (p 25 2)); C8 (Z_to_bv 64 (p 25 1)); C8 (Z_to_bv 64 (p 25 0)); C8 (Z_to_bv 64 (p 24 2)); C8 (Z_to_bv 64 (p 24 1)); C8 (Z_to_bv 64 (p 24 0)); C8 (Z_to_bv 64 (p 23 2)); C8 (Z_to_bv 64 (p 23 1)); C8 (Z_to_bv 64 (p 23 0)); C8 (Z_to_bv 64 (p 22 2)); C8 (Z_to_bv 64 (p 22 1)); C8 (Z_to_bv 64 (p 22 0)); C8 (Z_to_bv 64 (p 21 2)); C8 (Z_to_bv 64 (p 21 1)); C8 (Z_to_bv 64 (p 21 0)); C8 (Z_to_bv 64 (p 20 2)); C8 (Z_to_bv 64 (p 20 1)); C8 (Z_to_bv 64 (p 20 0)); C8 (Z_to_bv 64 (p 19 2)); C8 (Z_to_bv 64 (p 19 1)); C8 (Z_to_bv 64 (p 19 0)); C8 (Z_to_bv 64 (p 18 2)); C8 (Z_to_bv 64 (p 18 1)); C8 (Z_to_bv 64 (p 18 0)); C8 (Z_to_bv 64 (p 17 2)); C8 (Z_to_bv 64 (p 17 1)); C8 (Z_to_bv 64 (p 17 0)); C8 (Z_to_bv 64 (p 16 2)); C8 (Z_to_bv 64 (p 16 1)); C8 (Z_to_bv 64 (p 16 0)); C8 (Z_to_bv 64 (p 15 2)); C8 (Z_to_bv 64 (p 15 1)); C8 (Z_to_bv 64 (p 15 0)); C8 (Z_to_bv 64 (p 14 2)); C8 (Z_to_bv 64 (p 14 1)); C8 (Z_to_bv 64 (p 14 0)); C8 (Z_to_bv 64 (p 13 2)); C8 (Z_to_bv 64 (p 13 1)); C8 (Z_to_bv 64 (p 13 0)); C8 (Z_to_bv 64 (p 12 2)); C8 (Z_to_bv 64 (p 12 1)); C8 (Z_to_bv 64 (p 12 0)); C8 (Z_to_bv 64 (p 11 2)); C8 (Z_to_bv 64 (p 11 1)); C8 (Z_to_bv 64 (p 11 0)); C8 (Z_to_bv 64 (p 10 2)); C8 (Z_to_bv 64 (p 10 1)); C8 (Z_to_bv 64 (p 10 0)); C8 (Z_to_bv 64 (p 9 2)); C8 (Z_to_bv 64 (p 9 1)); C8 (Z_to_bv 64 (p 9 0)); C8 (Z_to_bv 64 (p 8 2)); C8 (Z_to_bv 64 (p 8 1)); C8 (Z_to_bv 64 (p 8 0)); C8 (Z_to_bv 64 (p 7 2)); C8 (Z_to_bv 64 (p 7 1)); C8 (Z_to_bv 64 (p 37 2 + p 38 2)); C8 (Z_to_bv 64 (p 6 2)); C8 (Z_to_bv 64 (p 6 1)); C8 (Z_to_bv 64 (p 6 0)); C8 (Z_to_bv 64 (p 37 1 + p 38 1)); C8 (Z_to_bv 64 (p 37 0 + p 38 0)); C8 (Z_to_bv 64 (E + 16 * q 49 + 51648)); C8 (Z_to_bv 64 (p 29 0 + p 30 0)); C8 (Z_to_bv 64 (1)); C8 (Z_to_bv 64 (49)); C8 (Z_to_bv 64 (gs + 49)); C8 (Z_to_bv 64 (gs + 50))] ->
      rw_cells a0segs m' (P + 1344) [C8 (Z_to_bv 64 (E + 37708)); C8 (Z_to_bv 64 (999999999)); C8 (Z_to_bv 64 (nSel)); C8 (Z_to_bv 64 (flag6 nG)); C8 (Z_to_bv 64 (CO)); C8 (Z_to_bv 64 (FV)); C8 (Z_to_bv 64 (E + 1704)); C8 (Z_to_bv 64 (E + 45448)); C8 (Z_to_bv 64 (E + 45448 + 1032 * nG)); C8 (Z_to_bv 64 (A)); C8 (Z_to_bv 64 (totc)); C8 (Z_to_bv 64 (gs))] ->
      u8arr a0segs m' CO (zb8 (wr16 (wr16 (wr16 (wr16 (wr16 (wr16 cb 0 S0) 2 (S0 / 65536)) 4 S1) 6 (S1 / 65536)) 8 S2) 10 (S2 / 65536)) 12) ->
      mem_inv a0segs m' -> munch [(P + 232, P + 1344); (CO, CO + 12)]%Z me m' -> wmono a0segs me m' ->
      evt a0segs Q (MS (mkR yra (Z_to_bv 64 (P)) gp tp yt0 yt1 (Z_to_bv 64 (CO)) s0 (Z_to_bv 64 (P)) ya0 ya1 ya2 ya3 ya4 ya5 ya6 ya7 (Z_to_bv 64 (49)) (Z_to_bv 64 (E + 37708)) (Z_to_bv 64 (2147450880)) (Z_to_bv 64 (nSel)) (Z_to_bv 64 (1)) (Z_to_bv 64 (A)) (Z_to_bv 64 (A1)) (Z_to_bv 64 (SHE + 83)) (Z_to_bv 64 (nG)) (Z_to_bv 64 (E + 668)) (Z_to_bv 64 (E + 45448)) (Z_to_bv 64 (gs + 50)) (Z_to_bv 64 (gs)) (Z_to_bv 64 (gs + 49)))
           F (Z_to_bv 64 0x8ca4c) fc None m' (seg_rom a0segs))) ->
    evt a0segs Q (MS (mkR (Z_to_bv 64 (p 22 0 + p 23 0 + p 24 0)) (Z_to_bv 64 (P)) gp tp (Z_to_bv 64 (p 4 0 + p 5 0 + p 6 0)) (Z_to_bv 64 (p 0 1 + p 1 1 + p 2 1 + p 3 1)) (Z_to_bv 64 (p 31 2)) s0 (Z_to_bv 64 (P)) (Z_to_bv 64 (p 37 2 + p 38 2)) (Z_to_bv 64 (p 29 0 + p 30 0 + p 31 0)) (Z_to_bv 64 (p 22 1 + p 23 1 + p 24 1)) (Z_to_bv 64 (p 11 0 + p 12 0 + p 13 0)) (Z_to_bv 64 (p 0 0 + p 1 0 + p 2 0 + p 3 0)) (Z_to_bv 64 (p 4 2 + p 5 2 + p 6 2)) (Z_to_bv 64 (p 22 2 + p 23 2 + p 24 2)) (Z_to_bv 64 (p 0 2 + p 1 2 + p 2 2 + p 3 2)) (Z_to_bv 64 (p 16 0 + p 17 0 + p 18 0)) (Z_to_bv 64 (p 7 1 + p 8 1 + p 9 1)) (Z_to_bv 64 (2147450880)) (Z_to_bv 64 (p 11 1 + p 12 1 + p 13 1)) (Z_to_bv 64 (p 29 1 + p 30 1 + p 31 1)) (Z_to_bv 64 (p 11 2 + p 12 2 + p 13 2)) (Z_to_bv 64 (p 29 2 + p 30 2)) (Z_to_bv 64 (p 2 1 + p 3 1)) (Z_to_bv 64 (p 7 2 + p 8 2 + p 9 2)) (Z_to_bv 64 (p 4 1 + p 5 1 + p 6 1)) (Z_to_bv 64 (p 2 0 + p 3 0)) (Z_to_bv 64 (p 7 0 + p 8 0 + p 9 0)) (Z_to_bv 64 (p 16 1 + p 17 1 + p 18 1)) (Z_to_bv 64 (p 16 2 + p 17 2 + p 18 2)))
         F (Z_to_bv 64 0x8c708) fc None m (seg_rom a0segs)).
  Proof.
    intros m me  SPL HI COST MI MU WM VLPK SHe V176 V184 V192 V200 V208 V216 K.
    openCX. try clear ME MA1 MA2 MF Mb Mf. clear XA20 XA21 XF0 XF1 Xb0 Xb1 Xf0 Xf1 LJb. unfold ESTATE_SIZE in SHe. assert (HAd : A = (e_nInUse e + 2)%Z) by reflexivity.
    pose proof (zb8_length_nat cb 12) as LC.
    pose proof (QB 49 ltac:(lia)) as QB49.
    pose proof (PB 0 0 ltac:(lia) ltac:(lia)) as PB0_0.
    pose proof (PB 1 0 ltac:(lia) ltac:(lia)) as PB1_0.
    pose proof (PB 2 0 ltac:(lia) ltac:(lia)) as PB2_0.
    pose proof (PB 3 0 ltac:(lia) ltac:(lia)) as PB3_0.
    pose proof (PB 4 0 ltac:(lia) ltac:(lia)) as PB4_0.
    pose proof (PB 5 0 ltac:(lia) ltac:(lia)) as PB5_0.
    pose proof (PB 6 0 ltac:(lia) ltac:(lia)) as PB6_0.
    pose proof (PB 7 0 ltac:(lia) ltac:(lia)) as PB7_0.
    pose proof (PB 8 0 ltac:(lia) ltac:(lia)) as PB8_0.
    pose proof (PB 9 0 ltac:(lia) ltac:(lia)) as PB9_0.
    pose proof (PB 10 0 ltac:(lia) ltac:(lia)) as PB10_0.
    pose proof (PB 11 0 ltac:(lia) ltac:(lia)) as PB11_0.
    pose proof (PB 12 0 ltac:(lia) ltac:(lia)) as PB12_0.
    pose proof (PB 13 0 ltac:(lia) ltac:(lia)) as PB13_0.
    pose proof (PB 14 0 ltac:(lia) ltac:(lia)) as PB14_0.
    pose proof (PB 15 0 ltac:(lia) ltac:(lia)) as PB15_0.
    pose proof (PB 16 0 ltac:(lia) ltac:(lia)) as PB16_0.
    pose proof (PB 17 0 ltac:(lia) ltac:(lia)) as PB17_0.
    pose proof (PB 18 0 ltac:(lia) ltac:(lia)) as PB18_0.
    pose proof (PB 19 0 ltac:(lia) ltac:(lia)) as PB19_0.
    pose proof (PB 20 0 ltac:(lia) ltac:(lia)) as PB20_0.
    pose proof (PB 21 0 ltac:(lia) ltac:(lia)) as PB21_0.
    pose proof (PB 22 0 ltac:(lia) ltac:(lia)) as PB22_0.
    pose proof (PB 23 0 ltac:(lia) ltac:(lia)) as PB23_0.
    pose proof (PB 24 0 ltac:(lia) ltac:(lia)) as PB24_0.
    pose proof (PB 25 0 ltac:(lia) ltac:(lia)) as PB25_0.
    pose proof (PB 26 0 ltac:(lia) ltac:(lia)) as PB26_0.
    pose proof (PB 27 0 ltac:(lia) ltac:(lia)) as PB27_0.
    pose proof (PB 28 0 ltac:(lia) ltac:(lia)) as PB28_0.
    pose proof (PB 29 0 ltac:(lia) ltac:(lia)) as PB29_0.
    pose proof (PB 30 0 ltac:(lia) ltac:(lia)) as PB30_0.
    pose proof (PB 31 0 ltac:(lia) ltac:(lia)) as PB31_0.
    pose proof (PB 32 0 ltac:(lia) ltac:(lia)) as PB32_0.
    pose proof (PB 33 0 ltac:(lia) ltac:(lia)) as PB33_0.
    pose proof (PB 34 0 ltac:(lia) ltac:(lia)) as PB34_0.
    pose proof (PB 35 0 ltac:(lia) ltac:(lia)) as PB35_0.
    pose proof (PB 36 0 ltac:(lia) ltac:(lia)) as PB36_0.
    pose proof (PB 37 0 ltac:(lia) ltac:(lia)) as PB37_0.
    pose proof (PB 38 0 ltac:(lia) ltac:(lia)) as PB38_0.
    pose proof (PB 39 0 ltac:(lia) ltac:(lia)) as PB39_0.
    pose proof (PB 40 0 ltac:(lia) ltac:(lia)) as PB40_0.
    pose proof (PB 41 0 ltac:(lia) ltac:(lia)) as PB41_0.
    pose proof (PB 42 0 ltac:(lia) ltac:(lia)) as PB42_0.
    pose proof (PB 43 0 ltac:(lia) ltac:(lia)) as PB43_0.
    pose proof (PB 44 0 ltac:(lia) ltac:(lia)) as PB44_0.
    pose proof (PB 45 0 ltac:(lia) ltac:(lia)) as PB45_0.
    pose proof (PB 46 0 ltac:(lia) ltac:(lia)) as PB46_0.
    pose proof (PB 47 0 ltac:(lia) ltac:(lia)) as PB47_0.
    pose proof (PB 48 0 ltac:(lia) ltac:(lia)) as PB48_0.
    pose proof (PB 49 0 ltac:(lia) ltac:(lia)) as PB49_0.
    pose proof (PB 0 1 ltac:(lia) ltac:(lia)) as PB0_1.
    pose proof (PB 1 1 ltac:(lia) ltac:(lia)) as PB1_1.
    pose proof (PB 2 1 ltac:(lia) ltac:(lia)) as PB2_1.
    pose proof (PB 3 1 ltac:(lia) ltac:(lia)) as PB3_1.
    pose proof (PB 4 1 ltac:(lia) ltac:(lia)) as PB4_1.
    pose proof (PB 5 1 ltac:(lia) ltac:(lia)) as PB5_1.
    pose proof (PB 6 1 ltac:(lia) ltac:(lia)) as PB6_1.
    pose proof (PB 7 1 ltac:(lia) ltac:(lia)) as PB7_1.
    pose proof (PB 8 1 ltac:(lia) ltac:(lia)) as PB8_1.
    pose proof (PB 9 1 ltac:(lia) ltac:(lia)) as PB9_1.
    pose proof (PB 10 1 ltac:(lia) ltac:(lia)) as PB10_1.
    pose proof (PB 11 1 ltac:(lia) ltac:(lia)) as PB11_1.
    pose proof (PB 12 1 ltac:(lia) ltac:(lia)) as PB12_1.
    pose proof (PB 13 1 ltac:(lia) ltac:(lia)) as PB13_1.
    pose proof (PB 14 1 ltac:(lia) ltac:(lia)) as PB14_1.
    pose proof (PB 15 1 ltac:(lia) ltac:(lia)) as PB15_1.
    pose proof (PB 16 1 ltac:(lia) ltac:(lia)) as PB16_1.
    pose proof (PB 17 1 ltac:(lia) ltac:(lia)) as PB17_1.
    pose proof (PB 18 1 ltac:(lia) ltac:(lia)) as PB18_1.
    pose proof (PB 19 1 ltac:(lia) ltac:(lia)) as PB19_1.
    pose proof (PB 20 1 ltac:(lia) ltac:(lia)) as PB20_1.
    pose proof (PB 21 1 ltac:(lia) ltac:(lia)) as PB21_1.
    pose proof (PB 22 1 ltac:(lia) ltac:(lia)) as PB22_1.
    pose proof (PB 23 1 ltac:(lia) ltac:(lia)) as PB23_1.
    pose proof (PB 24 1 ltac:(lia) ltac:(lia)) as PB24_1.
    pose proof (PB 25 1 ltac:(lia) ltac:(lia)) as PB25_1.
    pose proof (PB 26 1 ltac:(lia) ltac:(lia)) as PB26_1.
    pose proof (PB 27 1 ltac:(lia) ltac:(lia)) as PB27_1.
    pose proof (PB 28 1 ltac:(lia) ltac:(lia)) as PB28_1.
    pose proof (PB 29 1 ltac:(lia) ltac:(lia)) as PB29_1.
    pose proof (PB 30 1 ltac:(lia) ltac:(lia)) as PB30_1.
    pose proof (PB 31 1 ltac:(lia) ltac:(lia)) as PB31_1.
    pose proof (PB 32 1 ltac:(lia) ltac:(lia)) as PB32_1.
    pose proof (PB 33 1 ltac:(lia) ltac:(lia)) as PB33_1.
    pose proof (PB 34 1 ltac:(lia) ltac:(lia)) as PB34_1.
    pose proof (PB 35 1 ltac:(lia) ltac:(lia)) as PB35_1.
    pose proof (PB 36 1 ltac:(lia) ltac:(lia)) as PB36_1.
    pose proof (PB 37 1 ltac:(lia) ltac:(lia)) as PB37_1.
    pose proof (PB 38 1 ltac:(lia) ltac:(lia)) as PB38_1.
    pose proof (PB 39 1 ltac:(lia) ltac:(lia)) as PB39_1.
    pose proof (PB 40 1 ltac:(lia) ltac:(lia)) as PB40_1.
    pose proof (PB 41 1 ltac:(lia) ltac:(lia)) as PB41_1.
    pose proof (PB 42 1 ltac:(lia) ltac:(lia)) as PB42_1.
    pose proof (PB 43 1 ltac:(lia) ltac:(lia)) as PB43_1.
    pose proof (PB 44 1 ltac:(lia) ltac:(lia)) as PB44_1.
    pose proof (PB 45 1 ltac:(lia) ltac:(lia)) as PB45_1.
    pose proof (PB 46 1 ltac:(lia) ltac:(lia)) as PB46_1.
    pose proof (PB 47 1 ltac:(lia) ltac:(lia)) as PB47_1.
    pose proof (PB 48 1 ltac:(lia) ltac:(lia)) as PB48_1.
    pose proof (PB 49 1 ltac:(lia) ltac:(lia)) as PB49_1.
    pose proof (PB 0 2 ltac:(lia) ltac:(lia)) as PB0_2.
    pose proof (PB 1 2 ltac:(lia) ltac:(lia)) as PB1_2.
    pose proof (PB 2 2 ltac:(lia) ltac:(lia)) as PB2_2.
    pose proof (PB 3 2 ltac:(lia) ltac:(lia)) as PB3_2.
    pose proof (PB 4 2 ltac:(lia) ltac:(lia)) as PB4_2.
    pose proof (PB 5 2 ltac:(lia) ltac:(lia)) as PB5_2.
    pose proof (PB 6 2 ltac:(lia) ltac:(lia)) as PB6_2.
    pose proof (PB 7 2 ltac:(lia) ltac:(lia)) as PB7_2.
    pose proof (PB 8 2 ltac:(lia) ltac:(lia)) as PB8_2.
    pose proof (PB 9 2 ltac:(lia) ltac:(lia)) as PB9_2.
    pose proof (PB 10 2 ltac:(lia) ltac:(lia)) as PB10_2.
    pose proof (PB 11 2 ltac:(lia) ltac:(lia)) as PB11_2.
    pose proof (PB 12 2 ltac:(lia) ltac:(lia)) as PB12_2.
    pose proof (PB 13 2 ltac:(lia) ltac:(lia)) as PB13_2.
    pose proof (PB 14 2 ltac:(lia) ltac:(lia)) as PB14_2.
    pose proof (PB 15 2 ltac:(lia) ltac:(lia)) as PB15_2.
    pose proof (PB 16 2 ltac:(lia) ltac:(lia)) as PB16_2.
    pose proof (PB 17 2 ltac:(lia) ltac:(lia)) as PB17_2.
    pose proof (PB 18 2 ltac:(lia) ltac:(lia)) as PB18_2.
    pose proof (PB 19 2 ltac:(lia) ltac:(lia)) as PB19_2.
    pose proof (PB 20 2 ltac:(lia) ltac:(lia)) as PB20_2.
    pose proof (PB 21 2 ltac:(lia) ltac:(lia)) as PB21_2.
    pose proof (PB 22 2 ltac:(lia) ltac:(lia)) as PB22_2.
    pose proof (PB 23 2 ltac:(lia) ltac:(lia)) as PB23_2.
    pose proof (PB 24 2 ltac:(lia) ltac:(lia)) as PB24_2.
    pose proof (PB 25 2 ltac:(lia) ltac:(lia)) as PB25_2.
    pose proof (PB 26 2 ltac:(lia) ltac:(lia)) as PB26_2.
    pose proof (PB 27 2 ltac:(lia) ltac:(lia)) as PB27_2.
    pose proof (PB 28 2 ltac:(lia) ltac:(lia)) as PB28_2.
    pose proof (PB 29 2 ltac:(lia) ltac:(lia)) as PB29_2.
    pose proof (PB 30 2 ltac:(lia) ltac:(lia)) as PB30_2.
    pose proof (PB 31 2 ltac:(lia) ltac:(lia)) as PB31_2.
    pose proof (PB 32 2 ltac:(lia) ltac:(lia)) as PB32_2.
    pose proof (PB 33 2 ltac:(lia) ltac:(lia)) as PB33_2.
    pose proof (PB 34 2 ltac:(lia) ltac:(lia)) as PB34_2.
    pose proof (PB 35 2 ltac:(lia) ltac:(lia)) as PB35_2.
    pose proof (PB 36 2 ltac:(lia) ltac:(lia)) as PB36_2.
    pose proof (PB 37 2 ltac:(lia) ltac:(lia)) as PB37_2.
    pose proof (PB 38 2 ltac:(lia) ltac:(lia)) as PB38_2.
    pose proof (PB 39 2 ltac:(lia) ltac:(lia)) as PB39_2.
    pose proof (PB 40 2 ltac:(lia) ltac:(lia)) as PB40_2.
    pose proof (PB 41 2 ltac:(lia) ltac:(lia)) as PB41_2.
    pose proof (PB 42 2 ltac:(lia) ltac:(lia)) as PB42_2.
    pose proof (PB 43 2 ltac:(lia) ltac:(lia)) as PB43_2.
    pose proof (PB 44 2 ltac:(lia) ltac:(lia)) as PB44_2.
    pose proof (PB 45 2 ltac:(lia) ltac:(lia)) as PB45_2.
    pose proof (PB 46 2 ltac:(lia) ltac:(lia)) as PB46_2.
    pose proof (PB 47 2 ltac:(lia) ltac:(lia)) as PB47_2.
    pose proof (PB 48 2 ltac:(lia) ltac:(lia)) as PB48_2.
    frun_to 0x8c70c%Z. lstep.
    frun_to 0x8c710%Z. lstep.
    frun_to 0x8c718%Z. lstep.
    frun_to 0x8c71c%Z. lstep.
    frun_to 0x8c724%Z. lstep.
    frun_to 0x8c728%Z. lstep.
    frun_to 0x8c73c%Z. lstep.
    frun_to 0x8c744%Z. lstep.
    frun_to 0x8c74c%Z. lstep.
    frun_to 0x8c754%Z. lstep.
    frun_to 0x8c75c%Z. lstep.
    frun_to 0x8c764%Z. lstep.
    frun_to 0x8c76c%Z. lstep.
    frun_to 0x8c774%Z. lstep.
    frun_to 0x8c77c%Z. lstep.
    frun_to 0x8c784%Z. lstep.
    frun_to 0x8c78c%Z. lstep.
    frun_to 0x8c794%Z. lstep.
    frun_to 0x8c79c%Z. lstep.
    frun_to 0x8c7a4%Z. lstep.
    frun_to 0x8c7ac%Z. lstep.
    frun_to 0x8c7b4%Z. lstep.
    frun_to 0x8c7bc%Z. lstep.
    frun_to 0x8c7c4%Z. lstep.
    frun_to 0x8c7d8%Z. lstep.
    frun_to 0x8c7e0%Z. lstep.
    frun_to 0x8c7e8%Z. lstep.
    frun_to 0x8c7f0%Z. lstep.
    frun_to 0x8c7f8%Z. lstep.
    frun_to 0x8c800%Z. lstep.
    frun_to 0x8c808%Z. lstep.
    frun_to 0x8c810%Z. lstep.
    frun_to 0x8c818%Z. lstep.
    frun_to 0x8c820%Z. lstep.
    frun_to 0x8c828%Z. lstep.
    frun_to 0x8c830%Z. lstep.
    frun_to 0x8c838%Z. lstep.
    frun_to 0x8c840%Z. lstep.
    frun_to 0x8c848%Z. lstep.
    frun_to 0x8c85c%Z. lstep.
    frun_to 0x8c864%Z. lstep.
    frun_to 0x8c86c%Z. lstep.
    frun_to 0x8c874%Z. lstep.
    frun_to 0x8c87c%Z. lstep.
    frun_to 0x8c884%Z. lstep.
    frun_to 0x8c88c%Z. lstep.
    frun_to 0x8c894%Z. lstep.
    frun_to 0x8c89c%Z. lstep.
    frun_to 0x8c8a4%Z. lstep.
    frun_to 0x8c8ac%Z. lstep.
    frun_to 0x8c8b4%Z. lstep.
    frun_to 0x8c8c8%Z. lstep.
    frun_to 0x8c8d0%Z. lstep.
    frun_to 0x8c8d8%Z. lstep.
    frun_to 0x8c8e0%Z. lstep.
    frun_to 0x8c8e8%Z. lstep.
    frun_to 0x8c8f0%Z. lstep.
    frun_to 0x8c8f8%Z. lstep.
    frun_to 0x8c900%Z. lstep.
    frun_to 0x8c908%Z. lstep.
    frun_to 0x8c91c%Z. lstep.
    frun_to 0x8c924%Z. lstep.
    frun_to 0x8c92c%Z. lstep.
    frun_to 0x8c934%Z. lstep.
    frun_to 0x8c93c%Z. lstep.
    frun_to 0x8c940%Z. lstep.
    frun_to 0x8c948%Z. lstep.
    frun_to 0x8c94c%Z. lstep.
    frun_to 0x8c954%Z. lstep.
    frun_to 0x8c958%Z. lstep.
    frun_to 0x8c960%Z. lstep.
    frun_to 0x8c964%Z. RDP VLPK 49%Z 2%Z.
    frun_to 0x8c968%Z. lstep.
    frun_to 0x8c970%Z. lstep.
    frun_to 0x8c978%Z. lstep.
    frun_to 0x8c980%Z. lstep.
    frun_to 0x8c988%Z. lstep.
    frun_to 0x8c994%Z. lstep.
    frun_to 0x8c99c%Z. lstep.
    frun_to 0x8c9b0%Z. lstep.
    frun_to 0x8c9b8%Z. lstep.
    frun_to 0x8c9c0%Z. lstep.
    frun_to 0x8c9ec%Z. lstep.
    frun_to 0x8c9f0%Z. CST COST 0%Z.
    frun_to 0x8c9f4%Z. CST COST 2%Z.
    frun_to 0x8c9f8%Z. CST COST 4%Z.
    frun_to 0x8c9fc%Z. CST COST 6%Z.
    frun_to 0x8ca00%Z. CST COST 8%Z.
    frun_to 0x8ca04%Z. CST COST 10%Z.
    frun_to 0x8ca08%Z. RDV V176.
    frun_to 0x8ca0c%Z. RDV V216.
    frun_to 0x8ca10%Z. RDV V184.
    frun_to 0x8ca14%Z. RDV V200.
    frun_to 0x8ca18%Z. lstep.
    frun_to 0x8ca1c%Z. RDV V192.
    frun_to 0x8ca20%Z. RDV V208.
    frun_to 0x8ca24%Z. lstep.
    frun_to 0x8ca28%Z. lstep.
    frun_to 0x8ca2c%Z. lstep.
    frun_to 0x8ca30%Z. lstep.
    frun_to 0x8ca34%Z. lstep.
    frun_to 0x8ca38%Z. lstep.
    frun_to 0x8ca4c%Z.
    lazymatch goal with |- evt _ _ (MS _ _ _ _ _ ?mm _) => enter_with (K mm (p 0 0 + p 1 0 + p 2 0 + p 3 0 + p 4 0 + p 5 0 + p 6 0 + p 7 0 + p 8 0 + p 9 0 + p 10 0 + p 11 0 + p 12 0 + p 13 0 + p 14 0 + p 15 0 + p 16 0 + p 17 0 + p 18 0 + p 19 0 + p 20 0 + p 21 0 + p 22 0 + p 23 0 + p 24 0 + p 25 0 + p 26 0 + p 27 0 + p 28 0 + p 29 0 + p 30 0 + p 31 0 + p 32 0 + p 33 0 + p 34 0 + p 35 0 + p 36 0 + p 37 0 + p 38 0 + p 39 0 + p 40 0 + p 41 0 + p 42 0 + p 43 0 + p 44 0 + p 45 0 + p 46 0 + p 47 0 + p 48 0 + p 49 0)%Z (p 0 1 + p 1 1 + p 2 1 + p 3 1 + p 4 1 + p 5 1 + p 6 1 + p 7 1 + p 8 1 + p 9 1 + p 10 1 + p 11 1 + p 12 1 + p 13 1 + p 14 1 + p 15 1 + p 16 1 + p 17 1 + p 18 1 + p 19 1 + p 20 1 + p 21 1 + p 22 1 + p 23 1 + p 24 1 + p 25 1 + p 26 1 + p 27 1 + p 28 1 + p 29 1 + p 30 1 + p 31 1 + p 32 1 + p 33 1 + p 34 1 + p 35 1 + p 36 1 + p 37 1 + p 38 1 + p 39 1 + p 40 1 + p 41 1 + p 42 1 + p 43 1 + p 44 1 + p 45 1 + p 46 1 + p 47 1 + p 48 1 + p 49 1)%Z (p 0 2 + p 1 2 + p 2 2 + p 3 2 + p 4 2 + p 5 2 + p 6 2 + p 7 2 + p 8 2 + p 9 2 + p 10 2 + p 11 2 + p 12 2 + p 13 2 + p 14 2 + p 15 2 + p 16 2 + p 17 2 + p 18 2 + p 19 2 + p 20 2 + p 21 2 + p 22 2 + p 23 2 + p 24 2 + p 25 2 + p 26 2 + p 27 2 + p 28 2 + p 29 2 + p 30 2 + p 31 2 + p 32 2 + p 33 2 + p 34 2 + p 35 2 + p 36 2 + p 37 2 + p 38 2 + p 39 2 + p 40 2 + p 41 2 + p 42 2 + p 43 2 + p 44 2 + p 45 2 + p 46 2 + p 47 2 + p 48 2 + p 49 2)%Z _ _ _ _ _ _ _ _ _ _ _) end;
      [ st_eq
      | rewrite psum50_eq; lia | rewrite psum50_eq; lia | rewrite psum50_eq; lia
      | lazymatch type of SPL with rw_cells _ _ _ ?L => lazymatch goal with |- rw_cells _ _ _ ?L2 => replace L2 with L; [exact SPL| CmpFast.rlf] end end
      | lazymatch type of HI with rw_cells _ _ _ ?L => lazymatch goal with |- rw_cells _ _ _ ?L2 => replace L2 with L; [exact HI| CmpFast.rlf] end end
      | first [exact COST | lazymatch type of COST with u8arr _ _ _ ?L => lazymatch goal with |- u8arr _ _ _ ?L2 => replace L2 with L; [exact COST| CmpFast.rlf] end end]
      | assumption | exact MU | exact WM ].
  Qed.
End FC.
End ACeilS1.
