(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)


From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib.Lib Require CodeAt StepGen GwInst GwEq. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require Q6nq.
From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require QQRC.
From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require QVbl.

From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require Q9A7.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import Q9A7.Mq1.
From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require Q2qa.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import Q2qa.Mq0. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require Q2qa.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import Q2qa.Mq2. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require Qy5Y.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import Qy5Y.Mq2. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require Qy5Y.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import Qy5Y.Mq0. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require Q4J3.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import Q4J3.Mq0. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require Qy5Y.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import Qy5Y.Mq3. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require Q4J3.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import Q4J3. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require QPjm.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import QPjm. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require QJE4.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import QJE4. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require QWTl.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import QWTl.
From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require QUrT.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import QUrT. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require QkAv.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import QkAv. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require QmuX.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import QmuX. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require QNtS.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import QNtS. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require Qgeq.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import Qgeq. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require Q1Jo.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import Q1Jo. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require Qvs9.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import Qvs9. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require QvBB.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import QvBB. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require QLAK.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import QLAK.
From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require QBpX.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import QBpX.
Import ListNotations. Unset Keyed Unification. Local Ltac OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib.Lib.StepGen.g_amo_step AMO ::= OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib.Lib.StepGen.mkr__g_amo_step_1 AMO. Local Ltac OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib.Lib.StepGen.g_anchor_rw ::= OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib.Lib.StepGen.mkr__g_anchor_rw_2. Local Ltac OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib.Lib.StepGen.g_anchor_rw_any ::= OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib.Lib.StepGen.mkr__g_anchor_rw_any_0. Local Ltac Stdlib.micromega.Lia.lia ::= Q6q3.mkr__lia_0. Local Ltac Stdlib.micromega.Lia.nia ::= Q6q3.mkr__nia_1. Local Ltac OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib.Lib.StepGen.sg_step_core ::= OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib.Lib.StepGen.mkr__sg_step_core_3. Local Ltac OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib.Lib.StepGen.sg_zstep ::= OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib.Lib.StepGen.mkr__sg_zstep_4.
Local Open Scope Z_scope.

From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib.Lib Require CodeAt StepGen GwInst.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Lemma gw_code : CodeAt.code_at usegs 0xd3078 QVbl.divtf3_code.  Proof. StepGen.code_at_vm. Qed.
Lemma gw_base4 : (0xd3078 mod 4 = 0)%Z.  Proof. reflexivity. Qed.
Lemma gw_baser : (0 <= 0xd3078 /\ 0xd3078 + 2308 <= 2^40)%Z.  Proof. vm_compute. split; discriminate. Qed.

Local Ltac Z.euclidean_division_equations_cleanup ::= idtac.

Local Ltac flia ::= flia_fast. Local Ltac mkr__flia_1 := flia_fast.
Local Ltac unfold_sf_in H ::= unfold_sf_in_recast H. Local Ltac mkr__unfold_sf_in_2 H := unfold_sf_in_recast H.
Local Ltac blia ::= blia_fast. Local Ltac mkr__blia_3 := blia_fast.

Local Ltac step ::= step_fast. Local Ltac mkr__step_4 := step_fast.
Local Ltac zsimp ::= zsimp_fast. Local Ltac mkr__zsimp_5 := zsimp_fast.

Section Walk.
Variables (sp a0 a1 a2 a3 : word).

Local Definition gwt_X : unit := (Q6nq.gwt_def (@QQRC.divtf3_post) (@QNtS.divtf3_post) (Q6nq.gwt_def (@QVbl.divtf3_post) (@QNtS.divtf3_post) Q6nq.gwt_nil)).
#[using="Type"] Lemma Lbchk : ltac2:(Q6nq.tyx '(@QQRC.Lbchk usegs 0xd3078 gw_code gw_base4 gw_baser mulhu_shl32 land_ones_l sra63_K_neg sra63_K_pos ndr_lt64 ndr_ge64) [[@gw_eq_divtf3_post__3; @gw_eq_divtf3_post__2; @gw_eq_divtf3_post]; [@gw_eq_saved12__3; @gw_eq_saved12__2; @gw_eq_saved12]] '([(-600); (-112); 4096; 866416]%Z : list Z) 'gwt_X).
Proof. ltac2:(GwEq.gw_rw [[@gw_eq_divtf3_post__3; @gw_eq_divtf3_post__2; @gw_eq_divtf3_post]; [@gw_eq_saved12__3; @gw_eq_saved12__2; @gw_eq_saved12]]); first [GwInst.gw_exact (@QQRC.Lbchk usegs 0xd3078 gw_code gw_base4 gw_baser mulhu_shl32 land_ones_l sra63_K_neg sra63_K_pos ndr_lt64 ndr_ge64) | autorewrite with gw_eqs; GwInst.gw_exact (@QQRC.Lbchk usegs 0xd3078 gw_code gw_base4 gw_baser mulhu_shl32 land_ones_l sra63_K_neg sra63_K_pos ndr_lt64 ndr_ge64)]. Qed.

