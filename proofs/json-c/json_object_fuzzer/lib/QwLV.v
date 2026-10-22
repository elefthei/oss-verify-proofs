(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)

From Stdlib Require Import ZArith NArith List Bool Lia.
From stdpp Require Import gmap.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Local Set Keyed Unification.

From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require QCiC.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import QCiC. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require QKyU.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import QKyU. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require Qgp5.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import Qgp5. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require Qdyg.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import Qdyg. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require QPa2.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import QPa2. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require QhFR.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import QhFR. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require Q9dL.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import Q9dL. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require Qsc9.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import Qsc9. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require QcxL.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import QcxL. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require Qt4u.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import Qt4u. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require QOb0.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import QOb0. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require QchP.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import QchP. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require Qpj5.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import Qpj5. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require Q4l7.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import Q4l7. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require QAPX.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import QAPX. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require QV5O.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import QV5O. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require Q3DL.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import Q3DL. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require Qp7R.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import Qp7R. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require QTxS.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import QTxS. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require QjEq.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import QjEq. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require QfGI.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import QfGI. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require QMXW.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import QMXW. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require QHMY.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import QHMY. From OssFuzzTheorems.Proofs.json_c.json_object_fuzzer.lib Require Qecj.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache. Import Qecj.
Import ListNotations.
Local Open Scope Z_scope.
Local Ltac Z.euclidean_division_equations_cleanup ::= idtac.

Section SLOT.
Variable T : Type.
Variable Post : mled -> T -> Prop.

End SLOT.
