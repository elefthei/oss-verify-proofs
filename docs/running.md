# Running the binaries

Each binary is a static riscv64 (RV64G) Linux program linked against musl. Run it
under qemu-user 10.0.11, which the runner image pins and CI uses. Earlier qemu
releases fail on the AddressSanitizer builds.

    ./oft fetch zlib                                  # into projects/zlib/bin/, every file SHA-256 checked
    qemu-riscv64 projects/zlib/bin/checksum_fuzzer/checksum_fuzzer.plain input.bin

## The input file

Every build is run as `<file> <input-file>`. A small driver linked into every
build reads the input file whole and splits it as

    [u16 config word][config bytes][u32 allocation mask][payload]

with both integers little-endian. The low 15 bits of the config word are the
config length. The driver calls the fuzz target (`LLVMFuzzerTestOneInput`) on the
payload `(config[0] & 3) + 1` times, once when there is no config, and prints
each return value. An OSS-Fuzz testcase therefore needs the six bytes
`00 00 00 00 00 00` in front of it: no config, no allocation mask.

The OSS-Fuzz harness binaries ignore the allocation mask. The mask is for API
drivers that make chosen allocations fail, and no API driver is in this
release. Bit 15 of the config word turns on counting mode
([theories/Driver.v](../theories/Driver.v)). The OSS-Fuzz harness binaries count
no allocations, so in counting mode they exit with status 0.

[theories/Driver.v](../theories/Driver.v) writes this format down in Rocq.

## Exit statuses

| status | meaning |
|---:|---|
| 0 | every harness call returned 0 or -1 |
| 2 | the driver refused the input without calling the harness: a wrong argument count, a missing or unreadable input file, a file shorter than its header or of 64 MiB or more, or no memory before the first call |
| 77 | the harness called `exit()` |
| 78 | a harness call returned a value other than 0 or -1 |
| 134 | `abort()`: a failed `assert()`, an AddressSanitizer report or an uncaught C++ exception |
| 132 | `SIGILL`: a failed UndefinedBehaviorSanitizer check, which traps in these builds |
| 139 | `SIGSEGV`: a crash |

AddressSanitizer reports are not printed: a detection aborts with status 134
and no text.

## AddressSanitizer builds need address space

At start-up the AddressSanitizer runtime reserves about 14 TiB of address space
for its shadow memory and 128 GiB for its allocator. If a reservation is
refused, for example under a shell limit set with `ulimit -v`, the runtime
spins forever and uses CPU, rather than exit. So a run that seems to hang may be
a starved start-up. Run the ASan builds with no address-space limit, and with a
timeout. LPS defines which resource limits a valid input may set
([semantics.md](semantics.md)).

## What differs from OSS-Fuzz's builds

- The target is riscv64, statically linked against musl. The recipe compiles
  with `-Os`; a library's own build system may add flags, for example `-O3
  -DNDEBUG` in a CMake `Release` build ([building.md](building.md#compiler-and-flags)).
- The sanitizer runtimes are configured differently ([building.md](building.md)):
  UndefinedBehaviorSanitizer runs in trap mode with clang's `undefined` checks
  except `function` and `vptr`; AddressSanitizer is a sealed static runtime that ignores
  `ASAN_OPTIONS`, returns NULL from `malloc` when memory is refused
  (`allocator_may_return_null=1`), aborts silently on a detection, and has leak
  detection off. A leak is a finding in OSS-Fuzz and not an error here.
- A small driver, not libFuzzer, reads the input file and calls the fuzz target.
- Where a library would read the environment, the process id or a random file
  name, its builds replace `getenv()` (it returns NULL), `getpid()` (it returns 1)
  or `mkstemp()` (it uses a fixed name), so that the program depends only on its
  input file.

Each harness page says which of these its builds use, and lists anything else
that differs from what OSS-Fuzz runs.
