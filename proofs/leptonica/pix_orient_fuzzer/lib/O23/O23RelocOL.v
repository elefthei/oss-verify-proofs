(* Machine-generated data computed from the task's compiled program image (decoder-built tables and encoded data blocks); may contain fragments of third-party object code - see NOTICE. No Anthropic licence header applies to this file. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith List.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib.Common.Reloc Require Import Reloc RelocCode RelocSites RelocImg CanonCodeOL CanonSitesOL CanonImgOL.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib.Common.Leptonica Require Import RelocLept.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib.O23 Require Import O23Reloc.
From OssFuzzTheorems.Proofs.leptonica.pix_orient_fuzzer.lib Require KReplay.
Ltac2 kr_t_O23RelocOL () := "K47Corelib4Init5Logic2eq01C6ARocqVerifyHarness?AgentSubmission6Common5Reloc5Reloc7rl_segsC6ARocqVerifyHarness?AgentSubmission6Common5Reloc5Reloc8rl_deltaC6ARocqVerifyHarness?AgentSubmission6Common5Reloc9RelocCode:code_checkI47Corelib4Init5Logic2eq00I47Corelib4Init9Datatypes4bool00K47Corelib4Init9Datatypes4bool01C5ARocqVerifyHarness?AgentSubmission3O238O23Reloc9o23_relocC6ARocqVerifyHarness?AgentSubmission6Common5Reloc;CanonCodeOL=canon_code_OLC6ARocqVerifyHarness?AgentSubmission6Common5Reloc:RelocSites;sites_checkC6ARocqVerifyHarness?AgentSubmission6Common5Reloc<CanonSitesOL>canon_sites_OLC6ARocqVerifyHarness?AgentSubmission6Common9Leptonica9RelocLept?wr_readable_chkC6ARocqVerifyHarness?AgentSubmission6Common9Leptonica9RelocLept:strs_checkC6ARocqVerifyHarness?AgentSubmission6Common5Reloc:CanonImgOL=canon_strs_OLC6ARocqVerifyHarness?AgentSubmission6Common5Reloc8RelocImg;cells_checkC6ARocqVerifyHarness?AgentSubmission6Common5Reloc:CanonImgOL>canon_cells_OLC6ARocqVerifyHarness?AgentSubmission6Common9Leptonica9RelocLept;spans_checkC6ARocqVerifyHarness?AgentSubmission6Common5Reloc:CanonImgOL>canon_spans_OL".

Lemma o23_code_ol_ok : code_check (@rl_segs o23_reloc) (@rl_delta o23_reloc) canon_code_OL = true.
Proof.
ltac2:(KReplay.run1 (kr_t_O23RelocOL ()) [] "p;2p;1p;3g0000j24Tg000Jj13Tg001Ij10Tg002Ij31Tg003Oj32Tg003iR0g004IR1'4g004iR2#3%02g005d31=201do"). Qed.
Definition o23_code_ol : RelocCodeOL o23_reloc := {| rl_code_ol_ok := o23_code_ol_ok |}.

Lemma o23_sites_ol_ok : @sites_check o23_reloc canon_sites_OL = true.
Proof.
ltac2:(KReplay.run1 (kr_t_O23RelocOL ()) [] "p;2p;3g0000j22Tg006oj21Tg003Oj30Tg003iR0g004IR1'2g004ig0087'1=001do"). Qed.
Definition o23_sites_ol : RelocSitesOL o23_reloc := {| rl_sites_ol_ok := o23_sites_ol_ok |}.

Lemma o23_lept_ok : wr_readable_chk (@rl_segs o23_reloc) = true.
Proof.
ltac2:(KReplay.run1 (kr_t_O23RelocOL ()) [] "p;2p;1p;3g0000j23Tg000Jj12Tg009Dj10Tg003Oj31Tg003iR0g004IR1'3g004i#2#0=101do"). Qed.
Definition o23_lept : RelocLept o23_reloc := {| rl_wr_readable_ok := o23_lept_ok; rl_pages_ok := eq_refl; rl_clr_extra := nil |}.

Lemma o23_strs_ol_ok : @strs_check o23_reloc canon_strs_OL = true.
Proof.
ltac2:(KReplay.run1 (kr_t_O23RelocOL ()) [] "p;2p;3g0000j22Tg00:Sj21Tg003Oj30Tg003iR0g004IR1'2g004ig00;]'1=001do"). Qed.
Lemma o23_cells_ol_ok : @cells_check o23_reloc canon_cells_OL = true.
Proof.
ltac2:(KReplay.run1 (kr_t_O23RelocOL ()) [] "p;2p;3g0000j22Tg00<gj21Tg003Oj30Tg003iR0g004IR1'2g004ig00=m'1=001do"). Qed.
Lemma o23_spans_ol_ok : @RelocLept.spans_check o23_reloc canon_spans_OL = true.
Proof.
ltac2:(KReplay.run1 (kr_t_O23RelocOL ()) [] "p;2p;3g0000j22Tg00?8j21Tg003Oj30Tg003iR0g004IR1'2g004ig00@C'1=001do"). Qed.
Definition o23_img_ol : RelocImgOL o23_reloc := {| rl_strs_ol_ok := o23_strs_ol_ok; rl_cells_ol_ok := o23_cells_ol_ok; rl_spans_ol_ok := o23_spans_ol_ok |}.
