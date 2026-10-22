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
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib Require Import SFModel.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Spec Require Import SoftFloat FmtFp.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.P Require Import SFW1_lemmas.
From OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.A Require Import AImg.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Import ListNotations.
Open Scope bv_scope.
Require OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IImgA OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fpclassifyl.
(* [comment removed for export] *)
#[local] Existing Instance OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IImgA.A_img.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.CodeAtT _ _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.CodeAt _ _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.RoB _ _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.RelCode _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.RelSym _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 1 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.RelNear _ _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.
#[local] Hint Extern 2 (OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.Reloc.RStep.ZFact _) => OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IInst.inst : typeclass_instances.


(* [comment removed for export] *)
Section CeilWrap.
Context {ACEIL : Ceil}.


Definition fpclassifyl_entry := 0x91208%Z.

(* [comment removed for export] *)
Definition fpclassifyl_post (ra sp gp tp t0 t1 t2 s0 s1 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 : word)
    (F : bvmap 5 word) (fc : bv 32) (r : Z) (m : word -> option byte) : machine_state -> Prop :=
  fun ms' => exists a1 a2 a3,
    ms' = MS (mkR ra sp gp tp t0 t1 t2 s0 s1 (Z_to_bv 64 r) a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6)
             F (ret_pc ra) fc None m (seg_rom asegs)
    /\ munch [] m m /\ wmono asegs m m /\ mem_inv asegs m.

Lemma fpclassifyl_spec : forall ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6
    (F : bvmap 5 word) fc (m : word -> option byte),
  mem_inv asegs m ->
  evt asegs (fpclassifyl_post ra sp gp tp t0 t1 t2 s0 s1 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 F fc
               (fpclassifyl (bv_unsigned a0 + 2^64 * bv_unsigned a1)) m)
    (MS (mkR ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6)
        F (Z_to_bv 64 0x91208) fc None m (seg_rom asegs)).
Proof. repeat match goal with |- forall (_ : OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.Lib.Ceil.Ceil), _ => intro end;
  first [ exact OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fpclassifyl.fpclassifyl_spec | (pose proof OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fpclassifyl.fpclassifyl_spec as T_; exact T_) | exact @OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fpclassifyl.fpclassifyl_spec | apply OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fpclassifyl.fpclassifyl_spec | (apply (@OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fpclassifyl.fpclassifyl_spec OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.I.IImgA.A_img); typeclasses eauto) ]. Qed.


End CeilWrap.
#[export] Instance A_fpclassifyl_contract : OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fpclassifyl.fpclassifyl_contract := OssFuzzTheorems.Proofs.cjson.cjson_read_fuzzer.lib.RL.G.G_fpclassifyl.fpclassifyl_contract_ok.
