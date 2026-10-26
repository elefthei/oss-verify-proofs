"""oft release-tree: turn a checkout into the files of a release.

approvals.yaml lists the proofs a release carries, by fuzz target and statement.  This
keeps the proof directory of each listed statement, with its fuzz target's whole lib/ and
build record (so a listed statement carries everything in that lib/), and removes every other
proof (a whole proofs/<project>/<harness>/ when none of its proofs is listed).  A private
project (`release: private` in its project.yaml) ships as a held project when OSS-Fuzz has
it: its project.yaml is rewritten to the held form (facts.held_form) and its page is rendered
from that, and everything else of it goes (the rest of projects/<p>/, counterexamples/<p>/,
patches/<p>/, notes/<p>.md; its proofs as unlisted ones).  A private project OSS-Fuzz does not
have is removed whole.  Either way release.yaml carries the counts and oss_fuzz.projects of
the cut, and an image_libraries entry no remaining build links goes.  It removes findings/
entirely (an undisclosed bug's record, reproducer and patch never ship), and the files only this
repository has (INTERNAL: approvals.yaml, .github/CODEOWNERS, the facts review's workflow and
its criteria), and renders the generated files again, so the statuses in the pages and
the index say what the release holds.  It reports a listed statement that has no proof in the
checkout, each fuzz target whose lib/ it keeps while removing some of its statement
directories (that lib/ may hold their proofs), and each file under proofs/lib/, which ships
unchecked.  Everything else (the facts, CHANGELOG.md among them, proofs/lib/,
counterexamples/) is left as it is, so the release's CHANGELOG section must describe only what
the release carries.

It refuses, and changes nothing, when the facts have an error; a finding holds back a project
that is not private (until a held project's facts can be cut, it must be private or its
finding disclosed); a path under proofs/, findings/ or a removed project's directories is a
symbolic link, a path under proofs/ is a stray file, a kept statement directory holds a file
other than Proof.v, proof.yaml and its generated dune, or git tracks a file at an ignored
path; a file the release keeps names what is held back (mention_needles: a private fuzz
target, its Rocq module, a holding finding's slug or patch); the facts as the release will
have them have an error; or the generated files are not current.  Every check runs before the
first change.  It rewrites the checkout in place: run it in a scratch checkout.
"""
import copy
import io
import os
import shutil
import subprocess
import sys

from . import facts, generate, paths, rules, yamlio

# what only this repository has: who approves the facts, the automated facts review of a pull request and its criteria
# (the review runs on this repository's identity), and which proofs a release publishes
INTERNAL = ("approvals.yaml", ".github/CODEOWNERS", ".github/workflows/facts-review.yml",
            ".claude/skills/review-facts/SKILL.md")

# the files a kept statement directory may hold: its proof, its record, and the generated dune (paths.py)
STATEMENT_FILES = ("Proof.v", "proof.yaml", "dune")

PARTIAL = "kept the lib/ of %s, while removing some of its statement directories: that lib/ may hold their proofs"


def _links(tree, top):
    """Every symbolic link at or under top."""
    if os.path.islink(tree.path(top)):
        return [top]
    found = []
    for d, dirs, files in os.walk(tree.path(top)):
        found += [os.path.relpath(os.path.join(d, n), tree.root) for n in dirs + files
                  if os.path.islink(os.path.join(d, n))]
    return sorted(found)


