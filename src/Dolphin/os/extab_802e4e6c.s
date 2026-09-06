# fn_802E4E6C - BLZ2: ring-burst effect spawn helper (0x16C)
# Nested loop over outer count (this->0x2f4) x inner count (this->0x2f8),
# accumulating an angle offset (f31 = this->0x2f4-scaled step), spawning 3
# fn_8013CC50 sound/effect triggers per inner iteration plus one fn_80158B5C
# ambient effect-group spawn per inner iteration at the computed ring position.
.section extab, "a"
.balign 4
.global etb_8000CFE4
etb_8000CFE4:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_8000CFE4, 8

.section extabindex, "a"
.balign 4
.global eti_8001C120
eti_8001C120:
    .4byte fn_802E4E6C
    .4byte 0x0000016C
    .4byte etb_8000CFE4
.size eti_8001C120, 12

.text
.balign 4
.global fn_802E4E6C

fn_802E4E6C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    mr 29, 3
    psq_l 1, 0xc(29), 0, 0
    lfs 0, 0x14(3)
    psq_st 1, 0x10(1), 0, 0
    stfs 0, 0x18(1)
    lwz 0, 0x2f0(3)
    cmpwi 0, 0x1
    .4byte 0x4180010C # blt .L_802E4FB4
    .4byte 0xC3E2E270 # lfs f31, lbl_80541210@sda21(r0)
    li 31, 0x0
    .4byte 0x480000F4 # b .L_802E4FA8
L_802E4EB8:
    li 30, 0x0
    .4byte 0x480000C8 # b .L_802E4F84
L_802E4EC0:
    lwz 3, 0x4(29)
    addi 4, 1, 0x10
    .4byte 0xC022E268 # lfs f1, lbl_80541208@sda21(r0)
    li 5, 0x34c
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 1, 0x10
    .4byte 0xC022E268 # lfs f1, lbl_80541208@sda21(r0)
    li 5, 0x34d
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 1, 0x10
    .4byte 0xC022E268 # lfs f1, lbl_80541208@sda21(r0)
    li 5, 0x54d
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 7, 0x0
    li 0, 0x80
    stb 7, 0xc(1)
    addi 5, 1, 0x10
    lwz 4, 0x4(29)
    addi 6, 1, 0x8
    stb 7, 0xd(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stb 7, 0xe(1)
    .4byte 0xC022E26C # lfs f1, lbl_8054120C@sda21(r0)
    stb 0, 0xf(1)
    lwz 0, 0xc(1)
    stw 0, 0x8(1)
    lwz 3, 0x2c(3)
    bl fn_80158B5C
    lfs 0, 0x14(1)
    addi 30, 30, 0x1
    fadds 0, 0, 31
    stfs 0, 0x14(1)
L_802E4F84:
    lwz 0, 0x2f8(29)
    cmpw 30, 0
    .4byte 0x4180FF34 # blt .L_802E4EC0
    lfs 0, 0x10(1)
    addi 31, 31, 0x1
    lfs 1, 0x10(29)
    fadds 0, 0, 31
    stfs 1, 0x14(1)
    stfs 0, 0x10(1)
L_802E4FA8:
    lwz 0, 0x2f4(29)
    cmpw 31, 0
    .4byte 0x4180FF08 # blt .L_802E4EB8
L_802E4FB4:
    psq_l 31, 0x38(1), 0, 0
    lwz 0, 0x44(1)
    lfd 31, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

