"""Strict YAML for the facts files.

Two differences from yaml.safe_load, both on purpose:

- a mapping that repeats a key is an error (PyYAML silently keeps the last);
- only plain scalars `true`, `false`, `null`/`~`/empty, decimal integers and
  decimal floats are typed.  Dates, `yes`/`no`/`on`/`off`, octal, hex and
  sexagesimal numbers stay strings, so `2026-11-02` is the string it looks
  like and a harness named `on` is not a boolean.

`dump` writes the canonical form the generator and the exporter both use:
block style, keys in the order given, no aliases, LF line ends.
"""
import re

import yaml


class YamlError(ValueError):
    pass


class StrictLoader(yaml.SafeLoader):
    pass


StrictLoader.yaml_implicit_resolvers = {}
StrictLoader.add_implicit_resolver(
    "tag:yaml.org,2002:bool", re.compile(r"^(?:true|false)$"), list("tf"))
StrictLoader.add_implicit_resolver(
    "tag:yaml.org,2002:null", re.compile(r"^(?:~|null|)$"), ["~", "n", ""])
StrictLoader.add_implicit_resolver(
    "tag:yaml.org,2002:int", re.compile(r"^-?(?:0|[1-9][0-9]*)$"), list("-0123456789"))
StrictLoader.add_implicit_resolver(
    "tag:yaml.org,2002:float", re.compile(r"^-?(?:0|[1-9][0-9]*)\.[0-9]+$"), list("-0123456789"))


def _mapping(loader, node, deep=False):
    loader.flatten_mapping(node)
    out = {}
    for key_node, value_node in node.value:
        key = loader.construct_object(key_node, deep=deep)
        if key in out:
            raise YamlError("duplicate key %r at line %d" % (key, key_node.start_mark.line + 1))
        out[key] = loader.construct_object(value_node, deep=deep)
    return out


StrictLoader.add_constructor(yaml.resolver.BaseResolver.DEFAULT_MAPPING_TAG, _mapping)


def load(text, where="<yaml>"):
    try:
        return yaml.load(text, Loader=StrictLoader)
    except YamlError as e:
        raise YamlError("%s: %s" % (where, e)) from None
    except yaml.YAMLError as e:
        raise YamlError("%s: %s" % (where, e)) from None


def load_file(path):
    with open(path, encoding="utf-8") as f:
        return load(f.read(), where=str(path))


class _Dumper(yaml.SafeDumper):
    def ignore_aliases(self, data):
        return True


def _str(dumper, s):
    style = "|" if "\n" in s else None
    return dumper.represent_scalar("tag:yaml.org,2002:str", s, style=style)


_Dumper.add_representer(str, _str)


def dump(data):
    return yaml.dump(data, Dumper=_Dumper, sort_keys=False, allow_unicode=True,
                     default_flow_style=False, width=100)
