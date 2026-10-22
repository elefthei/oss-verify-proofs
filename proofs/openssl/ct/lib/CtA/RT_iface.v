(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
From OssFuzzTheorems.Proofs.openssl.ct.lib.CtLib Require Import ImageCtA.
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)

From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType Fs State Monad Specs Run.
From OssFuzzTheorems.Proofs.openssl.ct.lib.AS Require Import ShapeAlg AsanAcct.
From OssFuzzTheorems.Proofs.openssl.ct.lib.Lib Require Import PropExec MState Mem Frame Cells Step Arr Exec RzCPS. 
From OssFuzzTheorems.Proofs.openssl.ct.lib.Spec Require Import Prelim StrFun Canon Stdio.
From OssFuzzTheorems.Proofs.openssl.ct.lib.Spec Require PrintfFormats.
From OssFuzzTheorems.Proofs.openssl.ct.lib.A Require Import Shadow IcptSpec.
From OssFuzzTheorems.Proofs.openssl.ct.lib.CtA Require Import Layout R_unwind_chain.
From OssFuzzTheorems.Proofs.openssl.ct.lib.CtA Require Export GDesc SiteData.   (* [comment removed for export] *)
Unset Lia Cache. Unset Nia Cache. Unset Nra Cache.
Import ListNotations.
Open Scope Z_scope.

Notation mem := (word -> option byte).

(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)
Definition SEGTOP_A : Z := 0xbcb000.
(* [comment removed for export] *)
Definition USTACK_TOP : Z := 0x800000000000.
Definition STACK_WIN : Z := 0x800000.
(* [comment removed for export] *)
Definition RT_STACK : Z := 0x10000.
(* [comment removed for export] *)
Definition LIVE_MAX : Z := 65536.   (* [comment removed for export] *)
(* [comment removed for export] *)
Definition PBYTES_MAX : Z := 0x20000000.   (* [comment removed for export] *)
Definition NSEC_LIVE : Z := 8000.
Definition lw (n : Z) : Z := if n <=? 64512 then 4 * Z.max 0 n + 32 else 0.
Definition isbig (e : Z * Z) : bool := 64512 <? snd e.
Fixpoint psum (l : list (Z * Z)) : Z := match l with nil => 0 | e :: l' => lw (snd e) + psum l' end.
Definition nbig (l : list (Z * Z)) : Z := Z.of_nat (length (List.filter isbig l)).
(* [comment removed for export] *)
Definition live_room (l : list (Z * Z)) (n : Z) : Prop :=
  Z.of_nat (length l) < LIVE_MAX /\ psum l + lw n <= PBYTES_MAX /\ nbig l + (if n <=? 64512 then 0 else 1) <= NSEC_LIVE.
(* [comment removed for export] *)
Definition live_caps (l : list (Z * Z)) : Prop := Z.of_nat (length l) <= LIVE_MAX /\ psum l <= PBYTES_MAX /\ nbig l <= NSEC_LIVE.
Lemma lw_nonneg : forall n, 0 <= lw n.
Proof. intros n. unfold lw. destruct (n <=? 64512); lia. Qed.
Lemma psum_app : forall l1 l2, psum (l1 ++ l2) = psum l1 + psum l2.
Proof. induction l1 as [|e l1 IH]; intros l2; cbn [psum app]; [lia|]. rewrite IH. lia. Qed.
Lemma nbig_cons : forall e l, nbig (e :: l) = (if isbig e then 1 else 0) + nbig l.
Proof. intros e l. unfold nbig. cbn [List.filter]. destruct (isbig e); [cbn [length]; rewrite Nat2Z.inj_succ|]; lia. Qed.
Lemma live_room_count : forall l n, live_room l n -> Z.of_nat (length l) < LIVE_MAX.
Proof. intros l n (H & _). exact H. Qed.
Lemma live_caps_nil : live_caps nil.
Proof. unfold live_caps, nbig, LIVE_MAX, PBYTES_MAX, NSEC_LIVE. cbn. lia. Qed.
(* [comment removed for export] *)
Definition LW_MAX : Z := 258080.   (* [comment removed for export] *)
Definition lroom3 (l : list (Z * Z)) (c p b : Z) : Prop :=
  Z.of_nat (length l) + c <= LIVE_MAX /\ psum l + p <= PBYTES_MAX /\ nbig l + b <= NSEC_LIVE.
