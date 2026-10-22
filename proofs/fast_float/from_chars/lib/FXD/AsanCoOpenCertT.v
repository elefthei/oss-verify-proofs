(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require FxCertLib.

Module AsanCoOpenT.
(* [comment removed for export] *)
From Stdlib Require Import ZArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase MemImageType RiscvSemantics State Run Specs Fs.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr.
From OssFuzzTheorems.fast_float.from_chars.images Require Import Asan.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require ShapeSet RealizesCfg AsanAcct FxLin FxCore FxSound FxStep.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxLoop.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxImg FxSubst FxLoop FxPlan FxFrame FxFacts FxEcall.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.ShapeSet OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.RealizesCfg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.AsanAcct OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLin OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxCore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSound OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxStep OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop.FxExplore OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxSubst OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxLoop OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFrame OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxFacts OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxEcall.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxBacking FxChDen FxChAdd FxChNull FxChEnt FxChain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChain.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxWvC.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChDir FxWvC FxChMain FxChFam.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxBacking OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChDen OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChAdd OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChNull OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChEnt OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChain.FxChSys OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxWvC.FxChDirDefs OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChDir OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxWvC OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChMain OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanImgScan AsanImg AsanTbl AsanEntry AsanPlan.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanFinC.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanFinC.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanTMain2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanTMain2.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanMainSF.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG Require AsanOpenFinF.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanImgScan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanImg OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTbl OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanEntry OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanPlan OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanFinC.AsanStart OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanFinC OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTMain2.AsanShort OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanTMain2 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanMainSF.AsanSpecF OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXG.AsanOpenFinF.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.AAC Require Import AcAst AcFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require AsanTblU.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common Require FxPlan.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require FxQNode FxMchr FxMNode AsanQSites FxSNodes AsanSNodes.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require AsanQcsNode.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require AsanPNodes FxSFam.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require AsanSFam3.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require AsanSFam3 FxDirConv AsanRdErr.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require AsanUsageT.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC Require FxChSep.
From OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD Require FxChFamI AsanUsageT.
Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanTblU OssFuzzTheorems.Proofs.fast_float.from_chars.lib.Common.FxPlan.FxQChk OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.FxQNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.FxMchr OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.FxMNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanQSites OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.FxSNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanSNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanQcsNode.AsanRpNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanPNodes OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.FxSFam OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanSFam3.AsanCpNode OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanSFam3 OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.FxDirConv OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanRdErr OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanUsageT.AsanUsage OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXC.FxChSep.FxKeep OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.FxChFamI OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanUsageT.
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
      MSegK 20 (PRun F30000 STOPS_U []) (KCons 0x52e0c 0 (NODEUT (inr (PQC 0)) k) (KCons 0x5179c 0 (NODEUT (inr (PQC 1)) k) (KCons 0x502ec 0 (NODEUT (inr (PQC 2)) k)
                   (KCons 0x6142c 0 (NODEUT (inr (PQC 3)) k) (KCons 0x61474 0 (NODEUT (inr (PQC 4)) k) (KCons 0xd2bfc 0 (NODEUT (inr (PMC 0)) k)
                   (KCons 0x73594 0 (NODEUT (inl (HSL3 0)) k) (KCons 0xd2b88 0 (NODEUT (inl (HMCH3 0)) k) (KCons 0xcb964 0 (NODEUT (inl (HNUL3 0 0)) k)
                   (KCons 0x639e0 0 (NODEUT (inr PRP) k) (KCons 0xd2c84 0 (NODEUT (inl (HCP3 0 64)) k) ends)))))))))))) MEnd.
Definition KTOWVCT (k : MCUT) : MCUT := MJoin (KSTCT F24 (KCons 0xca390 66 MEnd KNil)) 0xca390 k.
Definition KCAT : MCUT := KTOWVCT (KW1T (WBuf B0R BFull 1) WEmpty UAFTERT).
Definition KCBT : MCUT := KTOWVCT (KW2T (WBuf B0R BPreArg 1) (WLit 0x1eb1c) UKB2T).
Definition KCCT : MCUT := KTOWVCT (KW2T (WBuf B0R BPre 0) (WArg 0) (KSTCT F12 (KCons 0xca390 66 UKWLT KNil))).
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
End AsanCoOpenT.

Import OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.FxCertLib OssFuzzTheorems.Proofs.fast_float.from_chars.lib.FXD.AsanCoOpenCertT.AsanCoOpenT.
Import ListNotations.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Lemma c_res_ab_nilT : c_res_abT = Some []. Proof. apply res_nil_eq. vm_cast_no_check (eq_refl true). Qed.
Lemma c_res_c_nilT : c_res_cT = Some []. Proof. apply res_nil_eq. vm_cast_no_check (eq_refl true). Qed.
