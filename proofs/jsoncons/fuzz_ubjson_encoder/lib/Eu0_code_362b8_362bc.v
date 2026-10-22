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

Definition W_362b8 : bv 32 := 0x22840553.
Lemma F_362b8 : fetch_word Ubsan.M.loaded_segments (0x36310 : word) = Some W_362b8.
Proof. vm_refl. Qed.
Lemma D_362b8 : decode_any W_362b8 = Some (Fsgnj F_SGNJ FMT_D 10 8 8, 4%Z).
Proof. vm_refl. Qed.
