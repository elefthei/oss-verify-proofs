"""`oft release-tree`, `oft approvals` and approvals.yaml: a release carries the approved proofs and no other."""
import csv
import io
import os
import subprocess
import unittest

from oft import approvals, facts, release_tree
from oft.tests.helpers import Tree, add_findings, build_record, rules_of
from oft.tests.test_oss_verify import add_standin

APPROVED = "zlib/checksum_fuzzer"
UNAPPROVED = "zlib/api-driver"
CODEOWNERS = "/approvals.yaml @approver\n"


def add_proof(t, sid):
    st = next(s for s in facts.load(t.root).statements() if s.id == sid)
    t.put_yaml("proofs/%s/proof.yaml" % sid, {
        "schema": "oss-fuzz-theorems/proof/1", "proves": sid, "fingerprint": st.fingerprint})
    t.write("proofs/%s/Proof.v" % sid, "Theorem holds : True. Proof. exact I. Qed.\n")


def entry(unit, statements=("plain_halts",), **kw):
    return dict({"fuzz_target": unit, "statements": list(statements), "approved_by": "approver", "date": "2026-10-19",
                 "origin": "this-repository"}, **kw)


def approve(t, *entries):
    t.put_yaml("approvals.yaml", {"schema": "oss-fuzz-theorems/approvals/1",
                                  "fuzz_targets": [e if isinstance(e, dict) else entry(e) for e in entries]})


def refute(t, sid):
    """Make the proof of sid a refutation."""
    st = next(x for x in facts.load(t.root).statements() if x.id == sid)
    t.put_yaml("proofs/%s/proof.yaml" % sid, {
        "schema": "oss-fuzz-theorems/proof/1", "refutes": sid, "fingerprint": st.fingerprint})
    t.write("proofs/%s/Refutation.v" % sid, "Theorem fails : True. Proof. exact I. Qed.\n")
    if os.path.exists(t.path("proofs", sid, "Proof.v")):
        os.remove(t.path("proofs", sid, "Proof.v"))


def make_private(t, project):
    """Mark project `release: private`.  release.yaml's counts still describe this tree, so they do not change: the
    cut writes the release's own."""
    rel = "projects/%s/project.yaml" % project
    t.put_yaml(rel, dict(t.yaml(rel), release="private"))


def index_status(t):
    """{statement id: status} as index/statements.tsv, the rendered index, says."""
    with open(t.path("index", "statements.tsv"), newline="") as f:
        return {r["id"]: r["status"] for r in csv.DictReader(f, delimiter="\t")}


def snapshot(t):
    """{path: bytes} of every file in the checkout (a symbolic link is not followed)."""
    out = {}
    for dp, _, fns in os.walk(t.root):
        for f in fns:
            full = os.path.join(dp, f)
            if os.path.islink(full):
                out[os.path.relpath(full, t.root)] = os.readlink(full)
            else:
                with open(full, "rb") as fh:
                    out[os.path.relpath(full, t.root)] = fh.read()
    return out


def release(t):
    buf = io.StringIO()
    rc = release_tree.run(t.root, out=buf)
    return rc, buf.getvalue()


