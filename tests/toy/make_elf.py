#!/usr/bin/env python3
"""Write one of the toy test binaries: a static riscv64 Linux ELF of 132 or 136 bytes.

    python3 make_elf.py <name> <out-file>

Each is one PT_LOAD segment (read + execute) at 0x10000 holding the ELF
header, the program header and a few instructions:

    exit0:      addi a0, zero, 0 ; addi a7, zero, 94 ; ecall        # exit_group(0)
    exit0_nop:  nop ; addi a0, zero, 0 ; addi a7, zero, 94 ; ecall  # the same, one step later
    exit1:      addi a0, zero, 1 ; addi a7, zero, 94 ; ecall        # exit_group(1)

The bytes are a pure function of <name>, so the SHA-256 recorded beside each
toy is a fact about this script.  Written for this repository (MIT).
"""
import struct
import sys

BASE = 0x10000
EHDR_SIZE = 64
PHDR_SIZE = 56
EM_RISCV = 243
ET_EXEC = 2
PT_LOAD = 1
PF_X, PF_R = 1, 4


def addi(rd, rs1, imm):
    """RV64I ADDI rd, rs1, imm."""
    return ((imm & 0xFFF) << 20) | (rs1 << 15) | (0 << 12) | (rd << 7) | 0x13


ECALL = 0x00000073
A0, A7, ZERO = 10, 17, 0
PROGRAMS = {
    "exit0": [addi(A0, ZERO, 0), addi(A7, ZERO, 94), ECALL],
    "exit0_nop": [addi(ZERO, ZERO, 0), addi(A0, ZERO, 0), addi(A7, ZERO, 94), ECALL],
    "exit1": [addi(A0, ZERO, 1), addi(A7, ZERO, 94), ECALL],
}


def elf(program):
    text = b"".join(struct.pack("<I", insn) for insn in program)
    size = EHDR_SIZE + PHDR_SIZE + len(text)
    entry = BASE + EHDR_SIZE + PHDR_SIZE
    ident = b"\x7fELF" + bytes([2, 1, 1, 0]) + bytes(8)  # 64-bit, little-endian, SysV
    ehdr = ident + struct.pack(
        "<HHIQQQIHHHHHH",
        ET_EXEC, EM_RISCV, 1,     # type, machine, version
        entry, EHDR_SIZE, 0,      # entry, program headers, no section headers
        4,                        # flags: double-float ABI, as RV64G builds
        EHDR_SIZE, PHDR_SIZE, 1,  # header size, program header size and count
        64, 0, 0)                 # section header size (qemu checks it), no sections
    phdr = struct.pack(
        "<IIQQQQQQ",
        PT_LOAD, PF_R | PF_X,
        0, BASE, BASE,            # offset, vaddr, paddr
        size, size, 0x1000)       # filesz, memsz, align
    out = ehdr + phdr + text
    assert len(out) == size
    return out


def main():
    if len(sys.argv) != 3 or sys.argv[1] not in PROGRAMS:
        sys.exit("usage: make_elf.py {%s} OUT" % ",".join(sorted(PROGRAMS)))
    with open(sys.argv[2], "wb") as f:
        f.write(elf(PROGRAMS[sys.argv[1]]))


if __name__ == "__main__":
    main()
