"""Load the facts of a tree and derive what follows from them.

The facts are release.yaml, projects/*/project.yaml, projects/*/*/harness.yaml,
the proof directories under proofs/, the counterexamples under
counterexamples/, and the recipe that each build record (proofs/*/*/provenance/
PROVENANCE.yaml) cites.  Everything `oft generate` writes is a function of these
(plus the code of theories/Shapes.v and theories/Images.v, which enters each
statement's fingerprint).  The findings under findings/, the library bugs found
while proving, are loaded beside them: no rendered file reads them.

`load(root)` never raises on bad data: it records problems in `tree.errors`
so that `oft lint` can report all of them at once.
"""
import hashlib
import os
import re
import stat

from . import names, render, rocq, schema, shapes, yamlio

PHRASEBOOK = yamlio.load_file(os.path.join(os.path.dirname(os.path.abspath(__file__)), "phrasebook.yaml"))
# The version of the fingerprint.  Version 2 hashes the code of theories/Shapes.v and theories/Images.v (rocq.code),
# not their bytes; `oft revisions` compares two trees under one version (docs/versioning.md).
FINGERPRINT_TAG = "oss-fuzz-theorems/statement/2"
THEORIES = ("theories/Shapes.v", "theories/Images.v")


# the origins of the fuzz targets OSS-Fuzz runs, in a project OSS-Fuzz has: its own files, and the project's own
# targets it builds; in a project OSS-Fuzz does not have (no oss_fuzz), an upstream target is the project's own, which
# OSS-Fuzz does not run
OSS_FUZZ_ORIGINS = ("oss-fuzz", "upstream")


class Tree:
    def __init__(self, root):
        self.root = os.path.abspath(root)
        self.release = None
        self.projects = {}
        self.proofs = {}           # statement id -> ProofDir
        self.proof_libs = []       # "<project>/<harness>" of every proofs/<p>/<h>/lib/
        self.counterexamples = {}  # statement id -> CounterexampleDir
        self.records = {}          # (project, harness) -> the recipe its build record cites, recipe.asset
        self.approvals = None      # approvals.yaml, if this checkout has one
        self.findings = {}         # "<project>/<harness>/<slug>" -> FindingDir
        self.unpatched = {}        # project -> its findings/<project>/unpatched.yaml
        self.finding_series = {}   # "<project>/<harness>" -> bounded text of findings/<p>/<h>/series
        self.errors = []

    def path(self, *parts):
        return os.path.join(self.root, *parts)

    def err(self, where, msg):
        self.errors.append("%s: %s" % (where, msg))

    def available(self):
        return [p for p in self.projects.values() if p.data.get("status") == "available"]

    def not_in_oss_fuzz(self):
        """The projects OSS-Fuzz does not have (no oss_fuzz), as a sorted list of names."""
        return sorted(n for n, p in self.projects.items() if "oss_fuzz" not in p.data)

    def oss_fuzz_project_count(self):
        """The number of projects whose project.yaml has oss_fuzz."""
        return len(self.projects) - len(self.not_in_oss_fuzz())

    def harnesses(self):
        for p in sorted(self.projects.values(), key=lambda p: p.name):
            for h in sorted(p.harnesses.values(), key=lambda h: h.name):
                yield h

    def statements(self):
        for h in self.harnesses():
            for s in h.statements.values():
                yield s


class Project:
    def __init__(self, tree, name, data):
        self.tree, self.name, self.data = tree, name, data
        self.harnesses = {}
        notes = tree.path("notes", name + ".md")
        self.notes = read(notes).strip() if os.path.isfile(notes) else None

    @property
    def dir(self):
        return os.path.join("projects", self.name)

    def entries(self):
        return self.data.get("harnesses") or []

    def targets(self, origins=None):
        """The harness entries with one of these origins; an entry that names no origin is OSS-Fuzz's file. By default
        the fuzz targets OSS-Fuzz runs: none in a project OSS-Fuzz does not have."""
        if origins is None:
            if "oss_fuzz" not in self.data:
                return []
            origins = OSS_FUZZ_ORIGINS
        return [e for e in self.entries() if e.get("origin", "oss-fuzz") in origins]


