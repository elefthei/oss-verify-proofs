"""oft lint: the rules that keep this repository what it says it is.

    paths         every path has exactly one owner (tools/oft/paths.py), a pull
                  request changes only what its kind of pull request may change,
                  and no derived file, binary, LFS pointer or link is stored
    schema        closed schemas and the rules between facts (schema.py, rules.py)
    private-data  no host paths, private network addresses, internal host names,
                  e-mail addresses, private keys or access tokens in what this
                  repository wrote
    links         links point only where they may
    free-text     every free-text field has a place in the rendering
    proofs        no axioms, admits, plugins, file effects or wall-clock limits in proofs/
    withheld      a withheld item shows no detail anywhere

Every rule fails when it examined nothing.  `run` returns the findings; the
command exits 1 if there is any.
"""
import bisect
import hashlib
import os
import re
import subprocess

from . import facts, names, paths, rules, yamlio

HERE = os.path.dirname(os.path.abspath(__file__))

MAX_BYTES = 5 << 20
CAPS = [  # (pattern, bytes)
    ("index/*.tsv", 64 << 20),
    ("projects/*/*/source/**", 256 << 10),
    ("counterexamples/**", 64 << 10),
    ("proofs/*/*/*/classifier/**", 1 << 20),
]
PROOF_DIR_CAP = 5 << 20
DERIVED_SUFFIXES = (".vo", ".vos", ".vok", ".glob", ".aux", ".hex", ".cache", ".pyc", ".pyo")
LFS_POINTER = b"version https://git-lfs.github.com/spec/v1"


class Finding:
    def __init__(self, rule, where, msg, key=None):
        self.rule, self.where, self.msg, self.key = rule, where, msg, key

    def __str__(self):
        return "%s %s: %s%s" % (self.rule, self.where, self.msg, " (key %s)" % self.key if self.key else "")


# ---------------------------------------------------------------- the files

def walk(root):
    """Every file that could be committed, as relative paths: in a git
    checkout, the tracked files and the untracked ones .gitignore does not
    exclude; elsewhere, every file outside _build/ and projects/*/bin/."""
    if os.path.isdir(os.path.join(root, ".git")):
        r = subprocess.run(["git", "-C", root, "ls-files", "-z", "--cached", "--others", "--exclude-standard"],
                           capture_output=True, check=True)
        return sorted(p for p in r.stdout.decode().split("\0")
                      if p and not paths.ignored(p) and os.path.lexists(os.path.join(root, p)))
    out = []
    for dp, dns, fns in os.walk(root):
        rel_dir = os.path.relpath(dp, root)
        keep = []
        for d in sorted(dns):
            rel = os.path.normpath(os.path.join(rel_dir, d))
            if not paths.ignored(rel):
                keep.append(d)
        dns[:] = keep
        for f in sorted(fns):
            rel = os.path.normpath(os.path.join(rel_dir, f))
            if not paths.ignored(rel):
                out.append(rel)
    return out


def read_text(path):
    """The file's text, or None if it is binary."""
    with open(path, "rb") as f:
        data = f.read()
    if b"\0" in data[:8192]:
        return None
    try:
        return data.decode("utf-8")
    except UnicodeDecodeError:
        return None


# Verbatim copies of files from elsewhere, pinned by content: the licence texts and the notice that came with the proofs
# made from a bundle under Apache-2.0 OR MIT.  A changed byte makes any of them ordinary text, held to every rule.
PINNED_VERBATIM = {
    "LICENSES/anthropic-proofs-LICENSE": "cfc7749b96f63bd31c3c42b5c471bf756814053e847c10f3eb003417bc523d30",
    "LICENSES/anthropic-proofs-LICENSE-MIT": "2e6105c36a95f04adbc36000b7b1ce65544385e27f8febb1b2f53b61fdb62bca",
    "LICENSES/anthropic-proofs-NOTICE": "f4cbf47ffed57359084432af1ca4b22347ecb995fcf7a2e4e346f180d2e5001d",
}


def verbatim(rel, text=None):
    """Bytes that ship as they are: the jargon and link rules do not apply.  Upstream copies (a harness's source/, the
    licence texts of a build record), the slice of the release's recipe a build record carries, and the files of
    PINNED_VERBATIM when text is their pinned content.  The API driver's source is this repository's own text, so it
    is held to them."""
    if rel in PINNED_VERBATIM:
        return text is not None and hashlib.sha256(text.encode()).hexdigest() == PINNED_VERBATIM[rel]
    return bool(re.match(r"projects/[^/]+/(?!api-driver/)[^/]+/source/", rel)
                or re.match(r"proofs/[^/]+/[^/]+/provenance/(LICENSES|recipe)/", rel))


