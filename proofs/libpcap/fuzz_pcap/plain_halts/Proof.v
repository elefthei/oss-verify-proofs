From OssFuzzTheorems.libpcap.fuzz_pcap Require Statements.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib Require Theorems.

Theorem plain_halts_holds : OssFuzzTheorems.libpcap.fuzz_pcap.Statements.plain_halts.
Proof. exact OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.Theorems.halts_allowed_libpcap_fuzz_pcap_halts_plain. Qed.
