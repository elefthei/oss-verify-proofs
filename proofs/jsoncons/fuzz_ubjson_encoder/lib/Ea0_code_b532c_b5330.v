(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_ubjson_encoder.lib Require BvWfKernel.

From Stdlib Require Import ZArith.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC.
From OssFuzzTheorems.jsoncons.fuzz_ubjson_encoder.images Require Import Asan.
Open Scope bv_scope.

Local Ltac vm_refl :=
  lazymatch goal with
  | |- ?G => apply (@bool_decide_eq_true_1 G _); vm_cast_no_check (@eq_refl bool true)
  end.

Definition W_b532c : bv 32 := 0x4055d593.
Lemma F_b532c : fetch_word Asan.M.loaded_segments (0xb537c : word) = Some W_b532c.
Proof. vm_refl. Qed.
Lemma D_b532c : decode_any W_b532c = Some (ShiftImm ALU_SRA 11 11 5, 4%Z).
Proof. vm_refl. Qed.
