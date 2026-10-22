(** * The input distribution for eigen / basicstuff_fuzzer

    [w] is a probability distribution (total mass [M = 1]) over finite process
    inputs: argv, envp, files and stdin.  The launch environment (user, groups,
    network, limits) is not drawn; the statements quantify over it.  An input is
    drawn like this:
    - 9/10: argv = ["basicstuff_fuzzer"; "input.bin"], no environment, empty
      stdin, and one file "input.bin": the 6 bytes 00 00 00 00 00 00 (the driver
      header: no config, no allocation mask) followed by n random bytes, with
      P(n) = p (1 - p)^n, p = 1/65537 (mean 65,536);
    - 1/50: a wrong argument count (argv of length 1 or 3) with an empty
      input.bin;
    - 1/50: argv = ["basicstuff_fuzzer"; input.bin] as in the first component,
      but with no file input.bin;
    - 3/50: anything at all, with weights that shrink with size, so that every
      finite input has positive weight.
    The first components exercise the driver's outcomes, and the last makes sure
    that no input is left out by having weight zero.  For a harness that expects
    structured input, almost every random payload is rejected early, so a bound
    under this distribution says mostly how the builds treat malformed input; it
    is not an estimate of risk on real inputs.  Built from the MeasureLib of
    linux-process-semantics; checked against [Measure.DISTRIBUTION] at the end
    of this file. *)
From Stdlib Require Import ZArith NArith List QArith.
From LinuxProcessSemantics.LinuxProcessSem Require Import BvBase Fs State.
From LinuxProcessSemantics.EquivalenceDefinition Require Import FinInput Measure MeasureLib.
Import ListNotations.
Open Scope bv_scope.

Definition prog : list byte :=
  [ Z_to_bv 8 98; Z_to_bv 8 97; Z_to_bv 8 115; Z_to_bv 8 105; Z_to_bv 8 99; Z_to_bv 8 115; Z_to_bv 8 116; Z_to_bv 8 117;
    Z_to_bv 8 102; Z_to_bv 8 102; Z_to_bv 8 95; Z_to_bv 8 102; Z_to_bv 8 117; Z_to_bv 8 122; Z_to_bv 8 122; Z_to_bv 8 101;
    Z_to_bv 8 114 ].
Definition path : Fs.path :=
  [ Z_to_bv 8 105; Z_to_bv 8 110; Z_to_bv 8 112; Z_to_bv 8 117; Z_to_bv 8 116; Z_to_bv 8 46; Z_to_bv 8 98; Z_to_bv 8 105;
    Z_to_bv 8 110 ].
Definition envp0 : list (list byte) := [].

Definition fs0 : Fs.Fs := [(path, [])].
Definition stdin0 : list byte := [].

Definition hdr : list byte :=
  [Z_to_bv 8 0; Z_to_bv 8 0; Z_to_bv 8 0; Z_to_bv 8 0; Z_to_bv 8 0; Z_to_bv 8 0].
Definition p : Q := (1 # 65537)%Q.
Lemma p_nonneg : (0 <= p)%Q.
Proof. apply Qlt_le_weak. reflexivity. Qed.
Lemma p_le_1 : (p <= 1)%Q.
Proof. apply Qlt_le_weak. reflexivity. Qed.
Definition payload : CoreDistribution :=
  file_geometric_prefix_argv1 hdr p prog envp0 fs0 path stdin0 p_nonneg p_le_1.
Definition m_payload : Q := (90 # 100)%Q.
Lemma m_payload_nonneg : (0 <= m_payload)%Q.
Proof. apply Qlt_le_weak. reflexivity. Qed.

Definition m_argv_arity_each : Q := (1 # 100)%Q.
Definition argv_arity_entries : list (FinCore * Q) :=
  [ (file_core [prog] envp0 fs0 path stdin0 [], m_argv_arity_each);
    (file_core [prog; path; [Z_to_bv 8 120]] envp0 fs0 path stdin0 [], m_argv_arity_each) ].
Lemma argv_arity_nonneg : forall e, List.In e argv_arity_entries -> (0 <= snd e)%Q.
Proof. apply entries_nonneg_of_forallb. reflexivity. Qed.
Definition argv_arity : CoreDistribution := finite_support argv_arity_entries argv_arity_nonneg.

Definition m_missing_file : Q := (2 # 100)%Q.
Definition missing_file_entries : list (FinCore * Q) :=
  [ (mkFinCore (path_argv prog path) envp0 [] stdin0, m_missing_file) ].
Lemma missing_file_nonneg : forall e, List.In e missing_file_entries -> (0 <= snd e)%Q.
Proof. apply entries_nonneg_of_forallb. reflexivity. Qed.
Definition missing_file : CoreDistribution := finite_support missing_file_entries missing_file_nonneg.

Definition base_half : Q := (1 # 2)%Q.
Lemma base_half_nonneg : (0 <= base_half)%Q.
Proof. apply Qlt_le_weak. reflexivity. Qed.
Lemma base_half_le_1 : (base_half <= 1)%Q.
Proof. apply Qlt_le_weak. reflexivity. Qed.
Definition base : CoreDistribution :=
  full_support_base base_half base_half base_half base_half base_half base_half base_half base_half
    base_half_nonneg base_half_le_1 base_half_nonneg base_half_le_1 base_half_nonneg base_half_le_1
    base_half_nonneg base_half_le_1 base_half_nonneg base_half_le_1 base_half_nonneg base_half_le_1
    base_half_nonneg base_half_le_1 base_half_nonneg base_half_le_1.
Definition m_base : Q := (6 # 100)%Q.
Lemma m_base_nonneg : (0 <= m_base)%Q.
Proof. apply Qlt_le_weak. reflexivity. Qed.

Definition components : list CoreDistribution :=
  [ cd_scale m_payload m_payload_nonneg payload; argv_arity; missing_file; cd_scale m_base m_base_nonneg base ].
Definition cd : CoreDistribution := cd_mix components.

Definition w : FinProcInput -> Q := cd_lift cd.
Definition M : Q := 100#100.
Definition w_nonneg : forall f, (0 <= w f)%Q := cd_lift_nonneg cd.
Lemma M_is : (cd_mass cd == M)%Q.
Proof. vm_compute. reflexivity. Qed.
Lemma M_nonneg : (0 <= M)%Q.
Proof. apply Qlt_le_weak. reflexivity. Qed.
Definition w_core_blind : forall f g, fin_core f = fin_core g -> (w f == w g)%Q :=
  cd_lift_core_blind cd.

Module Ascription <: Measure.DISTRIBUTION.
  Definition w := w.
  Definition M := M.
  Definition w_nonneg := w_nonneg.
  Definition M_nonneg := M_nonneg.
  Definition w_core_blind := w_core_blind.
End Ascription.
