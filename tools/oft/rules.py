"""The rules that relate one fact to another (part of lint rules `schema` and
`withheld`).  Each function appends to tree.errors."""
import hashlib
import os
import re
from fractions import Fraction

from . import facts, names, schema, shapes

PB = facts.PHRASEBOOK
PLACEHOLDER = re.compile(r"\{([a-z_0-9]+)\}")


def check(tree):
    _release(tree)
    idents = {}
    for proj in tree.projects.values():
        _project(tree, proj)
        idents.setdefault(names.ident(proj.name), []).append(proj.name)
    for ident, ps in idents.items():
        if len(ps) > 1:
            tree.err("projects", "names %s all map to the Rocq identifier %s" % (ps, ident))
    for h in tree.harnesses():
        _harness(tree, h)
    for sid, pd in tree.proofs.items():
        _proof(tree, sid, pd)
    for sid, cx in tree.counterexamples.items():
        _counterexample(tree, sid, cx)
    return tree.errors


def _release(tree):
    r = tree.release
    if not r:
        return
    n = {
        "projects": len(tree.projects),
        "available": len(tree.available()),
        "harnesses": sum(1 for _ in tree.harnesses()),
        "binaries": sum(len(h.builds()) for h in tree.harnesses()),
    }
    for k, v in n.items():
        if r["counts"][k] != v:
            tree.err("release.yaml", "counts.%s is %d but the tree has %d" % (k, r["counts"][k], v))
    if r["oss_fuzz"]["projects"] != len(tree.projects):
        tree.err("release.yaml", "oss_fuzz.projects is %d but projects/ has %d directories"
                 % (r["oss_fuzz"]["projects"], len(tree.projects)))
    builders = (r.get("images") or {}).get("builder") or []
    for proj in tree.projects.values():
        if proj.data["oss_fuzz"]["commit"] != r["oss_fuzz"]["commit"]:
            tree.err(proj.dir, "oss_fuzz.commit differs from release.yaml's")
        # the image a project names as its builder is one the release pins
        b = (proj.data.get("build") or {}).get("builder")
        if b is not None and b not in builders:
            tree.err(os.path.join(proj.dir, "project.yaml"), "build.builder is not one of release.yaml's images.builder")
    # every library a build links from the build image has a release.yaml entry: its licence, whether it makes a
    # binary copyleft, and whether sources.sysroot holds its source; a copyleft binary that links one ships only once
    # that source is in it
    known = r.get("image_libraries") or {}
    linked = set()
    for h in tree.harnesses():
        names_ = facts.image_libraries(h)
        linked.update(names_)
        where = os.path.join(h.dir, "harness.yaml")
        for n in names_:
            if n not in known:
                tree.err(where, "links %s from the build image, which release.yaml's image_libraries does not list" % n)
        if h.builds() and names_ and facts.copyleft(tree, h):
            if not r.get("sources"):
                tree.err("release.yaml", "%s/%s is copyleft and links libraries from the build image, so release.yaml "
                         "names sources (the toolchain and sysroot source archives)" % (h.project.name, h.name))
            missing = [n for n in names_ if n in known and not known[n]["in_sysroot_src"]]
            if missing:
                tree.err(where, "a copyleft binary links %s, whose source sources.sysroot does not hold: withhold its "
                         "builds (source-bundle) until it does" % ", ".join(missing))
    for n in sorted(set(known) - linked):
        tree.err("release.yaml", "image_libraries lists %s, which no build links" % n)


def _sentence_ok(tree, where, shape, args):
    missing = [k for k in PLACEHOLDER.findall(shape)
               if k not in args and k not in ("project", "commit8")]
    if missing:
        tree.err(where, "the phrasebook sentence needs reason_args %s" % ", ".join(missing))


