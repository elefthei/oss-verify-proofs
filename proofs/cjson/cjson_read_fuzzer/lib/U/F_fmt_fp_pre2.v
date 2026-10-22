(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)

(* [comment removed for export] *)
From Stdlib Require ZArith.
From Stdlib Require NArith.
From Stdlib Require List.
From Stdlib Require Lia.
From Stdlib Require Bool.
From LinuxProcessSemantics.LinuxProcessSem Require BvBase.
From LinuxProcessSemantics.LinuxProcessSem Require RiscvSemantics.
From LinuxProcessSemantics.LinuxProcessSem Require MemImageType.
From LinuxProcessSemantics.LinuxProcessSem Require State.
From LinuxProcessSemantics.LinuxProcessSem Require Run.
From LinuxProcessSemantics.Riscv Require Prelude.
From LinuxProcessSemantics.Riscv Require Instr.
From LinuxProcessSemantics.Riscv Require Decode.
From LinuxProcessSemantics.Riscv Require DecodeC.
From LinuxProcessSemantics.Riscv Require Sem.
From LinuxProcessSemantics.Riscv Require Fpu.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib Require SFModel.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib Require Arr.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec Require Prelim.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec Require SoftFloat.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec Require FmtFp.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P Require SFW1_lemmas.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U Require Exit.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U Require F_memcpy.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U Require F_fwritex.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U Require F_pad.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U Require FmtFp_facts2.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P Require FmtFp_splitR.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U Require F_fmt_fp_lib.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U Require UImg.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib Require StoreCache.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc Require RStep.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I Require IImgU.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G Require G_fmt_fp_pre.
Module F_fmt_fp_pre.
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
Import Stdlib.ZArith.ZArith Stdlib.NArith.NArith Stdlib.Lists.List Stdlib.micromega.Lia Stdlib.Bool.Bool.
Import LinuxProcessSemantics.LinuxProcessSem.BvBase LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics LinuxProcessSemantics.LinuxProcessSem.MemImageType LinuxProcessSemantics.LinuxProcessSem.State LinuxProcessSemantics.LinuxProcessSem.Run.
Import LinuxProcessSemantics.Riscv.Prelude LinuxProcessSemantics.Riscv.Instr LinuxProcessSemantics.Riscv.Decode LinuxProcessSemantics.Riscv.DecodeC LinuxProcessSemantics.Riscv.Sem LinuxProcessSemantics.Riscv.Fpu.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.SFModel OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Arr.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec.Prelim OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec.SoftFloat OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec.FmtFp.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.SFW1_lemmas.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.Exit.F_memset OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_memcpy OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fwritex OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_pad OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.FmtFp_facts2.F_frexpl.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.FmtFp_splitR.FmtFp_split.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.FmtFp_facts2.FmtFp_facts OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.UImg.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.StoreCache.StoreFast.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Import ListNotations.
Open Scope bv_scope.


#[local] Existing Instances OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.Exit.F_memset.U_memset_contract OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_memcpy.U_memcpy_contract OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_pad.U_pad_contract OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_pad.U_pad_call_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.FmtFp_facts2.F_frexpl.U_frexpl_contract OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_letf2_callv_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_letf2_callv0_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_fixunstfsi_callv_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_floatsitf_callv_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_floatsitf_callp_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_floatunsitf_callv_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_floatunsitf_callfix_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_extenddftf2_callv_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_multf3_callq_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_divtf3_callq_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_addtf3_callq_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_subtf3_callq_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_frexpl_callq_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_signbitl_callv_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_fpclassifyl_callv_c.

#[local] Hint Extern 0 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fwritex.fwritex_contract) => exact OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fwritex.fwritex_spec : typeclass_instances.
#[local] Hint Extern 0 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fwritex.fwritex_call_c) => exact OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fwritex.fwritex_call : typeclass_instances.
(* [comment removed for export] *)
#[local] Existing Instance OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IImgU.U_img.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.CodeAtT _ _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.CodeAt _ _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.RoB _ _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.RelCode _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.RelSym _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.RelNear _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 2 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.ZFact _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.