# ------------------------------------------------------------- private-data

# /home/opam/ is the home of the user of the official OCaml/opam container
# images that toolchain/*.Dockerfile builds on; it names no host.
HOST_PATH = re.compile(r"(?<![\w.~-])/(?:data|home(?!/opam\b)|srv|Users|root|mnt/disks)/[\w.@+-]+")
PRIVATE_IP = re.compile(r"(?<![\d.])(?:10\.\d{1,3}|172\.(?:1[6-9]|2\d|3[01])|192\.168|169\.254)\.\d{1,3}\.\d{1,3}(?![\d.])")
INTERNAL_HOST = re.compile(r"\b[a-z0-9-]+(?:\.[a-z0-9-]+)*\.(?:internal|local|corp|lan)\b")
EMAIL = re.compile(r"\b[A-Za-z0-9._%+-]+@[A-Za-z0-9-]+(?:\.[A-Za-z0-9-]+)*\.[A-Za-z]{2,}\b")
EMAIL_OK = re.compile(r"@users\.noreply\.github\.com$|^noreply@github\.com$")
PRIVATE_KEY = re.compile(r"-----BEGIN (?:[A-Z]+ )*PRIVATE KEY-----")
TOKEN = re.compile(r"\b(?:gh[pousr]_[A-Za-z0-9]{36,}|github_pat_[A-Za-z0-9_]{22,}|AKIA[0-9A-Z]{16}"
                   r"|xox[abprs]-[A-Za-z0-9-]{10,}|AIza[0-9A-Za-z_-]{35}|ya29\.[0-9A-Za-z_-]{20,})")


def _key(text):
    return hashlib.sha256(text.encode()).hexdigest()[:16]


def scan_shapes(text, where, source=False, email_text=None):
    """private-data.  Upstream copies (source=True) keep their authors'
    addresses and their own example addresses, so there only paths, keys and
    tokens count.  email_text, when given, is the text the e-mail check reads
    instead: a proof's .v file with its string literals blanked, because an
    encoded payload holds random runs of an address's shape.  Paths, keys and
    tokens are still searched inside those strings."""
    out = []
    rx = [("a host path", HOST_PATH), ("a private key", PRIVATE_KEY), ("an access token", TOKEN)]
    if not source:
        rx += [("a private address", PRIVATE_IP), ("an internal host name", INTERNAL_HOST)]
    for no, line in enumerate(text.split("\n"), 1):
        for what, r in rx:
            for m in r.finditer(line):
                out.append(Finding("private-data", "%s:%d" % (where, no), what, key=_key(m.group())))
    if not source:
        for no, line in enumerate((text if email_text is None else email_text).split("\n"), 1):
            for m in EMAIL.finditer(line):
                if not EMAIL_OK.search(m.group()):
                    out.append(Finding("private-data", "%s:%d" % (where, no), "an e-mail address", key=_key(m.group())))
    return out


# -------------------------------------------------------------------- links

PUBLIC_REPOS = ("oss-verify", "oss-verify-proofs", "rocq-linux-process-semantics", "rocq-read-file", "static-asan")
FIXED_URLS = ("https://github.com/google/oss-fuzz", "https://google.github.io/oss-fuzz",
              "https://rocq-prover.org", "https://github.com/rocq-prover/", "https://reuse.software",
              "https://spdx.org/", "https://www.qemu.org", "https://opam.ocaml.org")
URL = re.compile(r"\b[a-z][a-z0-9+.-]*://[^\s<>()\[\]\"'`|]+")
GHCR = re.compile(r"\bghcr\.io/theorem-labs/([a-z0-9._-]+)")
# The dated snapshots of the Debian archive the runner image installs from
# (toolchain/runner.Dockerfile).  apt reads the archive over http, as Debian's
# own images do, and checks every index against the archive's signing key.
DEBIAN_SNAPSHOT = ("http://snapshot.debian.org/archive/debian/", "https://snapshot.debian.org/")


def fact_urls(tree):
    out = set()

    def visit(v):
        if isinstance(v, dict):
            for x in v.values():
                visit(x)
        elif isinstance(v, list):
            for x in v:
                visit(x)
        elif isinstance(v, str) and v.startswith("https://"):
            out.add(v.rstrip("/"))

    for p in tree.projects.values():
        visit(p.data)
        for h in p.harnesses.values():
            visit(h.data)
    return out