def _project(tree, proj):
    d, where = proj.data, os.path.join(proj.dir, "project.yaml")
    if d["project"] != proj.name:
        tree.err(where, "project is %r but the directory is %r" % (d["project"], proj.name))
    if d["oss_fuzz"]["path"] != "projects/" + proj.name:
        tree.err(where, "oss_fuzz.path must be projects/%s" % proj.name)
    status, reason = d["status"], d.get("reason")
    reasons = PB["projects"][status]["reasons"]
    if status == "available":
        if reason is not None or "reason_args" in d:
            tree.err(where, "an available project has no reason")
        for k in ("library", "harnesses", "build"):
            if k not in d:
                tree.err(where, "an available project needs %r" % k)
        published = any(h.builds() for h in proj.harnesses.values())
        if published and "assets" not in d:
            tree.err(where, "an available project with published binaries needs 'assets'")
        if not published and "assets" in d:
            tree.err(where, "'assets' with every binary withheld: there is nothing to attach")
    else:
        if reason not in reasons:
            tree.err(where, "reason %r is not a %s reason (%s)" % (reason, status, ", ".join(reasons)))
        else:
            _sentence_ok(tree, where, reasons[reason], d.get("reason_args") or {})
        for k in ("library", "patches", "assets", "build", "withheld"):
            if k in d:
                tree.err(where, "%r belongs to available projects only" % k)
        if proj.harnesses:
            tree.err(where, "a %s project has no harness directories" % status)
        if any(e["status"] == "included" for e in proj.entries()):
            tree.err(where, "a %s project includes no harness" % status)
    for f in (d.get("reason_args") or {}).get("features", []):
        if f not in PB["features"]:
            tree.err(where, "unknown feature %r" % f)
    seen, idents = set(), {}
    for e in proj.entries():
        n = e["name"]
        if n in seen:
            tree.err(where, "harness %r listed twice" % n)
        seen.add(n)
        idents.setdefault(names.ident(n), []).append(n)
        if n in names.RESERVED_HARNESS_NAMES:
            tree.err(where, "%r is a reserved name" % n)
        if (n == names.API_DRIVER) != (e.get("origin") == "this-repository"):
            tree.err(where, "%s: api-driver, and only api-driver, has origin this-repository" % n)
        if e["status"] == "included":
            if "reason" in e:
                tree.err(where, "%s: an included harness has no reason" % n)
            if n not in proj.harnesses:
                tree.err(where, "%s is included but projects/%s/%s/harness.yaml is missing" % (n, proj.name, n))
        else:
            r = e.get("reason")
            if r not in PB["harnesses"]:
                tree.err(where, "%s: reason %r is not a harness reason" % (n, r))
            else:
                _sentence_ok(tree, where + ": " + n, PB["harnesses"][r], e.get("reason_args") or {})
            if n in proj.harnesses:
                tree.err(where, "%s is not included but has a directory" % n)
    for ident, hs in idents.items():
        if len(hs) > 1:
            tree.err(where, "harnesses %s all map to the Rocq identifier %s" % (hs, ident))
    for h in proj.harnesses:
        if h not in seen:
            tree.err(where, "projects/%s/%s is not listed under harnesses" % (proj.name, h))
    ids = [p["id"] for p in d.get("patches", [])]
    if len(set(ids)) != len(ids):
        tree.err(where, "a patch id is listed twice")
    lib = d.get("library") or {}
    if lib and ("commit" in lib) == ("archive_sha256" in lib):
        tree.err(where, "library names exactly one of commit and archive_sha256")
    if "patch_count" in lib and lib["patch_count"] < len(ids):
        tree.err(where, "library.patch_count is less than the patches listed")
    wh = d.get("withheld")
    if wh is not None and not (wh.get("source_bundle") or wh.get("unpublished")):
        tree.err(where, "withheld names no reason: source_bundle or unpublished")
    if (wh or {}).get("unpublished") and "patch_count" in lib:
        tree.err(where, "a project with unpublished builds does not count its patches")
    # a binary is GPL or LGPL if its own expression, its library's or a library it links from the build image binds it
    copyleft = [h for h in proj.harnesses.values() if facts.copyleft(tree, h)]
    if any(h.builds() for h in copyleft) and "src" not in d.get("assets", {}):
        tree.err(where, "a GPL- or LGPL-licensed binary ships only with its source bundle (assets.src)")
    # the corresponding source is three files: the upstream trees (assets.src), where each goes (assets.src_manifest)
    # and the release's build recipe (release.yaml recipe)
    a = d.get("assets") or {}
    if ("src" in a) != ("src_manifest" in a):
        tree.err(where, "assets.src and assets.src_manifest go together: the trees and where each is laid down")
    if "src" in a and not (tree.release or {}).get("recipe"):
        tree.err(where, "assets.src ships with the release's build recipe, and release.yaml names none")
    for k, suffix in (("src", "-src.tar.zst"), ("src_manifest", "-src.MANIFEST.tsv")):
        if k in a and a[k]["file"] != proj.name + suffix:
            tree.err(where, "assets.%s.file must be %s%s" % (k, proj.name, suffix))
    if "src" in a and "src_manifest" in a and a["src"]["release"] != a["src_manifest"]["release"]:
        tree.err(where, "assets.src and assets.src_manifest are attached to different releases")
    # a source asset and the recipe are in one release, which may be a second one, v<release>-src, for the source
    # assets alone (a GitHub release holds at most 1,000 files); `oft fetch --release` lists the recipe with them
    recipe = (tree.release or {}).get("recipe")
    if "src" in a and recipe and a["src"]["release"] != recipe["release"]:
        tree.err(where, "assets.src is attached to %s and release.yaml's recipe to %s: a source asset ships with the "
                        "recipe, in one release" % (a["src"]["release"], recipe["release"]))
    if "bin" in a and a["bin"]["release"].endswith("-src"):
        tree.err(where, "assets.bin is attached to %s, a release of source assets" % a["bin"]["release"])
    if (wh or {}).get("source_bundle"):
        if "src" in d.get("assets", {}):
            tree.err(where, "withheld.source_bundle, but the source bundle is attached")
        if not any(r.get("withheld") == "source-bundle" for h in proj.harnesses.values()
                   for r in h.data["builds"].values()):
            tree.err(where, "withheld.source_bundle, but no binary waits for its source bundle")


