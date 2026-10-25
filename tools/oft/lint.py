"""oft lint: the rules that keep this repository what it says it is.

    paths         every path has exactly one owner (tools/oft/paths.py), a pull
                  request changes only what its kind of pull request may change,
                  and no derived file, binary, LFS pointer or link is stored
    schema        closed schemas and the rules between facts (schema.py, rules.py)
    private-data  no host paths, private network addresses, private host
                  names, private theorem-labs repositories named in a path,
                  e-mail addresses, private keys or access tokens in what this
                  repository wrote, and no build host in a port build record
    links         links point only where they may: never to a machine on a
                  private network or to a private theorem-labs repository
    free-text     every free-text field has a place in the rendering
    proofs        no axioms, admits, plugins, file effects or wall-clock limits in proofs/
    withheld      a withheld item shows no detail anywhere

Every rule fails when it examined nothing.  `run` returns the findings; the
command exits 1 if there is any.
"""
import bisect
import hashlib
import html
import ipaddress
import os
import re
import socket
import stat
import subprocess
import urllib.parse

from . import facts, names, paths, rocq, rules, schema, urls, yamlio

HERE = os.path.dirname(os.path.abspath(__file__))

MAX_BYTES = 5 << 20
CAPS = [
    ("index/*.tsv", 64 << 20),
    ("projects/*/*/source/**", 256 << 10),
    ("counterexamples/**", 64 << 10),
    ("findings/*/*/*/input.bin", facts.FINDING_INPUT_CAP),
    ("findings/*/*/*/control.bin", facts.FINDING_INPUT_CAP),
    ("findings/**", facts.FINDING_FILE_CAP),
    ("proofs/*/*/*/classifier/**", 1 << 20),
]
PROOF_DIR_CAP = 5 << 20
DERIVED_SUFFIXES = (".vo", ".vos", ".vok", ".glob", ".aux", ".hex", ".cache", ".pyc", ".pyo")
QUOTED_NAME = re.compile(r'["\\\x00-\x1f\x7f]')  # what git quotes in a path whatever core.quotePath says
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
    exclude; elsewhere, every file outside _build/, projects/*/bin/ and
    findings/*/bin/."""
    if os.path.exists(os.path.join(root, ".git")):   # a directory in a clone, a file in a worktree
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


def file_cap(rel):
    """The size cap of the file at rel."""
    return next((c for pt, c in CAPS if paths.match(pt, rel) is not None), MAX_BYTES)


def read_text(path, cap=MAX_BYTES):
    """The file's text, or None if it is binary, or is not a regular file of at most cap bytes: check_paths reports a
    link, a special file or a file over its cap, so none is followed, opened or read whole here."""
    try:
        data = facts.read_bounded(path, cap)
    except facts.BoundedFileError:
        return None
    if b"\0" in data[:8192]:
        return None
    return data.decode("utf-8", errors="replace")


# Verbatim copies of files from elsewhere, pinned by content: the licence texts and the notice that came with the proofs
# made from a bundle under Apache-2.0 OR MIT.  A changed byte makes any of them ordinary text, held to every rule.
PINNED_VERBATIM = {
    "LICENSES/anthropic-proofs-LICENSE": "cfc7749b96f63bd31c3c42b5c471bf756814053e847c10f3eb003417bc523d30",
    "LICENSES/anthropic-proofs-LICENSE-MIT": "2e6105c36a95f04adbc36000b7b1ce65544385e27f8febb1b2f53b61fdb62bca",
    "LICENSES/anthropic-proofs-NOTICE": "f4cbf47ffed57359084432af1ca4b22347ecb995fcf7a2e4e346f180d2e5001d",
}


def verbatim(rel, text=None):
    """Bytes that ship as they are: the jargon and link rules do not apply.  Upstream copies (a harness's source/, the
    licence texts of a build record), the slice of its recipe a build record carries, and the files of
    PINNED_VERBATIM when text is their pinned content.  The API driver's and an OSS Verify target's source are this
    repository's own text, so they are held to those rules."""
    if rel in PINNED_VERBATIM:
        return text is not None and hashlib.sha256(text.encode()).hexdigest() == PINNED_VERBATIM[rel]
    return bool(re.match(r"projects/[^/]+/(?!api-driver/)[^/]+/source/", rel)
                or re.match(r"proofs/(?!lib/)[^/]+/[^/]+/provenance/(LICENSES|recipe)/", rel))


def oss_verify_sources(tree):
    """The source/ directories of the fuzz targets OSS Verify builds (origin oss-verify), as
    projects/<p>/<h>/source/: what oss_verify_source reads."""
    return frozenset("projects/%s/%s/source/" % (h.project.name, h.name) for h in tree.harnesses()
                     if h.data["origin"] == "oss-verify")


