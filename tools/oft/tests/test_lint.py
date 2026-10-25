"""Every rule of `oft lint`, each with a planted positive that must fail it,
and the clean fixture and this repository itself, which must pass."""
import contextlib
import hashlib
import io
import os
import shutil
import subprocess
import sys
import tempfile
import time
import unittest
from unittest import mock

from oft import facts, lint, urls
from oft.tests.helpers import (FIXTURE_RECIPE, NEXT_RECIPE, REPO, Tree, add_findings, build_record, later_release,
                                older_shape, recipe_only_rebuild, rules_of, tree)

PRELAUNCH = "theorem-labs/oss-verify" + "-prelaunch"


class Clean(unittest.TestCase):
    def test_fixture_is_clean(self):
        with tree() as t:
            self.assertEqual([str(f) for f in t.lint()], [])

    # On a pull request, pr.yml sets OFT_SKIP_REPOSITORY_LINT=1 when the change leaves tools/ as it is but for test
    # data (no Python file) under tests/, ci/ and the README: its lint job has then run the same code over this same
    # tree, with --changed and --pr-kind on top.
    @unittest.skipIf(os.environ.get("OFT_SKIP_REPOSITORY_LINT") == "1",
                     "pr.yml's lint ran the same code over this tree")
    def test_this_repository_is_clean(self):
        found = lint.run(REPO, skeleton=True)
        self.assertEqual([str(f) for f in found], [])
        self.assertGreater(len(lint.walk(REPO)), 20, "examined almost nothing")

    def test_a_scan_that_examines_nothing_fails(self):
        with tempfile.TemporaryDirectory() as d:
            self.assertEqual(rules_of(lint.run(d, skeleton=True)), ["paths"])

    def test_a_git_worktree_skips_what_gitignore_excludes(self):
        """In a `git worktree` checkout .git is a file, not a directory; ignored files are still not linted."""
        with tree() as t, tempfile.TemporaryDirectory() as d:
            t.write(".gitignore", "*.pyc\n")
            git = ["git", "-c", "user.name=t", "-c", "user.email=t@t", "-C"]
            subprocess.run(git + [t.root, "init", "-q"], check=True)
            subprocess.run(git + [t.root, "add", "-A"], check=True)
            subprocess.run(git + [t.root, "commit", "-q", "-m", "fixture"], check=True)
            wt = os.path.join(d, "wt")
            subprocess.run(git + [t.root, "worktree", "add", "-q", "--detach", wt], check=True)
            with open(os.path.join(wt, "tools.pyc"), "w") as f:
                f.write("x")
            self.assertTrue(os.path.isfile(os.path.join(wt, ".git")))
            self.assertNotIn("tools.pyc", lint.walk(wt))
            self.assertIn(".gitignore", lint.walk(wt))


class Paths(unittest.TestCase):
    def test_a_stray_path(self):
        with tree() as t:
            t.write("projects/zlib/checksum_fuzzer/scratch/x.log", "a stray file\n")
            self.assertIn("paths", rules_of(t.lint()))

    def test_a_derived_file(self):
        with tree() as t:
            t.write("projects/zlib/checksum_fuzzer/Statements.vo", "x")
            self.assertIn("paths", rules_of(t.lint()))

    def test_a_name_git_quotes(self):
        # a path a source pattern admits, so that only the name is wrong
        for name in ('a"b.c', "a\\b.c", "a\tb.c"):
            with tree() as t:
                t.write("projects/zlib/checksum_fuzzer/source/" + name, "int x;\n")
                found = [f for f in t.lint() if f.rule == "paths"]
                self.assertTrue(any("control character" in f.msg for f in found), (name, [str(f) for f in found]))

    def test_an_elf_file(self):
        with tree() as t:
            t.write("projects/zlib/checksum_fuzzer/source/a.out", "\x7fELF\x02\x01\x01")
            found = t.lint()
            self.assertTrue(any("an ELF file" in f.msg for f in found))

    def test_an_lfs_pointer(self):
        with tree() as t:
            t.write("notes/json.md", "version https://git-lfs.github.com/spec/v1\noid sha256:00\n")
            self.assertTrue(any("LFS" in f.msg for f in t.lint()))

    def test_gitattributes_that_change_what_a_checkout_holds(self):
        """A checkout that differs from the blobs: an LFS filter, and a working-tree-encoding (a file checked out in
        UTF-16 has NUL bytes, so the text rules would skip it, while GitHub serves its UTF-8 blob)."""
        for line, msg in (("*.bin filter=lfs diff=lfs merge=lfs -text", "an LFS filter"),
                          ("notes/*.md working-tree-encoding=UTF-16LE", "a working-tree-encoding")):
            with self.subTest(line=line), tree() as t:
                t.write(".gitattributes", line + "\n")
                self.assertIn("paths .gitattributes: " + msg, [str(f) for f in t.lint()])

    def test_a_non_release_change_to_facts(self):
        with tree() as t:
            changed = ["projects/zlib/checksum_fuzzer/harness.yaml"]
            self.assertIn("paths", rules_of(t.lint(changed=changed, pr_kind="maintainer")))
            self.assertEqual(t.lint(changed=changed, pr_kind="release"), [])

    def test_a_contributor_outside_proofs(self):
        with tree() as t:
            self.assertIn("paths", rules_of(t.lint(changed=["tools/oft/lint.py"], pr_kind="contributor")))
            self.assertEqual(t.lint(changed=["docs/proving.md"], pr_kind="contributor"), [])

    def test_a_size_cap(self):
        with tree() as t:
            t.write("notes/json.md", "x" * (lint.MAX_BYTES + 1))
            self.assertTrue(any("cap" in f.msg for f in t.lint()))

    def lint_in_a_child(self, t):
        """oft lint over t in a child process, so a read that blocks fails the test instead of hanging it."""
        tools = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
        try:
            r = subprocess.run([sys.executable, "-B", "-m", "oft", "--root", t.root, "lint"], cwd=tools,
                               env=dict(os.environ, PYTHONPATH=tools), capture_output=True, text=True, timeout=60)
        except subprocess.TimeoutExpired:
            self.fail("oft lint blocked reading a file")
        return r.stdout

    def test_a_symlink_is_reported_and_never_read(self):
        """A link to a file outside the tree is not read for text: its target's host path is not reported."""
        with tree() as t, tempfile.TemporaryDirectory() as outside:
            target = os.path.join(outside, "target.md")
            with open(target, "w") as f:
                f.write("see /" + "data/someone/x\n")
            os.remove(t.path("notes/zlib.md"))
            os.symlink(target, t.path("notes/zlib.md"))
            out = self.lint_in_a_child(t)
            self.assertIn("paths notes/zlib.md: a symbolic link", out)
            self.assertNotIn("private-data notes/zlib.md", out)

    def test_a_link_to_a_fifo_or_a_fifo_never_blocks_lint(self):
        for kind in ("link", "fifo"):
            with self.subTest(kind=kind), tree() as t, tempfile.TemporaryDirectory() as outside:
                os.remove(t.path("notes/zlib.md"))
                fifo = os.path.join(outside, "fifo") if kind == "link" else t.path("notes/zlib.md")
                os.mkfifo(fifo)
                if kind == "link":
                    os.symlink(fifo, t.path("notes/zlib.md"))
                out = self.lint_in_a_child(t)
                self.assertIn("paths notes/zlib.md: %s" % ("a symbolic link" if kind == "link" else "not a regular file"),
                              out)

    def test_a_file_over_its_cap_is_reported_and_not_read_for_text(self):
        with tree() as t:
            t.write("notes/zlib.md", "see /" + "data/someone/x\n" + "x" * lint.MAX_BYTES)
            found = [str(f) for f in t.lint()]
            self.assertTrue(any(f.startswith("paths notes/zlib.md: ") and "cap" in f for f in found), found)
            self.assertFalse(any(f.startswith("private-data notes/zlib.md") for f in found), found)