Lemma lw_le_max : forall n, lw n <= LW_MAX.
Proof. intros n. unfold lw, LW_MAX. destruct (Z.leb_spec n 64512); lia. Qed.
Lemma psum_nonneg : forall l, 0 <= psum l.
Proof. induction l as [|e l IH]; cbn [psum]; [lia|]. pose proof (lw_nonneg (snd e)). lia. Qed.
Lemma nbig_nonneg : forall l, 0 <= nbig l.
Proof. intros l. unfold nbig. lia. Qed.
Lemma lroom3_live_room : forall l c p b n, lroom3 l c p b -> 1 <= c -> LW_MAX <= p -> 1 <= b -> live_room l n.
Proof.
  intros l c p b n (H1 & H2 & H3) Hc Hp Hb. pose proof (lw_le_max n). unfold live_room.
  split; [lia|]. split; [lia|]. destruct (n <=? 64512); lia.
Qed.
Lemma lroom3_mono : forall l c p b c' p' b', lroom3 l c p b -> c' <= c -> p' <= p -> b' <= b -> lroom3 l c' p' b'.
Proof. intros l c p b c' p' b' (H1 & H2 & H3) X Y W. unfold lroom3. lia. Qed.
Lemma lroom3_cons : forall l c p b q n, lroom3 l c p b -> lroom3 ((q, n) :: l) (c - 1) (p - LW_MAX) (b - 1).
Proof.
  intros l c p b q n (H1 & H2 & H3). pose proof (lw_le_max n). unfold lroom3. cbn [length psum snd]. rewrite nbig_cons.
  split; [lia|]. split; [lia|]. destruct (isbig (q, n)); lia.
Qed.
Lemma lroom3_app : forall l1 l2 c p b, lroom3 l2 c p b -> lroom3 (l1 ++ l2) (c - Z.of_nat (length l1)) (p - psum l1) (b - nbig l1).
Proof.
  intros l1 l2 c p b (H1 & H2 & H3). unfold lroom3. rewrite length_app, Nat2Z.inj_add, psum_app.
  assert (E : nbig (l1 ++ l2) = nbig l1 + nbig l2) by (unfold nbig; rewrite List.filter_app, length_app; lia).
  rewrite E. lia.
