(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From Stdlib Require ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.Lib Require SFModel Arr SysStep ImageA FP ITree Nodes Decode.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.Lib Require Bytes PropExec.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.Spec Require Prelim Monad PrintfModel StrFun.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.P Require Printf_mlib Printf_zfacts.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A Require FX_lib F_memset F_memcpy F_memchr I_strnlen F_fwritex F_pop_arg F_printf_iface.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.Spec Require PrintfModel.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A Require F_printf_core_common.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A Require IcptSpec.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A Require R_m2s I_consts F_achk.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.Lib Require StoreFast.
Module TwinB__.
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)

From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.Lib Require Import SFModel Arr SysStep ImageA FP ITree Nodes Decode.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.Spec Require Import Prelim Monad PrintfModel StrFun.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.P Require Import Printf_mlib Printf_zfacts.
Import OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.FX_lib.TwinB__ OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_memset.TwinB__ OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_memcpy.TwinB__ OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_memchr.TwinB__ OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.I_strnlen.TwinB__ OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_fwritex.TwinB__ OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_pop_arg.TwinB__ OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_iface.TwinB__.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.Spec Require Import PrintfModel. (* [comment removed for export] *)
Import OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A Require Import IcptSpec.
Import OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.R_m2s.TwinB__ OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.I_consts.TwinB__ OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_achk.TwinB__.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.Lib Require Import StoreFast.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Import ITree.Exc.
Open Scope Z_scope.
Open Scope mspec_scope.
Open Scope bv_scope.
Set Warnings "-notation-for-abbreviation".  (* [comment removed for export] *)

