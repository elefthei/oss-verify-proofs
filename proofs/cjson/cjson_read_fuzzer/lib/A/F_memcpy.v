(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib Require Import Tac Arr Bytes.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec Require Import StrFun.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P Require Exit_tac.
Import OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P.Exit_tac.STRW_tac.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A Require Import AImg.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib Require Import NElim.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IImgA OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_memcpy.
(* [comment removed for export] *)
#[local] Existing Instance OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IImgA.A_img.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.CodeAtT _ _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.CodeAt _ _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.RoB _ _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.RelCode _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.RelSym _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.RelNear _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 2 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.ZFact _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.


Local Ltac step ::= step2_fast. Local Ltac stepz ::= stepz_fast.   (* [comment removed for export] *)
Import ListNotations.
Open Scope bv_scope.

Definition memcpy_entry := 0x9b1f0%Z.

(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)

Definition memcpy_post (ra sp gp tp s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 : word) (F : bvmap 5 word) (fc : bv 32)
    (a0 a1 a2 : word) (src : list byte) (m : word -> option byte) : machine_state -> Prop :=
  fun ms' => exists t0 t1 t2 a1' a2' a3 a4 a5 a6 a7 t3 t4 t5 t6 m',
    ms' = MS (mkR ra sp gp tp t0 t1 t2 s0 s1 a0 a1' a2' a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6)
             F (ret_pc ra) fc None m' (seg_rom asegs)
    /\ munch [(bv_unsigned a0, bv_unsigned a0 + bv_unsigned a2)]%Z m m' /\ wmono asegs m m' /\ mem_inv asegs m'
    /\ rw_cells asegs m' (bv_unsigned a0) [CB (Z.to_nat (bv_unsigned a2)) src]
    /\ bytes_at asegs m' (bv_unsigned a1) src.

Lemma memcpy_spec : forall ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6
    (F : bvmap 5 word) fc (m : word -> option byte) (src junk : list byte),
  bytes_at asegs m (bv_unsigned a1) src ->
  length src = Z.to_nat (bv_unsigned a2) ->
  rw_cells asegs m (bv_unsigned a0) [CB (Z.to_nat (bv_unsigned a2)) junk] ->
  (bv_unsigned a1 + bv_unsigned a2 <= bv_unsigned a0 \/ bv_unsigned a0 + bv_unsigned a2 <= bv_unsigned a1)%Z ->
  mem_inv asegs m ->
  evt asegs (memcpy_post ra sp gp tp s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 F fc a0 a1 a2 src m)
    (MS (mkR ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6)
        F (Z_to_bv 64 0x9b1f0) fc None m (seg_rom asegs)).
Proof. first [ exact OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_memcpy.memcpy_spec | (pose proof OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_memcpy.memcpy_spec as T_; exact T_) | exact @OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_memcpy.memcpy_spec | apply OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_memcpy.memcpy_spec | (apply (@OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_memcpy.memcpy_spec OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IImgA.A_img); typeclasses eauto) ]. Qed.
#[export] Instance A_memcpy_contract : OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_memcpy.memcpy_contract := OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_memcpy.memcpy_contract_ok.
