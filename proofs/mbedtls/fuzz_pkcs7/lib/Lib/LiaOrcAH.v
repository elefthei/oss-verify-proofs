(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.mbedtls.fuzz_pkcs7.lib.Lib Require Import LiaTuning LiaKitAH.
From OssFuzzTheorems.Proofs.mbedtls.fuzz_pkcs7.lib.Lib Require Export LiaOrc.
Ltac orc_lia_ah := orc_go_AH ltac:(lia_ah).
Ltac orc_lia_ahx := orc_go_AH ltac:(lia_ahx).
