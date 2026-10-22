(* Machine-generated data computed from the task's compiled program image (decoder-built tables and encoded data blocks); may contain fragments of third-party object code - see NOTICE. No Anthropic licence header applies to this file. *)


From OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib Require TermBlob.
#[local] Ltac2 tbs__ () := ["@Corelib.Init.Datatypes"; "pair"; "cons"; "nil"; "prod"; "bool"; "true"; "Some"; "option"; "list"; "app"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState"; "sstate"; "sv"; "SLit"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_handle__G1.Lib_handle_f_nodes"; "z0"; "VT"; "@Corelib.Numbers.BinNums"; "Z"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_handle__G1.Lib_handle_f_defs"; "HF_P"; "vr_site_checkE"; "pC"; "FT"; "pQ"; "E_mm"; "E_rp"; "E_sg"; "E_tp"; "E_tr_bad"; "E_tr_ok"; "E_ts"; "F3"; "F4"; "FQ"; "FR"; "KQ"; "KR"; "KT_bad"; "KT_ok"; "R3"; "R4"; "c_parse_corner"; "c_vec_reserve"; "pP"; "@Corelib.Init.Logic"; "eq"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.ObjXform"; "xform"; "XSplit"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_handle__G1.Lib_handle_lp_defs"; "tvP"; "HPp_P"; "AP_pi"; "EP_pc"; "EP_pi"; "FP_pi"; "HPP_ret"; "P50"; "P60"; "P94"; "PP"; "PP0"; "Pre_hp"; "tvP_pre"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJVx"; "norm_xu"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_handle__G5.Lib_handle_f_s2"; "E2_mm"; "E2_sg"; "E2_trok"; "s_mm"; "s_sg"; "s_trok"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_handle__G5.Lib_handle_f_s3"; "E2_rp"; "E2_trbad"; "E2_ts"; "s_rp"; "s_trbad"; "s_ts"; "@OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_handle__G2.Lib_handle_f_glue"; "tp_site_checkB"].
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
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.SumConv.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgGlue.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CursorGlue.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.ObjUnbase.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.ObjXform.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJV.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJVx.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Code.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_vec__G1.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_parse_corner.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_handle__G1.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.LiaFast.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_tess__G1.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_tess__G2.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_handle__G2.
Require OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.XformFast.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Module Lib_handle_p_nodes.

Import Stdlib.ZArith.ZArith Stdlib.NArith.NArith Stdlib.Lists.List Stdlib.Bool.Bool Stdlib.PArith.PArith Stdlib.micromega.Lia Stdlib.Sorting.Permutation.
Import stdpp.bitvector.bitvector.
Import LinuxProcessSemantics.LinuxProcessSem.BvBase LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics LinuxProcessSemantics.LinuxProcessSem.MemImageType LinuxProcessSemantics.LinuxProcessSem.State LinuxProcessSemantics.LinuxProcessSem.Run.
Import LinuxProcessSemantics.Riscv.Prelude LinuxProcessSemantics.Riscv.Instr LinuxProcessSemantics.Riscv.Decode LinuxProcessSemantics.Riscv.DecodeC LinuxProcessSemantics.Riscv.Sem.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocModel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocInv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocLayout OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocIface OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocLaws.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw.Safety.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymStep OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundA OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundB OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundV OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundI OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundL OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundM OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundR OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymComplete OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymFrame OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymEntail OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymCFG OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSummary OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymObj OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.ExampleMemcpy OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.Glue3.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.Contract.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.SumConv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgGlue OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CursorGlue OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.ObjUnbase OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.ObjXform OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJV OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJVx.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Code OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_vec__G1.Lib_vec_reserve OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_parse_corner OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_handle__G1.Lib_handle_f_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_handle__G1.Lib_handle_f_nodes OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_handle__G1.Lib_handle_lp_defs.

Import ListNotations.
Close Scope bv_scope.
Open Scope Z_scope.

Definition hp_cuts : list edesc := ltac2:(tb__ "0|6|
S1S3S3SaS8S3SbSbA2A1M0A2M1S3SfSbA2M2A2M3S0G1G2S0SaG0S38S39A4S0SfSbZ64SdA4A4S1G3S0G1G2S0SaG0S33S2cA4S0SfSbZ5aM4SeS28Z2A2A4A4S1G3S0G1G2S0SaG0S34S2cA4S0SfSbG4SeS14Z1A2A4A4S1G3S0G1G2S0SaG0S35S2cA4S0SfSbG4SeS14Z0A2A4A4S1G3S0G1G2S0SaG0S37S2cA4S0SfSbG4SeS12Z6A2A4M5A4S1G3S0G1G2S0SaG0S36S2cA4G5A4S1G3S0G1G2S0SaG0S2eS2cA4S0SfSbG4SeS12Z4A2A4A4S1G3S0G1G2S0SaG0S31S2cA4S0SfSbZ55SdA4A4S2G3A1A3A3A3A3A3A3A3A3").
Definition hp_exits : list edesc := ltac2:(tb__ "0|5|
S1S3S3SaS8S3SbSbA2A1M0A2M1S3SfSbA2M2A2M3S0G1G2S0SaG0S2fS2cA4S0SfSbZ5aM4SeS12Z7A2A4A4S1G3S0G1G2S0SaG0S30S2cA4S0SfSbG4SeS12Z5A2A4A4S1G3S0G1G2S0SaG0S32S2cA4S0SfSbZ0SdA4A4S2G3A1A3A3A3").
Definition hp_nodes : list edesc := hp_cuts ++ hp_exits.
Definition cpsp : list Z := ltac2:(tb__ "0|1|
S9SfS1SfS27S2dA1S1SfS26S2dA1S2SfA1M0A3A3S1SfZ1b8ccS1SfZ1b8dcS1SfZ1b910G0A3A3A3A3").
End Lib_handle_p_nodes.

Module Lib_handle_f_s2.

Import Stdlib.ZArith.ZArith Stdlib.NArith.NArith Stdlib.Lists.List Stdlib.Bool.Bool Stdlib.PArith.PArith Stdlib.micromega.Lia Stdlib.Sorting.Permutation.
Import stdpp.bitvector.bitvector.
Import LinuxProcessSemantics.LinuxProcessSem.BvBase LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics LinuxProcessSemantics.LinuxProcessSem.MemImageType LinuxProcessSemantics.LinuxProcessSem.State LinuxProcessSemantics.LinuxProcessSem.Run.
Import LinuxProcessSemantics.Riscv.Prelude LinuxProcessSemantics.Riscv.Instr LinuxProcessSemantics.Riscv.Decode LinuxProcessSemantics.Riscv.DecodeC LinuxProcessSemantics.Riscv.Sem.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocModel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocInv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocLayout OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocIface OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocLaws.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw.Safety.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymStep OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundA OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundB OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundV OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundI OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundL OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundM OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundR OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymComplete OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymFrame OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymEntail OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymCFG OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSummary OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymObj OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.ExampleMemcpy OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.Glue3.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.Contract.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.SumConv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgGlue OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CursorGlue OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.ObjUnbase OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.ObjXform OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJV OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJVx.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Code OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_vec__G1.Lib_vec_reserve OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_handle__G1.Lib_handle_f_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_handle__G1.Lib_handle_f_nodes.

Import ListNotations.
Close Scope bv_scope.
Open Scope Z_scope.

Local Notation h := HF_P.

Definition E2_mm : sstate := vr_view (E_mm h).
Definition s_mm : wsub := vr_sub mm1 4 E2_mm.
Lemma chk_mm : ltac2:(tb__ "0|1|
S29S4S11S3bS3eU3S24S10A1S1cS10A1SdZ4bM0SdG0Z4cSdAbS5A3").
Proof. cbv delta [vr_site_checkE]. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.XformFast.fast_site. Qed.
Lemma view_mm : ltac2:(tb__ "0|2|
S29S7SaA1S3aS1S2aS2bU1M0ScN40M1A1A2S2S2aA1A3G0G1S15S10A1A4S6SaS3bA2A3").
Proof. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.XformFast.fast_lit. Qed.

Definition E2_sg : sstate := vr_view (E_sg h).
Definition s_sg : wsub := vr_sub sg1 4 E2_sg.
Lemma chk_sg : ltac2:(tb__ "0|1|
S29S4S11S3cS3fU4S25S10A1S1dS10A1SdZ49M0SdG0Z4aSdAbS5A3").
Proof. cbv delta [vr_site_checkE]. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.XformFast.fast_site. Qed.
Lemma view_sg : ltac2:(tb__ "0|2|
S29S7SaA1S3aS1S2aS2bU1M0ScN40M1A1A2S2S2aA1A3G0G1S17S10A1A4S6SaS3cA2A3").
Proof. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.XformFast.fast_lit. Qed.

Definition E2_trok : sstate := vr_view (E_tr_ok h).
Definition s_trok : wsub := vr_sub tr1 4 E2_trok.
Lemma chk_trok : ltac2:(tb__ "0|1|
S29S4S11S3dS40U7S23S10A1S13S10A1SdZ42M0SdG0Z44SdAbS5A3").
Proof. cbv delta [vr_site_checkE]. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.XformFast.fast_site. Qed.
Lemma view_trok : ltac2:(tb__ "0|2|
S29S7SaA1S3aS1S2aS2bU1M0ScN40M1A1A2S2S2aA1A3G0G1S1aS10A1A4S6SaS3dA2A3").
Proof. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.XformFast.fast_lit. Qed.
End Lib_handle_f_s2.

Module Lib_handle_f_s3.

Import Stdlib.ZArith.ZArith Stdlib.NArith.NArith Stdlib.Lists.List Stdlib.Bool.Bool Stdlib.PArith.PArith Stdlib.micromega.Lia Stdlib.Sorting.Permutation.
Import stdpp.bitvector.bitvector.
Import LinuxProcessSemantics.LinuxProcessSem.BvBase LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics LinuxProcessSemantics.LinuxProcessSem.MemImageType LinuxProcessSemantics.LinuxProcessSem.State LinuxProcessSemantics.LinuxProcessSem.Run.
Import LinuxProcessSemantics.Riscv.Prelude LinuxProcessSemantics.Riscv.Instr LinuxProcessSemantics.Riscv.Decode LinuxProcessSemantics.Riscv.DecodeC LinuxProcessSemantics.Riscv.Sem.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocModel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocInv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocLayout OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocIface OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocLaws.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw.Safety.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymStep OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundA OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundB OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundV OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundI OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundL OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundM OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundR OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymComplete OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymFrame OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymEntail OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymCFG OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSummary OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymObj OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.ExampleMemcpy OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.Glue3.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.Contract.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.SumConv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgGlue OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CursorGlue OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.ObjUnbase OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.ObjXform OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJV OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJVx.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Code OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_vec__G1.Lib_vec_reserve OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_handle__G1.Lib_handle_f_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_handle__G1.Lib_handle_f_nodes.

Import ListNotations.
Close Scope bv_scope.
Open Scope Z_scope.

Local Notation h := HF_P.

Definition E2_trbad : sstate := vr_view (E_tr_bad h).
Definition s_trbad : wsub := vr_sub tr1 4 E2_trbad.
Lemma chk_trbad : ltac2:(tb__ "0|1|
S29S4S11S42S45U7S22S10A1S13S10A1SdZ42M0SdG0Z44SdAbS5A3").
Proof. cbv delta [vr_site_checkE]. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.XformFast.fast_site. Qed.
Lemma view_trbad : ltac2:(tb__ "0|2|
S29S7SaA1S3aS1S2aS2bU1M0ScN40M1A1A2S2S2aA1A3G0G1S19S10A1A4S6SaS42A2A3").
Proof. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.XformFast.fast_lit. Qed.

Definition E2_rp : sstate := vr_view (E_rp h).
Definition s_rp : wsub := vr_sub rpA0 4 E2_rp.
Lemma chk_rp : ltac2:(tb__ "0|1|
S29S4S11S41S44U6S21S10A1S1fS10A1SdZ3cM0SdG0Z3eSdAbS5A3").
Proof. cbv delta [vr_site_checkE]. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.XformFast.fast_site. Qed.
Lemma view_rp : ltac2:(tb__ "0|2|
S29S7SaA1S3aS1S2aS2bU1M0ScN40M1A1A2S2S2aA1A3G0G1S16S10A1A4S6SaS41A2A3").
Proof. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.XformFast.fast_lit. Qed.

Definition E2_ts : sstate := vr_view (E_ts h).
Definition s_ts : wsub := vr_sub ts1 1 E2_ts.
Lemma chk_ts : ltac2:(tb__ "0|1|
S29S4S11S43S46U8S20S10A1S1eS10A1SdZ36M0SdG0Z38SdAbS5A3").
Proof. cbv delta [vr_site_checkE]. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.XformFast.fast_site. Qed.
Lemma view_ts : ltac2:(tb__ "0|2|
S29S7SaA1S3aS1S2aS2bU1M0ScN40M1A1A2S2S2aA1A3G0G1S1bS10A1A4S6SaS43A2A3").
Proof. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.XformFast.fast_lit. Qed.
End Lib_handle_f_s3.

Module Lib_handle_f_s6b.

Import Stdlib.ZArith.ZArith Stdlib.NArith.NArith Stdlib.Lists.List Stdlib.Bool.Bool Stdlib.PArith.PArith Stdlib.micromega.Lia Stdlib.Sorting.Permutation.
Import stdpp.bitvector.bitvector.
Import LinuxProcessSemantics.LinuxProcessSem.BvBase LinuxProcessSemantics.LinuxProcessSem.RiscvSemantics LinuxProcessSemantics.LinuxProcessSem.MemImageType LinuxProcessSemantics.LinuxProcessSem.State LinuxProcessSemantics.LinuxProcessSem.Run.
Import LinuxProcessSemantics.Riscv.Prelude LinuxProcessSemantics.Riscv.Instr LinuxProcessSemantics.Riscv.Decode LinuxProcessSemantics.Riscv.DecodeC LinuxProcessSemantics.Riscv.Sem.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocModel OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocInv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocLayout OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocIface OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.MallocLaws.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw.Safety.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymState OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymStep OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundA OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundB OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundV OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundI OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundL OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundM OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSoundR OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymComplete OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymFrame OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymEntail OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymCFG OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymSummary OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.SymObj OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.ExampleMemcpy OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Fw3.Glue3.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Malloc.Contract.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.SumConv OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CfgGlue OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.CursorGlue OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.ObjUnbase OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.ObjXform OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJV OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.TobjJVx.
Import OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Code OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_vec__G1.Lib_vec_reserve OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_parse_corner OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_tess__G1.Lib_tess_run2d OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_tess__G1.Lib_tess_polygon_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_tess__G2.Lib_tess_polygon_chk OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_handle__G1.Lib_handle_f_defs OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_handle__G1.Lib_handle_f_nodes OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_handle__G1.Lib_handle_f_arith OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.P.Lib_handle__G2.Lib_handle_f_glue.

Import ListNotations.
Close Scope bv_scope.
Open Scope Z_scope.

Local Notation h := HF_P.

Lemma chk_tpB : ltac2:(tb__ "0|0|
S29S4S47S18S10A1Z32SdZ34SdA5S5A3").
Proof. cbv delta [tp_site_checkB Etp6 tpcont_check Etp6b norm_tp Etp6a norm_tp2 Etp5 Etp4 Etp3 Etp2 Etp2b Etp2a Etp1]. OssFuzzTheorems.Proofs.tinyobjloader.fuzz_tobj_c.lib.Lib.XformFast.fast_site. Qed.
End Lib_handle_f_s6b.
