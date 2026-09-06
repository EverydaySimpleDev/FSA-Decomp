# A self-contained pair sharing one 0xb8-byte block (no extab):
# - Slk2_ResetBlock0x0(this): trivial single zero at +0x0 - the RESET/init half
#   of this pair. Embedded by SLK2 at its own +0x524 (see
#   extab_801c573c.s). Now real C++ in Game/stub_80215864.cpp.
# - fn_802157B8(this, mode) -> void: the UPDATE half - sets OR-flag bits
#   into the SAME +0x0 field based on `mode` thresholds (mode<5 sets
#   0x48, mode<6 additionally sets 0x10, else sets 0x20), then for mode
#   0-7 dispatches through `jumptable_804A64C0` to one of several small
#   tail blocks that each OR a further fixed bit pattern into +0x0
#   (0x1100/0x404/0xb00/0x404/0x7 seen) - a flag-accumulation state
#   machine keyed by an input mode/phase value.
#
# NOTE: attempted real-C++ promotion as a threshold-cascade + switch
# statement - the FIRST natural-C++ jump-table test this session. The
# threshold-cascade portion (the first ~0x40 bytes) matched retail
# BYTE-FOR-BYTE on the first attempt - genuinely encouraging. The
# switch-statement dispatch, however, FAILED for a structural reason
# with no simple fix: MWCC synthesizes its OWN NEW jump-table data
# object for a compiled switch statement, placed at a compiler-chosen
# address in its own .data output - it does NOT and structurally CANNOT
# reuse retail's exact original `jumptable_804A64C0` symbol/address.
# The reconstructed case-to-target mapping (read directly from retail's
# jumptable_804A64C0 bytes at 0x804A64C0) was verified correct - mode
# 0/2/4 map to a shared no-op (jumping straight to a trailing `blr`,
# skipping the lwz/ori/stw body), mode1->|=0x1100, mode3->|=0x404,
# mode5->|=0xb00, mode6->|=0x404 (separate code copy), mode7->|=0x7 -
# but this correct LOGIC can never produce byte-identical machine code
# via a switch statement, since the underlying jump-table DATA itself
# is a distinct compiler-generated artifact. Left as raw asm - this is
# a durable, structural limitation of the switch-statement approach for
# any function whose retail form used a real jump table, not just this
# one. See project_fsa_phase4_kickoff.md.
.text
.balign 4
.global fn_802157B8

fn_802157B8:
    lwz 0, 0x0(3)
    clrlwi 5, 4, 24
    cmplwi 5, 0x5
    ori 0, 0, 0x48
    stw 0, 0x0(3)
    .4byte 0x41800024 # blt .L_802157F0
    lwz 0, 0x0(3)
    cmplwi 5, 0x6
    ori 0, 0, 0x10
    stw 0, 0x0(3)
    .4byte 0x41800010 # blt .L_802157F0
    lwz 0, 0x0(3)
    ori 0, 0, 0x20
    stw 0, 0x0(3)
L_802157F0:
    clrlwi 0, 4, 24
    cmplwi 0, 0x7
    bgtlr
    lis 4, jumptable_804A64C0@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804A64C0@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    lwz 0, 0x0(3)
    ori 0, 0, 0x1100
    stw 0, 0x0(3)
    blr
    lwz 0, 0x0(3)
    ori 0, 0, 0x404
    stw 0, 0x0(3)
    blr
    lwz 0, 0x0(3)
    ori 0, 0, 0xb00
    stw 0, 0x0(3)
    blr
    lwz 0, 0x0(3)
    ori 0, 0, 0x404
    stw 0, 0x0(3)
    blr
    lwz 0, 0x0(3)
    ori 0, 0, 0x7
    stw 0, 0x0(3)
    blr
