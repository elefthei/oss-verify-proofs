(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
From Stdlib Require Import ZArith List.
From OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.A Require Import X0bp X0j9 X0ec X00a X000 X03z X047 X055 X0hg
X0fy X0fg X0ea X0eh X0c3 X0jc X0jd X042.

From OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B Require X12c X14x X0r9 X0qz X0ux X0v5 X0w3 X181 X16j X161 X14v X152 X12o X19t X19u X0v0.
Module B_TWIN.

Import OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X12c OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X14x OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X0r9 OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X0qz OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X0ux OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X0v5 OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X0w3 OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X181 OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X16j OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X161 OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X14v OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X152 OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X12o OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X19t OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X19u OssFuzzTheorems.Proofs.speex.speex_decode_fuzzer_float.lib.B.X0v0.

Theorem rta_fprintf_lib : fprintf_lib_icontract RTA OUT_repA ERR_repA IO_FPA.
Proof.
pose proof (rc_facts RTA rta_contracts_closed) as AF.
exact (fprintf_lib_ok RTA AF rip_proof rta_shw (rta_pf rta_io)).
Qed.

Theorem rta_io_contracts_x : io_contracts_x RTA OUT_repA ERR_repA IO_FPA.
Proof. constructor. exact rta_fprintf_lib. Qed.
End B_TWIN.

Theorem rta_fprintf_lib : fprintf_lib_icontract RTA OUT_repA ERR_repA IO_FPA.
Proof.
pose proof (rc_facts RTA rta_contracts_closed) as AF.
exact (fprintf_lib_ok RTA AF rip_proof rta_shw (rta_pf rta_io)).
Qed.

Theorem rta_io_contracts_x : io_contracts_x RTA OUT_repA ERR_repA IO_FPA.
Proof. constructor. exact rta_fprintf_lib. Qed.