def _harness(tree, h):
    d, where = h.data, os.path.join(h.dir, "harness.yaml")
    if d["project"] != h.project.name or d["harness"] != h.name:
        tree.err(where, "project/harness do not match the directory")
    if d["rocq"] != names.rocq_harness(h.project.name, h.name):
        tree.err(where, "rocq must be %s" % names.rocq_harness(h.project.name, h.name))
    if (d["origin"] == "this-repository") != (h.name == names.API_DRIVER):
        tree.err(where, "api-driver, and only api-driver, has origin this-repository")
    entry = [e for e in h.project.entries() if e["name"] == h.name]
    if entry and entry[0].get("origin", "oss-fuzz") != d["origin"]:
        tree.err(where, "origin differs from project.yaml")
    # sources: listed files exist, nothing unlisted, pending means none
    src = d["source"]
    held = src.get("pending")
    if held and src["files"]:
        tree.err(where, "a pending source lists no files")
    if not held and not src["files"]:
        tree.err(where, "source.files is empty")
    if held and d["checks"]:
        tree.err(where, "checks name lines of a source that is not published")
    lines = {}
    for f in src["files"]:
        p = h.tree.path(h.dir, f)
        if not os.path.isfile(p):
            tree.err(where, "source file %s is missing" % f)
        else:
            with open(p, "rb") as fh:
                lines[f] = fh.read().count(b"\n") + 1
    sdir = h.tree.path(h.dir, "source")
    if os.path.isdir(sdir):
        for dp, _, fs in os.walk(sdir):
            for f in fs:
                rel = os.path.relpath(os.path.join(dp, f), h.tree.path(h.dir))
                if rel not in src["files"]:
                    tree.err(where, "%s is not listed in source.files" % rel)
    for i, c in enumerate(d["checks"]):
        f, _, rng = c["where"].rpartition(":")
        if f not in lines and f not in src["files"]:
            tree.err(where, "checks[%d].where names %s, which is not a source file" % (i, f))
        elif f in lines and int(rng.split("-")[-1]) > lines[f]:
            tree.err(where, "checks[%d].where runs past the end of %s" % (i, f))
        if (c["stops_with"] == "exit") != ("exit_status" in c):
            tree.err(where, "checks[%d]: exit_status goes with stops_with: exit, and only there" % i)
    if ("commit" in d["library"]) == ("archive_sha256" in d["library"]):
        tree.err(where, "library names exactly one of commit and archive_sha256")
    for b, rec in d["builds"].items():
        if rec["file"] != names.build_file(h.name, b):
            tree.err(where, "builds.%s.file must be %s" % (b, names.build_file(h.name, b)))
    for f in d.get("model_gap", []):
        if f not in PB["features"]:
            tree.err(where, "unknown model_gap feature %r" % f)
    for b, rec in d["builds"].items():
        if not rec.get("withheld") and not all(k in rec for k in ("bytes", "sha256", "segments")):
            tree.err(where, "builds.%s: a published build has bytes, sha256 and segments" % b)
        un = rec.get("uninstrumented") or []
        if un and rec.get("withheld"):
            tree.err(where, "builds.%s: a withheld build shows no detail, so no uninstrumented list" % b)
        seen = set()
        for i, u in enumerate(un):
            k = (u["name"], u["kind"], u.get("source"), u.get("sha256"))
            if k in seen:
                tree.err(where, "builds.%s.uninstrumented[%d]: %s listed twice" % (b, i, u["name"]))
            seen.add(k)
            if u["kind"] in ("assembly", "fortran") and "source" not in u:
                tree.err(where, "builds.%s.uninstrumented[%d]: a library member names its source file" % (b, i))
    if ("distribution" in d) != os.path.isfile(h.tree.path(h.dir, "Distribution.v")):
        tree.err(where, "Distribution.v exists exactly when distribution is given")
    _distribution(tree, h, where)
    for st in h.statements.values():
        _statement(tree, h, st, where)
    kinds = {(s.kind, tuple(s.data["builds"])) for s in h.statements.values()}
    for s in h.statements.values():
        if s.kind in ("bound", "decidability") and ("agreement", tuple(s.data["builds"])) not in kinds:
            tree.err(where, "%s: a bound or decidability statement goes with its pair's agreement statement"
                     % s.name)


