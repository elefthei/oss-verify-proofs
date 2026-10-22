(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RelSpec.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Tac.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Arr.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Bytes.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.PropExec.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.MState.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Mem.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Exec.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.ITree.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Nodes.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Decode.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.SysStep.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.RegsEquiv.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.SCPS.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.NodesSound.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.RzNodesImpl.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec.Prelim.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec.Monad.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec.Stdio.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec.Driver.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.Exit_tac.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.LRT.LBase.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.LRT.LSCPS.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.LRT.LRz.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.LRT.LSO_rz.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.AImg.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RT_defs.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.CJ_iface.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.ICPT_iface.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RT_poison8.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.F_memset.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.F_fmt_fp_lib.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.F_pad.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.Exit.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.SO_base.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.F_printf_iface.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.Stdio_iface.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.Drv_base.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.Exit_pre2.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.SO_piface.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.SO_model.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.SO_rz.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.SO_stdio_exit.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.Drv_trunA.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.ShapeAlg.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.ShapeSpec.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RT_data.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RT_art.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.AShadow.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.ICPT_pcsdefs.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.ICPT_musl.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RT_poison.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RT_poison2.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.SFModel.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Image.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.FP.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec.SoftFloat.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec.FmtFp.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.SFW1_lemmas.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.F_memcpy.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.F_fwritex.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.F_pop_arg.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.F_vsnprintf.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.Printf_model.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.Printf_mlib.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.Printf_pieces.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.ICPT_str3.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.ICPT_pcleaf.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.ICPT_pcdefs.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.ICPT_pcommon_x.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.ICPT_pcommon_tb.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.ICPT_pcommon_su.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.ICPT_pcommon_sco.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.ICPT_pcommon_sre.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.ICPT_fmt_iface.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.ICPT_vfprintf.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.ICPT_fprintf.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.StoreCache.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.SO_fprintf.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.Drv_icpt_defs.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.Drv_icpt_fwrite.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.ICPT_vprintf.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Tac.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Bytes.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.SCPS.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Ceil.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.LRT.LBase.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.LRT.LSCPS.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.LRT.LRz.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.AImg.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RT_defs.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.CJ_iface.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.CJ_tree.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.AShadow.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.CJ_conv.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.ICPT_pcsdefs.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.Exit.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.SO_base.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.Stdio_iface.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.Drv_trunA.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.Drv_base.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.Drv_iface2.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.Drv_traces.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.CJ_fuzz_iface.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.Drv_stmt.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.DrvTop.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.DrvTop.
From Corelib Require Import PrimInt63 PrimString.
Fixpoint flush_loop (n : nat) (acc : int) : int :=
  match n with
  | O => acc
  | S k => flush_loop k (PrimString.length (PrimString.make 16777211%uint63 acc))
  end.
Lemma gc_flush : flush_loop 150 0%uint63 = 16777211%uint63.
Proof. vm_cast_no_check (@eq_refl int 16777211%uint63). Qed.
