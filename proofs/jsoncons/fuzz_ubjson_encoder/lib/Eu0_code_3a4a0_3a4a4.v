(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_ubjson_encoder.lib Require BvWfKernel.

From Stdlib Require Import ZArith.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC.
From OssFuzzTheorems.jsoncons.fuzz_ubjson_encoder.images Require Import Ubsan.
Open Scope bv_scope.

Local Ltac vm_refl :=
  lazymatch goal with
  | |- ?G => apply (@bool_decide_eq_true_1 G _); vm_cast_no_check (@eq_refl bool true)
  end.

Definition W_3a4a0 : bv 32 := 0xf2050553.
Lemma F_3a4a0 : fetch_word Ubsan.M.loaded_segments (0x3a4f8 : word) = Some W_3a4a0.
Proof. vm_refl. Qed.
Lemma D_3a4a0 : decode_any W_3a4a0 = Some (Fmv FMV_F_X FMT_D 10 10, 4%Z).
Proof. vm_refl. Qed.
