# fn_803D6618 - BFIN: helper (0x90)
# NOTE: attempted real-C++ promotion FIVE times across 2 sessions.
# Attempts 1-2 (original): field234 cached in a local got a pure
# register-numbering swap (retail: r6=field234/r5=obj; mine: r5=
# field234/r6=obj) isolated to the "if" arm; re-reading this->0x234
# directly at both use sites (no cached local) made it WORSE (extra
# reload, +4 bytes, cascading shift).
# Attempts 3-5 (this session, after finding real global lbl_8053AB10's
# exact size via symbols.txt): duplicating the "obj" lookup separately
# inside EACH branch (matching retail's actual per-branch redundant
# load) PLUS writing the tail's post-decrement zero-check via a genuine
# reload (not a cached local) - matching the "this-relative repeated
# reads are safe to write literally" rule - fixed the BLOCK LAYOUT
# completely (byte-identical branch structure, fall-through/jump-target
# order all correct) and the ENTIRE TAIL HALF now matches byte-for-byte.
# The ONLY remaining diff is the same r5/r6 register-numbering swap
# from attempts 1-2 - confirmed INDEPENDENT of source variable
# declaration order (tried field234-before-obj and obj-before-field234,
# both gave identical wrong output) and independent of which branch is
# written first in source (tried both). This is now conclusively a
# pure MWCC register-allocator preference not reachable from any
# source-level restructuring tried - same "hard, allocator-internal"
# category as the float-register-allocation cases (fn_8021FB44) and
# RusaRegistry_GetOrInit's integer-immediate-order swap, just for a
# branch-survives-into vs computed-after-branch temp pair instead of
# 2 floats or 2 immediates. See project_fsa_phase4_kickoff.md.
.text
.balign 4
.global fn_803D6618

fn_803D6618:
    lwz 6, 0x234(3)
    cmpwi 6, -0x1
    .4byte 0x41820030 # beq .L_803D6650
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 5, 0x24(4)
    lbz 0, 0x7f5(5)
    cmplwi 0, 0x0
    .4byte 0x40820048 # bne .L_803D667C
    li 4, 0x1
    li 0, 0x0
    stb 4, 0x7f4(5)
    stw 6, 0x7f8(5)
    stb 0, 0x7f6(5)
    .4byte 0x48000030 # b .L_803D667C
L_803D6650:
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 5, 0x24(4)
    lbz 0, 0x7f5(5)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_803D667C
    li 0, 0x1
    li 4, -0x1
    stb 0, 0x7f4(5)
    li 0, 0x0
    stw 4, 0x7f8(5)
    stb 0, 0x7f6(5)
L_803D667C:
    lwz 4, 0x23c(3)
    cmpwi 4, 0x0
    blelr
    subi 0, 4, 0x1
    stw 0, 0x23c(3)
    lwz 0, 0x23c(3)
    cmpwi 0, 0x0
    bnelr
    li 0, 0x6
    stw 0, 0x230(3)
    blr