class Changes(unittest.TestCase):
    FINDING = "findings/zlib/checksum_fuzzer/stand-in-abort"
    YAML = FINDING + "/finding.yaml"

    def test_a_finding_is_never_deleted_by_any_pull_request_kind(self):
        for kind in ("contributor", "maintainer", "release"):
            with self.subTest(kind=kind), tree() as t:
                add_findings(t)
                shutil.rmtree(t.path(self.FINDING))
                found = [str(f) for f in t.lint(changed=[self.YAML], pr_kind=kind)]
                self.assertIn("paths %s: a finding is never deleted: %s" % (self.YAML, self.YAML), found)

    def test_pruning_a_finding_with_an_agreeing_record_is_not_a_deletion(self):
        for kind in ("maintainer", "release"):
            with self.subTest(kind=kind), tree() as t:
                add_findings(t)
                y = t.yaml(self.YAML)
                y["state"] = "pruned"
                y["input"] = {b: dict(r) for b, r in y["control"].items()}
                t.put_yaml(self.YAML, y)
                t.write("findings/zlib/checksum_fuzzer/series", "")
                self.assertEqual([str(f) for f in t.lint(changed=[self.YAML], pr_kind=kind)], [])

    def test_unpatched_pins_are_not_deleted_while_the_base_has_a_finding(self):
        rel = "findings/zlib/unpatched.yaml"
        for kind in ("contributor", "maintainer", "release"):
            with self.subTest(kind=kind), tree() as base, tree() as t:
                add_findings(base)
                add_findings(t)
                os.remove(t.path(rel))
                found = [str(f) for f in t.lint(changed=[rel], pr_kind=kind, base=base.root)]
                self.assertIn("paths %s: a finding's unpatched pins are never deleted: %s" % (rel, rel), found)

    def test_a_finding_moved_away_is_deleted_though_the_diff_names_only_where_it_went(self):
        """A diff that detects renames lists a moved file only at its new path, so the base's ledger is walked."""
        moved = "findings/zlib/checksum_fuzzer/stand-in-abort.yaml"
        with tree() as base, tree() as t:
            add_findings(base)
            add_findings(t)
            os.rename(t.path(self.YAML), t.path(moved))
            found = [str(f) for f in t.lint(changed=[moved], pr_kind="maintainer", base=base.root)]
            self.assertIn("paths %s: a finding is never deleted: %s" % (self.YAML, self.YAML), found)

    def test_removing_a_whole_project_ledger_deletes_every_record_and_its_pins(self):
        with tree() as base, tree() as t:
            add_findings(base)
            base.write("findings/zlib/bin/zlib-unpatched-bin.tar.zst", "fetched, not tracked")
            found = [str(f) for f in t.lint(changed=[], pr_kind="release", base=base.root)]
            deleted = sorted(f.split(": ", 1)[0] for f in found if "never deleted" in f)
            self.assertEqual(deleted, ["paths findings/zlib/checksum_fuzzer/stand-in-abort/" + name for name in
                                       ("0001-stand-in.patch", "control.bin", "finding.yaml", "input.bin")]
                             + ["paths findings/zlib/unpatched.yaml"])

    def test_a_base_without_findings_judges_only_the_diff(self):
        with tree() as base, tree() as t:
            add_findings(t)
            self.assertEqual([str(f) for f in t.lint(changed=[self.YAML], pr_kind="maintainer", base=base.root)], [])

    def ledger_change(self, change, runner=None):
        """The findings of a maintainer change to the fixture's finding, judged against a base that has it.  runner:
        the proposed tree's images.runner, which only a release pull request changes."""
        with tree() as base, tree() as t:
            add_findings(base)
            add_findings(t)
            changed = change(t)
            if runner:
                y = t.yaml("release.yaml")
                y["images"]["runner"] = runner
                t.put_yaml("release.yaml", y)
                changed.append("release.yaml")
            kind = "release" if runner else "maintainer"
            return [str(f) for f in t.lint(changed=changed, pr_kind=kind, base=base.root)]

    def runs_changed(self, which_builds):
        return ["paths %s: a finding's recorded runs are never changed: %s %s" % (self.YAML, self.YAML, wb)
                for wb in which_builds]

    def test_a_recorded_input_is_never_rewritten(self):
        """The gate's case: the input replaced by the control, its runs copied, the finding marked pruned and its
        patch taken out of the series.  Every rule of the record passes; only the ledger refuses it."""
        rel = self.FINDING + "/input.bin"

        def rewrite(t):
            shutil.copyfile(t.path(self.FINDING, "control.bin"), t.path(rel))
            y = t.yaml(self.YAML)
            y["state"] = "pruned"
            y["input"] = {b: dict(r) for b, r in y["control"].items()}
            t.put_yaml(self.YAML, y)
            t.write("findings/zlib/checksum_fuzzer/series", "")
            return [rel, self.YAML, "findings/zlib/checksum_fuzzer/series"]
        self.assertEqual(self.ledger_change(rewrite), ["paths %s: a finding's input.bin is never changed: %s" % (rel, rel)]
                         + self.runs_changed(["input.asan", "input.asan-ubsan"]))

    def test_a_recorded_control_is_never_rewritten(self):
        rel = self.FINDING + "/control.bin"

        def rewrite(t):
            t.write(rel, "\0\0\0\0\0\0\nanother control\n")
            return [rel]
        self.assertEqual(self.ledger_change(rewrite),
                         ["paths %s: a finding's control.bin is never changed: %s" % (rel, rel)])

    def test_a_recorded_input_over_64_kib_is_never_rewritten(self):
        """The base comparison reads input.bin and control.bin up to the finding input cap, as the loader does, so a
        full-payload input is compared too."""
        for name in ("input.bin", "control.bin"):
            rel = self.FINDING + "/" + name
            long_input = b"\0\0\0\0\0\0" + b"x" * (64 << 10)
            with self.subTest(name=name), tree() as base, tree() as t:
                add_findings(base)
                add_findings(t)
                base.write(rel, long_input, "wb")
                t.write(rel, long_input, "wb")
                self.assertEqual([str(f) for f in t.lint(changed=[rel], pr_kind="maintainer", base=base.root)], [])
                t.write(rel, long_input[:-1] + b"y", "wb")
                self.assertEqual([str(f) for f in t.lint(changed=[rel], pr_kind="maintainer", base=base.root)],
                                 ["paths %s: a finding's %s is never changed: %s" % (rel, name, rel)])

    def test_the_statements_a_finding_shows_false_only_grow(self):
        """Narrowed to asan_agrees, with the asan-ubsan runs dropped beside it, the record meets every rule; the base
        narrowed the same way, the proposed tree's two statements are a stronger claim, which CI checks."""
        def narrow(t):
            y = t.yaml(self.YAML)
            y["statements"] = ["asan_agrees"]
            for runs in (y["input"], y["control"]):
                del runs["asan-ubsan"]
            t.put_yaml(self.YAML, y)
            return [self.YAML]
        self.assertEqual(self.ledger_change(narrow),
                         ["paths %s: a finding's statements only grow: %s no longer names asan_ubsan_agrees"
                          % (self.YAML, self.YAML)] + self.runs_changed(["input.asan-ubsan", "control.asan-ubsan"]))
        with tree() as base, tree() as t:
            add_findings(base)
            add_findings(t)
            narrow(base)
            self.assertEqual([str(f) for f in t.lint(changed=[self.YAML], pr_kind="maintainer", base=base.root)], [])

    def test_the_unpatched_pins_of_a_harness_with_a_finding_never_change(self):
        rel = "findings/zlib/unpatched.yaml"

        def repin(t):
            y = t.yaml(rel)
            y["harnesses"]["checksum_fuzzer"]["asan"]["sha256"] = "8" * 64
            t.put_yaml(rel, y)
            return [rel]
        self.assertEqual(self.ledger_change(repin),
                         ["paths %s: a finding's unpatched pins are never changed: %s harnesses.checksum_fuzzer.asan"
                          % (rel, rel)])

    def test_a_pin_for_a_build_no_base_finding_ran_may_be_added_or_changed(self):
        """The base finding runs plain, asan and asan-ubsan, so only those pins are frozen."""
        rel = "findings/zlib/unpatched.yaml"
        with tree() as base, tree() as t:
            add_findings(base)
            add_findings(t)
            y = base.yaml(rel)
            del y["harnesses"]["checksum_fuzzer"]["ubsan"]
            base.put_yaml(rel, y)
            self.assertEqual([str(f) for f in t.lint(changed=[rel], pr_kind="maintainer", base=base.root)], [])
            y = t.yaml(rel)
            y["harnesses"]["checksum_fuzzer"]["ubsan"]["sha256"] = "9" * 64
            t.put_yaml(rel, y)
            self.assertEqual([str(f) for f in t.lint(changed=[rel], pr_kind="maintainer", base=base.root)], [])

    def prune(self, t):
        """The finding pruned with its input.bin kept, its input's runs those of its control."""
        y = t.yaml(self.YAML)
        y["state"] = "pruned"
        y["input"] = {b: dict(r) for b, r in y["control"].items()}
        t.put_yaml(self.YAML, y)
        t.write("findings/zlib/checksum_fuzzer/series", "")
        return [self.YAML, "findings/zlib/checksum_fuzzer/series"]

    def test_a_base_finding_s_runs_never_change_with_the_same_runner(self):
        """The adversarial gate's M2lin, judged by lint: the base has the finding and no asan or asan-ubsan pin; the
        change pins those builds to the fixed binaries and prunes the finding with its input kept.  The same prune
        where the base pins every build is refused too: the same binaries in the same runner give the same runs."""
        rel = "findings/zlib/unpatched.yaml"

        def prune_onto_fixed(t):
            u = t.yaml(rel)
            for b in ("asan", "asan-ubsan"):
                u["harnesses"]["checksum_fuzzer"][b]["sha256"] = "e" * 64
            t.put_yaml(rel, u)
            return self.prune(t) + [rel]
        with tree() as base, tree() as t:
            add_findings(base)
            add_findings(t)
            u = base.yaml(rel)
            for b in ("asan", "asan-ubsan"):
                del u["harnesses"]["checksum_fuzzer"][b]
            base.put_yaml(rel, u)
            found = [str(f) for f in t.lint(changed=prune_onto_fixed(t), pr_kind="maintainer", base=base.root)]
            self.assertEqual(found, self.runs_changed(["input.asan", "input.asan-ubsan"]))
        self.assertEqual(self.ledger_change(self.prune), self.runs_changed(["input.asan", "input.asan-ubsan"]))

    def test_a_new_runner_may_record_a_base_finding_s_runs_again(self):
        """The base is checked, so its runs are what its runner gave on its pins: a change that pins another runner
        image may record them again, or prune the finding, and CI's re-run in that runner checks the new runs."""
        runner = "ghcr.io/theorem-labs/oss-fuzz-theorems-runner@sha256:" + "3" * 64
        self.assertEqual(self.ledger_change(self.prune, runner=runner), [])

        def rerecord(t):
            """The new runner prints the control's stdout otherwise, on every build alike."""
            y = t.yaml(self.YAML)
            for run in y["control"].values():
                run["stdout_sha256"] = "0" * 64
            t.put_yaml(self.YAML, y)
            return [self.YAML]
        self.assertEqual(self.ledger_change(rerecord, runner=runner), [])

    def test_a_finding_s_state_summary_upstream_and_archive_may_change(self):
        """CI re-runs the record against inputs and binaries that stay fixed, so what it says of them may change."""
        def edit(t):
            y = t.yaml(self.YAML)
            y.update(state="reported", upstream="https://bugs.example.org/1", summary="A stand-in finding, reported.")
            t.put_yaml(self.YAML, y)
            u = t.yaml("findings/zlib/unpatched.yaml")
            u["asset"]["sha256"] = "5" * 64
            t.put_yaml("findings/zlib/unpatched.yaml", u)
            return [self.YAML, "findings/zlib/unpatched.yaml"]
        self.assertEqual(self.ledger_change(edit), [])