(* [comment removed for export] *)
Notation midK := OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre.midK (only parsing).
Notation MidK := OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre.MidK (only parsing).
Notation K_pad := OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre.K_pad (only parsing).
Notation K_jk40 := OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre.K_jk40 (only parsing).
Notation K_jk8 := OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre.K_jk8 (only parsing).
Notation K_jk3 := OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre.K_jk3 (only parsing).
Notation K_jk12 := OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre.K_jk12 (only parsing).
Notation K_jk37 := OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre.K_jk37 (only parsing).
Notation K_p1 := OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre.K_p1 (only parsing).
Notation K_prefix := OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre.K_prefix (only parsing).
Notation K_pl := OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre.K_pl (only parsing).
Notation K_plz := OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre.K_plz (only parsing).
Notation K_pfx := OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre.K_pfx (only parsing).
Notation K_Ft := OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre.K_Ft (only parsing).

(* [comment removed for export] *)
Lemma wfile_frame_below : forall m Fp fl0 j1 j2 lbfw B c jk (a : Z) bs,
  wfile m Fp fl0 j1 j2 lbfw B c jk -> (0 <= a)%Z -> (a + Z.of_nat (length bs) <= Fp)%Z -> (a + Z.of_nat (length bs) <= B)%Z ->
  wfile (write_to_mem m (wa a) bs) Fp fl0 j1 j2 lbfw B c jk.
Proof. first [ exact OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre.wfile_frame_below | (pose proof OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre.wfile_frame_below as T_; exact T_) | exact @OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre.wfile_frame_below | apply OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre.wfile_frame_below | (apply (@OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre.wfile_frame_below OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IImgU.U_img); typeclasses eauto) ]. Qed.
Lemma wfile_transport_below : forall W m m' Fp fl0 j1 j2 lbfw B c jk,
  wfile m Fp fl0 j1 j2 lbfw B c jk -> munch W m m' -> wmono usegs m m' ->
  (forall iv, In iv W -> (snd iv <= Fp /\ snd iv <= B)%Z) ->
  wfile m' Fp fl0 j1 j2 lbfw B c jk.
Proof. first [ exact OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre.wfile_transport_below | (pose proof OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre.wfile_transport_below as T_; exact T_) | exact @OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre.wfile_transport_below | apply OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre.wfile_transport_below | (apply (@OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre.wfile_transport_below OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IImgU.U_img); typeclasses eauto) ]. Qed.

Ltac transport_chunks segs m a bs ::=
  repeat match goal with
  | H : bytes_at segs m ?A2 ?bs2 |- _ =>
      first [ apply (bytes_at_write_other segs m a bs A2 bs2) in H;
              [ | lia | simpl_sizes; slia | simpl_sizes; simpl_arr_sizes; slia ]
            | idtac "note: dropping hypothesis (not provably disjoint from store):" H; clear H ]
  | H : wr_at segs m ?A2 ?n2 |- _ => apply (wr_at_write segs m A2 n2 (wa a) bs) in H
  | H : rw_cells segs m ?A2 ?cs2 |- _ =>
      first [ apply (rw_cells_frame segs m A2 cs2 a bs) in H;
              [ | lia | simpl_sizes; slia | simpl_sizes; slia ]
            | idtac "note: dropping hypothesis (not provably disjoint from store):" H; clear H ]
  | H : wfile m ?Fp ?fl0 ?j1 ?j2 ?lbfw ?B ?c ?jk |- _ =>
      first [ apply (wfile_frame_below m Fp fl0 j1 j2 lbfw B c jk a bs) in H;
              [ | lia | simpl_sizes; slia | simpl_sizes; slia ]
            | idtac "note: dropping hypothesis (not provably disjoint from store):" H; clear H ]
  | H : ro_cells segs m ?A2 ?cs2 |- _ =>
      first [ apply (ro_cells_frame segs m A2 cs2 a bs) in H;
              [ | lia | simpl_sizes; slia | simpl_sizes; slia ]
            | idtac "note: dropping hypothesis (not provably disjoint from store):" H; clear H ]
  | H : u8arr segs m ?A2 ?xs |- _ =>
      first [ apply (u8arr_frame segs m A2 xs a bs) in H;
              [ | lia | simpl_sizes; slia | simpl_sizes; simpl_arr_sizes; slia ]
            | idtac "note: dropping hypothesis (not provably disjoint from store):" H; clear H ]
  | H : u32arr segs m ?A2 ?xs |- _ =>
      first [ apply (u32arr_frame segs m A2 xs a bs) in H;
              [ | lia | simpl_sizes; slia | simpl_sizes; simpl_arr_sizes; slia ]
            | idtac "note: dropping hypothesis (not provably disjoint from store):" H; clear H ]
  | H : u64arr segs m ?A2 ?xs |- _ =>
      first [ apply (u64arr_frame segs m A2 xs a bs) in H;
              [ | lia | simpl_sizes; slia | simpl_sizes; simpl_arr_sizes; slia ]
            | idtac "note: dropping hypothesis (not provably disjoint from store):" H; clear H ]
  | H : u8ro segs m ?A2 ?xs |- _ =>
      first [ apply (u8ro_frame segs m A2 xs a bs) in H;
              [ | lia | simpl_sizes; slia | simpl_sizes; simpl_arr_sizes; slia ]
            | idtac "note: dropping hypothesis (not provably disjoint from store):" H; clear H ]
  end.