def _bytes_def(body, name, _depth=0):
    """The bytes of `Definition name : list byte := [...]`, of the same list
    under List.nodup (the alphabet), or of a concatenation of such definitions
    (a long header in chunks); None if the body has no such definition."""
    m = re.search(r"Definition %s : [\w.]+(?: [\w.]+)? :=\s*(?:List\.nodup \(fun x y => decide \(x = y\)\)\s*)?"
                  r"\[(.*?)\]\s*\." % name, body, re.S)
    if m:
        return bytes(int(x) for x in re.findall(r"Z_to_bv 8 (\d+)", m.group(1)))
    m = re.search(r"Definition %s : list byte :=\s*([()\w\s+]*?)(?:%%list)?\s*\.\s" % name, body, re.S)
    if not m or _depth > 2:
        return None
    parts = re.findall(r"\w+", m.group(1))
    got = [_bytes_def(body, p, _depth + 1) for p in parts]
    if not parts or any(g is None for g in got) or "++" not in m.group(1):
        return None
    return b"".join(got)


def _q_def(body, name):
    m = re.search(r"Definition %s : Q :=\s*\(?\s*(\d+)\s*#\s*(\d+)\s*\)?(?:%%Q)?\s*\." % name, body)
    return Fraction(int(m.group(1)), int(m.group(2))) if m else None


