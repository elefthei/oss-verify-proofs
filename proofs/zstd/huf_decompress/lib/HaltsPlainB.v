(* Machine-generated data computed from the task's compiled program image (decoder-built tables and encoded data blocks); may contain fragments of third-party object code - see NOTICE. No Anthropic licence header applies to this file. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List.
From LinuxProcessSemantics.EquivalenceDefinition Require Import Equivalence MustExit HaltsAllowed.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib.Lib Require Import ITree Nodes HaltsTreeB.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib Require Import TopLevel TopLevelHaltsB PlainTree.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib.Spec Require Import Prog ProgExits.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib.Plain Require Import PImg.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib.Lib Require Import Cfg.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib Require KReplay.
Ltac2 kr_t_HaltsPlainB () := "I6ARocqVerifyHarness?AgentSubmission3Lib5ITree3Exc3exc00C5ARocqVerifyHarness?AgentSubmission4Spec4Prog4progC5ARocqVerifyHarness?AgentSubmission3Lib5ITree5epostC5ARocqVerifyHarness?AgentSubmission4Spec9ProgExits;prog_texitsC4ARocqVerifyHarness?AgentSubmission>TopLevelHaltsBDhaltsB_from_tree_genC5ARocqVerifyHarness?AgentSubmission5Plain4PImg5psegsC5ARocqVerifyHarness?AgentSubmission5Plain4PImg9p_init_pcC5ARocqVerifyHarness?AgentSubmission5Plain4PImg7p_phdrsC4ELinuxProcessSemantics?LinuxProcessSem5StateBsource_alloc_limitC5ARocqVerifyHarness?AgentSubmission4Spec9ProgExits7EXITS02C4ARocqVerifyHarness?AgentSubmission9PlainTree=plain_tree_okI4ELinuxProcessSemantics?LinuxProcessSem3Run;SpuriousCfg00I47Corelib4Init9Datatypes4unit00C5ARocqVerifyHarness?AgentSubmission5Plain4PImg;PREAD_STAGEI4ELinuxProcessSemantics?LinuxProcessSem>RiscvSemantics=machine_state00I47Corelib4Init5Logic4True00I4ELinuxProcessSemantics?LinuxProcessSem5State9ProcInput00I4ELinuxProcessSemantics?LinuxProcessSem3Run9ExecEntry00c4ARocqVerifyHarness?AgentSubmission;HaltsPlainB<halts_plainBC4ELinuxProcessSemantics?LinuxProcessSem3Run?forced_only_cfg".

Theorem halts_plainB : forall cfg, cfg_le cfg ACFG ->
  halts_allowed_T_scfg_budgets cfg ShippedBudgets.lim_source EXITS02 (mkImage SrcImg.loaded_segments SrcImg.init_pc SrcImg.phdrs).
Proof.
  intros cfg Hle.
  exact (haltsB_from_tree_gen psegs p_init_pc p_phdrs ShippedBudgets.lim_source EXITS02 (Prog.prog psegs PREAD_STAGE)
           (epost (fun (_ : unit) (_ : machine_state) => True)) cfg Hle
           plain_tree_ok (fun inp en => prog_texits psegs PREAD_STAGE inp en)).
Qed.

(* [comment removed for export] *)
Theorem halts_plainB_fo :
  halts_allowed_T_scfg_budgets forced_only_cfg ShippedBudgets.lim_source EXITS02 (mkImage SrcImg.loaded_segments SrcImg.init_pc SrcImg.phdrs).
Proof.
  exact (halts_plainB forced_only_cfg (forced_only_cfg_least ACFG)).
Qed.
