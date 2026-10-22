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

Definition W_3a068 : bv 32 := 0x00f14603.
Lemma F_3a068 : fetch_word Ubsan.M.loaded_segments (0x3a0c0 : word) = Some W_3a068.
Proof. vm_refl. Qed.
Lemma D_3a068 : decode_any W_3a068 = Some (Load SZ1 false 12 2 15, 4%Z).
Proof. vm_refl. Qed.
