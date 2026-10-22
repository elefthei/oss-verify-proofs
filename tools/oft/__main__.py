"""./oft <command> ...  (see tools/oft/README.md)"""
import argparse
import os
import sys

from . import check, fetch, generate, lint


def _root(a):
    return os.path.abspath(a.root)


def cmd_generate(a):
    return generate.run(_root(a), check=a.check)


def cmd_lint(a):
    changed = None
    if a.changed:
        with open(a.changed, encoding="utf-8") as f:
            changed = [l.strip() for l in f if l.strip()]
    found = lint.run(_root(a), changed=changed, pr_kind=a.pr_kind, skeleton=a.skeleton, release=a.release)
    for f in found:
        print(f)
    print("oft lint: %d finding(s)" % len(found))
    return 1 if found else 0


def cmd_fetch(a):
    return fetch.fetch(_root(a), a.projects, source=a.source, all_projects=a.all, only_check_assets=a.assets_only,
                       release=a.release, listing=a.list)


def cmd_verify_sha(a):
    return fetch.verify_sha(_root(a), a.projects)


def cmd_check(a):
    return check.run(_root(a), a.units, base=a.base, parts=a.parts, allowed=a.allowed, qemu=a.qemu,
                     timeout=a.timeout, rocqchk=a.rocqchk)


def cmd_plan(a):
    return check.plan(_root(a), a.changed, a.max_jobs)


def main(argv=None):
    p = argparse.ArgumentParser(prog="oft", description="the tools of oss-fuzz-theorems")
    p.add_argument("--root", default=".", help="the repository root (default: .)")
    sub = p.add_subparsers(dest="cmd", required=True)

    g = sub.add_parser("generate", help="render every generated file from the facts")
    g.add_argument("--check", action="store_true", help="compare instead of writing")
    g.set_defaults(fn=cmd_generate)

    li = sub.add_parser("lint", help="the repository's rules (tools/oft/README.md)")
    li.add_argument("--changed", help="a file listing the paths a pull request changes")
    li.add_argument("--pr-kind", choices=["release", "maintainer", "contributor"], default="maintainer")
    li.add_argument("--skeleton", action="store_true",
                    help="accept a tree with no facts yet (no release.yaml, no projects/)")
    li.add_argument("--release", action="store_true",
                    help="what only a release must satisfy: no placeholder digest or commit (all zeros)")
    li.set_defaults(fn=cmd_lint)

    f = sub.add_parser("fetch", help="download a project's binaries and check every SHA-256")
    f.add_argument("projects", nargs="*")
    f.add_argument("--all", action="store_true", help="every available project")
    f.add_argument("--source", help="a directory or URL prefix to take the release assets from")
    f.add_argument("--assets-only", action="store_true",
                   help="check every archive's SHA-256 (binaries and source) without unpacking")
    f.add_argument("--release", help="only the projects whose assets are attached to this release tag")
    f.add_argument("--list", action="store_true", help="print <release> <file> <sha256> per asset; fetch nothing")
    f.set_defaults(fn=cmd_fetch)

    v = sub.add_parser("verify-sha", help="check fetched binaries against harness.yaml")
    v.add_argument("projects", nargs="+")
    v.set_defaults(fn=cmd_verify_sha)

    c = sub.add_parser("check", help="build and check statements, proofs and counterexamples")
    c.add_argument("units", nargs="+", metavar="PROJECT/HARNESS")
    c.add_argument("--base", help="a tree built from the base branch: statements come from its _build")
    c.add_argument("--parts", default="statements,proofs,counterexamples")
    c.add_argument("--allowed", default="toolchain/allowed-axioms.txt")
    c.add_argument("--qemu", default="qemu-riscv64")
    c.add_argument("--timeout", type=int, default=600, help="seconds per counterexample run")
    c.add_argument("--rocqchk", action="store_true",
                   help="also re-check the compiled libraries with rocqchk (slow: hours for a large proof)")
    c.set_defaults(fn=cmd_check)

    pl = sub.add_parser("plan", help="the harnesses a change affects, as JSON for CI")
    pl.add_argument("--changed", required=True, help="a file listing the changed paths")
    pl.add_argument("--max-jobs", type=int, default=20)
    pl.set_defaults(fn=cmd_plan)

    a = p.parse_args(argv)
    return a.fn(a)


if __name__ == "__main__":
    sys.exit(main())