def url_ok(url, known, strict=True):
    """A link to theorem-labs must name a public repository.  In rendered
    text, docs and facts (strict), any other link must also be https and be
    one of ours, OSS-Fuzz's, or a URL the facts themselves record."""
    url = url.rstrip(".,;:)]}'\"")
    m = re.match(r"https?://github\.com/theorem-labs/([^/#?]+)", url)
    if m:
        return m.group(1).removesuffix(".git") in PUBLIC_REPOS
    if not strict:
        return True
    if url.startswith(DEBIAN_SNAPSHOT):
        return True
    if not url.startswith("https://"):
        return False
    if any(url.startswith(f) for f in FIXED_URLS):
        return True
    return any(url == k or url.startswith(k + "/") or url.startswith(k + "#") for k in known)


def link_strict(rel):
    """Rendered text, docs and facts: everything but the tools, the tests and
    the workflows, whose links are code, not content."""
    return not rel.startswith(("tools/", "tests/", ".github/"))


def scan_links(text, where, known, strict=True):
    out = []
    for no, line in enumerate(text.split("\n"), 1):
        for m in URL.finditer(line):
            if not url_ok(m.group(), known, strict):
                out.append(Finding("links", "%s:%d" % (where, no), "a link that is not on the allowlist: %s" % m.group()))
        for m in GHCR.finditer(line):
            if not m.group(1).startswith("oss-fuzz-theorems-"):
                out.append(Finding("links", "%s:%d" % (where, no), "an image that is not one of ours: %s" % m.group()))
    return out


# ------------------------------------------------------------------- proofs

FORBIDDEN_IN_PROOFS = re.compile(
    r"\b(?:Axiom|Axioms|Parameter|Parameters|Conjecture|Admitted|admit|give_up|Declare\s+ML\s+Module"
    r"|Redirect|Add\s+(?:Rec\s+)?LoadPath|Add\s+ML\s+Path|(?:Separate\s+|Recursive\s+)?Extraction"
    r"|Unset\s+(?:\w+\s+)*Checking|bypass_check)\b"
    r"|\bPrimitive\s+\w+\s*:"                      # a primitive declaration, not Set Primitive Projections
    r"|\bRegister\s+(?:Inline\s+)?[\w.]+\s+as\b")
# Load and Cd are commands only where a sentence starts (the file's start, or after a `.` and white space); elsewhere
# they are ordinary names, such as the model's instruction constructor `Load`.
FORBIDDEN_COMMANDS = re.compile(r"(?:\A|(?<=\.)(?=\s))\s*\b(Load|Cd)\b")
# A wall-clock limit can fail a proof on a loaded machine, so a proof states none: no `Set Default Timeout <n>.`, no
# `Timeout <n>` command prefix, and no `timeout <n>` tactical whose expiry can fail its sentence. timeout_caught()
# decides, from Rocq's Ltac grammar: try, repeat and assert_fails catch, and so do a first/solve arm that is not the
# last, the left side of || and of +, the tryif condition, a match branch that a later branch or a hypothesis pattern
# backs up, and a Fail sentence; progress, once, do, timeout, time, abstract, the last arm, lazymatch, a [ | ]
# dispatch, by (...) and ltac:(...) pass a failure on, and `try a; b` covers only a. TIMEOUT_OK names the Ltac
# definitions, by file, every one of whose callers catches a failure that reaches the top of the definition.
LTAC_TIMEOUT = re.compile(r"(?<![A-Za-z0-9_'.])timeout\s+([0-9]+)\b")
DEFAULT_TIMEOUT = re.compile(r"Set\s+Default\s+Timeout\s+([0-9]+)")
TIMEOUT_COMMAND = re.compile(r"(?<![A-Za-z0-9_'.])Timeout\s+([0-9]+)\s+(?![0-9])")
TIMEOUT_OK = {
    "proofs/json-c/json_object_fuzzer/lib/QRBl.v": ("ub_cmp_auto",),
    "proofs/mbedtls/fuzz_pkcs7/lib/LXP/LxPHeap.v": ("lxp_lb_incl",),
    "proofs/mbedtls/fuzz_pkcs7/lib/LXP/LxPTac.v": ("lxp_lia_fast",),
    "proofs/speex/speex_decode_fuzzer_float/lib/Lib/X1c4.v": ("lean_core", "lean_tier", "os_tier"),
    "proofs/speex/speex_decode_fuzzer_float/lib/LibA/X1d5.v": ("olia_os",),
    "proofs/varnish/esi_parse_fuzzer/lib/DU_Dir.v": ("hot2_mid",),
    "proofs/varnish/esi_parse_fuzzer/lib/DU_Mz0p.v": ("hot2_mid",),
    "proofs/varnish/esi_parse_fuzzer/lib/D_Dir.v": ("hot2_mid",),
    "proofs/varnish/esi_parse_fuzzer/lib/D_Mah0u.v": ("hot2_mid",),
    "proofs/varnish/esi_parse_fuzzer/lib/E_As0ui.v": ("hot2_mid",),
}
_LTAC_TOKEN = re.compile(r'"[^"]*(?:""[^"]*)*"|\[>|\|\||\|-|=>|::=|:=|[A-Za-z_][A-Za-z0-9_\']*(?:\.[A-Za-z_][A-Za-z0-9_\']*)*'
                         r"|[0-9]+|\S")
