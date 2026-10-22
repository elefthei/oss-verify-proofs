(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLin FxCore FxSound FxStep.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLoop.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxImg FxSubst FxLoop FxPlan FxFrame FxFacts FxEcall FxEnt FxCall.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLin OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxCore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSound OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxStep OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop.FxExplore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSubst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFrame OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFacts OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxEcall OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxEnt OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxCall.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxBacking FxChDen FxChNull FxChain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxWvC FxChEntM FxChSubst FxChMain FxChFam.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxBacking OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChDen OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChNull OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChain.FxChSys OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxWvC OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChEntM OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChSubst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChMain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require Import AsanLit.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB Require Import AcAst AcFam AcSubst AcCache.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require FxMchr AsanBNodes AsanBodyCh AsanBodyG.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanBodyT.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanPrefixG AsanPrefixLg AsanPrefixGL AsanBodyT.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanBodyG.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanBodyG.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxMchr OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBodyCh OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBodyG OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBodyT.AsanBodyH OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanPrefixG OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanPrefixLg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanPrefixGL OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBodyT OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBodyG.AsanPrefixGLit OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanBodyG.AsanPrefixGLLit.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanTblH2.
Export OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanTblH2.AsanTailDefs.
Import ListNotations.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

(* [comment removed for export] *)
Definition PHI : Z := 67108863.

(* [comment removed for export] *)
Definition TPP_S (n : nat) : sst := add_fact (TP_S n) (FRange TG_VN 1 64512).
Definition TPL_S (n : nat) : sst := add_fact (TP_S n) (FRange TG_VN 64513 67108857).
Definition TPP_C (n : nat) : sst * smodel * fstate * shp * ast := (TPP_S n, TG0_M, FSDone, SH_N n, TG0_A).
Definition TPL_C (n : nat) : sst * smodel * fstate * shp * ast := (TPL_S n, TG0_M, FSDone, SH_N n, TG0_A).
Definition CONTS_PL (n : nat) : list (sst * smodel * fstate * shp * ast) := [TPP_C n; TPL_C n].
(* [comment removed for export] *)
Definition QU_I : positive := Z.to_pos (Zpos QU + Zpos (s_next TG0_S) - Zpos NB_G).
Definition MP_I : positive := Z.to_pos (Zpos MPU + Zpos (s_next TG0_S) - Zpos NB_G).
Definition UB_I : positive := Z.to_pos (Zpos UBU + Zpos (s_next TG0_S) - Zpos NB_G).
Definition TU_I : positive := Z.to_pos (Zpos TU + Zpos (s_next TG0_S) - Zpos NB_G).
(* [comment removed for export] *)
Definition LNC_L : lin := laddc (lsub (lscale 65536 (lvar VCT)) (ladd (lscale 8 (lvar QU_I)) (lvar TU_I))) (-7).
(* [comment removed for export] *)
Definition VCALLS : positive := match l_t (calls_of TG0_S) with (x, _) :: _ => x | [] => 1%positive end.
Definition VCALLS_E : positive := match l_t (calls_of TGE0_S) with (x, _) :: _ => x | [] => 1%positive end.
(* [comment removed for export] *)
Definition SUBS_P : list (sst * smodel * ast * list (sst * smodel * ast)) :=
  [(TG_GP, TG0_M, TG0_A, [(PFING_S, PFING_M, PFING_A)]); (TG_GL, TG0_M, TG0_A, [(PFINL_S, PFINL_M, PFINL_A)])].
(* [comment removed for export] *)
Fixpoint rg_idx_w (rs : list region) (i : nat) : nat :=
  match rs with [] => i | R :: r => if lin_eqb (rg_base R) (LIN 0 [(VW, 8)]) then i else rg_idx_w r (Datatypes.S i) end.
(* [comment removed for export] *)
Fixpoint mp_idx {X : Type} (b : lin) (gs : list (lin * lin * X)) (i : nat) : nat :=
  match gs with [] => i | g :: r => if lin_eqb (fst (fst g)) b then i else mp_idx b r (Datatypes.S i) end.
Definition mp_idx_w {X : Type} (gs : list (lin * lin * X)) : nat := mp_idx (LIN 0 [(VW, 8)]) gs 0.
(* [comment removed for export] *)
Definition via_of (S : sst) : positive :=
  match List.find (fun R => match is_const (rg_base R), is_const (rg_size R) with Some b, Some z => (Z.leb b 0x176108 && Z.ltb 0x176108 (b + z))%bool | _, _ => false end) (s_rgs S) with
  | Some R => match is_const (rg_base R) with
              | Some b => match tget (okey (0x176108 - b)) (rg_cont R) with Some (BV l _) => match l_t l with (v, _) :: _ => v | [] => VIA end | _ => VIA end
              | None => VIA
              end
  | None => VIA
  end.
(* [comment removed for export] *)
Definition strict_live (T : sst) (MT : smodel) (als : list lin) : sst :=
  let LS := live_set (SST (s_pc T) (s_regs T) (s_rgs T) [] (s_next T) (s_resv T)) MT FSDone (ShEmit [] 0) (List.concat (List.map lin_vars als)) in
  SST (s_pc T) (s_regs T) (s_rgs T)
      (List.filter (fun f => forallb (fun x => if Pos.ltb x NB_G then true else match tget x LS with Some _ => true | None => false end) (fact_vars f)) (s_facts T))
      (s_next T) (s_resv T).
(* [comment removed for export] *)
Fixpoint pins (x : positive) (l : list positive) : list positive :=
  match l with [] => [x] | y :: r => if Pos.ltb x y then x :: l else if Pos.eqb x y then l else y :: pins x r end.
(* [comment removed for export] *)
Definition compact_rho (n0 : positive) (T : sst) (MT : smodel) (aT : ast) : tree lin * (sst * smodel * ast) :=
  let LS := live_set T MT FSDone (ShEmit [] 0) (List.concat (List.map lin_vars (alins_a aT))) in
  let LS' := List.fold_left (fun t f => List.fold_left (fun t x => tset x tt t) (fact_vars f) t) (s_facts T) LS in
  let keys := List.fold_left (fun acc x => if Pos.ltb x n0 then acc else pins x acc) (List.map fst (FxCall.telems LS')) [] in
  let '(n', ρ) := List.fold_left (fun '(i, t) x => (Pos.succ i, tset x (lvar i) t)) keys (n0, TEmpty) in
  (ρ, (ssubst ρ n' T, msubst ρ MT, asubst ρ aT)).
Definition N0_G : positive := s_next TG0_S.
Definition compact (T : sst) (MT : smodel) (aT : ast) : sst * smodel * ast := snd (compact_rho N0_G T MT aT).

(* [comment removed for export] *)
Definition off_pri (S : sst) (M : smodel) (a : ast) : nat :=
  let a' := match apost_cacheadd S M a with Some (_, _, a1) => a1 | None => a end in
  (3 + 2 * List.length (a_own a') + 2 * List.length (a_live a'))%nat.

(* [comment removed for export] *)
Definition JL_L : nat := mp_idx (LIN 0 [(UBU, 4096)]) (sm_maps PFINL_M) 0.
Definition LNORM {N : Type} (BNn : bnode -> @mchain N -> @mchain N) (k : @mchain N) : @mchain N :=
  let os := [lconst 6144; LIN 0 [(MP_I, 4096)]] in
  let side := BNn (BPlaceE JL_L os) (BNn (BFront 5) (BNn (BFront 2) (BNn (BMergeS 0) (BNn (BSplitW 0 (LIN 8 [(QU_I, 8)]))
                (BNn (BFront 1) (BNn (BFront 5) (BNn (BFront 5) (BNn (BFront 5) (BNn (BFront 4) (BNn (BFront 5) MEnd)))))))))) in
  MJoinG genLAR (MSplitG JL_L (0x7fff7000 - 1) side side) 0x8fe04 (BNn (BIrL (LIN 6152 [(QU_I, 8); (UB_I, 4096)])) k).
(* [comment removed for export] *)
