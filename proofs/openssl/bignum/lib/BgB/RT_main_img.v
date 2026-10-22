(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.openssl.bignum.lib.BgLib Require Import ImageBgA.

From Stdlib Require Import ZArith NArith List Bool Lia.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State.
From OssFuzzTheorems.Proofs.openssl.bignum.lib.Lib Require Import Mem. 
From OssFuzzTheorems.Proofs.openssl.bignum.lib.B Require Import SegRw.
From OssFuzzTheorems.Proofs.openssl.bignum.lib.BgB Require Import R_intalloc.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Open Scope Z_scope.

Lemma seg_rw_IAP1 : seg_rw_ok bgbsegs (IAP + 8) 0x40000 = true. Proof. vm_compute. reflexivity. Qed.
Lemma seg_rw_IAP2 : seg_rw_ok bgbsegs (IAP + 0x40040) 0xd80 = true. Proof. vm_compute. reflexivity. Qed.
Lemma seg_rw_IAP3 : seg_rw_ok bgbsegs (IAP + 0x40dc0) 0x40248 = true. Proof. vm_compute. reflexivity. Qed.
