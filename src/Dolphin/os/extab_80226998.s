# Fresh-gap-hunt batch 18 landing (4 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000A7D0
etb_8000A7D0:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A7D0, 8

.global etb_8000A7D8
etb_8000A7D8:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A7D8, 8

.section extabindex, "a"
.balign 4
.global eti_800186C4
eti_800186C4:
    .4byte fn_80226998
    .4byte 0x00000148
    .4byte etb_8000A7D0
.size eti_800186C4, 12

.global eti_800186D0
eti_800186D0:
    .4byte fn_80226AE0
    .4byte 0x000000E4
    .4byte etb_8000A7D8
.size eti_800186D0, 12

.text
.balign 4
.global fn_80226998
.global fn_80226AE0

fn_80226998:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 4
    stw 30, 0x28(1)
    mr 30, 3
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    mr 4, 31
    .4byte 0x4080000C # bge .L_802269CC
    addi 7, 3, 0xcc
    .4byte 0x48000008 # b .L_802269D0
L_802269CC:
    addi 7, 3, 0xdc
L_802269D0:
    lwz 3, 0x0(7)
    li 0, 0x0
    lwz 6, 0x4(7)
    stw 3, 0x8(1)
    lwz 5, 0x8(7)
    lfs 2, 0x0(30)
    lfs 3, 0x8(1)
    lwz 3, 0xc(7)
    fcmpo cr0, 2, 3
    stw 6, 0xc(1)
    stw 5, 0x10(1)
    stw 3, 0x14(1)
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_80226A38
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_80226A38
    lfs 0, 0x10(1)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_80226A38
    lfs 0, 0x14(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80226A38
    li 0, 0x1
L_80226A38:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80226A48
    li 3, 0xf
    .4byte 0x48000084 # b .L_80226AC8
L_80226A48:
    fsubs 2, 2, 3
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fctiwz 2, 2
    fsubs 0, 1, 0
    stfd 2, 0x18(1)
    fctiwz 0, 0
    lwz 0, 0x1c(1)
    stfd 0, 0x20(1)
    cmpwi 0, 0x0
    lwz 6, 0x24(1)
    .4byte 0x4080000C # bge .L_80226A80
    li 0, 0x0
    .4byte 0x48000010 # b .L_80226A8C
L_80226A80:
    cmpwi 0, 0x200
    .4byte 0x41800008 # blt .L_80226A8C
    li 0, 0x1ff
L_80226A8C:
    cmpwi 6, 0x0
    .4byte 0x4080000C # bge .L_80226A9C
    li 6, 0x0
    .4byte 0x48000010 # b .L_80226AA8
L_80226A9C:
    cmpwi 6, 0x200
    .4byte 0x41800008 # blt .L_80226AA8
    li 6, 0x1ff
L_80226AA8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 5, 0, 0, 23, 23
    rlwimi 5, 6, 1, 22, 22
    lwz 3, 0x20(3)
    rlwimi 5, 6, 0, 24, 27
    rlwimi 5, 0, 28, 28, 31
    bl fn_802F9908
    clrlwi 3, 3, 22
L_80226AC8:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80226AE0:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 4
    stw 30, 0x28(1)
    mr 30, 3
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_80226B10
    addi 4, 3, 0xcc
    .4byte 0x48000008 # b .L_80226B14
L_80226B10:
    addi 4, 3, 0xdc
L_80226B14:
    lwz 3, 0x0(4)
    lwz 0, 0x4(4)
    stw 3, 0x8(1)
    lwz 3, 0x8(4)
    lfs 1, 0x0(30)
    lfs 0, 0x8(1)
    stw 0, 0xc(1)
    fsubs 2, 1, 0
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    lwz 0, 0xc(4)
    fctiwz 2, 2
    stw 3, 0x10(1)
    fsubs 0, 1, 0
    stw 0, 0x14(1)
    stfd 2, 0x18(1)
    fctiwz 0, 0
    lwz 0, 0x1c(1)
    stfd 0, 0x20(1)
    cmpwi 0, 0x0
    lwz 4, 0x24(1)
    .4byte 0x4080000C # bge .L_80226B74
    li 0, 0x0
    .4byte 0x48000010 # b .L_80226B80
L_80226B74:
    cmpwi 0, 0x200
    .4byte 0x41800008 # blt .L_80226B80
    li 0, 0x1ff
L_80226B80:
    cmpwi 4, 0x0
    .4byte 0x4080000C # bge .L_80226B90
    li 4, 0x0
    .4byte 0x48000010 # b .L_80226B9C
L_80226B90:
    cmpwi 4, 0x200
    .4byte 0x41800008 # blt .L_80226B9C
    li 4, 0x1ff
L_80226B9C:
    rlwinm 3, 0, 0, 23, 23
    lwz 31, 0x2c(1)
    rlwimi 3, 4, 1, 22, 22
    lwz 30, 0x28(1)
    rlwimi 3, 4, 0, 24, 27
    rlwimi 3, 0, 28, 28, 31
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

