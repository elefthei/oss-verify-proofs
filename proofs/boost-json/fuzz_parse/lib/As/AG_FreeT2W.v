(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool Permutation FMapPositive.
From stdpp Require Import gmap.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.boost_json.fuzz_parse.images Require Import Asan.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib Require Import HeapCeil.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Lib Require Import Tac Image ZBridge SysStep SFModel CellsX Arr TacX.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib Require Import AsanAllocModel AsanAllocCons SReach LazyRestrict LazyLedger LazySR LazyNodes.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.As Require Import ASegs AsShadow AllocWf AllocKit AllocBudget AllocRep AllocRepX AsDepotInv AsDepotHash AsUnwind AW_MallocBase AW_Put1
     AG_Malloc2 AG_Free2 AG_RepQ AG_FreeMid AG_FreeTail AG_WriteSet AG_RecycleDefs AG_RecEntry AG_FreeT2.
Require Import OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Lib.CDef.
Local Ltac2 zQ s := CDef.cdeft "37Corelib7Numbers7BinNums04Npos35stdpp9bitvectorbdefinitionshf2bv46Stdlib6ZArith6BinInt1Zk13add7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2As5ASegslf5asegshfbbv_unsigned01Z7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3Lib5Cellsr34cell7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2As8AllocRepv64a_st37Corelib4Init9Datatypeshjb4cons37Corelib4Init5Logichlb2eqr32C8hjb4listhjb3nilk12le7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3Lib4TacXhoe2wz6fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3libeAsanAllocModelhsf6astatehsf8qc_byteshlb3and3h5LinuxProcessSemanticsfLinuxProcessSemeRiscvSemanticsiiddmachine_state3h5LinuxProcessSemanticsfLinuxProcessSem3Runin55mkCfghjb6lengthhsf5as_tqhsf6effect7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3Lib4Stepis78rw_cells3h5LinuxProcessSemanticsfLinuxProcessSem5Statejge5Modelv63a_Lv63a_Sv65a_thr6fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib6SReachjl96sreach6fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib4Scfgjpcdhunspell_scfghf7Z_to_bvhsf5as_gqhsfcch_chunk_beghsfdkMaxCacheSizehsfh2kQuarantineMaxSizehjb4Nonehjb4boolhjb4prodhjb4truehlb2ex37Corelib4Init5Peanokl52le7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2AsaAG_Malloc2kmfcdepot_placed7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2AseAG_MallocModelkrffsame_but_shadow7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2AseAG_RecycleDefslh6arstep_postv65AINSTv64a_Zrv65a_botv65a_topv63ast7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2As9AllocRepXlod7AMODELXlod8awin_vislod9depot_covlodaflagsx_rep7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2AsaAsDepotInvlve5DEPOT7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2As8AsShadowmk73memhsffas_cache_initedhsfbch_user_beghsf5chunkhsf6qbatch6fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3libcLazyRestrictms18restrict6fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib6LazySRngc4lzok7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3Lib5Framenkd3stk7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3Lib6MStatenp02MS7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3Lib3Memnt37mem_inv7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3Lib8PropExecoh87seg_romk12ltk13powhjb4Somehjb3apphjb3nathjb6optionhjb4pairhlb3not37Corelib4Init3Natopc3sub37Corelib5Lists7ListDefor53map7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2AsaAG_FreeMidot37ARHEAPQ7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2As9AG_FreeT2phe4MREC7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2As7AG_RepQpm55AREPQ7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2AsbAW_Enqueue1pqb8enq_regs7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2As7AW_Put1pv89put_frame7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2AsbAllocBudgetqk26B_PRIMqk26pusagev63ATPv67a_cachemk75aceil6fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3libeAsanAllocConsCqr04NUMchsfbCQuarantinehsfacb_recyclehsf8ch_statehsf7ch_usedhsfachunk_listhsf6cstatehsfakBatchSizehsf7qc_list7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3Lib3Arrrle6u64arrr32CBnkd3mkR36Stdlib5Lists4Listrqe2Ink16modulok16of_natpheefree_tail2_raw7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2AsbAG_RecEntryrubcrec_entry_okrubarec_pre_ok7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2AsdAW_MallocBaseskaaicpt_chain7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2As8AsUnwindspb6utracelve5depot7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2AsbAsDepotHashsucadepot_hashlve5d_put7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2As8AG_Free2tk49lb_removek13mullve4d_nblve4d_sb" s.
Import ListNotations.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Section HCW.
  Context {HCEIL : HeapCeil}.

Section FreeTail2W.
  Variables (ra sp gp tp s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 : word) (F : bvmap 5 word) (fc : bv 32) (Q : config -> Prop).
  Variables (s : ast) (LB : list (Z * Z)) (d : depot) (lo : Z) (CH : list (Z * Z)) (ch : chunk).
  Let CHI : ltac2:(zQ "30!r0!hna!kjf@1$1@2$2$0$0") := ltac2:(zQ "40!h9!q2!sod!lnf@5$2@2$1@1$0#k0?2ra@2$1@1$0#k0?2s0@2$1@1$0#k0?2sp@1$3?1s?2CH").
  Let T : ltac2:(zQ "20!hna!r0@1$0$1") := ltac2:(zQ "50!h9!ln7!lnf!st9!q2@6$3+pgsq0@2$4@1$0#k0?2sp@1$2?1s@1$1?1s+he?3CHI").
  Let d' : ltac2:(zQ "10!su3$0") := ltac2:(zQ "50!iqa!r0!tid!tjb!rt0@3$3?1d@1$2?1T@1$4@2$0$1?1T").
  Let LB' : ltac2:(zQ "30!r0!hna!kjf@1$1@2$2$0$0") := ltac2:(zQ "20!to2!mpf@2$0@1$1?2ch?2LB").

  Hypothesis LO : ltac2:(zQ "20!qq7!ho9@2$1@1$0?5HCEIL?2lo").
  Hypothesis HI : ltac2:(zQ "40!h9!l9!ho9!q2@2$2@2$1?2lo+so0@2$3@1$0#k0?2sp").
  Hypothesis SPT : ltac2:(zQ "50!h9!l9!ho9!om7!q2@2$2@2$1@2$4@1$0#k0?2sp+h0@2$3+2+if").
  Hypothesis SPA : ltac2:(zQ "50!hmf!h9!r0!rs7!q2@3$0$2@2$3@2$4@1$1#k0?2sp+h0Z").
  Hypothesis TPv : ltac2:(zQ "50!hmf!h9!r0!qp7!q2@3$0$2@2$4@1$1#k0?2tp$3").
  Hypothesis DLO : ltac2:(zQ "60!l9!ho9!tof!ii6!tp5!tpd@2$3@2$1@2$0@1$4?2d'@2$2+h0+hggg0?2lo@2$1@2$0@1$5?2d'@2$2+8+ogg0?2lo").

  Definition free_tail2_w :=
    free_tail2_raw ra sp gp tp s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 F fc Q s LB d lo CH ch LO HI SPT SPA TPv DLO
      (rec_pre_ok sp lo LB' LO HI) (rec_entry_ok sp lo d' LB' LO HI).
End FreeTail2W.
End HCW.
