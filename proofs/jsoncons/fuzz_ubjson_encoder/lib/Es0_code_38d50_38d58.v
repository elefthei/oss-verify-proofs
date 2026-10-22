(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_ubjson_encoder.lib Require BvWfKernel.

From Stdlib Require Import ZArith.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC.
From OssFuzzTheorems.jsoncons.fuzz_ubjson_encoder.images Require Import Plain.
Open Scope bv_scope.

Local Ltac vm_refl :=
  lazymatch goal with
  | |- ?G => apply (@bool_decide_eq_true_1 G _); vm_cast_no_check (@eq_refl bool true)
  end.

Definition W_38d50 : bv 32 := 0xf00507d3.
Lemma F_38d50 : fetch_word Plain.M.loaded_segments (0x38da8 : word) = Some W_38d50.
Proof. vm_refl. Qed.
Lemma D_38d50 : decode_any W_38d50 = Some (Fmv FMV_F_X FMT_S 15 10, 4%Z).
Proof. vm_refl. Qed.

Definition W_38d54 : bv 32 := 0x42078553.
Lemma F_38d54 : fetch_word Plain.M.loaded_segments (0x38dac : word) = Some W_38d54.
Proof. vm_refl. Qed.
Lemma D_38d54 : decode_any W_38d54 = Some (Fcvt FC_D FC_S 10 15 0, 4%Z).
Proof. vm_refl. Qed.
