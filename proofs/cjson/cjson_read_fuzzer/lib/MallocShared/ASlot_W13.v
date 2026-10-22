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
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib Require ITree.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib Require Nodes.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib Require Decode.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib Require Arr.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require MallocRep.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require MallocFacts_Bpres.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require F_malloc_enframe.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require F_malloc_entry.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require MallocTree.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require MallocKit_A2.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec Require STree.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec Require Malloc.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec Require MallocCtrl.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec Require Monad.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec Require Prog.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require Malloc_fp.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require MallocKit_A3.
Module ASlot_W12.
(* [comment removed for export] *)
(* [comment removed for export] *)
Import Stdlib.ZArith.ZArith Stdlib.NArith.NArith Stdlib.Lists.List Stdlib.micromega.Lia Stdlib.Bool.Bool.
Import stdpp.gmap.
Import LinuxProcessSemantics.LinuxProcessSem.BvBase LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics LinuxProcessSemantics.LinuxProcessSem.MemImageType LinuxProcessSemantics.LinuxProcessSem.State LinuxProcessSemantics.LinuxProcessSem.Run.
Import LinuxProcessSemantics.Riscv.Prelude LinuxProcessSemantics.Riscv.Instr LinuxProcessSemantics.Riscv.Decode LinuxProcessSemantics.Riscv.DecodeC LinuxProcessSemantics.Riscv.Sem LinuxProcessSemantics.Riscv.Fpu.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Tac OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Image OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.ZBridge OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.SysStep OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.SFModel OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.ITree OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Nodes OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Decode OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Arr.

Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocRep OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocFacts_Bpres.F_malloc_free OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.F_malloc_enframe.F_malloc_fast OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.F_malloc_entry OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocTree OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocKit_A2.MallocKit_A.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocFacts_Bpres.MallocKit_AB.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec.STree OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec.Malloc OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec.MallocCtrl OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec.Monad OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec.Prog.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.Malloc_fp OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocKit_A2.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocKit_A3 OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocKit_A2.ASlot_W1.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Import ListNotations.
Open Scope Z_scope.

(* [comment removed for export] *)
Section CeilWrap.
Context {ACEIL : Ceil}.


Local Ltac Z.euclidean_division_equations_cleanup ::= idtac.

(* [comment removed for export] *)
(* [comment removed for export] *)
Section STC.
Variables (szc cnt : Z).
Hypothesis SZC : 1 <= szc <= 8191.
Hypothesis CR : 1 <= cnt <= 32.
Hypothesis SMALL : szc * 16 * cnt + 16 <= 2048.
Let n' := szc * 16 * cnt + 12.
Let j := size_to_class n'.

Lemma stc_q_eq : j = stc_q (szc * cnt).
Proof.
  unfold j, n'. rewrite size_to_class_q by nia. f_equal. Z.div_mod_to_equations. nia.
Qed.
End STC.

End CeilWrap.
End ASlot_W12.

