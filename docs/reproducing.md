# Reproducing the binaries

Each binary is pinned by its SHA-256 in its `harness.yaml`; `./oft fetch` and
`./oft verify-sha` check every file against it.

The build that produced the binaries is described on each project page: the
library's repository and commit (or release archive), its build system, the
compiler version and what each harness build changes. For a binary that a
proof is about, the build record in `proofs/<project>/<harness>/provenance/`
gives all of this in one place, with the flags and the result of an
independent rebuild ([building.md](building.md#where-a-binary-comes-from)).

## What a release attaches

- `<project>-bin.tar.zst`: the project's binaries. A file of 2 GiB or more is
  attached as numbered parts instead, `<project>-bin.tar.zst.000`, `.001`, ...,
  each with its own SHA-256 on the project page; `cat` of them in order is the
  file, and `oft fetch` downloads, checks and joins them for you.
- `<project>-src.tar.zst`, for most projects: the upstream source trees that
  the project's binaries were built from, exactly as upstream publishes them,
  before any patch. Every file in it is an upstream git blob or a file with the
  SHA-256 that its pin declares. `<project>-src.MANIFEST.tsv`, beside it, names
  each tree's repository and commit (or SHA-256) and the directory that the
  build lays it down in. Two projects, coturn and mosquitto, have no source
  archive in this release; their pages name the upstream repository and
  commit.
- The recipe archive, one per release (the file that `release.yaml` names under
  `recipe`): the build scripts, the pins, the harness copies that were adapted
  for the build, the patches applied before each build (`patches/series.tsv`
  gives the order) and the driver linked into every binary (`src/`). An
  unmodified harness is in the project's source archive. The recipe's
  `README.md` says how the pieces fit together.

Two more source archives are release-wide, in the GitHub release that
release.yaml's `sources` names:

- `toolchain-src.tar.zst`: the source of the toolchain that built every binary:
  musl, the LLVM runtimes, and static-asan's patches and Dockerfile. Its
  `build.sh` builds the compiler image from these files, the Alpine 3.22 base
  image (pinned by digest) and Alpine packages, among them clang, lld and llvm
  20.1.8 (pinned by version series).
- `sysroot-src.tar.zst`: the source of every library that a copyleft binary
  links from the build image. release.yaml's `image_libraries` lists each such
  library with its licence. The Dockerfile that adds these libraries to the
  builder image is not in this release.

A GitHub release holds at most 1,000 files, so a release may put the source
assets, their MANIFESTs and the recipe in a second GitHub release,
`v<release>-src`, beside `v<release>` with the binaries. Each project page links
the release that each file is in, and `./oft fetch` takes each file from the
release that the facts name for it.

## Rebuild a binary

1. Unpack the recipe archive. Its `recipe/` directory is the build's `/work`.
2. Lay down each tree of the project's source archive where its MANIFEST says.
   For a project with no source archive, use the upstream repository at the
   commit that its page names.
3. Put each row of kind `upstream` in the recipe's `MANIFEST.tsv` at its path.
4. Apply the target's patches in `patches/series.tsv` order.
5. Run `tools/build-body.sh` in the builder image, with the environment that
   `tools/build-env.tsv` gives, and with the network off.

Some builds run a riscv64 program that they have just compiled. For example,
the varnish build runs its `vhp_gen_hufdec` helper, and the thrift build runs
its own code generator. For these builds, the build host needs a riscv64
handler registered with `binfmt_misc` (for example from the
`qemu-user-static` package). Without one, every build of such a target fails.

The project page names the builder image, and the release's `release.yaml`
names the recipe. A binary whose SHA-256 differs after such a rebuild is a bug:
please open an issue.

## Copyleft binaries

A binary under a GPL or LGPL licence is attached only together with its
complete corresponding source: its project's source archive and MANIFEST, the
release's recipe archive, `toolchain-src.tar.zst` and, if it links libraries
from the build image, `sysroot-src.tar.zst` ([licensing.md](licensing.md)). The
project page of such a binary names `toolchain-src.tar.zst`, and also
`sysroot-src.tar.zst` when the binary links a library from the build image.
Until these are attached, such binaries, and the statements about them, are
withheld. Some other builds are not in this release yet either; their pages say
so.

The builder images that release.yaml names (`images.builder`: the image that
the binaries were built in, then the compiler image that it is composed from)
are on ghcr.io.
