"""Shared pieces of the tests: a fresh copy of the fixture tree, rendered."""
import contextlib
import io
import os
import shutil
import tempfile

from oft import generate, lint, yamlio

HERE = os.path.dirname(os.path.abspath(__file__))
FIXTURE = os.path.join(HERE, "fixtures", "tree")
FINDINGS = os.path.join(HERE, "fixtures", "findings")
REPO = os.path.dirname(os.path.dirname(os.path.dirname(HERE)))   # tools/oft/tests -> the repository


class Tree:
    """A rendered copy of the fixture in a temporary directory."""

    def __init__(self, render=True):
        self._tmp = tempfile.TemporaryDirectory(prefix="oft-test-")
        self.root = os.path.join(self._tmp.name, "tree")
        shutil.copytree(FIXTURE, self.root)
        if render:
            assert self.generate() == 0, "the fixture does not render"

    def close(self):
        self._tmp.cleanup()

    def __enter__(self):
        return self

    def __exit__(self, *a):
        self.close()

    def path(self, *p):
        return os.path.join(self.root, *p)

    def write(self, rel, text, mode="w"):
        p = self.path(rel)
        os.makedirs(os.path.dirname(p), exist_ok=True)
        with open(p, mode) as f:
            f.write(text)

    def read(self, rel):
        with open(self.path(rel), encoding="utf-8") as f:
            return f.read()

    def yaml(self, rel):
        return yamlio.load_file(self.path(rel))

    def put_yaml(self, rel, data):
        self.write(rel, yamlio.dump(data))

    def generate(self, check=False):
        buf = io.StringIO()
        rc = generate.run(self.root, check=check, out=buf)
        self.last_output = buf.getvalue()
        return rc

    def lint(self, **kw):
        return lint.run(self.root, **kw)


def rules_of(findings):
    return sorted({f.rule for f in findings})


# the fixture's one recipe (release.yaml recipes), and the recipe of a later release
FIXTURE_RECIPE = {"release": "v2026.11.0", "file": "recipe.tar.zst", "bytes": 2000000, "sha256": "5d" * 32}
NEXT_RECIPE = {"release": "v2026.12.0-src", "file": "recipe-2.tar.zst", "bytes": 3000000, "sha256": "6e" * 32}


def build_record(recipe=FIXTURE_RECIPE):
    """The text of a build record (PROVENANCE.yaml) that cites `recipe`, the only part of it oft reads."""
    return yamlio.dump({"schema": "oss-verify-proofs build record v1", "recipe": {"asset": dict(recipe)}})


def _next_release(t):
    r = t.yaml("release.yaml")
    r["release"] = "2026.12.0"
    r["recipes"].append(dict(NEXT_RECIPE))
    t.put_yaml("release.yaml", r)


def _rebuilt(t, project, src=False):
    """Give a project a binary archive in v2026.12.0 built with NEXT_RECIPE, and with src new source assets in
    v2026.12.0-src."""
    p = t.yaml("projects/%s/project.yaml" % project)
    p["assets"]["bin"] = dict(p["assets"]["bin"], release="v2026.12.0", sha256="9c" * 32, recipe=dict(NEXT_RECIPE))
    if src:
        p["assets"]["src"] = {"release": "v2026.12.0-src", "file": project + "-src.tar.zst", "bytes": 5000,
                              "sha256": "7f" * 32}
        p["assets"]["src_manifest"] = {"release": "v2026.12.0-src", "file": project + "-src.MANIFEST.tsv",
                                       "bytes": 300, "sha256": "8a" * 32}
    t.put_yaml("projects/%s/project.yaml" % project, p)


def later_release(t):
    """The fixture one release on, without copying: json is rebuilt with v2026.12.0-src's recipe and gains source
    assets there, while zlib's archive, source assets and recipe stay in v2026.11.0; each harness with a build record
    cites its project's archive recipe."""
    _next_release(t)
    _rebuilt(t, "json", src=True)
    t.write("proofs/zlib/checksum_fuzzer/provenance/PROVENANCE.yaml", build_record())
    t.write("proofs/json/fuzzer-parse_bjdata/provenance/PROVENANCE.yaml", build_record(NEXT_RECIPE))
    assert t.generate() == 0, t.last_output


def recipe_only_rebuild(t, record=True):
    """The fixture one release on, after zlib is rebuilt with a new recipe and no new source: its archive (and its
    build record, with record) cites the recipe of v2026.12.0-src, and its source asset and MANIFEST stay in
    v2026.11.0."""
    _next_release(t)
    _rebuilt(t, "zlib")
    if record:
        t.write("proofs/zlib/checksum_fuzzer/provenance/PROVENANCE.yaml", build_record(NEXT_RECIPE))
    assert t.generate() == 0, t.last_output


def older_shape(t):
    """The fixture in the shape before recipes, as a published tree still has it: release.yaml's one `recipe`, and
    no recipe on any binary archive."""
    r = t.yaml("release.yaml")
    r["recipe"] = r.pop("recipes")[0]
    t.put_yaml("release.yaml", r)
    for name in ("zlib", "json"):
        p = t.yaml("projects/%s/project.yaml" % name)
        del p["assets"]["bin"]["recipe"]
        t.put_yaml("projects/%s/project.yaml" % name, p)


def add_findings(t):
    """Lay fixtures/findings over a fixture copy as its findings/: one patched finding of zlib/checksum_fuzzer,
    findings/zlib/checksum_fuzzer/stand-in-abort, whose input makes both ASan builds abort, so it shows asan_agrees and
    asan_ubsan_agrees false, and the unpatched binaries it runs on."""
    shutil.copytree(FINDINGS, t.path("findings"))


@contextlib.contextmanager
def tree(render=True):
    t = Tree(render)
    try:
        yield t
    finally:
        t.close()