def shipped_mentions(tree, needles, skip):
    """[(path, needle)]: each file the release keeps whose bytes hold one of needles (strings), written as UTF-8,
    UTF-16LE or UTF-16BE; a binary file is read like any other, and a chance match in one is a refusal too.  A file at
    or under a path in skip (removed or rewritten by the cut), an ignored one (paths.ignored), a generated one (rendered
    again after the cut) and a symbolic link are not read.  Callers pass what must not ship (mention_needles), and may
    add more."""
    want = [(n, [n.encode(c) for c in ("utf-8", "utf-16-le", "utf-16-be")]) for n in sorted(set(needles))]
    skip = {s.rstrip("/") for s in skip}
    hits = []
    if not want:
        return hits
    for d, dirs, files in os.walk(tree.root):
        rd = os.path.relpath(d, tree.root).replace(os.sep, "/")
        rd = "" if rd == "." else rd + "/"
        dirs[:] = [x for x in dirs if rd + x not in skip and not paths.ignored(rd + x)]
        for f in sorted(files):
            rel = rd + f
            if rel in skip or os.path.islink(os.path.join(d, f)) or paths.ignored(rel) or paths.is_gen(rel):
                continue
            with open(os.path.join(d, f), "rb") as fh:
                data = fh.read()
            hits += [(rel, n) for n, forms in want if any(b in data for b in forms)]
    return sorted(hits)


def mention_needles(tree, private):
    """What no file the release keeps may hold: for each private project's fuzz target, <project>/<harness> (also with
    the slash written %2F) and its Rocq module name; for each finding that holds its project back, its slug and the
    file names of its patches."""
    out = set()
    for p in private:
        proj = tree.projects[p]
        for h in set(proj.harnesses) | {e["name"] for e in proj.entries()}:
            out |= {"%s/%s" % (p, h), "%s%%2F%s" % (p, h), "%s%%2f%s" % (p, h)}
        out |= {h.data["rocq"] for h in proj.harnesses.values() if isinstance(h.data.get("rocq"), str)}
    for f in tree.findings.values():
        if f.data["state"] in facts.HOLDING_STATES:
            out.add(f.slug)
            if f.data.get("patch"):
                out.add(f.data["patch"])
            d = tree.path(f.path)
            out |= {n for n in (os.listdir(d) if os.path.isdir(d) else []) if n.endswith(".patch")}
    return out


def tracked_ignored(tree):
    """The files git tracks at an ignored path (paths.ignored), which the checks above do not read: [] when the
    checkout is not a git work tree."""
    if not os.path.exists(tree.path(".git")):
        return []
    r = subprocess.run(["git", "-C", tree.root, "ls-files", "-z"], capture_output=True)
    if r.returncode:
        return ["git ls-files failed: %s" % r.stderr.decode("utf-8", "replace").strip()]
    return sorted(rel for rel in r.stdout.decode("utf-8", "surrogateescape").split("\0") if rel and paths.ignored(rel))


def _public_release(tree, public):
    """release.yaml as the release carries it, from the cut facts `public`: its counts and oss_fuzz.projects, and
    without an image_libraries entry no build of the cut links.  None when none of that changes anything."""
    r = copy.deepcopy(tree.release)
    if not r:
        return None
    harnesses = list(public.harnesses())
    r["counts"] = {"projects": len(public.projects), "available": len(public.available()),
                   "harnesses": len(harnesses), "binaries": sum(len(h.builds()) for h in harnesses)}
    r["oss_fuzz"]["projects"] = public.oss_fuzz_project_count()
    known = r.get("image_libraries")
    if known is not None:
        linked = {n for h in harnesses for n in facts.image_libraries(h)}
        r["image_libraries"] = {n: v for n, v in known.items() if n in linked}
        if not r["image_libraries"]:
            del r["image_libraries"]
    return None if r == tree.release else r