class Schemas(unittest.TestCase):
    def test_an_unknown_key(self):
        with tree() as t:
            t.write("projects/abseil-py/project.yaml", "colour: {shade: blue}\n", "a")
            self.assertIn("schema", rules_of(t.lint()))

    def test_a_repeated_key(self):
        with tree() as t:
            t.write("projects/abseil-py/project.yaml", "status: available\n", "a")
            self.assertTrue(any("duplicate key" in f.msg for f in t.lint()))

    def test_a_bad_digest(self):
        with tree() as t:
            y = t.yaml("projects/zlib/checksum_fuzzer/harness.yaml")
            y["builds"]["plain"]["sha256"] = "77b4a5be"
            t.put_yaml("projects/zlib/checksum_fuzzer/harness.yaml", y)
            self.assertIn("schema", rules_of(t.lint()))

    def test_a_statement_whose_name_its_fields_contradict(self):
        with tree() as t:
            y = t.yaml("projects/zlib/checksum_fuzzer/harness.yaml")
            y["statements"]["asan_agrees"]["builds"] = ["plain", "ubsan"]
            t.put_yaml("projects/zlib/checksum_fuzzer/harness.yaml", y)
            self.assertTrue(any("give the name ubsan_agrees" in f.msg for f in t.lint()))

    def test_a_toolchain_lock_with_commentary_or_another_checker(self):
        with tree() as t:
            t.write("toolchain/toolchain.lock", "# the checker we used\nchecker=ghcr.io/theorem-labs/"
                    "oss-fuzz-theorems-checker@sha256:" + "4" * 64 + "\n")
            self.assertEqual(len([f for f in t.lint() if f.rule == "schema"]), 2)

    def test_a_toolchain_lock_naming_images_release_yaml_does_not_pin(self):
        with tree() as t:
            img = t.yaml("release.yaml")["images"]
            lock = "checker=%s\nrunner=%s\ntoolchain=%s\n" % (img["checker"], img["runner"], img["builder"][0])
            t.write("toolchain/toolchain.lock", lock)
            self.assertEqual([f for f in t.lint() if f.rule == "schema"], [])
            t.write("toolchain/toolchain.lock", lock.replace(img["runner"], img["checker"]).replace(
                "toolchain=" + img["builder"][0], "toolchain=" + img["runner"]))
            self.assertEqual(sorted(f.msg for f in t.lint() if f.rule == "schema"), [
                "runner differs from release.yaml's images.runner",
                "toolchain is not one of release.yaml's images.builder"])

    def test_a_project_builder_release_yaml_does_not_pin(self):
        with tree() as t:
            img = t.yaml("release.yaml")["images"]
            y = t.yaml("projects/json/project.yaml")
            self.assertEqual(y["build"]["builder"], img["builder"][0])
            self.assertEqual([f for f in t.lint() if f.rule == "schema"], [])
            y["build"]["builder"] = img["runner"]
            t.put_yaml("projects/json/project.yaml", y)
            found = [f for f in t.lint() if f.rule == "schema"]
            self.assertEqual([(f.where, f.msg) for f in found], [
                ("projects/json/project.yaml", "build.builder is not one of release.yaml's images.builder")])

    def test_counts_that_disagree_with_the_tree(self):
        with tree() as t:
            y = t.yaml("release.yaml")
            y["counts"]["binaries"] += 1
            t.put_yaml("release.yaml", y)
            self.assertIn("schema", rules_of(t.lint()))

    def test_a_witness_names_one_of_the_statements_builds(self):
        with tree() as t:
            y = t.yaml("projects/zlib/checksum_fuzzer/harness.yaml")
            y["statements"]["ubsan_halts_may_fail"]["witness"]["build"] = "plain"
            t.put_yaml("projects/zlib/checksum_fuzzer/harness.yaml", y)
            self.assertTrue(any("does not name" in f.msg for f in t.lint()))


class FactsPool(unittest.TestCase):
    def test_a_pool_loads_the_tree_a_serial_load_does_errors_in_the_same_order(self):
        with tree() as t:
            t.write("projects/zlib/checksum_fuzzer/harness.yaml", "statements: {a: 1}\nstatements: {}\n", "a")
            t.write("projects/zlib/project.yaml", "status: [unclosed\n", "a")
            os.makedirs(t.path("projects/nofacts"))
            serial = facts.load(t.root, jobs=1)
            with mock.patch.object(facts, "POOL_MIN_FILES", 0):
                pooled = facts.load(t.root, jobs=4)
            self.assertEqual(len(serial.errors), 2)
            self.assertEqual(pooled.errors, serial.errors)
            self.assertEqual(sorted(pooled.projects), sorted(serial.projects))


class PerFileScope(unittest.TestCase):
    MAIL = "mail someone" + "@" + "example.com"
    HOST = "see /" + "data/someone/x"

    def test_a_pool_reports_what_one_process_reports_in_the_same_order(self):
        with tree() as t:
            t.write("notes/zlib.md", self.MAIL + "\n", "a")
            t.write("docs/x.md", self.HOST + "\n")
            t.write("proofs/zlib/checksum_fuzzer/lib/Table.v", "(* " + self.MAIL + " *)\nDefinition t := 0.\n")
            serial = [str(f) for f in t.lint(jobs=1)]
            with mock.patch.object(lint, "POOL_MIN_FILES", 0):
                pooled = [str(f) for f in t.lint(jobs=4)]
            self.assertEqual(len([f for f in serial if f.startswith("private-data")]), 3)
            self.assertEqual(pooled, serial)

    def test_findings_in_many_files_keep_their_order_across_the_pool(self):
        with tree() as t:
            t.write("notes/zlib.md", "mail someone" + "@" + "example.com; see https://example.org/x\n", "a")
            t.write("proofs/zlib/checksum_fuzzer/lib/Cheat.v", "Axiom cheat : False.\n")
            # findings in many files, so that they span many of the pool's chunks
            for i in range(48):
                t.write("docs/mail-%02d.md" % i, "mail person%d" % i + "@" + "example.com\n")
            one = [str(f) for f in t.lint(jobs=1)]
            self.assertEqual(sorted({f.split()[0] for f in one}), ["links", "private-data", "proofs"])
            self.assertEqual(sum("docs/mail-" in f for f in one), 48)
            with mock.patch.object(lint, "POOL_MIN_FILES", 0):
                self.assertEqual([str(f) for f in t.lint(jobs=4)], one)

    def test_changed_only_scans_only_the_files_changed_since_base(self):
        with tree() as t:
            t.write("notes/zlib.md", self.MAIL + "\n", "a")   # in the base, unchanged since: a per-file finding
            t.write("stray.txt", "x\n")                       # in the base, unchanged since: a whole-tree finding
            git = ["git", "-C", t.root, "-c", "user.name=t", "-c", "user.email=t@t", "-c", "commit.gpgsign=false"]
            subprocess.run(git[:3] + ["init", "-q"], check=True)
            subprocess.run(git + ["add", "-A"], check=True)
            subprocess.run(git + ["commit", "-q", "-m", "base"], check=True)
            t.write("docs/x.md", self.HOST + "\n")            # changed since the base
            mail_line = t.read("notes/zlib.md").split("\n").index(self.MAIL) + 1
            whole = t.lint()
            only = t.lint(changed_only="HEAD")
            private = lambda found: sorted(f.where for f in found if f.rule == "private-data")
            self.assertEqual(private(whole), ["docs/x.md:1", "notes/zlib.md:%d" % mail_line])
            self.assertEqual(private(only), ["docs/x.md:1"])
            self.assertIn("stray.txt", [f.where for f in only if f.rule == "paths"])

    def test_an_exception_for_an_unscanned_file_is_not_reported_unused(self):
        with tree() as t:
            rel = "projects/zlib/checksum_fuzzer/source/checksum_fuzzer.c"
            t.write(rel, "/* built in /" + "home/someone/zlib */\n", "a")
            key = [f for f in t.lint() if f.rule == "private-data"][0].key
            t.put_yaml("tools/oft/lint-exceptions.yaml", {
                "schema": "oss-fuzz-theorems/lint-exceptions/1",
                "exceptions": [{"path": rel, "rule": "private-data", "key": key, "count": 1, "reason": "a test"}]})
            git = ["git", "-C", t.root, "-c", "user.name=t", "-c", "user.email=t@t", "-c", "commit.gpgsign=false"]
            subprocess.run(git[:3] + ["init", "-q"], check=True)
            subprocess.run(git + ["add", "-A"], check=True)
            subprocess.run(git + ["commit", "-q", "-m", "base"], check=True)
            self.assertEqual(t.lint(changed_only="HEAD"), [])
            t.write(rel, "/* nothing private any more */\n")               # the entry's file changed: it is read,
            self.assertTrue(any("not used" in f.msg for f in t.lint(changed_only="HEAD")))   # and the entry is stale

    def test_changed_only_reads_every_file_when_the_exceptions_change(self):
        """An entry removed from lint-exceptions.yaml leaves its finding in a file that did not change."""
        with tree() as t:
            rel = "projects/zlib/checksum_fuzzer/source/checksum_fuzzer.c"
            t.write(rel, "/* built in /" + "home/someone/zlib */\n", "a")
            key = [f for f in t.lint() if f.rule == "private-data"][0].key
            entry = {"path": rel, "rule": "private-data", "key": key, "count": 1, "reason": "a test"}
            t.put_yaml("tools/oft/lint-exceptions.yaml",
                       {"schema": "oss-fuzz-theorems/lint-exceptions/1", "exceptions": [entry]})
            git = ["git", "-C", t.root, "-c", "user.name=t", "-c", "user.email=t@t", "-c", "commit.gpgsign=false"]
            subprocess.run(git[:3] + ["init", "-q"], check=True)
            subprocess.run(git + ["add", "-A"], check=True)
            subprocess.run(git + ["commit", "-q", "-m", "base"], check=True)
            t.put_yaml("tools/oft/lint-exceptions.yaml", {"schema": "oss-fuzz-theorems/lint-exceptions/1"})
            self.assertEqual([f.key for f in t.lint(changed_only="HEAD") if f.rule == "private-data"], [key])

    def held_prelaunch(self, t):
        """The fixture with its finding, which holds zlib back, and zlib built from the port's prelaunch variant: its
        project.yaml may name that variant."""
        add_findings(t)
        p = t.yaml("projects/zlib/project.yaml")
        p["build"]["oss_verify"] = {"repository": PRELAUNCH, "commit": "d" * 40, "path": "projects/zlib"}
        t.put_yaml("projects/zlib/project.yaml", p)

    def test_a_pool_lets_a_held_project_name_the_prelaunch_port(self):
        with tree() as t:
            self.held_prelaunch(t)
            serial = [str(f) for f in t.lint(jobs=1)]
            with mock.patch.object(lint, "POOL_MIN_FILES", 0):
                pooled = [str(f) for f in t.lint(jobs=4)]
            self.assertEqual([f for f in serial if f.startswith("private-data")], [])
            self.assertEqual(pooled, serial)

    def test_changed_only_reads_every_file_again_when_a_finding_changes(self):
        """Which project.yaml may name the prelaunch port follows from the findings: once zlib's finding is public,
        zlib is not held back, and --changed-only reads its unchanged project.yaml again and finds what a full lint
        finds."""
        rel = "findings/zlib/checksum_fuzzer/stand-in-abort/finding.yaml"
        with tree() as t:
            self.held_prelaunch(t)
            git = ["git", "-C", t.root, "-c", "user.name=t", "-c", "user.email=t@t", "-c", "commit.gpgsign=false"]
            subprocess.run(git[:3] + ["init", "-q"], check=True)
            subprocess.run(git + ["add", "-A"], check=True)
            subprocess.run(git + ["commit", "-q", "-m", "base"], check=True)
            y = t.yaml(rel)
            y.update(state="public", upstream="https://bugs.example.org/1")
            t.put_yaml(rel, y)
            private = lambda found: sorted(f.where.split(":")[0] for f in found if f.rule == "private-data")
            whole = private(t.lint())
            self.assertEqual(whole, ["projects/zlib/project.yaml"])
            self.assertEqual(private(t.lint(changed_only="HEAD")), whole)

    def test_jobs_takes_one_or_more(self):
        from oft import __main__ as cli
        with tree() as t:
            for jobs in ("0", "-1", "x"):
                with self.subTest(jobs=jobs):
                    err = io.StringIO()
                    with contextlib.redirect_stderr(err), self.assertRaises(SystemExit) as e:
                        cli.main(["--root", t.root, "lint", "--jobs", jobs])
                    self.assertEqual(e.exception.code, 2)
                    self.assertIn("argument --jobs: %r is not a number of processes (1 or more)" % jobs, err.getvalue())
            with contextlib.redirect_stdout(io.StringIO()) as out:
                self.assertEqual(cli.main(["--root", t.root, "lint", "--jobs", "1"]), 0, out.getvalue())