#[using="Type"] Lemma Lp2r : ltac2:(Q6nq.tyx '(@QQRC.Lp2r usegs 0xd3078 gw_code gw_base4 gw_baser mulhu_shl32 land_ones_l sra63_K_neg sra63_K_pos ndr_lt64 ndr_ge64) [[@gw_eq_divtf3_post__3; @gw_eq_divtf3_post__2; @gw_eq_divtf3_post]; [@gw_eq_saved12__3; @gw_eq_saved12__2; @gw_eq_saved12]] '([(-112); 4096; 865744]%Z : list Z) 'gwt_X).
Proof. ltac2:(GwEq.gw_rw [[@gw_eq_divtf3_post__3; @gw_eq_divtf3_post__2; @gw_eq_divtf3_post]; [@gw_eq_saved12__3; @gw_eq_saved12__2; @gw_eq_saved12]]); first [GwInst.gw_exact (@QQRC.Lp2r usegs 0xd3078 gw_code gw_base4 gw_baser mulhu_shl32 land_ones_l sra63_K_neg sra63_K_pos ndr_lt64 ndr_ge64) | autorewrite with gw_eqs; GwInst.gw_exact (@QQRC.Lp2r usegs 0xd3078 gw_code gw_base4 gw_baser mulhu_shl32 land_ones_l sra63_K_neg sra63_K_pos ndr_lt64 ndr_ge64)]. Qed.

#[using="Type"] Lemma Linfr : ltac2:(Q6nq.tyx '(@QQRC.Linfr usegs 0xd3078 gw_code gw_base4 gw_baser mulhu_shl32 land_ones_l sra63_K_neg sra63_K_pos ndr_lt64 ndr_ge64) [[@gw_eq_divtf3_post__3; @gw_eq_divtf3_post__2; @gw_eq_divtf3_post]; [@gw_eq_saved12__3; @gw_eq_saved12__2; @gw_eq_saved12]] '([(-112); 4096; 865400]%Z : list Z) 'gwt_X).
Proof. ltac2:(GwEq.gw_rw [[@gw_eq_divtf3_post__3; @gw_eq_divtf3_post__2; @gw_eq_divtf3_post]; [@gw_eq_saved12__3; @gw_eq_saved12__2; @gw_eq_saved12]]); first [GwInst.gw_exact (@QQRC.Linfr usegs 0xd3078 gw_code gw_base4 gw_baser mulhu_shl32 land_ones_l sra63_K_neg sra63_K_pos ndr_lt64 ndr_ge64) | autorewrite with gw_eqs; GwInst.gw_exact (@QQRC.Linfr usegs 0xd3078 gw_code gw_base4 gw_baser mulhu_shl32 land_ones_l sra63_K_neg sra63_K_pos ndr_lt64 ndr_ge64)]. Qed.