_OPEN, _CLOSE, _MATCH = {"(", "[", "[>", "{"}, {")", "]", "}"}, {"match", "lazymatch", "multimatch"}
_CATCH = {"try": "try", "repeat": "repeat", "assert_fails": "assert_fails"}
_PASS = {"once", "exactly_once", "abstract", "time", "assert_succeeds", "unshelve", "timeout", "do"}
_BULLET, _EMBED = {"-", "+", "*", "{", "}"}, {"ltac", "constr", "open_constr", "uconstr"}
_STOP = {";", "|", "||", "+", "then", "else", "end", "=>"}


def _opens(x):
    return x in _OPEN or x in _MATCH


def _closes(x):
    return x in _CLOSE or x == "end"


def _closer(t, o, e):
    depth = 0
    for k in range(o, e):
        if _opens(t[k]):
            depth += 1
        elif _closes(t[k]):
            depth -= 1
            if depth == 0:
                return k
    return e


def _level(t, lo, hi):
    """Indices of the tokens of [lo, hi) at depth 0; a nested frame shows as its opener and closer."""
    out, depth = [], 0
    for k in range(lo, hi):
        if _closes(t[k]) and depth:
            depth -= 1
        if depth == 0:
            out.append(k)
        if _opens(t[k]):
            depth += 1
    return out


def _sentence_header(t, s, e):
    """The sentence's kind, ("ltac", name) | ("fail",) | ("other",), and where its tactic text starts."""
    while s < e and t[s] in _BULLET:
        s += 1
    j = s
    while j < e and (t[j].isdigit() or t[j] in (",", "-", "all", "par")):
        j += 1
    if s < j < e and t[j] == ":":
        s = j + 1
    k, fail = s, False
    while k < e:
        if t[k] == "Fail":
            fail, k = True, k + 1
        elif t[k] in ("Succeed", "Time"):
            k += 1
        elif t[k] in ("Timeout", "Redirect") and k + 1 < e:
            k += 2
        else:
            break
    if fail:
        return ("fail",), k
    if k + 1 < e and t[k] == "#" and t[k + 1] == "[":
        k = _closer(t, k + 1, e) + 1
    while k < e and t[k] in ("Local", "Global", "Export"):
        k += 1
    if k + 1 < e and t[k] in ("Ltac", "Ltac2"):
        return ("ltac", t[k + 1]), k + 2
    if k + 1 < e and t[k] == "Tactic" and t[k + 1] == "Notation":
        return ("other",), k + 2
    if k < e and t[k] == "Hint":
        return ("other",), k + 1
    return ("other",), k


