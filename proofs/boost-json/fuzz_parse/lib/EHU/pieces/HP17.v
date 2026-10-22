(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.EH Require Import XAxSymExec3 XSegRun XSegAuto EhMatch.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.EHU Require Import EhX_ubsan EhCut EhPiece EhPieceP.
Require Import OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Lib.CDef.
Local Ltac2 zQ s := CDef.cdeft "8fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3EHU5EhCut3CUT04site37Corelib7Numbers7BinNumsk61Z37Corelib4Init9Datatypesm34consm33nil06mkSite37Corelib4Init7Decimalp02D09fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3EHU6pieces4HP179P2c_5b828qb2PHqb2STm34boolm35falsem33natm34prodm34truep02D8p03Nil37Corelib4Init5Logichif2eq37Corelib4Init3Nathk9bof_num_uint37Corelib4Init6NumberhmabUIntDecimal8fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2EHbXAxSymExec33AX2hoe4expr8fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3EHU7EhPiece5PIECEhtbbpiece_check8fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3EHU8EhPieceP6PIECEPiieacont_pieceiie8shape_ok9fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3EHU6pieces4HP179P2c_5d648ioe2PHioe2ST9fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3EHU6pieces4HP179P2c_5d67ciu62PHiu62ST9fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3EHU6pieces4HP179P2c_5d6b0jje2PHjje2ST9fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3EHU6pieces4HP179P2c_5d6e4jp62PHjp62ST9fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3EHU6pieces4HP179P2c_5d718jue2PHjue2ST9fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3EHU6pieces4HP179P2c_5d74ckk62PHkk62ST9fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3EHU6pieces4HP179P2c_5d780kpe2PHkpe2ST9fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3EHU6pieces4HP179P2c_5ddc8kv62PHkv62ST9fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3EHU6pieces4HP179P2c_5de18lke2PHlke2ST" s.
Import ListNotations. Import AX2. Import SR. Import SA. Import CUT. Import MATCH. Import PIECE. Import PIECEP.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Open Scope Z_scope.
(* [comment removed for export] *)

Module P2c_5b828.
(* [comment removed for export] *)
Definition ST : ltac2:(zQ "10!k0$0") := ltac2:(zQ "40!lf!nb!o2!o8@4$3+lrnrc+k0@3$1$0-h0@3$1$0-h8@3$1$0-i0@3$1$0-i8@3$1$0-j0@3$1$0-j8@3$1$0-k0@1$2$0Z").
Definition PH : bool := true.
(* [comment removed for export] *)
Lemma chk : ltac2:(zQ "h20!q6!v7!vc!hg1!hg8!hh0!o2!hh6!hhd!hi4!hi9!hk3!hlb!hnf!ht3!ihf!in4!io2@3$b$3@2$f@5$h0$1$4$2@1$c@1$d@1$9@1$0@1$0@1$0$a@1$6@2$7$5$e@2$h1$1$2$8").
Proof. vm_cast_no_check (@eq_refl bool true). Qed.   (* [comment removed for export] *)
End P2c_5b828.

Module P2c_5d648.
(* [comment removed for export] *)
Definition ST : ltac2:(zQ "10!k0$0") := ltac2:(zQ "40!lf!nb!o2!o8@4$3+ltltc+l0@3$1$0-h0@3$1$0-h8@3$1$0-i0@3$1$0-i8@3$1$0-j0@3$1$0-j8@3$1$0-k0@3$1$0-k8@1$2$0Z").
Definition PH : bool := true.
(* [comment removed for export] *)
Lemma chk : ltac2:(zQ "h20!q6!ita!iu0!hg1!hg8!hh0!o2!hh6!hhd!hi4!hi9!hk3!hlb!hnf!ht3!ihf!in4!io2@3$b$3@2$f@5$h0$1$4$2@1$c@1$d@1$9@1$0@1$0@1$0$a@1$6@2$7$5$e@2$h1$1$2$8").
Proof. vm_cast_no_check (@eq_refl bool true). Qed.   (* [comment removed for export] *)
End P2c_5d648.

Module P2c_5d67c.
(* [comment removed for export] *)
Definition ST : ltac2:(zQ "10!k0$0") := ltac2:(zQ "40!lf!nb!o2!o8@4$3+ltmh0+l0@3$1$0-h0@3$1$0-h8@3$1$0-i0@3$1$0-i8@3$1$0-j0@3$1$0-j8@3$1$0-k0@3$1$0-k8@1$2$0Z").
Definition PH : bool := true.
(* [comment removed for export] *)
Lemma chk : ltac2:(zQ "h20!q6!jj2!jj8!hg1!hg8!hh0!o2!hh6!hhd!hi4!hi9!hk3!hlb!hnf!ht3!ihf!in4!io2@3$b$3@2$f@5$h0$1$4$2@1$c@1$d@1$9@1$0@1$0@1$0$a@1$6@2$7$5$e@2$h1$1$2$8").
Proof. vm_cast_no_check (@eq_refl bool true). Qed.   (* [comment removed for export] *)
End P2c_5d67c.

Module P2c_5d6b0.
(* [comment removed for export] *)
Definition ST : ltac2:(zQ "10!k0$0") := ltac2:(zQ "40!lf!nb!o2!o8@4$3+ltmk4+l0@3$1$0-h0@3$1$0-h8@3$1$0-i0@3$1$0-i8@3$1$0-j0@3$1$0-j8@3$1$0-k0@3$1$0-k8@1$2$0Z").
Definition PH : bool := true.
(* [comment removed for export] *)
Lemma chk : ltac2:(zQ "h20!q6!joa!jp0!hg1!hg8!hh0!o2!hh6!hhd!hi4!hi9!hk3!hlb!hnf!ht3!ihf!in4!io2@3$b$3@2$f@5$h0$1$4$2@1$c@1$d@1$9@1$0@1$0@1$0$a@1$6@2$7$5$e@2$h1$1$2$8").
Proof. vm_cast_no_check (@eq_refl bool true). Qed.   (* [comment removed for export] *)
End P2c_5d6b0.

Module P2c_5d6e4.
(* [comment removed for export] *)
Definition ST : ltac2:(zQ "10!k0$0") := ltac2:(zQ "40!lf!nb!o2!o8@4$3+ltmn8+l0@3$1$0-h0@3$1$0-h8@3$1$0-i0@3$1$0-i8@3$1$0-j0@3$1$0-j8@3$1$0-k0@3$1$0-k8@1$2$0Z").
Definition PH : bool := true.
(* [comment removed for export] *)
Lemma chk : ltac2:(zQ "h20!q6!ju2!ju8!hg1!hg8!hh0!o2!hh6!hhd!hi4!hi9!hk3!hlb!hnf!ht3!ihf!in4!io2@3$b$3@2$f@5$h0$1$4$2@1$c@1$d@1$9@1$0@1$0@1$0$a@1$6@2$7$5$e@2$h1$1$2$8").
Proof. vm_cast_no_check (@eq_refl bool true). Qed.   (* [comment removed for export] *)
End P2c_5d6e4.

Module P2c_5d718.
(* [comment removed for export] *)
Definition ST : ltac2:(zQ "10!k0$0") := ltac2:(zQ "40!lf!nb!o2!o8@4$3+ltmqc+l0@3$1$0-h0@3$1$0-h8@3$1$0-i0@3$1$0-i8@3$1$0-j0@3$1$0-j8@3$1$0-k0@3$1$0-k8@1$2$0Z").
Definition PH : bool := true.
(* [comment removed for export] *)
Lemma chk : ltac2:(zQ "h20!q6!kja!kk0!hg1!hg8!hh0!o2!hh6!hhd!hi4!hi9!hk3!hlb!hnf!ht3!ihf!in4!io2@3$b$3@2$f@5$h0$1$4$2@1$c@1$d@1$9@1$0@1$0@1$0$a@1$6@2$7$5$e@2$h1$1$2$8").
Proof. vm_cast_no_check (@eq_refl bool true). Qed.   (* [comment removed for export] *)
End P2c_5d718.

Module P2c_5d74c.
(* [comment removed for export] *)
Definition ST : ltac2:(zQ "10!k0$0") := ltac2:(zQ "40!lf!nb!o2!o8@4$3+ltmu0+l0@3$1$0-h0@3$1$0-h8@3$1$0-i0@3$1$0-i8@3$1$0-j0@3$1$0-j8@3$1$0-k0@3$1$0-k8@1$2$0Z").
Definition PH : bool := true.
(* [comment removed for export] *)
Lemma chk : ltac2:(zQ "h20!q6!kp2!kp8!hg1!hg8!hh0!o2!hh6!hhd!hi4!hi9!hk3!hlb!hnf!ht3!ihf!in4!io2@3$b$3@2$f@5$h0$1$4$2@1$c@1$d@1$9@1$0@1$0@1$0$a@1$6@2$7$5$e@2$h1$1$2$8").
Proof. vm_cast_no_check (@eq_refl bool true). Qed.   (* [comment removed for export] *)
End P2c_5d74c.

Module P2c_5d780.
(* [comment removed for export] *)
Definition ST : ltac2:(zQ "10!k0$0") := ltac2:(zQ "40!lf!nb!o2!o8@4$3+ltnh4+l0@3$1$0-h0@3$1$0-h8@3$1$0-i0@3$1$0-i8@3$1$0-j0@3$1$0-j8@3$1$0-k0@3$1$0-k8@1$2$0Z").
Definition PH : bool := true.
(* [comment removed for export] *)
Lemma chk : ltac2:(zQ "h20!q6!kua!kv0!hg1!hg8!hh0!o2!hh6!hhd!hi4!hi9!hk3!hlb!hnf!ht3!ihf!in4!io2@3$b$3@2$f@5$h0$1$4$2@1$c@1$d@1$9@1$0@1$0@1$0$a@1$6@2$7$5$e@2$h1$1$2$8").
Proof. vm_cast_no_check (@eq_refl bool true). Qed.   (* [comment removed for export] *)
End P2c_5d780.

Module P2c_5ddc8.
(* [comment removed for export] *)
Definition ST : ltac2:(zQ "10!k0$0") := ltac2:(zQ "30!o2!lf!o8@4$2+lttlc+i0@1$0$1Z").
Definition PH : bool := true.
(* [comment removed for export] *)
Lemma chk : ltac2:(zQ "h20!q6!lk2!lk8!hg1!hg8!hh0!o2!hh6!hhd!hi4!hi9!hk3!hlb!hnf!ht3!ihf!in4!io2@3$b$3@2$f@5$h0$1$4$2@1$c@1$d@1$9@1$0@1$0@1$0$a@1$6@2$7$5$e@2$h1$1$2$8").
Proof. vm_cast_no_check (@eq_refl bool true). Qed.   (* [comment removed for export] *)
End P2c_5ddc8.

Module P2c_5de18.
(* [comment removed for export] *)
Definition ST : ltac2:(zQ "10!k0$0") := ltac2:(zQ "30!o2!lf!o8@4$2+lttqc+i0@1$0$1Z").
Definition PH : bool := true.
(* [comment removed for export] *)
Lemma chk : ltac2:(zQ "h20!q6!lpa!lq0!hg1!hg8!hh0!o2!hh6!hhd!hi4!hi9!hk3!hlb!hnf!ht3!ihf!in4!io2@3$b$3@2$f@5$h0$1$4$2@1$c@1$d@1$9@1$0@1$0@1$0$a@1$6@2$7$5$e@2$h1$1$2$8").
Proof. vm_cast_no_check (@eq_refl bool true). Qed.   (* [comment removed for export] *)
End P2c_5de18.
(* [comment removed for export] *)