def _plan(tree, keep):
    """(kept, removed, partial, problems). keep is {fuzz target: approved statements}. kept and removed list paths
    under proofs/: a statement's proof directory, or a whole proofs/<project>/<harness>/ when none of its proofs is
    approved.  partial lists each fuzz target whose lib/ is kept while some of its statement directories are removed.
    problems lists every path that is a symbolic link (under proofs/lib/ and findings/ too), a file where only a
    directory belongs, or anything in a kept statement directory other than the files of STATEMENT_FILES."""
    kept, removed, partial, problems = [], [], [], []
    problems += [d for d in ("proofs", ".github") if os.path.islink(tree.path(d))]
    problems += _links(tree, "findings")
    base = tree.path("proofs")
    for p in sorted(os.listdir(base)) if os.path.isdir(base) and not problems else []:
        if os.path.islink(tree.path("proofs", p)) or not os.path.isdir(tree.path("proofs", p)):
            problems.append("proofs/%s" % p)
            continue
        if p == "lib":
            problems += _links(tree, os.path.join("proofs", "lib"))
            continue
        for h in sorted(os.listdir(tree.path("proofs", p))):
            hd = os.path.join("proofs", p, h)
            entries = sorted(os.listdir(tree.path(hd))) if os.path.isdir(tree.path(hd)) else []
            bad = [os.path.join(hd, s) for s in entries
                   if os.path.islink(tree.path(hd, s)) or not os.path.isdir(tree.path(hd, s))]
            if os.path.islink(tree.path(hd)) or not os.path.isdir(tree.path(hd)) or bad:
                problems += bad or [hd]
                continue
            proofs = [s for s in entries if s not in facts.PROOF_HARNESS_DIRS]
            approved = [s for s in proofs if s in keep.get("%s/%s" % (p, h), ())]
            if not approved:
                removed.append(hd)
                continue
            for s in approved:
                sd = os.path.join(hd, s)
                problems += [os.path.join(sd, f) for f in sorted(os.listdir(tree.path(sd)))
                             if f not in STATEMENT_FILES or os.path.islink(tree.path(sd, f))
                             or not os.path.isfile(tree.path(sd, f))]
            kept += [os.path.join(hd, s) for s in approved]
            cut = [os.path.join(hd, s) for s in proofs if s not in approved]
            removed += cut
            if cut and os.path.isdir(tree.path(hd, "lib")):
                partial.append("%s/%s" % (p, h))
    return kept, removed, partial, problems


def shared_files(tree):
    """Every file under proofs/lib/, which any release carries unchecked."""
    base = tree.path("proofs", "lib")
    return sorted(os.path.relpath(os.path.join(d, f), tree.root)
                  for d, _, fs in os.walk(base) for f in fs) if os.path.isdir(base) else []


