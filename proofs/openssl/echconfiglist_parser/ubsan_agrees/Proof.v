From OssFuzzTheorems.openssl.echconfiglist_parser Require Statements.
From OssFuzzTheorems.Proofs.openssl.echconfiglist_parser.lib Require Theorems.

Theorem ubsan_agrees_holds : OssFuzzTheorems.openssl.echconfiglist_parser.Statements.ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.openssl.echconfiglist_parser.lib.Theorems.strong_universal_error_free_echconfiglist_parser_ubsan. Qed.
