"""oft fetch and oft verify-sha: release assets, pinned by SHA-256.

A project's binaries are one release asset, <project>-bin.tar.zst, whose
SHA-256 project.yaml records; every ELF inside it is pinned again, by its own
SHA-256, in its harness.yaml.  `fetch` checks both: the archive before it is
unpacked, and each file before it is moved into projects/<p>/bin/<harness>/.
The archive may also hold the licence files of the copyleft components compiled
into the binaries, as LICENSES/<component>/<file>; they go to
projects/<p>/bin/LICENSES/.  Any other member is refused, so an archive can
never write anywhere else.
"""
import hashlib
import os
import re
import shutil
import subprocess
import sys
import tarfile
import tempfile
import urllib.request

from . import facts

RELEASES = "https://github.com/theorem-labs/oss-verify-proofs/releases/download"


class FetchError(RuntimeError):
    pass


def _project(tree, name):
    proj = tree.projects.get(name)
    if proj is None:
        raise FetchError("no project %r" % name)
    if proj.data["status"] != "available" or "assets" not in proj.data:
        raise FetchError("%s has no binaries in this release (status: %s)" % (name, proj.data["status"]))
    return proj


def _download(url_or_path, dest, want_bytes, want_sha):
    h = hashlib.sha256()
    n = 0
    if "://" in url_or_path:
        src = urllib.request.urlopen(url_or_path, timeout=120)
    else:
        src = open(url_or_path, "rb")
    with src, open(dest, "wb") as out:
        for chunk in iter(lambda: src.read(1 << 20), b""):
            h.update(chunk)
            n += len(chunk)
            out.write(chunk)
    if n != want_bytes or h.hexdigest() != want_sha:
        raise FetchError("%s: got %d bytes with SHA-256 %s; project.yaml pins %d bytes, %s"
                         % (url_or_path, n, h.hexdigest(), want_bytes, want_sha))


def _expected(proj):
    """{member name: (harness, build record)} for every published build."""
    out = {}
    for h in proj.harnesses.values():
        for b, rec in h.builds():
            out["%s/%s" % (h.name, rec["file"])] = (h, rec)
    return out


_LICENCE_PART = re.compile(r"^[A-Za-z0-9][A-Za-z0-9._+-]*$")


def _licence_member(name):
    """The path parts of a LICENSES/ member: () for LICENSES/ itself, (component,) or (component, file); None for any
    other name."""
    parts = name.rstrip("/").split("/")
    if parts[0] != "LICENSES" or len(parts) > 3 or not all(_LICENCE_PART.match(p) for p in parts[1:]):
        return None
    return tuple(parts[1:])


def _unpack(archive, proj, bindir):
    """Unpack the archive's binaries into bindir/<harness>/ and its licence files into bindir/LICENSES/; returns the
    number of each."""
    want = _expected(proj)
    got = set()
    licences = set()
    if shutil.which("zstd") is None:
        raise FetchError("zstd is needed to unpack %s" % archive)
    stage = tempfile.mkdtemp(prefix=".fetch-", dir=bindir)
    dec = subprocess.Popen(["zstd", "-dc", "--", archive], stdout=subprocess.PIPE)
    try:
        with tarfile.open(fileobj=dec.stdout, mode="r|") as tf:
            for m in tf:
                name = m.name[2:] if m.name.startswith("./") else m.name
                if m.isdir() and name.rstrip("/") in {k.split("/")[0] for k in want} | {""}:
                    continue
                lic = _licence_member(name)
                if lic is not None and m.isdir() and len(lic) < 2:
                    continue
                if lic is not None and m.isfile() and len(lic) == 2 and lic not in licences:
                    with tf.extractfile(m) as src, open(os.path.join(stage, "LICENSES__%s__%s" % lic), "wb") as dst:
                        shutil.copyfileobj(src, dst)
                    licences.add(lic)
                    continue
                if not m.isfile() or name not in want:
                    raise FetchError("%s: unexpected member %r" % (archive, m.name))
                h, rec = want[name]
                out = os.path.join(stage, name.replace("/", "__"))
                digest = hashlib.sha256()
                with tf.extractfile(m) as src, open(out, "wb") as dst:
                    for chunk in iter(lambda: src.read(1 << 20), b""):
                        digest.update(chunk)
                        dst.write(chunk)
                if digest.hexdigest() != rec["sha256"] or m.size != rec["bytes"]:
                    raise FetchError("%s: %s does not match its harness.yaml SHA-256" % (archive, name))
                got.add(name)
        # tarfile stops at the end-of-archive blocks; zstd is still writing the record padding after them. Read it
        # all, or closing the pipe can kill zstd with SIGPIPE and a complete archive reads as a failed one.
        while dec.stdout.read(1 << 20):
            pass
    finally:
        dec.stdout.close()
        rc = dec.wait()
    if rc != 0:
        raise FetchError("zstd failed on %s" % archive)
    missing = sorted(set(want) - got)
    if missing:
        raise FetchError("%s lacks %s" % (archive, ", ".join(missing)))
    for name in sorted(got):
        dest = os.path.join(bindir, name)
        os.makedirs(os.path.dirname(dest), exist_ok=True)
        os.replace(os.path.join(stage, name.replace("/", "__")), dest)
        os.chmod(dest, 0o755)
    # the licence files are those of this archive only: an earlier archive's go
    shutil.rmtree(os.path.join(bindir, "LICENSES"), ignore_errors=True)
    for comp, f in sorted(licences):
        dest = os.path.join(bindir, "LICENSES", comp, f)
        os.makedirs(os.path.dirname(dest), exist_ok=True)
        os.replace(os.path.join(stage, "LICENSES__%s__%s" % (comp, f)), dest)
        os.chmod(dest, 0o644)
    os.rmdir(stage)
    return len(got), len(licences)