def oss_verify_source(own, rel):
    """Whether rel is source text copied from the OSS Verify port: a file under one of `own`
    (oss_verify_sources)."""
    m = re.match(r"projects/[^/]+/[^/]+/source/", rel)
    return m is not None and m.group() in own


def port_record(rel):
    """Whether rel is one of the port's files in a port-built build record (proofs/<p>/<h>/provenance/port/).  They
    ship as they are, and are the port's own text: the private-data rules, the private-host rule and the rule
    against links to a private repository apply.  The allowlist of other links does not: the port's sources file pins
    every upstream tree by its URL."""
    return bool(re.match(r"proofs/(?!lib/)[^/]+/[^/]+/provenance/port/", rel))


PORT_MANIFEST = re.compile(r"proofs/(?!lib/)[^/]+/[^/]+/provenance/port/manifest\.yaml$")
# a build record's copy of the port's own files for its project: the record's project, never proofs/lib/
PORT_PROJECT_FILE = re.compile(r"proofs/((?!lib/)[^/]+)/[^/]+/provenance/port/projects/\1/")
PORT_PROJECT_YAML = re.compile(r"proofs/((?!lib/)[^/]+)/[^/]+/provenance/port/projects/\1/project\.yaml$")



def scan_port_manifest(text, where):
    """private-data.  The manifest the port's tools/check writes names the machine of a --twice rebuild
    (rebuild.host); a build record's copy leaves every host out."""
    try:
        data = yamlio.load(text, where)
    except yamlio.YamlError as e:
        return [Finding("private-data", where, "not YAML: %s" % e)]
    out = []

    def visit(v, at):
        if isinstance(v, dict):
            for k, x in v.items():
                if k == "host":
                    out.append(Finding("private-data", where, "%shost names the build machine: leave it out"
                                       % (at + "." if at else ""), key=_key(str(x))))
                visit(x, (at + "." if at else "") + str(k))
        elif isinstance(v, list):
            for x in v:
                visit(x, at)

    visit(data, "")
    return out


# ------------------------------------------------------------- private-data

# /home/opam/ is the home of the user of the official OCaml/opam container
# images that toolchain/*.Dockerfile builds on; it names no host.
HOST_PATH = re.compile(r"(?<![\w.~-])/(?:data|home(?!/opam\b)|srv|Users|root|mnt/disks)/[\w.@+-]+")
# Addresses on a private network, including the shared address space Tailscale assigns to its nodes.
PRIVATE_IP = re.compile(r"(?<![\d.])(?:10\.\d{1,3}|100\.(?:6[4-9]|[7-9]\d|1[01]\d|12[0-7])|172\.(?:1[6-9]|2\d|3[01])|192\.168|169\.254)\.\d{1,3}\.\d{1,3}(?![\d.])")
# Host names that resolve only on a private network: one label (a bare machine name), localhost and its names
# (RFC 6761), or one of these suffixes (ts.net is a Tailscale network's own names; internal.cloudapp.net is Azure's).
PRIVATE_SUFFIXES = ("localhost", "internal", "local", "corp", "lan", "home.arpa", "ts.net",
                    "internal.cloudapp.net")
PUBLIC_REPOS = ("oss-verify", "oss-verify-proofs", "rocq-linux-process-semantics", "rocq-read-file", "static-asan")
PRELAUNCH_PORT_REPO = schema.PRELAUNCH_REPOSITORY.split("/", 1)[1]
# Private names, refused in any text whether or not it is a link (the link rule judges links by what they open):
# a host name under a private suffix, in any case; and a theorem-labs repository named as a path (after a /,
# backslash or the : of an ssh remote) or as owner/name, also with %2F or a character reference (a line with % or &
# is read decoded too) and, in a file GitHub renders as Markdown, split by a backslash escape or an HTML comment (a
# line of it is read as GitHub shows its text too, urls.unescape_markdown).  An image on ghcr.io, also as a regular
# expression writes it, is the GHCR rule's.  A host name starts after anything but a name character or a name and a
# dot, so a proof's qualified names (`AW_Init.internal`, `Mod_X.Sub.internal`) are not read as one.
PRIVATE_HOST_NAME = re.compile(r"(?i)(?<![\w-])(?<![\w-]\.)(?:[a-z0-9-]+\.)+(?:%s)(?![\w-]|\.[a-z0-9])"
                               % "|".join(re.escape(s) for s in PRIVATE_SUFFIXES))
REPOSITORY_PATH = re.compile(r"(?i)(?:(?<![\w.@/\\:%-])|(?<!ghcr\.io)(?<!ghcr\\\.io)[/\\:])theorem-labs[/\\]+([a-z0-9._-]+)"
                             r"|(?<![\w.-])theorem-labs" r"\.github\.io\.?[/\\]+([a-z0-9._-]+)")
