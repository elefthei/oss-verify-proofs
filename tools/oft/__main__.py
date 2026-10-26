"""./oft <command> ...  (see tools/oft/README.md)"""
import argparse
import os
import sys

from . import approvals, check, fetch, generate, ledger, lint, release_tree, revisions


def _root(a):
    return os.path.abspath(a.root)


def _processes(s):
    """--jobs: a number of processes, 1 or more."""
    try:
        n = int(s)
    except ValueError:
        n = 0
    if n < 1:
        raise argparse.ArgumentTypeError("%r is not a number of processes (1 or more)" % s)
    return n


def cmd_generate(a):
    return generate.run(_root(a), check=a.check)


def cmd_lint(a):
    changed = None
    if a.changed:
        with open(a.changed, encoding="utf-8") as f:
            changed = [l.strip() for l in f if l.strip()]
    found = lint.run(_root(a), changed=changed, pr_kind=a.pr_kind, base=a.base, skeleton=a.skeleton, release=a.release,
                     changed_only=a.changed_only, jobs=a.jobs)
    for f in found:
        print(f)
    print("oft lint: %d finding(s)" % len(found))
    return 1 if found else 0


def cmd_ledger(a):
    try:
        found = ledger.run(_root(a), a.base, a.tip)
    except ledger.LedgerError as e:
        print("FAIL %s" % e)
        return 1
    for f in found:
        print(f)
    print("oft ledger: %d finding(s)" % len(found))
    return 1 if found else 0


def cmd_fetch(a):
    return fetch.fetch(_root(a), a.projects, source=a.source, all_projects=a.all, only_check_assets=a.assets_only,
                       release=a.release, listing=a.list, findings=a.findings)


def cmd_verify_sha(a):
    return fetch.verify_sha(_root(a), a.projects)


def cmd_check(a):
    return check.run(_root(a), a.units, parts=a.parts, allowed=a.allowed, qemu=a.qemu,
                     timeout=a.timeout, rocqchk=a.rocqchk, record=a.record)


def cmd_plan(a):
    return check.plan(_root(a), a.changed, a.max_jobs)


def cmd_release_tree(a):
    return release_tree.run(_root(a))


def cmd_approvals(a):
    return approvals.write(_root(a), a.list, approved_by=a.approved_by, date=a.date)
def cmd_revisions(a):
    return revisions.run(_root(a), os.path.abspath(a.previous), write_pins=a.write_pins)


