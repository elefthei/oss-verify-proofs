# tests: the controls

Everything here is ours (MIT) and small.  `dune build` compiles the positive
controls; `./tests/check.sh` then runs, on every control, the same check CI
runs on a proof (docs/checking.md), and fails unless each positive control
passes and each negative control is refused for the reason it states.
`./tests/check.sh --rocqchk` also re-checks this repository's libraries and
the candidate's with rocqchk, loading the installed toolchain by digest;
`./tests/check.sh --full` also re-checks, in one more rocqchk run, everything
the positive controls depend on, which for these controls includes
linux-process-semantics' own test library: about 15 minutes and 2 GB of
memory in the checker image.

## The toy binaries (`toy/`)

`toy/make_elf.py` writes three static riscv64 Linux programs of 132 or 136
bytes, one PT_LOAD segment each.  They are not stored: dune writes them into
`_build/` and refuses each unless its SHA-256 is the one recorded beside it
(`toy/<name>/*.sha256`).  They run under `qemu-riscv64` 10 with the exit
status the statements predict.

| directory | builds | what the program does |
|---|---|---|
| `toy/exit0/` | `plain` (exit0), `padded` (exit0_nop) | exit_group(0); the second after a no-op |
| `toy/exit1/` | `plain` (exit1) | exit_group(1) |

Each directory has an `Images.v` and a `Statements.v` of the same form the
generated files of every harness have, using the shapes of
`theories/Shapes.v`.

## Positive controls (`proofs/`), which must pass

| statement | shape | result |
|---|---|---|
| `toy/exit0/plain_halts` | `halts_within_budget` | proved (`Proof.v`) |
| `toy/exit0/plain_halts_may_fail` | `halts_may_fail` | proved |
| `toy/exit0/padded_agrees` | `agrees` | proved: two different binaries with equal traces |
| `toy/exit1/plain_halts` | `halts_within_budget` | refuted (`Refutation.v`): exit status 1 is not allowed |

`proofs/lib/Exit0Run.v` holds what they share.  They use lps's executable
checker (`LinuxProcessSemantics.LinuxProcessSem.Checks`) and nothing else.

## Negative controls (`negative/`), which must be refused

Each directory holds a candidate `Proof.v` and a `claim.yaml` naming the
statement it claims, the step at which the check must refuse it, and a string
the refusal must contain.

| control | refused at | because |
|---|---|---|
| `admitted` | axioms | the theorem is `Admitted`, so it is an axiom |
| `extra_axiom` | axioms | it declares `Axiom cheat : False` |
| `admit_axiom` | axioms | it uses `Stdlib.Compat.AdmitAxiom.proof_admitted`, an axiom of the standard library that is `False` |
| `wrong_statement` | wrapper | it proves `plain_halts_may_fail` under the name `plain_halts` expects |
| `doctored_statement` | wrapper | it was compiled against a `Statements.v` in which `plain_halts` is `True` |

`toy/Controls.v` holds the controls that live inside Rocq: images that are not
well formed are refused by `check_image_wf`, and a shape stated with another
reading, budget or exit set is not equal to lps's definition.

## The axiom allowlist

`toolchain/allowed-axioms.txt` is the list of axioms a proof may use: the
primitive-type axioms of Rocq's core library (63-bit integers, strings,
arrays) and six axioms of the standard library: `Classical_Prop.classic`,
`FunctionalExtensionality.functional_extensionality_dep`,
`IndefiniteDescription.constructive_indefinite_description`,
`PropExtensionality.propositional_extensionality`, and
`ClassicalDedekindReals.sig_forall_dec` and `sig_not_dec`.  It is NOT every
axiom of every installed library: that set contains
`Stdlib.Compat.AdmitAxiom.proof_admitted`, which is `False`, and the
`admit_axiom` control is there to keep it out.
