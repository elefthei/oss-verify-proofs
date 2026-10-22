(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_ubjson_encoder.lib Require BvWfKernel.

From Stdlib Require Import ZArith.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC.
From OssFuzzTheorems.jsoncons.fuzz_ubjson_encoder.images Require Import AsanUbsan.
Open Scope bv_scope.

Local Ltac vm_refl :=
  lazymatch goal with
  | |- ?G => apply (@bool_decide_eq_true_1 G _); vm_cast_no_check (@eq_refl bool true)
  end.

Definition W_b1640 : bv 32 := 0x00008067.
Lemma F_b1640 : fetch_word AsanUbsan.M.loaded_segments (0xb1690 : word) = Some W_b1640.
Proof. vm_refl. Qed.
Lemma D_b1640 : decode_any W_b1640 = Some (Jalr 0 1 0, 4%Z).
Proof. vm_refl. Qed.