Ltac transport_after_call segs m m' MU WM ::=
  let W := lazymatch type of MU with munch ?W _ _ => W end in
  repeat match goal with
  | H : bytes_at segs m ?A2 ?bs2 |- _ =>
      first [ apply (bytes_at_transport segs W m m' A2 bs2) in H; [ | exact MU | cbn [disjoint_from]; simpl_sizes; slia ]
            | idtac "note: dropping hypothesis (not provably disjoint from callee footprint):" H; clear H ]
  | H : wr_at segs m ?A2 ?n2 |- _ => apply (wr_at_transport segs m m' A2 n2) in H; [ | exact WM ]
  | H : rw_cells segs m ?A2 ?cs2 |- _ =>
      first [ apply (rw_cells_transport segs W m m' A2 cs2) in H; [ | exact MU | exact WM | cbn [disjoint_from]; simpl_sizes; slia ]
            | idtac "note: dropping hypothesis (not provably disjoint from callee footprint):" H; clear H ]
  | H : wfile m ?Fp ?fl0 ?j1 ?j2 ?lbfw ?B ?c ?jk |- _ =>
      first [ apply (wfile_transport_below W m m' Fp fl0 j1 j2 lbfw B c jk) in H;
              [ | exact MU | exact WM | let iv := fresh "iv" in let Hiv := fresh "Hiv" in
                                       intros iv Hiv; cbn [In] in Hiv; decompose [or] Hiv; try subst iv; cbn [snd]; first [lia | contradiction] ]
            | idtac "note: dropping hypothesis (not provably disjoint from callee footprint):" H; clear H ]
  | H : ro_cells segs m ?A2 ?cs2 |- _ =>
      first [ apply (ro_cells_transport segs W m m' A2 cs2) in H; [ | exact MU | cbn [disjoint_from]; simpl_sizes; slia ]
            | idtac "note: dropping hypothesis (not provably disjoint from callee footprint):" H; clear H ]
  | H : u8arr segs m ?A2 ?xs |- _ =>
      first [ apply (u8arr_transport segs W m m' A2 xs) in H; [ | exact MU | exact WM | cbn [disjoint_from]; simpl_sizes; simpl_arr_sizes; slia ]
            | idtac "note: dropping hypothesis (not provably disjoint from callee footprint):" H; clear H ]
  | H : u32arr segs m ?A2 ?xs |- _ =>
      first [ apply (u32arr_transport segs W m m' A2 xs) in H; [ | exact MU | exact WM | cbn [disjoint_from]; simpl_sizes; simpl_arr_sizes; slia ]
            | idtac "note: dropping hypothesis (not provably disjoint from callee footprint):" H; clear H ]
  | H : u64arr segs m ?A2 ?xs |- _ =>
      first [ apply (u64arr_transport segs W m m' A2 xs) in H; [ | exact MU | exact WM | cbn [disjoint_from]; simpl_sizes; simpl_arr_sizes; slia ]
            | idtac "note: dropping hypothesis (not provably disjoint from callee footprint):" H; clear H ]
  | H : u8ro segs m ?A2 ?xs |- _ =>
      first [ apply (u8ro_transport segs W m m' A2 xs) in H; [ | exact MU | cbn [disjoint_from]; simpl_sizes; simpl_arr_sizes; slia ]
            | idtac "note: dropping hypothesis (not provably disjoint from callee footprint):" H; clear H ]
  | H : stk segs m ?loq ?hiq |- _ =>
      first [ apply (stk_transport_disjoint segs W m m' loq hiq) in H; [ | exact MU | exact WM | cbn [disjoint_from]; slia ]
            | clear H ]
  | H : munch ?Wq ?mq m |- _ =>
      first [ apply (munch_trans Wq mq m m') in H; [ | eapply (munch_weaken W Wq m m'); [ unfold sub_fp; cbn [outside]; intros; slia | exact MU ] ]
            | fail 100 "callee footprint not inside caller footprint" ]
  | H : wmono segs ?mq m |- _ => apply (wmono_trans segs mq m m') in H; [ | exact WM ]
  end.

(* [comment removed for export] *)
Ltac transport_chunks_extra_wfile m a bs n Hn Ha Hl :=
  repeat match goal with
  | H : wfile m ?Fp ?fl0 ?j1 ?j2 ?lbfw ?B ?c ?jk |- _ =>
      first [ apply (wfile_frame_below m Fp fl0 j1 j2 lbfw B c jk a bs) in H;
              [ | exact Ha | rewrite Hn; tslia | rewrite Hn; tslia ]
            | idtac "note: dropping hypothesis (not provably disjoint from store):" H; clear H ]
  end.
Ltac transport_call_extra_wfile segs W m m' MU WM :=
  repeat match goal with
  | H : wfile m ?Fp ?fl0 ?j1 ?j2 ?lbfw ?B ?c ?jk |- _ =>
      first [ apply (wfile_transport_below W m m' Fp fl0 j1 j2 lbfw B c jk) in H;
              [ | exact MU | exact WM | let iv := fresh "iv" in let Hiv := fresh "Hiv" in
                                       intros iv Hiv; cbn [In] in Hiv; decompose [or] Hiv; try subst iv; cbn [snd]; first [lia | contradiction] ]
            | idtac "note: dropping hypothesis (not provably disjoint from callee footprint):" H; clear H ]
  end.
End F_fmt_fp_pre.

(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib Require Import SFModel Arr Image.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec Require Import Prelim SoftFloat FmtFp.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P Require Import SFW1_lemmas.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U Require Import F_fmt_fp_lib.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U Require F_fmt_fp_lib.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.
Import F_fmt_fp_pre.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U Require Import UImg.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Import ListNotations.
Open Scope bv_scope.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IImgU OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre2.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U Require F_fmt_fp_lib.
#[local] Existing Instances OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_letf2_callv_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_letf2_callv0_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_fixunstfsi_callv_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_floatsitf_callv_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_floatsitf_callp_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_floatunsitf_callv_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_floatunsitf_callfix_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_extenddftf2_callv_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_multf3_callq_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_divtf3_callq_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_addtf3_callq_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_subtf3_callq_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_frexpl_callq_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_signbitl_callv_c OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.U.F_fmt_fp_lib.F_fmt_fp_calls.U_fpclassifyl_callv_c.
(* [comment removed for export] *)
#[local] Existing Instance OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IImgU.U_img.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.CodeAtT _ _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.CodeAt _ _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.RoB _ _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.RelCode _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.RelSym _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.RelNear _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 2 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.ZFact _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.


Lemma unsigned_lit8 : forall z, (0 <= z < 256)%Z -> bv_unsigned (Z_to_bv 8 z) = z.
Proof. first [ exact OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre2.unsigned_lit8 | (pose proof OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre2.unsigned_lit8 as T_; exact T_) | exact @OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre2.unsigned_lit8 | apply OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre2.unsigned_lit8 | (apply (@OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fmt_fp_pre2.unsigned_lit8 OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IImgU.U_img); typeclasses eauto) ]. Qed.