EMAIL = re.compile(r"\b[A-Za-z0-9._%+-]+@[A-Za-z0-9-]+(?:\.[A-Za-z0-9-]+)*\.[A-Za-z]{2,}\b")
EMAIL_OK = re.compile(r"@users\.noreply\.github\.com$|^noreply@github\.com$")
# what comes just before an EMAIL match that is really a URL's user information: "//" then an optional "user:"
URL_USERINFO_BEFORE = re.compile(r"//[^\s/@]*:?$")
PRIVATE_KEY = re.compile(r"-----BEGIN (?:[A-Z]+ )*PRIVATE KEY-----")
TOKEN = re.compile(r"\b(?:gh[pousr]_[A-Za-z0-9]{36,}|github_pat_[A-Za-z0-9_]{22,}|AKIA[0-9A-Z]{16}"
                   r"|xox[abprs]-[A-Za-z0-9-]{10,}|AIza[0-9A-Za-z_-]{35}|ya29\.[0-9A-Za-z_-]{20,})")
GITHUB_ORG_PACKAGES = re.compile(r"(?i)(?<![\w.-])(?:https?://)?(?:www\.)?github\.com/orgs\Z")
ROCQ_QUALIFIED_LINE = re.compile(r"(?i)^\s*(?:Lemma\s+\w+\s*:\s+|Require\s+Import\s+)[A-Za-z_][\w.]*\.\s*$")


def _ordinary_code_name(where, line, match):
    """Whether a private-host shape is an ordinary code name, not a machine name."""
    name = match.group().lower()
    if name == "threading" + ".local" and line[match.end():].startswith("("):
        return True
    if name == "env" + ".local" and match.start() and line[match.start() - 1] == ".":
        return True
    if (name.startswith(("com.", "org.", "net.", "io.", "edu.", "gov."))
            and re.search(r"(?i)(?:^|[`\s])(?:import|package)\s+$", line[:match.start()])
            and line[match.end():].startswith(";")):
        return True
    return where.startswith("proofs/") and where.endswith(".v") and ROCQ_QUALIFIED_LINE.fullmatch(line) is not None


def _github_org_page(line, match):
    """Whether a theorem-labs path is GitHub's organisation packages page, not a repository."""
    return ((match.group(1) or match.group(2)).lower().rstrip(".").removesuffix(".git") == "packages"
            and GITHUB_ORG_PACKAGES.search(line[:match.start()]) is not None)


def held_prelaunch_fields(tree):
    """The project.yaml files whose build.oss_verify.repository may name the port's private prelaunch variant, the sole
    field that may: those of the projects a finding holds back that build from it."""
    held = facts.held_projects(tree)
    return frozenset("projects/%s/project.yaml" % name for name, proj in tree.projects.items()
                     if name in held and (facts.port(proj) or {}).get("repository") == schema.PRELAUNCH_REPOSITORY)


def _repository_value(line, match):
    """Whether match is the YAML value of a repository key, in block or flow
    form, rather than a comment or another free-text use."""
    before, after = line[:match.start()], line[match.end():]
    return ("#" not in before
            and re.search(r"(?<![\w-])repository\s*:\s*(?:['\"])?$", before) is not None
            and re.match(r"(?:['\"])?\s*(?:[,}]|#|$)", after) is not None)


def _key(text):
    return hashlib.sha256(text.encode()).hexdigest()[:16]


def scan_shapes(text, where, source=False, email_text=None, allow_prelaunch=False):
    """private-data.  Upstream copies (source=True) keep their authors'
    addresses and their own example addresses, so there only paths, keys,
    tokens and private repository names count.  email_text, when given, is the
    text the e-mail check reads instead: a proof's .v file with its string
    literals blanked, because an encoded payload holds random runs of an
    address's shape.  Everything else is still searched inside those strings."""
    out = []
    rx = [("a host path", HOST_PATH), ("a private key", PRIVATE_KEY), ("an access token", TOKEN)]
    names = [("a private repository's name", REPOSITORY_PATH)]
    if not source:
        rx += [("a private address", PRIVATE_IP)]
        names += [("a private host name", PRIVATE_HOST_NAME)]
    markdown = urls.MARKDOWN.search(where) is not None
    for no, line in enumerate(text.split("\n"), 1):
        for what, r in rx:
            for m in r.finditer(line):
                out.append(Finding("private-data", "%s:%d" % (where, no), what, key=_key(m.group())))
        seen, variants = set(), [line]
        if markdown:
            variants.append(urls.unescape_markdown(line))
        variants += [urllib.parse.unquote(html.unescape(v)) for v in variants if "%" in v or "&" in v]
        for variant in dict.fromkeys(variants):
            for what, r in names:
                for m in r.finditer(variant):
                    if r is REPOSITORY_PATH:
                        if _github_org_page(variant, m):
                            continue
                        name = (m.group(1) or m.group(2)).lower().rstrip(".").removesuffix(".git")
                        bare = m.group(1) is not None and m.group()[:1].lower() == "t"
                        if name in PUBLIC_REPOS or (allow_prelaunch and bare and name == PRELAUNCH_PORT_REPO
                                                    and _repository_value(variant, m)):
                            continue
                    if r is PRIVATE_HOST_NAME and _ordinary_code_name(where, variant, m):
                        continue
                    if m.group().lower() not in seen:
                        seen.add(m.group().lower())
                        out.append(Finding("private-data", "%s:%d" % (where, no), what, key=_key(m.group())))
    if not source:
        for no, line in enumerate((text if email_text is None else email_text).split("\n"), 1):
            for m in EMAIL.finditer(line):
                if not EMAIL_OK.search(m.group()):
                    # user:password@host or user@host after a scheme's //: a URL's user information, which can be
                    # a credential, and which no exception for an address clears
                    what = ("a URL's user information" if URL_USERINFO_BEFORE.search(line[:m.start()])
                            else "an e-mail address")
                    out.append(Finding("private-data", "%s:%d" % (where, no), what, key=_key(m.group())))
    return out


