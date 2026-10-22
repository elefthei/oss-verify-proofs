(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Bs Require As0Gc. (* [comment removed for export] *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From stdpp Require Import gmap.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType State Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC Sem Fpu.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib Require Import HeapCeil.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Lib Require Import Tac Arr Bytes ZBridge TacX SFModel.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Spec Require Import StrFun.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Bs Require Import ASegs AsShadow AsConst AsIface N6_tac N6_rip N6_quick N6_memset F_memset.
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Bs Require Import N8Store.   (* [comment removed for export] *)
From OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Lib Require Import Nd.
Require Import OssFuzzTheorems.Proofs.boost_json.fuzz_parse.lib.Lib.CDef.
Local Ltac2 zQ s := CDef.cdeft "37Corelib7Numbers7BinNums01Z04Npos35stdpp9bitvectorbdefinitionsi22bv37Corelib4Init9Datatypesk46option3h5LinuxProcessSemanticsfLinuxProcessSemeRiscvSemanticsm5dmachine_state3h5LinuxProcessSemantics5Riscv7Preludeqc5bvmap37Corelib4Init5Logicta2exta3and7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2Bs5ASegsv95asegsk44consk44prod7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2Bs8AsShadowhka2sh46Stdlib6ZArith6BinInt1Zhoe3divi2bbv_unsignedk43nilk44pair7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3Lib5Cellshs84cellhoe6to_natk44Noneta2eq7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib2Bs7AsConstii26ACONSThkacpoison_byteshs82CB7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3Lib5Frameinf3mkRinf5munchinf3stkinf5wmono7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3Lib6MStateitb2MSitb6ret_pc7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3Lib3Memji87mem_inv7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3Lib8PropExecjmd7seg_rom7fOssFuzzTheorems6Proofsaboost_jsonafuzz_parse3lib3Lib4Stepjr78rw_cellshoe3addhoe3sub" s.   (* [comment removed for export] *)
Import ListNotations.
Open Scope bv_scope.
Open Scope Z_scope.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Local Ltac transport_chunks segs m a bs ::= transport_chunks_n8 segs m a bs.   (* [comment removed for export] *)
Local Ltac Z.euclidean_division_equations_cleanup ::= idtac.

Definition ACF_CLRTHR_CELL : Z := 0x24ed20.   (* [comment removed for export] *)

Definition poison_post : ltac2:(zQ "60!hc!jf!h9!lc!pc!t2>2ra@1$1@1$0#k0>2sp@1$1@1$0#k0>2gp@1$1@1$0#k0>2tp@1$1@1$0#k0>2s0@1$1@1$0#k0>2s1@1$1@1$0#k0>2s2@1$1@1$0#k0>2s3@1$1@1$0#k0>2s4@1$1@1$0#k0>2s5@1$1@1$0#k0>2s6@1$1@1$0#k0>2s7@1$1@1$0#k0>2s8@1$1@1$0#k0>2s9@1$1@1$0#k0>3s10@1$1@1$0#k0>3s11@1$1@1$0#k0>1F@2$5@1$0#5@1$1@1$0#k0>2fc@1$1@1$0#i0>4addr$2>4size$2>1v$2>2lo$2>1m>0@1$1@1$0#k0@1$3@1$1@1$0#8>0$4P") := ltac2:(zQ "i21!hc!jf!ue!h9!v3!hj4!hjc!lc!hk3!ho8!hq6!hqd!hrb!hs1!pc!ig4!igc!ih6!ihd!t2!ilf!im9!in9!irb!is2!isb!it2!jh8!jhe!jm2!jqc!jv2!jve!kg5&>0@1$1@1$0#k0@1$7@1$1@1$0#8\2ra@1$1@1$0#k0\2sp@1$1@1$0#k0\2gp@1$1@1$0#k0\2tp@1$1@1$0#k0\2s0@1$1@1$0#k0\2s1@1$1@1$0#k0\2s2@1$1@1$0#k0\2s3@1$1@1$0#k0\2s4@1$1@1$0#k0\2s5@1$1@1$0#k0\2s6@1$1@1$0#k0\2s7@1$1@1$0#k0\2s8@1$1@1$0#k0\2s9@1$1@1$0#k0\3s10@1$1@1$0#k0\3s11@1$1@1$0#k0\1F@2$h3@1$0#5@1$1@1$0#k0\2fc@1$1@1$0#i0\4addr$3\4size$3\1v$3\2lo$3\1m~0\3ms'$e@2$2@1$1@1$0#k0\2t0@1$1@1$0#k0@2$2@1$1@1$0#k0\2t1@1$1@1$0#k0@2$2@1$1@1$0#k0\2t2@1$1@1$0#k0@2$2@1$1@1$0#k0\2a0@1$1@1$0#k0@2$2@1$1@1$0#k0\2a1@1$1@1$0#k0@2$2@1$1@1$0#k0\2a2@1$1@1$0#k0@2$2@1$1@1$0#k0\2a3@1$1@1$0#k0@2$2@1$1@1$0#k0\2a4@1$1@1$0#k0@2$2@1$1@1$0#k0\2a5@1$1@1$0#k0@2$2@1$1@1$0#k0\2a6@1$1@1$0#k0@2$2@1$1@1$0#k0\2a7@1$1@1$0#k0@2$2@1$1@1$0#k0\2t3@1$1@1$0#k0@2$2@1$1@1$0#k0\2t4@1$1@1$0#k0@2$2@1$1@1$0#k0\2t5@1$1@1$0#k0@2$2@1$1@1$0#k0\2t6@1$1@1$0#k0@2$2~0\2m'~0@2$4@3$h2$e^h1@7$hb@hf$h7^i8^i7^i6^i5^h0^f^e^i4^i3^d^c^b^a^9^8^7^6^i2^i1^i0^hf^he^hd^hc^hb^ha^h9^5^4^3^2^h8@1$hc^i8^h7@1$h1@1$1@1$0#k0^1@1$he$5@2$4@3$h8@3$6@2$8$3$3@4$d$3$3@1$9^h6@2$i0@1$9^h6@2$a^h5+8@3$6@2$8$3$3@4$d$3$3@2$i1@2$b@1$0#k0^i7+k0@2$b@1$0#k0^i7@1$c@2$8$3$3^h2^1@2$4@3$ha$5^h2^1@2$4@2$hd$5^1@2$4@4$h9$5^1^h3@2$b@1$0#k0^i7@2$4@4$hf$5^1@1$9^h6@3$6$f@2$h6@1$h0@2$a^h5+8@2$h5@1$h0@2$a^h5+8^h4@1$c$f@1$h4^1").

Section POISON.
  Variables (ra sp gp tp t0 t1 t2 s0 s1 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 : word)
            (F : bvmap 5 word) (fc : bv 32) (m : word -> option byte) (addr size v lo : Z) (junk : list byte).
  Hypothesis AL : addr mod 8 = 0 /\ size mod 8 = 0 /\ 8 <= size /\ size / 8 < 65536.
  Hypothesis HV : 0 <= v < 256.
  Hypothesis RNG : AHI_LO <= addr /\ addr + size <= AAPP_HI.
  Hypothesis SHJ : rw_cells asegs m (sh addr) [CB (Z.to_nat (size / 8)) junk].
  Hypothesis ST0 : stk asegs m lo (bv_unsigned sp).
  Hypothesis LO : lo + 64 <= bv_unsigned sp.
  Hypothesis CEIL : AHI_LO <= lo.
  Hypothesis MI : mem_inv asegs m.
  Hypothesis AC : ACONST m.
  Hypothesis THR : rw_cells asegs m ACF_CLRTHR_CELL [C8 (Z_to_bv 64 18446744073709551615)].   (* [comment removed for export] *)

  Notation POST := (poison_post ra sp gp tp s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 F fc addr size v lo m).

End POISON.
(* [comment removed for export] *)
Section POISON_LOW.
  Variables (ra sp gp tp t0 t1 t2 s0 s1 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6 : word)
            (F : bvmap 5 word) (fc : bv 32) (m : word -> option byte) (addr size v lo : Z) (junk : list byte).
  Hypothesis AL : addr mod 8 = 0 /\ size mod 8 = 0 /\ 8 <= size /\ size / 8 < 65536.
  Hypothesis HV : 0 <= v < 256.
  Hypothesis RNG : AIMG_TOP <= addr /\ addr + size <= ALOWSH_LO.
  Hypothesis SHJ : rw_cells asegs m (sh addr) [CB (Z.to_nat (size / 8)) junk].
  Hypothesis ST0 : stk asegs m lo (bv_unsigned sp).
  Hypothesis LO : lo + 64 <= bv_unsigned sp.
  Hypothesis CEIL : AHI_LO <= lo.
  Hypothesis MI : mem_inv asegs m.
  Hypothesis AC : ACONST m.
  Hypothesis THR : rw_cells asegs m ACF_CLRTHR_CELL [C8 (Z_to_bv 64 18446744073709551615)].   (* [comment removed for export] *)

  Notation POST := (poison_post ra sp gp tp s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 F fc addr size v lo m).

End POISON_LOW.

(* [comment removed for export] *)

(* [comment removed for export] *)
