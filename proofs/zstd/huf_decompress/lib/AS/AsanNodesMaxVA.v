(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import
  BvBase RiscvSemantics MemImageType StackLayout Fs State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib.AS Require Import
  PropExec CatExec CatSim SeqExec StoreOk ShapeAlg SpinAlg AgentLib AsanAcct AsanAcctShape.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib.AS Require Import AxSymExec3 AxSymExec3Sound AxSymRun3 AsanPlanCore AsanPlan AsanPlanSound.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib.AS Require Import AsanNodesAux AsanMaxVA.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib Require KReplay.
Ltac2 kr_t_AsanNodesMaxVA () := "C4ELinuxProcessSemantics5Riscv7Prelude5bvmapC47Corelib4Init5Logic8eq_ind_rC6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP4a_ssC6ARocqVerifyHarness?AgentSubmission2AS:AxSymExec33AX24s_pcC6ARocqVerifyHarness?AgentSubmission2AS:AxSymExec33AX26s_regsC6ARocqVerifyHarness?AgentSubmission2AS:AxSymExec33AX26sr_updC6ARocqVerifyHarness?AgentSubmission2AS:AxSymExec33AX26s_knowC6ARocqVerifyHarness?AgentSubmission2AS:AxSymExec33AX26s_nextC6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP5mk_ssC6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP7with_ssK47Corelib4Init5Logic2eq01I6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP3acs00I47Corelib4Init9Datatypes3nat00I6ARocqVerifyHarness?AgentSubmission2AS:AxSymExec33AX24expr00I6ARocqVerifyHarness?AgentSubmission2AS:AxSymExec33AX29sym_state00I47Corelib7Numbers7BinNums1Z00I47Corelib4Init9Datatypes4list00K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums8positive01K47Corelib7Numbers7BinNums1N02I45stdpp9bitvector;definitions2bv00I47Corelib4Init9Datatypes6option00I6ARocqVerifyHarness?AgentSubmission2AS=AsanPlanSound3APS5cs_ok00C6ARocqVerifyHarness?AgentSubmission2AS=AsanPlanSound3APS6alwaysC6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP6node_xI47Corelib4Init5Logic2eq00C5ARocqVerifyHarness?AgentSubmission2AS9AxSymRun39env_agreeC6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP3nxtI47Corelib4Init5Logic3and00C4ELinuxProcessSemantics?LinuxProcessSem5State4m_fsC6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP2pcC6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP7x_maxvaC56Stdlib6ZArith6BinInt1Z3eqbC47Corelib4Init9Datatypes4negbC47Corelib4Init9Datatypes3orbK47Corelib4Init9Datatypes6option02C6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP2knK47Corelib4Init9Datatypes3nat02C6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP3regC6ARocqVerifyHarness?AgentSubmission2AS:AxSymExec33AX23xloC6ARocqVerifyHarness?AgentSubmission2AS:AxSymExec33AX23xhiC47Corelib4Init9Datatypes4andbI47Corelib4Init9Datatypes4prod00C47Corelib4Init9Datatypes3fstC47Corelib4Init9Datatypes3sndK6ARocqVerifyHarness?AgentSubmission2AS:AxSymExec33AX24expr01C6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP7set_regC47Corelib4Init5Logic6eq_indC47Corelib4Init5Logic9False_indC46Stdlib4Bool4Bool=orb_false_iffC46Stdlib4Bool4Bool>negb_false_iffC56Stdlib6ZArith6BinInt1Z6eqb_eqK47Corelib4Init9Datatypes6option01C47Corelib4Init9Datatypes9andb_propC56Stdlib6ZArith6BinInt1Z3lebC56Stdlib6ZArith6BinInt1Z2leC56Stdlib6ZArith6BinInt1Z6leb_leC56Stdlib6ZArith6BinInt1Z3ltbC56Stdlib6ZArith6BinInt1Z2ltC56Stdlib6ZArith6BinInt1Z6ltb_ltC6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP6a_mapsC6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP7a_totszC6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP5a_yloC6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP7a_eagerC6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP5a_visC6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP7a_ghostC6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP8a_abytesC6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP5a_brkC6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP4a_fdC6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP8a_tidsetK6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP3acs01C6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP6set_pcC47Corelib4Init5Logic7f_equalK47Corelib7Numbers7BinNums1Z02C6ARocqVerifyHarness?AgentSubmission2AS=AsanPlanSound3APS7co_knowC6ARocqVerifyHarness?AgentSubmission2AS=AsanPlanSound3APS2MrC6ARocqVerifyHarness?AgentSubmission2AS?AxSymExec3Sound4AX2S7know_okC6ARocqVerifyHarness?AgentSubmission2AS?AxSymExec3Sound4AX2S9xlo_soundC6ARocqVerifyHarness?AgentSubmission2AS:AxSymExec33AX26edenotC45stdpp9bitvector;definitions;bv_unsignedC6ARocqVerifyHarness?AgentSubmission2AS?AxSymExec3Sound4AX2S9xhi_soundC47Corelib4Init5Peano2ltC46Stdlib9micromega;ZifyClasses9and_morphC56Stdlib6ZArith6BinInt1Z>pow_pos_nonnegC56Stdlib6ZArith6BinInt1Z3powC56Stdlib6ZArith6BinInt1Z:pow_nonnegK47Corelib4Init9Datatypes4list01K46Stdlib9micromega6VarMap1t01I46Stdlib9micromega6VarMap1t00I46Stdlib9micromega=RingMicromega7Formula00K46Stdlib9micromega7EnvRing5PExpr01C46Stdlib9micromega5Tauto8BFormulaC46Stdlib9micromega:ZMicromega=ZTautoCheckerC46Stdlib9micromega6VarMap4findC46Stdlib9micromega:ZMicromegaCZTautoChecker_soundC46Stdlib9micromega;ZifyClasses;rew_iff_revC6ARocqVerifyHarness?AgentSubmission2AS=AsanPlanSound3APS9reg_soundC56Stdlib6ZArith6BinInt1Z6of_natC45stdpp9bitvector;definitions7Z_to_bvC45stdpp9bitvector;definitions5bv_eqC45stdpp9bitvector;definitions4BvWfK45stdpp9bitvector;definitions2bv01C5ARocqVerifyHarness?AgentSubmission2AS8PropExec4getrK46Stdlib9micromega=RingMicromega5Psatz02K46Stdlib9micromega=RingMicromega5Psatz06K46Stdlib9micromega:ZMicromega;ZArithProof02K47Corelib4Init9Datatypes4list02K46Stdlib9micromega6VarMap1t02K46Stdlib9micromega6VarMap1t03K46Stdlib9micromega7EnvRing5PExpr02K46Stdlib9micromega7EnvRing5PExpr07C5ARocqVerifyHarness?AgentSubmission2AS<AsanNodesAux2HvC5ARocqVerifyHarness?AgentSubmission2AS8PropExec7seg_romC5ARocqVerifyHarness?AgentSubmission2AS8PropExec4mkstK46Stdlib9micromega7EnvRing5PExpr03C56Stdlib6ZArith6BinInt1Z3addC5ARocqVerifyHarness?AgentSubmission2AS8AsanAcct9mrestrictC5ARocqVerifyHarness?AgentSubmission2AS9AsanMaxVA;maxva_blockI5ARocqVerifyHarness?AgentSubmission2AS6CatSim6msteps00C5ARocqVerifyHarness?AgentSubmission2AS9AsanMaxVA:maxva_postI47Corelib4Init5Logic2ex00C5ARocqVerifyHarness?AgentSubmission2AS8AsanAcct8restrictC5ARocqVerifyHarness?AgentSubmission2AS8AsanAcct=restrict_mkstC5ARocqVerifyHarness?AgentSubmission2AS<AsanNodesAuxBH_off_segments_visC6ARocqVerifyHarness?AgentSubmission2AS=AsanPlanSound3APS6allowAC5ARocqVerifyHarness?AgentSubmission2AS<AsanNodesAux>lazy_cover_visC5ARocqVerifyHarness?AgentSubmission2AS<AsanNodesAux<A_wf_allowA'C6ARocqVerifyHarness?AgentSubmission2AS=AsanPlanSound3APS7co_minvC6ARocqVerifyHarness?AgentSubmission2AS=AsanPlanSound3APS7co_haltI5ARocqVerifyHarness?AgentSubmission2AS8AsanAcct4MInv00C5ARocqVerifyHarness?AgentSubmission2AS8AsanAcctEsame_but_materializedC5ARocqVerifyHarness?AgentSubmission2AS8AsanAcct6hcleanK4ELinuxProcessSemantics?LinuxProcessSem3Run6config01I5ARocqVerifyHarness?AgentSubmission2AS7SpinAlg9srealizes00C6ARocqVerifyHarness?AgentSubmission2AS=AsanPlanSound3APS>env_agree_reflK47Corelib4Init5Logic3and01C5ARocqVerifyHarness?AgentSubmission2AS8PropExec6regupdC6ARocqVerifyHarness?AgentSubmission2AS=AsanPlanSound3APS7co_regsC6ARocqVerifyHarness?AgentSubmission2AS?AxSymExec3Sound4AX2S:edenot_litC6ARocqVerifyHarness?AgentSubmission2AS=AsanPlanSound3APS=regs_ok_set_nC4ELinuxProcessSemantics5Riscv7Prelude6bv_eqbC47Corelib4Init5Logic3notC5ARocqVerifyHarness?AgentSubmission2AS8PropExec9getr_sameC5ARocqVerifyHarness?AgentSubmission2AS8PropExec;bv_eqb_reflC5ARocqVerifyHarness?AgentSubmission2AS8PropExec:getr_otherC6ARocqVerifyHarness?AgentSubmission2AS:AxSymExec33AX26sr_getC6ARocqVerifyHarness?AgentSubmission2AS?AxSymExec3Sound4AX2S7regs_okC6ARocqVerifyHarness?AgentSubmission2AS=AsanPlanSound3APS3hidC6ARocqVerifyHarness?AgentSubmission2AS=AsanPlanSound3APS;cs_ok_framec5ARocqVerifyHarness?AgentSubmission2AS>AsanNodesMaxVA@set_pc_with_ss12c5ARocqVerifyHarness?AgentSubmission2AS>AsanNodesMaxVAAset_reg_with_ss12c5ARocqVerifyHarness?AgentSubmission2AS>AsanNodesMaxVA@set_reg_unfold12C4ELinuxProcessSemantics?LinuxProcessSem5State4m_fdC4ELinuxProcessSemantics?LinuxProcessSem5State8m_vmmapsC4ELinuxProcessSemantics?LinuxProcessSem5State9m_vm_lazyC4ELinuxProcessSemantics?LinuxProcessSem5State4m_ioC4ELinuxProcessSemantics?LinuxProcessSem5State6m_fsysC4ELinuxProcessSemantics?LinuxProcessSem5State6m_procC4ELinuxProcessSemantics?LinuxProcessSem5State5m_limC4ELinuxProcessSemantics?LinuxProcessSem5State5m_fdsC4ELinuxProcessSemantics?LinuxProcessSem5State7m_pipesC4ELinuxProcessSemantics?LinuxProcessSem5State8m_haltedC4ELinuxProcessSemantics?LinuxProcessSem5State5m_tidC5ARocqVerifyHarness?AgentSubmission2AS8AsanAcctKsame_but_materialized_frameC4ELinuxProcessSemantics?LinuxProcessSem5State7m_stdinC5ARocqVerifyHarness?AgentSubmission2AS8AsanAcct;munrestrictC5ARocqVerifyHarness?AgentSubmission2AS<AsanNodesAuxEmunrestrict_mrestrictC5ARocqVerifyHarness?AgentSubmission2AS=AsanAcctShapeGsrz_msteps_restricted_TC6ARocqVerifyHarness?AgentSubmission2AS=AsanPlanSound3APS:node1_stmtC6ARocqVerifyHarness?AgentSubmission2AS=AsanPlanSound3APS6x_stmtC6ARocqVerifyHarness?AgentSubmission2AS=AsanPlanSound3APS6cfg_ofC46Stdlib5Lists4List9fold_leftC46Stdlib9micromega;ZifyClasses5mkrelK46Stdlib9micromega=RingMicromega7Formula01K46Stdlib9micromega5Tauto8GFormula04K46Stdlib9micromega5Tauto8GFormula05K46Stdlib9micromega5Tauto8GFormula08C4ELinuxProcessSemantics?LinuxProcessSem5State6m_timeC5ARocqVerifyHarness?AgentSubmission2AS8AsanAcct:eager_usedC4ELinuxProcessSemantics?LinuxProcessSem5State=m_rlimit_coreC4ELinuxProcessSemantics?LinuxProcessSem5State7m_clockI47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01C4ELinuxProcessSemantics?LinuxProcessSem2Fs2FsC6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP5TWO46C6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP5TWO47C6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP:MAXVA_POSTC6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP9MAXVA_LENK47Corelib4Init9Datatypes4bool02K47Corelib4Init9Datatypes3nat01K47Corelib7Numbers7BinNums1Z01C56Stdlib6ZArith4Znat5Nat2Z6inj_ltK46Stdlib9micromega=RingMicromega3Op205C46Stdlib9micromega5Tauto5eKindI47Corelib4Init9Datatypes4unit00K46Stdlib9micromega5Tauto4kind01K47Corelib4Init9Datatypes4unit01K47Corelib4Init5Logic4True01K46Stdlib9micromega=RingMicromega3Op203C5ARocqVerifyHarness?AgentSubmission2AS9AsanMaxVA>asanreflect_fxI4ELinuxProcessSemantics?LinuxProcessSem5State9ProcState00I4ELinuxProcessSemantics?LinuxProcessSem5State8LimState00I4ELinuxProcessSemantics?LinuxProcessSem5State9TimeState00I4ELinuxProcessSemantics?LinuxProcessSem5State;InputStream00I6ARocqVerifyHarness?AgentSubmission2AS:AxSymExec33AX23env00K47Corelib7Numbers7BinNums8positive03I4ELinuxProcessSemantics?LinuxProcessSem5State5Model00C5ARocqVerifyHarness?AgentSubmission2AS8ShapeAlg4TSetK6ARocqVerifyHarness?AgentSubmission2AS8AsanPlan2AP5xnode0;I47Corelib4Init5Logic5False00I47Corelib4Init5Logic4True00I46Stdlib9micromega:ZMicromega;ZArithProof00I47Corelib7Numbers7BinNums1N00K46Stdlib9micromega:ZMicromega;ZArithProof01c5ARocqVerifyHarness?AgentSubmission2AS>AsanNodesMaxVA>asanreflect_fxI4ELinuxProcessSemantics?LinuxProcessSem>RiscvSemantics=machine_state00C5ARocqVerifyHarness?AgentSubmission2AS8AsanAcct>asanreflect_fxC5ARocqVerifyHarness?AgentSubmission2AS=AsanPlanSound>asanreflect_fxI47Corelib7Numbers7BinNums8positive00I6ARocqVerifyHarness?AgentSubmission2AS:AxSymExec33AX26sentry00I4ELinuxProcessSemantics?LinuxProcessSem5State7FdState00I4ELinuxProcessSemantics?LinuxProcessSem5State6VmMaps00I4ELinuxProcessSemantics?LinuxProcessSem5State7IoState00I4ELinuxProcessSemantics?LinuxProcessSem5State7FsState00I4ELinuxProcessSemantics?LinuxProcessSem5State7FdEntry00C4ELinuxProcessSemantics?LinuxProcessSem5State7PipeBuf".
(* [comment removed for export] *)
Unset Lia Cache.
Local Instance asanreflect_fx : PropExec.FPState := PropExec.fx0.
Import ListNotations.
Import AX2. Import AX2S. Import AP. Import APS.
Open Scope Z_scope.

(* [comment removed for export] *)
Lemma set_reg_unfold12 : forall (cs : acs) n e,
  set_reg cs n e = with_ss cs (mk_ss (s_pc (a_ss cs)) (sr_upd (s_regs (a_ss cs)) n e) (s_know (a_ss cs)) (s_next (a_ss cs))).
Proof.
ltac2:(KReplay.run1 (kr_t_AsanNodesMaxVA ()) [] "h02csh11eh21np;1p;3p;4p;2p10000p4p7210p1000\p4p710p8g001:j18Tg0022j17Tg002mj10Tg003jj31Tg004gj16Tg005dj12Tg006aj43Tg007Zj24Tg008Uj25Tg008oR0g009hg00:Gf2R1%81R1#7%01f1f031%61%21C3'4,50W1W2W0o"). Qed.
Lemma set_reg_with_ss12 : forall (cs : acs) s n e,
  set_reg (with_ss cs s) n e = with_ss cs (mk_ss (s_pc s) (sr_upd (s_regs s) n e) (s_know s) (s_next s)).
Proof.
ltac2:(KReplay.run1 (kr_t_AsanNodesMaxVA ()) [] "h02csh11eh21nh31sp;1p;3p;4p;2g0022j17Tg002mj16Tg003jj30Tg004gj11Tg005dj15Tg006aj42Tg007Zj23Tg008Uj24Tg008oR0g00;Dg009hg00:Gf3f2R1#7%61f1f030%11%51C2'3,40W1W2W3W0o"). Qed.
Lemma set_pc_with_ss12 : forall (cs : acs) s p,
  set_pc (with_ss cs s) p = with_ss cs (mk_ss p (s_regs s) (s_know s) (s_next s)).
Proof.
ltac2:(KReplay.run1 (kr_t_AsanNodesMaxVA ()) [] "h02csh11ph21sp;1p;4p;2g002mj15Tg004gj14Tg005dj10Tg006aj41Tg007Zj23Tg008Uj22Tg008oR0g00;Dg00<Ff2f0f1R1#5%41%01C1'3,20W1W2W0o"). Qed.

Section NodesMaxVA.
  Variable SEGS : list Segment.
  Variable A : atable.
  Variable nx0 : nat.
  Variable LIMIT : Z.
  Variable SINV : env -> (word -> option byte) -> Prop.
  Variable argH : env -> word -> bool.
  Variable FS0 : Fs.Fs.
  Hypothesis SEGS_wx : wx_segs_nowrap SEGS.
  Hypothesis SEGS_in_hull : forall a : word, in_hull A (bv_unsigned a) = false -> find_segment SEGS (bv_unsigned a) 1 = None.
  Hypothesis HULL_ok : hull_ok A.
  Hypothesis SINV_frame : forall E M M', (forall a, argH E a = true -> M' a = M a) -> SINV E M -> SINV E M'.
  (* [comment removed for export] *)
  Hypothesis Xmv : 0 < x_maxva A /\ x_maxva A + 180 < 2 ^ 64.
  Hypothesis CODE : forall i, (i < 45)%nat ->
    fetch_word SEGS (Z_to_bv 64 (x_maxva A + 4 * Z.of_nat i)) = Some (nth i MAXVA_WORDS W0).

  #[local] Notation Hv := (AsanNodesAux.Hv A).
  #[local] Notation lazy_cover_vis := (AsanNodesAux.lazy_cover_vis SEGS A LIMIT SINV argH FS0 HULL_ok).
  #[local] Notation H_off_segments_vis := (AsanNodesAux.H_off_segments_vis SEGS A SEGS_in_hull).

  Theorem x_sound_maxva : x_stmt SEGS A nx0 LIMIT SINV argH FS0 XMaxVA.
