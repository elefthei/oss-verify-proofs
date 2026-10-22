(* [comment removed for export] *)

From LinuxProcessSemantics.LinuxProcessSem Require Import MemImageType.
From OssFuzzTheorems.libpcap.fuzz_pcap.images Require Export Ubsan.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Definition usegs : list Segment := Ubsan.M.loaded_segments.