class PrivateData(unittest.TestCase):
    def check(self, text, path="notes/zlib.md"):
        with tree() as t:
            t.write(path, text, "a")
            return [f for f in t.lint() if f.rule == "private-data"]

    def test_a_host_path(self):
        self.assertEqual(len(self.check("see /" + "data/someone/x\n")), 1)

    def test_a_private_address(self):
        self.assertEqual(len(self.check("host " + ".".join(["10", "1", "2", "3"]) + "\n")), 1)

    def test_a_shared_address_space_address(self):
        address = ".".join(("100", "88", "1", "2"))
        self.assertEqual(len(self.check("host " + address + "\n")), 1)
        self.assertEqual(self.check("version 100.1.2\n"), [])

    def test_an_email_address(self):
        self.assertEqual(len(self.check("mail someone" + "@" + "example.com\n")), 1)

    def test_an_address_shape_inside_a_proof_string_is_payload(self):
        at = "x" + "@" + "y.zz"
        lib = "proofs/zlib/checksum_fuzzer/lib/Table.v"
        self.assertEqual(self.check('Definition t : PrimString.string := "#$%s#$".\n' % at, lib), [])
        self.assertEqual(len(self.check("(* mail %s *)\nDefinition t := 0.\n" % at, lib)), 1)
        self.assertEqual(len(self.check('Definition t := "/' + 'data/someone/x".\n', lib)), 1)

    def test_a_private_key(self):
        self.assertEqual(len(self.check("-----BEGIN RSA " + "PRIVATE KEY-----\n")), 1)

    def test_an_access_token(self):
        self.assertEqual(len(self.check("ghp" + "_" + "A" * 36 + "\n")), 1)

    def test_a_pinned_copy_is_verbatim_only_while_its_bytes_are_the_pinned_ones(self):
        path = "LICENSES/anthropic-proofs-NOTICE"
        text = "Contact someone" + "@" + "example.com; see https://example.org/x\n"
        pin = {path: hashlib.sha256(text.encode()).hexdigest()}
        with mock.patch.dict(lint.PINNED_VERBATIM, pin), tree() as t:
            t.write(path, text)
            self.assertEqual([str(f) for f in t.lint() if f.rule in ("private-data", "links")], [])
            t.write(path, text.replace("x\n", "y\n"))
            self.assertEqual(sorted(f.rule for f in t.lint() if f.rule in ("private-data", "links")),
                             ["links", "private-data"])

    def test_container_home_is_not_a_host(self):
        self.assertEqual(self.check("WORKDIR /home/opam\n"), [])

    def test_upstream_copies_keep_their_authors_addresses(self):
        mail = "/* by someone" + "@" + "example.com */\n"
        self.assertEqual(self.check(mail, "projects/zlib/checksum_fuzzer/source/checksum_fuzzer.c"), [])
        self.assertTrue(lint.verbatim("projects/zlib/checksum_fuzzer/source/x.c"))
        self.assertFalse(lint.verbatim("projects/zlib/api-driver/source/driver.c"))

    def test_an_exception_clears_one_finding_in_an_upstream_copy(self):
        with tree() as t:
            rel = "projects/zlib/checksum_fuzzer/source/checksum_fuzzer.c"
            t.write(rel, "/* built in /" + "home/someone/zlib */\n", "a")
            found = [f for f in t.lint() if f.rule == "private-data"]
            self.assertEqual(len(found), 1)
            t.put_yaml("tools/oft/lint-exceptions.yaml", {
                "schema": "oss-fuzz-theorems/lint-exceptions/1",
                "exceptions": [{"path": rel, "rule": "private-data", "key": found[0].key, "count": 1,
                                "reason": "a test"}]})
            self.assertEqual(t.lint(), [])

    def test_a_text_file_that_is_not_utf8_is_read(self):
        rel = "docs/x.md"
        text = b"\xa9 notes\n\nhttps:" + b"//buildbox-7/x\n\nsee /theorem-labs/" + b"agent-infra\n"
        with tree() as t:
            t.write(rel, "", "a")
            with open(t.path(rel), "wb") as out:
                out.write(text)
            found = {(f.rule, f.where) for f in t.lint() if f.where.startswith(rel + ":")}
        self.assertEqual(found, {("links", rel + ":3"), ("private-data", rel + ":5")})

    def test_the_prelaunch_port_name_is_allowed_only_in_a_held_project_field(self):
        with tree() as t:
            t.write("notes/zlib.md", PRELAUNCH + "\n", "a")
            self.assertTrue(any(f.rule == "private-data" for f in t.lint()))
        with tree() as t:
            add_findings(t)
            p = t.yaml("projects/zlib/project.yaml")
            p["build"]["oss_verify"] = {"repository": PRELAUNCH, "commit": "d" * 40, "path": "projects/zlib"}
            p["assets"]["port"] = {"release": "v2026.11.0", "file": "zlib-port.tar.zst", "bytes": 1000,
                                   "sha256": "9" * 64}
            t.put_yaml("projects/zlib/project.yaml", p)
            self.assertEqual([f for f in t.lint() if f.rule == "private-data"], [])
        with tree() as t:
            p = t.yaml("projects/zlib/project.yaml")
            p["build"]["oss_verify"] = {"repository": PRELAUNCH, "commit": "d" * 40, "path": "projects/zlib"}
            t.put_yaml("projects/zlib/project.yaml", p)
            self.assertTrue(any(f.rule == "private-data" and f.where.startswith("projects/zlib/project.yaml:")
                                for f in t.lint()))

    def test_an_unused_exception(self):
        with tree() as t:
            t.put_yaml("tools/oft/lint-exceptions.yaml", {
                "schema": "oss-fuzz-theorems/lint-exceptions/1",
                "exceptions": [{"path": "notes/zlib.md", "rule": "private-data", "key": "0" * 16, "count": 1,
                                "reason": "stale"}]})
            self.assertTrue(any("not used" in f.msg for f in t.lint()))


