(* Machine-generated data computed from the task's compiled program image (decoder-built tables and encoded data blocks); may contain fragments of third-party object code - see NOTICE. No Anthropic licence header applies to this file. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib.Spec Require Import FseNCount FuzzProducer HufPure_FseDecomp HufPure_HufX1 HufPure_HufX2.
From stdpp Require Import gmap.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib.Lib Require Import Tac Arr Bytes ZBridge Walk RunConst Image.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib.Spec Require Import STree AsanCtrl AsanEmbed.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib.LibA Require Import ExecF Shadow StepF.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib.AsanW Require Import AImg RtCells AProto ABase AMalloc_iface AProg_kit AHarness_iface.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib.AsanW Require Import AH_huf_iface AF_huf_dec_iface AF_huf_fa_iface AF_huf_z4s_iface.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib.AsanW Require Import AF_huf_z4s3_iface AF_huf_dec4x2 AF_huf_z4sf.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib.AsanW Require AF_huf_z4s31 AF_huf_z4s32b AF_huf_z4s33b AF_huf_z4s34b AF_huf_afa6.
From OssFuzzTheorems.Proofs.zstd.huf_decompress.lib Require KReplay.
Ltac2 kr_t_AF_huf_dec4x2c () := "I5ARocqVerifyHarness?AgentSubmission5AsanW=AMalloc_iface<AMallocIface00C5ARocqVerifyHarness?AgentSubmission5AsanW<AF_huf_z4s31;z4s31_proofC5ARocqVerifyHarness?AgentSubmission5AsanW=AF_huf_z4s32b;z4s32_proofC5ARocqVerifyHarness?AgentSubmission5AsanW=AF_huf_z4s33b;z4s33_proofC5ARocqVerifyHarness?AgentSubmission5AsanW=AF_huf_z4s34b;z4s34_proofC5ARocqVerifyHarness?AgentSubmission5AsanW;AF_huf_z4sf>z4_slow_proofAC5ARocqVerifyHarness?AgentSubmission5AsanW;AF_huf_afa6@fast_args_proofAC5ARocqVerifyHarness?AgentSubmission5AsanW=AF_huf_dec4x2>dec_4x2_proofAI5ARocqVerifyHarness?AgentSubmission5AsanW5ABase7alayout00C5ARocqVerifyHarness?AgentSubmission4LibA5ExecF9footprint".
Import ListNotations.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Section CANSEC1. Context {rc : runConstT}.

Theorem dec_4x2_closedA : forall (AI : AMallocIface) (rng_fs : alayout -> footprint -> Prop),
  dec4_int_stmtA AI rng_fs x2_tabA AHUF_DX2_4X.
Proof.
ltac2:(KReplay.run1 (kr_t_AF_huf_dec4x2c ()) ["CANSEC1"] "h02AIh16rng_fsp;1p;5g0000j17Tg0017j16Tg002:j10Tg003>j11Tg004Bj15Tg005Fj52Tg006Kj13Tg007Rj54Tp,2rcR0#7g008Yg009Sp-0[[P0f1f0P0%60%00%10%50D2%30D4W1W0o"). Qed.

End CANSEC1.
