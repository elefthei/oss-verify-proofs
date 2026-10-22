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

Definition W_b1430 : bv 32 := 0x4035d593.
Lemma F_b1430 : fetch_word Asan.M.loaded_segments (0xb1480 : word) = Some W_b1430.
Proof. vm_refl. Qed.
Lemma D_b1430 : decode_any W_b1430 = Some (ShiftImm ALU_SRA 11 11 3, 4%Z).
Proof. vm_refl. Qed.

Definition W_b1434 : bv 32 := 0x02d585b3.
Lemma F_b1434 : fetch_word Asan.M.loaded_segments (0xb1484 : word) = Some W_b1434.
Proof. vm_refl. Qed.
Lemma D_b1434 : decode_any W_b1434 = Some (Mul M_MUL 11 11 13, 4%Z).
Proof. vm_refl. Qed.
