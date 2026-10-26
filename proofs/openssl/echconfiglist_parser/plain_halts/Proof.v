From OssFuzzTheorems.openssl.echconfiglist_parser Require Statements.
From OssFuzzTheorems.Proofs.openssl.echconfiglist_parser.lib Require Theorems.

Theorem plain_halts_holds : OssFuzzTheorems.openssl.echconfiglist_parser.Statements.plain_halts.
Proof. exact OssFuzzTheorems.Proofs.openssl.echconfiglist_parser.lib.Theorems.halts_allowed_openssl_echconfiglist_parser_halts_plain. Qed.
