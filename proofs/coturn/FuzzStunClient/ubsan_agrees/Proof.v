From OssFuzzTheorems.coturn.FuzzStunClient Require Statements.
From OssFuzzTheorems.Proofs.coturn.FuzzStunClient.lib Require Theorems.

Theorem ubsan_agrees_holds : OssFuzzTheorems.coturn.FuzzStunClient.Statements.ubsan_agrees.
Proof. exact OssFuzzTheorems.Proofs.coturn.FuzzStunClient.lib.Theorems.strong_universal_error_free_fuzzstunclient_ubsan. Qed.
