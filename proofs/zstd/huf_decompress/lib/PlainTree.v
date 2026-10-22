(* Machine-generated data computed from the task's compiled program image (decoder-built tables and encoded data blocks); may contain fragments of third-party object code - see NOTICE. No Anthropic licence header applies to this file. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List.
From LinuxProcessSemantics.EquivalenceDefinition Require Import Equivalence.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib Require Import TopLevel.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib.Lib Require Import ITree Nodes.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib.Spec Require Import Prog ModelInv ModelOK ImgFacts.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib.Plain Require Import PImg.
Require OssFuzzTheorems.Proofs.zstd.huf_decompress.lib.Plain.PlainClosed.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib Require KReplay.
Ltac2 kr_t_PlainTree () := "K47Corelib7Numbers7BinNums8positive02K47Corelib7Numbers7BinNums1Z02K47Corelib7Numbers7BinNums8positive01C56Stdlib6ZArith6BinInt1Z3powC56Stdlib6ZArith6BinInt1Z2leK4ELinuxProcessSemantics?LinuxProcessSem<MemImageType5Image01C4ELinuxProcessSemantics?LinuxProcessSem3Run;valid_entryC4ELinuxProcessSemantics?LinuxProcessSem3RunBvalid_input_eitherC5ARocqVerifyHarness?AgentSubmission3Lib5Nodes7at_nodeI6ARocqVerifyHarness?AgentSubmission3Lib5ITree3Exc3exc00C5ARocqVerifyHarness?AgentSubmission4Spec4Prog4progC5ARocqVerifyHarness?AgentSubmission3Lib5ITree5epostC4ARocqVerifyHarness?AgentSubmission8TopLevel3ms0C5ARocqVerifyHarness?AgentSubmission3Lib5ITree4implC4ARocqVerifyHarness?AgentSubmission8TopLevel3mo0C5ARocqVerifyHarness?AgentSubmission3Lib5ITreeDleaves_unreachable_mC5ARocqVerifyHarness?AgentSubmission3Lib5ITree5tsafeI47Corelib4Init5Logic3and00C5ARocqVerifyHarness?AgentSubmission5Plain;PlainClosedAplain_impl_closedC5ARocqVerifyHarness?AgentSubmission4Spec7ModelOKEprog_model_ok_plain_LK47Corelib4Init5Logic3and01C4ARocqVerifyHarness?AgentSubmission8TopLevel7tree_okI47Corelib7Numbers7BinNums1Z00K47Corelib7Numbers7BinNums8positive03I4ELinuxProcessSemantics?LinuxProcessSem3Run9ExecEntry00I4ELinuxProcessSemantics?LinuxProcessSem5State9ProcInput00C5ARocqVerifyHarness?AgentSubmission5Plain4PImg5psegsC5ARocqVerifyHarness?AgentSubmission5Plain4PImg9p_init_pcC5ARocqVerifyHarness?AgentSubmission5Plain4PImg7p_phdrsI5ARocqVerifyHarness?AgentSubmission3Lib5Nodes4node00I47Corelib4Init9Datatypes4unit00C5ARocqVerifyHarness?AgentSubmission5Plain4PImg;PREAD_STAGEI4ELinuxProcessSemantics?LinuxProcessSem>RiscvSemantics=machine_state00I47Corelib4Init5Logic4True00C5ARocqVerifyHarness?AgentSubmission3Lib5Nodes5nstepC5ARocqVerifyHarness?AgentSubmission3Lib5Nodes5nsafec4ARocqVerifyHarness?AgentSubmission9PlainTree?plain_tree_ok_LC4ELinuxProcessSemantics?LinuxProcessSem5StateBsource_alloc_limitC5ARocqVerifyHarness?AgentSubmission4Spec8ImgFacts5lim_p".

(* [comment removed for export] *)
Theorem plain_tree_ok_L : forall L, 2^31 <= L ->
  tree_ok psegs p_init_pc p_phdrs L
          (Prog.prog psegs PREAD_STAGE) (epost (fun (_ : unit) (_ : machine_state) => True)).
Proof.
  intros L HL en inp Hen Hinp. split.
  - exact (Plain.PlainClosed.plain_impl_closed en inp Hen Hinp).
  - exact (prog_model_ok_plain_L L PREAD_STAGE en inp HL Hen Hinp).
Qed.

(* [comment removed for export] *)
Theorem plain_tree_ok :
  tree_ok psegs p_init_pc p_phdrs source_alloc_limit
          (Prog.prog psegs PREAD_STAGE) (epost (fun (_ : unit) (_ : machine_state) => True)).
Proof.
ltac2:(KReplay.run1 (kr_t_PlainTree ()) [] "p;2g00KUj20Tg00LSg00MT'0o"). Qed.
