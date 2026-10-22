(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
From OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib Require BvWfKernel.
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Bool.
From LinuxProcessSemantics.Riscv Require Import Instr.
From OssFuzzTheorems.jsoncons.fuzz_msgpack_encoder.images Require Import Asan.
Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0076. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0107. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0129. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0132. Require OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0117. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0132. Import OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0076.AxSymExec3K OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0076.AsanPlanCoreK OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0076.AsanPlanK OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0107.AsanPlanFastK OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0129.AsanPlanFastXK OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0076.AsanNodesExtraDefsK OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0132.AsanInitK OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0117.Na0DefsK OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0107.Na0HSK_201 OssFuzzTheorems.Proofs.jsoncons.fuzz_msgpack_encoder.lib.Mh_0117.Na0ResK.
Import ListNotations. Import AX2K. Import APCK. Import APK. Local Ltac Zify.zify_convert_to_euclidean_division_equations_flag ::= constr:(true).
Open Scope Z_scope.
Definition JS_as0_root (h : nat) : option acs := if Nat.eqb h 201 then Some HS_201 else None.
Definition planK_root : plan :=
  PRun [] (PX XIMemset [] 
  (PRun [] (PX XEnvScan [] 
  (PRun [] (PX XPnScan [] 
  (PRun [] (PX XIMemcpy [] 
  (PRun [] (PSys YSetTid 
  (PRun [] (PX XIMemcpy [] 
  (PRun [0x1378d4] (PExt 98 [ELit 0; ELit 0x6b3b40; ELit 8] 
  (PRun [0x939ec] (PExt 97 [] 
  (PRun [] (PMmap PContra 
  (PRun [] (PMmap PContra 
  (PRun [] (PMmap PContra 
  (PRun [0x927b4] (PX XIStrncpy [] 
  (PRun [0x927b4] (PX XIStrncpy [] 
  (PRun [] (PMmap PContra 
  (PRun [] (PX XIMemset [] 
  (PRun [] (PX XIMemcpy [] 
  (PRun [] (PX XIMemcpy [] 
  (PRun [] (PX XIMemcpy [] 
  (PRun [] (PX XIMemcpy [] 
  (PRun [] (PX XIMemset [] 
  (PRun [] (PX XIMemcpy [] 
  (PRun [] (PX XIMemcpy [] 
  (PRun [0x87df0] (PDropRange (escale 4096 (EVar 94)) (ELit 65536) 
  (PRun [0x87e18] (PDropRange (escale 4096 (EVar 94)) (ELit 65536) 
  (PRun [0x939ec] (PExt 97 [] 
  (PRun [] (PMmap PContra 
  (PRun [] (PMmap PContra 
  (PRun [0x9a814] (PFresh 9 12 None 
  (PRun [] (PMmapIn PContra 
  (PRun [0x81ab8] (PExt 95 [] 
  (PRun [] (PX XMemset [] 
  (PRun [] (PMmap PContra 
  (PRun [] (PMmap PContra 
  (PRun [] (PMmap PContra 
  (PRun [0x81ab8] (PExt 95 [] 
  (PRun [] (PX XMemset [] 
  (PRun [] (PMmap PContra 
  (PRun [] (PX XIMemcpy [] 
  (PRun [] (PX XIMemcpy [] 
  (PRun [] (PX XMemIsZero [] 
  (PRun [] (PX XMemset [] 
  (PRun [] (PMmap PContra 
  (PRun [] (PMmap PContra 
  (PRun [] (PX XIMemcpy [] 
  (PRun [] (PX XIMemcpy [] 
  (PRun [] (PSys YMunmap 
  (PRun [0x9ad48] (PHandoff 201)))))))))))))))))))))))))))))))))))) PContra))))))))))))))))))))))))))))))))))))))))))))))))))))))))).

Definition shape_root : shape := (SHole 201).
Lemma cert_root :
  check ASEGS0 IT0 ASAN0 NX0 AsanInitK.LIMIT XN0 XE0 XB0 JS_as0_root KC0 BFUEL FUEL None asan0_init planK_root = COk shape_root.
Proof. rewrite <- APKX.check_fastx_eq. vm_cast_no_check (@eq_refl cres (COk shape_root)). Qed.
