"""oft revisions PREVIOUS: each statement of this tree beside the same statement in PREVIOUS, a checkout of the
previous release (docs/versioning.md).

These tools fingerprint both trees, so a change to how a fingerprint is computed (facts.FINGERPRINT_TAG) changes no
statement, and a statement whose two fingerprints differ changed its meaning.  Taking PREVIOUS's facts through these
tools would also hide a change to how a statement is rendered (shapes.py, templates/): so a statement of PREVIOUS whose
generated code, written by that release's own tools, is not what these tools render from the same facts is
re-rendered, and its meaning changed too.  So does every statement's when the model (its name, version or commit) or
the Rocq package or version differs (model-changed): the fingerprint hashes only the model's version, which reads
`unreleased` until the model is released.  Withheld in either tree, a statement has no fingerprint to compare and no
expected revision.  A statement whose meaning changed has the previous revision plus one; any
other keeps its revision; a statement new in this tree has revision 1.  A proof whose statement kept its meaning
carries forward; one whose statement changed is re-checked; one that is gone is retired.  With write_pins, the pin of
each proof that carries forward is set to its statement's fingerprint here, when it still holds the pin it had in
PREVIOUS.
"""
import os
import re
import sys

import yaml

from . import facts, generate, rocq, yamlio

COLUMNS = ("id", "previous_revision", "revision", "expected_revision", "statement", "proof")
STATEMENT = ("same", "changed", "re-rendered", "model-changed", "new", "gone", "unfingerprinted")
PROOF = ("carried-forward", "re-check", "retired", "new")
# a Rocq sentence ends at a period followed by a blank; rocq.code leaves one space or the end of the text
_SENTENCE_END = re.compile(r"\.(?: |$)")
_DEFINITION = re.compile(r"Definition ([^\s(]+)")


def model(tree):
    """What a statement's meaning rests on beside its fingerprint: the model's name, version and commit and the Rocq
    package and version of tree's release.yaml.  The fingerprint hashes only the model's version, which reads
    `unreleased` until the model is released."""
    r = tree.release or {}
    sem, rq = r.get("semantics") or {}, r.get("rocq") or {}
    return tuple((k, sem.get(k)) for k in ("name", "version", "commit")) + tuple(
        ("rocq " + k, rq.get(k)) for k in ("package", "version"))


def _code(path):
    """The code (rocq.code) of the Rocq file at path, read with no newline translation, or None if there is none."""
    return rocq.code(facts.read_raw(path)) if os.path.isfile(path) else None


def _definitions(code, names):
    """(every other sentence, {name: its Definition} for each of names) of the code of a Statements.v, or (None, {})
    for no file.  A Definition of another name, which a statement may use, is one of the other sentences.  The other
    sentences keep a marker where each statement's Definition stood, so a sentence that moves across a Definition (a
    scope opened before it instead of after it, say) changes the rest: it can change how the Definition parses."""
    if code is None:
        return None, {}
    rest, defs = [], {}
    for s in _SENTENCE_END.split(code):
        m = _DEFINITION.match(s)
        if m and m.group(1) in names:
            defs[m.group(1)] = s
            rest.append("Definition " + m.group(1))
        else:
            rest.append(s)
    return rest, defs


def rerendered(tree):
    """The ids of tree's statements whose generated code in tree is not what these tools render from tree's facts:
    the code of their Definition in Statements.v, of the rest of Statements.v or of the harness's Images.v, or, for a
    bound, of Distribution.v.  Comments and layout do not count."""
    ids = set()
    for h in tree.harnesses():
        if not h.builds():
            continue
        names = {st.name for st in h.statements.values()}
        rest, defs = _definitions(_code(tree.path(h.dir, "Statements.v")), names)
        new_rest, new_defs = _definitions(rocq.code(generate.statements_v(h)), names)
        whole = rest != new_rest or _code(tree.path(h.dir, "Images.v")) != rocq.code(generate.images_v(h))
        bounds = "distribution" in h.data and (
            _code(tree.path(h.dir, "Distribution.v")) != rocq.code(generate.distribution_v(h)))
        for st in h.statements.values():
            if whole or defs.get(st.name) != new_defs.get(st.name) or (bounds and st.kind == "bound"):
                ids.add(st.id)
    return ids


