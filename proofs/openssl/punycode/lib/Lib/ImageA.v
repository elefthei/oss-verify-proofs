(* [comment removed for export] *)
From LinuxProcessSemantics.LinuxProcessSem Require Import MemImageType.
From OssFuzzTheorems.openssl.punycode.images Require Import Asan AsanUbsan.
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.

Definition asegs : list Segment := Asan.M.loaded_segments.
Definition bsegs : list Segment := AsanUbsan.M.loaded_segments.
