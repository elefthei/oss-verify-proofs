(* Machine-generated data computed from the task's compiled program image (decoder-built tables and encoded data blocks); may contain fragments of third-party object code - see NOTICE. No Anthropic licence header applies to this file. *)
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib Require Ref0Gc. (* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool Permutation.
From stdpp Require Import gmap.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib Require Import HeapCeil HeapSecret.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Lib Require Import Tac Image ZBridge SysStep SFModel ITree Nodes Decode Arr.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.RefU Require Import RSegs. (* [comment removed for export] *)
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Agent Require Import F_malloc_free MallocHINV MallocFacts_A Malloc_iface InitMem F_malloc_top Malloc_ifaceP.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Spec Require Import STree Malloc MallocCtrl Monad Prog.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.RefU Require Import RMallocRep RMallocTree RMallocKit_B RMalloc_iface RMalloc_ifaceP RHeapX MallocMF.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.RefU Require Import RBand.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Agent Require MallocFacts_inv2.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Lib Require Import Nd.
Require Import OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Lib.CDef.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib Require KReplay.
Ltac2 kr_t_MallocMF_floor () := KReplay.lz_vm "##{=C8?OssFuzzTheorems6Proofs:boost_json:fuzz_parse3lib5Agent<MallocBlocks5blockC46Stdlib5Lists4List2InI!s='7Sorting;Permutation!s2/00C!sQ?>!s2-_in!t<7=Forall_f!s,$!uRV4Spec6!uQ%4optrC47Corelib4Init5Logic8eq_ind_rI!sD19Datatypes4list00!tPWRefU=R!tQ%_iface5RHEAP!uDb5strip!t_[:!t_&Rep<ref_reservedI!yUh;AREACH_from00I!w972ex00K!s@+7Numbers7BinNums8positive02!sK=1Z02!uwf5rmrep!|G\@!so%Facts_inv2Bareach_f!s8$proof!vu\=!t'/A8MFACTS_g!|hB?!|h/sym!vC[>!zu0P=r!~u$_inside!|:<6op!~\%I35stdpp4gma!s'%00C!s:/;gmap_lookup!#4gh8blk_slot!~$=prod!tV,9decidable;prod_eq_dec!sD+countable>!sD$!s5+!}sb6r_base!ujnaddr!vaoizeC7!suT8HeapCeil5hceil!~>G1C5!{0&6ZArith6BinInt1Z2le!sB>t!sB<3add!wfb9s_regions!sob7s!zL$s!~_k!}7%ok!#6T-!#;v$7ListDef6!#;y$!#:JW!tA79mf_!tD$s!#<%75proj1!vDb<get_meta_rec!srb4con!sjc7m_avail!smefreed!wPj8mf!yc%!teb5m_mem!y5ksstart_of!#=}9q!zHl8mf_gmeta!sv\9!#>2'9!z+$slo!#3M=pow!w0b:m_last_idx!spb;m_sizeclas!xmc8m_maplen!sncs_group!t^c:get_strideC!#=K:2idK!#=g@1!#=I&!#?d%;from_!s2%!xQ=mulK!#Ii@1K!#BG&9micromega6VarMap1t02I!sD?0!sD6=RingM!s4'7Formula00!t567EnvRing5PExpr!tX8!sI22K!#BrB2C!sk55Tauto8B!tZ&K!}~;1!sb6:Z!uB+=Z!sn$CheckerC!v7<4find!sqAC!sq0_soundK!u/<G!vc'3!sJF5!#4U73and00!y><Amul_nonneg!s,&!w/<3nat02K!xgC5Psatz!sOM7!sOK5!sOK6K!wI@;!uy%!~#$!yn>!|3%2!|3@!|QA3!{=E5!sIE3K!|yL1!#95e<conc!#DQ%'!#5VZ4Prog4ps_m!sh`6ps_brk!#Isjrk_link!#3PC1!#Lqdkind!#Ov'base6!#Oq[!t$/5r_!#:|d;round_up_pg!#@h8or00!#:O;3fs!#?@<7testbi!sG=3sub!t%=sndK!uSa4ghdr!#N8=6modulo!vab:size_!#@Af:!#Go$able!#81E4!sJF8I!z|bmstate00!snc!#3J$!snd5rkind00K!smh3!wvb4apt!#dz,!#`F50!t0ccptr!#aP?1!tN>N!tNeUNIT!sjb2IB!#]<<bool!#dO-!sF82I!~fg!t4C1!#<JC3Op203!#E1;5eKind!ub=unit!#G$7!se%4!zR$1K!sfA1I!#<3_PS!~-%!#<5[:!vq%Tree3mem!#^9F3C4!#;C$7n!sI%1N6!#b^:;N!#b[,!s]3Z!s]=Z!s],!yCcmeta!#kz>1N01I!#E'L0!#Gj@1!#EvM!z`J5!#i~ZB!#i~/_stmt!#ux%!swZ8!sv%MF3HMF!sk[<HeapMF!tc%8hs_!#s][RefU6RHeapX7eh_imgRc!smZ>!uP'_floorG!tb$!#aw$!s8%!#ow$!wPn3mem".
Local Ltac2 zQ s := CDef.cdeft "7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib5AgentcMallocBlocks05block37Corelib4Init9Datatypeskc4list08blk_addr7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib5AgentaMallocTreen53mem7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib4RefUdRMalloc_ifacere5RHEAP7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib4Spec4Proghgb6PState36Stdlib5Lists4Listhl12In46Stdlib6ZArith6BinInt1Zhma2lt7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib4RefUh2RMalloc_iface_stmtho85block7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib4RefUcHeapMF_ifacehtc8hs_RHEAP7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib4RefU8MallocMFiic3HMFho83mem" s.   (* [comment removed for export] *)
Import ListNotations.
Open Scope Z_scope.
Local Ltac Z.euclidean_division_equations_cleanup ::= idtac.

(* [comment removed for export] *)
(* [comment removed for export] *)

Section HCW.
  Context {HCEIL : HeapCeil} {HSEC : HeapSecret}.

Lemma RHEAP_block_floor_proof : ltac2:(zQ "80!k5!m4!mb!r8!hg3!hk7!hm4!ho2>1s$5>2LB@1$1$0>1m$3>1b$0>0@5$4?5HCEIL?4HSEC^4^3^2>0@3$6$0^2^4@2$7+hgg0@1$2^3").
Proof.
  intros s LB m b nd_i1 HIN.
  unfold RMalloc_iface.RHEAP, HINV_from in nd_i1.
  destruct nd_i1 as (st & LB0 & HP & _H & MR & _ & AR).
  pose proof (MallocFacts_inv2.areach_facts_proof st LB0 AR) as MF.
  pose proof (Permutation_in b (Permutation_sym HP) HIN) as IN0.
  destruct (RMalloc_ifaceP.rblock_inside st LB0 m b MF MR IN0) as (r & g & idx & Hr & _ & SL & _ & _ & _ & R4 & _ & _).
  destruct (proj1 (Forall_forall (block_ok st) LB0) (mf_blocks st LB0 MF) b IN0) as [BS _ _].
  destruct BS as (g' & idx' & _ & _ & _ & _ & off & OFF0 & EA & _).
  destruct (mf_slots st LB0 MF (blk_slot b) g idx SL) as (bb & Hm & _ & Esnd & IDX).
  pose proof (mf_gmeta st LB0 MF g bb Hm) as FG. cbv zeta in FG.
  destruct FG as (_ & _ & _ & _ & _ & _ & _ & _ & (r' & _ & _ & B0 & _ & _) & S16 & _).
  rewrite EA, (MallocRep.conc_region' st (blk_slot b) r Hr), Esnd.
  unfold sstart_of. rewrite Hm. cbn [snd option.from_option id]. unfold UNIT in *.
  assert (0 <= get_stride (get_meta_rec (strip st) g) * idx) by (apply Z.mul_nonneg_nonneg; lia).
  first [clear - R4 B0 OFF0 H; lia | lia].
Qed.

(* [comment removed for export] *)
Lemma HMF_block_floor : ltac2:(zQ "90!ht3!m4!mb!ii0!imc!in3!hk7!hm4!ho2>1s$6>2LB@1$1$0>1m$5>1b$0>0@4$3@2$4?5HCEIL?4HSEC^4^3^2>0@3$7$0^2^4@2$8+hgg0@1$2^3").
Proof.
ltac2:(KReplay.run1 (kr_t_MallocMF_floor ()) ["HCW"] "h01Hh13HINh22HRh32LBh42_Hh51bh61mh71sp;1p;2p;4p;5p;3p;6g01\MR0p4p70g001<R1p4p710p8g004nj1;Tg01]^j2:Tg01^cj49Tg005Nj51Tg01`1j14TP1j32Tg00;Bj18Tg00F]j17Tg00K>j26Tg01a8j65Tg00:]j13Tf0R1#3#3p=0g01Sj%;0g01bWp,5HCEILR2p,4HSECR3':f3R4f2R5f1R6C9g00lQP2P3f4R7P4P5D1%45A2057g01V8#0#0#0#0#0#0#8%74'6[P1P2P3f6R3f5R2P7D1%42f7R79202f9f8P7P3P5P1E5W1W4W2P6P1O2n2001000000120000000W0X50W6W3W7o"). Qed.
End HCW.
