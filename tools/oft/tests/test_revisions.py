"""oft revisions: each statement against the previous release, both fingerprinted by today's tools."""
import io
import unittest
from unittest import mock

from oft import facts, revisions, shapes
from oft.tests.helpers import tree

HARNESS = "projects/zlib/checksum_fuzzer/harness.yaml"
STATEMENTS = "projects/zlib/checksum_fuzzer/Statements.v"
PROVED = "zlib/checksum_fuzzer/plain_halts"
WITHHELD = "zlib/api-driver/asan_ubsan_agrees"   # the fixture's withheld statement: no fingerprint to compare


def fingerprints(t, tag=facts.FINGERPRINT_TAG):
    with mock.patch.object(facts, "FINGERPRINT_TAG", tag):
        return {s.id: s.fingerprint for s in facts.load(t.root).statements()}


def prove(t, sid, pin):
    d = "proofs/%s/" % sid
    t.put_yaml(d + "proof.yaml", {"schema": "oss-fuzz-theorems/proof/1", "proves": sid, "fingerprint": pin})
    t.write(d + "Proof.v", "Theorem holds : True. Proof. exact I. Qed.\n")


def raw(t, rel):
    with open(t.path(rel), encoding="utf-8", newline="") as f:
        return f.read()


def run(cur, prev, **kw):
    """(exit status, output, {id: the other columns}) of `oft revisions` in cur against prev."""
    buf = io.StringIO()
    rc = revisions.run(cur.root, prev.root, out=buf, **kw)
    out = buf.getvalue()
    return rc, out, {r[0]: r[1:] for r in (line.split("\t") for line in out.splitlines()[1:]) if len(r) > 1}


