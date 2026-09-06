# fn_800FE3EC(ringArray, mode, refPos, targetType) -> success(0/1):
# THE ring cluster's real constructor/initializer - the missing piece
# of "how does the ring array get populated in the first place." This
# is the largest and most revealing function in the whole cluster.
#
# Zeroes the ring's entire storage array (`ringArray+0x4` through
# `+0xC4`, confirming up to ~49 4-byte slots) and resets
# `+0x0`(mode)/`+0x1`/`+0x2`(size)/`+0x3`(accumulator) to `mode`/0/0/0.
# Calls the CONFIRMED `SpatialRegistry_GetBase` (get registry) + a NEW
# `fn_801F71E8(registry, mode, &outCount, &outArrayPtr, 0x31)` -
# plausibly "collect all registered entities of search-category
# 0x31 matching `mode`" - and stores the returned count into
# `ringArray->0x2` (the ring's size). Fails immediately (returns 0)
# if nothing was found.
#
# For each found entity: reads its universal spawn-parameter field
# and extracts bits 8-15 as a SELF-DECLARED slot index, then places
# that entity's own pointer into `ringArray[selfDeclaredIndex*4+4]` -
# i.e. each ring member announces its own position in the ring via
# its spawn parameters, and this constructor just places them
# accordingly. Fails (returns 0) if two entities declare the SAME
# slot index (duplicate detection). After placing all found entities,
# walks the array from slot 0 up to `size-1` and fails if ANY slot in
# that range is still empty - a completeness check ensuring every
# index `0..size-1` is actually occupied with no gaps.
#
# Finally, if all of that succeeded, runs the SAME "find closest slot
# of `targetType` to a reference position" search already documented
# in `fn_800FE2E4` (using `refPos`), seeding `ringArray->0x3` with the
# result before returning success. Needs `-mgekko`. `fn_801F71E8` and
# search-category `0x31` are new; caller of this constructor itself
# not traced. Not yet cross-identified against the 195-entry dispatch
# table.
.section extab, "a"
.balign 4
.global etb_80005878
etb_80005878:
    .4byte 0x204A0000
    .4byte 0x00000000
.size etb_80005878, 8

.section extabindex, "a"
.balign 4
.global eti_80011BE4
eti_80011BE4:
    .4byte fn_800FE3EC
    .4byte 0x000002B0
    .4byte etb_80005878
.size eti_80011BE4, 12

.text
.balign 4
.global fn_800FE3EC

fn_800FE3EC:
    stwu 1, -0x110(1)
    mflr 0
    stw 0, 0x114(1)
    stfd 31, 0x100(1)
    psq_st 31, 0x108(1), 0, 0
    stw 31, 0xfc(1)
    stw 30, 0xf8(1)
    stw 29, 0xf4(1)
    stw 28, 0xf0(1)
    stb 4, 0x0(3)
    li 0, 0x0
    mr 28, 3
    mr 29, 5
    stb 0, 0x2(3)
    mr 30, 6
    stb 0, 0x3(3)
    stb 0, 0x1(3)
    stw 0, 0x8(1)
    stw 0, 0x4(3)
    stw 0, 0x8(3)
    stw 0, 0xc(3)
    stw 0, 0x10(3)
    stw 0, 0x14(3)
    stw 0, 0x18(3)
    stw 0, 0x1c(3)
    stw 0, 0x20(3)
    stw 0, 0x24(3)
    stw 0, 0x28(3)
    stw 0, 0x2c(3)
    stw 0, 0x30(3)
    stw 0, 0x34(3)
    stw 0, 0x38(3)
    stw 0, 0x3c(3)
    stw 0, 0x40(3)
    stw 0, 0x44(3)
    stw 0, 0x48(3)
    stw 0, 0x4c(3)
    stw 0, 0x50(3)
    stw 0, 0x54(3)
    stw 0, 0x58(3)
    stw 0, 0x5c(3)
    stw 0, 0x60(3)
    stw 0, 0x64(3)
    stw 0, 0x68(3)
    stw 0, 0x6c(3)
    stw 0, 0x70(3)
    stw 0, 0x74(3)
    stw 0, 0x78(3)
    stw 0, 0x7c(3)
    stw 0, 0x80(3)
    stw 0, 0x84(3)
    stw 0, 0x88(3)
    stw 0, 0x8c(3)
    stw 0, 0x90(3)
    stw 0, 0x94(3)
    stw 0, 0x98(3)
    stw 0, 0x9c(3)
    stw 0, 0xa0(3)
    stw 0, 0xa4(3)
    stw 0, 0xa8(3)
    stw 0, 0xac(3)
    stw 0, 0xb0(3)
    stw 0, 0xb4(3)
    stw 0, 0xb8(3)
    stw 0, 0xbc(3)
    stw 0, 0xc0(3)
    stw 0, 0xc4(3)
    bl SpatialRegistry_GetBase
    lbz 4, 0x0(28)
    addi 5, 1, 0x24
    addi 6, 1, 0x8
    li 7, 0x31
    bl fn_801F71E8
    lwz 4, 0x8(1)
    clrlwi. 0, 3, 24
    stb 4, 0x2(28)
    .4byte 0x41820010 # beq .L_800FE52C
    lbz 0, 0x2(28)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_800FE534
