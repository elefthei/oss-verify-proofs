(* [comment removed for export] *)

From LinuxProcessSemantics.LinuxProcessSem Require Import MemImageType.
From OssFuzzTheorems.libpcap.fuzz_pcap.images Require Export Plain.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

(* [comment removed for export] *)
Definition ssegs : list Segment := Plain.M.loaded_segments.