def main(argv=None):
    p = argparse.ArgumentParser(prog="oft", description="the tools of oss-fuzz-theorems")
    p.add_argument("--root", default=".", help="the repository root (default: .)")
    sub = p.add_subparsers(dest="cmd", required=True)

    g = sub.add_parser("generate", help="render every generated file from the facts")
    g.add_argument("--check", action="store_true", help="compare instead of writing")
    g.set_defaults(fn=cmd_generate)

    li = sub.add_parser("lint", help="the repository's rules (tools/oft/README.md)")
    li.add_argument("--changed", help="a file listing the paths a pull request changes")
    li.add_argument("--base",
                    help="trusted base tree for finding-ledger deletions in a pull-request change")
    li.add_argument("--pr-kind", choices=["release", "maintainer", "contributor"], default="maintainer")
    li.add_argument("--skeleton", action="store_true",
                    help="accept a tree with no facts yet (no release.yaml, no projects/)")
    li.add_argument("--release", action="store_true",
                    help="what only a release must satisfy: no placeholder digest or commit (all zeros)")
    li.add_argument("--changed-only", metavar="BASE",
                    help="run the per-file text rules only over the files that differ from commit BASE, or over "
                         "every file when a fact (a file tools/oft/paths.py classes as facts) or a finding's "
                         "finding.yaml differs from it (the rules over the whole tree still run)")
    li.add_argument("--jobs", type=_processes,
                    help="processes for the per-file text rules, 1 or more (default: every CPU this process may "
                         "run on)")
    li.set_defaults(fn=cmd_lint)

    le = sub.add_parser("ledger", help="the findings ledger over a change's history: every record a commit had from "
                                       "its anchor on is in the tip, with its anchor's evidence")
    le.add_argument("--base", required=True, help="the commit the change is judged from (its history is BASE..TIP)")
    le.add_argument("--tip", default="HEAD", help="the commit judged (default: HEAD)")
    le.set_defaults(fn=cmd_ledger)

    f = sub.add_parser("fetch", help="download a project's binaries and check every SHA-256")
    f.add_argument("projects", nargs="*")
    f.add_argument("--all", action="store_true", help="every available project")
    f.add_argument("--source", help="a directory or URL prefix to take the release assets from")
    f.add_argument("--assets-only", action="store_true",
                   help="check every archive's SHA-256 (binaries and source) without unpacking")
    f.add_argument("--release", help="only the projects whose assets are attached to this release tag")
    f.add_argument("--list", action="store_true", help="print <release> <file> <sha256> per asset; fetch nothing")
    f.add_argument("--findings", action="store_true",
                   help="the unpatched binaries the projects' findings run on (findings/<p>/unpatched.yaml), into "
                        "findings/<p>/bin/")
    f.set_defaults(fn=cmd_fetch)

    v = sub.add_parser("verify-sha", help="check fetched binaries against harness.yaml")
    v.add_argument("projects", nargs="+")
    v.set_defaults(fn=cmd_verify_sha)

    c = sub.add_parser("check", help="build and check statements, proofs and counterexamples")
    c.add_argument("units", nargs="+", metavar="PROJECT/HARNESS")
    c.add_argument("--parts", default="statements,proofs,counterexamples")
    c.add_argument("--allowed", default="toolchain/allowed-axioms.txt")
    c.add_argument("--qemu", default="qemu-riscv64")
    c.add_argument("--timeout", type=int, default=600, help="seconds per counterexample or finding run")
    c.add_argument("--rocqchk", action="store_true",
                   help="also re-check the compiled libraries with rocqchk (slow: hours for a large proof)")
    c.add_argument("--record", action="store_true",
                   help="with --parts findings: run each finding that has no runs yet and print them, to commit")
    c.set_defaults(fn=cmd_check)

    pl = sub.add_parser("plan", help="the harnesses a change affects, as JSON for CI")
    pl.add_argument("--changed", required=True, help="a file listing the changed paths")
    pl.add_argument("--max-jobs", type=int, default=20)
    pl.set_defaults(fn=cmd_plan)

    rt = sub.add_parser("release-tree", help="keep only the proofs approvals.yaml lists, in place, and render again")
    rt.set_defaults(fn=cmd_release_tree)

    ap = sub.add_parser("approvals", help="write approvals.yaml from the proofs of the fuzz targets a file lists")
    ap.add_argument("list", metavar="FILE",
                    help="one <project>/<harness> per line, then a tab and the review record for a submission")
    ap.add_argument("--approved-by", required=True, help="the GitHub login of who approves the entries")
    ap.add_argument("--date", required=True, help="the date of the approval, YYYY-MM-DD")
    ap.set_defaults(fn=cmd_approvals)

    r = sub.add_parser("revisions", help="each statement's revision and proof against the previous release")
    r.add_argument("previous", help="a checkout of the previous release")
    r.add_argument("--write-pins", action="store_true",
                   help="set the pin of each proof that carries forward to its statement's fingerprint here")
    r.set_defaults(fn=cmd_revisions)

    a = p.parse_args(argv)
    return a.fn(a)


if __name__ == "__main__":
    # `oft check` reports each step as it finishes, and a CI job cut off at its time limit keeps only what was written
    # out by then. With no terminal (a container, a pipe) Python buffers output in blocks, so every line is written as
    # it is printed instead.
    sys.stdout.reconfigure(line_buffering=True)
    sys.stderr.reconfigure(line_buffering=True)
    sys.exit(main())