class Links(unittest.TestCase):
    def test_a_link_to_a_private_repository(self):
        # the link rule refuses the link, and the private-data rule the private repository's name in the text
        with tree() as t:
            t.write("notes/zlib.md", "See https://github.com/theorem-labs/" + "some-private-repository.\n", "a")
            self.assertEqual(rules_of(t.lint()), ["links", "private-data"])

    def test_a_link_to_a_public_repository(self):
        with tree() as t:
            t.write("notes/zlib.md", "Enroll at https://github.com/" + "theorem-labs/oss-verify.\n", "a")
            self.assertEqual(rules_of(t.lint()), [])

    def test_a_private_repository_name_split_where_github_shows_it_whole(self):
        """GitHub shows `\\-` as `-` and drops an HTML comment, so a public name with a private one's suffix after
        either reads as the private name: the private-data rule refuses it in a URL and in a path, and the link rule
        the URL too."""
        public = "theorem-labs/" + "oss-verify"
        for split in ("\\-prelaunch", "<!-- -->-prelaunch"):
            for text, rules in (("https://github.com/" + public + split, ["links", "private-data"]),
                                ("see /" + public + split, ["private-data"]),
                                (public + split, ["private-data"])):
                with self.subTest(text=text), tree() as t:
                    t.write("notes/zlib.md", text + "\n", "a")
                    self.assertEqual(rules_of(t.lint()), rules)

    def test_an_unknown_link_in_rendered_text(self):
        with tree() as t:
            t.write("notes/zlib.md", "See https://example.org/x and http://www.zlib.net/.\n", "a")
            self.assertEqual(len([f for f in t.lint() if f.rule == "links"]), 2)

    def test_a_link_shape_inside_a_proof_string_is_payload(self):
        lib = "proofs/zlib/checksum_fuzzer/lib/Replay.v"
        def links(text):
            with tree() as t:
                t.write(lib, text, "a")
                return [f for f in t.lint() if f.rule == "links"]
        self.assertEqual(links('Definition t : PrimString.string := "#x://%Q~z#".\n'), [])
        self.assertEqual(len(links("(* see https://example.org/x *)\nDefinition t := 0.\n")), 1)

    def test_a_long_payload_line_is_read_in_linear_time(self):
        line = "0a" * 50000
        start = time.process_time()
        self.assertIsNone(lint.URL.search(line))
        self.assertLess(time.process_time() - start, 1.0)

    def test_a_markdown_destination_has_githubs_parenthesis_limit(self):
        def link(depth):
            return "[x](x%s%s)" % ("(" * depth, ")" * depth)
        self.assertEqual([item.ref for item in urls.links(link(32), True)], ["x" + "(" * 32 + ")" * 32])
        self.assertEqual(list(urls.links(link(33), True)), [])
        start = time.process_time()
        list(urls.links("](" * 10000, True))
        self.assertLess(time.process_time() - start, 1.0)

    def test_links_the_facts_record_are_allowed(self):
        with tree() as t:
            t.write("notes/zlib.md", "See https://github.com/madler/zlib/blob/master/README.\n", "a")
            self.assertEqual(t.lint(), [])

    def test_only_the_debian_snapshot_archive_may_be_read_over_http(self):
        with tree() as t:
            t.write("notes/zlib.md", "From http://snapshot.debian.org/archive/debian/20261001T000000Z and "
                    "https://snapshot.debian.org/file/0123, not http://deb.debian.org/debian.\n", "a")
            found = [f for f in t.lint() if f.rule == "links"]
            self.assertEqual([f.msg.rsplit(" ", 1)[-1] for f in found], ["http://deb.debian.org/debian."])


class FreeText(unittest.TestCase):
    def test_text_with_no_place_in_the_rendering(self):
        with tree() as t:
            y = t.yaml("projects/imagemagick/project.yaml")
            y["reason_args"]["text"] = "a note that no sentence uses"
            t.put_yaml("projects/imagemagick/project.yaml", y)
            self.assertIn("free-text", rules_of(t.lint()))


class Proofs(unittest.TestCase):
    def proof(self, body, **extra):
        with tree() as t:
            t.put_yaml("proofs/zlib/checksum_fuzzer/plain_halts/proof.yaml", dict({
                "schema": "oss-fuzz-theorems/proof/1", "proves": "zlib/checksum_fuzzer/plain_halts",
                "fingerprint": next(s for s in facts.load(t.root).statements()
                                    if s.id == "zlib/checksum_fuzzer/plain_halts").fingerprint}, **extra))
            t.write("proofs/zlib/checksum_fuzzer/plain_halts/Proof.v", body)
            t.generate()
            return [f for f in t.lint() if f.rule == "proofs" or "proof.yaml" in str(f)]

    def test_a_proof_names_no_author(self):
        found = self.proof("Theorem plain_halts_holds : True. Proof. exact I. Qed.\n", authors=["A. Person"])
        self.assertTrue(any("unknown key 'authors'" in str(f) for f in found), found)

    def test_admitted(self):
        self.assertEqual(len(self.proof("Theorem plain_halts_holds : True.\nProof. Admitted.\n")), 1)

    def test_an_axiom(self):
        self.assertEqual(len(self.proof("Axiom cheat : False.\n")), 1)

    def test_primitive_projections_are_fine(self):
        self.assertEqual(self.proof("Set Primitive Projections.\n"), [])
        self.assertEqual(len(self.proof("Primitive cheat : False := #int63_add.\n")), 1)

    def test_comments_and_strings_do_not_count(self):
        self.assertEqual(self.proof('(* not (* Admitted *) here *)\nDefinition s := "Axiom".\n'), [])

    def test_a_pin_is_the_statements_fingerprint_under_this_version(self):
        with tree() as t, mock.patch.object(facts, "FINGERPRINT_TAG", "oss-fuzz-theorems/statement/1"):
            other = next(s for s in facts.load(t.root).statements() if s.id == "zlib/checksum_fuzzer/plain_halts")
        found = self.proof("Theorem plain_halts_holds : True. Proof. exact I. Qed.\n", fingerprint=other.fingerprint)
        self.assertEqual([f.msg.split(" (")[0] for f in found], ["fingerprint differs from the statement's current one"])

    def test_a_version_1_pin_holds_through_release_2026_10_1(self):
        """Release 2026.10.1's tools reach a tree whose pins are still version 1, which hashed the bytes of the
        theories: there a proof may pin its statement's version-1 fingerprint, and in a later release it may not."""
        sid = "zlib/checksum_fuzzer/plain_halts"
        for release, found in (("2026.10.0", []), ("2026.10.1", []),
                               ("2026.11.0", ["fingerprint differs from the statement's current one"])):
            with self.subTest(release=release), tree() as t:
                r = t.yaml("release.yaml")
                r["release"] = release
                t.put_yaml("release.yaml", r)
                st = next(s for s in facts.load(t.root).statements() if s.id == sid)
                v1 = facts.fingerprint(st, {f: facts.sha256_file(t.path(f)) for f in facts.THEORIES},
                                       r["semantics"]["version"], facts.V1_FINGERPRINT_TAG)
                self.assertNotEqual(v1, st.fingerprint)
                t.put_yaml("proofs/%s/proof.yaml" % sid,
                           {"schema": "oss-fuzz-theorems/proof/1", "proves": sid, "fingerprint": v1})
                t.write("proofs/%s/Proof.v" % sid, "Theorem plain_halts_holds : True. Proof. exact I. Qed.\n")
                t.generate()
                self.assertEqual([f.msg.split(" (")[0] for f in t.lint() if f.rule == "proofs"
                                  or "proof.yaml" in str(f)], found)

    def test_load_and_cd_are_commands_only_where_a_sentence_starts(self):
        names = ("Lemma l : forall i, i = Load 2 \\/ i <> Load 2.\n"
                 "Proof.\n  intros [ | x ]; destruct (Some (Load 2)) as [C2 Cd];\n  | Load _ => auto\n"
                 "  end.\nQed.\n")
        self.assertEqual(self.proof(names), [])
        refused = self.proof('Load "cheat".\nLemma l : True.\nProof. Cd "/tmp".\n  exact I.\nQed.\n')
        self.assertEqual(sorted((str(f).split(": ")[0].rsplit(":", 1)[-1], "'Load'" in str(f)) for f in refused),
                         [("1", True), ("3", False)])

    def test_wall_clock_timeouts(self):
        refused = self.proof("Set Default Timeout 60.\nLemma l : True.\nProof. timeout 5 exact I.\nQed.\n"
                             "Timeout 10 Check I.\nLemma m : True.\nProof. idtac; timeout 5 exact I.\nQed.\n"
                             "Lemma k : True.\nProof. first [ exact I | timeout 5 exact I ].\nQed.\n"
                             "Lemma j : True.\nProof. try idtac; timeout 5 exact I.\nQed.\n")
        self.assertEqual(sorted(int(str(f).split(": ")[0].rsplit(":", 1)[-1]) for f in refused), [1, 3, 5, 7, 10, 13])

    def test_a_caught_timeout_and_a_commented_one_are_fine(self):
        self.assertEqual(self.proof("(* Set Default Timeout 60. timeout 5 *)\n"
                                    "Lemma l : True.\nProof. first [ timeout 5 exact I | exact I ].\nQed.\n"
                                    "Lemma m : True.\nProof. try (timeout 5 fail). exact I.\nQed.\n"
                                    "Lemma k : True.\nProof. solve [ timeout 5 exact I | exact I ].\nQed.\n"
                                    "Lemma j : True.\nProof. repeat (timeout 5 fail). exact I.\nQed.\n"), [])

    def test_the_timeout_exemption_is_one_definition_in_its_file(self):
        body = "Ltac hot2_mid := timeout 8 lia.\nLtac other := timeout 8 lia.\n"
        found = lint.scan_proof(body, "proofs/varnish/esi_parse_fuzzer/lib/D_Dir.v")
        self.assertEqual([str(f).split(": ")[0].rsplit(":", 1)[-1] for f in found], ["2"])
        self.assertEqual(len(lint.scan_proof(body, "proofs/varnish/esi_parse_fuzzer/lib/Other.v")), 2)


class ProofHarnessDirs(unittest.TestCase):
    """proofs/<p>/<h>/lib/ (the harness's proof library) and proofs/<p>/<h>/provenance/ (its build record)."""

    def tree_with(self, files):
        t = Tree()
        self.addCleanup(t.close)
        for rel, text in files.items():
            t.write(rel, text)
        t.generate()
        return t

    LIB = {"proofs/zlib/checksum_fuzzer/lib/Base.v": "Definition one := 1.\n",
           "proofs/zlib/checksum_fuzzer/lib/Sub/Deep.v": "Definition two := 2.\n"}
    PROVENANCE = {"proofs/zlib/checksum_fuzzer/provenance/PROVENANCE.yaml": build_record(),
                  "proofs/zlib/checksum_fuzzer/provenance/PROVENANCE.md": "# Build record\n",
                  "proofs/zlib/checksum_fuzzer/provenance/recipe/targets/checksum_fuzzer/build.sh": "make\n",
                  "proofs/zlib/checksum_fuzzer/provenance/LICENSES/zlib-LICENSE": "zlib licence\n"}

    def test_a_library_and_a_build_record_are_allowed_and_are_not_proof_directories(self):
        t = self.tree_with(dict(self.LIB, **self.PROVENANCE))
        self.assertEqual([str(f) for f in t.lint()], [])
        loaded = facts.load(t.root)
        self.assertEqual(loaded.errors, [])
        self.assertEqual(loaded.proof_libs, ["zlib/checksum_fuzzer"])
        self.assertEqual(loaded.records, {("zlib", "checksum_fuzzer"): FIXTURE_RECIPE})
        self.assertEqual(loaded.proofs, {})

    def test_another_file_in_the_build_record(self):
        t = self.tree_with(dict(self.PROVENANCE, **{"proofs/zlib/checksum_fuzzer/provenance/notes.txt": "x\n"}))
        self.assertTrue(any(f.rule == "paths" and "provenance/notes.txt" in str(f) for f in t.lint()))

    def test_a_library_is_held_to_the_proofs_rule(self):
        t = self.tree_with({"proofs/zlib/checksum_fuzzer/lib/Sub/Cheat.v": "Lemma x : False.\nProof. Admitted.\n"})
        found = [f for f in t.lint() if f.rule == "proofs"]
        self.assertEqual(len(found), 1)
        self.assertIn("lib/Sub/Cheat.v", str(found[0]))

    def test_licence_texts_and_recipe_are_verbatim_but_the_record_is_not(self):
        t = self.tree_with(dict(self.PROVENANCE, **{
            "proofs/zlib/checksum_fuzzer/provenance/LICENSES/zlib-LICENSE": "See http://www.apache.org/licenses/\n",
            "proofs/zlib/checksum_fuzzer/provenance/recipe/targets/x/pin": "git https://example.org/x.git\n",
            "proofs/zlib/checksum_fuzzer/provenance/PROVENANCE.md":
                "Built at https://github.com/theorem-labs/" + "internal\n"}))
        links = [str(f) for f in t.lint() if f.rule == "links"]
        self.assertEqual(len(links), 1, links)
        self.assertIn("provenance/PROVENANCE.md", links[0])


class Withheld(unittest.TestCase):
    def test_a_patch_has_no_disclosure_field(self):
        with tree() as t:
            y = t.yaml("projects/zlib/project.yaml")
            y["patches"].append({"id": "some-fix", "upstream": "reported", "disclosure": "withheld"})
            t.put_yaml("projects/zlib/project.yaml", y)
            self.assertIn("schema", rules_of(t.lint()))

    def test_withheld_items_without_the_project_saying_so(self):
        with tree() as t:
            y = t.yaml("projects/zlib/project.yaml")
            del y["withheld"]
            t.put_yaml("projects/zlib/project.yaml", y)
            self.assertIn("withheld", rules_of(t.lint()))

    def test_a_withheld_reason_with_nothing_withheld(self):
        with tree() as t:
            y = t.yaml("projects/json/project.yaml")
            y["withheld"] = {"unpublished": True}
            t.put_yaml("projects/json/project.yaml", y)
            self.assertTrue(any("nothing is withheld for that reason" in f.msg for f in t.lint()))

    def test_evidence_for_a_withheld_statement(self):
        with tree() as t:
            y = t.yaml("projects/json/fuzzer-parse_bjdata/harness.yaml")
            y["statements"]["plain_halts"]["status"] = "withheld"
            y["statements"]["plain_halts"]["withheld"] = "not-yet-published"
            t.put_yaml("projects/json/fuzzer-parse_bjdata/harness.yaml", y)
            self.assertTrue(any("cannot carry" in f.msg for f in t.lint()))

    def test_a_withheld_build_shows_no_detail(self):
        with tree() as t:
            y = t.yaml("projects/zlib/checksum_fuzzer/harness.yaml")
            y["builds"]["asan"]["withheld"] = "not-yet-published"
            for s in ("asan_halts", "asan_agrees", "asan_disagrees_at_most", "asan_agreement_decidable"):
                y["statements"][s] = dict(y["statements"][s], status="withheld", withheld="not-yet-published")
                y["statements"][s].pop("binds_checks", None)
            t.put_yaml("projects/zlib/checksum_fuzzer/harness.yaml", y)
            self.assertTrue(any("is withheld but shows bytes, sha256, segments" in f.msg for f in t.lint()))
            for k in ("bytes", "sha256", "segments"):
                del y["builds"]["asan"][k]
            t.put_yaml("projects/zlib/checksum_fuzzer/harness.yaml", y)
            r = t.yaml("release.yaml")
            r["counts"]["binaries"] -= 1
            t.put_yaml("release.yaml", r)
            self.assertEqual(t.generate(), 1)         # Characterise.v, for the asan pair only, is now stale
            for line in t.last_output.splitlines():
                if line.endswith("no longer produce; remove it"):
                    os.unlink(t.path(line.split(":")[0]))
            self.assertEqual(t.generate(), 0, t.last_output)
            self.assertEqual([str(f) for f in t.lint()], [])
            page = t.read("projects/zlib/checksum_fuzzer/README.md")
            self.assertIn("| asan | `checksum_fuzzer.asan` | withheld: not in this release yet | |", page)
            self.assertNotIn(facts.load(t.root).projects["zlib"].harnesses["checksum_fuzzer"].data["builds"]["plain"]
                             ["file"] + "` | withheld", page)

    def test_a_withheld_statement_has_no_fingerprint(self):
        with tree() as t:
            st = {s.id: s for s in facts.load(t.root).statements()}
            self.assertIsNone(st["zlib/api-driver/asan_ubsan_agrees"].fingerprint)
            self.assertIsNotNone(st["zlib/api-driver/asan_agrees"].fingerprint)
            self.assertIn("zlib/api-driver/asan_ubsan_agrees\tagreement\tplain,asan-ubsan\tmay-fail\t-\twithheld\t"
                          "not-yet-published\t1\t-\t-", t.read("index/statements.tsv"))

    def test_a_gpl_binary_without_its_source(self):
        with tree() as t:
            y = t.yaml("projects/zlib/checksum_fuzzer/harness.yaml")
            y["licence"] = "GPL-2.0-only AND MIT"
            t.put_yaml("projects/zlib/checksum_fuzzer/harness.yaml", y)
            p = t.yaml("projects/zlib/project.yaml")
            del p["assets"]["src"], p["assets"]["src_manifest"]
            t.put_yaml("projects/zlib/project.yaml", p)
            self.assertTrue(any("source bundle" in f.msg for f in t.lint()))

    def test_the_source_is_three_files(self):
        """assets.src goes with assets.src_manifest, each named for what it is, and the archive's recipe is one that
        release.yaml lists; the fixture has all three (the control: it lints clean)."""
        with tree() as t:
            self.assertEqual([str(f) for f in t.lint()], [])
            p = t.yaml("projects/zlib/project.yaml")
            man = p["assets"].pop("src_manifest")
            t.put_yaml("projects/zlib/project.yaml", p)
            self.assertTrue(any("assets.src and assets.src_manifest go together" in f.msg for f in t.lint()))
            p["assets"]["src_manifest"] = dict(man, file="other-src.MANIFEST.tsv")
            t.put_yaml("projects/zlib/project.yaml", p)
            self.assertTrue(any("assets.src_manifest.file must be zlib-src.MANIFEST.tsv" in f.msg for f in t.lint()))
            p["assets"]["src_manifest"] = dict(man, release="v2026.12.0")
            t.put_yaml("projects/zlib/project.yaml", p)
            self.assertTrue(any("different releases" in f.msg for f in t.lint()))
            p["assets"]["src_manifest"] = man
            t.put_yaml("projects/zlib/project.yaml", p)
            r = t.yaml("release.yaml")
            del r["recipes"]
            t.put_yaml("release.yaml", r)
            self.assertTrue(any("assets.bin.recipe, recipe.tar.zst in v2026.11.0, is not one of release.yaml's recipes"
                                in f.msg for f in t.lint()))

    def test_each_binary_archive_is_named_for_its_project(self):
        """The release workflows read an archive's project from its name, so zlib's must be zlib-bin.tar.zst; two
        projects that swap their archives' names are refused (the control: the fixture lints clean)."""
        with tree() as t:
            self.assertEqual([str(f) for f in t.lint()], [])
            for name, other in (("zlib", "json"), ("json", "zlib")):
                p = t.yaml("projects/%s/project.yaml" % name)
                p["assets"]["bin"]["file"] = other + "-bin.tar.zst"
                t.put_yaml("projects/%s/project.yaml" % name, p)
            found = [str(f) for f in t.lint()]
            for name in ("zlib", "json"):
                self.assertTrue(any("projects/%s/project.yaml" % name in f and "assets.bin.file must be %s-bin.tar.zst"
                                    % name in f for f in found), found)

    def test_the_source_assets_and_the_recipe_in_a_second_release(self):
        """A GitHub release holds at most 1,000 files, so the source assets and the recipe may be attached to
        v<release>-src, and a binary archive is never in a source release (the control: the fixture, everything in
        v2026.11.0, lints clean)."""
        with tree() as t:
            self.assertEqual([str(f) for f in t.lint()], [])
            p = t.yaml("projects/zlib/project.yaml")
            for k in ("src", "src_manifest"):
                p["assets"][k]["release"] = "v2026.11.0-src"
            p["assets"]["bin"]["recipe"]["release"] = "v2026.11.0-src"
            t.put_yaml("projects/zlib/project.yaml", p)
            j = t.yaml("projects/json/project.yaml")
            j["assets"]["bin"]["recipe"]["release"] = "v2026.11.0-src"
            t.put_yaml("projects/json/project.yaml", j)
            r = t.yaml("release.yaml")
            r["recipes"][0]["release"] = "v2026.11.0-src"
            t.put_yaml("release.yaml", r)
            self.assertEqual(t.generate(), 0, t.last_output)
            self.assertEqual([str(f) for f in t.lint()], [])
            page = t.read("projects/zlib/README.md")
            self.assertIn("Corresponding source, in release [v2026.11.0-src](", page)
            self.assertIn("`recipe.tar.zst`, this release's build recipe", page)
            p["assets"]["bin"]["release"] = "v2026.11.0-src"
            t.put_yaml("projects/zlib/project.yaml", p)
            self.assertTrue(any("assets.bin is attached to v2026.11.0-src, a release of source assets" in f.msg
                                for f in t.lint()))
            p["assets"]["bin"]["release"] = "v2026.11.0-sources"
            t.put_yaml("projects/zlib/project.yaml", p)
            self.assertIn("schema", rules_of(t.lint()))

    def test_a_copyleft_library_withholds_every_binary(self):
        """A GPL or LGPL library makes every binary copyleft, whatever the
        binary's own expression says; with no source bundle every build and
        statement is withheld, and the project says why."""
        with tree() as t:
            p = t.yaml("projects/zlib/project.yaml")
            p["library"]["licence"] = "LGPL-2.1-or-later"
            del p["assets"]["src"], p["assets"]["src_manifest"]
            t.put_yaml("projects/zlib/project.yaml", p)
            self.assertTrue(any("source bundle" in f.msg for f in t.lint()))
            del p["assets"]
            p["withheld"] = {"source_bundle": True}
            t.put_yaml("projects/zlib/project.yaml", p)
            n = 0
            for h in ("checksum_fuzzer", "api-driver"):
                y = t.yaml("projects/zlib/%s/harness.yaml" % h)
                for b in y["builds"].values():
                    b["withheld"] = "source-bundle"
                    for k in ("bytes", "sha256", "segments"):
                        del b[k]
                    n += 1
                for s in y["statements"].values():
                    for k in ("witness", "binds_checks"):
                        s.pop(k, None)
                    s["status"], s["withheld"] = "withheld", "source-bundle"
                t.put_yaml("projects/zlib/%s/harness.yaml" % h, y)
            r = t.yaml("release.yaml")
            r["counts"]["binaries"] -= n
            t.put_yaml("release.yaml", r)
            self.assertEqual(t.generate(), 1)         # the statement files it rendered before are now stale
            for line in t.last_output.splitlines():
                if line.endswith("no longer produce; remove it"):
                    os.unlink(t.path(line.split(":")[0]))
            self.assertEqual(t.generate(), 0, t.last_output)
            self.assertEqual([str(f) for f in t.lint()], [])
            self.assertIn("under a copyleft licence", t.read("projects/zlib/README.md"))
            self.assertIn("No binaries are attached", t.read("projects/zlib/README.md"))
            self.assertIn("withheld: waits for its source bundle", t.read("projects/zlib/checksum_fuzzer/README.md"))

    def test_withheld_must_say_why(self):
        with tree() as t:
            p = t.yaml("projects/zlib/project.yaml")
            p["withheld"] = {}
            t.put_yaml("projects/zlib/project.yaml", p)
            self.assertTrue(any("names no reason" in f.msg for f in t.lint()))


