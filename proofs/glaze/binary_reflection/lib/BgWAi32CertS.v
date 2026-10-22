(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
From OssFuzzTheorems.Proofs.glaze.binary_reflection.lib Require BvWfKernel.
From OssFuzzTheorems.Proofs.glaze.binary_reflection.lib Require WdZS.
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Bool Lia.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Instr.
Require OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.BgCommon OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.BgStrResizeT OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.BgStrResizeC OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.BgI32. Import OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.BgCommon OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.BgStrResizeT OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.BgStrResizeC.BgStrResizeA OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.BgI32.
From OssFuzzTheorems.Proofs.glaze.binary_reflection.lib Require Import BgWA.
Require OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.BgWAi8CertS. Import OssFuzzTheorems.Proofs.glaze.binary_reflection.lib.BgWAi8CertS.BgWAX.
From OssFuzzTheorems.Proofs.glaze.binary_reflection.lib Require Import BgWAi32.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations. Import AX2. Import AX2S. Import AP. Import GPS.
Open Scope Z_scope.
#[local] Notation CHKX c k := (check BSEGS (BgWA.IT cfg) ABOTH BgWA.NXF LIMIT ISP0 XN XE0 BgWA.XB (HScut c (XCUTS cfg INVm JS1m elem) k) 0%nat BFUEL FUELA None).
(* [comment removed for export] *)
Lemma gplan_XS : gplan_ok (XPLAN_S cfg JS0m INVm JS1m elem) = true. Proof. vm_compute. reflexivity. Qed.
(* [comment removed for export] *)
Lemma cert_SX : CHKX (BgWA.ce cfg MS) 0 (BgWA.tin cfg MS) (XPLAN_S cfg JS0m INVm JS1m elem) = COk (SHole 0).
Proof. rewrite IT_eq. vm_cast_no_check (@eq_refl cres (COk (SHole 0))). Qed.
(* [comment removed for export] *)
