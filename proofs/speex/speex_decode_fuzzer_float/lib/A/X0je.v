(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.EquivalenceDefinition Require Import Equivalence.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType StackLayout Fs State Monad Specs Run.
From OssFuzzTheorems.speex.speex_decode_fuzzer_float.images Require Import Asan.
From OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib Require Import TopE.
From OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.Spec Require Import X1nu.
From OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.LibA Require Import X1cs.
From OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.AS Require Import X0mx X0n0 X0lj.
From OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.A Require Import X0ec X0fg X00a X001 X047 X0jw X080 X0jb.
From OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.A Require Import X002.

From OssFuzzTheorems.speex.speex_decode_fuzzer_float.images Require AsanUbsan.
From OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.AS Require X0lk.
From OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B Require X14x X161 X0r9 X0r0 X0v5 X1ab X19s.
From OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B Require X0r1.
Module B_TWIN.

Import OssFuzzTheorems.speex.speex_decode_fuzzer_float.images.AsanUbsan.
Import OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.TopE.
Import OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.Spec.X1nu.
Import OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.LibA.X1cs.
Import OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.AS.X0mx OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.AS.X0n0 OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.AS.X0lk.
Import OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.A.X080.
Import OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X14x OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X161 OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X0r9 OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X0r0 OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X0v5 OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X1ab OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X19s.
Import OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X0r1.
Import ListNotations.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Definition T_spx (argv : list (list byte)) (fs : Fs.Fs) : TSet := canonT (map (map bv_unsigned) argv) fs.
Definition D_spx (argv : list (list byte)) (fs : Fs.Fs) : Prop := forall ok : bool, run_defined fs (map (map bv_unsigned) argv) ok.

Lemma T_spx_nil : forall argv fs, T_spx argv fs [].
Proof. intros argv fs. apply canonT_nil. Qed.

Definition MAIN_stmt : Prop :=
forall (argv : list (list byte)) (fs : Fs.Fs), valid_argv argv -> D_spx argv fs ->
forall c, STARTF RTA OUT_repA ERR_repA XENVA LIB_A argv fs c -> realizes bsegs c (T_spx argv fs).

Theorem A_side :
MAIN_stmt ->
(forall inp, valid_input_either inp -> D_spx (in_argv inp) (in_fs inp)) ->
side_canon X1nu.Tc (mkImage AsanUbsan.M.loaded_segments AsanUbsan.M.init_pc AsanUbsan.M.phdrs) target_alloc_limit.
Proof.
intros HM HD en inp He Hi.
pose proof (asan_side_of_main T_spx D_spx T_spx_nil HM en inp He Hi (HD inp Hi)) as Hr.
destruct en as [sp brk mb rnd]. cbn [Run.run_scfg bh_traces bh_errors en_sp en_brk en_mmap_base en_draw] in *.
split.
- intros tr. exact (srealizes_obs_iff ASEGS _ _ Hr tr).
- exact (srealizes_no_error ASEGS _ _ Hr).
Qed.
End B_TWIN.

Import ListNotations.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Definition T_spx (argv : list (list byte)) (fs : Fs.Fs) : TSet := canonT (map (map bv_unsigned) argv) fs.
Definition D_spx (argv : list (list byte)) (fs : Fs.Fs) : Prop := forall ok : bool, run_defined fs (map (map bv_unsigned) argv) ok.

Lemma T_spx_nil : forall argv fs, T_spx argv fs [].
Proof. intros argv fs. apply canonT_nil. Qed.

Definition MAIN_stmt : Prop :=
forall (argv : list (list byte)) (fs : Fs.Fs), valid_argv argv -> D_spx argv fs ->
forall c, STARTF RTA OUT_repA ERR_repA XENVA LIB_A argv fs c -> realizes asegs c (T_spx argv fs).

Theorem A_side :
MAIN_stmt ->
(forall inp, valid_input_either inp -> D_spx (in_argv inp) (in_fs inp)) ->
side_canon X1nu.Tc (mkImage Asan.M.loaded_segments Asan.M.init_pc Asan.M.phdrs) target_alloc_limit.
Proof.
intros HM HD en inp He Hi.
pose proof (asan_side_of_main T_spx D_spx T_spx_nil HM en inp He Hi (HD inp Hi)) as Hr.
destruct en as [sp brk mb rnd]. cbn [Run.run_scfg bh_traces bh_errors en_sp en_brk en_mmap_base en_draw] in *.
split.
- intros tr. exact (srealizes_obs_iff ASEGS _ _ Hr tr).
- exact (srealizes_no_error ASEGS _ _ Hr).
Qed.
