# How the binaries are built

This page describes the binaries of this release: the ones that the statements
under `projects/` and the proofs under `proofs/` are about.

## Where a binary comes from

Each proof has a build record:
`proofs/<project>/<harness>/provenance/PROVENANCE.md`, written from
`PROVENANCE.yaml` beside it. It gives:

- the upstream repository and commit of the library;
- the OSS-Fuzz project directory and its commit;
- the entry point (the function that the driver calls, normally
  `LLVMFuzzerTestOneInput`) and the harness source file, with its origin and
  licence;
- the recipe (the recipe archive that the binaries were built with, with its
  SHA-256, and the target in it), and a copy of the files that this build uses,
  in `recipe/`; for a port-built project (`build.oss_verify` in its
  `project.yaml`), in place of the recipe, the OSS Verify port's build manifest
  (`port/manifest.yaml`) and its files for the project
  (`port/projects/<project>/`);
- the build system, the compiler, the builder image digest and the static
  AddressSanitizer commit;
- the file name, size and SHA-256 of each of the four builds;
- the licence of every component linked into the binaries, with the licence
  texts in `LICENSES/`;
- the result of an independent rebuild;
- the compiler and linker flags, as the recipe writes them, with the file and
  line of each.

For the statements without a proof, the harness page
(`projects/<project>/<harness>/README.md`) and the project page give the
library commit, the build system, the builder image and the SHA-256 of each
build. [reproducing.md](reproducing.md) tells you how to rebuild a binary.

Every build is run as `<file> <input-file>` ([running.md](running.md)).

## Compiler and flags

Every binary is a static riscv64 Linux program, compiled for RV64G
(`-march=rv64g -mabi=lp64d`) by clang 20.1.8 against musl, and linked with lld.
The four builds of a harness differ only in the sanitizer flags below. The
recipe gives these compile flags to all four builds:

    -march=rv64g -mabi=lp64d -Os -g -ffunction-sections -fdata-sections
    -fno-stack-protector -fno-plt -Wdate-time
    -fno-builtin-malloc -fno-builtin-calloc -fno-builtin-realloc -fno-builtin-reallocarray
    -fno-builtin-free -fno-builtin-aligned_alloc -fno-builtin-posix_memalign
    -fno-builtin-memalign -fno-builtin-valloc -fno-builtin-strdup -fno-builtin-strndup

The `-fno-builtin-*` flags keep the allocation functions ordinary calls in every
build, so that the optimiser cannot remove or merge an allocation in one build
and keep it in another.

Two more sets of flags are added:

- **The library's own build system** adds its flags after these. For example,
  a CMake `Release` build adds `-O3 -DNDEBUG`, so that library is optimised at
  `-O3` and its own `assert()` checks are compiled out. coturn, libpcap and
  boost-json build their libraries with CMake. The recipe compiles the fuzz
  target itself, with its own flags (`oft_build_harness`).
- **Release builds** (`OFT_RELEASE=1`, which the recipe's `tools/build-env.tsv`
  sets) add `-DOFT_RELEASE_BUILD=1`, and pairs of `-fmacro-prefix-map` and
  `-fdebug-prefix-map` flags that map each build directory to a fixed path
  under `/src/`. So `__FILE__` has the same spelling in all four builds, and a
  program that prints its own file names writes the same bytes in each. They
  also replace any `-march=rv*` flag that a library's build adds with
  `-march=rv64g`. The recipe's `tools/build-body.sh` writes these flags
  (lines 265-351).

Each proof's build record quotes the flags as the recipe writes them, with the
file and line of each, and the pin of its library.

## Which code is instrumented

The sanitizer flags are on the compile lines of the library and of the fuzz
target. The driver linked into every build (it reads the input file and calls
the fuzz target; [running.md](running.md)) is compiled the same way in all four
builds, without sanitizer flags. In the AddressSanitizer builds the driver still
allocates through the AddressSanitizer allocator, like everything else in the
process.