def _where(source, asset):
    if source and "://" not in source:
        return os.path.join(source, asset["file"])
    return "%s/%s" % ((source or RELEASES + "/" + asset["release"]).rstrip("/"), asset["file"])


def fetch(root, projects, source=None, all_projects=False, only_check_assets=False, release=None, listing=False,
          out=sys.stdout):
    """Fetch the named projects' binaries.  all_projects: every available
    project; release: only those whose binaries are attached to that release
    tag; only_check_assets: download and check every asset (binaries and
    source), unpack nothing; listing: print `<release> <file> <sha256>` for
    each asset and download nothing (for CI, which downloads with gh)."""
    tree = facts.load(root)
    if all_projects or release:
        projects = sorted(p.name for p in tree.available())
    bad = n_assets = 0
    want_recipe = False
    for name in projects:
        try:
            proj = _project(tree, name)
            assets = proj.data["assets"]
            kinds = ["bin", "src", "src_manifest"] if (only_check_assets or listing) else ["bin"]
            for kind in kinds:
                asset = assets.get(kind)
                if asset is None or (release and asset["release"] != release):
                    continue
                n_assets += 1
                want_recipe = want_recipe or kind == "src"
                if listing:
                    print("%s %s %s" % (asset["release"], asset["file"], asset["sha256"]), file=out)
                    continue
                bindir = tree.path(proj.dir, "bin")
                os.makedirs(bindir, exist_ok=True)
                fd, tmp = tempfile.mkstemp(prefix=".asset-", suffix=".tar.zst", dir=bindir)
                os.close(fd)
                try:
                    _download(_where(source, asset), tmp, asset["bytes"], asset["sha256"])
                    n = None if only_check_assets else _unpack(tmp, proj, bindir)
                finally:
                    os.unlink(tmp)
                if n is None:
                    what = "SHA-256 matches"
                else:
                    what = "%d binaries, each SHA-256 checked" % n[0] + ("; %d licence files" % n[1] if n[1] else "")
                print("%s: %s (%s), %s" % (name, asset["file"], asset["sha256"][:12], what), file=out)
        except (FetchError, OSError) as e:
            print("%s: %s" % (name, e), file=out)
            bad += 1
    # the release's build recipe, once, with the source assets it completes
    recipe = (tree.release or {}).get("recipe")
    if want_recipe and recipe is not None and not (release and recipe["release"] != release):
        n_assets += 1
        if listing:
            print("%s %s %s" % (recipe["release"], recipe["file"], recipe["sha256"]), file=out)
        else:
            fd, tmp = tempfile.mkstemp(prefix=".asset-", suffix=".tar.zst", dir=root)
            os.close(fd)
            try:
                _download(_where(source, recipe), tmp, recipe["bytes"], recipe["sha256"])
                print("release: %s (%s), SHA-256 matches" % (recipe["file"], recipe["sha256"][:12]), file=out)
            except (FetchError, OSError) as e:
                print("release: %s" % e, file=out)
                bad += 1
            finally:
                os.unlink(tmp)
    if not n_assets and not bad:
        print("oft fetch: no asset to fetch (name a project, or --all, or a --release with assets)", file=out)
        return 1
    return 1 if bad else 0


def verify_sha(root, projects, harness=None, out=sys.stdout):
    """Every published build of every included harness (or of `harness`
    only) is present, and has the size and SHA-256 its harness.yaml records."""
    tree = facts.load(root)
    bad = n = 0
    for name in projects:
        try:
            proj = _project(tree, name)
        except FetchError as e:
            print(e, file=out)
            bad += 1
            continue
        for h in proj.harnesses.values():
            if harness is not None and h.name != harness:
                continue
            for b, rec in h.builds():
                n += 1
                p = tree.path(h.elf_path(b))
                if not os.path.isfile(p):
                    print("%s: missing (run ./oft fetch %s)" % (h.elf_path(b), name), file=out)
                    bad += 1
                elif os.path.getsize(p) != rec["bytes"] or facts.sha256_file(p) != rec["sha256"]:
                    print("%s: does not match its SHA-256 in harness.yaml" % h.elf_path(b), file=out)
                    bad += 1
    if not n:
        print("oft verify-sha: no binaries to check", file=out)
        return 1
    print("oft verify-sha: %d binaries, %d problem(s)" % (n, bad), file=out)
    return 1 if bad else 0