class Harness:
    def __init__(self, project, name, data):
        self.project, self.name, self.data = project, name, data
        self.statements = {}

    @property
    def tree(self):
        return self.project.tree

    @property
    def dir(self):
        return os.path.join("projects", self.project.name, self.name)

    def builds(self, published_only=True):
        """[(build, record)] in the fixed order plain, ubsan, asan, asan-ubsan."""
        b = self.data.get("builds") or {}
        return [(k, b[k]) for k in schema.BUILDS
                if k in b and not (published_only and b[k].get("withheld"))]

    def elf_path(self, build):
        rec = self.data["builds"][build]
        return os.path.join("projects", self.project.name, "bin", self.name, rec["file"])

    def unpatched_elf_path(self, build):
        """Where `oft fetch --findings` puts the unpatched binary of this build, which the findings run on."""
        rec = self.tree.unpatched[self.project.name]["harnesses"][self.name][build]
        return os.path.join("findings", self.project.name, "bin", self.name, rec["file"])

    def distribution_body(self):
        """The definitions of Distribution.v, read with no newline translation: a carriage return in a string literal
        is part of what a bound's fingerprint hashes."""
        p = self.tree.path(self.dir, "Distribution.v")
        if not os.path.isfile(p):
            return None
        return split_distribution(read_raw(p))[1]


class Statement:
    def __init__(self, harness, name, data):
        self.harness, self.name, self.data = harness, name, data
        self.status = data.get("status")
        self.proof = None
        self.counterexample = None
        self.derived_counterexample = False   # refuted by another statement's counterexample run
        self.fingerprint = None

    @property
    def id(self):
        return names.statement_id(self.harness.project.name, self.harness.name, self.name)

    @property
    def kind(self):
        return self.data.get("kind")

    @property
    def revision(self):
        return self.data.get("revision", 1)

    def rendered(self):
        """True if Statements.v carries this statement's Definition."""
        return self.data.get("status") not in ("withheld", "withdrawn")


class ProofDir:
    def __init__(self, path, data, refutes):
        self.path, self.data, self.refutes = path, data, refutes


class CounterexampleDir:
    def __init__(self, path, data):
        self.path, self.data = path, data


class FindingDir:
    def __init__(self, path, data):
        self.path, self.data = path, data
        _, self.project, self.harness, self.slug = path.split("/")

    @property
    def unit(self):
        return "%s/%s" % (self.project, self.harness)


def split_distribution(text):
    """(header, body) of a Distribution.v: the header is its first comment."""
    if not text.startswith("(** "):
        return None, text
    end = text.find("*)")
    if end < 0:
        return None, text
    end += 2
    body = text[end:]
    for nl in ("\r\n", "\n"):
        if body.startswith(nl):
            return text[:end], body[len(nl):]
    return text[:end], body


def read(path):
    with open(path, encoding="utf-8") as f:
        return f.read()


def read_raw(path):
    """The file's text with no newline translation: a carriage return stays as it is."""
    with open(path, encoding="utf-8", newline="") as f:
        return f.read()


def sha256_file(path):
    h = hashlib.sha256()
    with open(path, "rb") as f:
        for chunk in iter(lambda: f.read(1 << 20), b""):
            h.update(chunk)
    return h.hexdigest()


def code_sha256(path):
    """SHA-256 of a Rocq file's code (rocq.code): its comments and layout are not hashed.  Read with no newline
    translation, so a carriage return in a string literal stays in the code."""
    return hashlib.sha256(rocq.code(read_raw(path)).encode()).hexdigest()


def _parse(item):
    """(data or None, errors) of one facts file: item is (path, kind).  A build record (kind "record") is not a facts
    file: of it only the recipe it cites, recipe.asset, is read and returned.  A fallback record (one with `fallback`,
    whose binaries the unpublished internal recipe built) may cite none: it gives (None, []).  Any other record that is
    a mapping without a `recipe` key gives (None, None), which load() judges once it knows the project: a port-built
    project's records cite none, since the OSS Verify port built its binaries.  A record with a `recipe` key, or one
    that is not a mapping, is judged on recipe.asset whatever its project."""
    path, kind = item
    try:
        data = yamlio.load_file(path)
    except (OSError, yamlio.YamlError) as e:
        return None, [str(e)]
    if kind == "record":
        rec = data.get("recipe") if isinstance(data, dict) else None
        asset = rec.get("asset") if isinstance(rec, dict) else None
        if asset is None and isinstance(data, dict) and data.get("fallback"):
            return None, []
        if isinstance(data, dict) and "recipe" not in data:
            return None, None
        data, problems = asset, schema.validate_def("release", "recipe", asset, "recipe.asset")
    else:
        problems = schema.validate(kind, data)
    return (None if problems else data), problems


def _yaml(tree, rel, kind, parsed=None):
    data, problems = parsed if parsed is not None else _parse((tree.path(rel), kind))
    for p in problems:
        tree.err(rel, p)
    return data


def cpus():
    """The CPUs this process may run on: its affinity set where the OS has one (Linux; `taskset` narrows it), else
    every CPU. The default number of workers of a pool."""
    return len(os.sched_getaffinity(0)) if hasattr(os, "sched_getaffinity") else os.cpu_count() or 1


