"""The template mechanism: named text blocks with $placeholders.

A template file is a sequence of blocks, each starting with a line
`@@ <name>`; lines before the first block are comments for the reader and
are not rendered.  A block is a string.Template ($name, ${name}, $$ for a
dollar sign).  All prose lives in the template files; Python only chooses
blocks and supplies values.

Prose blocks are written one paragraph per line.  `wrap` breaks them to
the page width: a line starting with "- " is a bullet, a line starting with
two spaces is kept as it is, and a blank line separates paragraphs.
"""
import os
import re
import string
import textwrap

HERE = os.path.dirname(os.path.abspath(__file__))
_CACHE = {}


class TemplateError(KeyError):
    pass


def blocks(name):
    """{block name: string.Template} for tools/oft/templates/<name>."""
    if name not in _CACHE:
        out, cur, lines = {}, None, []
        with open(os.path.join(HERE, "templates", name), encoding="utf-8") as f:
            for line in f.read().split("\n"):
                if line.startswith("@@ "):
                    if cur is not None:
                        out[cur] = "\n".join(lines).rstrip("\n")
                    cur, lines = line[3:].strip(), []
                elif cur is not None:
                    lines.append(line)
        if cur is not None:
            out[cur] = "\n".join(lines).rstrip("\n")
        _CACHE[name] = {k: string.Template(v) for k, v in out.items()}
    return _CACHE[name]


def fill(template, block, **values):
    try:
        return blocks(template)[block].substitute(values)
    except KeyError as e:
        raise TemplateError("%s/%s: no value for %s" % (template, block, e)) from None


def wrap(text, width=80, indent=""):
    """Break one-paragraph-per-line prose to `width` columns."""
    out = []
    for line in text.split("\n"):
        if not line.strip():
            out.append("")
        elif line.startswith("  "):
            out.append((indent + line).rstrip())
        elif line.startswith("- "):
            out.extend(textwrap.wrap(line, width, initial_indent=indent,
                                     subsequent_indent=indent + "  ", break_on_hyphens=False,
                                     break_long_words=False))
        else:
            out.extend(textwrap.wrap(line, width, initial_indent=indent, subsequent_indent=indent,
                                     break_on_hyphens=False, break_long_words=False))
    while out and not out[-1]:
        out.pop()
    return "\n".join(out)


def rocq_comment_text(s):
    """Text that is safe inside a Rocq comment: no comment brackets, and no
    double quote (Rocq lexes strings inside comments, so a lone one would
    swallow the rest of the file)."""
    return s.replace("(*", "( *").replace("*)", "* )").replace('"', "''")


def md_cell(s):
    return re.sub(r"\s+", " ", s).replace("|", "\\|").strip()


def join_words(items, conj="and"):
    items = list(items)
    if len(items) <= 1:
        return "".join(items)
    if len(items) == 2:
        return "%s %s %s" % (items[0], conj, items[1])
    return "%s %s %s" % (", ".join(items[:-1]), conj, items[-1])


def lower_first(s):
    """'For every chunk' -> 'for every chunk'; 'CRC-32 of x' is left alone."""
    return s[:1].lower() + s[1:] if s[1:2].islower() else s


def plural(n, one, many):
    """'1 patch' / '2 patches'."""
    return "%s %s" % (thousands(n), one if n == 1 else many)


def human_bytes(n):
    for unit, size in (("GB", 10 ** 9), ("MB", 10 ** 6), ("KB", 10 ** 3)):
        if n >= size:
            v = n / size
            return ("%.1f %s" % (v, unit)) if v < 10 else ("%d %s" % (round(v), unit))
    return "%d B" % n


def thousands(n):
    return "{:,}".format(n)