def _distribution(tree, h, where):
    """The header says what the body is: each typed field is compared with the
    definition in the body it describes, so the prose cannot drift from the
    Rocq (a second reading of the same distribution, not a copy of it)."""
    d = h.data.get("distribution")
    body = h.distribution_body()
    if d is None or body is None:
        return
    w = where + ": distribution"
    frac = lambda s: Fraction(*schema.fraction_value(s))
    if ("prefix_hex" in d) == ("prefix" in d):
        return tree.err(w, "exactly one of prefix_hex and prefix")
    hdr = _bytes_def(body, "hdr")
    if "prefix" in d:
        hdr_fact = hdr and (len(hdr), hashlib.sha256(hdr).hexdigest())
        hdr_want = (d["prefix"]["bytes"], d["prefix"]["sha256"])
    else:
        hdr_fact, hdr_want = hdr, bytes.fromhex(d["prefix_hex"])
    expect = [("prog", _bytes_def(body, "prog"), d["argv0"].encode()),
              ("path", _bytes_def(body, "path"), d["input_file"].encode()),
              ("hdr", hdr_fact, hdr_want),
              ("p", _q_def(body, "p"), frac(d["payload"]["p"])),
              ("m_payload", _q_def(body, "m_payload"), frac(d["components"]["payload"])),
              ("m_missing_file", _q_def(body, "m_missing_file"), frac(d["components"]["missing_file"])),
              ("m_base", _q_def(body, "m_base"), frac(d["components"]["full_support"])),
              ("M", _q_def(body, "M"), frac(d["mass"]))]
    each = _q_def(body, "m_argv_arity_each")
    expect.append(("m_argv_arity_each", each and each * body.count("m_argv_arity_each)"),
                   frac(d["components"]["wrong_argc"])))
    if "envp" in d["components"]:
        each = _q_def(body, "m_envp_each")
        expect.append(("m_envp_each", each and each * body.count("m_envp_each)"), frac(d["components"]["envp"])))
    alpha = _bytes_def(body, "alpha")
    if d["payload"]["alphabet"] == "bytes":
        expect.append(("alpha", alpha is None, True))
    else:
        expect.append(("alpha", alpha and len(alpha), d["payload"].get("alphabet_size")))
    for name, got, want in expect:
        if got is None:
            tree.err(w, "the body has no Definition %s to check the header against" % name)
        elif got != want:
            tree.err(w, "the header says %r but the body's %s is %r" % (want, name, got))
    p = frac(d["payload"]["p"])
    if p and d["payload"]["mean_bytes"] != round((1 - p) / p):
        tree.err(w, "mean_bytes is %d but p = %s gives %d" % (d["payload"]["mean_bytes"], p, round((1 - p) / p)))


