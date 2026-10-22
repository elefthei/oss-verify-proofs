From Stdlib Require Import ZArith.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr Decode DecodeC.
From OssFuzzTheorems.jsoncons.fuzz_ubjson_parser_max.images Require Import Plain.
Open Scope bv_scope.
Abbreviation F a w := (fetch_word Plain.M.loaded_segments (a : word) = Some w).
Abbreviation D w i := (decode_any w = Some (i, 4%Z)).
