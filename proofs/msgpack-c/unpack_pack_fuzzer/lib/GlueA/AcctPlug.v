(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From Stdlib Require Import PrimInt63 Uint63.
From stdpp Require Import gmap.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Specs Run.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib Require Import PropExec MState Cells Frame.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib Require ALib.Mem ALib.Step ALib.Nodes.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALibA Require Import AcctCore ExecF.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALibA Require Shadow ModelX NodesA ITreeA.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Spec Require Import STree AsanCtrl AsanEmbed.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.AsanW Require Import AImg AProto ABase AMalloc_iface AInstanceM AInstanceU.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.AsanW Require Import AMalloc_iface2 AInstanceU2.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.AsanW Require AInstanceArena ATsafeAlloc.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.W2 Require ExhFirst.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Common Require Import RunDraw.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX Require Import W64 Val IMap Instr State Step Plan.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Heap Require Import Op.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Ctr Require Import Lib Defs.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Glue Require Import Ops CtrSys.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Bridge Require Import Ledger Op.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Bridge Require GlueA FakeLaw Acct.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.GlueA Require AsanAcct AsanRun AsanDrun.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Import St HeapOp.
Open Scope Z_scope.
Module AM := OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Mem.
Local Notation AIu2 := (AInstanceU2.AIu2 ExhFirst.exh_first).
Local Notation AIu_fake := (FakeLaw.AIu_fake ExhFirst.exh_first).

Section Plug.
Context {rc : runConstT}.

Notation NMAXx := AsanAcct.NMAX (only parsing).
Notation ACCTx := (Acct.ACCT AsanAcct.NMAX AsanAcct.SHFIX) (only parsing).
Notation COVPx := (Acct.COVPb AsanAcct.SHFIX) (only parsing).

Lemma ACCT_ledx : forall aw L RNG st LBa mo, ACCTx aw L RNG st LBa mo ->
  exists A : word -> Prop, ainv (m_vm_lazy mo) A NMAXx mo /\ (forall p, COVPx mo p -> A p).
Proof. exact (Acct.ACCT_led AsanAcct.NMAX AsanAcct.HLIM AsanAcct.SHFIX). Qed.

Lemma ACCT_covx : forall aw L RNG st LBa m mo b z, ACCTx aw L RNG st LBa mo -> AHEAP AIu2 L RNG st LBa m -> In b LBa ->
  (ab_addr b <= z < ab_addr b + ab_size b \/ shad (ab_addr b) <= z < shad (ab_addr b) + shlen (ab_size b + 7)) ->
  page_in_ranges (page_base_of z) (m_vm_lazy mo) = false \/ COVPx mo (page_base_of z).
Proof.
  exact (Acct.ACCT_cov AsanAcct.NMAX AsanAcct.SHFIX AIu2 AInstanceArena.AHU2_arena (FakeLaw.AIu_fk_area ExhFirst.exh_first)).
Qed.

Lemma ACCT_cov_shx : forall aw L RNG st LBa mo z, ACCTx aw L RNG st LBa mo -> sh_cov z ->
  page_in_ranges (page_base_of z) (m_vm_lazy mo) = false \/ COVPx mo (page_base_of z).
Proof.
  intros aw L RNG st LBa mo z HA HC. exact (Acct.ACCT_cov_sh AsanAcct.NMAX AsanAcct.SHFIX aw L RNG st LBa mo z HA (AsanAcct.SHFIX_cov z HC)).
Qed.

Lemma ACCT_matx : forall aw L RNG st LBa mo mo', ACCTx aw L RNG st LBa mo -> same_but_mat mo mo' ->
  List.NoDup (m_vm_materialized mo') ->
  (forall p, List.In p (m_vm_materialized mo') -> List.In p (m_vm_materialized mo) \/ COVPx mo p) ->
  ACCTx aw L RNG st LBa mo'.
Proof. exact (Acct.ACCT_mat AsanAcct.NMAX AsanAcct.SHFIX). Qed.

Lemma ACCT_fdsx : forall aw L RNG st LBa mo f, ACCTx aw L RNG st LBa mo -> ACCTx aw L RNG st LBa (with_fds f mo).
Proof. exact (Acct.ACCT_fds AsanAcct.NMAX AsanAcct.SHFIX). Qed.

Lemma AI_frame_topx : forall L RNG st LB m m',
  AHEAP AIu2 L RNG st LB m -> (forall a, 0 <= a < 2^47 -> m' (AM.wa a) = m (AM.wa a)) -> wmono asegs m m' -> AHEAP AIu2 L RNG st LB m'.
Proof. exact (FakeLaw.AIu_frame_top ExhFirst.exh_first). Qed.

Lemma MP_relx : forall inp mo mo', AsanDrun.MP inp mo -> Acct.acct_rel mo mo' -> AsanDrun.MP inp mo'.
Proof. intros inp mo mo' H R. unfold AsanDrun.MP in *. rewrite (Acct.acct_rel_fs mo mo' R). exact H. Qed.

Lemma OTHER_relx : forall mo mo', Acct.acct_rel mo mo' -> AsanRun.OTHERA mo mo'.
Proof. intros mo mo' R. exact (Acct.acct_rel_fds mo mo' R). Qed.

Lemma C0A_C0 : forall a, Acct.C0A a <-> C0 a.
Proof. intros a. unfold Acct.C0A, C0, W64.two64. tauto. Qed.

Lemma MINV_introx : forall mo, m_halted mo = None -> Acct.lazy_shapeA Acct.C0A mo -> asan_minv C0 mo.
Proof. intros mo HH LZ. split; [exact HH|]. intros z Hz. exact (LZ z (proj2 (C0A_C0 z) Hz)). Qed.

Lemma MINV_acctx : forall aw L RNG st LBa mo, ACCTx aw L RNG st LBa mo -> asan_minv C0 mo.
Proof.
  intros aw L RNG st LBa mo HA. apply MINV_introx.
  - exact (Acct.ACCT_halted AsanAcct.NMAX AsanAcct.SHFIX aw L RNG st LBa mo HA).
  - exact (Acct.ACCT_lazy_shape AsanAcct.NMAX AsanAcct.SHFIX aw L RNG st LBa mo HA).
Qed.

Lemma MINV_relx : forall mo mo', asan_minv C0 mo -> Acct.acct_rel mo mo' -> asan_minv C0 mo'.
Proof.
  intros mo mo' [HH LZ] R.
  destruct (Acct.asan_minv_rel C0 mo mo' (conj HH (fun z Hz => LZ z Hz)) R) as [HH' LZ'].
  split; [exact HH'| intros z Hz; exact (LZ' z Hz)].
Qed.
End Plug.

From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.BothW Require Import BImg.
Module TwinB.
Import stdpp.gmap.
Import LinuxProcessSemantics.LinuxProcessSem.BvBase LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics LinuxProcessSemantics.LinuxProcessSem.MemImageType LinuxProcessSemantics.LinuxProcessSem.State LinuxProcessSemantics.LinuxProcessSem.Specs LinuxProcessSemantics.LinuxProcessSem.Run.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.PropExec OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.MState OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Cells OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Frame.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALibA.AcctCore OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALibA.ExecF.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Spec.STree OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Spec.AsanCtrl OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Spec.AsanEmbed.
Import AProto.TwinB ABase.TwinB AMalloc_iface.TwinB AInstanceM.TwinB AInstanceU.TwinB.
Import AMalloc_iface2.TwinB AInstanceU2.TwinB.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Common.RunDraw.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.W64 OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.Val OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.IMap OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.Instr OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.State OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.Step OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.FX.Plan.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Heap.Op.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Ctr.Lib OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Ctr.Defs.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Glue.Ops OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Glue.CtrSys.
Import Ledger.TwinB Op.TwinB.

Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Import St HeapOp.
Open Scope Z_scope.
Module AM := OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.ALib.Mem.
Local Notation AIu2 := (AInstanceU2.TwinB.AIu2 ExhFirst.TwinB.exh_first).
Local Notation AIu_fake := (FakeLaw.TwinB.AIu_fake ExhFirst.TwinB.exh_first).

Section Plug.
Context {rc : runConstT}.

Notation NMAXx := AsanAcct.TwinB.NMAX (only parsing).
Notation ACCTx := (Acct.TwinB.ACCT AsanAcct.TwinB.NMAX AsanAcct.TwinB.SHFIX) (only parsing).
Notation COVPx := (Acct.TwinB.COVPb AsanAcct.TwinB.SHFIX) (only parsing).

Lemma ACCT_ledx : forall aw L RNG st LBa mo, ACCTx aw L RNG st LBa mo ->
  exists A : word -> Prop, ainv (m_vm_lazy mo) A NMAXx mo /\ (forall p, COVPx mo p -> A p).
Proof. exact (Acct.TwinB.ACCT_led AsanAcct.TwinB.NMAX AsanAcct.TwinB.HLIM AsanAcct.TwinB.SHFIX). Qed.

Lemma ACCT_covx : forall aw L RNG st LBa m mo b z, ACCTx aw L RNG st LBa mo -> AHEAP AIu2 L RNG st LBa m -> In b LBa ->
  (ab_addr b <= z < ab_addr b + ab_size b \/ shad (ab_addr b) <= z < shad (ab_addr b) + shlen (ab_size b + 7)) ->
  page_in_ranges (page_base_of z) (m_vm_lazy mo) = false \/ COVPx mo (page_base_of z).
Proof.
  exact (Acct.TwinB.ACCT_cov AsanAcct.TwinB.NMAX AsanAcct.TwinB.SHFIX AIu2 AInstanceArena.TwinB.AHU2_arena (FakeLaw.TwinB.AIu_fk_area ExhFirst.TwinB.exh_first)).
Qed.

Lemma ACCT_cov_shx : forall aw L RNG st LBa mo z, ACCTx aw L RNG st LBa mo -> sh_cov z ->
  page_in_ranges (page_base_of z) (m_vm_lazy mo) = false \/ COVPx mo (page_base_of z).
Proof.
  intros aw L RNG st LBa mo z HA HC. exact (Acct.TwinB.ACCT_cov_sh AsanAcct.TwinB.NMAX AsanAcct.TwinB.SHFIX aw L RNG st LBa mo z HA (AsanAcct.TwinB.SHFIX_cov z HC)).
Qed.

Lemma ACCT_matx : forall aw L RNG st LBa mo mo', ACCTx aw L RNG st LBa mo -> same_but_mat mo mo' ->
  List.NoDup (m_vm_materialized mo') ->
  (forall p, List.In p (m_vm_materialized mo') -> List.In p (m_vm_materialized mo) \/ COVPx mo p) ->
  ACCTx aw L RNG st LBa mo'.
Proof. exact (Acct.TwinB.ACCT_mat AsanAcct.TwinB.NMAX AsanAcct.TwinB.SHFIX). Qed.

Lemma ACCT_fdsx : forall aw L RNG st LBa mo f, ACCTx aw L RNG st LBa mo -> ACCTx aw L RNG st LBa (with_fds f mo).
Proof. exact (Acct.TwinB.ACCT_fds AsanAcct.TwinB.NMAX AsanAcct.TwinB.SHFIX). Qed.

Lemma AI_frame_topx : forall L RNG st LB m m',
  AHEAP AIu2 L RNG st LB m -> (forall a, 0 <= a < 2^47 -> m' (AM.wa a) = m (AM.wa a)) -> wmono bsegs m m' -> AHEAP AIu2 L RNG st LB m'.
Proof. exact (FakeLaw.TwinB.AIu_frame_top ExhFirst.TwinB.exh_first). Qed.

Lemma MP_relx : forall inp mo mo', AsanDrun.TwinB.MP inp mo -> Acct.TwinB.acct_rel mo mo' -> AsanDrun.TwinB.MP inp mo'.
Proof. intros inp mo mo' H R. unfold AsanDrun.TwinB.MP in *. rewrite (Acct.TwinB.acct_rel_fs mo mo' R). exact H. Qed.

Lemma OTHER_relx : forall mo mo', Acct.TwinB.acct_rel mo mo' -> AsanRun.TwinB.OTHERA mo mo'.
Proof. intros mo mo' R. exact (Acct.TwinB.acct_rel_fds mo mo' R). Qed.

Lemma C0A_C0 : forall a, Acct.TwinB.C0A a <-> C0 a.
Proof. intros a. unfold Acct.TwinB.C0A, C0, W64.two64. tauto. Qed.

Lemma MINV_introx : forall mo, m_halted mo = None -> Acct.TwinB.lazy_shapeA Acct.TwinB.C0A mo -> asan_minv C0 mo.
Proof. intros mo HH LZ. split; [exact HH|]. intros z Hz. exact (LZ z (proj2 (C0A_C0 z) Hz)). Qed.

Lemma MINV_acctx : forall aw L RNG st LBa mo, ACCTx aw L RNG st LBa mo -> asan_minv C0 mo.
Proof.
  intros aw L RNG st LBa mo HA. apply MINV_introx.
  - exact (Acct.TwinB.ACCT_halted AsanAcct.TwinB.NMAX AsanAcct.TwinB.SHFIX aw L RNG st LBa mo HA).
  - exact (Acct.TwinB.ACCT_lazy_shape AsanAcct.TwinB.NMAX AsanAcct.TwinB.SHFIX aw L RNG st LBa mo HA).
Qed.

Lemma MINV_relx : forall mo mo', asan_minv C0 mo -> Acct.TwinB.acct_rel mo mo' -> asan_minv C0 mo'.
Proof.
  intros mo mo' [HH LZ] R.
  destruct (Acct.TwinB.asan_minv_rel C0 mo mo' (conj HH (fun z Hz => LZ z Hz)) R) as [HH' LZ'].
  split; [exact HH'| intros z Hz; exact (LZ' z Hz)].
Qed.
End Plug.
End TwinB.