class Recipes(unittest.TestCase):
    """release.yaml lists the recipes, at most one in each GitHub release. Each project's binary archive pins the one
    it was built with (assets.bin.recipe), in any release, and every build record of the project cites it too."""
    JSON = "projects/json/project.yaml"
    JSON_RECORD = "proofs/json/fuzzer-parse_bjdata/provenance/PROVENANCE.yaml"
    APART = ("Corresponding source, in release [v2026.11.0](", "the build recipe these binaries were built with "
             "(the build scripts, pins and patches), `recipe-2.tar.zst` in release [v2026.12.0-src](")

    def test_a_later_release_adds_source_assets_with_a_recipe_of_its_own(self):
        with tree() as t:
            later_release(t)
            self.assertEqual([str(f) for f in t.lint()], [])
            self.assertIn("`json-src.MANIFEST.tsv`, which says where the build lays each one down; and "
                          "`recipe-2.tar.zst`, this release's build recipe", t.read("projects/json/README.md"))
            self.assertIn("Corresponding source, in release [v2026.12.0-src](", t.read("projects/json/README.md"))
            zlib = t.read("projects/zlib/README.md")
            self.assertIn("Corresponding source, in release [v2026.11.0](", zlib)
            self.assertIn("`recipe.tar.zst`, that release's build recipe", zlib)

    def test_a_recipe_only_rebuild_leaves_the_source_asset_where_it_is(self):
        with tree() as t:
            recipe_only_rebuild(t)
            self.assertEqual([str(f) for f in t.lint()], [])
            zlib = t.read("projects/zlib/README.md")
            for text in self.APART:
                self.assertIn(text, zlib)

    def test_a_project_without_a_build_record_pins_a_later_recipe(self):
        with tree() as t:
            recipe_only_rebuild(t, record=False)
            self.assertEqual(facts.load(t.root).records, {})
            self.assertEqual([str(f) for f in t.lint()], [])
            zlib = t.read("projects/zlib/README.md")
            for text in self.APART:
                self.assertIn(text, zlib)

    def test_an_archive_and_its_build_records_cite_one_listed_recipe(self):
        with tree() as t:
            later_release(t)
            t.write(self.JSON_RECORD, build_record(FIXTURE_RECIPE))
            self.assertTrue(any(self.JSON_RECORD in f and "recipe.asset, recipe.tar.zst in v2026.11.0, is not the "
                                "recipe of projects/json's binary archive (assets.bin.recipe: recipe-2.tar.zst in "
                                "v2026.12.0-src)" in f for f in map(str, t.lint())))
            unlisted = dict(NEXT_RECIPE, sha256="9b" * 32)
            p = t.yaml(self.JSON)
            p["assets"]["bin"]["recipe"] = unlisted
            t.put_yaml(self.JSON, p)
            t.write(self.JSON_RECORD, build_record(unlisted))
            found = [str(f) for f in t.lint()]
            self.assertTrue(any(self.JSON in f and "assets.bin.recipe, recipe-2.tar.zst in v2026.12.0-src, is not one "
                                "of release.yaml's recipes" in f for f in found), found)
            self.assertFalse(any(self.JSON_RECORD in f for f in found), found)
            t.write(self.JSON_RECORD, "schema: oss-verify-proofs build record v1\n")
            self.assertTrue(any(self.JSON_RECORD in f and "recipe.asset: expected a mapping" in f
                                for f in map(str, t.lint())))

    def test_a_fallback_record_may_cite_no_recipe(self):
        """A fallback record's binaries were built by the unpublished internal recipe, so it cites none; any other
        record without recipe.asset is refused (above)."""
        with tree() as t:
            t.write(self.JSON_RECORD, "schema: oss-verify-proofs build record v1\n"
                                      "fallback: {reason: built before the recipe was published}\n")
            self.assertEqual(t.generate(), 0, t.last_output)
            self.assertEqual([str(f) for f in t.lint()], [])
            self.assertEqual(facts.load(t.root).records, {})

    def test_a_release_carries_one_recipe_and_each_file_name_once(self):
        with tree() as t:
            later_release(t)
            r = t.yaml("release.yaml")
            r["recipes"].append(dict(NEXT_RECIPE, file="recipe-3.tar.zst", sha256="9b" * 32))
            t.put_yaml("release.yaml", r)
            self.assertTrue(any("recipes lists more than one recipe in v2026.12.0-src" in f.msg for f in t.lint()))
            r["recipes"][-1] = dict(FIXTURE_RECIPE, release="v2026.13.0-src", sha256="9b" * 32)
            t.put_yaml("release.yaml", r)
            found = [f.msg for f in t.lint()]
            self.assertTrue(any("recipes names the file recipe.tar.zst more than once" in m for m in found), found)
            self.assertFalse(any("more than one recipe in" in m for m in found), found)


class RecipeShapes(unittest.TestCase):
    """oft reads both shapes of release.yaml: `recipes` with a recipe on each binary archive, and the shape before it,
    which a published tree still has: one `recipe`, which every archive was built with and none names another."""
    PAGES = ("projects/zlib/README.md", "projects/json/README.md")
    ZLIB = "projects/zlib/project.yaml"

    def test_the_shape_before_recipes_reads_as_its_one_recipe(self):
        with tree() as t:
            newer = {p: t.read(p) for p in self.PAGES}
            older_shape(t)
            t.write("proofs/zlib/checksum_fuzzer/provenance/PROVENANCE.yaml", build_record())
            self.assertEqual(t.generate(), 0, t.last_output)
            self.assertEqual([str(f) for f in t.lint()], [])
            self.assertEqual({p: t.read(p) for p in self.PAGES}, newer)
            t.write("proofs/zlib/checksum_fuzzer/provenance/PROVENANCE.yaml", build_record(NEXT_RECIPE))
            self.assertTrue(any("recipe.asset, recipe-2.tar.zst in v2026.12.0-src, is not the recipe of projects/zlib's "
                                "binary archive (release.yaml's recipe: recipe.tar.zst in v2026.11.0)" in f.msg
                                for f in t.lint()))

    def test_a_malformed_file_of_either_shape_fails(self):
        for shape, path, change in (("older", "recipe.sha256", lambda r: r["recipe"].update(sha256="x")),
                                    ("newer", "recipes[0].file", lambda r: r["recipes"][0].update(file="r.tar.gz"))):
            with self.subTest(shape=shape), tree() as t:
                if shape == "older":
                    older_shape(t)
                r = t.yaml("release.yaml")
                change(r)
                t.put_yaml("release.yaml", r)
                found = [f for f in t.lint() if f.rule == "schema"]
                self.assertTrue(any("release.yaml" in str(f) and path in f.msg for f in found), [str(f) for f in found])

    def test_an_older_release_yaml_that_does_not_load_adds_no_finding_to_the_records(self):
        with tree() as t:
            older_shape(t)
            t.write("proofs/zlib/checksum_fuzzer/provenance/PROVENANCE.yaml", build_record())
            r = t.yaml("release.yaml")
            r["recipe"]["sha256"] = "x"
            t.put_yaml("release.yaml", r)
            found = [str(f) for f in t.lint() if "PROVENANCE.yaml" in str(f)]
            self.assertEqual(found, [])

    def test_release_yaml_names_recipe_or_recipes_not_both(self):
        with tree() as t:
            r = t.yaml("release.yaml")
            r["recipe"] = dict(FIXTURE_RECIPE)
            t.put_yaml("release.yaml", r)
            self.assertTrue(any("names both recipe and recipes" in f.msg for f in t.lint()))

    def test_a_newer_archive_names_its_recipe(self):
        with tree() as t:
            p = t.yaml(self.ZLIB)
            del p["assets"]["bin"]["recipe"]
            t.put_yaml(self.ZLIB, p)
            self.assertTrue(any(self.ZLIB in str(f) and "assets.bin.recipe is missing" in f.msg for f in t.lint()))

    def test_an_older_archive_names_no_other_recipe(self):
        with tree() as t:
            older_shape(t)
            p = t.yaml(self.ZLIB)
            p["assets"]["bin"]["recipe"] = dict(NEXT_RECIPE)
            t.put_yaml(self.ZLIB, p)
            self.assertTrue(any(self.ZLIB in str(f) and "assets.bin.recipe, recipe-2.tar.zst in v2026.12.0-src, is not "
                                "one of release.yaml's recipes" in f.msg for f in t.lint()))


