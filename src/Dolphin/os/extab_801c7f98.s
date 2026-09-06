.section extab, "a"
.balign 4
.global etb_80008190
etb_80008190:
    .4byte 0x288A0000
    .4byte 0x00000000
.size etb_80008190, 8

.section extabindex, "a"
.balign 4
.global eti_8001537C
eti_8001537C:
    .4byte fn_801C7F98
    .4byte 0x000004B4
    .4byte etb_80008190
.size eti_8001537C, 12

.text
.balign 4
.global fn_801C7F98

# fn_801C7F98(this) - computes and stores the ring tracker's
# travel-direction preference byte (&this->0x358 + 0x1) - the SAME
# byte fn_801C79A0/fn_801C7BD0 read to decide which way to step
# (extab_801c79a0.s/extab_801c7bd0.s: "if ringObj+1 != 0, step -1, else
# step +1"). Calls the CONFIRMED fn_801C844C (extab_801c844c.s) and
# fn_801C8C84(this,0,0) first (advance/refresh), then recomputes facing
# via the CONFIRMED fn_801D02E0.
#
# Peeks the forward/backward ring neighbors (the standard technique
# used throughout this cluster) and picks the direction byte via a
# cascade, all landing on the same "store 1 (backward) or 0 (forward)
# into ringObj+1" pattern:
# - If this->0x230 bit 6 is set (docked/paused): prefers whichever
#   neighbor's room (fn_800FE25C) matches mine; if NEITHER matches,
#   defaults to forward.
# - Else (moving normally): if confirmed AT a waypoint (RAIL's
#   CONFIRMED fn_800FD5E8), does an extra PRNG-tie-break pass (the
#   usual lbl_8053EED8 threshold idiom) between forward/backward before
#   picking by room-match, only committing if BOTH the room-match AND a
#   final size-bound check hold.
# - Otherwise (not at a waypoint), computes each neighbor's actual
#   angular deviation from the current target direction (via
#   fn_80093340, the CONFIRMED atan2-style helper) and PRNG-rolls
#   (lbl_8053EEE0 threshold) to pick whichever neighbor is checked
#   first for a room-match commit, falling back to the other on
#   mismatch.
fn_801C7F98:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stfd 31, 0x90(1)
    psq_st 31, 0x98(1), 0, 0
    stfd 30, 0x80(1)
    psq_st 30, 0x88(1), 0, 0
    stmw 27, 0x6c(1)
    mr 30, 3
    bl fn_801C844C
    mr 3, 30
    li 4, 0x0
    li 5, 0x0
    bl fn_801C8C84
    mr 3, 30
    addi 4, 30, 0x32c
    bl fn_801D02E0
    sth 3, 0x33c(30)
    extsh 31, 3
    addi 3, 30, 0x358
    lwz 0, 0x230(30)
    rlwinm 0, 0, 0, 15, 13
    stw 0, 0x230(30)
    bl GetCurrentSlotPtr
    lbz 29, 0x3(3)
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    li 4, 0x1
    bl fn_800FD818
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    lbz 28, 0x3(3)
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    cmplw 29, 0
    .4byte 0x40800008 # bge .L_801C8030
    stb 29, 0x3(3)
L_801C8030:
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    li 4, -0x1
    bl fn_800FD818
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    lbz 27, 0x3(3)
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    clrlwi 4, 29, 24
    cmplw 4, 0
    .4byte 0x40800008 # bge .L_801C8068
    stb 29, 0x3(3)
L_801C8068:
    addic. 0, 1, 0xb
    .4byte 0x41820008 # beq .L_801C8074
    stb 27, 0xb(1)
L_801C8074:
    addic. 0, 1, 0xa
    .4byte 0x41820008 # beq .L_801C8080
    stb 28, 0xa(1)
L_801C8080:
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 6, 6
    .4byte 0x41820078 # beq .L_801C8100
    lwz 27, 0x4(30)
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    lbz 4, 0xb(1)
    bl fn_800FE25C
    cmpw 27, 3
    .4byte 0x41820018 # beq .L_801C80BC
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    li 0, 0x1
    stb 0, 0x1(3)
    .4byte 0x48000370 # b .L_801C8428
L_801C80BC:
    lwz 27, 0x4(30)
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    lbz 4, 0xa(1)
    bl fn_800FE25C
    cmpw 27, 3
    .4byte 0x41820018 # beq .L_801C80EC
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    li 0, 0x0
    stb 0, 0x1(3)
    .4byte 0x48000340 # b .L_801C8428
L_801C80EC:
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    li 0, 0x0
    stb 0, 0x1(3)
    .4byte 0x4800032C # b .L_801C8428
L_801C8100:
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    mr 29, 3
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    lbz 4, 0x3(29)
    bl fn_800FD5E8
    clrlwi. 0, 3, 24
    .4byte 0x41820160 # beq .L_801C8280
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    lbz 27, 0x3(3)
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    li 4, 0x1
    bl fn_800FD818
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    lbz 28, 0x3(3)
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    cmplw 27, 0
    .4byte 0x40800008 # bge .L_801C8164
    stb 27, 0x3(3)
L_801C8164:
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    li 4, -0x1
    bl fn_800FD818
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    lbz 29, 0x3(3)
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    clrlwi 4, 27, 24
    cmplw 4, 0
    .4byte 0x40800008 # bge .L_801C819C
    stb 27, 0x3(3)
L_801C819C:
    addic. 0, 1, 0x8
    .4byte 0x41820008 # beq .L_801C81A8
    stb 29, 0x8(1)