# -------------------------------------------------------------------- links

# Where a link in rendered text may go, each compared with the parsed URL (urls.parse): its scheme, host and port, and
# a prefix of its path.
FIXED_URLS = ("https://github.com/google/oss-fuzz", "https://google.github.io/oss-fuzz",
              "https://rocq-prover.org", "https://github.com/rocq-prover/", "https://reuse.software",
              "https://spdx.org/", "https://www.qemu.org", "https://opam.ocaml.org")
URL = urls.URL
GHCR = re.compile(r"\bghcr\.io/theorem-labs/([a-z0-9._-]+)")
# The hosts GitHub serves a repository's contents from, the repository named first in the path; the API names it
# under /repos/.
GITHUB_HOSTS = ("github.com", "www.github.com", "codeload.github.com", "raw.github.com", "raw.githubusercontent.com")
WEB_SCHEMES = ("http", "https", "ws", "wss", "ftp")
NETWORK_HOST = re.compile(r"(?i)[a-z0-9._-]+|\[[0-9a-f:.]+\]")
# The dated snapshots of the Debian archive the runner image installs from
# (toolchain/runner.Dockerfile).  apt reads the archive over http, as Debian's
# own images do, and checks every index against the archive's signing key.
DEBIAN_SNAPSHOT = ("http://snapshot.debian.org/archive/debian/", "https://snapshot.debian.org/")
# Where GitHub shows a file of this repository, which its relative links resolve against: its own page, and for a
# README, the page of its directory too.
PAGE_BASE = "https://github.com/theorem-labs/oss-verify-proofs/blob/main/"
DIRECTORY_BASE = "https://github.com/theorem-labs/oss-verify-proofs/tree/main/"


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
    for f in tree.findings.values():
        visit(f.data)
    return out


def private_host(host):
    """Whether a machine host is an address that is not global, a single label, or a private suffix."""
    host = host.lower().rstrip(".")
    try:
        return not ipaddress.ip_address(host.strip("[]")).is_global
    except ValueError:
        pass
    try:
        address = socket.inet_ntoa(socket.inet_aton(host))
    except OSError:
        pass
    else:
        return not ipaddress.ip_address(address).is_global
    return "." not in host or any(host == s or host.endswith("." + s) for s in PRIVATE_SUFFIXES)


def theorem_repositories(u):
    """Every theorem-labs repository a parsed URL names, on any host: each path segment after a theorem-labs one
    (github.dev and vscode.dev/github/ open a repository too), or the first segment on the organisation's Pages host,
    lower case."""
    parts = u.path.lower().split("/")
    out = [r.removesuffix(".git") for o, r in zip(parts, parts[1:]) if o == "theorem-labs" and r]
    if u.host.lower().rstrip(".") == "theorem-labs.github.io" and len(parts) > 1 and parts[1]:
        out.append(parts[1].removesuffix(".git"))
    return out


def public_repository(u):
    """Whether a parsed URL is one of the public theorem-labs repositories, where GitHub serves it."""
    path = u.path.lower()
    if u.host == "api.github.com" and path.startswith("/repos/"):
        path = path[len("/repos"):]
    elif u.host not in GITHUB_HOSTS:
        return False
    parts = path.split("/")
    return len(parts) > 2 and parts[1] == "theorem-labs" and parts[2].removesuffix(".git") in PUBLIC_REPOS


def _prefix_of(u, allowed, segment=False):
    """Whether allowed (a URL) names the same scheme, host and port as u and a prefix of its path; with segment=True,
    a prefix that ends where a path segment ends."""
    try:
        a = urls.parse(allowed)
    except urls.Unreadable:
        return False
    if a is None or (u.scheme, u.host, u.port) != (a.scheme, a.host, a.port) or not u.path.startswith(a.path):
        return False
    return not segment or len(u.path) == len(a.path) or a.path.endswith("/") or u.path[len(a.path)] == "/"


