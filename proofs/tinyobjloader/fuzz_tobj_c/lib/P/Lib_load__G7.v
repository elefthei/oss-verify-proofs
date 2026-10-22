(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)


From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@Corelib.Init.Datatypes"; "pair"; "prod"; "bool"; "list"; "true"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "sv"; "sstate"; "@Corelib.Numbers.BinNums"; "Z"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJVA"; "amode"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_load__G1.Lib_load_obj_defs"; "NP"; "FUEL"; "cps"; "z0"; "VLp"; "amL"; "tvL"; "K_s2"; "@Corelib.Init.Logic"; "eq"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJVAy"; "ejcutA"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Code"; "segs"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_load__G2.Lib_load_obj_nodes"; "nodesE"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_load__G1.Lib_load_obj_sites1"; "T_fs2b"; "T_fs2c"; "T_fs2d"; "T_nt0"; "T_nt1"; "T_si0"; "T_si1"; "amT_fs2b"; "amT_fs2c"; "amT_fs2d"; "tvT_fs2b"; "tvT_fs2c"; "tvT_fs2d"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_load__G2.Lib_load_obj_sites2"; "T_avf"; "T_avg"; "T_avk"; "T_op1"; "T_op3"; "T_sd0a"; "T_sd0b"; "T_sd0c"; "T_sd0n"; "tvT_avf"; "tvT_avg"; "tvT_avk"; "tvT_op1"; "tvT_op3"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_load_obj_sites3"; "T_fsa"; "T_fsb"; "T_fsc"; "amT_fsa"; "amT_fsb"; "amT_fsc"; "tvT_fsa"; "tvT_fsb"; "tvT_fsc"].
#[local] Ltac2 tb__ s := OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TermBlob.dec2 (tbs__ ()) s.
Require Stdlib.ZArith.ZArith.
Require Stdlib.NArith.NArith.
Require Stdlib.Lists.List.
Require Stdlib.Bool.Bool.
Require Stdlib.PArith.PArith.
Require Stdlib.micromega.Lia.
Require Stdlib.Sorting.Permutation.
Require stdpp.bitvector.bitvector.
Require LinuxProcessSemantics.LinuxProcessSem.BvBase.
Require LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics.
Require LinuxProcessSemantics.LinuxProcessSem.MemImageType.
Require LinuxProcessSemantics.LinuxProcessSem.State.
Require LinuxProcessSemantics.LinuxProcessSem.Run.
Require LinuxProcessSemantics.Riscv.Prelude.
Require LinuxProcessSemantics.Riscv.Instr.
Require LinuxProcessSemantics.Riscv.Decode.
Require LinuxProcessSemantics.Riscv.DecodeC.
Require LinuxProcessSemantics.Riscv.Sem.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocModel.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocInv.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocLayout.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocIface.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocLaws.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw.Safety.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymStep.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundA.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundB.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundV.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundI.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundL.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundM.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundR.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymComplete.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymFrame.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymEntail.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymCFG.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSummary.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymObj.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.ExampleMemcpy.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.Glue3.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.Contract.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.Glue.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.SumConv.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgGlue.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CursorGlue.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.ObjUnbase.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.ObjXform.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJV.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJVx.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjArena.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJVA.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJVAx.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJVAy.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.BuilderDispose.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.ArenaDestroy.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Code.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_vec__G1.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_arena_dup.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_build__G1.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_handle__G1.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_handle_f.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_handle__G7.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_handle__G2.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_intern_rest.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_scan__G1.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_next_token.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_opt__G1.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_finalize__G1.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_finalize_shape.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_builder_dispose.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_load__G1.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_load__G2.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_load_obj_sites3.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.LiaFast.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymStepFast.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymCFGFast.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgFast.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Module Lib_load_obj_c9.

