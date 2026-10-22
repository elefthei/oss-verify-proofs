(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Tac.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Bytes.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.SCPS.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec.Prelim.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec.Stdio.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.UImg.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.CJ_iface.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.CJ_tree.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_pad.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.Exit.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_printf_iface.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.SO_piface.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.Drv_base.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.ShapeAlg.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.ShapeSpec.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.SspGuard.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.Printf_model.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Tac.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Bytes.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.SCPS.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec.Prelim.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec.Stdio.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.UImg.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.CJ_iface.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.CJ_tree.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_pad.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.Exit.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_printf_iface.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.SO_piface.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.SO_piface.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.Drv_base.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.Printf_model.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.ShapeAlg.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.ShapeSpec.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.SspGuard.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.StoreCache.
From Corelib Require Import PrimInt63 PrimString.
Fixpoint flush_loop (n : nat) (acc : int) : int :=
  match n with
  | O => acc
  | S k => flush_loop k (PrimString.length (PrimString.make 16777211%uint63 acc))
  end.
Lemma gc_flush : flush_loop 150 0%uint63 = 16777211%uint63.
Proof. vm_cast_no_check (@eq_refl int 16777211%uint63). Qed.
