From OssFuzzTheorems.libpcap.fuzz_pcap Require Statements.
From OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib Require Theorems.

Theorem ubsan_agrees_holds : OssFuzzTheorems.libpcap.fuzz_pcap.Statements.ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.libpcap.fuzz_pcap.lib.Theorems.strong_universal_error_free_fuzz_pcap_ubsan. Qed.
