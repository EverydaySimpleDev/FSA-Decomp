# fn_801DE9F4 (TINK, vtable lbl_804A51E4). Decrements this->0x2ce (16-bit
# countdown) if nonzero; once it reaches 0, checks state==7 and this->0x278
# in [0xf,0x11) to queue a rail/history-append via fn_801D22DC(&this->0x270,
# this->0x98, 2, 0); otherwise falls back to fn_801CE4BC().
#
# Attempted real-C++ promotion (Phase 4): logic/field-offsets/call-args all
# confirmed correct, but retail keeps a REDUNDANT unconditional branch
# (`b fallback`) after the `cmpwi 0xf`/`bge callD22DC` pair, where MWCC
# always optimizes the equivalent range-check away (either collapsing to a
# single `blt`, or reordering the two comparisons) - tried both the direct
# `>=0xf && <0x11` form and a goto-based reproduction matching retail's
# exact high-bound-first/low-bound-second comparison order; both landed 4
# bytes short (0x78 vs 0x7c). 2nd confirmed instance of the
# redundant-branch-preservation wall (see fn_801DB950/extab_801db950.s,
# project_fsa_phase4_session3_continuation.md batch 11). Reverted to raw
# asm.
.section extab, "a"
.balign 4
.global etb_80008928
etb_80008928:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80008928, 8

.section extabindex, "a"
.balign 4
.global eti_80015DF0
eti_80015DF0:
    .4byte fn_801DE9F4
    .4byte 0x0000007C
    .4byte etb_80008928
.size eti_80015DF0, 12

.text
.balign 4
.global fn_801DE9F4

fn_801DE9F4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lhz 4, 0x2ce(3)
    cmplwi 4, 0x0
    .4byte 0x4182000C # beq .L_801DEA14
    subi 0, 4, 0x1
    sth 0, 0x2ce(3)
L_801DEA14:
    lhz 0, 0x2ce(3)
    cmplwi 0, 0x0
    .4byte 0x40820044 # bne .L_801DEA60
    lwz 0, 0x248(3)
    cmpwi 0, 0x7
    .4byte 0x40820034 # bne .L_801DEA5C
    lwz 0, 0x278(3)
    cmpwi 0, 0x11
    .4byte 0x40800028 # bge .L_801DEA5C
    cmpwi 0, 0xf
    .4byte 0x40800008 # bge .L_801DEA44
    .4byte 0x4800001C # b .L_801DEA5C
L_801DEA44:
    lwz 4, 0x98(3)
    addi 3, 3, 0x270
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000008 # b .L_801DEA60
L_801DEA5C:
    bl fn_801CE4BC
L_801DEA60:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
