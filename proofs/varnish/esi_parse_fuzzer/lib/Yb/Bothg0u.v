(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Bool.
From LinuxProcessSemantics.Riscv Require Import Instr.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb Require AxSyioe Asanz3l AsanPlan.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb Require AsanPlan.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb Require Asanqlm Bothny9 AsanInit.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb Require Asanlzb.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb Require Asanlzb Bothy0u Starazj.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb Require Both6eh.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb Require Starr0h Both6eh.
Import OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.AxSyioe OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.Asanz3l OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.AsanPlan OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.AsanPlan.Asanfbz OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.Asanqlm OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.Bothny9 OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.AsanInit OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.Asanlzb.Asankdu OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.Asanlzb OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.Bothy0u OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.Starazj OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.Both6eh.Starfcw OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.Starr0h OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.Both6eh.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb Require Import Bootzb6.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations. Import AX2. Import APC. Import AP.
Open Scope Z_scope.
From Ltac2 Require Import Ltac2 Constr Std Control.
(* [comment removed for export] *)
Ltac2 cert_refl (rhs : constr) :=
  let g := Control.goal () in
  let r := constr:(@eq_refl cres $rhs) in
  Std.exact_no_check (Constr.Unsafe.make (Constr.Unsafe.Cast r Constr.Cast.vm g)).

Lemma startup_cert_both2 :
  check BSEGS IT2b BOTH NX2b AsanInit.LIMIT (XNb2 NX2b) XE0 XB0 HS_both2 KC2b BFUEL2b FUEL2b None HS_both_0 startup_plan_both2 = COk startup_shape_both2.
Proof. ltac1:(cert_f). cert_refl constr:(COk startup_shape_both2). Qed.