def compare(prev, cur, rerendered_ids=frozenset(), model_changed=False):
    """One row per statement of either tree: (id, its Statement in prev or None, in cur or None, expected revision or
    None, statement, proof).  statement is one of STATEMENT: re-rendered when its fingerprints are the same but its id
    is in rerendered_ids (rerendered(prev)); model-changed when its fingerprints are the same but model_changed (the
    two trees' model() differ); unfingerprinted when it is withheld in a tree, so that there is nothing to compare and
    no revision is expected.  proof is one of PROOF, or "-"."""
    old = {s.id: s for s in prev.statements()}
    new = {s.id: s for s in cur.statements()}
    rows = []
    for sid in sorted(set(old) | set(new)):
        a, b = old.get(sid), new.get(sid)
        if b is None:
            what, expected = "gone", None
        elif a is None:
            what, expected = "new", 1
        elif not (a.fingerprint and b.fingerprint):
            what, expected = "unfingerprinted", None
        elif a.fingerprint != b.fingerprint:
            what, expected = "changed", a.revision + 1
        elif sid in rerendered_ids:
            what, expected = "re-rendered", a.revision + 1
        elif model_changed:
            what, expected = "model-changed", a.revision + 1
        else:
            what, expected = "same", a.revision
        had, has = bool(a and a.proof), bool(b and b.proof)
        if had and has:
            proof = "carried-forward" if what == "same" else "re-check"
        else:
            proof = "retired" if had else "new" if has else "-"
        rows.append((sid, a, b, expected, what, proof))
    return rows


def stale_pins(rows):
    """The statement, in this tree, of each proof that carries forward and still holds the pin it had in PREVIOUS,
    when that pin is not the statement's fingerprint here."""
    return [b for _sid, a, b, _e, _w, proof in rows
            if proof == "carried-forward" and b.proof.data["fingerprint"] == a.proof.data["fingerprint"]
            and b.proof.data["fingerprint"] != b.fingerprint]


def repinned(text, fingerprint, where):
    """text, a proof.yaml's, with the value of its top-level fingerprint set to fingerprint and nothing else changed:
    its quotes, its comments and its line ends stay."""
    node = yaml.compose(text, Loader=yamlio.StrictLoader)
    pins = [v for k, v in (node.value if isinstance(node, yaml.MappingNode) else ()) if k.value == "fingerprint"]
    # a plain scalar's style is "" from the C loader (yamlio.StrictLoader is a CSafeLoader), None from the Python one
    if len(pins) != 1 or not isinstance(pins[0], yaml.ScalarNode) or pins[0].style not in (None, "", '"', "'"):
        raise ValueError("%s: no plain or quoted top-level fingerprint" % where)
    v, quote = pins[0], pins[0].style or ""
    return text[:v.start_mark.index] + quote + fingerprint + quote + text[v.end_mark.index:]


def rewrite_pins(tree, statements):
    """Set the pin of each statement's proof.yaml to the statement's fingerprint, every file computed before any is
    written."""
    out = []
    for st in statements:
        path = tree.path(st.proof.path, "proof.yaml")
        out.append((path, repinned(facts.read_raw(path), st.fingerprint, path)))
    for path, text in out:
        with open(path, "w", encoding="utf-8", newline="") as f:
            f.write(text)


def run(root, previous, write_pins=False, out=sys.stdout):
    prev, cur = facts.load(previous), facts.load(root)
    for name, t in (("previous", prev), ("this tree", cur)):
        for e in t.errors:
            print("error: %s: %s" % (name, e), file=out)
    if prev.errors or cur.errors:
        print("oft revisions: a tree does not load cleanly with these tools: nothing compared", file=out)
        return 1
    old_model, new_model = model(prev), model(cur)
    rows = compare(prev, cur, rerendered(prev), old_model != new_model)
    print("\t".join(COLUMNS), file=out)
    for sid, a, b, expected, what, proof in rows:
        print("\t".join(str(v) for v in (sid, a.revision if a else "-", b.revision if b else "-",
                                         "-" if expected is None else expected, what, proof)), file=out)
    for (k, v), (_k, w) in zip(old_model, new_model):
        if v != w:
            print("note: the model changed: %s is %s, was %s, so every statement's meaning may have changed" % (
                k, w, v), file=out)
    wrong = [r for r in rows if r[3] is not None and r[2].revision != r[3]]
    for sid, _a, b, expected, what, _p in wrong:
        print("error: %s: revision %d, expected %d: %s" % (
            sid, b.revision, expected, {
                "same": "its meaning is the same as in the previous release",
                "changed": "its meaning changed since the previous release",
                "re-rendered": "these tools render it otherwise than the previous release's did",
                "model-changed": "the model it is stated in changed since the previous release",
                "new": "it is new"}[what]), file=out)
    stale = stale_pins(rows)
    if write_pins:
        try:
            rewrite_pins(cur, stale)
        except ValueError as e:
            print("error: %s: no pin written" % e, file=out)
            return 1
    print("oft revisions: %d statements (%s), %d with a wrong revision; proofs: %s; %d pins %s" % (
        len(rows), ", ".join("%d %s" % (sum(r[4] == w for r in rows), w) for w in STATEMENT), len(wrong),
        ", ".join("%d %s" % (sum(r[5] == p for r in rows), p) for p in PROOF),
        len(stale), "rewritten" if write_pins else "to rewrite (--write-pins)"), file=out)
    return 1 if wrong else 0
