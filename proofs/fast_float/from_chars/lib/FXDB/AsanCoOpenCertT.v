(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require FxCertLib.

Module AsanCoOpenT.
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase MemImageType RiscvSemantics State Run Specs Fs.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr.
From OssFuzzTheorems.fast_float.from_chars.images Require Import AsanUbsan.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require ShapeSet RealizesCfg AsanAcct FxLin FxCore FxSound FxStep.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLoop.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxImg FxSubst FxLoop FxPlan FxFrame FxFacts FxEcall.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.ShapeSet OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.RealizesCfg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.AsanAcct OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLin OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxCore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSound OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxStep OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop.FxExplore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSubst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFrame OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFacts OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxEcall.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxBacking FxChDen FxChAdd FxChNull FxChEnt FxChain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxWvC.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChDir FxWvC FxChMain FxChFam.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxBacking OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChDen OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChAdd OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChNull OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChEnt OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChain.FxChSys OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxWvC.FxChDirDefs OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChDir OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxWvC OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChMain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanImgScan AsanImg AsanTbl AsanEntry AsanPlan AsanStart AsanFinC.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanTMain2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanTMain2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanMainSF.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB Require AsanOpenFinF.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanImgScan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTbl OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanEntry OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanStart OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanFinC OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTMain2.AsanShort OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanTMain2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanMainSF.AsanSpecF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXGB.AsanOpenFinF.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AACB Require Import AcAst AcFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanTblU.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLoop.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require FxQNode FxMchr FxMNode AsanQSites FxSNodes AsanSNodes.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanQcsNode.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanPNodes FxSFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanSFam3.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanSFam3 FxDirConv AsanRdErr.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require AsanUsageT.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChLib.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB Require FxChFamI AsanUsageT.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanTblU OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop.FxQChk OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxQNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxMchr OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxMNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanQSites OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxSNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanSNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanQcsNode.AsanRpNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanPNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxSFam OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanSFam3.AsanCpNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanSFam3 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxDirConv OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanRdErr OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanUsageT.AsanUsage OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChLib.FxKeep OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxChFamI OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanUsageT.
Import ListNotations.
Local Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

(* [comment removed for export] *)
Definition T0T : sst := ret_gen S_OPEN_T ERRLO ERRHI.
Definition LPATH : lin := hvar 17.
(* [comment removed for export] *)
Definition FV8C : fact := FRange PV 140735332483072 140737488355326.
Definition FV8SPC : fact := FRange (lsub PV (sm_sp MMAIN)) 0 4194304.
Definition FENDP0 : fact := FRange (ladd PV LPATH) 0x7fff7f800000 (0x800000000000 - 17).
Definition FENDP2 : fact := FRange (lsub (ladd PV LPATH) (sm_sp MMAIN)) 0 4194304.
Definition FRZP : fact := FRange (lsub (laddc RANDP16 (-16)) (ladd PV LPATH)) 1 4194304.
Definition FPV0 : fact := FRange (lsub PV P0) 1 4194304.
Definition FSC : list fact := [FV8C; FV8SPC; FENDP0; FENDP2; FRZP; FPV0].
Definition TCT : sst := add_facts T0T FSC.
Definition AC0T : ast * sfam := (AMAIN, ([(PV, LPATH, 1%nat)], [])).
(* [comment removed for export] *)
Definition SH_CANNOT2 : shp := ShEmit [PD 2 (SArgs CANNOT_PRE 1 LPATH []) (lconst 0); PD 2 (SLit [10]) (lconst 0)] 2.

(* [comment removed for export] *)
Definition KSTCT (n : nat) (ends : MKUT) : MCUT := Nat.iter n (fun k =>
      MSegK 20 (PRun F30000 STOPS_U []) (KCons 0x5329c 0 (NODEUT (inr (PQC 0)) k) (KCons 0x51c2c 0 (NODEUT (inr (PQC 1)) k) (KCons 0x5077c 0 (NODEUT (inr (PQC 2)) k)
                   (KCons 0x61420 0 (NODEUT (inr (PQC 3)) k) (KCons 0x61468 0 (NODEUT (inr (PQC 4)) k) (KCons 0xd4478 0 (NODEUT (inr (PMC 0)) k)
                   (KCons 0x73588 0 (NODEUT (inl (HSL3 0)) k) (KCons 0xd4404 0 (NODEUT (inl (HMCH3 0)) k) (KCons 0xcd1e0 0 (NODEUT (inl (HNUL3 0 0)) k)
                   (KCons 0x639d4 0 (NODEUT (inr PRP) k) (KCons 0xd4500 0 (NODEUT (inl (HCP3 0 64)) k) ends)))))))))))) MEnd.
Definition KTOWVCT (k : MCUT) : MCUT := MJoin (KSTCT F24 (KCons 0xcbc0c 66 MEnd KNil)) 0xcbc0c k.
Definition KCAT : MCUT := KTOWVCT (KW1T (WBuf B0R BFull 1) WEmpty UAFTERT).
Definition KCBT : MCUT := KTOWVCT (KW2T (WBuf B0R BPreArg 1) (WLit 0x1eb5b) UKB2T).
Definition KCCT : MCUT := KTOWVCT (KW2T (WBuf B0R BPre 0) (WArg 0) (KSTCT F12 (KCons 0xcbc0c 66 UKWLT KNil))).
Definition CCH_ABT : MCUT := MSplit LPATH 62 KCAT KCBT.
Definition TC_ABT : sst := add_fact TCT (FRange LPATH 0 63).
Definition TC_CT : sst := add_fact TCT (FRange LPATH 64 M64).
(* [comment removed for export] *)
(* [comment removed for export] *)
Definition FLHI : Z := -1.

(* [comment removed for export] *)
Definition c_res_abT : option (list (sst * smodel * fstate * shp * (ast * sfam))) :=
  mcheck ASEGS LIM TBLR IMGR PV 0 FLHI false (Some H0) apostUT anilUT aeqbUT awfUT acopyUT asubUT agokUT alins_nil aset_id amod_f [] [] CCH_ABT TC_ABT MMAIN FSClosed SH_CANNOT AC0T.
Definition c_res_cT : option (list (sst * smodel * fstate * shp * (ast * sfam))) :=
  mcheck ASEGS LIM TBLR IMGR PV 0 FLHI false (Some H0) apostUT anilUT aeqbUT awfUT acopyUT asubUT agokUT alins_nil aset_id amod_f [] [] KCCT TC_CT MMAIN FSClosed SH_CANNOT2 AC0T.
(* [comment removed for export] *)
End AsanCoOpenT.

Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.FxCertLib OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXDB.AsanCoOpenCertT.AsanCoOpenT.
Import ListNotations.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Lemma c_res_ab_nilT : c_res_abT = Some []. Proof. apply res_nil_eq. vm_cast_no_check (eq_refl true). Qed.
Lemma c_res_c_nilT : c_res_cT = Some []. Proof. apply res_nil_eq. vm_cast_no_check (eq_refl true). Qed.
(* [comment removed for export] *)
