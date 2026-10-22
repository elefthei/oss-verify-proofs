From Stdlib Require Import ZArith NArith List Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_ubjson_parser_max.images Require Import AsanUbsan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_ubjson_parser_max.lib Require Import PropExec AxSymExec3 LibSym.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := AsanUbsan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(719384, 55%nat) ; (737156, 20%nat) ; (404932, 1%nat)].
Definition IT : itab := itab_of RSEGS ITR.
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
