(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
From Stdlib Require Import ZArith List.
From OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.A Require Import X0ec X0fy X0fg X0fd X0g3 X0fz X0g0 X0g1 X0g2
X0f4 X0c3 X0fl X0fj X0fm X0f2.

From OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B Require X14x X16j X161 X15y X16o X16k X16l X16m X16n X15p X12o X166 X164 X167 X15n.
Module B_TWIN.

Import OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X14x OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X16j OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X161 OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X15y OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X16o OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X16k OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X16l OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X16m OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X16n OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X15p OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X12o OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X166 OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X164 OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X167 OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X15n.

Theorem rta_realloc : realloc_contract RTA.
Proof.
exact (rta_realloc_of (rcore_prim rta_refill_closed)
(RL_drain_fin.drain_ok fixed_commit_ok (fun p HOK => RL_dsec.item_sec_ok p munmap_ok madvise_ok HOK)) fixed_commit_ok).
Qed.
End B_TWIN.

Theorem rta_realloc : realloc_contract RTA.
Proof.
exact (rta_realloc_of (rcore_prim rta_refill_closed)
(RL_drain_fin.drain_ok fixed_commit_ok (fun p HOK => RL_dsec.item_sec_ok p munmap_ok madvise_ok HOK)) fixed_commit_ok).
Qed.
