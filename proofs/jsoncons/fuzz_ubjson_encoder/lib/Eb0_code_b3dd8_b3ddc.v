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

Definition W_b3dd8 : bv 32 := 0x02013407.
Lemma F_b3dd8 : fetch_word AsanUbsan.M.loaded_segments (0xb3e28 : word) = Some W_b3dd8.
Proof. vm_refl. Qed.
Lemma D_b3dd8 : decode_any W_b3dd8 = Some (FLoad FMT_D 8 2 32, 4%Z).
Proof. vm_refl. Qed.
