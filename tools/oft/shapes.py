"""From a statement's typed fields to its Rocq text.

Each statement in a harness.yaml names one definition of
theories/Shapes.v (OssFuzzTheorems.Core.Shapes) and its arguments.  This
module is the only place that choice is made; a combination it does not
list is an error, never a guess.
"""
from . import names

BUDGETS = {
    # module, plain-build words, sanitizer-build words
    "standard": ("Budgets.Standard", "16 GiB", "512 GiB"),
    "asan": ("Budgets.Asan", "2 GiB", "512 GiB"),
}
HALTS_BUDGET = ("Budgets.Standard.lim_source", "16 GiB")

ENV = {"may-fail": "Env.may_fail", "alloc-forced-only": "Env.alloc_forced_only"}

# (reading, abort, machine) -> the agreement shape
AGREEMENT = {
    ("may-fail", "error", "rv64g"): "agrees",
    ("may-fail", "signal", "rv64g"): "agrees_abort_modelled",
    ("alloc-forced-only", "error", "rv64g"): "agrees_in",
    ("alloc-forced-only", "signal", "rv64g"): "agrees_in_abort_modelled",
    ("may-fail", "error", "rv64gc"): "agrees_rv64gc",
    ("may-fail", "signal", "rv64gc"): "agrees_abort_modelled_rv64gc",
    ("alloc-forced-only", "error", "rv64gc"): "agrees_in_rv64gc",
}

# The driver's status when a call of the fuzz target returns a value other than 0 or -1.  libFuzzer reserves
# those values; a libFuzzer built without assertions treats them as -1 (the input is rejected, not a crash).  A
# harness whose fuzz target returns one to turn an input away lists where (harness.yaml `rejects`), and its halts
# statements allow this status too.
REJECTED = 78

# The set with 78 is spelled out in the statement rather than named in Shapes.Exits: any change to the code of
# theories/Shapes.v moves every statement's fingerprint, through its digest.  Statements.v opens neither list_scope
# nor a scope with N numerals (QArith's Q scope is open), so the term uses `cons` and lets the word width (64)
# come from `list word`; it elaborates to Z_to_bv 64 78 :: [Z_to_bv 64 0; Z_to_bv 64 2].
EXIT_SETS = {"any": "Exits.any", (0, 2): "Exits.ok_or_refused",
             (0, 2, REJECTED): "(cons (stdpp.bitvector.definitions.Z_to_bv _ %d%%Z) Exits.ok_or_refused)" % REJECTED}


class ShapeError(ValueError):
    pass


def exits_key(exits):
    return "any" if exits == "any" else tuple(sorted(set(exits)))


def image(build):
    return "Images." + names.BUILD_IDENT[build]


def term(st):
    """(parameters, body) of the Definition for statement fields `st`.

    `parameters` is the text between the name and the colon ("" or
    " (b : Q)")."""
    kind, builds, reading = st["kind"], st["builds"], st["reading"]
    if kind == "halts":
        if len(builds) != 1:
            raise ShapeError("a halts statement names exactly one build")
        ex = EXIT_SETS.get(exits_key(st.get("exits", "any")))
        if ex is None:
            raise ShapeError("exit set %r has no name in Shapes.Exits" % (st.get("exits"),))
        if reading == "budget":
            return "", "halts_within_budget %s %s %s" % (HALTS_BUDGET[0], ex, image(builds[0]))
        if reading == "may-fail":
            return "", "halts_may_fail %s %s" % (ex, image(builds[0]))
        raise ShapeError("halts statements have the readings budget and may-fail")
    if len(builds) != 2 or builds[0] != "plain" or builds[1] not in names.BUILD_IDENT or builds[1] == "plain":
        raise ShapeError("a pair statement names [plain, <sanitizer build>]")
    if "exits" in st:
        raise ShapeError("only halts statements have exits")
    plain, san = image("plain"), image(builds[1])
    if kind == "agreement":
        key = (reading, st.get("abort", "error"), st.get("machine", "rv64g"))
        shape = AGREEMENT.get(key)
        if shape is None:
            raise ShapeError("no agreement shape for reading/abort/machine %r" % (key,))
        if "budgets" not in st:
            raise ShapeError("an agreement statement names its budgets")
        mod = BUDGETS[st["budgets"]][0]
        env = (ENV[reading] + " ") if reading == "alloc-forced-only" else ""
        return "", "%s %s%s.lim_source %s.lim_target %s %s" % (shape, env, mod, mod, plain, san)
    for k in ("budgets", "abort"):
        if k in st:
            raise ShapeError("%s applies to agreement statements only" % k)
    if reading not in ENV:
        raise ShapeError("pair statements have the readings may-fail and alloc-forced-only")
    gc = "_rv64gc" if st.get("machine") == "rv64gc" else ""
    if kind == "bound":
        return " (b : Q)", "disagrees_at_most%s %s Distribution.w Distribution.M %s %s b" % (gc, ENV[reading], plain, san)
    if kind == "decidability":
        return "", "agreement_decidable%s %s %s %s" % (gc, ENV[reading], plain, san)
    raise ShapeError("unknown kind %r" % kind)


READING_ENV = {"may-fail": "may_fail", "alloc-forced-only": "alloc_forced_only", "budget": "forced_only"}


def shape_name(st):
    """The Shapes.v definition a statement uses."""
    return term(st)[1].split()[0]


def templates(reading, san, with_distribution, machine="rv64g"):
    """The Characterise.v definitions for one (plain, san) pair: [(name, params, body)]."""
    s = names.BUILD_IDENT[san]
    gc = "_rv64gc" if machine == "rv64gc" else ""
    out = [("%s_classifies" % s, " (C : Image)",
            "classifies%s %s %s %s C" % (gc, ENV[reading], image("plain"), image(san)))]
    if with_distribution:
        out.append(("%s_classifier_rejects_at_most" % s, " (C : Image) (b : Q)",
                    "classifier_rejects_at_most C Distribution.w Distribution.M b"))
    return out


# The status a Rust fuzz target exits with when it panics: the OSS Verify port's panic hook ends the process with it
# (docs/running.md), where a libFuzzer build would abort().
RUST_PANIC_STATUS = 79


def binds(check, st):
    """Does a failure of `check` contradict halts statement `st`?

    Computed, never read: a check that stops by abort, assert, trap or throw
    contradicts every halts statement; one that stops by exit(n), or by a Rust
    panic, which exits with status 79, only a halts statement whose exit set
    leaves out that status; a print-only or return-only check contradicts
    nothing.  Only checks observed live in the binaries count."""
    if st["kind"] != "halts" or check["live"] is not True:
        return False
    stop = check["stops_with"]
    if stop in ("abort", "assert", "trap", "throw"):
        return True
    if stop in ("exit", "panic"):
        exits = st.get("exits", "any")
        status = RUST_PANIC_STATUS if stop == "panic" else check.get("exit_status")
        return exits != "any" and status not in exits
    return False