def timeout_caught(t, s, e, i):
    """For the failure of the expression at token i of the sentence [s, e) of tokens t: (caught, top), top being the
    sentence kind (see _sentence_header) that an uncaught failure reaches."""
    top, hs = _sentence_header(t, s, e)
    stack = []
    for k in range(hs, i):
        if _opens(t[k]):
            stack.append(k)
        elif _closes(t[k]) and stack:
            stack.pop()
    lv0 = _level(t, stack[-1] + 1, _closer(t, stack[-1], e)) if stack else _level(t, hs, e)
    ends = [k for k in lv0 if k > i and t[k] in _STOP - {"||", "+"}]
    lo_a, hi_a = i, (ends[0] - 1 if ends else max([k for k in lv0 if k >= i] or [i]))
    pending = None   # a catch at an inner level, which an outer progress undoes
    for d in range(len(stack), -1, -1):
        o = stack[d - 1] if d else None
        lv = _level(t, o + 1, _closer(t, o, e)) if d else _level(t, hs, e)
        nxt = next((k for k in lv if k > hi_a and t[k] in _STOP), None)
        if nxt is not None and t[nxt] in ("||", "+"):
            return True, top
        before = [k for k in lv if k < lo_a]
        if next((t[k] for k in reversed(before) if t[k] in ("tryif", "then", "else")), None) == "tryif":
            return True, top
        state, j = None, len(before) - 1
        while j >= 0:
            x = t[before[j]]
            if x.isdigit() and j and t[before[j - 1]] in ("timeout", "do"):
                j -= 1
            elif x.startswith('"') and j and t[before[j - 1]] == "time":
                j -= 1
            elif x in _CATCH:
                state = state or _CATCH[x]
            elif x == "progress":
                state = pending = None
            elif x not in _PASS:
                break
            j -= 1
        rest = before[:j + 1]
        if state:
            if rest or any(k > hi_a for k in lv) or pending:
                return True, top
            pending = state
        elif pending and (rest or any(k > hi_a for k in lv)):
            return True, top
        if not d:
            break
        x = t[o]
        outer = _level(t, stack[d - 2] + 1, _closer(t, stack[d - 2], e)) if d > 1 else _level(t, hs, e)
        pre = [k for k in outer if k < o]
        lo_next = o
        if x in ("[", "[>") and pre and t[pre[-1]] in ("first", "solve"):
            if any(t[k] == "|" for k in lv if k > hi_a):
                return True, top
            lo_next = pre[-1]
        elif x == "(" and len(pre) >= 2 and t[pre[-1]] == ":" and t[pre[-2]] in _EMBED:
            lo_next = pre[-2]
        elif x in ("match", "multimatch"):
            marks = [k for k in before if t[k] in ("=>", "|", "with")]
            if marks and t[marks[-1]] == "=>":
                pat = [t[k] for k in lv if marks[-2] < k < marks[-1]] if len(marks) > 1 else []
                if any(t[k] == "|" for k in lv if k > hi_a) or ("|-" in pat and ":" in pat[:pat.index("|-")]):
                    return True, top
        lo_a, hi_a = lo_next, _closer(t, o, e)
    return bool(pending) or top == ("fail",), top


def timeout_violations(code, where):
    """(start, end, form, n) of each wall-clock limit lint refuses in the comment-free `code` of file `where`."""
    out = []
    found = list(LTAC_TIMEOUT.finditer(code))
    if found:
        toks, offs, ends = [], [], []
        for m in _LTAC_TOKEN.finditer(code):
            if m.group(0) == "." and code[m.end():m.end() + 1] in (" ", "\n", "\t", ""):
                ends.append(len(toks))
            toks.append(m.group(0))
            offs.append(m.start())
        at = {o: k for k, o in enumerate(offs)}
        for m in found:
            k = at[m.start()]
            n = bisect.bisect_left(ends, k)
            caught, top = timeout_caught(toks, ends[n - 1] + 1 if n else 0, ends[n] if n < len(ends) else len(toks), k)
            if not (caught or top[0] == "ltac" and top[1] in TIMEOUT_OK.get(where, ())):
                out.append((m.start(), m.end(1), "timeout", m.group(1)))
    for m in DEFAULT_TIMEOUT.finditer(code):
        end = re.compile(r"\.(?=\s|$)").search(code, m.end())
        out.append((m.start(), end.end() if end else m.end(), "Set Default Timeout", m.group(1)))
    for m in TIMEOUT_COMMAND.finditer(code):
        if not re.search(r"Default\s*$", code[max(0, m.start() - 40):m.start()]):
            out.append((m.start(), m.end(1), "Timeout", m.group(1)))
    return sorted(out)


def scan_timeouts(code, where):
    return [Finding("proofs", "%s:%d" % (where, code.count("\n", 0, s) + 1),
                    "'%s %s' is not allowed in a proof: a wall-clock limit can fail it on a loaded machine%s"
                    % (form, n, " (nothing catches its expiry)" if form == "timeout" else ""))
            for s, e, form, n in timeout_violations(code, where)]


def strip_rocq(text, comments=True):
    """Text with string literals blanked, and comments (nested) too unless comments=False; lines kept."""
    out, i, depth, n = [], 0, 0, len(text)
    while i < n:
        if text.startswith("(*", i):
            depth += 1
            out.append("  " if comments else "(*")
            i += 2
        elif depth and text.startswith("*)", i):
            depth -= 1
            out.append("  " if comments else "*)")
            i += 2
        elif text[i] == '"':
            j = i + 1
            while j < n:
                if text[j] == '"':
                    if text.startswith('""', j):
                        j += 2
                        continue
                    break
                j += 1
            out.append(re.sub(r"[^\n]", " ", text[i:j + 1]))
            i = j + 1
        else:
            out.append(text[i] if (not depth or not comments or text[i] == "\n") else " ")
            i += 1
    return "".join(out)