Import Stdlib.ZArith.ZArith Stdlib.NArith.NArith Stdlib.Lists.List Stdlib.Bool.Bool Stdlib.PArith.PArith Stdlib.micromega.Lia Stdlib.Sorting.Permutation.
Import stdpp.bitvector.bitvector.
Import LinuxProcessSemantics.LinuxProcessSem.BvBase LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics LinuxProcessSemantics.LinuxProcessSem.MemImageType LinuxProcessSemantics.LinuxProcessSem.State LinuxProcessSemantics.LinuxProcessSem.Run.
Import LinuxProcessSemantics.Riscv.Prelude LinuxProcessSemantics.Riscv.Instr LinuxProcessSemantics.Riscv.Decode LinuxProcessSemantics.Riscv.DecodeC LinuxProcessSemantics.Riscv.Sem.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocModel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocInv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocLayout OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocIface OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocLaws.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw.Safety.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymStep OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundA OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundB OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundV OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundI OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundL OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundM OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundR OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymComplete OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymFrame OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymEntail OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymCFG OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSummary OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymObj OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.ExampleMemcpy OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.Glue3.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.Contract OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.Glue.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.SumConv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgGlue OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CursorGlue OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.ObjUnbase OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.ObjXform OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJV OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJVx OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjArena OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJVA OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJVAx OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJVAy OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.BuilderDispose OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.ArenaDestroy.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Code OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_vec__G1.Lib_vec_reserve OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_arena_dup OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_build__G1.Lib_build_line_index.

Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_load__G1.Lib_load_obj_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_load__G1.Lib_load_obj_sites1 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_load__G2.Lib_load_obj_sites2 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_load_obj_sites3 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_load__G2.Lib_load_obj_nodes.

