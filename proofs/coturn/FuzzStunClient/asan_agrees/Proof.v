From OssFuzzTheorems.coturn.FuzzStunClient Require Statements.
From OssFuzzTheorems.Proofs.coturn.FuzzStunClient.lib Require Theorems.

Theorem asan_agrees_holds : OssFuzzTheorems.coturn.FuzzStunClient.Statements.asan_agrees.
Proof. exact OssFuzzTheorems.Proofs.coturn.FuzzStunClient.lib.Theorems.strong_universal_error_free_fuzzstunclient_asan. Qed.