def scan_proof(text, where):
    out = []
    stripped = strip_rocq(text)
    for no, line in enumerate(stripped.split("\n"), 1):
        for m in FORBIDDEN_IN_PROOFS.finditer(line):
            out.append(Finding("proofs", "%s:%d" % (where, no), "%r is not allowed in a proof" % m.group()))
    for m in FORBIDDEN_COMMANDS.finditer(stripped):
        no = stripped.count("\n", 0, m.start(1)) + 1
        out.append(Finding("proofs", "%s:%d" % (where, no), "%r is not allowed in a proof" % m.group(1)))
    if "imeout" in stripped:
        out += scan_timeouts(stripped, where)
    return out


# --------------------------------------------------------- paths, withheld

def check_paths(tree, files):
    out = []
    for rel in files:
        m = paths.classify(rel)
        if len(m) != 1:
            out.append(Finding("paths", rel, "matches no path pattern" if not m else
                               "matches %d path patterns: %s" % (len(m), [x[1] for x in m])))
            continue
        cls, pat, b = m[0]
        p = b.get("project")
        if p is not None and p not in tree.projects:
            out.append(Finding("paths", rel, "no project %r" % p))
            continue
        h = b.get("harness")
        if h is not None:
            proj = tree.projects[p]
            if h not in proj.harnesses:
                out.append(Finding("paths", rel, "no included harness %r in %s" % (h, p)))
                continue
            s = b.get("statement")
            if s is not None and s not in proj.harnesses[h].statements:
                out.append(Finding("paths", rel, "no statement %r" % s))
        if pat.endswith(".opam") and os.path.basename(rel) != names.opam_package(p) + ".opam":
            out.append(Finding("paths", rel, "the opam file of %s is %s.opam" % (p, names.opam_package(p))))
        full = tree.path(rel)
        if os.path.islink(full):
            out.append(Finding("paths", rel, "a symbolic link"))
            continue
        size = os.path.getsize(full)
        cap = next((c for pt, c in CAPS if paths._match(pt.split("/"), rel.split("/"), {})), MAX_BYTES)
        if size > cap:
            out.append(Finding("paths", rel, "%d bytes, over the %d-byte cap" % (size, cap)))
        if rel.endswith(DERIVED_SUFFIXES) or "__pycache__" in rel.split("/"):
            out.append(Finding("paths", rel, "a derived file (.vo, .hex, .pyc, ...): these are never stored"))
        with open(full, "rb") as f:
            head = f.read(64)
        if head.startswith(b"\x7fELF") and "/classifier/" not in rel:
            out.append(Finding("paths", rel, "an ELF file: binaries are release assets, not files in git"))
        if head.startswith(LFS_POINTER):
            out.append(Finding("paths", rel, "a Git LFS pointer"))
        if rel == ".gitattributes" and "filter=lfs" in facts.read(full):
            out.append(Finding("paths", rel, "an LFS filter"))
    for rel in files:
        if tree.projects and rel.startswith("notes/") and rel[len("notes/"):-len(".md")] not in tree.projects:
            out.append(Finding("paths", rel, "notes for a project this release does not list"))
    for sid, pd in tree.proofs.items():
        total = sum(os.path.getsize(os.path.join(dp, f)) for dp, _, fs in os.walk(tree.path(pd.path)) for f in fs)
        if total > PROOF_DIR_CAP:
            out.append(Finding("paths", pd.path, "%d bytes of proof, over the %d-byte cap" % (total, PROOF_DIR_CAP)))
    for proj in tree.projects.values():
        if not os.path.isfile(tree.path(proj.dir, "README.md")):
            out.append(Finding("paths", proj.dir, "no README.md (run ./oft generate)"))
    return out


def check_changes(tree, changed, kind):
    """The pull-request half of `paths`.  kind: release | maintainer | contributor."""
    out = []
    for rel in changed:
        m = paths.classify(rel)
        cls = m[0][0] if len(m) == 1 else None
        if cls == "facts" and kind != "release":
            out.append(Finding("paths", rel, "an exported fact: only a release pull request changes it"))
        if kind == "contributor" and cls not in ("contrib", "gen") and not rel.startswith("docs/"):
            out.append(Finding("paths", rel, "outside proofs/, counterexamples/, docs/ and generated files"))
        if kind != "release" and (rel.startswith("theories/") or rel.startswith("toolchain/")):
            out.append(Finding("paths", rel, "changes every statement: only a release pull request changes it"))
    return out


