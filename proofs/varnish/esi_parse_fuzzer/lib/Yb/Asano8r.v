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
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb Require Asanqlm Asanjze AsanInit.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb Require Asanlzb.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb Require Asanlzb Staruoz.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb Require Asan5d5.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb Require Starob1 Asan5d5.
Import OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.AxSyioe OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.Asanz3l OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.AsanPlan OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.AsanPlan.Asanfbz OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.Asanqlm OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.Asanjze OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.AsanInit OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.Asanlzb.Asankdu OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.Asanlzb OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.Staruoz OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.Asan5d5.Starnkk OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.Starob1 OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yb.Asan5d5.
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

Lemma startup_cert2 :
  check ASEGS IT2 ASAN NX2 AsanInit.LIMIT (XNa2 NX2) XE0 XB0 HS_asan2 KC2 BFUEL2 FUEL2 None HS_asan_0 startup_plan2 = COk startup_shape2.
Proof. ltac1:(cert_f). cert_refl constr:(COk startup_shape2). Qed.