def run(root, out=sys.stdout):
    tree = facts.load(root)
    rules.check(tree)
    if tree.errors:
        for e in tree.errors:
            print("error: " + e, file=out)
        print("oft release-tree: %d error(s) in the facts; nothing changed" % len(tree.errors), file=out)
        return 1
    if tree.approvals is None:
        print("oft release-tree: no approvals.yaml, so nothing says which proofs this release publishes; "
              "nothing changed", file=out)
        return 1
    # a finding holds back the statements it shows false and the facts that describe its fix; until those can be cut,
    # a held project ships only as a private one, and is otherwise refused
    exposed = sorted(facts.held_projects(tree) - facts.private_projects(tree))
    if exposed:
        for p in exposed:
            print("error: a finding holds back project %s, which is not private: mark it release: private in "
                  "projects/%s/project.yaml or disclose the finding first" % (p, p), file=out)
        print("oft release-tree: %d project(s) a finding holds back would ship; nothing changed" % len(exposed),
              file=out)
        return 1
    keep = {e["fuzz_target"]: set(e["statements"]) for e in tree.approvals["fuzz_targets"]}
    kept, removed, partial, problems = _plan(tree, keep)
    private = sorted(facts.private_projects(tree))
    held = [p for p in private if "oss_fuzz" in tree.projects[p].data]   # these keep their held page
    dropped = [os.path.join("projects", p) for p in private if p not in held]
    dropped += [os.path.join("projects", p, x) for p in held for x in sorted(os.listdir(tree.path("projects", p)))
                if x not in ("project.yaml", "README.md")]
    dropped += [rel for p in private for rel in (os.path.join("counterexamples", p), os.path.join("patches", p),
                                                 os.path.join("notes", p + ".md"))]
    dropped = [rel for rel in dropped if os.path.lexists(tree.path(rel))]
    problems += [l for rel in dropped for l in _links(tree, rel)]
    problems += [p + " (tracked by git at an ignored path)" for p in tracked_ignored(tree)]
    if problems:
        for p in problems:
            print("error: %s: a symbolic link, or a file a release cannot carry there" % p, file=out)
        print("oft release-tree: %d path(s) that are not plain directories or expected files; nothing changed"
              % len(problems), file=out)
        return 1
    files = [f for f in INTERNAL if os.path.isfile(tree.path(f))]
    rewritten = [os.path.join("projects", p, "project.yaml") for p in held]
    cut = removed + dropped + files + rewritten + ["findings"]
    named = shipped_mentions(tree, mention_needles(tree, private), cut)
    if named:
        for rel, n in named:
            print("error: %s names %s, which a private project or a finding holds back, and would ship" % (rel, n),
                  file=out)
        print("oft release-tree: %d mention(s) of what is held back in files the release keeps; nothing changed"
              % len(named), file=out)
        return 1
    # the facts as the release will have them, checked before the first change
    public = facts.load(root)
    facts.cut_private(public)
    public.findings, public.unpatched, public.finding_series, public.approvals = {}, {}, {}, None
    shipped = {os.path.relpath(k, "proofs").replace(os.sep, "/") for k in kept}
    public.proofs = {sid: pd for sid, pd in public.proofs.items() if sid in shipped}
    public.proof_libs = [u for u in public.proof_libs if any(s.startswith(u + "/") for s in shipped)]
    release_yaml = _public_release(tree, public)
    if release_yaml is not None:
        public.release = release_yaml
    rules.check(public)
    if public.errors:
        for e in public.errors:
            print("error: after the cut: %s" % e, file=out)
        print("oft release-tree: %d error(s) in the facts as the release would have them; nothing changed"
              % len(public.errors), file=out)
        return 1
    # a stale rendering would fail only after the cut: find it first
    buf = io.StringIO()
    if generate.run(root, check=True, out=buf):
        out.write(buf.getvalue())
        print("oft release-tree: the generated files are not current (run ./oft generate); nothing changed", file=out)
        return 1
    # every check has passed: only now does anything change
    absent = sorted("%s/%s" % (u, s) for u, ss in keep.items() for s in ss if "%s/%s" % (u, s) not in tree.proofs)
    for rel in removed:
        shutil.rmtree(tree.path(rel))
        print("removed %s/" % rel, file=out)
    for p in sorted({rel.split(os.sep)[1] for rel in removed}):
        if not os.listdir(tree.path("proofs", p)):
            os.rmdir(tree.path("proofs", p))
    for rel in dropped:
        if os.path.isdir(tree.path(rel)):
            shutil.rmtree(tree.path(rel))
            rel += "/"
        else:
            os.remove(tree.path(rel))
        print("removed %s, a private project's" % rel, file=out)
    for p in held:
        with open(tree.path("projects", p, "project.yaml"), "w", encoding="utf-8") as f:
            f.write(yamlio.dump(public.projects[p].data))
        print("wrote projects/%s/project.yaml in its held form, a private project OSS-Fuzz has" % p, file=out)
    if release_yaml is not None:
        with open(tree.path("release.yaml"), "w", encoding="utf-8") as f:
            f.write(yamlio.dump(release_yaml))
        print("rewrote release.yaml with the release's counts, and without the private projects", file=out)
    # the facts were loaded, and checked, with findings/ in place: only now is it cut
    for f in files:
        os.remove(tree.path(f))
    gone = files
    if os.path.isdir(tree.path("findings")):
        shutil.rmtree(tree.path("findings"))
        gone = ["findings/"] + files
    for sid in absent:
        print("listed, but no proof in this checkout: %s" % sid, file=out)
    for unit in partial:
        print(PARTIAL % unit, file=out)
    for f in shared_files(tree):
        print("carried unchecked, as every release carries proofs/lib/: %s" % f, file=out)
    print("oft release-tree: kept %d proof(s) of %d fuzz target(s); removed %d path(s) under proofs/; removed %s; "
          "%d listed statement(s) with no proof" % (len(kept), len({os.path.dirname(k) for k in kept}), len(removed),
                                                   " and ".join(gone), len(absent)), file=out)
    return generate.run(root, out=out)