WITHHELD_FLAG = {"source-bundle": "source_bundle", "not-yet-published": "unpublished"}
BUILD_DETAIL = ("bytes", "sha256", "segments")


def check_disclosure(tree):
    """withheld: a withheld item shows no detail, and the project says, by
    reason and without counting, that it withholds something.  A withheld
    build carries no size, digest or segment count (a digest of a build that
    is not published would let anyone test a guess at its bytes), and a
    withheld statement carries no evidence and no fingerprint."""
    out = []
    for proj in tree.projects.values():
        reasons = set()
        for h in proj.harnesses.values():
            where = os.path.join(h.dir, "harness.yaml")
            for b, r in h.data["builds"].items():
                if r.get("withheld"):
                    reasons.add(r["withheld"])
                    shown = [k for k in BUILD_DETAIL if k in r]
                    if shown:
                        out.append(Finding("withheld", where, "builds.%s is withheld but shows %s" % (b, ", ".join(shown))))
                else:
                    missing = [k for k in BUILD_DETAIL if k not in r]
                    if missing:
                        out.append(Finding("withheld", where, "builds.%s is published but has no %s" % (b, ", ".join(missing))))
            for s in h.statements.values():
                if s.data["status"] == "withheld":
                    reasons.add(s.data.get("withheld"))
                    if s.fingerprint:
                        out.append(Finding("withheld", where, "statements.%s is withheld but has a fingerprint" % s.name))
        wh = proj.data.get("withheld") or {}
        for reason, flag in WITHHELD_FLAG.items():
            if reason in reasons and not wh.get(flag):
                out.append(Finding("withheld", proj.dir, "withholds an item (%s) but does not say so: add withheld.%s"
                                   % (reason, flag)))
            if wh.get(flag) and reason not in reasons:
                out.append(Finding("withheld", proj.dir, "withheld.%s, but nothing is withheld for that reason" % flag))
    return out


PLACEHOLDER_VALUE = re.compile(r"(?<![0-9a-f])0{40}(?:0{24})?(?![0-9a-f])")


def check_placeholders(tree):
    """schema: a digest or commit of all zeros is a placeholder for something not
    published yet (an image, a tag).  It must never read as a pin, so each line
    that still holds one is a finding until the real value replaces it.  The
    finding names the line and what it pins, so that replacing one placeholder
    visibly clears its finding while the others stay."""
    out = []
    for rel in ["release.yaml", "toolchain/toolchain.lock"] + [os.path.join(p.dir, "project.yaml")
                                                                for p in tree.projects.values()]:
        p = tree.path(rel)
        if not os.path.isfile(p):
            continue
        for no, line in enumerate(facts.read(p).splitlines(), 1):
            if PLACEHOLDER_VALUE.search(line):
                what = re.split(r"[:=@]", line.strip().lstrip("-").strip(), maxsplit=1)[0].strip() or "a value"
                out.append(Finding("schema", "%s:%d" % (rel, no), "%s is a placeholder digest or commit (all "
                                   "zeros): replace it with the published value before a release" % what))
    return out


LOCK_LINE = re.compile(r"[a-z0-9][a-z0-9-]*=\S+")


def check_toolchain_lock(tree):
    """schema, for toolchain/toolchain.lock: key=value lines and nothing else (no
    commentary), and the images it names are the ones release.yaml pins: its
    checker and runner are release.yaml's, and each toolchain* image is one of
    release.yaml's builder images."""
    p = tree.path("toolchain", "toolchain.lock")
    if not os.path.isfile(p):
        return []
    out, keys = [], {}
    for no, line in enumerate(facts.read(p).splitlines(), 1):
        if not LOCK_LINE.fullmatch(line):
            out.append(Finding("schema", "toolchain/toolchain.lock:%d" % no, "not a key=value line"))
            continue
        k, v = line.split("=", 1)
        if k in keys:
            out.append(Finding("schema", "toolchain/toolchain.lock:%d" % no, "%s is given twice" % k))
        keys[k] = v
    images = (tree.release or {}).get("images") or {}
    want = images.get("checker")
    if want and keys.get("checker") != want:
        out.append(Finding("schema", "toolchain/toolchain.lock", "checker differs from release.yaml's images.checker"))
    if "runner" in keys and images.get("runner") and keys["runner"] != images["runner"]:
        out.append(Finding("schema", "toolchain/toolchain.lock", "runner differs from release.yaml's images.runner"))
    builders = images.get("builder") or []
    for k in sorted(k for k in keys if k.startswith("toolchain")):
        if images and keys[k] not in builders:
            out.append(Finding("schema", "toolchain/toolchain.lock", "%s is not one of release.yaml's images.builder" % k))
    return out


