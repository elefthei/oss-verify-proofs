(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From Stdlib Require Import String Ascii ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType StackLayout State Run.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require Import Tac ITree Nodes Decode ImgSrc3.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec Require Import Prelim Monad Fmt StdioCore Stdio PcapPrelim PcapTypes PcapPure Pcap Prog HeapFull.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3 Require GI. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3 Require GIFacts__S3. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3 Require PcapRep. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3 Require Pcap_iface__S3. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3 Require F_fwritex__S3. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3 Require Ifaces_heap__S3. From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3 Require F_printf_core__S3. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.GI OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.GIFacts__S3.Ifaces OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.PcapRep OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.Pcap_iface__S3.Pcap_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.Pcap_iface__S3.Fuzz_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.F_fwritex__S3.Stdio_iface OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.Ifaces_heap__S3.Ifaces_heap OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.Ifaces_heap__S3.Stdio_final OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.F_printf_core__S3.Stdio_glue_pf.
From OssFuzzTheorems.libpcap.fuzz_pcap.images Require Import Plain.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require Import Ceiling.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require Import LiaPin.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
(* [comment removed for export] *)
Local Ltac lia_e2w2_base := first [ zify_prune; zify_noeuclid; Z.euclidean_division_equations_cleanup; xlia zchecker
                                 | zify_prune; Zify.zify; xlia zchecker | Zify.zify; xlia zchecker ].
Local Ltac ceil_mentioned := lazymatch goal with | |- context [@alloc_ceiling _] => idtac | _ : context [@alloc_ceiling _] |- _ => idtac end.
(* [comment removed for export] *)
Local Ltac lia ::= clear_unpinned; try (ceil_ok; ceil_mentioned; ceil_facts); pinned_lia_core.
Import ListNotations.
Open Scope Z_scope.

(* [comment removed for export] *)
Section WithCeil.
Context {CEILV : CEIL}.
Theorem KS_vprintf_d : OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.GIFacts__S3.Ifaces.vprintf_d_stmt KS.
Proof using Type. pin_using tt. exact (vprintf_d_proof KS KST_KS KS_heap_frame_law). Qed.

(* [comment removed for export] *)
Theorem KS_eprintf_usage : OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.Startup_B__S3.Ifaces47.eprintf_s_stmt47 KS FMT_USAGE pieces_usage.
Proof using Type. pin_using tt. exact (eprintf_usage_proof KS KST_KS KS_heap_frame_law). Qed.
Theorem KS_eprintf_cannot_open : OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.Startup_B__S3.Ifaces47.eprintf_s_stmt47 KS FMT_CANNOT_OPEN pieces_cannot_open.
Proof using Type. pin_using tt. exact (eprintf_cannot_open_proof KS KST_KS KS_heap_frame_law). Qed.
Theorem KS_eprintf_read_error : OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.Startup_B__S3.Ifaces47.eprintf_s_stmt47 KS FMT_READ_ERROR pieces_read_error.
Proof using Type. pin_using tt. exact (eprintf_read_error_proof KS KST_KS KS_heap_frame_law). Qed.
Theorem KS_eprintf_too_big : OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.GIFacts__S3.Ifaces.eprintf_i_stmt KS FMT_TOO_BIG 0x4000000 pieces_too_big.
Proof using Type. pin_using tt. exact (eprintf_too_big_proof KS KST_KS KS_heap_frame_law). Qed.

(* [comment removed for export] *)
Theorem KS_printf_failed_remove : printf_d_stmt_o KS FMT_FAILED_REMOVE pieces_failed_remove.
Proof using Type. pin_using tt. exact (printf_failed_remove_proof KS KST_KS KS_heap_frame_law). Qed.
Theorem KS_printf_failed_open : printf_d_stmt_o KS FMT_FAILED_OPEN pieces_failed_open.
Proof using Type. pin_using tt. exact (printf_failed_open_proof KS KST_KS KS_heap_frame_law). Qed.

(* [comment removed for export] *)
Theorem KS_fprintf_packet_length : fprintf_dd_stmt_o full_ops KS FMT_PACKET_LENGTH pieces_packet_length.
Proof using Type. pin_using tt. exact (fprintf_packet_length_proof full_ops KS KST_KS KS_heap_frame_law EQB_full). Qed.
Theorem KS_fprintf_couldnt_open : fprintf_s_stmt_o full_ops KS FMT_COULDNT_OPEN pieces_couldnt_open.
Proof using Type. pin_using tt. exact (fprintf_couldnt_open_proof full_ops KS KST_KS KS_heap_frame_law EQB_full). Qed.

End WithCeil.

(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib Require ImgTgtUbsan.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.U3 Require Ifaces_heap.
From OssFuzzTheorems.libpcap.fuzz_pcap.images Require Ubsan.
Module TwB.
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
Import Stdlib.Strings.String Stdlib.Strings.Ascii Stdlib.ZArith.ZArith Stdlib.NArith.NArith Stdlib.Lists.List Stdlib.micromega.Lia Stdlib.Bool.Bool.
Import LinuxProcessSemantics.LinuxProcessSem.BvBase LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics LinuxProcessSemantics.LinuxProcessSem.MemImageType LinuxProcessSemantics.LinuxProcessSem.StackLayout LinuxProcessSemantics.LinuxProcessSem.State LinuxProcessSemantics.LinuxProcessSem.Run.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Tac OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.ITree OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Nodes OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Decode OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.ImgTgtUbsan.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.Prelim OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.Monad OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.Fmt OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.StdioCore OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.Stdio OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.PcapPrelim OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.PcapTypes OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.PcapPure OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.Pcap OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.Prog OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Spec.HeapFull.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.GI.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.GIFacts__S3.Ifaces.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.PcapRep.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.Pcap_iface__S3.Pcap_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.Pcap_iface__S3.Fuzz_iface.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.F_fwritex__S3.Stdio_iface.TwB. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.U3.Ifaces_heap. Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.Ifaces_heap__S3.Stdio_final.TwB OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.F_printf_core__S3.Stdio_glue_pf.TwB.
Import OssFuzzTheorems.libpcap.fuzz_pcap.images.Ubsan.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.Ceiling.
Import OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.Lib.LiaPin.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
(* [comment removed for export] *)
Local Ltac lia_e2w2_base := first [ zify_prune; zify_noeuclid; Z.euclidean_division_equations_cleanup; xlia zchecker
                                 | zify_prune; Zify.zify; xlia zchecker | Zify.zify; xlia zchecker ].
Local Ltac ceil_mentioned := lazymatch goal with | |- context [@alloc_ceiling _] => idtac | _ : context [@alloc_ceiling _] |- _ => idtac end.
(* [comment removed for export] *)
Local Ltac lia ::= clear_unpinned; try (ceil_ok; ceil_mentioned; ceil_facts); pinned_lia_core.
Import ListNotations.
Open Scope Z_scope.

(* [comment removed for export] *)
Section WithCeil.
Context {CEILV : CEIL}.
Theorem KS_vprintf_d : OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.GIFacts__S3.Ifaces.TwB.vprintf_d_stmt KS.
Proof using Type. pin_using tt. exact (vprintf_d_proof KS KST_KS KS_heap_frame_law). Qed.

(* [comment removed for export] *)
Theorem KS_eprintf_usage : OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.Startup_B__S3.Ifaces47.TwB.eprintf_s_stmt47 KS FMT_USAGE pieces_usage.
Proof using Type. pin_using tt. exact (eprintf_usage_proof KS KST_KS KS_heap_frame_law). Qed.
Theorem KS_eprintf_cannot_open : OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.Startup_B__S3.Ifaces47.TwB.eprintf_s_stmt47 KS FMT_CANNOT_OPEN pieces_cannot_open.
Proof using Type. pin_using tt. exact (eprintf_cannot_open_proof KS KST_KS KS_heap_frame_law). Qed.
Theorem KS_eprintf_read_error : OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.Startup_B__S3.Ifaces47.TwB.eprintf_s_stmt47 KS FMT_READ_ERROR pieces_read_error.
Proof using Type. pin_using tt. exact (eprintf_read_error_proof KS KST_KS KS_heap_frame_law). Qed.
Theorem KS_eprintf_too_big : OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.E2.S3.GIFacts__S3.Ifaces.TwB.eprintf_i_stmt KS FMT_TOO_BIG 0x4000000 pieces_too_big.
Proof using Type. pin_using tt. exact (eprintf_too_big_proof KS KST_KS KS_heap_frame_law). Qed.

(* [comment removed for export] *)
Theorem KS_printf_failed_remove : printf_d_stmt_o KS FMT_FAILED_REMOVE pieces_failed_remove.
Proof using Type. pin_using tt. exact (printf_failed_remove_proof KS KST_KS KS_heap_frame_law). Qed.
Theorem KS_printf_failed_open : printf_d_stmt_o KS FMT_FAILED_OPEN pieces_failed_open.
Proof using Type. pin_using tt. exact (printf_failed_open_proof KS KST_KS KS_heap_frame_law). Qed.

(* [comment removed for export] *)
Theorem KS_fprintf_packet_length : fprintf_dd_stmt_o full_ops KS FMT_PACKET_LENGTH pieces_packet_length.
Proof using Type. pin_using tt. exact (fprintf_packet_length_proof full_ops KS KST_KS KS_heap_frame_law EQB_full). Qed.
Theorem KS_fprintf_couldnt_open : fprintf_s_stmt_o full_ops KS FMT_COULDNT_OPEN pieces_couldnt_open.
Proof using Type. pin_using tt. exact (fprintf_couldnt_open_proof full_ops KS KST_KS KS_heap_frame_law EQB_full). Qed.

End WithCeil.
End TwB.