## The builds

| build | flags | a detected error |
|---|---|---|
| `plain` | none | - |
| `ubsan` | `-fsanitize=undefined -fno-sanitize-recover=all -fsanitize-trap=all -fno-sanitize=function` | an illegal instruction (SIGILL, status 132); there is no UBSan runtime and nothing is printed |
| `asan` | `-fsanitize=address`, and the statically linked AddressSanitizer runtime described below | `abort()` (SIGABRT, status 134); nothing is printed |
| `asan-ubsan` | both of the above | either |

### UndefinedBehaviorSanitizer checks

With the flags above, clang 20.1.8 enables exactly these checks, all in trap
mode (measured from the compiler's own expansion of the flags, for C and for
C++):

    alignment, array-bounds, bool, builtin, enum, float-cast-overflow,
    integer-divide-by-zero, nonnull-attribute, null, object-size,
    pointer-overflow, return, returns-nonnull-attribute, shift-base,
    shift-exponent, signed-integer-overflow, unreachable, vla-bound

Not included: `function` (switched off: unlike the others it needs type
metadata rather than an inline test), `vptr` (it needs a runtime, which trap
mode does not have), and the checks clang leaves out of `undefined` by default:
`unsigned-integer-overflow`, `implicit-conversion`, `local-bounds`,
`float-divide-by-zero` and the `nullability` checks. OSS-Fuzz's own UBSan list
differs: it includes `function`, `unsigned-integer-overflow` and `vptr`, and
leaves out `alignment`, `float-cast-overflow`, `nonnull-attribute` and
`pointer-overflow`.

### The AddressSanitizer runtime

The ASan builds link a modified, sealed AddressSanitizer runtime (compiler-rt
20) so that a run depends only on the program and its input:

- **It does not read `ASAN_OPTIONS`** or any other environment variable. Its
  options are fixed at build time.
- **`allocator_may_return_null=1`**, set by the driver: when the environment
  refuses memory to the allocator, `malloc` returns NULL, as it does in the plain
  build, instead of the runtime ending the process. `operator new` then behaves
  as libc++'s does on a refusal (it throws `std::bad_alloc`).
- **A detection aborts silently**: `abort_on_error` is on and reports are not
  printed, so a detected error ends the process by SIGABRT (status 134) with no
  output.
- **Leak detection is off** (`detect_leaks=0`). LeakSanitizer's exit-time check
  cannot run in this sealed configuration, so a leak is not an error in these
  builds, unlike in OSS-Fuzz's.
- The runtime installs no signal handlers and does not return memory to the
  system on a timer.
- At start-up it reserves address space: about 14 TiB for its shadow memory
  and 128 GiB for its allocator. If a reservation is refused, the runtime spins
  forever and uses CPU, instead of exiting ([running.md](running.md)). That is
  why no ASan build has a `_halts_may_fail` statement.

The runtime also leaves core dumps to the process's limits (`disable_coredump=0`;
compiler-rt's default on 64-bit is 1). Every other runtime option has its
compiler-rt 20 default.