def judge(u, known, strict=True, full=True):
    """Whether a parsed link (urls.parse) may stay: it must not name a machine on a private network or a theorem-labs
    repository that is not public.  A full link in rendered text, docs and facts (strict) must also be https and be
    one of ours, OSS-Fuzz's or one the facts record.  A link that opens nothing (None) is judged by its text alone."""
    if u is None:
        return True
    if u.host and (u.scheme in WEB_SCHEMES or NETWORK_HOST.fullmatch(u.host)) and private_host(u.host):
        return False
    if any(r not in PUBLIC_REPOS for r in theorem_repositories(u)):
        return False
    if public_repository(u):
        return True
    if not (strict and full) or any(_prefix_of(u, d) for d in DEBIAN_SNAPSHOT):
        return True
    if u.scheme != "https":
        return False
    return any(_prefix_of(u, f) for f in FIXED_URLS) or any(_prefix_of(u, k, segment=True) for k in known)


def link_strict(rel):
    """Rendered text, docs and facts: everything but the tools, the tests and
    the workflows, whose links are code, not content."""
    return not rel.startswith(("tools/", "tests/", ".github/"))


def _bases(where):
    bases = [PAGE_BASE + where]
    if os.path.basename(where).lower().startswith("readme"):
        bases.append((DIRECTORY_BASE + os.path.dirname(where)).rstrip("/"))
    return [urls.parse(b) for b in bases]


def scan_links(text, where, known, strict=True):
    """links.  Every link a reader can follow (urls.links), judged by what a browser opens for it: an absolute URL
    alone, a Markdown or HTML link against each page that shows the file, and another reading of the same text
    (GitHub's extent of a bare URL, the text with character references decoded, a line of Markdown as GitHub shows
    its text) for privacy only.  A URL urls.parse cannot read for sure is refused wherever this rule reads; one that
    opens nothing, only in rendered text, docs and facts (strict), and only as an absolute URL.  One finding per line
    and target."""
    out, reported, judged = [], set(), set()
    bases = None
    for link in urls.links(text, bool(urls.MARKDOWN.search(where))):
        if link.kind == "link":
            bases = bases or _bases(where)
        targets = []
        for base in (bases if link.kind == "link" else [None]):
            try:
                targets.append(urls.parse(link.ref, base))
            except urls.Unreadable:
                targets.append(False)
        for target in targets:
            key = (link.line, link.ref if target is None or target is False else str(target))
            if (key, link.kind == "reading") in judged:
                continue
            judged.add((key, link.kind == "reading"))
            if target is False:
                ok = False
            elif target is None:
                ok = link.kind != "url" or not strict
            else:
                ok = judge(target, known, strict, full=link.kind != "reading")
            if not ok and key not in reported:
                reported.add(key)
                out.append(Finding("links", "%s:%d" % (where, link.line),
                                   "a link that is not on the allowlist: %s" % link.text))
    for no, line in enumerate(text.split("\n"), 1):
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


def scan_proof(text, where):
    out = []
    stripped = rocq.strip(text)
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
    out, notes = [], []
    for rel in files:
        if tree.projects and rel.startswith("notes/") and rel[len("notes/"):-len(".md")] not in tree.projects:
            notes.append(Finding("paths", rel, "notes for a project this release does not list"))
        if QUOTED_NAME.search(rel):
            # git lists such a name quoted (even with core.quotePath=false), and the changed-path list CI reads
            # (pr.yml, check_changes, oft plan) holds it in that form: no path pattern can judge it
            out.append(Finding("paths", rel, "a name with a '\"', a '\\' or a control character"))
            continue
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
        st = os.lstat(full)
        if stat.S_ISLNK(st.st_mode):
            out.append(Finding("paths", rel, "a symbolic link"))
            continue
        if not stat.S_ISREG(st.st_mode):
            out.append(Finding("paths", rel, "not a regular file"))
            continue
        size, cap = st.st_size, file_cap(rel)
        if size > cap:
            out.append(Finding("paths", rel, "%d bytes, over the %d-byte cap" % (size, cap)))
        if rel.endswith(DERIVED_SUFFIXES) or "__pycache__" in rel.split("/"):
            out.append(Finding("paths", rel, "a derived file (.vo, .hex, .pyc, ...): these are never stored"))
        try:
            with os.fdopen(facts.open_bounded(full, max(size, cap)), "rb") as f:
                head = f.read(64)
        except facts.BoundedFileError as e:
            out.append(Finding("paths", rel, str(e)))
            continue
        if head.startswith(b"\x7fELF") and "/classifier/" not in rel:
            out.append(Finding("paths", rel, "an ELF file: binaries are release assets, not files in git"))
        if head.startswith(LFS_POINTER):
            out.append(Finding("paths", rel, "a Git LFS pointer"))
        if rel == ".gitattributes" and size <= cap:   # over its cap, it is a finding already and is not read
            attributes = facts.read(full)
            if "filter=lfs" in attributes:
                out.append(Finding("paths", rel, "an LFS filter"))
            # a checkout in another encoding than the blob's hides a file's text from the text rules
            if "working-tree-encoding" in attributes:
                out.append(Finding("paths", rel, "a working-tree-encoding"))
    out += notes
    for sid, pd in tree.proofs.items():
        total = sum(os.path.getsize(os.path.join(dp, f)) for dp, _, fs in os.walk(tree.path(pd.path)) for f in fs)
        if total > PROOF_DIR_CAP:
            out.append(Finding("paths", pd.path, "%d bytes of proof, over the %d-byte cap" % (total, PROOF_DIR_CAP)))
    for proj in tree.projects.values():
        if not os.path.isfile(tree.path(proj.dir, "README.md")):
            out.append(Finding("paths", proj.dir, "no README.md (run ./oft generate)"))
    return out


def _base_ledger(base):
    """The trusted base's findings/ files, relative to base, outside each project's fetched bin/.  The pull-request
    workflow sparse-checks out findings/ beside the base's tools just for this ledger comparison; never load it as
    facts, since the head's trusted tools judge the proposed tree."""
    out = []
    for dp, dns, fns in os.walk(os.path.join(base, "findings")):
        rel = os.path.relpath(dp, base).replace(os.sep, "/")
        if rel.count("/") == 1:
            dns[:] = [d for d in dns if d != "bin"]
        out += [rel + "/" + fn for fn in fns]
    return out


_FINDING_FILE = re.compile(r"findings/[^/]+/[^/]+/[^/]+/")
_UNPATCHED_FILE = re.compile(r"findings/([^/]+)/unpatched\.yaml$")
# What a finding's runs are of: CI re-runs its record against these, so they never change once the base has it.
# Its state, summary, upstream and patch text may.
_FIXED_FILES = ("input.bin", "control.bin")


def _ledger_yaml(root, rel, cap=facts.FINDING_FILE_CAP):
    return yamlio.load(facts.read_bounded(os.path.join(root, rel), cap).decode(), where=os.path.join(root, rel))


def _runner(release):
    """images.runner of a release.yaml's YAML: the image CI re-runs findings in."""
    images = release.get("images") if isinstance(release, dict) else None
    return images.get("runner") if isinstance(images, dict) else None


def _fixed_evidence(tree, base, ledger):
    """Each finding the base has keeps its input.bin and control.bin, its statements include the base's (a longer list
    makes a stronger claim, and CI checks each), and the unpatched pin of each build its statements name stays as it
    is; a pin for another build may be added or changed.  Its recorded runs of those builds stay as they are too,
    unless the proposed tree's runner image (release.yaml's images.runner) differs from the base's: the base is
    checked, so its runs are what that runner gave on those pins, and only another runner gives others.  The builds
    are read from the base record's statement names (names.statement_builds), as `oft ledger` reads them.  A file the
    proposed tree deleted is reported as a deletion, and one the loader refused as a tree error, so neither is
    compared here."""
    out = []
    ran = {}   # (project, harness) -> the builds a base finding of it names
    base_runner = _runner(_ledger_yaml(base, "release.yaml", file_cap("release.yaml")))
    new_runner = None not in (base_runner, _runner(tree.release)) and _runner(tree.release) != base_runner
    for rel in sorted(ledger):
        if not (_FINDING_FILE.match(rel) and rel.endswith("/finding.yaml")):
            continue
        d = rel[:-len("/finding.yaml")]
        _, p, h, s = d.split("/")
        was = _ledger_yaml(base, rel)
        builds = {b for st in was["statements"] for b in names.statement_builds(st) or ()}
        ran.setdefault((p, h), set()).update(builds)
        for name in _FIXED_FILES:
            fixed = d + "/" + name
            if fixed not in ledger or not os.path.lexists(tree.path(fixed)):
                continue
            try:
                proposed = facts.read_bounded(tree.path(fixed), facts.FINDING_INPUT_CAP)
            except facts.BoundedFileError:
                continue
            if proposed != facts.read_bounded(os.path.join(base, fixed), facts.FINDING_INPUT_CAP):
                out.append(Finding("paths", fixed, "a finding's %s is never changed: %s" % (name, fixed)))
        head = tree.findings.get("%s/%s/%s" % (p, h, s))
        dropped = sorted(set(was["statements"]) - set(head.data["statements"])) if head else []
        if dropped:
            out.append(Finding("paths", rel, "a finding's statements only grow: %s no longer names %s"
                               % (rel, ", ".join(dropped))))
        for which in ("input", "control") if head and "input" in was and not new_runner else ():
            for b in sorted(builds & set(was[which]), key=schema.BUILDS.index):
                if (head.data.get(which) or {}).get(b) != was[which][b]:
                    out.append(Finding("paths", rel, "a finding's recorded runs are never changed: %s %s.%s"
                                       % (rel, which, b)))
    for p in sorted({p for p, _ in ran}):
        rel = "findings/%s/unpatched.yaml" % p
        head = tree.unpatched.get(p)
        if rel not in ledger or head is None:
            continue
        pinned = _ledger_yaml(base, rel)["harnesses"]
        for (q, h), builds in sorted(ran.items()):
            if q != p:
                continue
            was, now = pinned.get(h, {}), head["harnesses"].get(h, {})
            for b in sorted(builds & set(was), key=schema.BUILDS.index):
                if was[b] != now.get(b):
                    out.append(Finding("paths", rel, "a finding's unpatched pins are never changed: %s harnesses.%s.%s"
                                       % (rel, h, b)))
    return out


