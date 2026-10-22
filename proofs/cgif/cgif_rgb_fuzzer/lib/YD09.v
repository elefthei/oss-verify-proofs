(* Copyright 2026 Anthropic PBC *)
(* SPDX-License-Identifier: Apache-2.0 OR MIT *)
(* Modified by Theorem Labs, 2026-10: ported to the binaries of release 2026.10.0 and LPS 2afba80c; the theorem statements are restated in the form this release states them. *)
From Stdlib Require Import ZArith NArith List Lia Bool.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase RiscvSemantics MemImageType StackLayout Fs State Monad Specs Run.
From LinuxProcessSemantics.Riscv Require Import Prelude Instr.
From OssFuzzTheorems.Proofs.cgif.cgif_rgb_fuzzer.lib Require Import YK11 YK00 YK0s YK15 YK18 YN02 YQ0j YQ0b YK05 YA0i YA0l YA0e YG00 YG01 YG0m YG0h YG10 YG0u YG0d YC04 YB0z YF8z YF90 YD19 YD0f YD0l YD0g YD05.
From OssFuzzTheorems.Proofs.cgif.cgif_rgb_fuzzer.lib Require Import YG0n YG0o YG0p.
From OssFuzzTheorems.Proofs.cgif.cgif_rgb_fuzzer.lib Require Import YN05.
Import ListNotations.
Unset Lia Cache. Unset Nia Cache.
Open Scope Z_scope.