L_800FE52C:
    li 3, 0x0
    .4byte 0x48000144 # b .L_800FE674
L_800FE534:
    addi 4, 1, 0x24
    li 7, 0x0
    .4byte 0x48000040 # b .L_800FE57C
L_800FE540:
    lwz 6, 0x0(4)
    lwz 0, 0x90(6)
    extrwi 0, 0, 8, 8
    cmplw 0, 5
    .4byte 0x40800018 # bge .L_800FE568
    clrlslwi 3, 0, 24, 2
    addi 3, 3, 0x4
    lwzx 0, 28, 3
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_800FE570
L_800FE568:
    li 3, 0x0
    .4byte 0x48000108 # b .L_800FE674
L_800FE570:
    stwx 6, 28, 3
    addi 4, 4, 0x4
    addi 7, 7, 0x1
L_800FE57C:
    lbz 5, 0x2(28)
    cmpw 7, 5
    .4byte 0x4180FFBC # blt .L_800FE540
    mr 3, 28
    mtctr 5
    cmpwi 5, 0x0
    .4byte 0x40810020 # ble .L_800FE5B4
L_800FE598:
    lwz 0, 0x4(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_800FE5AC
    li 3, 0x0
    .4byte 0x480000CC # b .L_800FE674
L_800FE5AC:
    addi 3, 3, 0x4
    .4byte 0x4200FFE8 # bdnz .L_800FE598
L_800FE5B4:
    psq_l 1, 0x0(29), 0, 0
    li 31, 0x0
    lfs 0, 0x8(29)
    psq_st 1, 0x18(1), 0, 0
    .4byte 0xC3E29138 # lfs f31, lbl_8053C0D8@sda21(r0)
    stfs 0, 0x20(1)
    .4byte 0x48000094 # b .L_800FE660
L_800FE5D0:
    clrlwi 0, 31, 24
    cmplwi 0, 0xff
    .4byte 0x4082001C # bne .L_800FE5F4
    lbz 0, 0x3(28)
    slwi 3, 0, 2
    addi 0, 3, 0x4
    lwzx 3, 28, 0
    lwz 0, 0x4(3)
    .4byte 0x48000014 # b .L_800FE604
L_800FE5F4:
    clrlslwi 3, 0, 24, 2
    addi 0, 3, 0x4
    lwzx 3, 28, 0
    lwz 0, 0x4(3)
L_800FE604:
    cmpw 30, 0
    .4byte 0x40820054 # bne .L_800FE65C
    clrlslwi 4, 31, 16, 2
    addi 3, 1, 0xc
    addi 0, 4, 0x4
    psq_l 3, 0x18(1), 0, 0
    lwzx 4, 28, 0
    psq_l 2, 0x20(1), 1, 0
    psq_l 1, 0xc(4), 0, 0
    lfs 0, 0x14(4)
    ps_sub 3, 1, 3
    stfs 0, 0x14(1)
    psq_l 0, 0x8(3), 1, 0
    psq_st 1, 0x0(3), 0, 0
    ps_sub 0, 0, 2
    psq_st 3, 0x0(3), 0, 0
    psq_st 0, 0x8(3), 1, 0
    bl PSVECMag
    fcmpo cr0, 1, 31
    .4byte 0x4080000C # bge .L_800FE65C
    fmr 31, 1
    stb 31, 0x3(28)
L_800FE65C:
    addi 31, 31, 0x1
L_800FE660:
    lbz 0, 0x2(28)
    clrlwi 3, 31, 16
    cmpw 3, 0
    .4byte 0x4180FF64 # blt .L_800FE5D0
    li 3, 0x1
L_800FE674:
    psq_l 31, 0x108(1), 0, 0
    lwz 0, 0x114(1)
    lfd 31, 0x100(1)
    lwz 31, 0xfc(1)
    lwz 30, 0xf8(1)
    lwz 29, 0xf4(1)
    lwz 28, 0xf0(1)
    mtlr 0
    addi 1, 1, 0x110
    blr

