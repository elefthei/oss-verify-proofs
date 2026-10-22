# The runner image: qemu-user 10 and this repository's tools (tools/oft), for
# running counterexamples and their controls.  Nothing else: no compiler, no
# Rocq, no proof automation.
#
#   docker build -f toolchain/runner.Dockerfile \
#       --build-context oft-tools=tools/oft --build-context oft-toy=tests/toy \
#       toolchain/
#
#   docker run --rm -v "$PWD:/work" <image> qemu-riscv64 <binary> input.bin
#   docker run --rm -v "$PWD:/work" <image> oft check <project>/<harness> --parts counterexamples
#
# Every input is pinned: the base image by digest, the Debian packages by a
# dated snapshot of the Debian archive, qemu-user by the SHA-256 of its
# package, and PyYAML by the hashes in tools/oft/requirements.txt.  The tools
# are copied from the checkout that builds the image, and
# /opt/oss-fuzz-theorems/TOOLS.sha256 records which: the same hash over the
# files of tools/oft in a checkout is
#   (cd tools/oft && find . -type f -printf '%P\n' | LC_ALL=C sort \
#      | xargs -d '\n' -r sha256sum | sha256sum)
#
# qemu-user is Debian's 1:10.0.11+ds-0+deb13u1, whose qemu-riscv64 is a single
# static binary.  Earlier qemu releases fail on the AddressSanitizer builds
# (docs/running.md).

ARG DEBIAN_BASE=debian:trixie-slim@sha256:a99cfc517144bc59b1978475ec53b46ecabec7e43635402ee5b77cc54cd1b20a
ARG DEBIAN_SNAPSHOT=20261001T000000Z

# ---- inputs -----------------------------------------------------------------

FROM ${DEBIAN_BASE} AS debian
ARG DEBIAN_SNAPSHOT
SHELL ["/bin/bash", "-euo", "pipefail", "-c"]
ENV DEBIAN_FRONTEND=noninteractive
# The archive as it was at DEBIAN_SNAPSHOT, and nothing newer.  apt checks
# every index against the archive's signing key, which the base image carries.
RUN printf '%s\n' 'Types: deb' "URIs: http://snapshot.debian.org/archive/debian/${DEBIAN_SNAPSHOT:?}" \
      'Suites: trixie' 'Components: main' 'Check-Valid-Until: no' \
      'Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg' > /etc/apt/sources.list.d/debian.sources

FROM scratch AS qemu-deb
ADD --checksum=sha256:6b6fea55551fbcc1eb30e146ad5abdfbb49f8fa8c5998016242126de4d7f80df \
    https://snapshot.debian.org/file/a0eaa62f815efb2361d43b1e3f8011c17ad9123a /qemu-user_10.0.11+ds-0+deb13u1_amd64.deb

# Must be supplied (see above).
FROM scratch AS oft-tools
FROM scratch AS oft-toy

FROM debian AS pydeps
RUN --mount=type=tmpfs,target=/var/lib/apt/lists --mount=type=tmpfs,target=/var/cache/apt \
    apt-get update && apt-get install -y --no-install-recommends python3-pip
RUN --mount=type=bind,from=oft-tools,target=/mnt/oft \
    python3 -m pip install --quiet --no-cache-dir --no-deps --only-binary=:all: --require-hashes \
      --target /pydeps -r /mnt/oft/requirements.txt

# ---- the image --------------------------------------------------------------

FROM debian AS runner
RUN --mount=type=tmpfs,target=/var/lib/apt/lists --mount=type=tmpfs,target=/var/cache/apt \
    apt-get update && apt-get install -y --no-install-recommends python3 zstd
RUN --mount=type=bind,from=qemu-deb,target=/mnt/deb \
    dpkg -i /mnt/deb/qemu-user_10.0.11+ds-0+deb13u1_amd64.deb