def check_changes(tree, changed, kind, base=None):
    """The pull-request half of `paths`.  kind: release | maintainer | contributor.  base is the trusted base tree
    when CI compares the findings ledger: every record remains in the proposed tree, the unpatched pins remain while
    its project has a base finding, and what a base finding's runs are of stays as it is (_fixed_evidence).  The base
    is walked as well as changed read, since a diff that detects renames lists a moved file only where it went."""
    out = []
    ledger = _base_ledger(base) if base else []
    with_finding = {rel.split("/")[1] for rel in ledger if _FINDING_FILE.match(rel) and rel.endswith("/finding.yaml")}
    for rel in sorted({rel for rel in list(changed) + ledger if not os.path.lexists(tree.path(rel))}):
        if _FINDING_FILE.match(rel):
            out.append(Finding("paths", rel, "a finding is never deleted: %s" % rel))
        m_unpatched = _UNPATCHED_FILE.fullmatch(rel)
        if m_unpatched and m_unpatched.group(1) in with_finding:
            out.append(Finding("paths", rel, "a finding's unpatched pins are never deleted: %s" % rel))
    if base:
        out += _fixed_evidence(tree, base, set(ledger))
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
    p = os.path.join(root, EXCEPTIONS)
    if not os.path.isfile(p):
        return []
    data = yamlio.load_file(p)
    return data.get("exceptions") or []


def apply_exceptions(findings, exceptions, own, scanned=None):
    """A private-data finding in an upstream copy (a host path in its authors' comments, say) or in a port record's
    copied project.yaml (the project's own address, say), or an e-mail address in any other file of a port record's
    copy of the port's project files (port/projects/<project>/: the enrollment author's copyright line, say), may be
    cleared by a reviewed entry naming (path, rule, key) and how often; an OSS Verify target's source (under one of
    `own`, oss_verify_sources) is not an upstream copy.  Nothing else can be cleared: a host path or a URL's user
    information in a copied build script stays a finding.  An entry left unused is a finding, unless its path is
    outside `scanned` (the files the per-file rules read, when they read only some)."""
    budget = {(e["path"], e["rule"], e["key"]): e["count"] for e in exceptions}
    used = {}
    kept = []
    for f in findings:
        key = (f.where.rsplit(":", 1)[0], f.rule, f.key)
        clearable = f.rule == "private-data" and (PORT_PROJECT_YAML.match(key[0])
                                                   or (PORT_PROJECT_FILE.match(key[0])
                                                       and f.msg == "an e-mail address")
                                                   or (verbatim(key[0]) and not oss_verify_source(own, key[0])))
        if clearable and key in budget and used.get(key, 0) < budget[key]:
            used[key] = used.get(key, 0) + 1
            continue
        kept.append(f)
    for key, n in budget.items():
        if used.get(key, 0) < n and (scanned is None or key[0] in scanned):
            kept.append(Finding("paths", EXCEPTIONS,
                                "an exception for %s %s that is not used %d time(s)" % (key[1], key[0], n)))
    return kept


# --------------------------------------------------------------------- run

def scan_file(root, rel, known, own, prelaunch):
    """(whether rel is a text file, the findings of the per-file text rules on it); a binary file, or one that is not
    a regular file of at most its cap, is not read.  known: the links the facts record (fact_urls); own: the source
    directories of the fuzz targets OSS Verify builds (oss_verify_sources); prelaunch: the project.yaml files that may
    name the port's prelaunch variant (held_prelaunch_fields)."""
    text = read_text(os.path.join(root, rel), file_cap(rel))
    if text is None:
        return False, []
    out = []
    src = verbatim(rel, text)
    own_source = oss_verify_source(own, rel)
    port_text = port_record(rel)
    proof_v = rel.startswith("proofs/") and rel.endswith(".v")
    # In a proof, a string literal holds encoded data whose random byte runs can take the shape of an address or a
    # link: the e-mail and link checks read the file with string literals blanked (comments are still read).
    blanked = None
    if proof_v and (EMAIL.search(text) or URL.search(text) or GHCR.search(text)):
        blanked = rocq.strip(text, comments=False)
    out += scan_shapes(text, rel, source=src and not own_source, email_text=blanked, allow_prelaunch=rel in prelaunch)
    if not src or own_source:
        out += scan_links(text if blanked is None else blanked, rel, known,
                          strict=link_strict(rel) and not port_text and not own_source)
    if PORT_MANIFEST.match(rel):
        out += scan_port_manifest(text, rel)
    if proof_v:
        out += scan_proof(text, rel)
    return True, out


