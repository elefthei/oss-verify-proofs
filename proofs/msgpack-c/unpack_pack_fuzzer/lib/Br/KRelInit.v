(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
From Stdlib Require Import ZArith NArith List Lia Bool Permutation.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType Fs State Specs Run.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Lib Require Import PropExec MState ITree Nodes NodesM Decode DecodeM.
From OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer.images Require Import Plain.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Malloc Require Import Prelim STree Malloc KInv.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.MQ Require Import Monad MSafe Prog KLink KStep KOwn KStepC KInit A_MallocBlocks.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Ref Require Import F_syscalls.
From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Br Require Import StateGlue KRel.

Set Keyed Unification.
Import ListNotations.
Open Scope Z_scope.
Unset Lia Cache.

From OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Lib Require Import CeilLia.
Unset Nia Cache. Unset Nra Cache.
Section CEIL.
Context {CLG : OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Malloc.Ceiling.ceiling}.

Lemma KREL_init : forall segs brk0 mbase sp lim inp,
  valid_brk segs brk0 ->
  0 < reserved_top (segments_reserved segs) ->
  reserved_top (segments_reserved segs) + brk_aslr_max + 4 * PGSZ <= alloc_ceiling ->
  ceil_ok (m_vmmaps (init_model (segments_reserved segs) brk0 mbase sp lim inp)) ->
  KREL (ps_init (reservedZ segs)) [] (init_model (segments_reserved segs) brk0 mbase sp lim inp).
Proof.
  intros segs brk0 mbase sp lim inp Hv Hpos Hceil Hck. unfold KREL. cbn [map].
  apply OWNS_init; [exact Hv | exact Hpos | exact Hceil | exact Hck | exact I].
Qed.

Lemma KREL_init_ref : forall brk0 mbase sp lim inp,
  valid_brk rsegs brk0 ->
  ceil_ok (m_vmmaps (init_model (segments_reserved rsegs) brk0 mbase sp lim inp)) ->
  KREL (ps_init (reservedZ rsegs)) [] (init_model (segments_reserved rsegs) brk0 mbase sp lim inp).
Proof.
  intros brk0 mbase sp lim inp Hv Hck.
  assert (E : reserved_top (segments_reserved rsegs) = ltac:(let x := eval vm_compute in (reserved_top (segments_reserved rsegs)) in exact x))
    by (vm_compute; reflexivity).
  apply KREL_init; [exact Hv | rewrite E; lia | | exact Hck].
  rewrite E. pose_ceil; unfold brk_aslr_max, PGSZ. cbn. lia.
Qed.

End CEIL.

From OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer.images Require Import Ubsan.
Module TwinB.
Import LinuxProcessSemantics.LinuxProcessSem.BvBase LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics LinuxProcessSemantics.LinuxProcessSem.MemImageType LinuxProcessSemantics.LinuxProcessSem.Fs LinuxProcessSemantics.LinuxProcessSem.State LinuxProcessSemantics.LinuxProcessSem.Specs LinuxProcessSemantics.LinuxProcessSem.Run.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Lib.PropExec OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Lib.MState OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Lib.ITree OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Lib.Nodes OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Lib.NodesM OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Lib.Decode OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Lib.DecodeM.
Import OssFuzzTheorems.msgpack_c.unpack_pack_fuzzer.images.Ubsan.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Malloc.Prelim OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Malloc.STree OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Malloc.Malloc OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Malloc.KInv.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.MQ.Monad OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.MQ.MSafe OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.MQ.Prog OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.MQ.KLink OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.MQ.KStep OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.MQ.KOwn OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.MQ.KStepC OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.MQ.KInit OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.MQ.A_MallocBlocks.
Import F_syscalls.TwinB.
Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Br.StateGlue OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Br.KRel.

Set Keyed Unification.
Import ListNotations.
Open Scope Z_scope.
Unset Lia Cache.

Import OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Lib.CeilLia.
Unset Nia Cache. Unset Nra Cache.
Section CEIL.
Context {CLG : OssFuzzTheorems.Proofs.msgpack_c.unpack_pack_fuzzer.lib.Malloc.Ceiling.ceiling}.

Lemma KREL_init : forall segs brk0 mbase sp lim inp,
  valid_brk segs brk0 ->
  0 < reserved_top (segments_reserved segs) ->
  reserved_top (segments_reserved segs) + brk_aslr_max + 4 * PGSZ <= alloc_ceiling ->
  ceil_ok (m_vmmaps (init_model (segments_reserved segs) brk0 mbase sp lim inp)) ->
  KREL (ps_init (reservedZ segs)) [] (init_model (segments_reserved segs) brk0 mbase sp lim inp).
Proof.
  intros segs brk0 mbase sp lim inp Hv Hpos Hceil Hck. unfold KREL. cbn [map].
  apply OWNS_init; [exact Hv | exact Hpos | exact Hceil | exact Hck | exact I].
Qed.

Lemma KREL_init_ref : forall brk0 mbase sp lim inp,
  valid_brk rsegs brk0 ->
  ceil_ok (m_vmmaps (init_model (segments_reserved rsegs) brk0 mbase sp lim inp)) ->
  KREL (ps_init (reservedZ rsegs)) [] (init_model (segments_reserved rsegs) brk0 mbase sp lim inp).
Proof.
  intros brk0 mbase sp lim inp Hv Hck.
  assert (E : reserved_top (segments_reserved rsegs) = ltac:(let x := eval vm_compute in (reserved_top (segments_reserved rsegs)) in exact x))
    by (vm_compute; reflexivity).
  apply KREL_init; [exact Hv | rewrite E; lia | | exact Hck].
  rewrite E. pose_ceil; unfold brk_aslr_max, PGSZ. cbn. lia.
Qed.

End CEIL.
End TwinB.