Proof.
    intros args cs cs' E R FULL model T HC _ Hn Hk. cbn [node_x] in Hn. unfold summary_maxva in Hn.
    destruct (Z.eqb (x_maxva A) 0 || negb (Z.eqb (pc cs) (x_maxva A)))%bool eqn:Hg; [discriminate|].
    apply orb_false_iff in Hg as [_ Hpc]. apply negb_false_iff in Hpc. apply Z.eqb_eq in Hpc.
    destruct (xlo (kn cs) (reg cs 10)) as [lo|] eqn:Hlo; [|discriminate].
    destruct (xhi (kn cs) (reg cs 10)) as [hi|] eqn:Hhi; [|discriminate].
    destruct (Z.leb TWO46 lo && Z.ltb hi TWO47)%bool eqn:Hb; [|discriminate].
    apply andb_prop in Hb as [Hb1 Hb2]. apply Z.leb_le in Hb1. apply Z.ltb_lt in Hb2.
    injection Hn as <-.
    pose proof (co_know _ _ _ _ _ _ _ _ _ _ _ HC) as HK.
    pose proof (xlo_sound SEGS E _ (kn cs) (reg cs 10) lo HK Hlo) as Xlo.
    pose proof (xhi_sound SEGS E _ (kn cs) (reg cs 10) hi HK Hhi) as Xhi.
    pose proof (reg_sound SEGS A LIMIT SINV argH FS0 E cs R FULL model 10 HC ltac:(lia)) as H10.
    replace (Z_to_bv 5 (Z.of_nat 10)) with (10%bv : bv 5) in H10 by (apply bv_eq; reflexivity).
    assert (Hx10 : 2 ^ 46 <= bv_unsigned (getr R 10%bv) < 2 ^ 47) by (rewrite H10; unfold TWO46, TWO47 in *; lia).
    set (H2 := Hv E cs model).
    set (ms := mkst R (Z_to_bv 64 (pc cs)) FULL (seg_rom SEGS)).
    destruct (maxva_block SEGS (x_maxva A) ltac:(lia) CODE R (mrestrict H2 FULL) (seg_rom SEGS) Hx10) as [R' [Hms Hpost]].
    unfold cfg_of. fold ms.
    assert (Hms' : msteps SEGS (restrict H2 ms) (mkst R' (Z_to_bv 64 (x_maxva A + 180)) (mrestrict H2 FULL) (seg_rom SEGS))).
    { unfold ms. rewrite restrict_mkst, Hpc. exact Hms. }
    apply (srz_msteps_restricted_T SEGS H2 (H_off_segments_vis E cs model) SEGS_wx (allowA A E cs)
             ms _ model T (lazy_cover_vis E cs R FULL model HC) (A_wf_allowA' A E cs)
             (co_minv _ _ _ _ _ _ _ _ _ _ _ HC) (co_halt _ _ _ _ _ _ _ _ _ _ _ HC) Hms').
    intros model' Hinv' Hsame Hclean.
    change (unrestrict H2 (ms_mem ms) (mkst R' (Z_to_bv 64 (x_maxva A + 180)) (mrestrict H2 FULL) (seg_rom SEGS)))
      with (mkst R' (Z_to_bv 64 (x_maxva A + 180)) (munrestrict H2 FULL (mrestrict H2 FULL)) (seg_rom SEGS)).
    rewrite munrestrict_mrestrict.
    specialize (Hk E R' FULL model' (conj (env_agree_refl nx0 E) (env_agree_refl (nxt cs) E))).
    cbn [fold_left MAXVA_POST fst snd] in Hk. unfold MAXVA_LEN in Hk.
    set (cs' := set_pc _ _) in Hk.
    assert (Epc : pc cs' = x_maxva A + 180) by (rewrite <- Hpc; reflexivity).
    unfold cfg_of in Hk. rewrite Epc in Hk.
    apply Hk; [| apply (same_but_materialized_frame _ _ Hsame)].
    subst cs'. rewrite (set_reg_unfold12 cs).
    repeat (rewrite set_reg_with_ss12; cbn [s_pc s_regs s_know s_next mk_ss]).
    rewrite set_pc_with_ss12. cbn [s_pc s_regs s_know s_next mk_ss].
    eapply cs_ok_frame; [exact SINV_frame | exact HC | exact Hsame | exact Hinv' | | reflexivity | exact (co_know _ _ _ _ _ _ _ _ _ _ _ HC) | intros; reflexivity].
    cbn [s_regs mk_ss].
    destruct Hpost as (P10 & P11 & P12 & P13 & P14 & P15 & Pag).
    set (R6 := regupd (regupd (regupd (regupd (regupd (regupd R
                 (Z_to_bv 5 (Z.of_nat 10)) (Z_to_bv 64 0x7fffffffffff))
                 (Z_to_bv 5 (Z.of_nat 11)) (Z_to_bv 64 0xffffffffffffffff))
                 (Z_to_bv 5 (Z.of_nat 12)) (Z_to_bv 64 0x3333333333333333))
                 (Z_to_bv 5 (Z.of_nat 13)) (Z_to_bv 64 0x0f0f0f0f0f0f0f0f))
                 (Z_to_bv 5 (Z.of_nat 14)) (Z_to_bv 64 0x0101010101010101))
                 (Z_to_bv 5 (Z.of_nat 15)) (Z_to_bv 64 0x7fffc00000000000)).
    assert (HR6 : regs_ok E (sr_upd (sr_upd (sr_upd (sr_upd (sr_upd (sr_upd (s_regs (a_ss cs))
                    10 (ELit 0x7fffffffffff)) 11 (ELit 0xffffffffffffffff)) 12 (ELit 0x3333333333333333))
                    13 (ELit 0x0f0f0f0f0f0f0f0f)) 14 (ELit 0x0101010101010101)) 15 (ELit 0x7fffc00000000000)) R6).
    { unfold R6. do 6 (apply regs_ok_set_n; [|lia|rewrite edenot_lit; reflexivity]). exact (co_regs _ _ _ _ _ _ _ _ _ _ _ HC). }
    intros r. rewrite <- (HR6 r). unfold R6.
    replace (Z_to_bv 5 (Z.of_nat 10)) with (10%bv : bv 5) by (apply bv_eq; reflexivity).
    replace (Z_to_bv 5 (Z.of_nat 11)) with (11%bv : bv 5) by (apply bv_eq; reflexivity).
    replace (Z_to_bv 5 (Z.of_nat 12)) with (12%bv : bv 5) by (apply bv_eq; reflexivity).
    replace (Z_to_bv 5 (Z.of_nat 13)) with (13%bv : bv 5) by (apply bv_eq; reflexivity).
    replace (Z_to_bv 5 (Z.of_nat 14)) with (14%bv : bv 5) by (apply bv_eq; reflexivity).
    replace (Z_to_bv 5 (Z.of_nat 15)) with (15%bv : bv 5) by (apply bv_eq; reflexivity).
    Ltac onereg r n P :=
      destruct (bv_eqb r n) eqn:Q;
      [ unfold bv_eqb in Q; apply Z.eqb_eq in Q; apply bv_eq in Q; subst r; rewrite P;
        repeat first [rewrite getr_same by reg_neq_tac | rewrite getr_other by reg_neq_tac]; reflexivity
      | assert (r <> n) by (intros ->; rewrite bv_eqb_refl in Q; discriminate); clear Q ].
    onereg r (15%bv : bv 5) P15. onereg r (14%bv : bv 5) P14. onereg r (13%bv : bv 5) P13.
    onereg r (12%bv : bv 5) P12. onereg r (11%bv : bv 5) P11. onereg r (10%bv : bv 5) P10.
    rewrite !getr_other by assumption. apply Pag; assumption.
  Qed.
End NodesMaxVA.
