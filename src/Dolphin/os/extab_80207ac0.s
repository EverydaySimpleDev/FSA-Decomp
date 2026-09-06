.section extab, "a"
.balign 4
.global etb_80009CFC
etb_80009CFC:
    .4byte 0x08080000
    .4byte 0x00000054
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_801B7E1C
.size etb_80009CFC, 28

.section extabindex, "a"
.balign 4
.global eti_800176E0
eti_800176E0:
    .4byte fn_80207AC0
    .4byte 0x0000006C
    .4byte etb_80009CFC
.size eti_800176E0, 12

# fn_80207AC0 - a shared INTERMEDIATE Actor-derived base class
# constructor, no 4-char dispatch code of its own. Calls the shared base
# fn_801D0F40 (see extab_801d0f40.s), installs its OWN vtable
# lbl_804A5B28, sets 3 flag bytes + 1 int to 0 at +0x2a8..+0x2ac, then
# constructs a 4-element array of small POD records (fn_80207B2C, 0x24
# bytes each) at +0x2b0 via the confirmed __construct_array
# (__construct_array-shaped helper, see project_fsa_actor_cluster_80203xxx.md).
# Each record (see extab_80207b2c.s) looks like a tracked-slot entry: two
# -1-initialized ID fields, a flag byte, and a few float defaults -
# plausibly a small fixed-size pool of sub-targets/attachments. Shared by
# SLMN and BRMN.
#
# Attempted real-C++ promotion: the .text bytes themselves matched, but
# retail's extab entry for this function is a 28-byte EXTENDED unwind
# record (referencing dtor_801B7E1C as an exception-cleanup handler for
# the __construct_array call), while a real C++ __construct_array call
# compiled by MWCC produced only a plain 8-byte extab entry - the
# compiler didn't regenerate the same exception-safety cleanup metadata.
# Since dtk/mwld's per-object layout counts extab size when placing
# subsequent sections, this 20-byte SHORTFALL silently shifted the
# address of EVERY later section in the whole binary (confirmed via the
# DOL header: built .text1 address was 0x20 bytes earlier than retail's)
# - a new variant of the "wrong-sized function shifts everything after
# it" issue, this time in extab/exception metadata rather than .text
# size. Reverted to raw asm without further attempts given the
# complexity of reproducing MWCC's own internal exception-table
# generation heuristics.
.text
.balign 4
.global fn_80207AC0

fn_80207AC0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0F40
    lis 4, lbl_804A5B28@ha
    li 0, 0x0
    addi 4, 4, lbl_804A5B28@l
    lis 3, fn_80207B2C@ha
    stw 4, 0x0(31)
    addi 4, 3, fn_80207B2C@l
    addi 3, 31, 0x2b0
    li 5, 0x0
    stb 0, 0x2a8(31)
    li 6, 0x24
    li 7, 0x4
    stb 0, 0x2a9(31)
    stb 0, 0x2aa(31)
    stw 0, 0x2ac(31)
    bl __construct_array
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
