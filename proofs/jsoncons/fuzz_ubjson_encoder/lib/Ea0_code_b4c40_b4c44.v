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

Definition W_b4c40 : bv 32 := 0x00054503.
Lemma F_b4c40 : fetch_word Asan.M.loaded_segments (0xb4c90 : word) = Some W_b4c40.
Proof. vm_refl. Qed.
Lemma D_b4c40 : decode_any W_b4c40 = Some (Load SZ1 false 10 10 0, 4%Z).
Proof. vm_refl. Qed.