#[using="Type"] Lemma Lbr : ltac2:(Q6nq.tyx '(@QQRC.Lbr usegs 0xd3078 gw_code gw_base4 gw_baser mulhu_shl32 land_ones_l sra63_K_neg sra63_K_pos ndr_lt64 ndr_ge64) [[@gw_eq_divtf3_post__3; @gw_eq_divtf3_post__2; @gw_eq_divtf3_post]; [@gw_eq_saved12__3; @gw_eq_saved12__2; @gw_eq_saved12]] '([(-112); 4096; 865376; 9223372036854775807]%Z : list Z) '(Q6nq.gwt_unf (@ABS_HI) gwt_X)).
Proof. ltac2:(GwEq.gw_rw [[@gw_eq_divtf3_post__3; @gw_eq_divtf3_post__2; @gw_eq_divtf3_post]; [@gw_eq_saved12__3; @gw_eq_saved12__2; @gw_eq_saved12]]); first [GwInst.gw_exact (@QQRC.Lbr usegs 0xd3078 gw_code gw_base4 gw_baser mulhu_shl32 land_ones_l sra63_K_neg sra63_K_pos ndr_lt64 ndr_ge64) | autorewrite with gw_eqs; GwInst.gw_exact (@QQRC.Lbr usegs 0xd3078 gw_code gw_base4 gw_baser mulhu_shl32 land_ones_l sra63_K_neg sra63_K_pos ndr_lt64 ndr_ge64)]. Qed.

#[using="Type"] Lemma Lspec : ltac2:(Q6nq.tyx '(@QQRC.Lspec usegs 0xd3078 gw_code gw_base4 gw_baser mulhu_shl32 land_ones_l sra63_K_neg sra63_K_pos ndr_lt64 ndr_ge64) [[@gw_eq_divtf3_post__3; @gw_eq_divtf3_post__2; @gw_eq_divtf3_post]; [@gw_eq_saved12__3; @gw_eq_saved12__2; @gw_eq_saved12]] '([(-112); 4096; 865348]%Z : list Z) 'gwt_X).
Proof. ltac2:(GwEq.gw_rw [[@gw_eq_divtf3_post__3; @gw_eq_divtf3_post__2; @gw_eq_divtf3_post]; [@gw_eq_saved12__3; @gw_eq_saved12__2; @gw_eq_saved12]]); first [GwInst.gw_exact (@QQRC.Lspec usegs 0xd3078 gw_code gw_base4 gw_baser mulhu_shl32 land_ones_l sra63_K_neg sra63_K_pos ndr_lt64 ndr_ge64) | autorewrite with gw_eqs; GwInst.gw_exact (@QQRC.Lspec usegs 0xd3078 gw_code gw_base4 gw_baser mulhu_shl32 land_ones_l sra63_K_neg sra63_K_pos ndr_lt64 ndr_ge64)]. Qed.

#[using="Type"] Lemma divtf3_walk : ltac2:(Q6nq.tyx '(@QQRC.divtf3_walk usegs 0xd3078 gw_code gw_base4 gw_baser mulhu_shl32 land_ones_l sra63_K_neg sra63_K_pos ndr_lt64 ndr_ge64) [[@gw_eq_divtf3_post__3; @gw_eq_divtf3_post__2; @gw_eq_divtf3_post]] '([(-112); 4096; 864376]%Z : list Z) '(Q6nq.gwt_unf (@divtf3_entry) gwt_X)).
Proof. ltac2:(GwEq.gw_rw [[@gw_eq_divtf3_post__3; @gw_eq_divtf3_post__2; @gw_eq_divtf3_post]]); first [GwInst.gw_exact (@QQRC.divtf3_walk usegs 0xd3078 gw_code gw_base4 gw_baser mulhu_shl32 land_ones_l sra63_K_neg sra63_K_pos ndr_lt64 ndr_ge64) | autorewrite with gw_eqs; GwInst.gw_exact (@QQRC.divtf3_walk usegs 0xd3078 gw_code gw_base4 gw_baser mulhu_shl32 land_ones_l sra63_K_neg sra63_K_pos ndr_lt64 ndr_ge64)]. Qed.
End Walk.

Theorem divtf3_spec : divtf3_stmt.
Proof. ltac2:(GwEq.gw_rw [[@gw_eq_divtf3_stmt__3; @gw_eq_divtf3_stmt__2; @gw_eq_divtf3_stmt]]); first [GwInst.gw_exact (@QQRC.divtf3_spec usegs 0xd3078 gw_code gw_base4 gw_baser mulhu_shl32 land_ones_l sra63_K_neg sra63_K_pos ndr_lt64 ndr_ge64) | autorewrite with gw_eqs; GwInst.gw_exact (@QQRC.divtf3_spec usegs 0xd3078 gw_code gw_base4 gw_baser mulhu_shl32 land_ones_l sra63_K_neg sra63_K_pos ndr_lt64 ndr_ge64)]. Qed.
