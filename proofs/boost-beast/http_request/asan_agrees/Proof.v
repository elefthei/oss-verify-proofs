From OssFuzzTheorems.boost_beast.http_request Require Statements.
From OssFuzzTheorems.Proofs.boost_beast.http_request.lib Require Theorems.

Theorem asan_agrees_holds : OssFuzzTheorems.boost_beast.http_request.Statements.asan_agrees.
Proof. exact OssFuzzTheorems.Proofs.boost_beast.http_request.lib.Theorems.strong_universal_error_free_boost_beast_asan. Qed.