Qed.
Lemma lroom3_le : forall l l' c p b dc dp db, lroom3 l c p b ->
  Z.of_nat (length l') <= Z.of_nat (length l) + dc -> psum l' <= psum l + dp -> nbig l' <= nbig l + db ->
  lroom3 l' (c - dc) (p - dp) (b - db).
Proof. intros l l' c p b dc dp db (H1 & H2 & H3) X Y W. unfold lroom3. lia. Qed.
Lemma nbig_app : forall l1 l2, nbig (l1 ++ l2) = nbig l1 + nbig l2.
Proof. intros l1 l2. unfold nbig. rewrite List.filter_app, length_app. lia. Qed.
Lemma psum_le_len : forall l, psum l <= Z.of_nat (length l) * LW_MAX.
Proof. induction l as [|e l IH]; cbn [psum length]; [lia|]. pose proof (lw_le_max (snd e)). rewrite Nat2Z.inj_succ. lia. Qed.
Lemma nbig_le_len : forall l, nbig l <= Z.of_nat (length l).
Proof. intros l. unfold nbig. induction l as [|e l IH]; cbn [List.filter]; [lia|]. destruct (isbig e); cbn [length]; lia. Qed.
(* [comment removed for export] *)
Lemma lroom3_of_len : forall l c p b, Z.of_nat (length l) + c <= LIVE_MAX -> Z.of_nat (length l) * LW_MAX + p <= PBYTES_MAX ->
  Z.of_nat (length l) + b <= NSEC_LIVE -> lroom3 l c p b.
Proof. intros l c p b A B C. pose proof (psum_le_len l). pose proof (nbig_le_len l). unfold lroom3. lia. Qed.
Lemma live_room_of_len : forall l n, Z.of_nat (length l) <= 2000 -> live_room l n.
Proof.
  intros l n H. apply (lroom3_live_room l 1 LW_MAX 1 n); [|lia|lia|lia].
  apply lroom3_of_len; unfold LIVE_MAX, PBYTES_MAX, NSEC_LIVE, LW_MAX; lia.
Qed.
Lemma lroom3_app_intro : forall l1 l2 c p b, lroom3 l2 (c + Z.of_nat (length l1)) (p + psum l1) (b + nbig l1) -> lroom3 (l1 ++ l2) c p b.
Proof. intros l1 l2 c p b (H1 & H2 & H3). unfold lroom3. rewrite length_app, Nat2Z.inj_add, psum_app, nbig_app. lia. Qed.
Lemma live_caps_cons : forall l p n, live_room l n -> live_caps ((p, n) :: l).
Proof.
  intros l p n (H1 & H2 & H3). unfold live_caps. cbn [length psum snd]. rewrite nbig_cons. unfold isbig. cbn [snd].
  split; [lia|]. split; [lia|]. destruct (Z.leb_spec n 64512); destruct (Z.ltb_spec 64512 n); lia.
Qed.
Definition FRAMES_MAX : nat := 512.   (* [comment removed for export] *)
(* [comment removed for export] *)
Definition mcost (n : Z) : Z := if n <=? 64512 then 0 else 2 * n + 16384.

(* [comment removed for export] *)
Definition e_malloc : Z := 0x1c4094.        (* [comment removed for export] *)
Definition e_free : Z := 0x1c4090.          (* [comment removed for export] *)
Definition e_calloc : Z := 0x1c4098.        (* [comment removed for export] *)
Definition e_realloc : Z := 0x1c409c.       (* [comment removed for export] *)
Definition e_strlen : Z := 0x1ad618.        (* [comment removed for export] *)
Definition e_strnlen : Z := 0x1ad61c.       (* [comment removed for export] *)
Definition e_strncmp : Z := 0x1ad624.       (* [comment removed for export] *)
Definition e_memchr : Z := 0x1ad640.        (* [comment removed for export] *)
Definition e_memset : Z := 0x1c29c8.        (* [comment removed for export] *)
Definition e_memcpy : Z := 0x1c29cc.        (* [comment removed for export] *)
Definition e_asan_memcpy : Z := 0x1c29d0.   (* [comment removed for export] *)
Definition e_asan_memset : Z := 0x1c2e6c.   (* [comment removed for export] *)
Definition e_read : Z := 0x1ad648.          (* [comment removed for export] *)
Definition e_fwrite : Z := 0x1ad650.        (* [comment removed for export] *)
Definition e_vprintf : Z := 0x1ad664.       (* [comment removed for export] *)
Definition e_vfprintf : Z := 0x1ad668.      (* [comment removed for export] *)
Definition e_fprintf : Z := 0x1ad670.       (* [comment removed for export] *)
(* [comment removed for export] *)
Definition e_stack_malloc (k : nat) : Z :=
  match k with 0%nat => 0x1a746c | 1%nat => 0x1a75e0 | 2%nat => 0x1a7770 | 3%nat => 0x1a790c | _ => 0x1a7ab8 end.   (* [comment removed for export] *)
(* [comment removed for export] *)
Definition set_shadow_vals : list Z := [0; 1; 2; 3; 4; 5; 6; 7; 0xf1; 0xf2; 0xf3; 0xf5; 0xf8].
Definition e_set_shadow (v : Z) : Z :=
  match v with
  | 0 => 0x1c62cc | 1 => 0x1c62e4 | 2 => 0x1c62fc | 3 => 0x1c6314 | 4 => 0x1c632c | 5 => 0x1c6344 | 6 => 0x1c635c
  | 7 => 0x1c6374 | 241 => 0x1c638c | 242 => 0x1c63a4 | 243 => 0x1c63bc | 245 => 0x1c63d4 | _ => 0x1c63ec
  end.

(* [comment removed for export] *)
Definition fs_size (k : nat) : Z := Z.shiftl 64 (Z.of_nat k).

(* [comment removed for export] *)

(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)

Record rt_sig : Type := mkRTS {
  rts : Type;
  ART : rts -> mem -> Prop;               (* [comment removed for export] *)
  ARTM : rts -> Model -> Prop;            (* [comment removed for export] *)
  rt_live : rts -> list (Z * Z);          (* [comment removed for export] *)
  rt_frames : rts -> list (Z * nat);      (* [comment removed for export] *)
  rt_allow : rts -> list (Z * Z);         (* [comment removed for export] *)
  rt_sp0 : rts -> Z;                      (* [comment removed for export] *)
  rt_credit : rts -> Z                    (* [comment removed for export] *)
}.

(* [comment removed for export] *)
Definition fdfs_only (PMc : Model -> Prop) : Prop :=
  forall mo mo', m_fds mo' = m_fds mo -> m_fs mo' = m_fs mo -> PMc mo -> PMc mo'.

(* [comment removed for export] *)
Definition ASTA (RT : rt_sig) (Σ : rts RT) (PMc : Model -> Prop) (Pm : machine_state -> Prop) : config -> Prop :=
  AST SEGTOP_A (rt_allow RT Σ) Pm (fun mo => ARTM RT Σ mo /\ PMc mo).

(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)
Definition CLIENT_STATIC : list (Z * Z) :=   (* [comment removed for export] *)
  [(0x5aebc8, 0x66e9d8); (0xb94690, 0xba4690); (0xba4690, 0xbcacd0)].
(* [comment removed for export] *)
Definition RT_STATIC : list (Z * Z) :=   (* [comment removed for export] *)
  [(0xba9398, 0xba93a0); (0xba93e8, 0xba9430); (0xbc96b0, 0xbc96b8); (0xbca798, 0xbca7a0)].

Definition in_ranges (l : list (Z * Z)) (a : Z) : Prop := exists lo hi, In (lo, hi) l /\ lo <= a < hi.
Definition client_static (a : Z) : Prop := in_ranges CLIENT_STATIC a /\ ~ in_ranges RT_STATIC a.

Definition in_live (live : list (Z * Z)) (a : Z) : Prop := exists p n, In (p, n) live /\ p <= a < p + n.
(* [comment removed for export] *)
Definition in_fframe (frames : list (Z * nat)) (a : Z) : Prop :=
  exists f k, In (f, k) frames /\ f <= a < f + fs_size k - 8.
(* [comment removed for export] *)
Definition in_fframe_shadow (frames : list (Z * nat)) (a : Z) : Prop :=
  exists f k, In (f, k) frames /\ shad f <= a < shad (f + fs_size k).

Definition aclient (live : list (Z * Z)) (frames : list (Z * nat)) (sp : Z) (a : Z) : Prop :=
  (sp <= a < USTACK_TOP) \/ client_static a \/ in_live live a \/ in_fframe frames a \/ in_fframe_shadow frames a.

(* [comment removed for export] *)
Definition rt_pres (live : list (Z * Z)) (frames : list (Z * nat)) (sp : Z) (m m' : mem) : Prop :=
  forall a : word, aclient live frames sp (bv_unsigned a) -> m' a = m a.
(* [comment removed for export] *)
Definition rt_pres_ex (live : list (Z * Z)) (frames : list (Z * nat)) (sp : Z) (d n : Z) (m m' : mem) : Prop :=
  forall a : word, aclient live frames sp (bv_unsigned a) -> ~ (d <= bv_unsigned a < d + n) -> m' a = m a.

(* [comment removed for export] *)
Definition rng_class (RT : rt_sig) (Σ : rts RT) (s n : Z) : Prop :=
  (exists p k, In (p, k) (rt_live RT Σ) /\ p <= s /\ s + n <= p + k)
  \/ (exists f k, In (f, k) (rt_frames RT Σ) /\ f <= s /\ s + n <= f + fs_size k - 8)
  \/ (rt_sp0 RT Σ - STACK_WIN + 64 <= s /\ s + n <= USTACK_TOP - 16)
  \/ (0x10000 <= s /\ s + n <= SEGTOP_A).
(* [comment removed for export] *)


(* [comment removed for export] *)
Definition unwind_ok (ra s0 sp : word) : Prop :=
  In (bv_unsigned ra) ALLOC_RAS
  /\ (bv_unsigned s0 < bv_unsigned sp \/ bv_unsigned s0 mod 8 <> 0 \/ 2^63 <= bv_unsigned s0).
(* [comment removed for export] *)


(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)

(* [comment removed for export] *)

(* [comment removed for export] *)


(* [comment removed for export] *)


(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)

Section Contracts.
Variable RT : rt_sig.
(* [comment removed for export] *)

(* [comment removed for export] *)

(* [comment removed for export] *)
(* [comment removed for export] *)



(* [comment removed for export] *)
Definition live_remove (p : Z) (live : list (Z * Z)) : list (Z * Z) := filter (fun e => negb (fst e =? p)) live.
(* [comment removed for export] *)
Lemma psum_filter_le : forall f l, Forall (fun e => 0 <= snd e) l -> psum (List.filter f l) <= psum l.
Proof.
  intros f l HF. induction l as [|e l IH]; cbn [List.filter psum]; [lia|]. apply Forall_cons_iff in HF as [He HF]. specialize (IH HF).
  pose proof (lw_nonneg (snd e)). destruct (f e); cbn [psum]; lia.
Qed.
Lemma nbig_filter_le : forall f l, nbig (List.filter f l) <= nbig l.
Proof.
  intros f l. unfold nbig. induction l as [|e l IH]; cbn [List.filter]; [lia|]. destruct (f e); cbn [List.filter]; destruct (isbig e); cbn [length]; rewrite ?Nat2Z.inj_succ; lia.
Qed.
Lemma length_filter_le : forall (f : Z * Z -> bool) l, (length (List.filter f l) <= length l)%nat.
Proof. intros f l. induction l as [|e l IH]; cbn [List.filter]; [lia|]. destruct (f e); cbn [length]; lia. Qed.
Lemma live_remove_eq : forall p l, live_remove p l = List.filter (fun e => negb (fst e =? p)) l.
Proof.
  intros p l. unfold live_remove. induction l as [|e l IH]; [reflexivity|].
  cbn in *. rewrite <- IH. destruct (fst e =? p); reflexivity.
Qed.
Lemma lroom3_remove : forall l q c p b, lroom3 l c p b -> lroom3 (live_remove q l) c p b.
Proof.
  intros l q c p b (H1 & H2 & H3). unfold lroom3. rewrite live_remove_eq.
  assert (HF : Forall (fun e : Z * Z => 0 <= lw (snd e)) l) by (apply Forall_forall; intros e _; apply lw_nonneg).
  assert (P : psum (List.filter (fun e => negb (fst e =? q)) l) <= psum l).
  { clear - HF. induction l as [|e l IH]; cbn [List.filter psum]; [lia|]. apply Forall_cons_iff in HF as [He HF]. specialize (IH HF). destruct (negb (fst e =? q)); cbn [psum]; lia. }
  pose proof (nbig_filter_le (fun e => negb (fst e =? q)) l). pose proof (length_filter_le (fun e => negb (fst e =? q)) l). lia.
Qed.
Lemma live_caps_remove : forall l p, Forall (fun e => 0 <= snd e) l -> live_caps l -> live_caps (live_remove p l).
Proof.
  intros l p HF (H1 & H2 & H3). unfold live_caps. rewrite live_remove_eq.
  pose proof (psum_filter_le (fun e => negb (fst e =? p)) l HF). pose proof (nbig_filter_le (fun e => negb (fst e =? p)) l).
  pose proof (length_filter_le (fun e => negb (fst e =? p)) l) as L.
  lia.
Qed.
(* [comment removed for export] *)


(* [comment removed for export] *)


(* [comment removed for export] *)

(* [comment removed for export] *)


(* [comment removed for export] *)

(* [comment removed for export] *)

(* [comment removed for export] *)

(* [comment removed for export] *)


(* [comment removed for export] *)
(* [comment removed for export] *)
Definition e_posix_memalign : Z := 0x1c40a0.   (* [comment removed for export] *)
Definition PMA_ALIGN : Z := 64.
Definition PMA_SIZE : Z := 32768.

(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)

(* [comment removed for export] *)

(* [comment removed for export] *)

(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)

(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)

(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)


(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)
Definition RELRO_LO : Z := 0x533000.
Definition RELRO_HI : Z := 0x5ac000.
 (* [comment removed for export] *)
(* [comment removed for export] *)


(* [comment removed for export] *)
Definition ACC_LITS : list (Z * Z) := [].
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)


End Contracts.

(* [comment removed for export] *)
(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)
Definition PMfd (F0 : list (word * FdEntry)) (fs0 : Fs) : Model -> Prop := fun mo => m_fds mo = F0 /\ m_fs mo = fs0.

Lemma PMfd_fdfs_only : forall F0 fs0, fdfs_only (PMfd F0 fs0).
Proof. intros F0 fs0 mo mo' E1 E2 [H1 H2]. split; congruence. Qed.

(* [comment removed for export] *)
Definition rt_pres_fp (live : list (Z * Z)) (frames : list (Z * nat)) (sp : Z) (W : list (Z * Z)) (m m' : mem) : Prop :=
  forall a : word, aclient live frames sp (bv_unsigned a) -> outside W (bv_unsigned a) -> m' a = m a.

(* [comment removed for export] *)
Definition errno_cell (tp : word) : Z := bv_unsigned tp - 164.

(* [comment removed for export] *)
Definition FMT_usage : Z := 0x212eb.          (* [comment removed for export] *)
Definition FMT_cannot_open : Z := 0x3cd30.    (* [comment removed for export] *)
Definition FMT_read_error : Z := 0x3cd45.     (* [comment removed for export] *)
Definition FMT_too_big : Z := 0x2efb9.        (* [comment removed for export] *)
Definition FMT_emit : Z := 0x1db09.           (* [comment removed for export] *)
(* [comment removed for export] *)
Definition STDERR_FILE : Z := 0x5af428.

(* [comment removed for export] *)
Inductive fp_case : Type :=
| FPusage (argv0 : Z) (s : list byte)       (* [comment removed for export] *)
| FPcannot_open (path : Z) (s : list byte)  (* [comment removed for export] *)
| FPread_error (path : Z) (s : list byte)   (* [comment removed for export] *)
| FPtoo_big.                                (* [comment removed for export] *)

Definition fp_fmt (c : fp_case) : Z :=
  match c with FPusage _ _ => FMT_usage | FPcannot_open _ _ => FMT_cannot_open
             | FPread_error _ _ => FMT_read_error | FPtoo_big => FMT_too_big end.
Definition fp_arg (c : fp_case) : Z :=
  match c with FPusage a _ | FPcannot_open a _ | FPread_error a _ => a | FPtoo_big => 67108864 end.
(* [comment removed for export] *)
Definition fp_str (c : fp_case) : option (Z * list byte) :=
  match c with FPusage a s | FPcannot_open a s | FPread_error a s => Some (a, s) | FPtoo_big => None end.
(* [comment removed for export] *)
Definition fp_msg (c : fp_case) : list Z :=
  match c with
  | FPusage _ s => msg_usage (map bv_unsigned s)
  | FPcannot_open _ s => msg_cannot_open (map bv_unsigned s)
  | FPread_error _ s => msg_read_error (map bv_unsigned s)
  | FPtoo_big => msg_too_big
  end.

(* [comment removed for export] *)
Definition so_lines (k : nat) : stdout_st := mkStdout true (zeros_out k) false false.
(* [comment removed for export] *)


Section IO.
Variable RT : rt_sig.
(* [comment removed for export] *)
Variable OUT_rep : stdout_st -> mem -> Prop.
Variable ERR_rep : mem -> Prop.
(* [comment removed for export] *)
Variable IO_FP : list (Z * Z).
(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)
(* [comment removed for export] *)

(* [comment removed for export] *)
(* [comment removed for export] *)


(* [comment removed for export] *)
Definition emit0_out (so : stdout_st) : list Z := if so_first so then [48; 10] else [].
Definition emit0_next (so : stdout_st) : stdout_st :=
  if so_first so then so_lines 0 else mkStdout true (so_buf so ++ [48; 10]) false false.
(* [comment removed for export] *)
(* [comment removed for export] *)



End IO.