class ReleaseTree(unittest.TestCase):
    def setUp(self):
        self.t = Tree()
        self.addCleanup(self.t.close)
        add_proof(self.t, APPROVED + "/plain_halts")
        add_proof(self.t, UNAPPROVED + "/ubsan_agrees")
        self.t.write("proofs/%s/lib/Shared.v" % APPROVED, "Definition one := 1.\n")
        self.t.write("proofs/%s/lib/Shared.v" % UNAPPROVED, "Definition two := 2.\n")
        for u in (APPROVED, UNAPPROVED):
            self.t.write("proofs/%s/provenance/PROVENANCE.md" % u, "The build record.\n")
        self.t.write("proofs/lib/Common.v", "Definition zero := 0.\n")
        self.t.write(".github/CODEOWNERS", CODEOWNERS)
        self.assertEqual(self.t.generate(), 0, self.t.last_output)

    def assertRefused(self, why):
        """release-tree refuses, says why, and leaves every file of the checkout byte for byte as it was."""
        before = snapshot(self.t)
        rc, out = release(self.t)
        self.assertEqual(rc, 1, out)
        self.assertIn(why, out)
        self.assertEqual(snapshot(self.t), before)

    def test_keeps_only_the_approved_proofs_and_renders_their_statuses(self):
        approve(self.t, APPROVED)
        self.assertEqual([str(f) for f in self.t.lint()], [])
        self.assertEqual(index_status(self.t)[UNAPPROVED + "/ubsan_agrees"], "proved")
        rc, out = release(self.t)
        self.assertEqual(rc, 0, out)
        self.assertTrue(os.path.isfile(self.t.path("proofs", APPROVED, "plain_halts", "Proof.v")))
        self.assertTrue(os.path.isfile(self.t.path("proofs", APPROVED, "lib", "Shared.v")))
        self.assertTrue(os.path.isfile(self.t.path("proofs", APPROVED, "provenance", "PROVENANCE.md")))
        self.assertFalse(os.path.exists(self.t.path("proofs", UNAPPROVED)))
        self.assertFalse(os.path.exists(self.t.path("approvals.yaml")))
        self.assertFalse(os.path.exists(self.t.path(".github", "CODEOWNERS")))
        st = index_status(self.t)
        self.assertEqual(st[APPROVED + "/plain_halts"], "proved")
        self.assertEqual(st[UNAPPROVED + "/ubsan_agrees"], "open")
        self.assertEqual(self.t.generate(check=True), 0, self.t.last_output)
        self.assertEqual([str(f) for f in self.t.lint()], [])

    def test_the_shared_library_and_counterexamples_stay(self):
        approve(self.t, APPROVED)
        cx = "counterexamples/json/fuzzer-parse_bjdata/plain_halts"
        self.assertTrue(os.path.isdir(self.t.path(cx)))
        self.assertEqual(release(self.t)[0], 0)
        self.assertTrue(os.path.isfile(self.t.path("proofs", "lib", "Common.v")))
        self.assertTrue(os.path.isdir(self.t.path(cx)))
        self.assertEqual(index_status(self.t)["json/fuzzer-parse_bjdata/plain_halts"], "counterexample")

    def test_only_the_approved_statements_of_a_fuzz_target_are_kept(self):
        add_proof(self.t, APPROVED + "/ubsan_agrees")
        self.assertEqual(self.t.generate(), 0, self.t.last_output)
        approve(self.t, APPROVED)
        rc, out = release(self.t)
        self.assertEqual(rc, 0, out)
        self.assertTrue(os.path.isfile(self.t.path("proofs", APPROVED, "plain_halts", "Proof.v")))
        self.assertFalse(os.path.exists(self.t.path("proofs", APPROVED, "ubsan_agrees")))
        self.assertTrue(os.path.isfile(self.t.path("proofs", APPROVED, "lib", "Shared.v")))
        st = index_status(self.t)
        self.assertEqual(st[APPROVED + "/plain_halts"], "proved")
        self.assertEqual(st[APPROVED + "/ubsan_agrees"], "open")
        self.assertIn(release_tree.PARTIAL % APPROVED, out)

    def test_a_fuzz_target_with_all_its_proofs_kept_is_not_reported_for_its_lib(self):
        approve(self.t, APPROVED)
        rc, out = release(self.t)
        self.assertEqual(rc, 0, out)
        self.assertNotIn("kept the lib/", out)

    def test_findings_never_ship(self):
        add_findings(self.t)
        make_private(self.t, "zlib")
        self.assertEqual(self.t.generate(), 0, self.t.last_output)
        approve(self.t, entry("json/fuzzer-parse_bjdata", statements=["plain_halts"]))
        rc, out = release(self.t)
        self.assertEqual(rc, 0, out)
        self.assertFalse(os.path.exists(self.t.path("findings")))
        self.assertEqual(sorted(os.listdir(self.t.path("projects", "zlib"))), ["README.md", "project.yaml"])
        self.assertEqual(self.t.yaml("projects/zlib/project.yaml")["status"], "held")
        self.assertIn("removed findings/ and approvals.yaml", out)
        self.assertEqual(self.t.generate(check=True), 0, self.t.last_output)
        self.assertEqual([str(f) for f in self.t.lint()], [])

    def test_a_project_a_finding_holds_back_is_refused(self):
        add_findings(self.t)
        self.assertEqual(self.t.generate(), 0, self.t.last_output)
        approve(self.t, APPROVED)
        self.assertTrue(any("holds back project zlib" in f.msg for f in self.t.lint()))
        self.assertRefused("a finding holds back project zlib")

    def test_a_project_a_finding_holds_back_that_is_not_private_is_refused(self):
        add_findings(self.t)
        self.t.write("notes/zlib.md", "Notes on zlib.\n")
        self.assertEqual(self.t.generate(), 0, self.t.last_output)
        approve(self.t, entry("json/fuzzer-parse_bjdata", statements=["plain_halts"]))
        self.assertEqual([str(f) for f in self.t.lint()], [])
        self.assertRefused("a finding holds back project zlib, which is not private: mark it release: private in "
                           "projects/zlib/project.yaml or disclose the finding first")

    def test_a_held_project_attached_to_its_findings_release_is_refused_before_any_change(self):
        add_findings(self.t)
        rel = "projects/zlib/project.yaml"
        y = self.t.yaml(rel)
        y["assets"]["bin"]["release"] = "findings-zlib"
        self.t.put_yaml(rel, y)
        self.assertEqual(self.t.generate(), 0, self.t.last_output)
        approve(self.t, entry("json/fuzzer-parse_bjdata", statements=["plain_halts"]))
        self.assertRefused("a finding holds back project zlib")

    def test_a_symbolic_link_under_findings_is_refused(self):
        add_findings(self.t)
        make_private(self.t, "zlib")
        self.assertEqual(self.t.generate(), 0, self.t.last_output)
        approve(self.t, entry("json/fuzzer-parse_bjdata", statements=["plain_halts"]))
        outside = self.t.path("..", "outside")
        os.makedirs(outside)
        os.symlink(outside, self.t.path("findings", "zlib", "linked"))
        self.assertRefused("findings/zlib/linked")

    def test_a_listed_refutation_is_refused(self):
        add_proof(self.t, APPROVED + "/asan_halts")
        refute(self.t, APPROVED + "/asan_halts")
        self.assertEqual(self.t.generate(), 0, self.t.last_output)
        approve(self.t, entry(APPROVED, statements=["plain_halts", "asan_halts"]))
        self.assertTrue(any("is a refutation" in f.msg for f in self.t.lint()))
        self.assertRefused("%s/asan_halts: its proof is a refutation" % APPROVED)

    def test_an_extra_file_in_a_kept_statement_directory_is_refused(self):
        approve(self.t, APPROVED)
        self.t.write("proofs/%s/plain_halts/Extra.v" % APPROVED, "Definition x := 0.\n")
        self.assertRefused("proofs/%s/plain_halts/Extra.v" % APPROVED)

    def test_each_file_of_the_shared_library_is_reported(self):
        approve(self.t, APPROVED)
        rc, out = release(self.t)
        self.assertEqual(rc, 0, out)
        self.assertIn("as every release carries proofs/lib/: proofs/lib/Common.v", out)

    def test_a_private_project_oss_fuzz_has_keeps_only_its_held_page(self):
        before = self.t.yaml("projects/json/project.yaml")
        self.t.write("notes/json.md", "Notes on json.\n")
        make_private(self.t, "json")
        self.assertEqual(self.t.generate(), 0, self.t.last_output)
        approve(self.t, APPROVED)
        self.assertEqual([str(f) for f in self.t.lint()], [])
        rc, out = release(self.t)
        self.assertEqual(rc, 0, out)
        self.assertEqual(sorted(os.listdir(self.t.path("projects", "json"))), ["README.md", "project.yaml"])
        self.assertEqual(self.t.yaml("projects/json/project.yaml"), {
            "schema": before["schema"], "project": "json", "homepage": before["homepage"],
            "language": before["language"], "oss_fuzz": before["oss_fuzz"], "status": "held", "reason": "held"})
        for gone in ("counterexamples/json", "notes/json.md", "proofs/json"):
            self.assertFalse(os.path.lexists(self.t.path(gone)), gone)
        self.assertTrue(os.path.isfile(self.t.path("proofs", APPROVED, "plain_halts", "Proof.v")))
        self.assertIn("Held from this release", self.t.read("projects/json/README.md"))
        self.assertIn("\njson\t", self.t.read("index/projects.tsv"))
        for idx in ("harnesses", "statements", "binaries"):
            self.assertNotIn("\njson\t", self.t.read("index/%s.tsv" % idx), idx)
        r = self.t.yaml("release.yaml")
        self.assertEqual(r["counts"], {"projects": 5, "available": 1, "harnesses": 2, "binaries": 8})
        self.assertEqual(r["oss_fuzz"]["projects"], 5)
        for rel, data in snapshot(self.t).items():
            self.assertNotIn(b"fuzzer-parse_bjdata", data, rel)
            self.assertNotIn(b"fuzzer_parse_bjdata", data, rel)
        self.assertEqual(self.t.generate(check=True), 0, self.t.last_output)
        self.assertEqual([str(f) for f in self.t.lint()], [])

    def test_a_private_projects_build_record_goes_with_its_proofs(self):
        """The recipe a private project's build record cites is no fact of the release: its held page pins none."""
        record = "proofs/json/fuzzer-parse_bjdata/provenance/PROVENANCE.yaml"
        self.t.write(record, build_record())
        make_private(self.t, "json")
        self.assertEqual(self.t.generate(), 0, self.t.last_output)
        approve(self.t, APPROVED)
        self.assertEqual([str(f) for f in self.t.lint()], [])
        rc, out = release(self.t)
        self.assertEqual(rc, 0, out)
        self.assertFalse(os.path.lexists(self.t.path("proofs", "json")))
        self.assertEqual([str(f) for f in self.t.lint()], [])

    def test_a_private_project_oss_fuzz_does_not_have_is_removed_whole(self):
        add_standin(self.t)
        self.t.write("notes/standin.md", "Notes on the stand-in.\n")
        make_private(self.t, "standin")
        self.assertEqual(self.t.generate(), 0, self.t.last_output)
        approve(self.t, APPROVED)
        self.assertEqual([str(f) for f in self.t.lint()], [])
        rc, out = release(self.t)
        self.assertEqual(rc, 0, out)
        for gone in ("projects/standin", "notes/standin.md"):
            self.assertFalse(os.path.lexists(self.t.path(gone)), gone)
        for rel, data in snapshot(self.t).items():
            self.assertNotIn(b"standin", data, rel)
        r = self.t.yaml("release.yaml")
        self.assertEqual(r["counts"], {"projects": 5, "available": 2, "harnesses": 3, "binaries": 12})
        self.assertEqual(r["oss_fuzz"]["projects"], 5)
        self.assertEqual(self.t.generate(check=True), 0, self.t.last_output)
        self.assertEqual([str(f) for f in self.t.lint()], [])

    def test_an_image_library_only_a_private_project_links_leaves_release_yaml(self):
        h = "projects/json/fuzzer-parse_bjdata/harness.yaml"
        y = self.t.yaml(h)
        for b in y["builds"].values():
            b["uninstrumented"] = [{"name": "libgmp.a", "kind": "image-library"}]
        self.t.put_yaml(h, y)
        r = self.t.yaml("release.yaml")
        r["image_libraries"] = {"libgmp.a": {"library": "GMP", "licence": "LGPL-3.0-or-later OR GPL-2.0-or-later",
                                             "copyleft": False, "in_sysroot_src": True}}
        self.t.put_yaml("release.yaml", r)
        make_private(self.t, "json")
        self.assertEqual(self.t.generate(), 0, self.t.last_output)
        approve(self.t, APPROVED)
        self.assertEqual([str(f) for f in self.t.lint()], [])
        rc, out = release(self.t)
        self.assertEqual(rc, 0, out)
        self.assertNotIn("libgmp", self.t.read("release.yaml"))
        self.assertEqual([str(f) for f in self.t.lint()], [])

    def test_shipped_text_that_names_a_private_fuzz_target_is_refused(self):
        make_private(self.t, "json")
        self.assertEqual(self.t.generate(), 0, self.t.last_output)
        approve(self.t, APPROVED)
        cases = [("CHANGELOG.md", "json/fuzzer-parse_bjdata", b"Proved json/fuzzer-parse_bjdata/plain_halts.\n"),
                 ("docs/notes.md", "json/fuzzer-parse_bjdata", b"see json/fuzzer-parse_bjdata\n"),
                 ("notes/zlib.md", "json%2Ffuzzer-parse_bjdata", b"the path json%2Ffuzzer-parse_bjdata\n"),
                 ("docs/rocq.md", "OssFuzzTheorems.json.fuzzer_parse_bjdata",
                  b"Require OssFuzzTheorems.json.fuzzer_parse_bjdata.\n"),
                 ("docs/nul.md", "json/fuzzer-parse_bjdata", b"\0json/fuzzer-parse_bjdata\n"),
                 ("docs/wide.md", "json/fuzzer-parse_bjdata", "json/fuzzer-parse_bjdata\n".encode("utf-16")),
                 ("docs/blob.bin", "json/fuzzer-parse_bjdata", b"\x7fELF\0\0json/fuzzer-parse_bjdata\0")]
        for rel, needle, data in cases:
            with self.subTest(rel=rel):
                self.t.write(rel, data, mode="wb")
                self.assertRefused("error: %s names %s, which a private project or a finding holds back" % (rel, needle))
                os.remove(self.t.path(rel))

    def test_shipped_text_that_names_a_holding_finding_is_refused(self):
        add_findings(self.t)
        make_private(self.t, "zlib")
        self.assertEqual(self.t.generate(), 0, self.t.last_output)
        approve(self.t, entry("json/fuzzer-parse_bjdata", statements=["plain_halts"]))
        for needle in ("stand-in-abort", "0001-stand-in.patch"):
            with self.subTest(needle=needle):
                self.t.write("CHANGELOG.md", "Fixed %s in adler32.\n" % needle)
                self.assertRefused("error: CHANGELOG.md names %s, which a private project or a finding holds back"
                                   % needle)
                os.remove(self.t.path("CHANGELOG.md"))

    def test_a_file_git_tracks_at_an_ignored_path_is_refused(self):
        approve(self.t, APPROVED)
        self.t.write("docs/_build/page.html", "built\n")
        subprocess.run(["git", "init", "-q", self.t.root], check=True)
        subprocess.run(["git", "-C", self.t.root, "add", "-f", "docs/_build/page.html"], check=True)
        self.assertRefused("docs/_build/page.html (tracked by git at an ignored path)")

    def test_a_private_project_cannot_be_approved(self):
        make_private(self.t, "zlib")
        self.assertEqual(self.t.generate(), 0, self.t.last_output)
        approve(self.t, APPROVED)
        self.assertTrue(any("is private (release: private" in f.msg for f in self.t.lint()))
        self.assertRefused("project zlib is private (release: private in its project.yaml)")

    def test_counts_that_do_not_describe_this_tree_are_refused(self):
        r = self.t.yaml("release.yaml")
        r["counts"]["available"] = 1
        self.t.put_yaml("release.yaml", r)
        approve(self.t, APPROVED)
        rc, out = release(self.t)
        self.assertEqual(rc, 1, out)
        self.assertNotIn("unknown key", out)
        self.assertNotIn("projects/json/project.yaml", out)
        self.assertIn("error: release.yaml: counts.available is 1 but the tree has 2\n", out)

    def test_a_private_project_leaves_this_tree_counts_as_they_are(self):
        """release.yaml and the rendering agree in this repository, private projects and all."""
        before = self.t.yaml("release.yaml")["counts"]
        make_private(self.t, "json")
        self.assertEqual(self.t.generate(check=True), 0, self.t.last_output)
        self.assertEqual([str(f) for f in self.t.lint()], [])
        self.assertEqual(self.t.yaml("release.yaml")["counts"], before)
        self.assertIn("The 2 available projects have 3 harnesses", self.t.read("README.md"))

    def test_a_statement_the_fuzz_target_does_not_have_is_refused(self):
        approve(self.t, entry(APPROVED, statements=["plain_halts", "no_such_statement"]))
        self.assertRefused("no_such_statement is not a statement of zlib/checksum_fuzzer")

    def test_a_project_left_with_no_proofs_leaves_no_directory(self):
        approve(self.t, entry("json/fuzzer-parse_bjdata", statements=["plain_halts"]))
        rc, out = release(self.t)
        self.assertEqual(rc, 0, out)
        self.assertFalse(os.path.exists(self.t.path("proofs", "zlib")))

    def test_the_facts_review_files_never_ship(self):
        self.t.write(".github/workflows/facts-review.yml", "name: facts-review\n")
        self.t.write(".claude/skills/review-facts/SKILL.md", "# review the facts\n")
        approve(self.t, APPROVED)
        self.assertEqual([str(f) for f in self.t.lint()], [])
        rc, out = release(self.t)
        self.assertEqual(rc, 0, out)
        for gone in (".github/workflows/facts-review.yml", ".claude/skills/review-facts/SKILL.md"):
            self.assertFalse(os.path.lexists(self.t.path(gone)), gone)
        self.assertIn(".github/workflows/facts-review.yml", out)

    def test_without_codeowners_it_says_what_it_removed(self):
        os.remove(self.t.path(".github", "CODEOWNERS"))
        approve(self.t, APPROVED)
        rc, out = release(self.t)
        self.assertEqual(rc, 0, out)
        self.assertIn("removed approvals.yaml;", out)
        self.assertNotIn("CODEOWNERS", out)

    def test_no_approvals_file_changes_nothing(self):
        self.assertRefused("no approvals.yaml")

    def test_an_entry_that_names_no_fuzz_target_is_refused_and_changes_nothing(self):
        approve(self.t, APPROVED, "zlib/no_such_fuzzer")
        self.assertTrue(any("not an included fuzz target" in f.msg for f in self.t.lint()))
        self.assertRefused("zlib/no_such_fuzzer is not an included fuzz target")

    def test_an_entry_without_its_approver_is_refused_and_changes_nothing(self):
        e = entry(APPROVED)
        del e["approved_by"]
        approve(self.t, e)
        self.assertIn("schema", rules_of(self.t.lint()))
        self.assertRefused("missing key 'approved_by'")

    def test_an_empty_list_is_refused(self):
        approve(self.t)
        self.assertIn("schema", rules_of(self.t.lint()))
        self.assertRefused("at least 1 item(s) required")

    def test_a_symbolic_link_under_proofs_is_refused_and_changes_nothing(self):
        approve(self.t, APPROVED)
        outside = self.t.path("..", "outside", "victim")
        os.makedirs(outside)
        os.symlink(os.path.dirname(outside), self.t.path("proofs", "zlib", "linked"))
        self.assertRefused("proofs/zlib/linked")
        self.assertTrue(os.path.isdir(outside))

    def test_a_stray_file_under_proofs_is_refused(self):
        approve(self.t, APPROVED)
        self.t.write("proofs/zlib/STRAY.v", "Definition x := 0.\n")
        self.assertRefused("proofs/zlib/STRAY.v")

    def test_a_stray_file_beside_the_statements_is_refused(self):
        approve(self.t, APPROVED)
        self.t.write("proofs/%s/STRAY.v" % APPROVED, "Definition x := 0.\n")
        self.assertRefused("proofs/%s/STRAY.v" % APPROVED)

    def test_a_listed_statement_with_no_proof_is_reported(self):
        approve(self.t, entry(APPROVED, statements=["plain_halts", "asan_halts"]))
        rc, out = release(self.t)
        self.assertEqual(rc, 0, out)
        self.assertIn("listed, but no proof in this checkout: %s/asan_halts" % APPROVED, out)
        self.assertIn("1 listed statement(s) with no proof", out)

    def test_a_stale_rendering_is_refused_before_anything_is_removed(self):
        approve(self.t, APPROVED)
        self.t.write("projects/zlib/checksum_fuzzer/README.md", "stale\n")
        self.assertRefused("the generated files are not current")

    def test_a_symbolically_linked_proofs_directory_is_refused(self):
        approve(self.t, APPROVED)
        os.rename(self.t.path("proofs"), self.t.path("..", "other-proofs"))
        os.symlink(os.path.join("..", "other-proofs"), self.t.path("proofs"))
        self.assertRefused("proofs: a symbolic link")
        self.assertTrue(os.path.isdir(self.t.path("..", "other-proofs", UNAPPROVED)))

    def test_an_entry_listed_twice(self):
        approve(self.t, APPROVED, APPROVED)
        self.assertTrue(any("listed twice" in f.msg for f in self.t.lint()))

    def test_a_statement_listed_twice(self):
        approve(self.t, entry(APPROVED, statements=["plain_halts", "plain_halts"]))
        self.assertTrue(any("plain_halts is listed twice" in f.msg for f in self.t.lint()))

    def test_a_submission_names_its_review_record_and_only_a_submission_does(self):
        approve(self.t, entry(APPROVED, origin="submission", record="review-2026-10-18"))
        self.assertEqual([str(f) for f in self.t.lint()], [])
        for e in (entry(APPROVED, origin="submission"), entry(APPROVED, record="review-2026-10-18")):
            approve(self.t, e)
            self.assertTrue(any("names the record" in f.msg for f in self.t.lint()), e)


