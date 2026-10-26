fixtures/tree is a small tree in the public layout, used by the tests of tools/oft.  Everything in it is a
stand-in written for the tests: the build digests and sizes, the patch, the witness, the statuses, the
harness sources, the distribution body and theories/*.v.  fixtures/findings is a findings/ directory that
the tests lay over a copy of it (helpers.add_findings): one stand-in finding of zlib/checksum_fuzzer, its
runs, its patch and the unpatched binaries' pins.  None of it describes a real build or a real finding.