(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From stdpp Require Import gmap.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib Require Import Tac Image ZBridge SysStep SFModel ITree Nodes Decode Arr.

From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require Import MallocRep.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require MallocFacts_Bpres.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocFacts_Bpres.F_malloc_free.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require F_malloc_enframe.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.F_malloc_enframe.F_malloc_fast.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require Import F_malloc_entry F_malloc_enframe MallocTree.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require MallocKit_A2.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocKit_A2.MallocKit_A.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require MallocFacts_Bpres.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocFacts_Bpres.MallocKit_AB.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec Require Import STree Malloc MallocCtrl Monad Prog.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require Import Malloc_fp MallocKit_A2.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require Import MallocKit_A3.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared Require MallocKit_A2.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.MallocShared.MallocKit_A2.ASlot_W1.
Import ASlot_W12.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Import ListNotations.
Open Scope Z_scope.

(* [comment removed for export] *)
Section CeilWrap.
Context {ACEIL : Ceil}.


Local Ltac Z.euclidean_division_equations_cleanup ::= idtac.

Section ENF.
Variables (st : mstate) (m1 o : mem) (g b : aptr) (r : region) (idx j : Z).
Let mr := get_meta_rec st g.
Let stride := get_stride mr.
Let B := conc st b.
Let P := B + 16 + stride * idx.
Let N := UNIT * size_class j - IB.
Hypothesis UA : unk_agree st o m1.
Hypothesis J : 0 <= j < 48.
Hypothesis HA : active st j = Some g.
Hypothesis MSL : meta_slot st g.
Hypothesis MW : mw_ok mr.
Hypothesis SCg : m_sizeclass mr = j.
Hypothesis STR : stride = UNIT * size_class j.
Hypothesis SO : slot_ok st g b r idx N.
Hypothesis TK : ticks_ok st.

Lemma enf_facts : m_mem mr = Some b /\ (s_regions st) !! (fst b) = Some r /\ r_kind r = RKGroup /\ 0 <= snd b /\ snd b mod 16 = 0
  /\ 0 <= idx <= m_last_idx mr /\ m_last_idx mr < 32
  /\ snd b + 16 + stride * (m_last_idx mr + 1) <= round_up_pg (r_len r) /\ 16 <= stride /\ stride mod 16 = 0
  /\ (forall b' gh, (s_groups st) !! b' = Some gh -> fst b' = fst b -> snd b' + 9 <= snd b + 16 + stride * idx - 4 \/ snd b + 16 + stride * idx + stride - 4 <= snd b')
  /\ cell_read (get_shadow st (fst b)) (snd b + 16 + stride * idx - 4) = Known 0
  /\ (forall off, 0 <= off -> 16 * off + N + 4 <= stride -> (stride * idx + 16 * off) / 16 < 65536).
Proof.
  destruct SO as [Hmem Hr Hk B0 B16 IDX LI32 SPAN S16 SMOD S31 N0 NS NOGRP HDR0 Q16 SSL MSL' AVr FRr FBr MPL SCr].
  fold mr in Hmem, IDX, LI32, SPAN, S16, SMOD, NOGRP, HDR0, Q16 |- *. fold stride in SPAN, S16, SMOD, NOGRP, HDR0, Q16 |- *.
  repeat (split; [assumption|]). exact Q16.
Qed.
(* [comment removed for export] *)
Definition enf0_st : mstate :=
  wr8 (fst b, snd b + (16 + stride * idx) + -3) (Z.land idx 31 + Z.shiftl 0 5)
    (wr8 (fst b, snd b + (16 + stride * idx) + -3) idx
      (wr16 (fst b, snd b + (16 + stride * idx) + -2) ((snd b + (16 + stride * idx) - (snd b + 16)) / 16) st)).

Lemma enf0_st_eq : fst (enframe_at st g idx N 0) = enf0_st /\ snd (enframe_at st g idx N 0) = (fst b, snd b + (16 + stride * idx)).
Proof.
  pose proof enf_facts as (Hmem & _).
  assert (STN : stride = N + 4) by (rewrite STR; unfold N, UNIT, IB; lia).
  unfold enframe_at. change (get_meta_rec st g) with mr. rewrite Hmem. cbn [default from_option id]. fold stride.
  change (negb (0 =? 0)) with false. cbv iota beta. unfold aadd. cbn [fst snd].
  unfold set_size. cbn [fst snd].
  replace (snd b + (UNIT + stride * idx) + (stride - IB) - (snd b + (UNIT + stride * idx)) - N) with 0 by (unfold UNIT, IB; lia).
  cbn [Z.eqb negb Z.leb]. unfold enf0_st, UNIT. split; reflexivity.
Qed.
(* [comment removed for export] *)
Lemma meta_word_mod4096 r0 : mw_ok r0 -> meta_word r0 mod 4096 = meta_word (m_set_maplen 0 r0).
Proof.
  intros (LI & FB & SC & ML). unfold meta_word. cbn [m_last_idx m_freeable m_sizeclass m_maplen m_set_maplen].
  rewrite Z.land_0_l. Z.div_mod_to_equations. lia.
Qed.

(* [comment removed for export] *)
Definition pp : aptr := (fst b, snd b + (16 + stride * idx)).
End ENF.


End CeilWrap.
