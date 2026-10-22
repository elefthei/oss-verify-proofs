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

Definition W_644c8 : bv 32 := 0x0e40006f.
Lemma F_644c8 : fetch_word AsanUbsan.M.loaded_segments (0x64518 : word) = Some W_644c8.
Proof. vm_refl. Qed.
Lemma D_644c8 : decode_any W_644c8 = Some (Jal 0 228, 4%Z).
Proof. vm_refl. Qed.
