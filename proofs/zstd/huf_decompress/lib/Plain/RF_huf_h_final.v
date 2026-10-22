(* Machine-generated data computed from the task's compiled program image (decoder-built tables and encoded data blocks); may contain fragments of third-party object code - see NOTICE. No Anthropic licence header applies to this file. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib.Lib Require Import RunConst.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib.Plain Require Import PImg Harness_iface RF_huf_iface RF_huf_h_iface RF_huf_h_asm.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib.Plain Require Import RF_huf_x1t RF_huf_x2t RF_huf_dec1x RF_huf_dec4x.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib.Plain Require Import RunDraw.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib Require KReplay.
Ltac2 kr_t_RF_huf_h_final () := "C5ARocqVerifyHarness?AgentSubmission5Plain<RF_huf_dec1xAhuf_dec_1x_closedC5ARocqVerifyHarness?AgentSubmission5Plain<RF_huf_dec4xAhuf_dec_4x_closedC5ARocqVerifyHarness?AgentSubmission5Plain<RF_huf_h_asm?fuzz_one_closedC5ARocqVerifyHarness?AgentSubmission5Plain<RF_huf_iface9huf_dt_okC5ARocqVerifyHarness?AgentSubmission5Plain:RF_huf_x1t@huf_rdt_x1_proofC5ARocqVerifyHarness?AgentSubmission5Plain:RF_huf_x2t@huf_rdt_x2_proof".

Section CANSEC1. Context {rc : runConstT}.
Theorem fuzz_one_final : fuzz_one_stmt.
Proof.
ltac2:(KReplay.run1 (kr_t_RF_huf_h_final ()) ["CANSEC1"] "p;1p;6g0000j12Tg0019j11Tg002Bj60Tp,2rcR0g003Ig004Jg005P%20%10E0o"). Qed.
End CANSEC1.
