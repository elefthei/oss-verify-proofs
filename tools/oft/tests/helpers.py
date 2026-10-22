"""Shared pieces of the tests: a fresh copy of the fixture tree, rendered."""
import contextlib
import io
import os
import shutil
import tempfile

from oft import generate, lint, yamlio

HERE = os.path.dirname(os.path.abspath(__file__))
FIXTURE = os.path.join(HERE, "fixtures", "tree")
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


@contextlib.contextmanager
def tree(render=True):
    t = Tree(render)
    try:
        yield t
    finally:
        t.close()
