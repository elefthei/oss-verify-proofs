(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.ShapeAlg.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Tac.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Bytes.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.PropExec.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.MState.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Mem.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Cells.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Step.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Frame.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Exec.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.SCPS.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.LRT.Spin.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.LRT.SRealizes.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.LRT.LBase.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.LRT.LSCPS.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.LRT.LRz.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.Exit_tac.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.AImg.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RT_defs.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RT_data.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RT_wf.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RT_rep.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RT_kit.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.CJ_iface.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RT_art.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RT_fp.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RT_artF.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RT_cost.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_primary_iface.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_quarantine_iface.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_sec_dstateP.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.Drv_tac.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_leaves_memset.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_kit.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_nn_specs.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_p_abs.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_m_tpz.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_m_apz.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_m_pop.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_q_wf2.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_q_zone.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_q_wf3.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RT_sec.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.NElim.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Ceil.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.LiaOn.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.ICPT_iface.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_m_lib4.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_q_drain.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Arr.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RT_secz.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RT_poison8.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_m_spz.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_sec_dstate.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_m_fz.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RT_bandtac4.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.LRT.LMeasure.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.LRT.LSCPS2.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RT_front.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_sec_hz.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_sec_fpU.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_sec_lib.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_cd_stmt.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_m_specs.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_quarantine_iface2.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_q_lock.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_q_ms.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_q_rec2.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.ITree.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Nodes.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.SysStep.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.AShadow.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Ceil.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RT_poison8.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RT_poison8.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_cd_stmt.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_cd_main.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RT_sec.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_sec_gbb.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RT_sec.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_p_nn.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A.RTW_quarantine_iface2.
From Corelib Require Import PrimInt63 PrimString.
Fixpoint flush_loop (n : nat) (acc : int) : int :=
  match n with
  | O => acc
  | S k => flush_loop k (PrimString.length (PrimString.make 16777211%uint63 acc))
  end.
Lemma gc_flush : flush_loop 150 0%uint63 = 16777211%uint63.
Proof. vm_cast_no_check (@eq_refl int 16777211%uint63). Qed.
