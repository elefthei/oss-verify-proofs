# Contributing

Proofs go in `proofs/<project>/<harness>/<statement>/` and counterexamples in
`counterexamples/<project>/<harness>/<statement>/`
([docs/proving.md](docs/proving.md)); what a proof must meet to enter a
release, and how a maintainer checks it, is in
[docs/adding-a-proof.md](docs/adding-a-proof.md). Run `./oft generate` and
commit what it renders with your change, since a new proof changes the
statuses in the pages and the index; `./oft lint` and
`./oft check <project>/<harness>` run what CI runs. Corrections to a harness
summary, a check or a reason are welcome as issues. Contributions are under the
MIT licence, with a DCO sign-off (`git commit -s`). A pull request from outside
may touch only `proofs/`, `counterexamples/`, `docs/` and the rendered files
that follow from them. New projects are enrolled in
[theorem-labs/oss-verify](https://github.com/theorem-labs/oss-verify), not here.