def check_free_text(tree):
    """free-text: a free-text field the rendering has no place for would still be
    published, as YAML; refuse it."""
    out = []
    pb = facts.PHRASEBOOK
    for proj in tree.projects.values():
        d = proj.data
        t = (d.get("reason_args") or {}).get("text")
        if t is not None and d["status"] != "available":
            shape = pb["projects"][d["status"]]["reasons"].get(d.get("reason"), "")
            if "{text}" not in shape:
                out.append(Finding("free-text", proj.dir, "reason_args.text is not used by the sentence for %s/%s"
                                   % (d["status"], d.get("reason"))))
        for e in proj.entries():
            t = (e.get("reason_args") or {}).get("text")
            if t is not None and "{text}" not in pb["harnesses"].get(e.get("reason", ""), ""):
                out.append(Finding("free-text", proj.dir, "%s: reason_args.text is not used by its sentence" % e["name"]))
    return out


# --------------------------------------------------------------- exceptions

def load_exceptions(root):
    p = os.path.join(root, "tools", "oft", "lint-exceptions.yaml")
    if not os.path.isfile(p):
        return []
    data = yamlio.load_file(p)
    return data.get("exceptions") or []


def apply_exceptions(findings, exceptions):
    """A private-data finding in an upstream copy (its authors' own address,
    say) may be cleared by a reviewed entry naming (path, rule, key) and how
    often.  Nothing else can be cleared."""
    budget = {(e["path"], e["rule"], e["key"]): e["count"] for e in exceptions}
    used = {}
    kept = []
    for f in findings:
        key = (f.where.rsplit(":", 1)[0], f.rule, f.key)
        clearable = f.rule == "private-data" and verbatim(key[0])
        if clearable and key in budget and used.get(key, 0) < budget[key]:
            used[key] = used.get(key, 0) + 1
            continue
        kept.append(f)
    for key, n in budget.items():
        if used.get(key, 0) < n:
            kept.append(Finding("paths", "tools/oft/lint-exceptions.yaml",
                                "an exception for %s %s that is not used %d time(s)" % (key[1], key[0], n)))
    return kept


# --------------------------------------------------------------------- run

def run(root, changed=None, pr_kind=None, skeleton=False, release=False):
    """All findings for the tree at root.  skeleton=True accepts a tree with
    no facts at all (no release.yaml, no projects/): the text rules still run
    over every file, which is how the repository's own tools are checked
    before a release has been exported into it.  release=True adds what only
    a release must satisfy: no placeholder digest or commit is left."""
    root = os.path.abspath(root)
    tree = facts.load(root)
    if skeleton and not tree.projects and not os.path.exists(tree.path("release.yaml")):
        tree.errors = []
    rules.check(tree)
    found = [Finding("schema", e.split(":", 1)[0], e.split(":", 1)[1].strip() if ":" in e else e)
             for e in tree.errors]
    files = walk(root)
    if not files:
        return [Finding("paths", root, "no files: nothing examined")]
    found += check_paths(tree, files)
    found += check_disclosure(tree)
    found += check_free_text(tree)
    found += check_toolchain_lock(tree)
    if release:
        found += check_placeholders(tree)
    if changed is not None:
        found += check_changes(tree, changed, pr_kind or "maintainer")
    known = fact_urls(tree)
    n_text = 0
    for rel in files:
        text = read_text(os.path.join(root, rel))
        if text is None:
            continue
        n_text += 1
        src = verbatim(rel, text)
        proof_v = rel.startswith("proofs/") and rel.endswith(".v")
        # In a proof, a string literal holds encoded data whose random byte runs can take the shape of an address or a
        # link: the e-mail and link checks read the file with string literals blanked (comments are still read).
        blanked = None
        if proof_v and (EMAIL.search(text) or URL.search(text) or GHCR.search(text)):
            blanked = strip_rocq(text, comments=False)
        found += scan_shapes(text, rel, source=src, email_text=blanked)
        if not src:
            found += scan_links(text if blanked is None else blanked, rel, known, strict=link_strict(rel))
        if proof_v:
            found += scan_proof(text, rel)
    if not n_text:
        found.append(Finding("private-data", root, "no text files: nothing examined"))
    return apply_exceptions(found, load_exceptions(root))