class Pending(unittest.TestCase):
    def test_a_pending_source_lists_no_files_and_anchors_no_checks(self):
        with tree() as t:
            y = t.yaml("projects/zlib/checksum_fuzzer/harness.yaml")
            y["source"]["pending"] = True
            t.put_yaml("projects/zlib/checksum_fuzzer/harness.yaml", y)
            msgs = [f.msg for f in t.lint()]
            self.assertTrue(any("lists no files" in m for m in msgs))
            y["source"]["files"] = []
            y["checks"] = []
            for s in y["statements"].values():
                s.pop("binds_checks", None)
            t.put_yaml("projects/zlib/checksum_fuzzer/harness.yaml", y)
            os.unlink(t.path("projects/zlib/checksum_fuzzer/source/checksum_fuzzer.c"))
            self.assertEqual(t.generate(), 0, t.last_output)
            self.assertEqual([str(f) for f in t.lint()], [])
            self.assertIn("source not in this release yet", t.read("projects/zlib/checksum_fuzzer/README.md"))


class Placeholders(unittest.TestCase):
    def test_a_placeholder_digest_blocks_only_a_release(self):
        with tree() as t:
            r = t.yaml("release.yaml")
            r["images"]["checker"] = r["images"]["checker"].split("@")[0] + "@sha256:" + "0" * 64
            t.put_yaml("release.yaml", r)
            self.assertEqual([str(f) for f in t.lint()], [])
            found = t.lint(release=True)
            self.assertEqual([(f.rule, f.where.split(":")[0]) for f in found], [("schema", "release.yaml")])
            self.assertTrue(found[0].msg.startswith("checker is a placeholder"), found[0].msg)

    def test_each_placeholder_is_its_own_finding(self):
        """Replacing one placeholder clears its finding and no other: a file is
        not reported once for however many placeholders it holds."""
        with tree() as t:
            r = t.yaml("release.yaml")
            r["images"]["runner"] = r["images"]["runner"].split("@")[0] + "@sha256:" + "0" * 64
            r["semantics"]["commit"] = "0" * 40
            t.put_yaml("release.yaml", r)
            found = t.lint(release=True)
            self.assertEqual(sorted(f.msg.split(" ")[0] for f in found), ["commit", "runner"])
            self.assertEqual({f.where.split(":")[0] for f in found}, {"release.yaml"})
            r["images"]["runner"] = t.yaml("release.yaml")["images"]["checker"]
            t.put_yaml("release.yaml", r)
            self.assertEqual([f.msg.split(" ")[0] for f in t.lint(release=True)], ["commit"])


class DistributionBodies(unittest.TestCase):
    """The two definition forms the rendered distributions use besides a plain
    byte list: an alphabet under List.nodup, and a long header in chunks."""

    def test_an_alphabet_under_nodup(self):
        from oft import rules
        body = ("Definition alpha : list byte :=\n  List.nodup (fun x y => decide (x = y))\n"
                "    [ Z_to_bv 8 48; Z_to_bv 8 49 ].\n")
        self.assertEqual(rules._bytes_def(body, "alpha"), b"01")

    def test_a_header_in_chunks(self):
        from oft import rules
        body = ("Definition hdr_000 : list byte :=\n  [ Z_to_bv 8 1; Z_to_bv 8 2 ].\n"
                "Definition hdr_001 : list byte :=\n  [ Z_to_bv 8 3 ].\n"
                "Definition hdr : list byte :=\n  ((hdr_000 ++ hdr_001))%list.\n")
        self.assertEqual(rules._bytes_def(body, "hdr"), b"\x01\x02\x03")
        self.assertIsNone(rules._bytes_def(body.replace("hdr_001 :", "other :"), "hdr"))



class Uninstrumented(unittest.TestCase):
    """builds.<b>.uninstrumented: what a build links that no sanitizer instruments."""
    H = "projects/zlib/checksum_fuzzer/harness.yaml"
    LIST = [{"name": "libc.a", "kind": "libc", "sha256": "a" * 64},
            {"name": "crc32_x86.S.o", "kind": "assembly", "source": "contrib/crc32_x86.S"}]

    def _with(self, t, build, items):
        y = t.yaml(self.H)
        y["builds"][build]["uninstrumented"] = items
        t.put_yaml(self.H, y)

    def test_a_list_on_a_published_build_is_clean(self):
        with tree() as t:
            self._with(t, "asan", self.LIST)
            self.assertEqual(t.generate(), 0)
            self.assertEqual([str(f) for f in t.lint()], [])

    def test_an_unknown_kind_or_an_empty_list(self):
        with tree() as t:
            self._with(t, "asan", [{"name": "x.a", "kind": "mystery"}])
            self.assertIn("schema", rules_of(t.lint()))
        with tree() as t:
            self._with(t, "asan", [])
            self.assertIn("schema", rules_of(t.lint()))

    def test_a_member_without_its_source(self):
        with tree() as t:
            self._with(t, "asan", [{"name": "crc32_x86.S.o", "kind": "assembly"}])
            self.assertTrue(any("names its source file" in f.msg for f in t.lint()))

    def test_twice(self):
        with tree() as t:
            self._with(t, "asan", [self.LIST[0], self.LIST[0]])
            self.assertTrue(any("listed twice" in f.msg for f in t.lint()))

    def test_a_withheld_build_shows_no_list(self):
        with tree() as t:
            self._with(t, "asan", self.LIST)
            y = t.yaml(self.H)
            rec = y["builds"]["asan"]
            rec["withheld"] = "not-yet-published"
            for k in ("bytes", "sha256", "segments"):
                rec.pop(k, None)
            t.put_yaml(self.H, y)
            self.assertTrue(any("no uninstrumented list" in f.msg for f in t.lint()))


class CopyleftSources(unittest.TestCase):
    """A binary bound by a GPL-family licence takes the release-wide toolchain source, and the source of every
    library it links from the build image (release.yaml sources and image_libraries)."""
    H = "projects/zlib/checksum_fuzzer/harness.yaml"

    def test_an_or_choice_does_not_bind(self):
        cases = {"GPL-2.0-only": True, "LGPL-2.1-or-later AND MIT": True, "BSD-3-Clause OR GPL-2.0-only": False,
                 "(BSD-3-Clause OR GPL-2.0-only) AND MIT": False, "GPL-2.0-only WITH Linux-syscall-note": True,
                 "(GPL-2.0-or-later OR LGPL-3.0-or-later) AND BSD-3-Clause": True, "Zlib": False, "NOASSERTION": False}
        for expr, binds in cases.items():
            self.assertEqual(facts.gpl_binds(expr), binds, expr)

    def _link(self, t, copyleft, in_sysroot_src=True, listed=True):
        y = t.yaml(self.H)
        for b in y["builds"].values():
            b["uninstrumented"] = [{"name": "libgmp.a", "kind": "image-library"}]
        t.put_yaml(self.H, y)
        r = t.yaml("release.yaml")
        r["sources"] = {"release": "sources-v1",
                        "toolchain": {"file": "toolchain-src.tar.zst", "bytes": 1, "sha256": "0" * 64},
                        "sysroot": {"file": "sysroot-src.tar.zst", "bytes": 1, "sha256": "0" * 64}}
        if listed:
            r["image_libraries"] = {"libgmp.a": {"library": "GMP", "licence": "LGPL-3.0-or-later OR GPL-2.0-or-later",
                                                 "copyleft": copyleft, "in_sysroot_src": in_sysroot_src}}
        t.put_yaml("release.yaml", r)

    def test_a_copyleft_library_from_the_image_names_both_archives(self):
        with tree() as t:
            self._link(t, copyleft=True)
            self.assertEqual(t.generate(), 0, t.last_output)
            self.assertEqual([str(f) for f in t.lint()], [])
            page = t.read("projects/zlib/README.md")
            self.assertIn("The binaries of `checksum_fuzzer` are under a GPL-family licence", page)
            self.assertIn("`toolchain-src.tar.zst`", page)
            self.assertIn("`sysroot-src.tar.zst`", page)
            self.assertIn("/releases/tag/sources-v1", page)

    def test_a_permissive_library_from_the_image_names_neither(self):
        with tree() as t:
            self._link(t, copyleft=False)
            self.assertEqual(t.generate(), 0, t.last_output)
            self.assertNotIn("toolchain-src.tar.zst", t.read("projects/zlib/README.md"))

    def test_a_copyleft_binary_waits_for_its_libraries_source(self):
        with tree() as t:
            self._link(t, copyleft=True, in_sysroot_src=False)
            self.assertTrue(any("whose source sources.sysroot does not hold" in f.msg for f in t.lint()))

    def test_every_library_from_the_image_is_listed(self):
        with tree() as t:
            self._link(t, copyleft=True, listed=False)
            self.assertTrue(any("image_libraries does not list" in f.msg for f in t.lint()))


if __name__ == "__main__":
    unittest.main()