Import ListNotations.
Close Scope bv_scope.
Open Scope Z_scope.
Import P.Lib_scan__G1.Lib_scan_double.ScanDoubleAddr.
Lemma ec_T_avk : ltac2:(tb__ "0|2|
S11S2S12S13S9SaSbS9S14U5aS0S1S6S1S3S1S5S5A2A1M0S8A2M1A2S1S7S5A2S0S6G1S24S0G0S8S2dSeA4A4S0S7S5Z1f4SdZ1aScA2A4A4A8S4A3").
Proof. apply OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgFast.ejcutA_fast_ok. vm_cast_no_check (@eq_refl bool true). Qed.
Lemma ec_T_avf : ltac2:(tb__ "0|2|
S11S2S12S13S9SaSbS9S14U5bS0S1S6S1S3S1S5S5A2A1M0S8A2M1A2S1S7S5A2S0S6G1S22S0G0S8S2bSeA4A4S0S7S5Z1f4SdZ1aScA2A4A4A8S4A3").
Proof. apply OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgFast.ejcutA_fast_ok. vm_cast_no_check (@eq_refl bool true). Qed.
Lemma ec_T_avg : ltac2:(tb__ "0|2|
S11S2S12S13S9SaSbS9S14U5cS0S1S6S1S3S1S5S5A2A1M0S8A2M1A2S1S7S5A2S0S6G1S23S0G0S8S2cSeA4A4S0S7S5Z1f4SdZ1aScA2A4A4A8S4A3").
Proof. apply OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgFast.ejcutA_fast_ok. vm_cast_no_check (@eq_refl bool true). Qed.
Lemma ec_T_op1 : ltac2:(tb__ "0|2|
S11S2S12S13S9SaSbS9S14U5dS0S1S6S1S3S1S5S5A2A1M0S8A2M1A2S1S7S5A2S0S6G1S25S0G0S8S2eSeA4A4S0S7S5Z1f4SdZ18ScA2A4A4A8S4A3").
Proof. apply OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgFast.ejcutA_fast_ok. vm_cast_no_check (@eq_refl bool true). Qed.
Lemma ec_T_op3 : ltac2:(tb__ "0|2|
S11S2S12S13S9SaSbS9S14U5eS0S1S6S1S3S1S5S5A2A1M0S8A2M1A2S1S7S5A2S0S6G1S26S0G0S8S2fSeA4A4S0S7S5Z1f4SdZ16ScA2A4A4A8S4A3").
Proof. apply OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgFast.ejcutA_fast_ok. vm_cast_no_check (@eq_refl bool true). Qed.
Lemma ec_T_fsa : ltac2:(tb__ "0|2|
S11S2S12S13S9SaSbS9S14U5fS0S1S6S1S3S1S5S5A2A1M0S8A2M1A2S1S7S5A2S0S6G1S30S0G0S8S36S33A4A4S0S7S5Z186ScA4A4A8S4A3").
Proof. apply OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgFast.ejcutA_fast_ok. vm_cast_no_check (@eq_refl bool true). Qed.
Lemma ec_T_fsb : ltac2:(tb__ "0|2|
S11S2S12S13S9SaSbS9S14U60S0S1S6S1S3S1S5S5A2A1M0S8A2M1A2S1S7S5A2S0S6G1S31S0G0S8S37S34A4A4S0S7S5Z186ScA4A4A8S4A3").
Proof. apply OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgFast.ejcutA_fast_ok. vm_cast_no_check (@eq_refl bool true). Qed.
Lemma ec_T_fsc : ltac2:(tb__ "0|2|
S11S2S12S13S9SaSbS9S14U61S0S1S6S1S3S1S5S5A2A1M0S8A2M1A2S1S7S5A2S0S6G1S32S0G0S8S38S35A4A4S0S7S5Z186ScA4A4A8S4A3").
Proof. apply OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgFast.ejcutA_fast_ok. vm_cast_no_check (@eq_refl bool true). Qed.
End Lib_load_obj_c9.

Module Lib_load_obj_c7.

Import Stdlib.ZArith.ZArith Stdlib.NArith.NArith Stdlib.Lists.List Stdlib.Bool.Bool Stdlib.PArith.PArith Stdlib.micromega.Lia Stdlib.Sorting.Permutation.
Import stdpp.bitvector.bitvector.
Import LinuxProcessSemantics.LinuxProcessSem.BvBase LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics LinuxProcessSemantics.LinuxProcessSem.MemImageType LinuxProcessSemantics.LinuxProcessSem.State LinuxProcessSemantics.LinuxProcessSem.Run.
Import LinuxProcessSemantics.Riscv.Prelude LinuxProcessSemantics.Riscv.Instr LinuxProcessSemantics.Riscv.Decode LinuxProcessSemantics.Riscv.DecodeC LinuxProcessSemantics.Riscv.Sem.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocModel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocInv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocLayout OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocIface OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocLaws.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw.Safety.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymStep OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundA OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundB OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundV OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundI OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundL OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundM OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundR OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymComplete OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymFrame OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymEntail OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymCFG OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSummary OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymObj OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.ExampleMemcpy OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.Glue3.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.Contract OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.Glue.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.SumConv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgGlue OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CursorGlue OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.ObjUnbase OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.ObjXform OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJV OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJVx OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjArena OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJVA OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJVAx OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJVAy OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.BuilderDispose OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.ArenaDestroy.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Code OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_vec__G1.Lib_vec_reserve OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_arena_dup OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_build__G1.Lib_build_line_index.

Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_load__G1.Lib_load_obj_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_load__G1.Lib_load_obj_sites1 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_load__G2.Lib_load_obj_sites2 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_load_obj_sites3 OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_load__G2.Lib_load_obj_nodes.

Import ListNotations.
Close Scope bv_scope.
Open Scope Z_scope.
Import P.Lib_scan__G1.Lib_scan_double.ScanDoubleAddr.
Lemma ec_T_fs2b : ltac2:(tb__ "0|2|
S11S2S12S13S9SaSbS9S14U32S0S1S6S1S3S1S5S5A2A1M0S8A2M1A2S1S7S5A2S0S6G1S15S0G0S8S1fS1cA4A4S0S7S5Z1f4SdZ29ScA2A4A4A8S4A3").
Proof. apply OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgFast.ejcutA_fast_ok. vm_cast_no_check (@eq_refl bool true). Qed.
Lemma ec_T_fs2c : ltac2:(tb__ "0|2|
S11S2S12S13S9SaSbS9S14U33S0S1S6S1S3S1S5S5A2A1M0S8A2M1A2S1S7S5A2S0S6G1S16S0G0S8S20S1dA4A4S0S7S5Z1f4SdZ29ScA2A4A4A8S4A3").
Proof. apply OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgFast.ejcutA_fast_ok. vm_cast_no_check (@eq_refl bool true). Qed.
Lemma ec_T_fs2d : ltac2:(tb__ "0|2|
S11S2S12S13S9SaSbS9S14U34S0S1S6S1S3S1S5S5A2A1M0S8A2M1A2S1S7S5A2S0S6G1S17S0G0S8S21S1eA4A4S0S7S5Z1f4SdZ29ScA2A4A4A8S4A3").
Proof. apply OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgFast.ejcutA_fast_ok. vm_cast_no_check (@eq_refl bool true). Qed.
Lemma ec_T_nt0 : ltac2:(tb__ "0|2|
S11S2S12S13S9SaSbS9S14U35S0S1S6S1S3S1S5S5A2A1M0S8A2M1A2S1S7S5A2S0S6G1S18S0G0S8SfSeA4A4S0S7S5Z1f4SdZ2bScA2A4A4A8S4A3").
Proof. apply OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgFast.ejcutA_fast_ok. vm_cast_no_check (@eq_refl bool true). Qed.
Lemma ec_T_nt1 : ltac2:(tb__ "0|2|
S11S2S12S13S9SaSbS9S14U36S0S1S6S1S3S1S5S5A2A1M0S8A2M1A2S1S7S5A2S0S6G1S19S0G0S8SfSeA4A4S0S7S5Z1f4SdZ2bScA2A4A4A8S4A3").
Proof. apply OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgFast.ejcutA_fast_ok. vm_cast_no_check (@eq_refl bool true). Qed.
Lemma ec_K_s2 : ltac2:(tb__ "0|2|
S11S2S12S13S9SaSbS9S14U37S0S1S6S1S3S1S5S5A2A1M0S8A2M1A2S1S7S5A2S0S6G1S10S0G0S8SfSeA4A4S0S7S5Z1f4SdZ2aScA2A4A4A8S4A3").
Proof. apply OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgFast.ejcutA_fast_ok. vm_cast_no_check (@eq_refl bool true). Qed.
Lemma ec_T_si0 : ltac2:(tb__ "0|2|
S11S2S12S13S9SaSbS9S14U38S0S1S6S1S3S1S5S5A2A1M0S8A2M1A2S1S7S5A2S0S6G1S1aS0G0S8SfSeA4A4S0S7S5Z1f4SdZ28ScA2A4A4A8S4A3").
Proof. apply OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgFast.ejcutA_fast_ok. vm_cast_no_check (@eq_refl bool true). Qed.
Lemma ec_T_si1 : ltac2:(tb__ "0|2|
S11S2S12S13S9SaSbS9S14U39S0S1S6S1S3S1S5S5A2A1M0S8A2M1A2S1S7S5A2S0S6G1S1bS0G0S8SfSeA4A4S0S7S5Z1f4SdZ28ScA2A4A4A8S4A3").
Proof. apply OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgFast.ejcutA_fast_ok. vm_cast_no_check (@eq_refl bool true). Qed.
Lemma ec_T_sd0n : ltac2:(tb__ "0|2|
S11S2S12S13S9SaSbS9S14U3aS0S1S6S1S3S1S5S5A2A1M0S8A2M1A2S1S7S5A2S0S6G1S2aS0G0S8SfSeA4A4S0S7S5Z1f4SdZ2bScA2A4A4A8S4A3").
Proof. apply OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgFast.ejcutA_fast_ok. vm_cast_no_check (@eq_refl bool true). Qed.
Lemma ec_T_sd0a : ltac2:(tb__ "0|2|
S11S2S12S13S9SaSbS9S14U3bS0S1S6S1S3S1S5S5A2A1M0S8A2M1A2S1S7S5A2S0S6G1S27S0G0S8SfSeA4A4S0S7S5Z1f4SdZ2bScA2A4A4A8S4A3").
Proof. apply OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgFast.ejcutA_fast_ok. vm_cast_no_check (@eq_refl bool true). Qed.
Lemma ec_T_sd0b : ltac2:(tb__ "0|2|
S11S2S12S13S9SaSbS9S14U3cS0S1S6S1S3S1S5S5A2A1M0S8A2M1A2S1S7S5A2S0S6G1S28S0G0S8SfSeA4A4S0S7S5Z1f4SdZ2bScA2A4A4A8S4A3").
Proof. apply OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgFast.ejcutA_fast_ok. vm_cast_no_check (@eq_refl bool true). Qed.
Lemma ec_T_sd0c : ltac2:(tb__ "0|2|
S11S2S12S13S9SaSbS9S14U3dS0S1S6S1S3S1S5S5A2A1M0S8A2M1A2S1S7S5A2S0S6G1S29S0G0S8SfSeA4A4S0S7S5Z1f4SdZ2bScA2A4A4A8S4A3").
Proof. apply OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgFast.ejcutA_fast_ok. vm_cast_no_check (@eq_refl bool true). Qed.
End Lib_load_obj_c7.
