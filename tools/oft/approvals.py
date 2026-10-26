"""oft approvals: write approvals.yaml from the proofs a checkout holds.

FILE lists fuzz targets, one per line: `<project>/<harness>`; for proofs that began as a submission, a tab, the
record of the review that cleared them, a tab and the statements that record covers, separated by commas (a record
always names them).  Blank lines and lines that start with # are skipped.  Each listed fuzz target becomes an entry
naming every statement it has a proof of under proofs/<project>/<harness>/, and only those the record covers when FILE
says which.  It refuses a name that is not an included fuzz target or a covered name that is not a statement of its
fuzz target.  A refutation is never listed, nor a fuzz target of a project a finding holds back: each is reported, as
are a listed fuzz target with no proof, a proof its record does not cover, and a fuzz target whose lib/ the release
will keep while some of its proofs are not listed.  An entry already in approvals.yaml with the same statements,
origin and record keeps its approved_by and date; only a new or changed entry takes --approved-by and --date.  The
entries are sorted, so the same checkout and list give the same file.  The file is checked against its schema and the
rules before it is written.
"""
import os
import sys

from . import facts, release_tree, rules, schema, yamlio

SCHEMA = "oss-fuzz-theorems/approvals/1"


def _read_list(listing, out):
    """{fuzz target: (record or None, covered statements or None)}, or None after printing why the list is refused."""
    wanted = {}
    try:
        with open(listing, encoding="utf-8") as f:
            lines = f.read().splitlines()
    except OSError as e:
        print("%s: %s" % (listing, e.strerror or e), file=out)
        return None
    for n, line in enumerate(lines, 1):
        if not line.strip() or line.lstrip().startswith("#"):
            continue
        cols = line.split("\t")
        why = None
        if len(cols) > 3:
            why = "more than three fields"
        elif any(c != c.strip() or not c for c in cols):
            why = "an empty field, or spaces around one: %r" % line
        elif cols[0] in wanted:
            why = "%s is listed twice" % cols[0]
        elif len(cols) == 2:
            why = "a record must name the statements it covers, in a third field: %r" % line
        if why:
            print("%s:%d: %s" % (listing, n, why), file=out)
            return None
        record = cols[1] if len(cols) > 1 else None
        covers = set(cols[2].split(",")) if len(cols) > 2 else None
        wanted[cols[0]] = (record, covers)
    return wanted


def _previous(tree):
    """{fuzz target: entry} of the approvals.yaml already in the checkout, as far as it can be read."""
    try:
        doc = yamlio.load_file(tree.path("approvals.yaml")) if os.path.isfile(tree.path("approvals.yaml")) else None
    except Exception:
        return {}
    old = doc.get("fuzz_targets") if isinstance(doc, dict) else None
    return {e["fuzz_target"]: e for e in old if isinstance(e, dict) and isinstance(e.get("fuzz_target"), str)} \
        if isinstance(old, list) else {}


def write(root, listing, approved_by, date, out=sys.stdout):
    wanted = _read_list(listing, out)
    if wanted is None:
        print("oft approvals: the list is malformed; nothing written", file=out)
        return 1
    tree = facts.load(root)
    previous = _previous(tree)
    # the file this writes is not an input: an outdated one must not stop it
    tree.approvals = None
    tree.errors = [e for e in tree.errors if not e.startswith("approvals.yaml")]
    rules.check(tree)
    if tree.errors:
        for e in tree.errors:
            print("error: " + e, file=out)
        print("oft approvals: %d error(s) in the facts; nothing written" % len(tree.errors), file=out)
        return 1
    harnesses = {"%s/%s" % (h.project.name, h.name): h for h in tree.harnesses()}
    unknown = ["%r is not an included fuzz target" % u for u in sorted(wanted) if u not in harnesses]
    unknown += ["%r is not a statement of %s" % (s, u) for u in sorted(wanted) if u in harnesses
                for s in sorted((wanted[u][1] or set()) - set(harnesses[u].statements))]
    if unknown:
        for u in unknown:
            print("error: %s" % u, file=out)
        print("oft approvals: %d name(s) that are not included fuzz targets or their statements; nothing written"
              % len(unknown), file=out)
        return 1
    held, private = facts.held_projects(tree), facts.private_projects(tree)
    proved, refuted, dirs = {}, [], {}
    for sid, pd in tree.proofs.items():
        p, h, s = sid.split("/")
        dirs.setdefault("%s/%s" % (p, h), set()).add(s)
        if pd.refutes:
            refuted.append(sid)
        else:
            proved.setdefault("%s/%s" % (p, h), set()).add(s)
    entries, missing, uncovered, withheld, partial = [], [], [], [], []
    for unit in sorted(wanted):
        record, covers = wanted[unit]
        if unit.split("/")[0] in held | private:
            withheld.append(unit)
            continue
        statements = proved.get(unit, set())
        if covers is not None:
            uncovered += ["%s/%s" % (unit, s) for s in sorted(statements - covers)]
            statements &= covers
        if not statements:
            missing.append(unit)
            continue
        e = {"fuzz_target": unit, "statements": sorted(statements), "approved_by": approved_by, "date": date,
             "origin": "submission" if record else "this-repository"}
        if record:
            e["record"] = record
        old = previous.get(unit, {})
        if all(old.get(k) == e.get(k) for k in ("statements", "origin", "record")) \
                and isinstance(old.get("approved_by"), str) and isinstance(old.get("date"), str):
            e["approved_by"], e["date"] = old["approved_by"], old["date"]
        entries.append(e)
        if dirs.get(unit, set()) - statements and os.path.isdir(tree.path("proofs", unit, "lib")):
            partial.append(unit)
    for unit in withheld:
        why = ("a finding holds back its project" if unit.split("/")[0] in held
               else "its project is private (release: private)")
        print("%s, not listed: %s" % (why, unit), file=out)
    for unit in missing:
        print("listed, no proof yet: %s" % unit, file=out)
    for sid in uncovered:
        print("a proof its record does not cover, not listed: %s" % sid, file=out)
    for sid in sorted(s for s in refuted if s.rsplit("/", 1)[0] in wanted):
        print("a refutation, not listed: %s" % sid, file=out)
    for unit in partial:
        print("the release will have " + release_tree.PARTIAL % unit, file=out)
    doc = {"schema": SCHEMA, "fuzz_targets": entries}
    problems = schema.validate("approvals", doc)
    if not problems:
        tree.approvals = doc
        rules.check(tree)
        problems = tree.errors
    if problems:
        for p in problems:
            print("error: " + p, file=out)
        print("oft approvals: %d problem(s); nothing written" % len(problems), file=out)
        return 1
    with open(tree.path("approvals.yaml"), "w", encoding="utf-8") as f:
        f.write(yamlio.dump(doc))
    print("oft approvals: %d fuzz target(s), %d statement(s) written to approvals.yaml; %d listed with no proof yet, "
          "%d proof(s) outside their record" % (len(entries), sum(len(e["statements"]) for e in entries), len(missing),
                                                len(uncovered)), file=out)
    return 0