class Revisions(unittest.TestCase):
    def test_a_new_way_of_fingerprinting_changes_no_revision_and_retires_no_proof(self):
        """The previous release pinned its proof under another version of the fingerprint: every fingerprint
        differs from the one it published, and no statement's meaning does."""
        with tree() as prev, tree() as cur:
            old = fingerprints(prev, "oss-fuzz-theorems/statement/0")
            self.assertNotEqual(old[PROVED], fingerprints(prev)[PROVED])
            for t in (prev, cur):
                prove(t, PROVED, old[PROVED])
            rc, out, rows = run(cur, prev, write_pins=True)
            self.assertEqual(rc, 0, out)
            self.assertEqual(sorted(k for k, r in rows.items() if r[3] != "same"), [WITHHELD])
            self.assertEqual(rows[WITHHELD], ["1", "1", "-", "unfingerprinted", "-"])
            self.assertTrue(all(r[0] == r[1] == r[2] for k, r in rows.items() if k != WITHHELD), out)
            self.assertEqual(rows[PROVED][4], "carried-forward")
            self.assertIn("1 pins rewritten", out)
            self.assertEqual(cur.yaml("proofs/%s/proof.yaml" % PROVED)["fingerprint"], fingerprints(cur)[PROVED])
            self.assertEqual(cur.generate(), 0, cur.last_output)
            self.assertEqual([str(f) for f in cur.lint() if "proof.yaml" in str(f)], [])

    def test_a_comment_or_layout_edit_in_the_shapes_changes_no_revision(self):
        with tree() as prev, tree() as cur:
            cur.write("theories/Shapes.v", "\n\n(* a comment (* nested *) \"*)\" *)\n", "a")
            cur.write("theories/Images.v", "(** a docstring *)\n", "a")
            rc, out, rows = run(cur, prev)
        self.assertEqual(rc, 0, out)
        self.assertEqual(sorted(k for k, r in rows.items() if r[3] != "same"), [WITHHELD])

    def test_a_change_of_meaning_needs_the_next_revision(self):
        sid = "zlib/checksum_fuzzer/ubsan_halts"
        with tree() as prev, tree() as cur:
            for t in (prev, cur):
                prove(t, sid, fingerprints(prev)[sid])
            y = cur.yaml(HARNESS)
            y["builds"]["ubsan"]["sha256"] = "0" * 63 + "a"
            cur.put_yaml(HARNESS, y)
            rc, out, rows = run(cur, prev, write_pins=True)
            self.assertEqual(rc, 1)
            self.assertEqual(sorted(k for k, r in rows.items() if r[3] == "changed"),
                             [sid.replace("halts", "agrees"), sid, sid + "_may_fail"])
            self.assertIn("error: %s: revision 1, expected 2: its meaning changed" % sid, out)
            self.assertEqual(rows[sid][4], "re-check")
            self.assertIn("0 pins rewritten", out)
            for name in ("ubsan_agrees", "ubsan_halts", "ubsan_halts_may_fail"):
                y["statements"][name]["revision"] = 2
            cur.put_yaml(HARNESS, y)
            rc, out, _rows = run(cur, prev)
        self.assertEqual(rc, 0, out)

    def test_a_change_of_model_commit_or_rocq_version_needs_the_next_revision(self):
        """The fingerprint hashes only the model's version, which reads `unreleased` until the model is released: a
        new model commit or Rocq version changes no fingerprint, and still every statement's meaning."""
        for section, key, label, value in (("semantics", "commit", "commit", "0" * 40),
                                           ("rocq", "version", "rocq version", "9.3.0")):
            with self.subTest(key=key), tree() as prev, tree() as cur:
                for t in (prev, cur):
                    prove(t, PROVED, fingerprints(prev)[PROVED])
                r = cur.yaml("release.yaml")
                r[section][key] = value
                cur.put_yaml("release.yaml", r)
                self.assertEqual(fingerprints(cur), fingerprints(prev))
                rc, out, rows = run(cur, prev, write_pins=True)
                self.assertEqual(rc, 1, out)
                self.assertIn("note: the model changed: %s is %s" % (label, value), out)
                self.assertEqual(sorted(k for k, r in rows.items() if r[3] != "model-changed"), [WITHHELD])
                self.assertEqual(rows[PROVED][2:], ["2", "model-changed", "re-check"])
                self.assertIn("the model it is stated in changed", out)
                self.assertIn("0 pins rewritten", out)

    def test_a_retired_proof_and_a_new_one(self):
        with tree() as prev, tree() as cur:
            prove(prev, PROVED, fingerprints(prev)[PROVED])
            _rc, _out, rows = run(cur, prev)
            self.assertEqual(rows[PROVED][4], "retired")
            _rc, _out, rows = run(prev, cur)
        self.assertEqual(rows[PROVED][4], "new")

    def test_a_change_to_the_renderer_is_a_change_of_meaning(self):
        """Today's tools render the previous release's facts with another halts budget: the previous release's own
        Statements.v says what its statements meant, so they changed, though both fingerprints, taken by today's
        tools, are the same."""
        pin = "proofs/%s/proof.yaml" % PROVED
        with tree() as prev, tree() as cur:
            for t in (prev, cur):
                prove(t, PROVED, fingerprints(prev)[PROVED])
            before = raw(cur, pin)
            with mock.patch.object(shapes, "HALTS_BUDGET", ("Budgets.Asan.lim_source", "2 GiB")):
                rc, out, rows = run(cur, prev, write_pins=True)
            self.assertEqual(rc, 1, out)
            self.assertEqual(rows[PROVED], ["1", "1", "2", "re-rendered", "re-check"])
            self.assertIn("error: %s: revision 1, expected 2: these tools render it otherwise" % PROVED, out)
            rerendered = sorted(k for k, r in rows.items() if r[3] == "re-rendered")
            self.assertTrue(rerendered and all(k.endswith("_halts") for k in rerendered), rerendered)
            self.assertIn("0 pins rewritten", out)
            self.assertEqual(raw(cur, pin), before)

    def test_the_previous_releases_generated_code_is_its_meaning(self):
        """A comment or layout edit in the previous release's Statements.v changes nothing; an edit to its code does:
        to a statement's Definition, that statement; to any other sentence, or to the code of its Images.v, every
        statement of the harness."""
        images = "projects/zlib/checksum_fuzzer/Images.v"
        cases = [
            (STATEMENTS, ("Definition plain_halts :", "(* a comment *) Definition\n\tplain_halts :"), "none"),
            (STATEMENTS, ("halts_within_budget Budgets.Standard.lim_source Exits.ok_or_refused Images.plain.",
                          "halts_within_budget Budgets.Asan.lim_source Exits.ok_or_refused Images.plain."), "one"),
            (STATEMENTS, ("From Stdlib Require Import QArith.", "From Stdlib Require Import QArith ZArith."), "all"),
            (STATEMENTS, ("\n(** ** Proving", "\nDefinition helper := 0.\n(** ** Proving"), "all"),
            (images, ("\nLemma ", "\nDefinition helper := 0.\nLemma "), "all"),
        ]
        for rel, (old, new), which in cases:
            with self.subTest(rel=rel, new=new), tree() as prev, tree() as cur:
                text = raw(prev, rel)
                self.assertIn(old, text)
                prev.write(rel, text.replace(old, new, 1))
                _rc, out, rows = run(cur, prev)
                found = sorted(k for k, r in rows.items() if r[3] == "re-rendered")
                harness = sorted(k for k, r in rows.items()
                                 if k.startswith("zlib/checksum_fuzzer/") and r[3] != "unfingerprinted")
                self.assertEqual(found, {"none": [], "one": [PROVED], "all": harness}[which], out)

    def test_a_sentence_that_moves_across_a_definition_changes_every_statement_of_the_harness(self):
        """The same sentences in another order are other code: a scope or import that the previous release opened
        after a Definition, and today's tools open before it, can change how that Definition parses."""
        moved = "From OssFuzzTheorems.zlib.checksum_fuzzer Require Images Distribution.\n"
        after = "halts_within_budget Budgets.Standard.lim_source Exits.ok_or_refused Images.plain.\n"
        with tree() as prev, tree() as cur:
            text = raw(prev, STATEMENTS)
            self.assertIn(moved, text)
            self.assertIn(after, text)
            prev.write(STATEMENTS, text.replace(moved, "", 1).replace(after, after + moved, 1))
            _rc, out, rows = run(cur, prev)
            found = sorted(k for k, r in rows.items() if r[3] == "re-rendered")
            harness = sorted(k for k, r in rows.items()
                             if k.startswith("zlib/checksum_fuzzer/") and r[3] != "unfingerprinted")
            self.assertEqual(found, harness, out)

    def test_write_pins_keeps_the_quotes_comments_and_line_ends_of_a_pin(self):
        y = "proofs/%s/proof.yaml" % PROVED
        for spelling in ('"%s"   # the pin of release 2026.10.0', "'%s'", "%s  # pinned"):
            with self.subTest(spelling=spelling), tree() as prev, tree() as cur:
                old = fingerprints(prev, "oss-fuzz-theorems/statement/0")[PROVED]
                text = "schema: oss-fuzz-theorems/proof/1\r\nproves: %s\r\nfingerprint: %s\r\n" % (
                    PROVED, spelling % old)
                for t in (prev, cur):
                    prove(t, PROVED, old)
                    t.write(y, text)
                rc, out, _rows = run(cur, prev, write_pins=True)
                self.assertEqual(rc, 0, out)
                self.assertIn("1 pins rewritten", out)
                self.assertEqual(raw(cur, y), text.replace(old, fingerprints(cur)[PROVED]))

    def test_write_pins_writes_no_pin_when_one_cannot_be_written(self):
        """A pin written as a block scalar is valid, but has no one-line value to replace: no pin is written."""
        other = "zlib/checksum_fuzzer/ubsan_halts"
        with tree() as prev, tree() as cur:
            old = fingerprints(prev, "oss-fuzz-theorems/statement/0")
            for t in (prev, cur):
                prove(t, PROVED, old[PROVED])
                prove(t, other, old[other])
                t.write("proofs/%s/proof.yaml" % other, "schema: oss-fuzz-theorems/proof/1\nproves: %s\n"
                        "fingerprint: >-\n  %s\n" % (other, old[other]))
            before = {sid: raw(cur, "proofs/%s/proof.yaml" % sid) for sid in (PROVED, other)}
            rc, out, _rows = run(cur, prev, write_pins=True)
            self.assertEqual(rc, 1, out)
            self.assertIn("ubsan_halts/proof.yaml: no plain or quoted top-level fingerprint: no pin written", out)
            self.assertEqual({sid: raw(cur, "proofs/%s/proof.yaml" % sid) for sid in (PROVED, other)}, before)

    def test_a_tree_that_does_not_load_is_not_compared(self):
        with tree() as prev, tree() as cur:
            prev.write(HARNESS, "schema: [\n")
            rc, out, rows = run(cur, prev)
        self.assertEqual((rc, rows), (1, {}))
        self.assertIn("error: previous: " + HARNESS, out)
        self.assertIn("nothing compared", out)


if __name__ == "__main__":
    unittest.main()
