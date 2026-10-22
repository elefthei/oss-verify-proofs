(* Machine-generated data computed from the task's compiled program image (decoder-built tables and encoded data blocks); may contain fragments of third-party object code - see NOTICE. No Anthropic licence header applies to this file. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require PropExec. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.PropExec OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0075.AxSymExec3 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0112.LibSym.
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require KReplay.
Ltac2 kr_t_BndT_Na_003 () := "K47Corelib4Init5Logic2eq01C5ARocqVerifyHarness?AgentSubmission7Mh_01126LibSym7itab_ofI47Corelib4Init5Logic2eq00C6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX24itabc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d093992ITC5ARocqVerifyHarness@ProcessOversightMTgt_fuzz_msgpack_encoder_asan1M?loaded_segmentsc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d093993ITRC6ARocqVerifyHarness?AgentSubmission7Mh_0075:AxSymExec33AX2:itab_soundC5ARocqVerifyHarness?AgentSubmission7Mh_01126LibSym=itab_of_soundC47Corelib4Init5Logic8eq_ind_rc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d093995IT_eqc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d09a7c2ITc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d09a7c3ITRc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d09a7c5IT_eqc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d214862ITc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d214863ITRc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d214865IT_eqc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d4be312ITc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d4be313ITRc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d4be315IT_eqc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d53c472ITc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d53c473ITRc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d53c475IT_eqc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d6a0b12ITc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d6a0b13ITRc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d6a0b15IT_eqc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d939542ITc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d939543ITRc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d939545IT_eqc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d9c1882ITc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d9c1883ITRc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_d9c1885IT_eqc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_dc75da2ITc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_dc75da3ITRc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_dc75da5IT_eqc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_dcd0042ITc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_dcd0043ITRc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_dcd0045IT_eqc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_deeaf72ITc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_deeaf73ITRc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_deeaf75IT_eqc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e1bf422ITc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e1bf423ITRc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e1bf425IT_eqc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e1e97c2ITc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e1e97c3ITRc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e1e97c5IT_eqc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e24eef2ITc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e24eef3ITRc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e24eef5IT_eqc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e43ecc2ITc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e43ecc3ITRc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e43ecc5IT_eqc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e5b6072ITc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e5b6073ITRc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e5b6075IT_eqc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e652122ITc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e652123ITRc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e652125IT_eqc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e77cdf2ITc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e77cdf3ITRc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e77cdf5IT_eqc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e95a0a2ITc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e95a0a3ITRc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_e95a0a5IT_eqc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_eab0ed2ITc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_eab0ed3ITRc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_eab0ed5IT_eqc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_ef2e992ITc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_ef2e993ITRc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_ef2e995IT_eqc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f35ee72ITc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f35ee73ITRc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f35ee75IT_eqc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f38b752ITc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f38b753ITRc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f38b755IT_eqc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f6ca4a2ITc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f6ca4a3ITRc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f6ca4a5IT_eqc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f71f072ITc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f71f073ITRc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f71f075IT_eqc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f9163e2ITc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f9163e3ITRc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f9163e5IT_eqc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f955732ITc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f955733ITRc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_f955735IT_eqc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_fff2e72ITc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_fff2e73ITRc6ARocqVerifyHarness?AgentSubmission3seg;BndT_Na_003ASegItab_Na_fff2e75IT_eq".

Module SegItab_Na_d09399.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(757680, 263%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_d09399.

Module SegItab_Na_d09a7c.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(452984, 45%nat) ; (557068, 40%nat) ; (450224, 690%nat) ; (478072, 102%nat) ; (598124, 59%nat) ; (599100, 13%nat) ; (599260, 7%nat) ; (533480, 209%nat) ; (598920, 24%nat) ; (599872, 12%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_d09a7c.

Module SegItab_Na_d21486.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(720724, 120%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_d21486.

Module SegItab_Na_d4be31.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(871880, 201%nat) ; (848248, 207%nat) ; (849656, 44%nat) ; (849832, 94%nat) ; (850208, 60%nat) ; (850472, 18%nat) ; (850544, 38%nat) ; (790184, 40%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_d4be31.

Module SegItab_Na_d53c47.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(729960, 550%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_d53c47.

Module SegItab_Na_d6a0b1.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(455344, 41%nat) ; (453164, 198%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_d6a0b1.

Module SegItab_Na_d93954.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(810712, 55%nat) ; (874144, 20%nat) ; (435060, 1%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_d93954.

Module SegItab_Na_d9c188.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(727876, 521%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_d9c188.

Module SegItab_Na_dc75da.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(754584, 40%nat) ; (754744, 44%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_dc75da.

Module SegItab_Na_dcd004.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(434840, 1%nat) ; (434864, 1%nat) ; (435724, 165%nat) ; (442188, 180%nat) ; (553212, 6%nat) ; (557068, 40%nat) ; (1349772, 17%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_dcd004.

Module SegItab_Na_deeaf7.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(444164, 157%nat) ; (1308196, 100%nat) ; (1311060, 46%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_deeaf7.

Module SegItab_Na_e1bf42.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(815024, 97%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_e1bf42.

Module SegItab_Na_e1e97c.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(999896, 136%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_e1e97c.

Module SegItab_Na_e24eef.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(839180, 139%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_e24eef.

Module SegItab_Na_e43ecc.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(766784, 111%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_e43ecc.

Module SegItab_Na_e5b607.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(831192, 498%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_e5b607.

Module SegItab_Na_e65212.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(812400, 44%nat) ; (813288, 40%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_e65212.

Module SegItab_Na_e77cdf.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(770468, 284%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_e77cdf.

Module SegItab_Na_e95a0a.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(834716, 335%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_e95a0a.

Module SegItab_Na_eab0ed.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(853276, 2405%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_eab0ed.

Module SegItab_Na_ef2e99.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(872684, 186%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_ef2e99.

Module SegItab_Na_f35ee7.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(727876, 521%nat) ; (850712, 6%nat) ; (850764, 2%nat) ; (850772, 2%nat) ; (850780, 2%nat) ; (850788, 2%nat) ; (850796, 2%nat) ; (810612, 2%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_f35ee7.

Module SegItab_Na_f38b75.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(866564, 259%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_f38b75.

Module SegItab_Na_f6ca4a.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(736500, 542%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_f6ca4a.

Module SegItab_Na_f71f07.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(434868, 1%nat) ; (557068, 40%nat) ; (442908, 158%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_f71f07.

Module SegItab_Na_f9163e.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(802528, 267%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_f9163e.

Module SegItab_Na_f95573.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(1001024, 83%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_f95573.

Module SegItab_Na_fff2e7.
Import ListNotations. Import AX2.
Open Scope Z_scope.
Abbreviation RSEGS := Asan.M.loaded_segments.
Definition ITR : list (Z * nat) := [(434916, 1%nat) ; (450224, 690%nat) ; (455128, 54%nat) ; (557068, 40%nat) ; (598920, 24%nat) ; (599100, 13%nat) ; (599260, 7%nat)].
Definition IT : itab := Eval vm_compute in (itab_of RSEGS ITR).
Lemma IT_eq : IT = itab_of RSEGS ITR.
Proof. vm_cast_no_check (@eq_refl itab IT). Qed.
Lemma IT_sound : itab_sound RSEGS IT.
Proof. rewrite IT_eq. apply itab_of_sound. Qed.
End SegItab_Na_fff2e7.
