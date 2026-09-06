.section extab, "a"
.balign 4
.global etb_800081B0
etb_800081B0:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800081B0, 8

.section extabindex, "a"
.balign 4
.global eti_800153AC
eti_800153AC:
    .4byte fn_801C8BC4
    .4byte 0x000000C0
    .4byte etb_800081B0
.size eti_800153AC, 12

.text
.balign 4
.global fn_801C8BC4

# fn_801C8BC4(this, limited) - called by fn_801C2ED4 as
# fn_801C8BC4(this, 0) right after entering state 0x11 (extab_801c2ed4.s).
# MAJOR FINDING: this picks the value of this->0x55d - previously an
# unexplained byte flag referenced across fn_801C3B7C/fn_801C50A8's
# "linked sub-mode cluster {0x12..0x18}" banners - which turns out to
# be a HOP COUNT for multi-segment rail travel, not a plain flag:
#
# If `limited` is true: this->0x55d = fn_801CD664(0xc)+1 (a random
# 1-12 hop count, unconstrained).
# If `limited` is false (the actual call site's case): queries how many
# valid ring links currently exist via the not-yet-confirmed
# fn_800FD894(ringObj, this->0x4, &localBuffer, 0x30) (a likely sibling
# of RAIL's confirmed ring-traversal library) - if that count is <= 3,
# just uses this->0x55d = 1 (too few options to justify a longer hop);
# otherwise picks this->0x55d = fn_801CD664(4)+1 (random 1-4), with a
# CHANCE of +1 more when this->0x524 bit 23 is set, then CLAMPS the
# result to at most (count-2) so a randomly-long hop can never exceed
# what's actually reachable.
fn_801C8BC4:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    clrlwi. 0, 4, 24
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    mr 30, 3
    .4byte 0x4182007C # beq .L_801C8C5C
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    lwz 4, 0x4(30)
    addi 5, 1, 0x8
    li 6, 0x30
    bl fn_800FD894
    clrlwi 31, 3, 24
    cmpwi 31, 0x3
    .4byte 0x41810010 # bgt .L_801C8C14
    li 0, 0x1
    stb 0, 0x55d(30)
    .4byte 0x4800005C # b .L_801C8C6C
L_801C8C14:
    li 3, 0x4
    bl fn_801CD664
    addi 0, 3, 0x1
    stb 0, 0x55d(30)
    lwz 0, 0x524(30)
    rlwinm. 0, 0, 0, 23, 23
    .4byte 0x41820010 # beq .L_801C8C3C
    lbz 3, 0x55d(30)
    addi 0, 3, 0x1
    stb 0, 0x55d(30)
L_801C8C3C:
    subi 0, 31, 0x2
    lbz 3, 0x55d(30)
    clrlwi 0, 0, 24
    cmplw 0, 3
    .4byte 0x41800008 # blt .L_801C8C54
    mr 0, 3
L_801C8C54:
    stb 0, 0x55d(30)
    .4byte 0x48000014 # b .L_801C8C6C
L_801C8C5C:
    li 3, 0xc
    bl fn_801CD664
    addi 0, 3, 0x1
    stb 0, 0x55d(30)
L_801C8C6C:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    mtlr 0
    addi 1, 1, 0x40
    blr