L_801C81A8:
    addic. 0, 1, 0x9
    .4byte 0x41820008 # beq .L_801C81B4
    stb 28, 0x9(1)
L_801C81B4:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022BF28 # lfs f1, lbl_8053EEC8@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002BF38 # lfs f0, lbl_8053EED8@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 2, 0xc(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4080002C # bge .L_801C8224
    lbz 29, 0x9(1)
    addi 3, 30, 0x358
    lwz 27, 0x4(30)
    bl GetCurrentSlotPtr
    mr 4, 29
    bl fn_800FE25C
    cmpw 27, 3
    .4byte 0x41820030 # beq .L_801C8248
    lbz 29, 0x8(1)
    .4byte 0x48000028 # b .L_801C8248
L_801C8224:
    lbz 29, 0x8(1)
    addi 3, 30, 0x358
    lwz 27, 0x4(30)
    bl GetCurrentSlotPtr
    mr 4, 29
    bl fn_800FE25C
    cmpw 27, 3
    .4byte 0x41820008 # beq .L_801C8248
    lbz 29, 0x9(1)
L_801C8248:
    lbz 3, 0xa(1)
    clrlwi 0, 29, 24
    cmplw 3, 0
    .4byte 0x40820018 # bne .L_801C826C
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    li 0, 0x1
    stb 0, 0x1(3)
    .4byte 0x480001C0 # b .L_801C8428
L_801C826C:
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    li 0, 0x0
    stb 0, 0x1(3)
    .4byte 0x480001AC # b .L_801C8428
L_801C8280:
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    lbz 5, 0xa(1)
    mr 4, 3
    addi 3, 1, 0x1c
    bl fn_800FE294
    psq_l 1, 0x1c(1), 0, 0
    addi 3, 30, 0x358
    lfs 0, 0x24(1)
    psq_st 1, 0x34(1), 0, 0
    stfs 0, 0x3c(1)
    bl GetCurrentSlotPtr
    lbz 5, 0xb(1)
    mr 4, 3
    addi 3, 1, 0x10
    bl fn_800FE294
    psq_l 0, 0x10(1), 0, 0
    lis 3, lbl_80534C00@ha
    lfs 3, 0x18(1)
    addi 3, 3, lbl_80534C00@l
    psq_st 0, 0x28(1), 0, 0
    lfs 2, 0x38(1)
    lfs 4, 0x330(30)
    lfs 0, 0x2c(1)
    fsubs 30, 2, 4
    lfs 1, 0x34(1)
    lfs 5, 0x32c(30)
    fsubs 2, 0, 4
    lfs 0, 0x28(1)
    fsubs 31, 1, 5
    fsubs 1, 0, 5
    stfs 3, 0x30(1)
    bl fn_80093340
    .4byte 0xC002BF5C # lfs f0, lbl_8053EEFC@sda21(r0)
    lis 0, 0x4330
    lis 3, lbl_80534C00@ha
    stw 0, 0x48(1)
    fmuls 0, 1, 0
    .4byte 0xC862BF48 # lfd f3, lbl_8053EEE8@sda21(r0)
    fmr 1, 31
    addi 3, 3, lbl_80534C00@l
    fmr 2, 30
    fctiwz 0, 0
    stfd 0, 0x40(1)
    lwz 0, 0x44(1)
    subf 0, 0, 31
    extsh 0, 0
    xoris 0, 0, 0x8000
    stw 0, 0x4c(1)
    lfd 0, 0x48(1)
    fsubs 0, 0, 3
    fabs 30, 0
    bl fn_80093340
    .4byte 0xC002BF5C # lfs f0, lbl_8053EEFC@sda21(r0)
    lis 0, 0x4330
    .4byte 0xC042BF40 # lfs f2, lbl_8053EEE0@sda21(r0)
    fmuls 1, 1, 0
    stw 0, 0x58(1)
    .4byte 0xC862BF48 # lfd f3, lbl_8053EEE8@sda21(r0)
    fmuls 0, 2, 30
    fctiwz 1, 1
    stfd 1, 0x50(1)
    lwz 0, 0x54(1)
    subf 0, 0, 31
    extsh 0, 0
    xoris 0, 0, 0x8000
    stw 0, 0x5c(1)
    lfd 1, 0x58(1)
    fsubs 1, 1, 3
    fabs 1, 1
    fmuls 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800048 # bge .L_801C83E8
    lwz 27, 0x4(30)
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    lbz 4, 0xb(1)
    bl fn_800FE25C
    cmpw 27, 3
    .4byte 0x41820018 # beq .L_801C83D4
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    li 0, 0x1
    stb 0, 0x1(3)
    .4byte 0x48000058 # b .L_801C8428
L_801C83D4:
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    li 0, 0x0
    stb 0, 0x1(3)
    .4byte 0x48000044 # b .L_801C8428
L_801C83E8:
    lwz 27, 0x4(30)
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    lbz 4, 0xa(1)
    bl fn_800FE25C
    cmpw 27, 3
    .4byte 0x41820018 # beq .L_801C8418
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    li 0, 0x0
    stb 0, 0x1(3)
    .4byte 0x48000014 # b .L_801C8428
L_801C8418:
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    li 0, 0x1
    stb 0, 0x1(3)
L_801C8428:
    psq_l 31, 0x98(1), 0, 0
    lfd 31, 0x90(1)
    psq_l 30, 0x88(1), 0, 0
    lfd 30, 0x80(1)
    lmw 27, 0x6c(1)
    lwz 0, 0xa4(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr
