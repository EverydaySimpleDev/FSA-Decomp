# fn_802E57E0 - BLZ2: setParams (0x240)
# Extracts several bitfields from this->0x90 into this->0x2f4/0x2f8/0x2fc/
# 0x300/0x308 (loop/ring counts + flags), zero-clears the 16-slot x 3-table
# effect-handle array (0x230-0x2cc), then if this->0x300 is unset runs the
# same ring-burst helper inline (reusing fn_8013CC50's spawn triple) to
# pre-seed handle slot 0x2b0 per ring index; finally sets several default
# float params (0x60/0x64/0x68/0x6c/0x80/0x84/0x88/0x8c) and this->0x114=1.
.section extab, "a"
.balign 4
.global etb_8000CFFC
etb_8000CFFC:
    .4byte 0x284A0000
    .4byte 0x00000000
.size etb_8000CFFC, 8

.section extabindex, "a"
.balign 4
.global eti_8001C144
eti_8001C144:
    .4byte fn_802E57E0
    .4byte 0x00000240
    .4byte etb_8000CFFC
.size eti_8001C144, 12

.text
.balign 4
.global fn_802E57E0

fn_802E57E0:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stmw 27, 0x1c(1)
    mr 31, 3
    lwz 3, 0x90(3)
    li 0, 0x2
    extrwi 3, 3, 5, 5
    mr 4, 31
    addi 3, 3, 0x1
    stw 3, 0x2f4(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 5, 10
    addi 3, 3, 0x1
    stw 3, 0x2f8(31)
    lwz 3, 0x90(31)
    clrlwi 3, 3, 28
    stw 3, 0x2fc(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 1, 27
    stw 3, 0x300(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 5, 15
    stw 3, 0x308(31)
    mtctr 0
L_802E584C:
    li 28, 0x0
    stw 28, 0x230(4)
    stw 28, 0x270(4)
    stw 28, 0x2b0(4)
    stw 28, 0x234(4)
    stw 28, 0x274(4)
    stw 28, 0x2b4(4)
    stw 28, 0x238(4)
    stw 28, 0x278(4)
    stw 28, 0x2b8(4)
    stw 28, 0x23c(4)
    stw 28, 0x27c(4)
    stw 28, 0x2bc(4)
    stw 28, 0x240(4)
    stw 28, 0x280(4)
    stw 28, 0x2c0(4)
    stw 28, 0x244(4)
    stw 28, 0x284(4)
    stw 28, 0x2c4(4)
    stw 28, 0x248(4)
    stw 28, 0x288(4)
    stw 28, 0x2c8(4)
    stw 28, 0x24c(4)
    stw 28, 0x28c(4)
    stw 28, 0x2cc(4)
    addi 4, 4, 0x20
    .4byte 0x4200FF98 # bdnz .L_802E584C
    lwz 0, 0x300(31)
    cmpwi 0, 0x0
    .4byte 0x40820104 # bne .L_802E59C4
    psq_l 1, 0xc(31), 0, 0
    mr 29, 31
    lfs 0, 0x14(31)
    .4byte 0xC3E2E270 # lfs f31, lbl_80541210@sda21(r0)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    .4byte 0x480000C8 # b .L_802E59A4
L_802E58E0:
    mr 30, 29
    li 27, 0x0
    .4byte 0x48000098 # b .L_802E5980
L_802E58EC:
    lwz 3, 0x4(31)
    addi 4, 1, 0x8
    .4byte 0xC022E268 # lfs f1, lbl_80541208@sda21(r0)
    li 5, 0x34c
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x8
    .4byte 0xC022E268 # lfs f1, lbl_80541208@sda21(r0)
    li 5, 0x34d
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x8
    .4byte 0xC022E268 # lfs f1, lbl_80541208@sda21(r0)
    li 5, 0x54d
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2b0(30)
    addi 30, 30, 0x4
    addi 29, 29, 0x4
    addi 27, 27, 0x1
    lfs 0, 0xc(1)
    fadds 0, 0, 31
    stfs 0, 0xc(1)
L_802E5980:
    lwz 0, 0x2f8(31)
    cmpw 27, 0
    .4byte 0x4180FF64 # blt .L_802E58EC
    lfs 0, 0x8(1)
    addi 28, 28, 0x1
    lfs 1, 0x10(31)
    fadds 0, 0, 31
    stfs 1, 0xc(1)
    stfs 0, 0x8(1)
L_802E59A4:
    lwz 0, 0x2f4(31)
    cmpw 28, 0
    .4byte 0x4180FF34 # blt .L_802E58E0
    li 3, 0x2
    li 0, 0x1
    stw 3, 0x2f0(31)
    sth 0, 0x94(31)
    .4byte 0x4800000C # b .L_802E59CC
L_802E59C4:
    stw 28, 0x2f0(31)
    sth 28, 0x94(31)
L_802E59CC:
    .4byte 0xC002E274 # lfs f0, lbl_80541214@sda21(r0)
    li 0, 0x1
    .4byte 0xC042E278 # lfs f2, lbl_80541218@sda21(r0)
    stfs 0, 0x60(31)
    .4byte 0xC022E27C # lfs f1, lbl_8054121C@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002E280 # lfs f0, lbl_80541220@sda21(r0)
    stfs 2, 0x68(31)
    stfs 2, 0x6c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 0, 0x114(31)
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    lmw 27, 0x1c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

