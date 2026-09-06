# fn_800FE2E4(ringArray, refPosPair, targetType) -> bestSlotIndex:
# another ring-cluster function - `FindClosestSlotOfType`. Iterates
# every slot in the ring, resolving each one's type the established
# way and skipping any that don't match `targetType`; for matches,
# computes the distance from a caller-supplied 2-point reference
# (`refPosPair`, two Vec2s at `+0x0`/`+0x8`, subtracted from the
# candidate's own X/Z at `+0xc`/`+0x14` via `PSVECMag`) and keeps
# track of the SMALLEST distance seen so far, storing that slot's
# index directly into `ringArray->0x3` (the same accumulator field
# every other cluster function reads/writes) as it goes. Returns the
# final `ringArray->0x3`. Needs `-mgekko`. Caller not traced; not yet
# cross-identified against the 195-entry dispatch table.
.section extab, "a"
.balign 4
.global etb_80005870
etb_80005870:
    .4byte 0x204A0000
    .4byte 0x00000000
.size etb_80005870, 8

.section extabindex, "a"
.balign 4
.global eti_80011BD8
eti_80011BD8:
    .4byte fn_800FE2E4
    .4byte 0x00000108
    .4byte etb_80005870
.size eti_80011BD8, 12

.text
.balign 4
.global fn_800FE2E4

fn_800FE2E4:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    .4byte 0xC3E29138 # lfs f31, lbl_8053C0D8@sda21(r0)
    mr 28, 3
    mr 29, 4
    mr 30, 5
    li 31, 0x0
    .4byte 0x48000094 # b .L_800FE3B0
L_800FE320:
    clrlwi 0, 31, 24
    cmplwi 0, 0xff
    .4byte 0x4082001C # bne .L_800FE344
    lbz 0, 0x3(28)
    slwi 3, 0, 2
    addi 0, 3, 0x4
    lwzx 3, 28, 0
    lwz 0, 0x4(3)
    .4byte 0x48000014 # b .L_800FE354
L_800FE344:
    clrlslwi 3, 31, 24, 2
    addi 0, 3, 0x4
    lwzx 3, 28, 0
    lwz 0, 0x4(3)
L_800FE354:
    cmpw 30, 0
    .4byte 0x40820054 # bne .L_800FE3AC
    clrlslwi 4, 31, 16, 2
    addi 3, 1, 0x8
    addi 0, 4, 0x4
    psq_l 3, 0x0(29), 0, 0
    lwzx 4, 28, 0
    psq_l 2, 0x8(29), 1, 0
    psq_l 1, 0xc(4), 0, 0
    lfs 0, 0x14(4)
    ps_sub 3, 1, 3
    stfs 0, 0x10(1)
    psq_l 0, 0x8(3), 1, 0
    psq_st 1, 0x0(3), 0, 0
    ps_sub 0, 0, 2
    psq_st 3, 0x0(3), 0, 0
    psq_st 0, 0x8(3), 1, 0
    bl PSVECMag
    fcmpo cr0, 1, 31
    .4byte 0x4080000C # bge .L_800FE3AC
    fmr 31, 1
    stb 31, 0x3(28)
L_800FE3AC:
    addi 31, 31, 0x1
L_800FE3B0:
    lbz 0, 0x2(28)
    clrlwi 3, 31, 16
    cmpw 3, 0
    .4byte 0x4180FF64 # blt .L_800FE320
    lbz 3, 0x3(28)
    psq_l 31, 0x38(1), 0, 0
    lwz 0, 0x44(1)
    lfd 31, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

