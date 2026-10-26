From OssFuzzTheorems.boost_beast.http_request Require Statements.
From OssFuzzTheorems.Proofs.boost_beast.http_request.lib Require Theorems.

Theorem ubsan_halts_holds : OssFuzzTheorems.boost_beast.http_request.Statements.ubsan_halts.
Proof. exact OssFuzzTheorems.Proofs.boost_beast.http_request.lib.Theorems.halts_allowed_boost_beast_halts_ubsan. Qed.