def _statement(tree, h, st, where):
    d, w = st.data, "%s: statements.%s" % (where, st.name)
    try:
        expect = names.statement_name(d["kind"], d["builds"], d["reading"])
    except (KeyError, IndexError):
        return tree.err(w, "unknown builds %r" % (d["builds"],))
    if st.name != expect:
        tree.err(w, "its fields give the name %s" % expect)
    for b in d["builds"]:
        if b not in h.data["builds"]:
            tree.err(w, "names build %s, which harness.yaml does not list" % b)
    try:
        shapes.term(d)
        if "shape" in d and d["shape"] != shapes.shape_name(d):
            tree.err(w, "shape is %s, but its fields give %s" % (d["shape"], shapes.shape_name(d)))
        if "env" in d and d["env"] != shapes.READING_ENV[d["reading"]]:
            tree.err(w, "env is %s, but reading %s gives %s" % (d["env"], d["reading"], shapes.READING_ENV[d["reading"]]))
    except shapes.ShapeError as e:
        tree.err(w, str(e))
    if d["kind"] == "halts" and "exits" not in d:
        tree.err(w, "a halts statement names its exits")
    if d["kind"] == "bound" and "distribution" not in h.data:
        tree.err(w, "a bound statement needs the harness's distribution")
    if d["kind"] != "halts" and "binds_checks" in d:
        tree.err(w, "binds_checks is for halts statements")
    if "binds_checks" in d:
        computed = any(shapes.binds(c, d) for c in h.data["checks"])
        if d["binds_checks"] != computed:
            tree.err(w, "binds_checks is %s, but the checks give %s" % (d["binds_checks"], computed))
    status = d["status"]
    need = {"suspected-false": {"basis", "reason"}, "withdrawn": {"reason"}, "witnessed-false": {"witness"},
            "withheld": {"withheld"}}.get(status, set())
    allowed = need | ({"gap"} if status == "model-gap" else set())
    for k in ("basis", "reason", "witness", "withheld", "gap"):
        if k in need and k not in d:
            tree.err(w, "a %s statement needs %r" % (status, k))
        if k in d and k not in allowed:
            tree.err(w, "%r does not go with status %s" % (k, status))
    if h.data.get("model_gap") and status not in ("model-gap", "withheld", "withdrawn"):
        tree.err(w, "the harness has a model gap, so every statement is model-gap")
    if h.data.get("model_gap") and "gap" in d:
        tree.err(w, "gap is for a statement whose harness has no model_gap")
    if status == "model-gap" and not h.data.get("model_gap") and not d.get("gap"):
        tree.err(w, "model-gap needs the harness's model_gap features or the statement's gap")
    for f in d.get("gap", []):
        if f not in PB["features"]:
            tree.err(w, "unknown gap feature %r" % f)
    held = {h.data["builds"].get(b, {}).get("withheld") for b in d["builds"]} - {None}
    if held and status not in ("withheld", "withdrawn"):
        tree.err(w, "names a withheld build, so it is withheld too")
    if held and status == "withheld" and d.get("withheld") not in held:
        tree.err(w, "withheld for %s, but its build is withheld for %s" % (d.get("withheld"), ", ".join(sorted(held))))
    wt = d.get("witness")
    if wt is not None:
        if wt["build"] not in d["builds"]:
            tree.err(w, "the witness ran build %s, which the statement does not name" % wt["build"])
        elif h.data["builds"].get(wt["build"], {}).get("withheld"):
            tree.err(w, "the witness ran a withheld build")
        if ("input_hex" in wt) == ("input" in wt):
            tree.err(w, "a witness gives exactly one of input_hex and input")
        if (wt["outcome"] == "exit") != ("exit" in wt):
            tree.err(w, "a witness gives an exit status exactly when it ends in an exit")
        if wt["outcome"] == "exit":
            # an exit refutes a halts statement that does not allow its status; an agreement is about two builds,
            # which one build's exit cannot show differ
            if d["kind"] != "halts":
                tree.err(w, "a witness that ends in an exit refutes only a halts statement")
            elif d.get("exits") == "any" or wt.get("exit") in (d.get("exits") or []):
                tree.err(w, "the witness exits with status %s, which the statement allows" % wt.get("exit"))
            if "after" in wt:
                tree.err(w, "`after` is for a witness that ends in a signal")


def _proof(tree, sid, pd):
    st = next((s for s in tree.statements() if s.id == sid), None)
    if st is None:
        return
    y = os.path.join(pd.path, "proof.yaml")
    if st.kind == "bound" and not pd.refutes and "bound" not in pd.data:
        tree.err(y, "a bound proof names its bound")
    if st.kind != "bound" and "bound" in pd.data:
        tree.err(y, "only a bound proof names a bound")
    if st.fingerprint and pd.data["fingerprint"] != st.fingerprint:
        tree.err(y, "fingerprint differs from the statement's current one (%s): re-check the proof"
                 % st.fingerprint)


def _counterexample(tree, sid, cx):
    st = next((s for s in tree.statements() if s.id == sid), None)
    if st is None:
        return
    y = os.path.join(cx.path, "expect.yaml")
    if st.kind != "halts":
        tree.err(y, "counterexamples are for halts statements")
        return
    obs = cx.data["observed"]
    if obs["build"] != st.data["builds"][0]:
        tree.err(y, "observed.build must be the statement's build")
    ex = st.data.get("exits", "any")
    if "signal" not in obs and (ex == "any" or obs["exit"] in ex):
        tree.err(y, "the observed exit %d is allowed by the statement: this is not a counterexample" % obs["exit"])
    if ex != "any" and cx.data["control"]["exit"] not in ex:
        tree.err(y, "the control input must exit with an allowed status")