# Below this many facts files they are parsed in this process: a pool costs more than it saves.
POOL_MIN_FILES = 256


def _parse_all(items, jobs=None):
    """[_parse(item) for item in items], over a process pool when there are many."""
    jobs = jobs or cpus()
    if jobs == 1 or len(items) < POOL_MIN_FILES:
        return [_parse(i) for i in items]
    from concurrent.futures import ProcessPoolExecutor
    with ProcessPoolExecutor(max_workers=jobs) as pool:
        return list(pool.map(_parse, items, chunksize=max(1, len(items) // (jobs * 8))))


def load(root, record=False, jobs=None):
    """The facts at root.  record: for `oft check --parts findings --record`, which runs a finding whose runs are not
    recorded yet, so a finding may have none.  jobs: processes that parse the facts files (default: every CPU this
    process may run on, when there are POOL_MIN_FILES or more)."""
    tree = Tree(root)
    tree.record = record
    pdir = tree.path("projects")
    layout = []   # (project, its harnesses with a harness.yaml), or (project, None) when it has no project.yaml
    for name in sorted(os.listdir(pdir)) if os.path.isdir(pdir) else []:
        if not os.path.isdir(os.path.join(pdir, name)):
            continue
        if not os.path.isfile(os.path.join(pdir, name, "project.yaml")):
            layout.append((name, None))
            continue
        layout.append((name, [h for h in sorted(os.listdir(os.path.join(pdir, name)))
                              if h != "bin" and os.path.isfile(os.path.join(pdir, name, h, "harness.yaml"))]))
    items = [("release.yaml", "release")] if os.path.isfile(tree.path("release.yaml")) else []
    for name, hs in layout:
        if hs is not None:
            items.append((os.path.join("projects", name, "project.yaml"), "project"))
            items += [(os.path.join("projects", name, h, "harness.yaml"), "harness") for h in hs]
    records = _record_paths(tree)
    items += [(rel, "record") for rel in records]
    parsed = dict(zip((rel for rel, _ in items), _parse_all([(tree.path(rel), kind) for rel, kind in items], jobs)))
    # assembled in the order the files were always read, so the errors and the objects are those of a serial load
    if "release.yaml" in parsed:
        tree.release = _yaml(tree, "release.yaml", "release", parsed["release.yaml"])
    else:
        tree.err("release.yaml", "missing")
    for name, hs in layout:
        if hs is None:
            tree.err(os.path.join("projects", name), "a project directory without project.yaml")
            continue
        rel = os.path.join("projects", name, "project.yaml")
        data = _yaml(tree, rel, "project", parsed[rel])
        if data is None:
            continue
        proj = Project(tree, name, data)
        tree.projects[name] = proj
        for h in hs:
            hrel = os.path.join("projects", name, h, "harness.yaml")
            hdata = _yaml(tree, hrel, "harness", parsed[hrel])
            if hdata is None:
                continue
            har = Harness(proj, h, hdata)
            proj.harnesses[h] = har
            for sname, sdata in (hdata.get("statements") or {}).items():
                if isinstance(sdata, dict):
                    har.statements[sname] = Statement(har, sname, sdata)
    _load_contrib(tree)
    for rel in records:
        key = tuple(rel.split(os.sep)[1:3])
        data, problems = parsed[rel]
        if problems is None:
            # it cites no recipe: a port-built project's record need not, and every other one must
            proj = tree.projects.get(key[0])
            no_recipe = proj is not None and port(proj)
            problems = [] if no_recipe else schema.validate_def("release", "recipe", None, "recipe.asset")
        asset = _yaml(tree, rel, "record", (data, problems))
        if asset is not None:
            tree.records[key] = asset
    if os.path.isfile(tree.path("approvals.yaml")):
        tree.approvals = _yaml(tree, "approvals.yaml", "approvals")
    _load_findings(tree)
    _derive(tree)
    return tree


# Directories beside the statement directories of proofs/<p>/<h>/: the harness's proof library and its build record.
PROOF_HARNESS_DIRS = ("lib", "provenance")


def _walk3(tree, top):
    base = tree.path(top)
    if not os.path.isdir(base):
        return
    for p in sorted(os.listdir(base)):
        if top == "proofs" and p == "lib":
            continue  # proofs/lib/: the library shared by every proof
        for h in sorted(os.listdir(os.path.join(base, p))) if os.path.isdir(os.path.join(base, p)) else []:
            if top == "findings" and h == "bin":
                continue  # findings/<p>/bin/: the unpatched binaries `oft fetch --findings` unpacks
            hd = os.path.join(base, p, h)
            for s in sorted(os.listdir(hd)) if os.path.isdir(hd) else []:
                if top == "proofs" and s in PROOF_HARNESS_DIRS:
                    continue
                if os.path.isdir(os.path.join(hd, s)):
                    yield p, h, s, os.path.join(top, p, h, s)


def _load_contrib(tree):
    for p, h, s, rel in _walk3(tree, "proofs"):
        y = os.path.join(rel, "proof.yaml")
        if not os.path.isfile(tree.path(y)):
            tree.err(rel, "a proof directory without proof.yaml")
            continue
        data = _yaml(tree, y, "proof")
        if data is None:
            continue
        sid = names.statement_id(p, h, s)
        if ("proves" in data) == ("refutes" in data):
            tree.err(y, "exactly one of proves and refutes")
            continue
        refutes = "refutes" in data
        if data.get("refutes", data.get("proves")) != sid:
            tree.err(y, "names %r but lives under %s" % (data.get("refutes", data.get("proves")), sid))
        main = "Refutation.v" if refutes else "Proof.v"
        if not os.path.isfile(tree.path(rel, main)):
            tree.err(rel, "missing %s" % main)
        tree.proofs[sid] = ProofDir(rel, data, refutes)
    for p, h, s, rel in _walk3(tree, "counterexamples"):
        y = os.path.join(rel, "expect.yaml")
        if not os.path.isfile(tree.path(y)):
            tree.err(rel, "a counterexample directory without expect.yaml")
            continue
        data = _yaml(tree, y, "counterexample")
        if data is None:
            continue
        sid = names.statement_id(p, h, s)
        if data.get("statement") != sid:
            tree.err(y, "names %r but lives under %s" % (data.get("statement"), sid))
        for f in ("input.bin", "control.bin"):
            if not os.path.isfile(tree.path(rel, f)):
                tree.err(rel, "missing " + f)
        tree.counterexamples[sid] = CounterexampleDir(rel, data)
    base = tree.path("proofs")
    for p in sorted(os.listdir(base)) if os.path.isdir(base) else []:
        for h in sorted(os.listdir(os.path.join(base, p))) if p != "lib" and os.path.isdir(os.path.join(base, p)) else []:
            if os.path.isdir(os.path.join(base, p, h, "lib")):
                tree.proof_libs.append("%s/%s" % (p, h))


def _record_paths(tree):
    """proofs/<p>/<h>/provenance/PROVENANCE.yaml, the build record, of every harness that has one."""
    base, out = tree.path("proofs"), []
    for p in sorted(os.listdir(base)) if os.path.isdir(base) else []:
        pd = os.path.join(base, p)
        for h in sorted(os.listdir(pd)) if p != "lib" and os.path.isdir(pd) else []:
            rel = os.path.join("proofs", p, h, "provenance", "PROVENANCE.yaml")
            if os.path.isfile(tree.path(rel)):
                out.append(rel)
    return out


def release_recipes(tree):
    """The recipes release.yaml lists: `recipes`, or, in the shape before it, its one `recipe` as a one-entry list."""
    r = tree.release or {}
    return r.get("recipes") or ([r["recipe"]] if "recipe" in r else [])


def bin_recipe(tree, proj):
    """The recipe a project's binary archive was built with: assets.bin.recipe, or, in the shape before it, where no
    archive names one, release.yaml's one `recipe`. None without a binary archive, when neither names one, or for a
    port-built project (build.oss_verify), whose binaries the OSS Verify port built and no recipe."""
    b = (proj.data.get("assets") or {}).get("bin")
    if b is None or port(proj):
        return None
    return b["recipe"] if "recipe" in b else (tree.release or {}).get("recipe")


# A finding is hand-written, untrusted pull-request input before lint's path
# pass.  Validate its files here, before any loader follows a link or reads
# more than the same 64 KiB paths.py permits.
FINDING_FILE_CAP = 64 << 10


class BoundedFileError(Exception):
    """A file that is not a regular file of at most its cap."""


def open_bounded(path, cap=FINDING_FILE_CAP):
    """A no-follow read descriptor for a regular file of at most cap bytes.
    lstat first gives a clear symlink error; fstat after O_NOFOLLOW closes the
    lstat-to-open race, and O_NONBLOCK keeps a FIFO swapped in by that race
    from blocking the open."""
    try:
        listed = os.lstat(path)
    except OSError as e:
        raise BoundedFileError(str(e))
    if stat.S_ISLNK(listed.st_mode):
        raise BoundedFileError("a symbolic link")
    if not stat.S_ISREG(listed.st_mode):
        raise BoundedFileError("not a regular file")
    if listed.st_size > cap:
        raise BoundedFileError("over the %d-byte cap" % cap)
    try:
        fd = os.open(path, os.O_RDONLY | getattr(os, "O_NOFOLLOW", 0) | getattr(os, "O_NONBLOCK", 0))
    except OSError as e:
        raise BoundedFileError(str(e))
    opened = os.fstat(fd)
    if not stat.S_ISREG(opened.st_mode):
        os.close(fd)
        raise BoundedFileError("not a regular file")
    if opened.st_size > cap:
        os.close(fd)
        raise BoundedFileError("over the %d-byte cap" % cap)
    return fd


def read_bounded(path, cap=FINDING_FILE_CAP):
    """The whole regular file of at most cap bytes, never following a symlink."""
    with os.fdopen(open_bounded(path, cap), "rb") as f:
        data = f.read(cap + 1)
    if len(data) > cap:
        raise BoundedFileError("over the %d-byte cap" % cap)
    return data


def _finding_fd(tree, rel):
    """open_bounded, or None after recording the loader error."""
    try:
        return open_bounded(tree.path(rel))
    except BoundedFileError as e:
        tree.err(rel, str(e))
        return None


def _finding_bytes(tree, rel):
    """read_bounded, or None after recording the loader error."""
    try:
        return read_bounded(tree.path(rel))
    except BoundedFileError as e:
        tree.err(rel, str(e))
        return None


def _finding_yaml(tree, rel, kind):
    """A schema-valid YAML finding file after the bounded no-follow preflight."""
    data = _finding_bytes(tree, rel)
    if data is None:
        return None
    try:
        text = data.decode()
        value = yamlio.load(text, where=tree.path(rel))
    except (UnicodeDecodeError, yamlio.YamlError) as e:
        tree.err(rel, str(e))
        return None
    problems = schema.validate(kind, value)
    for p in problems:
        tree.err(rel, p)
    return None if problems else value


# The longest driver header: its length word, a config of at most 0x7fff bytes, and the allocation mask.
DRIVER_HEADER_MAX = 2 + 0x7fff + 4


def driver_calls(data):
    """The driver calls a harness 1 to 4 times according to the bounded header
    that begins data, or None when that header is incomplete."""
    if len(data) < 2:
        return None
    n = int.from_bytes(data[:2], "little") & 0x7fff
    if len(data) < 2 + n + 4:
        return None
    return (data[2] & 3) + 1 if n else 1


def _driver_calls(fd):
    """driver_calls of the file at fd, which came from _finding_fd, so its
    path is regular, small and opened without following a symlink."""
    with os.fdopen(fd, "rb") as f:
        return driver_calls(f.read(DRIVER_HEADER_MAX))


# The states in which a finding holds its project back: it is not public, not
# pruned and not a library defect.
HOLDING_STATES = ("open", "patched", "reported")


def held_projects(tree):
    """The projects a finding holds back: those with a finding that is open,
    patched or reported."""
    return {f.project for f in tree.findings.values() if f.data["state"] in HOLDING_STATES}


def private_projects(tree):
    """The projects whose project.yaml says `release: private`: kept in this repository, held from every public
    release.  The release keeps the held page of one OSS-Fuzz has (held_form) and removes one it does not have whole."""
    return {n for n, p in tree.projects.items() if p.data.get("release") == "private"}


def held_form(data):
    """The project.yaml a public release carries for a private project OSS-Fuzz has: its name, homepage, language and
    oss_fuzz, and status held, reason held (the shape of a project held from this release)."""
    out = {k: data[k] for k in ("schema", "project", "homepage", "language", "oss_fuzz") if k in data}
    out.update(status="held", reason="held")
    return out


def cut_private(tree):
    """Turn loaded facts into the public release's, as oft release-tree's cut leaves them: a private project OSS-Fuzz
    has keeps only its held form (no harnesses, notes, proofs or counterexamples), and one it does not have is gone;
    either way nothing else is keyed by it."""
    names = private_projects(tree)

    def keep(key):
        return key.split("/")[0] not in names
    for n in names:
        proj = tree.projects[n]
        if "oss_fuzz" in proj.data:
            proj.data, proj.harnesses, proj.notes = held_form(proj.data), {}, None
        else:
            del tree.projects[n]
    tree.proofs = {k: v for k, v in tree.proofs.items() if keep(k)}
    tree.counterexamples = {k: v for k, v in tree.counterexamples.items() if keep(k)}
    tree.findings = {k: v for k, v in tree.findings.items() if keep(k)}
    tree.unpatched = {k: v for k, v in tree.unpatched.items() if keep(k)}
    tree.finding_series = {k: v for k, v in tree.finding_series.items() if keep(k)}
    tree.proof_libs = [k for k in tree.proof_libs if keep(k)]
    tree.records = {(p, h): v for (p, h), v in tree.records.items() if p not in names}


def _load_findings(tree):
    """findings/<p>/unpatched.yaml and each findings/<p>/<h>/<slug>/: the record, its files, and what it runs on."""
    base = tree.path("findings")
    for p in sorted(os.listdir(base)) if os.path.isdir(base) else []:
        rel = os.path.join("findings", p, "unpatched.yaml")
        if not os.path.lexists(tree.path(rel)):
            continue
        data = _finding_yaml(tree, rel, "unpatched")
        if data is None:
            continue
        tree.unpatched[p] = data
        proj = tree.projects.get(p)
        if proj is None:
            tree.err(rel, "no project %s in this tree" % p)
            continue
        if data["asset"]["file"] != p + "-unpatched-bin.tar.zst":
            tree.err(rel, "asset.file must be %s-unpatched-bin.tar.zst" % p)
        if data["asset"]["release"] != "findings-" + p:
            tree.err(rel, "asset.release must be findings-%s, the release that holds %s's assets while a finding "
                          "holds it back" % (p, p))
        for h, builds in data["harnesses"].items():
            if h not in proj.harnesses:
                tree.err(rel, "harnesses.%s: %s has no harness %s in this tree" % (h, p, h))
            for b, rec in builds.items():
                if rec["file"] != names.build_file(h, b):
                    tree.err(rel, "harnesses.%s.%s.file must be %s" % (h, b, names.build_file(h, b)))
    for p in sorted(os.listdir(base)) if os.path.isdir(base) else []:
        project_dir = os.path.join(base, p)
        for h in sorted(os.listdir(project_dir)) if os.path.isdir(project_dir) else []:
            if h == "bin":
                continue
            series = os.path.join("findings", p, h, "series")
            if not os.path.lexists(tree.path(series)):
                continue
            raw = _finding_bytes(tree, series)
            if raw is None:
                continue
            try:
                tree.finding_series["%s/%s" % (p, h)] = raw.decode()
            except UnicodeDecodeError as e:
                tree.err(series, str(e))
    for p, h, s, rel in _walk3(tree, "findings"):
        y = os.path.join(rel, "finding.yaml")
        if not os.path.lexists(tree.path(y)):
            tree.err(rel, "a finding directory without finding.yaml")
            continue
        data = _finding_yaml(tree, y, "finding")
        if data is None:
            continue
        f = FindingDir(rel, data)
        tree.findings["%s/%s/%s" % (p, h, s)] = f
        _finding_record(tree, f, y)
    _asset_names(tree)


def _finding_record(tree, f, y):
    """A finding names its harness's statements and runs every build they name, its files are present, and its
    project's unpatched.yaml pins those builds."""
    d, rel = f.data, f.path
    for name in ("input.bin", "control.bin"):
        finding_file = os.path.join(rel, name)
        if not os.path.lexists(tree.path(finding_file)):
            tree.err(rel, "missing " + name)
            continue
        fd = _finding_fd(tree, finding_file)
        if fd is None:
            continue
        calls = _driver_calls(fd)
        if calls is None:
            tree.err(y, "%s is shorter than its driver header" % name)
        elif calls != d["calls"]:
            tree.err(y, "calls is %d, but the driver header of %s gives %d" % (d["calls"], name, calls))
    state, patch = d["state"], d.get("patch")
    if state not in ("open", "not-a-defect") and not patch:
        tree.err(y, "a %s finding names its patch" % state)
    if patch:
        patch_file = os.path.join(rel, patch)
        if not os.path.lexists(tree.path(patch_file)):
            tree.err(y, "its patch %s is not in %s" % (patch, rel))
        else:
            fd = _finding_fd(tree, patch_file)
            if fd is not None:
                os.close(fd)
    if state in ("reported", "public") and "upstream" not in d:
        tree.err(y, "a %s finding names its report (upstream)" % state)
    if ("input" in d) != ("control" in d):
        tree.err(y, "input and control go together: the runs of one input and of its control")
    elif "input" not in d and not tree.record:
        tree.err(y, "no runs recorded: run `oft check %s --parts findings --record` and commit the input and control "
                    "it prints" % f.unit)
    proj = tree.projects.get(f.project)
    h = proj and proj.harnesses.get(f.harness)
    if h is None:
        tree.err(y, "%s has no harness %s in this tree" % (f.project, f.harness))
        return
    if len(set(d["statements"])) != len(d["statements"]):
        tree.err(y, "a statement is listed twice")
    builds = set()
    for sname in d["statements"]:
        st = h.statements.get(sname)
        if st is None:
            tree.err(y, "names statement %s, which %s does not have" % (sname, f.unit))
        elif st.kind not in ("agreement", "halts"):
            tree.err(y, "names %s, a %s statement: a run shows only an agreement or halts statement false"
                     % (sname, st.kind))
        else:
            builds.update(st.data["builds"])
            for which in ("input", "control"):
                for b in st.data["builds"]:
                    if which in d and b not in d[which]:
                        tree.err(y, "%s has no run of build %s, which %s names" % (which, b, sname))
    unpatched = tree.unpatched.get(f.project)
    if unpatched is None:
        tree.err(y, "findings/%s/unpatched.yaml is missing: it pins the binaries this finding runs on" % f.project)
        return
    for b in sorted(builds, key=schema.BUILDS.index):
        if b not in unpatched["harnesses"].get(f.harness, {}):
            tree.err(y, "findings/%s/unpatched.yaml has no %s build of %s" % (f.project, b, f.harness))


def _asset_names(tree):
    """Every release asset the tree pins, in a project.yaml or an unpatched.yaml, has a file name of its own: CI's
    asset directory and `oft fetch --source` keep assets by file name alone."""
    pins = [(os.path.join(p.dir, "project.yaml"), a["file"]) for p in tree.projects.values()
            for a in (p.data.get("assets") or {}).values()]
    pins += [(os.path.join("findings", p, "unpatched.yaml"), u["asset"]["file"]) for p, u in tree.unpatched.items()]
    seen = {}
    for where, name in pins:
        if name in seen:
            tree.err(where, "pins %s, which %s pins too: CI and `oft fetch --source` keep assets by file name"
                     % (name, seen[name]))
        seen.setdefault(name, where)


def _derive(tree):
    """Derived statuses and fingerprints."""
    by_id = {s.id: s for s in tree.statements()}
    for sid, pd in tree.proofs.items():
        st = by_id.get(sid)
        if st is None:
            tree.err(pd.path, "no statement %s in this release" % sid)
            continue
        st.proof = pd
    for sid, cx in tree.counterexamples.items():
        st = by_id.get(sid)
        if st is None:
            tree.err(cx.path, "no statement %s in this release" % sid)
            continue
        st.counterexample = cx
    digests = {}
    for f in THEORIES:
        digests[f] = code_sha256(tree.path(f)) if os.path.isfile(tree.path(f)) else None
    lps = ((tree.release or {}).get("semantics") or {}).get("version")
    _refute_agreements(tree)
    for st in by_id.values():
        exported = st.data.get("status")
        if st.proof and st.counterexample:
            tree.err(st.id, "has both a proof and a counterexample: the model and the runner disagree")
        if st.proof or (st.counterexample and not st.derived_counterexample):
            if exported in ("withheld", "withdrawn", "model-gap"):
                tree.err(st.id, "a %s statement cannot carry a proof or a counterexample" % exported)
        if st.proof:
            st.status = "refuted" if st.proof.refutes else "proved"
        elif st.counterexample:
            st.status = "counterexample"
        if exported == "withheld":
            continue                # no fingerprint: it would let anyone test a guess at a withheld binary
        try:
            st.fingerprint = fingerprint(st, digests, lps)
        except (shapes.ShapeError, KeyError, TypeError) as e:
            tree.err(st.id, "cannot be stated: %s" % e)


def _refute_agreements(tree):
    """A counterexample to a halts statement in which the build is killed by a
    signal (an abort, a fault, a trap) is an execution that reaches an error,
    with nothing refused.  Every agreement statement of the same harness that
    names that build forbids exactly that (both builds error-free on every
    input it covers), so the same run refutes it: its status is derived as a
    counterexample too, pointing at the same directory."""
    for h in tree.harnesses():
        deaths = [s.counterexample for s in sorted(h.statements.values(), key=lambda s: s.name)
                  if s.counterexample and not s.derived_counterexample
                  and "signal" in s.counterexample.data["observed"]]
        if not deaths:
            continue
        for st in sorted(h.statements.values(), key=lambda s: s.name):
            if st.kind != "agreement" or st.counterexample or st.data.get("status") in ("withheld", "withdrawn",
                                                                                     "model-gap"):
                continue
            for b in st.data["builds"]:
                cx = next((c for c in deaths if c.data["observed"]["build"] == b), None)
                if cx is not None:
                    st.counterexample, st.derived_counterexample = cx, True
                    break


def fingerprint(st, digests, lps):
    """SHA-256 over what fixes the statement's meaning, and nothing else:
    no docstring, no image, .hex or .vo digest.  digests: the SHA-256 of the
    code of each of THEORIES."""
    if digests["theories/Shapes.v"] is None or digests["theories/Images.v"] is None:
        raise KeyError("theories/Shapes.v and theories/Images.v")
    params, body = shapes.term(st.data)
    builds = st.harness.data["builds"]
    lines = [FINGERPRINT_TAG, st.id, "Definition %s%s : Prop := %s." % (st.name, params, body)]
    for b in sorted(set(st.data["builds"])):
        lines.append("build %s %s" % (b, builds[b]["sha256"]))
    lines += ["shapes %s" % digests["theories/Shapes.v"], "images %s" % digests["theories/Images.v"],
              "semantics %s" % lps]
    if st.kind == "bound":
        dist = st.harness.distribution_body()
        if dist is None:
            raise KeyError("Distribution.v")
        lines.append("distribution %s" % hashlib.sha256(dist.encode()).hexdigest())
    return hashlib.sha256(("\n".join(lines) + "\n").encode()).hexdigest()


# ---------------------------------------------------------------- licences

_SPDX_TOKEN = re.compile(r"\(|\)|[A-Za-z0-9.+-]+")
_GPL_ID = re.compile(r"(A|L)?GPL-[0-9]")


def gpl_binds(expr):
    """True if every way to comply with the SPDX expression takes a GPL-family licence: AND binds when one operand
    does, OR only when every alternative does (a licensee may pick any), and `X WITH exception` binds as X does.  An
    expression this cannot parse binds if it names a GPL at all."""
    toks = _SPDX_TOKEN.findall(expr or "")
    pos = 0

    def peek():
        return toks[pos] if pos < len(toks) else None

    def take():
        nonlocal pos
        if pos >= len(toks):
            raise ValueError("unexpected end")
        pos += 1
        return toks[pos - 1]

    def primary():
        t = take()
        if t == "(":
            v = disjunction()
            if take() != ")":
                raise ValueError("unbalanced")
            return v
        if t in ("AND", "OR", "WITH", ")"):
            raise ValueError("operator where a licence belongs")
        if peek() == "WITH":
            take()
            take()
        return bool(_GPL_ID.match(t))

    def conjunction():
        v = primary()
        while peek() == "AND":
            take()
            w = primary()
            v = v or w
        return v

    def disjunction():
        v = conjunction()
        while peek() == "OR":
            take()
            w = conjunction()
            v = v and w
        return v

    try:
        v = disjunction()
        if pos != len(toks):
            raise ValueError("trailing tokens")
        return v
    except ValueError:
        return bool(_GPL_ID.search(expr or ""))


def image_libraries(h):
    """The archives from the build image that any build of the harness links, by file name."""
    return sorted({u["name"] for _b, r in h.builds(published_only=False) for u in r.get("uninstrumented") or []
                   if u["kind"] == "image-library"})


def copyleft(tree, h):
    """True if the harness's binaries are bound by a GPL-family licence: by their own expression, the harness source's,
    the library's (the harness's view of it or project.yaml's), or a library they link from the build image that
    release.yaml's image_libraries marks copyleft."""
    lib = h.project.data["library"]
    if any(gpl_binds(x) for x in (h.data["licence"], h.data["library"]["licence"], h.data["source"]["licence"],
                                  lib.get("licence", ""))):
        return True
    known = (tree.release or {}).get("image_libraries") or {}
    return any((known.get(n) or {}).get("copyleft") for n in image_libraries(h))


def port(proj):
    """The project's build.oss_verify value (the OSS Verify port that built its binaries: repository, commit, path),
    or None when a build recipe built them."""
    return (proj.data.get("build") or {}).get("oss_verify")


# ---------------------------------------------------------------- sentences

def feature_words(codes):
    return render.join_words(PHRASEBOOK["features"][c] for c in codes)


def _args(project, args):
    a = dict(args or {})
    a["project"] = project
    if "features" in a:
        a["features"] = feature_words(a["features"])
    if "commit" in a:
        a["commit8"] = a["commit"][:8]
    return a


def project_sentence(proj):
    """The reason sentence for a project that is not available."""
    status, reason = proj.data.get("status"), proj.data.get("reason")
    shape = PHRASEBOOK["projects"][status]["reasons"][reason]
    args = _args(proj.name, proj.data.get("reason_args"))
    if status == "no-harness" and "commit8" not in args and "oss_fuzz" in proj.data:
        args["commit8"] = proj.data["oss_fuzz"]["commit"][:8]
    return shape.format_map(args)


def harness_reason(proj, entry):
    shape = PHRASEBOOK["harnesses"][entry["reason"]]
    return shape.format_map(_args(proj.name, entry.get("reason_args")))


def repo_label(url):
    """'https://github.com/madler/zlib' -> 'madler/zlib'."""
    m = re.match(r"https://(?:www\.)?github\.com/([^/]+/[^/.]+)", url)
    if m:
        return m.group(1)
    return re.sub(r"^https://(www\.)?", "", url).rstrip("/")
