(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From stdpp Require Import gmap.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib Require Import PropExec ShapeAlg MmapSim.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Lib Require Import MState Mem Cells Frame Step Arr Tac Bytes SysStep.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Ym Require Import Asanljo Asan12c Asanqj4.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zf Require Import ImgA.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Yr Require Import AIface AState.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zq Require LayoutPA AInv AFreeR AFreeRC.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zq Require AFreeRE.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zq Require ACoreF2 AFreeKS.
Import OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zq.LayoutPA OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zq.AInv OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zq.AFreeR OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zq.AFreeRC OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zq.AFreeRE.AFreeRL OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zq.ACoreF2 OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Zq.AFreeKS.
From OssFuzzTheorems.Proofs.varnish.esi_parse_fuzzer.lib.Lib Require Import Ceiling.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope bv_scope.
Local Open Scope Z_scope.

Section KSok.
Context {Clg : Ceiling}.
  Theorem step_sec_ok : step_sec_stmt.
  Proof.
    unfold step_sec_stmt. intros until n. intros C1 C2 C3 C4 C5 VB CU NTH KM KD.
    eapply (step_sec rac spd gp s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 F fc A0 m0 md0 p n0 stkobj lo hi TS xs2 xs5 C1 C2 C3 C4 C5 VB); eassumption.
  Qed.
End KSok.
