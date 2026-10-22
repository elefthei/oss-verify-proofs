(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)

From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib Require Import SFModel Arr SysStep Image FP ITree Nodes Decode.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib Require Bytes PropExec.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec Require Import Prelim Monad SoftFloat FmtFp Stdio StrFun.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P Require Import SFW1_lemmas.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P Require Exit.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.Exit.F_memset.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P Require Import F_memcpy.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P Require F_strnlen.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.F_strnlen.F_memchr.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P Require Import F_strnlen F_fwritex F_pad F_fmt_fp_lib F_fmt_fp F_pop_arg Exit Printf_model Printf_mlib Printf_zfacts F_printf_iface.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P Require Import PImg.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P Require F_printf_core_conv.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.F_printf_core_conv.F_printf_core_common.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib Require StoreCache.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.StoreCache.StoreFast.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Import ListNotations.
Import ITree.Exc.
Open Scope Z_scope.
Open Scope mspec_scope.
Open Scope bv_scope.
Set Warnings "-notation-for-abbreviation".
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IImgP OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_printf_core_dir.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.F_fmt_fp.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P Require F_strnlen.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.F_memcpy.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P Require Exit.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.F_pad OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.F_pop_arg OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.F_strnlen.
#[local] Existing Instances OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.Exit.F_memset.P_memset_contract OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.F_memcpy.P_memcpy_contract OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.F_strnlen.F_memchr.P_memchr_contract OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.F_strnlen.P_strnlen_contract OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.F_pad.P_pad_contract OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.F_pad.P_pad_call_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.F_fmt_fp.P_fmt_fp_contract OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.F_pop_arg.P_pop_arg_contract.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.F_fwritex.
#[local] Hint Extern 0 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fwritex.fwritex_contract) => exact OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.F_fwritex.fwritex_spec : typeclass_instances.
#[local] Hint Extern 0 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fwritex.fwritex_call_c) => exact OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.F_fwritex.fwritex_call : typeclass_instances.
(* [comment removed for export] *)
#[local] Existing Instance OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IImgP.P_img.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.CodeAtT _ _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.CodeAt _ _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.RoB _ _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.RelCode _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.RelSym _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.RelNear _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 2 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.ZFact _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
