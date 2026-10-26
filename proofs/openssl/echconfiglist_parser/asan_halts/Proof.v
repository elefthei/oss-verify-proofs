From OssFuzzTheorems.openssl.echconfiglist_parser Require Statements.
From OssFuzzTheorems.Proofs.openssl.echconfiglist_parser.lib Require Theorems.

Theorem asan_halts_holds : OssFuzzTheorems.openssl.echconfiglist_parser.Statements.asan_halts.
Proof. exact OssFuzzTheorems.Proofs.openssl.echconfiglist_parser.lib.Theorems.halts_allowed_openssl_echconfiglist_parser_halts_asan. Qed.
