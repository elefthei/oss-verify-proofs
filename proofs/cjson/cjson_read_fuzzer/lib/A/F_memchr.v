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
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib Require Import Tac Bytes.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec Require Import StrFun.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A Require Import AImg.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Import ListNotations.
Open Scope bv_scope.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IImgA OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_memchr.
(* [comment removed for export] *)
#[local] Existing Instance OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IImgA.A_img.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.CodeAtT _ _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.CodeAt _ _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.RoB _ _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.RelCode _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.RelSym _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.RelNear _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 2 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.ZFact _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.


Definition memchr_entry := 0x9b0f4%Z.

(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)
Definition memchr_post (ra sp gp tp s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 : word) (F : bvmap 5 word) (fc : bv 32)
    (a0 a1 a2 : word) (buf : list byte) (m : word -> option byte) : machine_state -> Prop :=
  fun ms' => exists t0 t1 t2 a1' a2' a3 a4 a5 a6 a7 t3 t4 t5 t6 m',
    ms' = MS (mkR ra sp gp tp t0 t1 t2 s0 s1
                 (Z_to_bv 64 (memchr_res (bv_unsigned a0) (bv_unsigned a1 mod 256) (bv_unsigned a2) buf))
                 a1' a2' a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6)
             F (ret_pc ra) fc None m' (seg_rom asegs)
    /\ munch [] m m' /\ wmono asegs m m' /\ mem_inv asegs m'
    /\ bytes_at asegs m' (bv_unsigned a0) buf.

Lemma memchr_spec : forall ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6
    (F : bvmap 5 word) fc (m : word -> option byte) (buf : list byte),
  bytes_at asegs m (bv_unsigned a0) buf ->
  memchr_ok (bv_unsigned a0) (bv_unsigned a1 mod 256) (bv_unsigned a2) buf ->
  mem_inv asegs m ->
  evt asegs (memchr_post ra sp gp tp s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 F fc a0 a1 a2 buf m)
    (MS (mkR ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6)
        F (Z_to_bv 64 0x9b0f4) fc None m (seg_rom asegs)).
Proof. first [ exact OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_memchr.memchr_spec | (pose proof OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_memchr.memchr_spec as T_; exact T_) | exact @OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_memchr.memchr_spec | apply OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_memchr.memchr_spec | (apply (@OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_memchr.memchr_spec OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IImgA.A_img); typeclasses eauto) ]. Qed.
#[export] Instance A_memchr_contract : OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_memchr.memchr_contract := OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_memchr.memchr_contract_ok.