Lemma krefusable_refusable : forall q, krefusable q = true -> refusable q = true.
Proof. intros q. destruct q; intro H; (exact H || discriminate H). Qed.
Lemma aGranted_one : forall z, aGranted z = true -> z = 1.
Proof. intros z H. unfold aGranted in H. apply Z.eqb_eq in H. exact H. Qed.
Section d. Context {fx : YK11.FPState} {rc : YN05.RunCeil}.
Section e.
Variable B : asyms.
Hypothesis HB : TraSyms B.
Hypothesis ARL : AR_laws trasegs B.
Hypothesis ML : model_laws (as_universe B).
Hypothesis AMALLOC : amalloc_realizes trasegs B.
Section g.
Variables (ly : alayout) (S : astate) (W0 : world trasegs) (regs : bvmap 5 word) (mem : word -> option byte) (md : Model) (n : Z).
Variables (KA KB : TSet) (t0 : itree astate (sptr * astate)) (trc : list Z).
Hypothesis Htrc : In trc (as_universe B).
Hypothesis KNULL : forall ly' S' W' regs' mem' md' tr,
apath t0 tr (PNull, S') ->
acall_post trasegs B ASTACK ly S W0 regs mem md (fun _ => False) ly' S' W' regs' mem' md' ->
getr regs' 10%bv = w64 0 -> wle W0 W' -> AI trasegs (w_H W') (w_A W') md' ->
srealizes trasegs (cfg_at trasegs (raZ regs) regs' mem' md') KA.
Hypothesis KBLK : forall ly' S' W' regs' mem' md' tr (p : sptr),
p <> PNull -> apath t0 tr (p, S') ->
acall_post trasegs B ASTACK ly S W0 regs mem md
(fun a => sptr_addr B ly' p <= a < sptr_addr B ly' p + req_size n) ly' S' W' regs' mem' md' ->
getr regs' 10%bv = w64 (sptr_addr B ly' p) -> wle W0 W' -> AI trasegs (w_H W') (w_A W') md' ->
srealizes trasegs (cfg_at trasegs (raZ regs) regs' mem' md') KB.
Definition interp (m : md3) : TSet := match m with MA => KA | MB => KB | MAB => t_alt2 KA KB end.
#[local] Notation Q := (malloc_leaf trasegs B ly S W0 regs mem md n).
Lemma interp_mle : forall a b tr, mle a b -> interp a tr -> interp b tr.
Proof. intros a b tr [-> | ->] H; [exact H|]. destruct a; cbn in *; unfold t_alt2; tauto. Qed.
Lemma interp_nil : forall a b, mle a b -> interp a [] -> interp b [].
Proof. intros a b tr H. exact (interp_mle a b [] tr H). Qed.
Lemma mle_join_l : forall a b, mle a (join a b). Proof. intros [] []; cbv; auto. Qed.
Lemma mle_join_r : forall a b, mle b (join a b). Proof. intros [] []; cbv; auto. Qed.
Lemma interp_join : forall a b tr, interp (join a b) tr -> interp a tr \/ interp b tr.
Proof. intros [] [] tr; cbn; unfold t_alt2; tauto. Qed.
Lemma leaf_srz : forall m p S' W c pre,
tm m (IRet (p, S')) -> wle W0 W -> AI trasegs (w_H W) (w_A W) (cfg_model c) ->
(forall tr r, apath (IRet (p, S')) tr r -> apath t0 (pre ++ tr) r) ->
SRr trasegs W c (Q (p, S')) -> srealizes trasegs c (interp m).
Proof.
intros m p S' W c pre Htm Hle HAI Hpath HS.
apply (SRr_srealizes trasegs W c _ _ HS HAI). intros W' c' Hle' HAI' (ly' & regs' & mem' & md' & -> & HPOST & Ha0 & _). cbn [fst snd] in HPOST, Ha0.
cbn [cfg_model] in HAI'.
assert (Hp0 : apath t0 (pre ++ []) (p, S')) by (apply Hpath; reflexivity).
inversion Htm as [r m' HL | | | |]; subst. destruct HL as [[Hp ->] | [Hp ->]]; cbn [fst] in Hp; [subst p|].
- cbn. apply (KNULL ly' S' W' regs' mem' md' (pre ++ []) Hp0); [| rewrite Ha0; reflexivity | exact (wle_trans _ _ _ _ Hle Hle') | exact HAI'].
pose proof HPOST as (P1 & P2 & P3 & P4 & P5 & P6 & P7).
split; [exact P1|]. split; [exact P2|]. split; [exact P3|]. split; [exact P4|]. split; [exact P5|]. split; [| exact P7].
intros a Ha Ho Ho' Hs _. apply P6; [exact Ha | exact Ho | exact Ho' | exact Hs |]. intros [X _]. exact (X eq_refl).
- cbn. apply (KBLK ly' S' W' regs' mem' md' (pre ++ []) p Hp Hp0); [| exact Ha0 | exact (wle_trans _ _ _ _ Hle Hle') | exact HAI'].
pose proof HPOST as (P1 & P2 & P3 & P4 & P5 & P6 & P7).
split; [exact P1|]. split; [exact P2|]. split; [exact P3|]. split; [exact P4|]. split; [exact P5|]. split; [| exact P7].
intros a Ha Ho Ho' Hs HE. apply P6; [exact Ha | exact Ho | exact Ho' | exact Hs |]. intros [_ X]. exact (HE X).
Qed.
Lemma node_exact : forall (I : Type) (c1 : config) (nx : I -> config) (T : I -> TSet) (i0 : I) (R : TSet),
node_ok trasegs c1 I (fun _ => []) nx -> (forall i, srealizes trasegs (nx i) (T i)) ->
R [] -> (forall i tr, T i tr -> tr = [] \/ R tr) -> (forall tr, R tr -> exists i, T i tr) ->
srealizes trasegs c1 R.
Proof.
intros I c1 nx T i0 R Hnode HT HR0 Hsub Hcov.
apply (srz_conseq trasegs c1 (t_alt (fun i => t_emit [] (T i)))).
{ exact (srz_node trasegs c1 I (fun _ => []) nx T i0 Hnode HT). }
intros tr. split.
- intros [i Hi]. apply (proj1 (t_emit_nil_eq (T i) (srealizes_nonempty trasegs _ _ (HT i)) tr)) in Hi.
destruct (Hsub i tr Hi) as [-> | H]; [exact HR0 | exact H].
- intros Htr. destruct (Hcov tr Htr) as [i Hi]. exists i.
apply (proj2 (t_emit_nil_eq (T i) (srealizes_nonempty trasegs _ _ (HT i)) tr)). exact Hi.
Qed.
Lemma amreal_tm : forall t m W c pre,
tm m t -> asafe t -> amreal trasegs t W c Q -> AI trasegs (w_H W) (w_A W) (cfg_model c) -> wle W0 W ->
(forall tr r, apath t tr r -> apath t0 (pre ++ tr) r) ->
srealizes trasegs c (interp m).
Proof.
induction t as [[p S'] | q snap k IH | pc | f]; intros m W c pre Htm Hsafe HR HAI Hle Hpath.
- exact (leaf_srz m p S' W c pre Htm Hle HAI Hpath HR).
- cbn in Hsafe.
assert (KN : iskernel q = true ->
SRr trasegs W c (fun W1 c1 => exists (I : Type) (nx : I -> config) (bit : I -> Z) (sp : I -> bool) (i0 : I),
node_ok trasegs c1 I (fun _ => []) nx /\
(forall i, AI trasegs (w_H W1) (w_A W1) (cfg_model c1) -> AI trasegs (w_H W1) (w_A W1) (cfg_model (nx i))) /\
(forall i, aok snap q (bit i)) /\ sp i0 = false /\ bit i0 = 1 /\
(refusable q = true -> exists i1, sp i1 = false /\ bit i1 = 0) /\
(forall i, sp i = true -> AI trasegs (w_H W1) (w_A W1) (cfg_model (nx i)) -> srealizes trasegs (nx i) t_nil) /\
(forall i, sp i = false -> amreal trasegs (k (bit i)) W1 (nx i) Q))).
{ intros KQ. cbn in HR. destruct q; try exact HR. discriminate KQ. }
assert (BR : forall W1 (I : Type) (nx : I -> config) (bit : I -> Z) (i : I) mi,
wle W W1 -> AI trasegs (w_H W1) (w_A W1) (cfg_model (nx i)) -> aok snap q (bit i) ->
tm mi (k (bit i)) -> amreal trasegs (k (bit i)) W1 (nx i) Q -> srealizes trasegs (nx i) (interp mi)).
{ intros W1 I nx bit i mi Hle1 HAIi Hz Hti HRi.
apply (IH (bit i) mi W1 (nx i) (pre ++ [(q, bit i)]) Hti (Hsafe _ Hz) HRi HAIi (wle_trans _ _ _ _ Hle Hle1)).
intros tr r Hp. rewrite <- app_assoc. apply Hpath. cbn. split; [reflexivity|]. split; [exact Hz | exact Hp]. }
inversion Htm as [| | m' q' snap' k' KQ T1 SP | m0 m1 q' snap' k' KQ RQ T1 T0 | m' tr snap' k' TD]; subst.
+
apply (SRr_srealizes trasegs W c _ _ (KN KQ) HAI).
intros W1 c1 Hle1 HAI1 (I & nx & bit & sp & i0 & Hnode & HAIs & Haok & Hsp0 & Hbit0 & Href & Hspins & Hk).
set (T := fun i : I => if sp i then t_nil else if aGranted (bit i) then interp m else t_nil).
assert (HT : forall i, srealizes trasegs (nx i) (T i)).
{ intros i. subst T. cbn beta. destruct (sp i) eqn:Es; [apply Hspins; [exact Es | apply HAIs; exact HAI1] |].
pose proof (Hk i Es) as HRi. destruct (aGranted (bit i)) eqn:Eg.
- apply (BR W1 I nx bit i m Hle1 (HAIs i HAI1) (Haok i)); [| exact HRi]. rewrite (aGranted_one _ Eg). exact T1.
- specialize (SP (bit i) (Haok i) Eg). destruct (k (bit i)); try discriminate SP. cbn in HRi. apply HRi. apply HAIs. exact HAI1. }
assert (N1 : interp m []).
{ pose proof (HT i0) as X. subst T. cbn beta in X. rewrite Hsp0, Hbit0 in X. cbn in X. exact (srealizes_nonempty trasegs _ _ X). }
apply (node_exact I c1 nx T i0 (interp m) Hnode HT N1).
* intros i tr' Hi. subst T. cbn beta in Hi. destruct (sp i); [left; unfold t_nil in Hi; (exact Hi || (symmetry; exact Hi))|].
destruct (aGranted (bit i)); [right; exact Hi | left; unfold t_nil in Hi; (exact Hi || (symmetry; exact Hi))].
* intros tr' Htr. exists i0. subst T. cbn beta. rewrite Hsp0, Hbit0. cbn. exact Htr.
+
apply (SRr_srealizes trasegs W c _ _ (KN KQ) HAI).
intros W1 c1 Hle1 HAI1 (I & nx & bit & sp & i0 & Hnode & HAIs & Haok & Hsp0 & Hbit0 & Href & Hspins & Hk).
set (T := fun i : I => if sp i then t_nil else if aGranted (bit i) then interp m1 else interp m0).
assert (HT : forall i, srealizes trasegs (nx i) (T i)).
{ intros i. subst T. cbn beta. destruct (sp i) eqn:Es; [apply Hspins; [exact Es | apply HAIs; exact HAI1] |].
pose proof (Hk i Es) as HRi. destruct (aGranted (bit i)) eqn:Eg.
- apply (BR W1 I nx bit i m1 Hle1 (HAIs i HAI1) (Haok i)); [| exact HRi]. rewrite (aGranted_one _ Eg). exact T1.
- apply (BR W1 I nx bit i m0 Hle1 (HAIs i HAI1) (Haok i)); [| exact HRi]. exact (T0 (bit i) (Haok i) Eg). }
assert (N1 : interp m1 []).
{ pose proof (HT i0) as X. subst T. cbn beta in X. rewrite Hsp0, Hbit0 in X. cbn in X. exact (srealizes_nonempty trasegs _ _ X). }
apply (node_exact I c1 nx T i0 (interp (join m0 m1)) Hnode HT (interp_nil _ _ (mle_join_r m0 m1) N1)).
* intros i tr' Hi. subst T. cbn beta in Hi. destruct (sp i); [left; unfold t_nil in Hi; (exact Hi || (symmetry; exact Hi))|]. right.
destruct (aGranted (bit i)); [exact (interp_mle _ _ _ (mle_join_r m0 m1) Hi) | exact (interp_mle _ _ _ (mle_join_l m0 m1) Hi)].
* intros tr' Htr. apply interp_join in Htr as [H0 | H1].
-- destruct (Href (krefusable_refusable q RQ)) as (i1 & Hsp1 & Hbit1).
exists i1. subst T. cbn beta. rewrite Hsp1, Hbit1. cbn. exact H0.
-- exists i0. subst T. cbn beta. rewrite Hsp0, Hbit0. cbn. exact H1.
+
cbn in HR. apply (SRr_srealizes trasegs W c _ _ HR HAI).
intros W1 c1 Hle1 HAI1 (z & Hz & HRz).
apply (IH z m W1 c1 (pre ++ [(KDepot tr, z)]) (TD z Hz) (Hsafe z Hz) HRz HAI1 (wle_trans _ _ _ _ Hle Hle1)).
intros tr' r Hp. rewrite <- app_assoc. apply Hpath. cbn. split; [reflexivity|]. split; [exact Hz | exact Hp].
- inversion Htm.
- cbn in Hsafe. destruct Hsafe.
Qed.
End g.
Theorem tra_malloc_site : malloc_site_tfa B.
Proof.
intros ly S W regs mem md n KA KB HPRE Ha0 Hn Hlive Htr2 Htr1 Hshape HAI KNULL KBLK.
pose proof (acall_pre_of_drv B _ _ _ _ _ _ HPRE) as HAP. pose proof HPRE as (HAR & _ & Hnev & _). pose proof (proj1 (drv_pre_regime B _ _ _ _ _ _ HPRE)) as HRB.
pose proof (am_wf _ _ _ _ (proj1 HAR)) as HWF.
set (trc := call_trace ly (pc_malloc_ra0 (as_code B)) regs []).
assert (Htr : In trc (as_universe B)).
{ subst trc. destruct (call_trace_drv ly regs (pc_malloc_ra0 (as_code B))) as [-> | ->]; assumption. }
pose proof (AMALLOC ly S W regs mem md n [] HAP Ha0 Hn Hlive Htr) as HREAL. fold trc in HREAL.
pose proof (malloc_tm_shape (as_universe B) n trc S HWF Hn Hshape) as HTM.
pose proof (atok_asafe _ _ _ (ml_malloc_big _ ML S n trc HWF HRB Hn Hlive Htr)) as HSAFE.
change (t_alt2 KA KB) with (interp KA KB MAB).
apply (amreal_tm ly S W regs mem md n KA KB (malloc n trc S)
(fun ly' S' W' regs' mem' md' tr Hp => KNULL ly' S' W' regs' mem' md' trc tr Htr Hp)
(fun ly' S' W' regs' mem' md' tr p Hp Hpath => KBLK ly' S' W' regs' mem' md' trc tr p Hp Htr Hpath)
(malloc n trc S) MAB W _ [] HTM HSAFE HREAL HAI (wle_refl _ W)).
intros tr r Hp. exact Hp.
Qed.
End e.
End d.