class WriteApprovals(unittest.TestCase):
    """`oft approvals` writes approvals.yaml from the proofs a checkout holds, for the fuzz targets a file lists."""

    def setUp(self):
        self.t = Tree()
        self.addCleanup(self.t.close)
        add_proof(self.t, APPROVED + "/plain_halts")
        add_proof(self.t, APPROVED + "/ubsan_agrees")
        add_proof(self.t, UNAPPROVED + "/ubsan_agrees")
        self.assertEqual(self.t.generate(), 0, self.t.last_output)

    def write(self, listing):
        path = self.t.path("..", "launch.txt")   # beside the checkout, not in it
        with open(path, "w", encoding="utf-8") as f:
            f.write(listing)
        buf = io.StringIO()
        rc = approvals.write(self.t.root, path, approved_by="approver", date="2026-10-20", out=buf)
        return rc, buf.getvalue()

    def test_each_listed_fuzz_target_with_the_statements_it_has_proofs_of(self):
        rc, out = self.write("# the launch set\n%s\n%s\treview-2026-10-18\tubsan_agrees\njson/fuzzer-parse_bjdata\n"
                             % (APPROVED, UNAPPROVED))
        self.assertEqual(rc, 0, out)
        self.assertIn("listed, no proof yet: json/fuzzer-parse_bjdata", out)
        doc = self.t.yaml("approvals.yaml")
        self.assertEqual(doc["fuzz_targets"], [
            {"fuzz_target": UNAPPROVED, "statements": ["ubsan_agrees"], "approved_by": "approver", "date": "2026-10-20",
             "origin": "submission", "record": "review-2026-10-18"},
            {"fuzz_target": APPROVED, "statements": ["plain_halts", "ubsan_agrees"], "approved_by": "approver",
             "date": "2026-10-20", "origin": "this-repository"}])
        self.assertEqual([str(f) for f in self.t.lint()], [])

    def test_only_the_statements_a_record_covers(self):
        rc, out = self.write("%s\treview-2026-10-18\tubsan_agrees\n" % APPROVED)
        self.assertEqual(rc, 0, out)
        self.assertIn("a proof its record does not cover, not listed: %s/plain_halts" % APPROVED, out)
        self.assertEqual(self.t.yaml("approvals.yaml")["fuzz_targets"][0]["statements"], ["ubsan_agrees"])

    def test_a_refutation_is_never_listed(self):
        sid = APPROVED + "/asan_halts"
        refute(self.t, sid)
        self.assertEqual(self.t.generate(), 0, self.t.last_output)
        rc, out = self.write("%s\n" % APPROVED)
        self.assertEqual(rc, 0, out)
        self.assertIn("a refutation, not listed: %s" % sid, out)
        self.assertNotIn("asan_halts", self.t.yaml("approvals.yaml")["fuzz_targets"][0]["statements"])

    def test_a_record_without_its_statements_writes_nothing(self):
        rc, out = self.write("%s\treview-2026-10-18\n" % APPROVED)
        self.assertEqual(rc, 1, out)
        self.assertIn("a record must name the statements it covers", out)
        self.assertFalse(os.path.exists(self.t.path("approvals.yaml")))

    def test_a_covered_name_that_is_no_statement_writes_nothing(self):
        rc, out = self.write("%s\treview-2026-10-18\tplain_halt\n" % APPROVED)
        self.assertEqual(rc, 1, out)
        self.assertIn("'plain_halt' is not a statement of %s" % APPROVED, out)
        self.assertFalse(os.path.exists(self.t.path("approvals.yaml")))

    def test_a_project_a_finding_holds_back_is_not_listed(self):
        add_findings(self.t)
        self.assertEqual(self.t.generate(), 0, self.t.last_output)
        rc, out = self.write("%s\n" % APPROVED)
        self.assertEqual(rc, 1, out)
        self.assertIn("a finding holds back its project, not listed: %s" % APPROVED, out)
        self.assertFalse(os.path.exists(self.t.path("approvals.yaml")))

    def test_a_private_project_is_not_listed(self):
        make_private(self.t, "zlib")
        self.assertEqual(self.t.generate(), 0, self.t.last_output)
        rc, out = self.write("%s\n" % APPROVED)
        self.assertEqual(rc, 1, out)
        self.assertIn("its project is private (release: private), not listed: %s" % APPROVED, out)
        self.assertFalse(os.path.exists(self.t.path("approvals.yaml")))

    def test_an_unchanged_entry_keeps_its_approver_and_date(self):
        rc, out = self.write("%s\n" % APPROVED)
        self.assertEqual(rc, 0, out)
        path = self.t.path("..", "launch.txt")
        with open(path, "w", encoding="utf-8") as f:
            f.write("%s\n%s\treview-2026-10-18\tubsan_agrees\n" % (APPROVED, UNAPPROVED))
        rc = approvals.write(self.t.root, path, approved_by="bob", date="2026-10-25", out=io.StringIO())
        self.assertEqual(rc, 0)
        by = {e["fuzz_target"]: (e["approved_by"], e["date"]) for e in self.t.yaml("approvals.yaml")["fuzz_targets"]}
        self.assertEqual(by, {APPROVED: ("approver", "2026-10-20"), UNAPPROVED: ("bob", "2026-10-25")})
        with open(path, "w", encoding="utf-8") as f:
            f.write("%s\treview-2026-10-18\tplain_halts\n" % APPROVED)
        self.assertEqual(approvals.write(self.t.root, path, approved_by="bob", date="2026-10-26", out=io.StringIO()), 0)
        self.assertEqual(self.t.yaml("approvals.yaml")["fuzz_targets"][0]["approved_by"], "bob")

    def test_a_lib_kept_with_unlisted_proofs_is_reported(self):
        self.t.write("proofs/%s/lib/Shared.v" % APPROVED, "Definition one := 1.\n")
        self.assertEqual(self.t.generate(), 0, self.t.last_output)
        rc, out = self.write("%s\treview-2026-10-18\tubsan_agrees\n" % APPROVED)
        self.assertEqual(rc, 0, out)
        self.assertIn(release_tree.PARTIAL % APPROVED, out)

    def test_a_tab_with_no_record_writes_nothing(self):
        rc, out = self.write("%s\t\n" % APPROVED)
        self.assertEqual(rc, 1, out)
        self.assertIn("an empty field", out)

    def test_a_fourth_field_writes_nothing(self):
        rc, out = self.write("%s\treview-2026-10-18\tubsan_agrees\textra\n" % APPROVED)
        self.assertEqual(rc, 1, out)
        self.assertIn("more than three fields", out)
        self.assertFalse(os.path.exists(self.t.path("approvals.yaml")))

    def test_an_outdated_approvals_file_does_not_stop_it(self):
        self.t.put_yaml("approvals.yaml", {"schema": "oss-fuzz-theorems/approvals/1",
                                           "fuzz_targets": [{"fuzz_target": APPROVED}]})
        rc, out = self.write("%s\n" % APPROVED)
        self.assertEqual(rc, 0, out)
        self.assertEqual([str(f) for f in self.t.lint()], [])

    def test_a_list_with_no_proof_at_all_writes_nothing(self):
        rc, out = self.write("json/fuzzer-parse_bjdata\n")
        self.assertEqual(rc, 1, out)
        self.assertFalse(os.path.exists(self.t.path("approvals.yaml")))

    def test_a_target_listed_twice_writes_nothing(self):
        rc, out = self.write("%s\n%s\n" % (APPROVED, APPROVED))
        self.assertEqual(rc, 1, out)
        self.assertIn("listed twice", out)
        self.assertFalse(os.path.exists(self.t.path("approvals.yaml")))

    def test_a_name_that_is_no_fuzz_target_writes_nothing(self):
        rc, out = self.write("%s\nzlib/no_such_fuzzer\n" % APPROVED)
        self.assertEqual(rc, 1, out)
        self.assertIn("'zlib/no_such_fuzzer' is not an included fuzz target", out)
        self.assertFalse(os.path.exists(self.t.path("approvals.yaml")))


if __name__ == "__main__":
    unittest.main()
