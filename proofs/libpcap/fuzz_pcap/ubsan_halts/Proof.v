From OssFuzzTheorems.libpcap.fuzz_pcap Require Statements.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib Require Theorems.

Theorem ubsan_halts_holds : OssFuzzTheorems.libpcap.fuzz_pcap.Statements.ubsan_halts.
Proof. exact OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.Theorems.halts_allowed_libpcap_fuzz_pcap_halts_ubsan. Qed.
