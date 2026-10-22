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

Definition W_d91b4 : bv 32 := 0xfbca106f.
Lemma F_d91b4 : fetch_word AsanUbsan.M.loaded_segments (0xd9204 : word) = Some W_d91b4.
Proof. vm_refl. Qed.
Lemma D_d91b4 : decode_any W_d91b4 = Some (Jal 0 1710012, 4%Z).
Proof. vm_refl. Qed.

Definition W_d91b8 : bv 32 := 0xffdff06f.
Lemma F_d91b8 : fetch_word AsanUbsan.M.loaded_segments (0xd9208 : word) = Some W_d91b8.
Proof. vm_refl. Qed.
Lemma D_d91b8 : decode_any W_d91b8 = Some (Jal 0 2097148, 4%Z).
Proof. vm_refl. Qed.
