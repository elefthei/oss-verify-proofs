(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem.
From OssFuzzTheorems.openssl.punycode.images Require Import Asan.
From OssFuzzTheorems.Proofs.openssl.punycode.lib.LibA Require Import WpEngine.
From OssFuzzTheorems.Proofs.openssl.punycode.lib.LibA Require Import ACode.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

(* [comment removed for export] *)
Definition C_wp_init : code := Eval vm_compute in (mk_code ASEGS 0x26d794 195).
Lemma C_wp_init_eq : mk_code ASEGS 0x26d794 195 = C_wp_init.
Proof. vm_compute. reflexivity. Qed.
