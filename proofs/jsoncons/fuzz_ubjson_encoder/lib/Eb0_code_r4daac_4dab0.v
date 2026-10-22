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

Definition W_644ec : bv 32 := 0x1dc0206f.
Lemma F_644ec : fetch_word AsanUbsan.M.loaded_segments (0x6453c : word) = Some W_644ec.
Proof. vm_refl. Qed.
Lemma D_644ec : decode_any W_644ec = Some (Jal 0 8668, 4%Z).
Proof. vm_refl. Qed.