The runtime and the C library of every ASan binary of this release were built
from the source that [static-asan](https://github.com/theorem-labs/static-asan)
publishes at commit
[`b05061352064`](https://github.com/theorem-labs/static-asan/commit/b05061352064fa2be1813ac5429149f3de5f057d).
Upstream LLVM cannot link ASan into a fully static musl binary. static-asan
has two parts: a patch series against musl and LLVM's compiler-rt that makes
this link work, and a Dockerfile that builds the toolchain. The Dockerfile
builds musl and the LLVM runtimes (compiler-rt, libunwind, libc++ and libc++abi)
from pinned sources (musl at a pinned commit, llvm-project `llvmorg-20.1.8`).
The compiler itself (clang, lld and llvm 20.1.8) comes from Alpine packages,
pinned by version series. A build of commit `b05061352064` gives the same musl
`libc.a` and compiler-rt builtins, byte for byte, as the toolchain that built
these binaries. Its ASan runtime archives differ only in their DWARF line
tables, and the link removes those (`--strip-all`). static-asan's README lists
each patch and the pinned versions, and shows this comparison. The release's
`toolchain-src.tar.zst` holds the same source.

### Code the sanitizers do not instrument

As in OSS-Fuzz's sanitizer builds, every build also links code that no
sanitizer instruments: ASan checks no load or store made inside it, and UBSan
inserts no check there. It is of three kinds:

- **The toolchain's runtimes**, in every build: the C library (musl) and its
  start-up objects, compiler-rt, the sanitizer runtime itself, the C++ runtime
  (libc++, libc++abi, libunwind) and, for Fortran code, the Fortran runtime.
- **Libraries from the build image** that a harness links as a dependency
  (for example zlib or OpenSSL from the image's sysroot), built once without
  instrumentation.
- **Hand-written assembly and Fortran** in a library: a compiler cannot add
  sanitizer checks to either. Such a member would be listed by name with its
  source file; no build of this release has one.

The `uninstrumented` list of each build in `harness.yaml`, shown in the
harness's README, says which of these its link took. A build without the list
has not recorded it in this release.

## Rust fuzz targets

The OSS Verify port builds a Rust fuzz target, a cargo-fuzz `[[bin]]`, in its
Rust toolchain image (`ghcr.io/theorem-labs/oss-fuzz-theorems-toolchain-rust`,
pinned in the port's `infra/toolchains.tsv`; release.yaml lists it in
`images.builder` once a release holds a Rust build): the C and C++ toolchain
image with rustc 1.90.0-nightly (2025-07-15) added. The fuzz target and every
crate it uses, the Rust standard library included (`-Zbuild-std`), are compiled
into one static library with the project's cargo release profile and
`panic = "abort"`, and linked with the driver as a C fuzz target is. A crate's
C code is compiled by clang with the flags of the build. The Rust flags of each
build are:

| build | Rust flags | a detected error |
|---|---|---|
| `plain` | `-Zub-checks=no` | - |
| `ubsan` | `-Zub-checks=yes` | a failed rustc UB check exits with status 79, below; UBSan in the C code traps, as above |
| `asan` | `-Zub-checks=no -Zsanitizer=address` | `abort()` (SIGABRT, status 134); nothing is printed |
| `asan-ubsan` | `-Zub-checks=yes -Zsanitizer=address` | either |

rustc's UB checks are the standard library's checks of the preconditions of its
unsafe functions (for example that the pointer given to
`slice::from_raw_parts` is aligned and not null), not clang's `undefined`
group. A failed one panics without unwinding. `panic = "abort"` means a panic
never unwinds, in every build, and the port's adapter (its `oft-rust-rt` crate
and `plugin_rust.h`) installs two hooks before `main`. A panic, a failed UB
check included, writes its source location on standard error and exits with
status 79; an allocation failure writes its size on standard error and exits
with status 2. A libFuzzer build would `abort()` in both cases; the hooks keep
SIGABRT the signal of an AddressSanitizer report. A project can
also turn on `-Cdebug-assertions` in all four builds; its harness page says
so. The standard library is compiled with each build's flags, so
AddressSanitizer instruments it like the rest of the Rust code.

The standard library compiled is not the stock one: it is the toolchain image's
sealed copy (its `seal-std.sh`), with two edits that remove a dependence on
state the process model does not describe. std's `HashMap` keys come from
`getrandom` with `GRND_NONBLOCK` rather than `GRND_INSECURE`, and
`available_parallelism()` returns 1 without reading cgroup files or CPU
affinity. A third edit, to standard output, is compiled in only for a build
that asks for it; each harness page lists the edits its builds carry.

## What this means for a statement

"Trips its sanitizer" in a statement means one of the checks above fails, in
the code they instrument. An error the configuration does not check (an
unsigned overflow, a leak, a use of uninitialised memory) does not falsify a
statement by itself.