COPY --from=pydeps /pydeps/ /opt/oss-fuzz-theorems/pydeps/
COPY --from=oft-tools / /opt/oss-fuzz-theorems/tools/oft/
RUN printf '%s\n' '#!/bin/sh' \
      '# oft <command> [...]: the tools of oss-fuzz-theorems, as copied into this image.' \
      'PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=/opt/oss-fuzz-theorems/tools:/opt/oss-fuzz-theorems/pydeps exec python3 -m oft "$@"' \
      > /usr/local/bin/oft && \
    chmod 755 /usr/local/bin/oft && \
    cd /opt/oss-fuzz-theorems/tools/oft && \
    find . -type f -printf '%P\n' | LC_ALL=C sort | xargs -d '\n' -r sha256sum | sha256sum | awk '{print $1}' \
      > /opt/oss-fuzz-theorems/TOOLS.sha256 && \
    echo "tools/oft tree sha256: $(cat /opt/oss-fuzz-theorems/TOOLS.sha256)"

# Self-test in the finished image: qemu is the pinned 10.0 release; the three
# toy programs of tests/toy are written, match the SHA-256 recorded beside
# them, and exit under qemu with the status their statements predict (0, 0
# and 1, so a qemu that exits 0 on everything fails); PyYAML is the pinned
# version; and the tools' own tests pass under this Python.
RUN --network=none --mount=type=bind,from=oft-toy,target=/mnt/toy \
    mkdir -p /tmp/selftest && cd /tmp/selftest && \
    qemu-riscv64 --version | tee versions.txt && python3 --version | tee -a versions.txt && \
    grep -q '^qemu-riscv64 version 10\.0\.11 ' versions.txt && \
    echo '44076c56382fea0cca26fb4ec1ab688fcc59573d87de1094d664f37915ac8d72  /usr/bin/qemu-riscv64' | sha256sum -c - && \
    python3 /mnt/toy/make_elf.py exit0 exit0.plain && \
    python3 /mnt/toy/make_elf.py exit0_nop exit0.padded && \
    python3 /mnt/toy/make_elf.py exit1 exit1.plain && \
    sha256sum -c /mnt/toy/exit0/exit0.plain.sha256 /mnt/toy/exit0/exit0.padded.sha256 /mnt/toy/exit1/exit1.plain.sha256 && \
    chmod 755 exit0.plain exit0.padded exit1.plain && \
    for t in exit0.plain:0 exit0.padded:0 exit1.plain:1; do \
      rc=0; env -i /usr/bin/qemu-riscv64 "./${t%%:*}" input.bin || rc=$?; \
      echo "${t%%:*} under qemu-riscv64: exit ${rc}"; test "${rc}" = "${t##*:}"; \
    done
# One test of the tools is left out here: it lints the checkout around
# tools/oft, and the image holds only tools/oft.
RUN --network=none <<'EOF'
set -euo pipefail
PYTHONPATH=/opt/oss-fuzz-theorems/pydeps python3 -c \
  'import yaml, sys; sys.exit(0 if yaml.__version__ == "6.0.3" else "PyYAML " + yaml.__version__)'
oft --help > /dev/null
cd /opt/oss-fuzz-theorems/tools
PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=/opt/oss-fuzz-theorems/tools:/opt/oss-fuzz-theorems/pydeps python3 - <<'PY'
import sys
import unittest
SKIP = "oft.tests.test_lint.Clean.test_this_repository_is_clean"
def flat(suite):
    for t in suite:
        yield from (flat(t) if isinstance(t, unittest.TestSuite) else [t])
tests = list(flat(unittest.defaultTestLoader.discover("oft/tests", top_level_dir=".")))
kept = [t for t in tests if t.id() != SKIP]
if len(tests) - len(kept) != 1:
    sys.exit("expected to leave out exactly %s" % SKIP)
r = unittest.TextTestRunner(verbosity=1).run(unittest.TestSuite(kept))
print("tools/oft tests: %d of %d run, all passed: %s" % (r.testsRun, len(tests), r.wasSuccessful()))
sys.exit(0 if r.wasSuccessful() and r.testsRun == len(kept) > 0 else 1)
PY
echo "runner image self-test: pass"
EOF

LABEL org.opencontainers.image.title="oss-fuzz-theorems runner" \
      org.opencontainers.image.description="qemu-user 10.0.11 and the oss-fuzz-theorems tools"
WORKDIR /work
ENTRYPOINT []
CMD ["bash"]
