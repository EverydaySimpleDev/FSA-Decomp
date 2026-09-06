# fn_801DB950(this, newState) - "commit new state" enter-executor for
# this class's chase-or-free-roam FSM. newState==1 does special-case
# setup (resets this->0x250/0x2a0/0x2ac, calls fn_801DB9CC, re-resolves
# a search target via fn_801D05F8 into this->0x2a8); all paths reset
# this->0x24c=0 and commit this->0x248=newState.
#
# Attempted real-C++ promotion (Phase 4): field writes, call args, and
# control-flow shape are all confirmed correct (verified byte-for-byte
# against every other instruction), but retail preserves a REDUNDANT
# branch pair (`beq setup; b commit;`) where MWCC's peephole always
# collapses the equivalent goto-chain into a single inverted branch
# (`bne commit;`) - tried both a plain if-statement and an explicit
# goto-based reproduction (matching the exact CFG shape), both
# collapsed identically. New wall class distinct from the previously
# known redundant-branch-COLLAPSE cases (fn_801DE740 etc, where the
# fix was `switch` instead of `goto`) - here it's collapse that can't
# be PREVENTED, the opposite direction. Reverted to raw asm.
.section extab, "a"
.balign 4
.global etb_80008830
etb_80008830:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008830, 8

.section extabindex, "a"
.balign 4
.global eti_80015C7C
eti_80015C7C:
    .4byte fn_801DB950
    .4byte 0x0000007C
    .4byte etb_80008830
.size eti_80015C7C, 12

.text
.balign 4
.global fn_801DB950

fn_801DB950:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    cmpwi 31, 0x1
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0x41820008 # beq .L_801DB978
    .4byte 0x48000034 # b .L_801DB9A8
L_801DB978:
    li 0, -0x1
    lfs 0, lbl_8053F2E0@sda21(0)
    stw 0, 0x250(30)
    li 0, 0x0
    stfs 0, 0x2a0(30)
    stw 0, 0x2ac(30)
    bl fn_801DB9CC
    lfs 1, 0x2b0(30)
    mr 3, 30
    addi 4, 30, 0x2bc
    bl fn_801D05F8
    stw 3, 0x2a8(30)
L_801DB9A8:
    li 0, 0x0
    stw 0, 0x24c(30)
    stw 31, 0x248(30)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