Section PrintfCore.
  Local Ltac Z.euclidean_division_equations_cleanup ::= idtac.
  Context {St : Type}.
  Variables (Fp B BS : Z) (SINK : (word -> option byte) -> St -> Prop) (TOPOK : Z -> Prop)
            (OUT : list Z -> M St unit) (OUTFP : Z -> Z -> Z -> Z -> Z -> M St Z).
  Hypothesis SFR : sink_frame_stmt Fp B BS SINK.
  Hypothesis SFL : sink_flags_stmt Fp SINK.
  Hypothesis TOK : topok_stmt TOPOK.
  Hypothesis HOUT : out_stmt Fp B BS SINK TOPOK OUT.
  Variables (ra : word) (q : Z) (gp tp : word) (s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e : word)
            (F : bvmap 5 word) (fc0 : bv 32) (m0 : word -> option byte)
            (lo : Z) (canary : word) (A : Z) (fmt : list Z) (AP VA : Z) (slots : list word) (nla nlt : word).
  Hypothesis HF : Forall (fun c => 0 <= c < 256)%Z fmt.
  Hypothesis LO : (lo <= q - PC_DEPTH)%Z.
  Hypothesis GLO : (GLOBALS_TOP <= lo)%Z.
  Hypothesis QHI : (q < 2^63)%Z.
  Hypothesis TQ : TOPOK q.
  Hypothesis FRM0 : frm0 fc0.
  (* [comment removed for export] *)
  Hypothesis HA : (A + zlength fmt <= 835584)%Z.          (* [comment removed for export] *)
  (* [comment removed for export] *)
  Hypothesis SEP_F : ((856512 <= Fp /\ Fp + 232 <= 864256) \/ (AP + 8 <= Fp /\ Fp + 232 <= VA))%Z.
  Hypothesis SEP_B : ((6460704 <= B /\ B + BS <= lo /\ B + BS <= 6467584) \/ (AP + 8 <= B /\ B + BS <= VA))%Z.
  Hypothesis HAP : (q <= AP)%Z.
  Hypothesis HVA : (AP + 8 <= VA)%Z.
  Hypothesis A0 : (0 <= A)%Z.
  Hypothesis VAHI : (VA + 8 * zlength slots <= 2^64)%Z.
  Hypothesis BS0 : (0 <= BS)%Z.
  (* [comment removed for export] *)
  Hypothesis RIP : rip_stmt.
  Hypothesis HA0 : aext m0 lo q A fmt B BS.

  (* [comment removed for export] *)
  Local Notation ctx_all := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.ctx_all ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation W := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.W Fp B BS q lo AP).
  Local Notation Fok := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.Fok F).
  Local Notation Fok_refl := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.Fok_refl F).
  Local Notation Fok_trans := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.Fok_trans F).
  Local Notation POST := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.POST (St:=St) Fp B BS SINK ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F m0 lo canary AP).
  Local Notation hi_cells := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.hi_cells ra s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e canary).
  Local Notation lo_cells := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.lo_cells AP nla nlt).
  Local Notation finv := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.finv Fp B BS ra q s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e m0 lo canary A fmt AP VA slots).
  Local Notation fmt_rng := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.fmt_rng fmt HF).
  Local Notation implM_eq_ms := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.implM_eq_ms (St:=St)).
  Local Notation sink_store := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.sink_store (St:=St) Fp B BS SINK SFR).
  Local Notation sink_call := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.sink_call (St:=St) Fp B BS SINK SFR).
  Local Notation arg_ok_W := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.arg_ok_W Fp B BS q m0 lo A fmt AP VA slots LO SEP_F SEP_B HAP HA0).
  Local Notation args_ok_W := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.args_ok_W Fp B BS q m0 lo A fmt AP VA slots LO SEP_F SEP_B HAP HA0).
  Local Notation lo_cells14 := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.lo_cells14 AP nla nlt).
  Local Notation lo_split := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.lo_split q AP nla nlt).
  Local Notation lo_join := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.lo_join q AP nla nlt).
  Local Notation pop_arg_callq := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.pop_arg_callq q gp tp lo fmt AP VA slots LO GLO QHI HAP HVA).
  Local Notation strnlen_callq := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.strnlen_callq Fp B BS q gp tp m0 lo A fmt AP VA LO GLO QHI SEP_F SEP_B HAP RIP HA0).
  Local Notation out_postq := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.out_postq (St:=St) Fp B BS SINK q gp tp lo canary).
  Local Notation out_callq := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.out_callq (St:=St) Fp B BS SINK TOPOK OUT TOK HOUT q gp tp m0 lo canary A fmt AP VA slots LO GLO QHI TQ SEP_F SEP_B HAP BS0 HA0).
  Local Notation memset_callq := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.memset_callq Fp B BS q gp tp m0 lo A fmt AP VA LO GLO QHI SEP_F SEP_B HAP RIP HA0).
  Local Notation memset_postq := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.memset_postq q gp tp lo).
  Local Notation chkr_W := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.chkr_W Fp B BS q m0 lo A fmt AP VA LO SEP_F SEP_B HAP HA0).
  Local Notation ictx_W := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.ictx_W Fp B BS q m0 lo A fmt AP VA LO SEP_F SEP_B HAP HA0).
  Local Notation hsh := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.hsh B BS q m0 lo A fmt HA0).
  Local Notation chkr_stack0 := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.chkr_stack0 B BS q m0 lo A fmt HA0).
  Local Notation chkr_fmt0 := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.chkr_fmt0 B BS q m0 lo A fmt HA0).
  Local Notation chkr_pfx0 := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.chkr_pfx0 B BS q m0 lo A fmt HA0).
  Local Notation chkr_xdig0 := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.chkr_xdig0 B BS q m0 lo A fmt HA0).
  Local Notation chkr_nulls0 := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.chkr_nulls0 B BS q m0 lo A fmt HA0).
  Local Notation arg_ok_chk := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.arg_ok_chk Fp B BS).
  Local Notation chkr_buf0 := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.chkr_buf0 B BS q m0 lo A fmt HA0).
  Local Notation fp_postq := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.fp_postq (St:=St) Fp B BS SINK q gp tp lo canary).
  Local Notation fp_callq := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.fp_callq (St:=St) Fp B BS SINK TOPOK OUTFP TOK q gp tp lo canary AP VA LO GLO QHI TQ SEP_F SEP_B HAP).
  Local Notation S_EXIT := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_EXIT (St:=St) Fp B BS SINK ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_SCAN := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_SCAN Fp B BS ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_FLAGS := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_FLAGS Fp B BS ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_WLOOP := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_WLOOP Fp B BS ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_WIDTH := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_WIDTH Fp B BS ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_PLOOP := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_PLOOP Fp B BS ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_PREC := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_PREC Fp B BS ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_STATE := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_STATE Fp B BS ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_DIR := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_DIR Fp B BS ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_END := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_END (St:=St) Fp B BS SINK ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_HEAD := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_HEAD (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_CONV := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_CONV (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation body_loc := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.body_loc Fp B BS q lo).
  Local Notation S_TAIL := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_TAIL (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation tregs := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.tregs Fp q gp tp A).
  Local Notation tinv := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.tinv (St:=St) Fp B BS SINK TOPOK OUTFP ra q s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_T6 := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_T6 (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_T5 := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_T5 (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_T4 := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_T4 (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_T3 := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_T3 (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_T2 := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_T2 (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_T1 := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_T1 (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_INTC2 := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_INTC2 (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_INTC := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_INTC (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation dloop_post := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.dloop_post q gp tp).
  Local Notation S_DLOOP := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_DLOOP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_FMTU2 := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_FMTU2 (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_FMTU := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_FMTU (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_CV_D := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_CV_D (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_CV_U := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_CV_U (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation xloop_post := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.xloop_post q gp tp).
  Local Notation S_XLOOP := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_XLOOP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_CV_X := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_CV_X (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_CV_S := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_CV_S (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation nullstr_arg_ok := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.nullstr_arg_ok Fp B BS q lo AP VA LO GLO SEP_F SEP_B HAP).
  Local Notation S_CV_S2 := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_CV_S2 (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_CV_FP := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_CV_FP (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation POST1 := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.POST1 ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary).
  Local Notation S_EXIT1 := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_EXIT1 Fp B BS ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_P1 := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_P1 Fp B BS ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_PRO := (OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A.F_printf_core_common.TwinB__.S_PRO Fp B BS ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).

  (* [comment removed for export] *)
  Notation sfx := (sfx fmt).
  Notation qq := (q + -544)%Z.
  Notation SPv := (Z_to_bv 64 (q + -544)).
  Notation FPv := (Z_to_bv 64 Fp).
  Ltac hush := idtac.
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  Ltac zs := hush; zstep; try (fix_litstore; mem_after_store_opt).
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  Ltac mseq := cbv delta [mkR]; repeat first [ reflexivity | lazymatch goal with |- @eq Z _ _ => zl | |- @eq nat _ _ => zl end | progress f_equal ].
  Tactic Notation "jump" tactic3(tac) := eapply evt_eq; [ | tac ]; [ mseq | .. ].
  Tactic Notation "jumpM" tactic3(tac) :=
    (lazymatch goal with |- evt _ _ _ => apply evt_done | _ => idtac end);
    eapply implM_eq_ms; [ | tac ]; [ mseq | .. ].
  Ltac stmt H := let NX := fresh "NX" in pose proof H as NX; let T := type of NX in let T' := eval red in T in change T' in NX.
  Tactic Notation "stmt" constr(H) "as" ident(NX) := pose proof H as NX; let T := type of NX in let T' := eval red in T in change T' in NX.
  (* [comment removed for export] *)
  Local Ltac transport_chunks_extra m a bs n Hn Ha Hl ::=
    repeat match goal with
    | H : SINK m ?st |- _ =>
        first [ apply (sink_store m st a bs) in H; [ | exact Ha | rewrite Hn; exact Hl | rewrite Hn; tslia | rewrite Hn; tslia ]
              | idtac "note: dropping SINK hypothesis (not provably disjoint from store):" H; clear H ]
    end.
  Local Ltac transport_call_extra segs W m m' MU WM ::=
    repeat match goal with
    | H : SINK m ?st |- _ =>
        first [ eapply (sink_call W m m' st) in H;
                [ | exact MU | exact WM
                | repeat (apply Forall_cons; [ cbn [fst snd]; tslia | ]); apply Forall_nil
                | repeat (apply Forall_cons; [ cbn [fst snd]; tslia | ]); apply Forall_nil ]
              | idtac "note: dropping SINK hypothesis (not provably disjoint from callee footprint):" H; clear H ]
    end.
  Local Ltac transport_chunks segs m a bs ::= transport_chunks_fast segs m a bs.
  Local Ltac footprint_after_store segs m a bs ::= footprint_after_store_fast segs m a bs.
  Local Ltac mem_after_store ::= mem_after_store_fast.
  Local Ltac transport_after_call segs m m' MU WM ::= transport_after_call_fast segs m m' MU WM.
  Local Ltac lia ::= lia3.
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  (* [comment removed for export] *) (* [comment removed for export] *)
  Ltac mseq ::= cbv delta [mkR tregs]; repeat first [ reflexivity | lazymatch goal with |- @eq Z _ _ => zl | |- @eq nat _ _ => zl end | progress f_equal ].
  (* [comment removed for export] *)
  (* [comment removed for export] *)


  (* [comment removed for export] *)
  Lemma L_DLOOP : S_DLOOP.
  Proof using GLO LO QHI.
    intros x1 x5 x6 x7 x8 x9 x11 x12 x13 x17 x18 x19 x20 x21 x22 x23 x24 x25 x26 x27 x28 x29 x30 x31 Ft fc m x.
    remember (Z.to_nat x) as nx eqn:Enx. revert x Enx x11 x12 x13 x23 m.
    induction nx as [nx IH] using lt_wf_ind.
    intros x Enx x11 x12 x13 x23 m j ds _ MI DIG Hx Hj ->.
    unfold PC_DEPTH, GLOBALS_TOP in LO, GLO.
    pose proof (munch_refl [(q + -392, q + -368)]%Z m) as MU. pose proof (wmono_refl bsegs m) as WM.
    pose proof (dec_digits_step x ltac:(lia)) as DS.
    pose proof (Z.div_pos x 10 ltac:(lia) ltac:(lia)) as Q0.
    pose proof (Z.mod_pos_bound x 10 ltac:(lia)) as R0.
    assert (Q1 : (x / 10 < 1844674407370955162)%Z) by (apply Z.div_lt_upper_bound; lia).
    assert (LD : (2 <= zlength (dec_digits x))%Z).
    { rewrite DS. unfold zlength. rewrite length_app. cbn [length].
      destruct (Z.lt_ge_cases (x / 10) 10).
      - rewrite dec_digits_small by lia. cbn. lia.
      - rewrite (dec_digits_step (x / 10)) by lia. rewrite length_app. cbn [length]. lia. }
    pose proof (rw_CB_length _ _ _ _ DIG) as LDS.
    zs. zs. zs. zs. zs.
    rewrite (land_W64_small (Z.shiftr (x * 14757395258967641293) 64)) by (rewrite Z.shiftr_div_pow2 by lia; split; [apply Z.div_pos; lia | apply Z.div_lt_upper_bound; lia]).
    rewrite div10_magic by lia. zs. zs. zs.
    replace (bv_swrap 32 (x - x / 10 * 10)) with (x mod 10)%Z by (rewrite swrap32_small by lia; lia).
    rewrite (land_W64_small (x mod 10)) by lia. rewrite lor48_digit by lia.
    set (c := (48 + x mod 10)%Z) in *.
    pose proof (u8arr_of_rw_cells _ _ _ _ _ DIG) as DA.
    pose proof (u8arr_store_ok bsegs _ _ _ (j - 1)%Z (wa (q + -392 + j + -1)) DA ltac:(rewrite LDS; lia) ltac:(f_equal; lia)) as SOK.
    zs. zs. rewrite le1_small by lia. replace (q + -392 + j + -1)%Z with (q + -392 + (j - 1))%Z by lia.
    pose proof (u8arr_write bsegs _ _ _ (j - 1)%Z (Z_to_bv 8 c) DA ltac:(rewrite LDS; lia)) as DA2. clear DA. store_done.
    pose proof (rw_cells_of_u8arr _ _ _ _ DA2) as DIG1. rewrite upd_length, LDS in DIG1.
    zs. zs. brf K.
    - (* [comment removed for export] *)
      eapply evt_mono.
      { eapply (IH (Z.to_nat (x / 10)) ltac:(lia) (x / 10)%Z eq_refl); [ exact MI | exact DIG1 | lia | | reflexivity ].
        rewrite DS in Hj. unfold zlength in *. rewrite length_app in Hj. cbn [length] in Hj. lia. }
      cbv beta. intros ms' P. destruct P as (a2' & a3' & xq & W' & m' & -> & MU' & WM' & MI' & DIG' & Hxq & HD & HW).
      unfold dloop_post. exists a2', a3', xq, (W' ++ [c]), m'.
      assert (EL : zlength (W' ++ [c]) = (zlength W' + 1)%Z) by (unfold zlength; rewrite length_app; cbn [length]; lia).
      rewrite EL.
      split; [ mseq | ].
      split; [ eapply munch_trans; [exact MU | exact MU'] | ].
      split; [ eapply wmono_trans; [exact WM | exact WM'] | ].
      split; [ exact MI' | ].
      split.
      { replace (firstn (Z.to_nat (j - (zlength W' + 1))) ds ++ zb (W' ++ [c]) ++ skipn (Z.to_nat j) ds)
          with (firstn (Z.to_nat (j - 1 - zlength W')) (upd ds (Z.to_nat (j - 1)) (Z_to_bv 8 c)) ++ zb W' ++ skipn (Z.to_nat (j - 1)) (upd ds (Z.to_nat (j - 1)) (Z_to_bv 8 c))); [exact DIG'|].
        rewrite upd_firstn_part by (rewrite LDS; unfold zlength in *; lia). rewrite upd_skipn_at by (rewrite LDS; lia).
        replace (Z.to_nat (j - 1 - zlength W')) with (Z.to_nat (j - (zlength W' + 1))) by lia.
        replace (S (Z.to_nat (j - 1))) with (Z.to_nat j) by lia.
        rewrite zb_app, <- !app_assoc. reflexivity. }
      split; [ exact Hxq | ]. split; [ rewrite DS, HD; reflexivity | ]. unfold zlength in *. lia.
    - (* [comment removed for export] *)
      zs. apply evt_done.
      unfold dloop_post. eexists (Z_to_bv 64 x), (Z_to_bv 64 c), (x / 10)%Z, [c], _.
      split; [ mseq | ].
      split; [ exact MU | ]. split; [ exact WM | ]. split; [ exact MI | ].
      split.
      { replace (firstn (Z.to_nat (j - zlength [c])) ds ++ zb [c] ++ skipn (Z.to_nat j) ds) with (upd ds (Z.to_nat (j - 1)) (Z_to_bv 8 c)); [exact DIG1|].
        rewrite upd_firstn_skipn by (rewrite LDS; lia). cbn [zb map app zlength length Z.of_nat Pos.of_succ_nat].
        replace (Z.to_nat (j - 1)) with (Z.to_nat (j - 1)) by reflexivity.
        replace (S (Z.to_nat (j - 1))) with (Z.to_nat j) by lia. reflexivity. }
      split; [ lia | ]. split; [ rewrite DS, dec_digits_small by lia; reflexivity | ]. zl.
  Qed.
End PrintfCore.
End TwinB__.
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)

From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.Lib Require Import SFModel Arr SysStep ImageA FP ITree Nodes Decode.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.Lib Require Bytes PropExec.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.Spec Require Import Prelim Monad PrintfModel StrFun.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.P Require Import Printf_mlib Printf_zfacts.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A Require Import FX_lib F_memset F_memcpy F_memchr I_strnlen F_fwritex F_pop_arg F_printf_iface.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.Spec Require Import PrintfModel. (* [comment removed for export] *)
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A Require Import F_printf_core_common.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.A Require Import R_m2s I_consts IcptSpec F_achk.
From OssFuzzTheorems.Proofs.bzip2.bzip2_compress_target.lib.K.Lib Require Import StoreFast.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Import ITree.Exc.
Open Scope Z_scope.
Open Scope mspec_scope.
Open Scope bv_scope.
Set Warnings "-notation-for-abbreviation".  (* [comment removed for export] *)

Section PrintfCore.
  Local Ltac Z.euclidean_division_equations_cleanup ::= idtac.
  Context {St : Type}.
  Variables (Fp B BS : Z) (SINK : (word -> option byte) -> St -> Prop) (TOPOK : Z -> Prop)
            (OUT : list Z -> M St unit) (OUTFP : Z -> Z -> Z -> Z -> Z -> M St Z).
  Hypothesis SFR : sink_frame_stmt Fp B BS SINK.
  Hypothesis SFL : sink_flags_stmt Fp SINK.
  Hypothesis TOK : topok_stmt TOPOK.
  Hypothesis HOUT : out_stmt Fp B BS SINK TOPOK OUT.
  Variables (ra : word) (q : Z) (gp tp : word) (s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e : word)
            (F : bvmap 5 word) (fc0 : bv 32) (m0 : word -> option byte)
            (lo : Z) (canary : word) (A : Z) (fmt : list Z) (AP VA : Z) (slots : list word) (nla nlt : word).
  Hypothesis HF : Forall (fun c => 0 <= c < 256)%Z fmt.
  Hypothesis LO : (lo <= q - PC_DEPTH)%Z.
  Hypothesis GLO : (GLOBALS_TOP <= lo)%Z.
  Hypothesis QHI : (q < 2^63)%Z.
  Hypothesis TQ : TOPOK q.
  Hypothesis FRM0 : frm0 fc0.
  (* [comment removed for export] *)
  Hypothesis HA : (A + zlength fmt <= 782336)%Z.          (* [comment removed for export] *)
  (* [comment removed for export] *)
  Hypothesis SEP_F : ((802272 <= Fp /\ Fp + 232 <= 811008) \/ (AP + 8 <= Fp /\ Fp + 232 <= VA))%Z.
  Hypothesis SEP_B : ((6406432 <= B /\ B + BS <= lo /\ B + BS <= 6414336) \/ (AP + 8 <= B /\ B + BS <= VA))%Z.
  Hypothesis HAP : (q <= AP)%Z.
  Hypothesis HVA : (AP + 8 <= VA)%Z.
  Hypothesis A0 : (0 <= A)%Z.
  Hypothesis VAHI : (VA + 8 * zlength slots <= 2^64)%Z.
  Hypothesis BS0 : (0 <= BS)%Z.
  (* [comment removed for export] *)
  Hypothesis RIP : rip_stmt.
  Hypothesis HA0 : aext m0 lo q A fmt B BS.

  (* [comment removed for export] *)
  Local Notation ctx_all := (F_printf_core_common.ctx_all ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation W := (F_printf_core_common.W Fp B BS q lo AP).
  Local Notation Fok := (F_printf_core_common.Fok F).
  Local Notation Fok_refl := (F_printf_core_common.Fok_refl F).
  Local Notation Fok_trans := (F_printf_core_common.Fok_trans F).
  Local Notation POST := (F_printf_core_common.POST (St:=St) Fp B BS SINK ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F m0 lo canary AP).
  Local Notation hi_cells := (F_printf_core_common.hi_cells ra s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e canary).
  Local Notation lo_cells := (F_printf_core_common.lo_cells AP nla nlt).
  Local Notation finv := (F_printf_core_common.finv Fp B BS ra q s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e m0 lo canary A fmt AP VA slots).
  Local Notation fmt_rng := (F_printf_core_common.fmt_rng fmt HF).
  Local Notation implM_eq_ms := (F_printf_core_common.implM_eq_ms (St:=St)).
  Local Notation sink_store := (F_printf_core_common.sink_store (St:=St) Fp B BS SINK SFR).
  Local Notation sink_call := (F_printf_core_common.sink_call (St:=St) Fp B BS SINK SFR).
  Local Notation arg_ok_W := (F_printf_core_common.arg_ok_W Fp B BS q m0 lo A fmt AP VA slots LO SEP_F SEP_B HAP HA0).
  Local Notation args_ok_W := (F_printf_core_common.args_ok_W Fp B BS q m0 lo A fmt AP VA slots LO SEP_F SEP_B HAP HA0).
  Local Notation lo_cells14 := (F_printf_core_common.lo_cells14 AP nla nlt).
  Local Notation lo_split := (F_printf_core_common.lo_split q AP nla nlt).
  Local Notation lo_join := (F_printf_core_common.lo_join q AP nla nlt).
  Local Notation pop_arg_callq := (F_printf_core_common.pop_arg_callq q gp tp lo fmt AP VA slots LO GLO QHI HAP HVA).
  Local Notation strnlen_callq := (F_printf_core_common.strnlen_callq Fp B BS q gp tp m0 lo A fmt AP VA LO GLO QHI SEP_F SEP_B HAP RIP HA0).
  Local Notation out_postq := (F_printf_core_common.out_postq (St:=St) Fp B BS SINK q gp tp lo canary).
  Local Notation out_callq := (F_printf_core_common.out_callq (St:=St) Fp B BS SINK TOPOK OUT TOK HOUT q gp tp m0 lo canary A fmt AP VA slots LO GLO QHI TQ SEP_F SEP_B HAP BS0 HA0).
  Local Notation memset_callq := (F_printf_core_common.memset_callq Fp B BS q gp tp m0 lo A fmt AP VA LO GLO QHI SEP_F SEP_B HAP RIP HA0).
  Local Notation memset_postq := (F_printf_core_common.memset_postq q gp tp lo).
  Local Notation chkr_W := (F_printf_core_common.chkr_W Fp B BS q m0 lo A fmt AP VA LO SEP_F SEP_B HAP HA0).
  Local Notation ictx_W := (F_printf_core_common.ictx_W Fp B BS q m0 lo A fmt AP VA LO SEP_F SEP_B HAP HA0).
  Local Notation hsh := (F_printf_core_common.hsh B BS q m0 lo A fmt HA0).
  Local Notation chkr_stack0 := (F_printf_core_common.chkr_stack0 B BS q m0 lo A fmt HA0).
  Local Notation chkr_fmt0 := (F_printf_core_common.chkr_fmt0 B BS q m0 lo A fmt HA0).
  Local Notation chkr_pfx0 := (F_printf_core_common.chkr_pfx0 B BS q m0 lo A fmt HA0).
  Local Notation chkr_xdig0 := (F_printf_core_common.chkr_xdig0 B BS q m0 lo A fmt HA0).
  Local Notation chkr_nulls0 := (F_printf_core_common.chkr_nulls0 B BS q m0 lo A fmt HA0).
  Local Notation arg_ok_chk := (F_printf_core_common.arg_ok_chk Fp B BS).
  Local Notation chkr_buf0 := (F_printf_core_common.chkr_buf0 B BS q m0 lo A fmt HA0).
  Local Notation fp_postq := (F_printf_core_common.fp_postq (St:=St) Fp B BS SINK q gp tp lo canary).
  Local Notation fp_callq := (F_printf_core_common.fp_callq (St:=St) Fp B BS SINK TOPOK OUTFP TOK q gp tp lo canary AP VA LO GLO QHI TQ SEP_F SEP_B HAP).
  Local Notation S_EXIT := (F_printf_core_common.S_EXIT (St:=St) Fp B BS SINK ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_SCAN := (F_printf_core_common.S_SCAN Fp B BS ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_FLAGS := (F_printf_core_common.S_FLAGS Fp B BS ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_WLOOP := (F_printf_core_common.S_WLOOP Fp B BS ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_WIDTH := (F_printf_core_common.S_WIDTH Fp B BS ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_PLOOP := (F_printf_core_common.S_PLOOP Fp B BS ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_PREC := (F_printf_core_common.S_PREC Fp B BS ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_STATE := (F_printf_core_common.S_STATE Fp B BS ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_DIR := (F_printf_core_common.S_DIR Fp B BS ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_END := (F_printf_core_common.S_END (St:=St) Fp B BS SINK ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_HEAD := (F_printf_core_common.S_HEAD (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_CONV := (F_printf_core_common.S_CONV (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation body_loc := (F_printf_core_common.body_loc Fp B BS q lo).
  Local Notation S_TAIL := (F_printf_core_common.S_TAIL (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation tregs := (F_printf_core_common.tregs Fp q gp tp A).
  Local Notation tinv := (F_printf_core_common.tinv (St:=St) Fp B BS SINK TOPOK OUTFP ra q s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_T6 := (F_printf_core_common.S_T6 (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_T5 := (F_printf_core_common.S_T5 (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_T4 := (F_printf_core_common.S_T4 (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_T3 := (F_printf_core_common.S_T3 (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_T2 := (F_printf_core_common.S_T2 (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_T1 := (F_printf_core_common.S_T1 (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_INTC2 := (F_printf_core_common.S_INTC2 (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_INTC := (F_printf_core_common.S_INTC (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation dloop_post := (F_printf_core_common.dloop_post q gp tp).
  Local Notation S_DLOOP := (F_printf_core_common.S_DLOOP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_FMTU2 := (F_printf_core_common.S_FMTU2 (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_FMTU := (F_printf_core_common.S_FMTU (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_CV_D := (F_printf_core_common.S_CV_D (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_CV_U := (F_printf_core_common.S_CV_U (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation xloop_post := (F_printf_core_common.xloop_post q gp tp).
  Local Notation S_XLOOP := (F_printf_core_common.S_XLOOP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_CV_X := (F_printf_core_common.S_CV_X (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_CV_S := (F_printf_core_common.S_CV_S (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation nullstr_arg_ok := (F_printf_core_common.nullstr_arg_ok Fp B BS q lo AP VA LO GLO SEP_F SEP_B HAP).
  Local Notation S_CV_S2 := (F_printf_core_common.S_CV_S2 (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_CV_FP := (F_printf_core_common.S_CV_FP (St:=St) Fp B BS SINK TOPOK OUT OUTFP ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation POST1 := (F_printf_core_common.POST1 ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary).
  Local Notation S_EXIT1 := (F_printf_core_common.S_EXIT1 Fp B BS ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_P1 := (F_printf_core_common.S_P1 Fp B BS ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).
  Local Notation S_PRO := (F_printf_core_common.S_PRO Fp B BS ra q gp tp s0e s1e s2e s3e s4e s5e s6e s7e s8e s9e s10e s11e F fc0 m0 lo canary A fmt AP VA slots nla nlt).

  (* [comment removed for export] *)
  Notation sfx := (sfx fmt).
  Notation qq := (q + -544)%Z.
  Notation SPv := (Z_to_bv 64 (q + -544)).
  Notation FPv := (Z_to_bv 64 Fp).
  Ltac hush := idtac.
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  Ltac zs := hush; zstep; try (fix_litstore; mem_after_store_opt).
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  Ltac mseq := cbv delta [mkR]; repeat first [ reflexivity | lazymatch goal with |- @eq Z _ _ => zl | |- @eq nat _ _ => zl end | progress f_equal ].
  Tactic Notation "jump" tactic3(tac) := eapply evt_eq; [ | tac ]; [ mseq | .. ].
  Tactic Notation "jumpM" tactic3(tac) :=
    (lazymatch goal with |- evt _ _ _ => apply evt_done | _ => idtac end);
    eapply implM_eq_ms; [ | tac ]; [ mseq | .. ].
  Ltac stmt H := let NX := fresh "NX" in pose proof H as NX; let T := type of NX in let T' := eval red in T in change T' in NX.
  Tactic Notation "stmt" constr(H) "as" ident(NX) := pose proof H as NX; let T := type of NX in let T' := eval red in T in change T' in NX.
  (* [comment removed for export] *)
  Local Ltac transport_chunks_extra m a bs n Hn Ha Hl ::=
    repeat match goal with
    | H : SINK m ?st |- _ =>
        first [ apply (sink_store m st a bs) in H; [ | exact Ha | rewrite Hn; exact Hl | rewrite Hn; tslia | rewrite Hn; tslia ]
              | idtac "note: dropping SINK hypothesis (not provably disjoint from store):" H; clear H ]
    end.
  Local Ltac transport_call_extra segs W m m' MU WM ::=
    repeat match goal with
    | H : SINK m ?st |- _ =>
        first [ eapply (sink_call W m m' st) in H;
                [ | exact MU | exact WM
                | repeat (apply Forall_cons; [ cbn [fst snd]; tslia | ]); apply Forall_nil
                | repeat (apply Forall_cons; [ cbn [fst snd]; tslia | ]); apply Forall_nil ]
              | idtac "note: dropping SINK hypothesis (not provably disjoint from callee footprint):" H; clear H ]
    end.
  Local Ltac transport_chunks segs m a bs ::= transport_chunks_fast segs m a bs.
  Local Ltac footprint_after_store segs m a bs ::= footprint_after_store_fast segs m a bs.
  Local Ltac mem_after_store ::= mem_after_store_fast.
  Local Ltac transport_after_call segs m m' MU WM ::= transport_after_call_fast segs m m' MU WM.
  Local Ltac lia ::= lia3.
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  (* [comment removed for export] *)
  (* [comment removed for export] *) (* [comment removed for export] *)
  Ltac mseq ::= cbv delta [mkR tregs]; repeat first [ reflexivity | lazymatch goal with |- @eq Z _ _ => zl | |- @eq nat _ _ => zl end | progress f_equal ].
  (* [comment removed for export] *)
  (* [comment removed for export] *)


  (* [comment removed for export] *)
  Lemma L_DLOOP : S_DLOOP.
  Proof using GLO LO QHI.
    intros x1 x5 x6 x7 x8 x9 x11 x12 x13 x17 x18 x19 x20 x21 x22 x23 x24 x25 x26 x27 x28 x29 x30 x31 Ft fc m x.
    remember (Z.to_nat x) as nx eqn:Enx. revert x Enx x11 x12 x13 x23 m.
    induction nx as [nx IH] using lt_wf_ind.
    intros x Enx x11 x12 x13 x23 m j ds _ MI DIG Hx Hj ->.
    unfold PC_DEPTH, GLOBALS_TOP in LO, GLO.
    pose proof (munch_refl [(q + -392, q + -368)]%Z m) as MU. pose proof (wmono_refl asegs m) as WM.
    pose proof (dec_digits_step x ltac:(lia)) as DS.
    pose proof (Z.div_pos x 10 ltac:(lia) ltac:(lia)) as Q0.
    pose proof (Z.mod_pos_bound x 10 ltac:(lia)) as R0.
    assert (Q1 : (x / 10 < 1844674407370955162)%Z) by (apply Z.div_lt_upper_bound; lia).
    assert (LD : (2 <= zlength (dec_digits x))%Z).
    { rewrite DS. unfold zlength. rewrite length_app. cbn [length].
      destruct (Z.lt_ge_cases (x / 10) 10).
      - rewrite dec_digits_small by lia. cbn. lia.
      - rewrite (dec_digits_step (x / 10)) by lia. rewrite length_app. cbn [length]. lia. }
    pose proof (rw_CB_length _ _ _ _ DIG) as LDS.
    zs. zs. zs. zs. zs.
    rewrite (land_W64_small (Z.shiftr (x * 14757395258967641293) 64)) by (rewrite Z.shiftr_div_pow2 by lia; split; [apply Z.div_pos; lia | apply Z.div_lt_upper_bound; lia]).
    rewrite div10_magic by lia. zs. zs. zs.
    replace (bv_swrap 32 (x - x / 10 * 10)) with (x mod 10)%Z by (rewrite swrap32_small by lia; lia).
    rewrite (land_W64_small (x mod 10)) by lia. rewrite lor48_digit by lia.
    set (c := (48 + x mod 10)%Z) in *.
    pose proof (u8arr_of_rw_cells _ _ _ _ _ DIG) as DA.
    pose proof (u8arr_store_ok asegs _ _ _ (j - 1)%Z (wa (q + -392 + j + -1)) DA ltac:(rewrite LDS; lia) ltac:(f_equal; lia)) as SOK.
    zs. zs. rewrite le1_small by lia. replace (q + -392 + j + -1)%Z with (q + -392 + (j - 1))%Z by lia.
    pose proof (u8arr_write asegs _ _ _ (j - 1)%Z (Z_to_bv 8 c) DA ltac:(rewrite LDS; lia)) as DA2. clear DA. store_done.
    pose proof (rw_cells_of_u8arr _ _ _ _ DA2) as DIG1. rewrite upd_length, LDS in DIG1.
    zs. zs. brf K.
    - (* [comment removed for export] *)
      eapply evt_mono.
      { eapply (IH (Z.to_nat (x / 10)) ltac:(lia) (x / 10)%Z eq_refl); [ exact MI | exact DIG1 | lia | | reflexivity ].
        rewrite DS in Hj. unfold zlength in *. rewrite length_app in Hj. cbn [length] in Hj. lia. }
      cbv beta. intros ms' P. destruct P as (a2' & a3' & xq & W' & m' & -> & MU' & WM' & MI' & DIG' & Hxq & HD & HW).
      unfold dloop_post. exists a2', a3', xq, (W' ++ [c]), m'.
      assert (EL : zlength (W' ++ [c]) = (zlength W' + 1)%Z) by (unfold zlength; rewrite length_app; cbn [length]; lia).
      rewrite EL.
      split; [ mseq | ].
      split; [ eapply munch_trans; [exact MU | exact MU'] | ].
      split; [ eapply wmono_trans; [exact WM | exact WM'] | ].
      split; [ exact MI' | ].
      split.
      { replace (firstn (Z.to_nat (j - (zlength W' + 1))) ds ++ zb (W' ++ [c]) ++ skipn (Z.to_nat j) ds)
          with (firstn (Z.to_nat (j - 1 - zlength W')) (upd ds (Z.to_nat (j - 1)) (Z_to_bv 8 c)) ++ zb W' ++ skipn (Z.to_nat (j - 1)) (upd ds (Z.to_nat (j - 1)) (Z_to_bv 8 c))); [exact DIG'|].
        rewrite upd_firstn_part by (rewrite LDS; unfold zlength in *; lia). rewrite upd_skipn_at by (rewrite LDS; lia).
        replace (Z.to_nat (j - 1 - zlength W')) with (Z.to_nat (j - (zlength W' + 1))) by lia.
        replace (S (Z.to_nat (j - 1))) with (Z.to_nat j) by lia.
        rewrite zb_app, <- !app_assoc. reflexivity. }
      split; [ exact Hxq | ]. split; [ rewrite DS, HD; reflexivity | ]. unfold zlength in *. lia.
    - (* [comment removed for export] *)
      zs. apply evt_done.
      unfold dloop_post. eexists (Z_to_bv 64 x), (Z_to_bv 64 c), (x / 10)%Z, [c], _.
      split; [ mseq | ].
      split; [ exact MU | ]. split; [ exact WM | ]. split; [ exact MI | ].
      split.
      { replace (firstn (Z.to_nat (j - zlength [c])) ds ++ zb [c] ++ skipn (Z.to_nat j) ds) with (upd ds (Z.to_nat (j - 1)) (Z_to_bv 8 c)); [exact DIG1|].
        rewrite upd_firstn_skipn by (rewrite LDS; lia). cbn [zb map app zlength length Z.of_nat Pos.of_succ_nat].
        replace (Z.to_nat (j - 1)) with (Z.to_nat (j - 1)) by reflexivity.
        replace (S (Z.to_nat (j - 1))) with (Z.to_nat j) by lia. reflexivity. }
      split; [ lia | ]. split; [ rewrite DS, dec_digits_small by lia; reflexivity | ]. zl.
  Qed.
End PrintfCore.
