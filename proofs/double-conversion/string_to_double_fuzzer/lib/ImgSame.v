(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From LinuxProcessSemantics.LinuxProcessSem Require Import MemImageType.
From OssFuzzTheorems.Proofs.double_conversion.string_to_double_fuzzer.lib Require Import ImgP ImgU ImgA ImgB.
Require OssFuzzTheorems.double_conversion.string_to_double_fuzzer.images.Plain.
Require OssFuzzTheorems.double_conversion.string_to_double_fuzzer.images.Ubsan.
Require OssFuzzTheorems.double_conversion.string_to_double_fuzzer.images.Asan.
Require OssFuzzTheorems.double_conversion.string_to_double_fuzzer.images.AsanUbsan.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Definition image_P : Image := mkImage ImgP.M.loaded_segments ImgP.M.init_pc ImgP.M.phdrs.
Definition image_U : Image := mkImage ImgU.M.loaded_segments ImgU.M.init_pc ImgU.M.phdrs.
Definition image_A : Image := mkImage ImgA.M.loaded_segments ImgA.M.init_pc ImgA.M.phdrs.
Definition image_B : Image := mkImage ImgB.M.loaded_segments ImgB.M.init_pc ImgB.M.phdrs.

Lemma image_P_same : image_P = mkImage OssFuzzTheorems.double_conversion.string_to_double_fuzzer.images.Plain.M.loaded_segments OssFuzzTheorems.double_conversion.string_to_double_fuzzer.images.Plain.M.init_pc OssFuzzTheorems.double_conversion.string_to_double_fuzzer.images.Plain.M.phdrs.
Proof. reflexivity. Qed.
Lemma image_U_same : image_U = mkImage OssFuzzTheorems.double_conversion.string_to_double_fuzzer.images.Ubsan.M.loaded_segments OssFuzzTheorems.double_conversion.string_to_double_fuzzer.images.Ubsan.M.init_pc OssFuzzTheorems.double_conversion.string_to_double_fuzzer.images.Ubsan.M.phdrs.
Proof. reflexivity. Qed.
Lemma image_A_same : image_A = mkImage OssFuzzTheorems.double_conversion.string_to_double_fuzzer.images.Asan.M.loaded_segments OssFuzzTheorems.double_conversion.string_to_double_fuzzer.images.Asan.M.init_pc OssFuzzTheorems.double_conversion.string_to_double_fuzzer.images.Asan.M.phdrs.
Proof. reflexivity. Qed.
Lemma image_B_same : image_B = mkImage OssFuzzTheorems.double_conversion.string_to_double_fuzzer.images.AsanUbsan.M.loaded_segments OssFuzzTheorems.double_conversion.string_to_double_fuzzer.images.AsanUbsan.M.init_pc OssFuzzTheorems.double_conversion.string_to_double_fuzzer.images.AsanUbsan.M.phdrs.
Proof. reflexivity. Qed.

(* [comment removed for export] *)
