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

Definition W_688e4 : bv 32 := 0xda0b9ae3.
Lemma F_688e4 : fetch_word AsanUbsan.M.loaded_segments (0x68934 : word) = Some W_688e4.
Proof. vm_refl. Qed.
Lemma D_688e4 : decode_any W_688e4 = Some (Branch BC_NE 23 0 7604, 4%Z).
Proof. vm_refl. Qed.