_POOL_ARGS = {}


def _pool_init(root, known, own, prelaunch):
    _POOL_ARGS.update(root=root, known=known, own=own, prelaunch=prelaunch)


def _scan_chunk(chunk):
    n_text, out = 0, []
    for rel in chunk:
        is_text, found = scan_file(_POOL_ARGS["root"], rel, _POOL_ARGS["known"], _POOL_ARGS["own"],
                                   _POOL_ARGS["prelaunch"])
        n_text += is_text
        out += found
    return n_text, out


# Below this many files the per-file rules run in this process: a pool costs more than it saves.
POOL_MIN_FILES = 2000


def scan_files(root, files, known, own, prelaunch, jobs=None):
    """(text files examined, findings) of the per-file text rules over files, in the order of files, with the work
    spread over `jobs` processes (default: every CPU this process may run on, facts.cpus())."""
    jobs = jobs or facts.cpus()
    if jobs == 1 or len(files) < POOL_MIN_FILES:
        _pool_init(root, known, own, prelaunch)
        return _scan_chunk(files)
    from concurrent.futures import ProcessPoolExecutor
    n = max(1, len(files) // (jobs * 16))
    chunks = [files[i:i + n] for i in range(0, len(files), n)]
    n_text, out = 0, []
    with ProcessPoolExecutor(max_workers=jobs, initializer=_pool_init, initargs=(root, known, own, prelaunch)) as pool:
        for k, found in pool.map(_scan_chunk, chunks):   # map keeps the chunks' order, so the output is the serial one
            n_text += k
            out += found
    return n_text, out


def changed_since(root, base):
    """The files that differ from commit `base`: changed, added or renamed since it, staged or not, and the untracked
    files .gitignore does not exclude."""
    diff = subprocess.run(["git", "-C", root, "diff", "--name-only", "--no-renames", "-z", base],
                          capture_output=True, check=True).stdout.decode().split("\0")
    new = subprocess.run(["git", "-C", root, "ls-files", "-z", "--others", "--exclude-standard"],
                         capture_output=True, check=True).stdout.decode().split("\0")
    return {p for p in diff + new if p}


EXCEPTIONS = "tools/oft/lint-exceptions.yaml"


def read_by_every_verdict(rel):
    """Whether the per-file rules' verdict on any file reads rel: a fact (a file paths.py classes as facts), a
    finding's finding.yaml, whose links fact_urls records and whose state decides which project.yaml may name the
    port's prelaunch variant (held_prelaunch_fields), or lint-exceptions.yaml, whose entries clear findings in other
    files (an entry removed there leaves a finding in a file that did not change)."""
    return (rel == EXCEPTIONS or any(cls == "facts" for cls, _, _ in paths.classify(rel))
            or (_FINDING_FILE.match(rel) is not None and rel.endswith("/finding.yaml")))


def run(root, changed=None, pr_kind=None, base=None, skeleton=False, release=False, changed_only=None, jobs=None):
    """All findings for the tree at root.  skeleton=True accepts a tree with
    no facts at all (no release.yaml, no projects/): the text rules still run
    over every file, which is how the repository's own tools are checked
    before a release has been exported into it.  release=True adds what only
    a release must satisfy: no placeholder digest or commit is left.  base:
    the trusted base tree CI compares the findings ledger with
    (check_changes).  changed_only=BASE runs the per-file text rules only
    over the files that differ from commit BASE, or over every file when a
    fact (a file paths.py classes as facts), a finding's finding.yaml or
    lint-exceptions.yaml differs from it (read_by_every_verdict); the rules
    over the whole tree still run.  jobs: how many processes run the
    per-file text rules (scan_files); the findings do not depend on it."""
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
        found += check_changes(tree, changed, pr_kind or "maintainer", base)
    scanned = files
    if changed_only is not None:
        since = changed_since(root, changed_only)
        # a file's verdict reads the facts and the findings (the links they record, the sources that are OSS Verify's
        # own, the projects a finding holds back): a change to one can change the verdict on a file that did not
        # change, so then every file is read
        if not any(read_by_every_verdict(rel) for rel in since):
            scanned = [rel for rel in files if rel in since]
    own = oss_verify_sources(tree)
    n_text, per_file = scan_files(root, scanned, fact_urls(tree), own, held_prelaunch_fields(tree), jobs)
    found += per_file
    if not n_text and changed_only is None:
        found.append(Finding("private-data", root, "no text files: nothing examined"))
    return apply_exceptions(found, load_exceptions(root), own, None if changed_only is None else set(scanned))
