# Fresh-gap-hunt batch 8 landing (non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000BB74
etb_8000BB74:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000BB74, 8

.global etb_8000BB7C
etb_8000BB7C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000BB7C, 8

.global etb_8000BB84
etb_8000BB84:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000BB84, 8

.global etb_8000BB8C
etb_8000BB8C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000BB8C, 8

.global etb_8000BB94
etb_8000BB94:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000BB94, 8

.global etb_8000BB9C
etb_8000BB9C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000BB9C, 8

.global etb_8000BBA4
etb_8000BBA4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000BBA4, 8

.section extabindex, "a"
.balign 4
.global eti_8001A2F0
eti_8001A2F0:
    .4byte fn_8026FD14
    .4byte 0x00000374
    .4byte etb_8000BB74
.size eti_8001A2F0, 12

.global eti_8001A2FC
eti_8001A2FC:
    .4byte fn_80270088
    .4byte 0x000001B4
    .4byte etb_8000BB7C
.size eti_8001A2FC, 12

.global eti_8001A308
eti_8001A308:
    .4byte fn_80270360
    .4byte 0x0000021C
    .4byte etb_8000BB84
.size eti_8001A308, 12

.global eti_8001A314
eti_8001A314:
    .4byte fn_8027057C
    .4byte 0x00000354
    .4byte etb_8000BB8C
.size eti_8001A314, 12

.global eti_8001A320
eti_8001A320:
    .4byte fn_802708E8
    .4byte 0x00000060
    .4byte etb_8000BB94
.size eti_8001A320, 12

.global eti_8001A32C
eti_8001A32C:
    .4byte fn_802709C8
    .4byte 0x0000003C
    .4byte etb_8000BB9C
.size eti_8001A32C, 12

.global eti_8001A338
eti_8001A338:
    .4byte fn_80270A04
    .4byte 0x00000054
    .4byte etb_8000BBA4
.size eti_8001A338, 12

.text
.balign 4
.global fn_8026FD14
.global fn_80270088
.global fn_8027023C
.global fn_802702A4
.global fn_802702C4
.global fn_802702E4
.global fn_802702EC
.global fn_80270310
.global fn_80270318
.global fn_80270350
.global fn_80270358
.global fn_80270360
.global fn_8027057C
.global fn_802708D0
.global fn_802708E8
.global fn_80270948
.global fn_802709C8
.global fn_80270A04
.global fn_80270A58

fn_8026FD14:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_80246F28
    .4byte 0xC002D2EC # lfs f0, lbl_8054028C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081003C # ble .L_8026FD70
    lwz 0, 0x11c8(31)
    cmpwi 0, 0x3
    .4byte 0x41800010 # blt .L_8026FD50
    li 0, 0x3
    stw 0, 0x11c4(31)
    .4byte 0x48000018 # b .L_8026FD64
L_8026FD50:
    lwz 3, 0x11c4(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8026FD64
    subi 0, 3, 0x1
    stw 0, 0x11c4(31)
L_8026FD64:
    li 0, 0x0
    stw 0, 0x11c8(31)
    .4byte 0x4800002C # b .L_8026FD98
L_8026FD70:
    lwz 3, 0x11c8(31)
    cmpwi 3, 0x3
    .4byte 0x4080000C # bge .L_8026FD84
    addi 0, 3, 0x1
    stw 0, 0x11c8(31)
L_8026FD84:
    lwz 3, 0x11c4(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8026FD98
    subi 0, 3, 0x1
    stw 0, 0x11c4(31)
L_8026FD98:
    lwz 3, 0x11d4(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8026FDAC
    subi 0, 3, 0x1
    stw 0, 0x11d4(31)
L_8026FDAC:
    lwz 3, 0x11cc(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8026FDC0
    subi 0, 3, 0x1
    stw 0, 0x11cc(31)
L_8026FDC0:
    mr 3, 31
    bl fn_80247330
    .4byte 0xC002D2EC # lfs f0, lbl_8054028C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810048 # ble .L_8026FE18
    mr 3, 31
    bl fn_8024712C
    .4byte 0xC002D2EC # lfs f0, lbl_8054028C@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x40820034 # bne .L_8026FE18
    li 0, 0x3c
    stw 0, 0x117c(31)
    lwz 0, 0x1184(31)
    lwz 3, 0x1180(31)
    cmpw 0, 3
    .4byte 0x40800030 # bge .L_8026FE2C
    lwz 0, 0x1188(31)
    cmpw 0, 3
    .4byte 0x40800024 # bge .L_8026FE2C
    li 0, 0x0
    stw 0, 0x1184(31)
    .4byte 0x48000018 # b .L_8026FE2C
L_8026FE18:
    lwz 3, 0x117c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8026FE2C
    subi 0, 3, 0x1
    stw 0, 0x117c(31)
L_8026FE2C:
    mr 3, 31
    bl fn_80247330
    .4byte 0xC002D2EC # lfs f0, lbl_8054028C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800048 # bge .L_8026FE84
    mr 3, 31
    bl fn_8024712C
    .4byte 0xC002D2EC # lfs f0, lbl_8054028C@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x40820034 # bne .L_8026FE84
    li 0, 0x3c
    stw 0, 0x1180(31)
    lwz 0, 0x1184(31)
    lwz 3, 0x117c(31)
    cmpw 0, 3
    .4byte 0x40800030 # bge .L_8026FE98
    lwz 0, 0x1188(31)
    cmpw 0, 3
    .4byte 0x40800024 # bge .L_8026FE98
    li 0, 0x0
    stw 0, 0x1184(31)
    .4byte 0x48000018 # b .L_8026FE98
L_8026FE84:
    lwz 3, 0x1180(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8026FE98
    subi 0, 3, 0x1
    stw 0, 0x1180(31)
L_8026FE98:
    mr 3, 31
    bl fn_8024712C
    .4byte 0xC002D2EC # lfs f0, lbl_8054028C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800048 # bge .L_8026FEF0
    mr 3, 31
    bl fn_80247330
    .4byte 0xC002D2EC # lfs f0, lbl_8054028C@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x40820034 # bne .L_8026FEF0
    li 0, 0x3c
    stw 0, 0x1184(31)
    lwz 0, 0x117c(31)
    lwz 3, 0x1188(31)
    cmpw 0, 3
    .4byte 0x40800030 # bge .L_8026FF04
    lwz 0, 0x1180(31)
    cmpw 0, 3
    .4byte 0x40800024 # bge .L_8026FF04
    li 0, 0x0
    stw 0, 0x1184(31)
    .4byte 0x48000018 # b .L_8026FF04
L_8026FEF0:
    lwz 3, 0x1184(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8026FF04
    subi 0, 3, 0x1
    stw 0, 0x1184(31)
L_8026FF04:
    mr 3, 31
    bl fn_8024712C
    .4byte 0xC002D2EC # lfs f0, lbl_8054028C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810048 # ble .L_8026FF5C
    mr 3, 31
    bl fn_80247330
    .4byte 0xC002D2EC # lfs f0, lbl_8054028C@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x40820034 # bne .L_8026FF5C
    li 0, 0x3c
    stw 0, 0x1188(31)
    lwz 0, 0x117c(31)
    lwz 3, 0x1184(31)
    cmpw 0, 3
    .4byte 0x40800030 # bge .L_8026FF70
    lwz 0, 0x1180(31)
    cmpw 0, 3
    .4byte 0x40800024 # bge .L_8026FF70
    li 0, 0x0
    stw 0, 0x1184(31)
    .4byte 0x48000018 # b .L_8026FF70
L_8026FF5C:
    lwz 3, 0x1188(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8026FF70
    subi 0, 3, 0x1
    stw 0, 0x1188(31)
L_8026FF70:
    mr 3, 31
    bl fn_80247330
    .4byte 0xC002D2EC # lfs f0, lbl_8054028C@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820018 # bne .L_8026FF9C
    li 0, 0x0
    stb 0, 0x119c(31)
    stb 0, 0x11a0(31)
    stb 0, 0x11a4(31)
    stb 0, 0x11a8(31)
L_8026FF9C:
    mr 3, 31
    bl fn_80247330
    .4byte 0xC002D2EC # lfs f0, lbl_8054028C@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_8026FFC8
    li 0, 0x0
    stb 0, 0x119d(31)
    stb 0, 0x11a1(31)
    stb 0, 0x11a5(31)
    stb 0, 0x11a9(31)
L_8026FFC8:
    mr 3, 31
    bl fn_8024712C
    .4byte 0xC002D2EC # lfs f0, lbl_8054028C@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_8026FFF4
    li 0, 0x0
    stb 0, 0x119e(31)
    stb 0, 0x11a2(31)
    stb 0, 0x11a6(31)
    stb 0, 0x11aa(31)
L_8026FFF4:
    mr 3, 31
    bl fn_8024712C
    .4byte 0xC002D2EC # lfs f0, lbl_8054028C@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820018 # bne .L_80270020
    li 0, 0x0
    stb 0, 0x119f(31)
    stb 0, 0x11a3(31)
    stb 0, 0x11a7(31)
    stb 0, 0x11ab(31)
L_80270020:
    lwz 3, 0x118c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80270034
    subi 0, 3, 0x1
    stw 0, 0x118c(31)
L_80270034:
    lwz 3, 0x1190(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80270048
    subi 0, 3, 0x1
    stw 0, 0x1190(31)
L_80270048:
    addi 4, 31, 0x8
    lwz 3, 0x1194(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80270060
    subi 0, 3, 0x1
    stw 0, 0x118c(4)
L_80270060:
    lwz 3, 0x1190(4)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80270074
    subi 0, 3, 0x1
    stw 0, 0x1190(4)
L_80270074:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80270088:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_80246F28
    .4byte 0xC002D2EC # lfs f0, lbl_8054028C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081004C # ble .L_802700F4
    lbz 0, 0x119c(31)
    cmplwi 0, 0x0
    .4byte 0x40820084 # bne .L_80270138
    lbz 0, 0x119d(31)
    cmplwi 0, 0x0
    .4byte 0x40820078 # bne .L_80270138
    lbz 0, 0x119e(31)
    cmplwi 0, 0x0
    .4byte 0x4082006C # bne .L_80270138
    lbz 0, 0x119f(31)
    cmplwi 0, 0x0
    .4byte 0x40820060 # bne .L_80270138
    li 0, 0x0
    stw 0, 0x1198(31)
    stw 0, 0x1194(31)
    stw 0, 0x1190(31)
    stw 0, 0x118c(31)
    .4byte 0x48000048 # b .L_80270138
L_802700F4:
    lbz 0, 0x119c(31)
    cmplwi 0, 0x1
    .4byte 0x41820028 # beq .L_80270124
    lbz 0, 0x119d(31)
    cmplwi 0, 0x1
    .4byte 0x4182001C # beq .L_80270124
    lbz 0, 0x119e(31)
    cmplwi 0, 0x1
    .4byte 0x41820010 # beq .L_80270124
    lbz 0, 0x119f(31)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_80270138
L_80270124:
    li 0, 0x0
    stw 0, 0x1198(31)
    stw 0, 0x1194(31)
    stw 0, 0x1190(31)
    stw 0, 0x118c(31)
L_80270138:
    lwz 4, 0x1194(31)
    li 0, 0x3c
    mr 3, 31
    stw 4, 0x1198(31)
    lwz 4, 0x1190(31)
    stw 4, 0x1194(31)
    lwz 4, 0x118c(31)
    stw 4, 0x1190(31)
    stw 0, 0x118c(31)
    bl fn_80247330
    .4byte 0xC002D2EC # lfs f0, lbl_8054028C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810024 # ble .L_8027018C
    lbz 3, 0x11a4(31)
    li 0, 0x1
    stb 3, 0x11a8(31)
    lbz 3, 0x11a0(31)
    stb 3, 0x11a4(31)
    lbz 3, 0x119c(31)
    stb 3, 0x11a0(31)
    stb 0, 0x119c(31)
L_8027018C:
    mr 3, 31
    bl fn_80247330
    .4byte 0xC002D2EC # lfs f0, lbl_8054028C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800024 # bge .L_802701C0
    lbz 3, 0x11a5(31)
    li 0, 0x1
    stb 3, 0x11a9(31)
    lbz 3, 0x11a1(31)
    stb 3, 0x11a5(31)
    lbz 3, 0x119d(31)
    stb 3, 0x11a1(31)
    stb 0, 0x119d(31)
L_802701C0:
    mr 3, 31
    bl fn_8024712C
    .4byte 0xC002D2EC # lfs f0, lbl_8054028C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800024 # bge .L_802701F4
    lbz 3, 0x11a6(31)
    li 0, 0x1
    stb 3, 0x11aa(31)
    lbz 3, 0x11a2(31)
    stb 3, 0x11a6(31)
    lbz 3, 0x119e(31)
    stb 3, 0x11a2(31)
    stb 0, 0x119e(31)
L_802701F4:
    mr 3, 31
    bl fn_8024712C
    .4byte 0xC002D2EC # lfs f0, lbl_8054028C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810024 # ble .L_80270228
    lbz 3, 0x11a7(31)
    li 0, 0x1
    stb 3, 0x11ab(31)
    lbz 3, 0x11a3(31)
    stb 3, 0x11a7(31)
    lbz 3, 0x119f(31)
    stb 3, 0x11a3(31)
    stb 0, 0x119f(31)
L_80270228:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8027023C:
    li 0, 0x0
    stw 0, 0x117c(3)
    stw 0, 0x1180(3)
    stw 0, 0x1184(3)
    stw 0, 0x1188(3)
    stw 0, 0x118c(3)
    stw 0, 0x1190(3)
    stw 0, 0x1194(3)
    stw 0, 0x1198(3)
    stb 0, 0x119c(3)
    stb 0, 0x11a0(3)
    stb 0, 0x11a4(3)
    stb 0, 0x11a8(3)
    stb 0, 0x119d(3)
    stb 0, 0x11a1(3)
    stb 0, 0x11a5(3)
    stb 0, 0x11a9(3)
    stb 0, 0x119e(3)
    stb 0, 0x11a2(3)
    stb 0, 0x11a6(3)
    stb 0, 0x11aa(3)
    stb 0, 0x119f(3)
    stb 0, 0x11a3(3)
    stb 0, 0x11a7(3)
    stb 0, 0x11ab(3)
    blr

fn_802702A4:
    lis 4, 0x5f6
    lwz 5, 0xc7c(3)
    subi 0, 4, 0x1f01
    cmpw 5, 0
    bgelr
    addi 0, 5, 0x1
    stw 0, 0xc7c(3)
    blr

fn_802702C4:
    lis 4, 0x5f6
    lwz 5, 0xc78(3)
    subi 0, 4, 0x1f01
    cmpw 5, 0
    bgelr
    addi 0, 5, 0x1
    stw 0, 0xc78(3)
    blr

fn_802702E4:
    lwz 3, 0xc74(3)
    blr

fn_802702EC:
    li 5, 0x0
    lis 4, lbl_80529DEC@ha
    stw 5, 0xc74(3)
    addi 4, 4, lbl_80529DEC@l
    lwz 0, 0x4(3)
    slwi 0, 0, 1
    add 3, 4, 0
    sth 5, 0x1f4(3)
    blr

fn_80270310:
    lwz 3, 0xc70(3)
    blr

fn_80270318:
    lwz 4, 0xc74(3)
    addi 0, 4, 0x1
    stw 0, 0xc74(3)
    lwz 0, 0xc74(3)
    cmpwi 0, 0x270f
    .4byte 0x4180000C # blt .L_80270338
    li 0, 0x270f
    stw 0, 0xc74(3)
L_80270338:
    lwz 0, 0xc70(3)
    lwz 4, 0xc74(3)
    cmpw 0, 4
    bgelr
    stw 4, 0xc70(3)
    blr

fn_80270350:
    lwz 3, 0xc64(3)
    blr

fn_80270358:
    lwz 3, 0xc50(3)
    blr

fn_80270360:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lis 3, 0x99
    stw 30, 0x8(1)
    subi 0, 3, 0x6981
    mr 30, 4
    lwz 5, 0xc50(31)
    cmpw 5, 0
    .4byte 0x4080000C # bge .L_80270398
    addi 0, 5, 0x1
    stw 0, 0xc50(31)
L_80270398:
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418201BC # beq .L_80270564
    lis 4, 0x4b45
    lwz 5, 0x1a0(3)
    addi 0, 4, 0x5448
    cmpw 5, 0
    .4byte 0x41820158 # beq .L_80270514
    .4byte 0x4080007C # bge .L_8027043C
    lis 3, 0x4444
    addi 0, 3, 0x524b
    cmpw 5, 0
    .4byte 0x41820114 # beq .L_802704E4
    .4byte 0x40800040 # bge .L_80270414
    lis 3, 0x4250
    addi 0, 3, 0x4f48
    cmpw 5, 0
    .4byte 0x41820138 # beq .L_8027051C
    .4byte 0x40800018 # bge .L_80270400
    lis 3, 0x414d
    addi 0, 3, 0x4f53
    cmpw 5, 0
    .4byte 0x418200D4 # beq .L_802704CC
    .4byte 0x48000138 # b .L_80270534
L_80270400:
    lis 3, 0x425a
    addi 0, 3, 0x4252
    cmpw 5, 0
    .4byte 0x418200D0 # beq .L_802704DC
    .4byte 0x48000124 # b .L_80270534
L_80270414:
    lis 3, 0x4849
    addi 0, 3, 0x4e4f
    cmpw 5, 0
    .4byte 0x418200D4 # beq .L_802704F4
    .4byte 0x40800110 # bge .L_80270534
    lis 3, 0x4447
    addi 0, 3, 0x544c
    cmpw 5, 0
    .4byte 0x418200B8 # beq .L_802704EC
    .4byte 0x480000FC # b .L_80270534
L_8027043C:
    lis 3, 0x506f
    addi 0, 3, 0x6f6e
    cmpw 5, 0
    .4byte 0x418200E4 # beq .L_8027052C
    .4byte 0x40800040 # bge .L_8027048C
    lis 3, 0x4f4b
    addi 0, 3, 0x5441
    cmpw 5, 0
    .4byte 0x41820068 # beq .L_802704C4
    .4byte 0x40800018 # bge .L_80270478
    lis 3, 0x4d4f
    addi 0, 3, 0x5a4f
    cmpw 5, 0
    .4byte 0x418200B4 # beq .L_80270524
    .4byte 0x480000C0 # b .L_80270534
L_80270478:
    lis 3, 0x504f
    addi 0, 3, 0x4f48
    cmpw 5, 0
    .4byte 0x41820050 # beq .L_802704D4
    .4byte 0x480000AC # b .L_80270534
L_8027048C:
    lis 3, 0x534c
    addi 0, 3, 0x5232
    cmpw 5, 0
    .4byte 0x41820074 # beq .L_8027050C
    .4byte 0x40800014 # bge .L_802704B0
    addi 0, 3, 0x5231
    cmpw 5, 0
    .4byte 0x40800054 # bge .L_802704FC
    .4byte 0x48000088 # b .L_80270534
L_802704B0:
    lis 3, 0x544b
    addi 0, 3, 0x5441
    cmpw 5, 0
    .4byte 0x41820048 # beq .L_80270504
    .4byte 0x48000074 # b .L_80270534
L_802704C4:
    li 0, 0x0
    .4byte 0x48000070 # b .L_80270538
L_802704CC:
    li 0, 0x1
    .4byte 0x48000068 # b .L_80270538
L_802704D4:
    li 0, 0x2
    .4byte 0x48000060 # b .L_80270538
L_802704DC:
    li 0, 0x3
    .4byte 0x48000058 # b .L_80270538
L_802704E4:
    li 0, 0x4
    .4byte 0x48000050 # b .L_80270538
L_802704EC:
    li 0, 0x5
    .4byte 0x48000048 # b .L_80270538
L_802704F4:
    li 0, 0x6
    .4byte 0x48000040 # b .L_80270538
L_802704FC:
    li 0, 0x7
    .4byte 0x48000038 # b .L_80270538
L_80270504:
    li 0, 0x8
    .4byte 0x48000030 # b .L_80270538
L_8027050C:
    li 0, 0x7
    .4byte 0x48000028 # b .L_80270538
L_80270514:
    li 0, 0x9
    .4byte 0x48000020 # b .L_80270538
L_8027051C:
    li 0, 0xa
    .4byte 0x48000018 # b .L_80270538
L_80270524:
    li 0, 0xb
    .4byte 0x48000010 # b .L_80270538
L_8027052C:
    li 0, 0xc
    .4byte 0x48000008 # b .L_80270538
L_80270534:
    li 0, 0xd
L_80270538:
    cmpwi 0, 0xd
    .4byte 0x40800028 # bge .L_80270564
    slwi 0, 0, 2
    lis 3, 0x99
    add 5, 31, 0
    lwz 4, 0xc1c(5)
    subi 0, 3, 0x6981
    cmpw 4, 0
    .4byte 0x4080000C # bge .L_80270564
    addi 0, 4, 0x1
    stw 0, 0xc1c(5)
L_80270564:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8027057C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(5)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_802705C0
    lwz 0, 0x4(31)
    li 3, 0x1
    lbz 4, 0x82(5)
    slw 0, 3, 0
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x408202FC # bne .L_802708B8
L_802705C0:
    lbz 0, 0x7e(5)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_802705D8
    bl fn_80236890
    clrlwi. 0, 3, 24
    .4byte 0x408202E4 # bne .L_802708B8
L_802705D8:
    lbz 0, 0xd2d(31)
    cmplwi 0, 0x1
    .4byte 0x418202D8 # beq .L_802708B8
    lbz 0, 0xd2c(31)
    cmplwi 0, 0x1
    .4byte 0x40820140 # bne .L_8027072C
    li 0, 0x0
    mr 3, 31
    stb 0, 0x124d(31)
    li 4, 0x0
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x418202B0 # beq .L_802708B8
    mr 3, 31
    bl fn_802417CC
    lbz 0, 0xd35(31)
    subi 30, 3, 0x4
    cmplwi 0, 0x0
    .4byte 0x408200DC # bne .L_802706FC
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x40820060 # bne .L_80270690
    lwz 0, 0x4(31)
    li 3, 0x1
    lbz 4, 0x82(4)
    slw 0, 3, 0
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x41820044 # beq .L_80270690
    lwz 0, 0xbfc(31)
    cmpwi 0, 0x0
    .4byte 0x408100A4 # ble .L_802706FC
    lwz 0, 0x1244(31)
    cmpwi 0, 0x33
    .4byte 0x41820018 # beq .L_8027067C
    lwz 0, 0x1240(31)
    cmpwi 0, 0x33
    .4byte 0x4182000C # beq .L_8027067C
    cmpwi 0, 0x34
    .4byte 0x4082000C # bne .L_80270684
L_8027067C:
    li 0, 0x1
    .4byte 0x48000008 # b .L_80270688
L_80270684:
    li 0, 0x0
L_80270688:
    clrlwi. 0, 0, 24
    .4byte 0x40820070 # bne .L_802706FC
L_80270690:
    lwz 3, 0xbfc(31)
    addi 0, 3, 0x1
    stw 0, 0xbfc(31)
    lwz 0, 0xbfc(31)
    cmpw 0, 3
    .4byte 0x40820008 # bne .L_802706AC
L_802706A8:
    .4byte 0x48000000 # b .L_802706A8
L_802706AC:
    stw 3, 0xbfc(31)
    mr 3, 31
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_802706D4
    mr 3, 31
    bl Player_GetLinkTargetIndex
    bl fn_802376D8
    stw 3, 0xbfc(31)
    .4byte 0x48000010 # b .L_802706E0
L_802706D4:
    lwz 0, 0xbfc(31)
    add 0, 0, 30
    stw 0, 0xbfc(31)
L_802706E0:
    lwz 0, 0xbfc(31)
    lwz 3, 0xbf8(31)
    cmpw 0, 3
    .4byte 0x40810008 # ble .L_802706F4
    stw 3, 0xbfc(31)
L_802706F4:
    li 0, 0x0
    stb 0, 0xd35(31)
L_802706FC:
    li 3, 0xb4
    li 0, 0x0
    stw 3, 0x464(31)
    addi 3, 31, 0xd10
    stb 0, 0xd2c(31)
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0xd18(31)
    psq_st 1, 0x8(31), 0, 0
    stfs 0, 0x10(31)
    stw 0, 0x3b4(31)
    stb 0, 0xcfc(31)
    .4byte 0x48000190 # b .L_802708B8
L_8027072C:
    lbz 0, 0xcfd(31)
    cmplwi 0, 0x1
    .4byte 0x40820064 # bne .L_80270798
    lfs 0, 0x10(31)
    .4byte 0xC022D2EC # lfs f1, lbl_8054028C@sda21(r0)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820050 # bne .L_80270798
    lfs 0, 0x1c(31)
    fcmpo cr0, 0, 1
    .4byte 0x40810044 # ble .L_80270798
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x41820034 # beq .L_80270798
    li 30, 0x0
L_8027076C:
    mr 3, 31
    mr 4, 30
    bl fn_80243194
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80270788
    mr 3, 30
    bl fn_802363DC
L_80270788:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFDC # blt .L_8027076C
    .4byte 0x48000124 # b .L_802708B8
L_80270798:
    lbz 0, 0xd35(31)
    cmplwi 0, 0x1
    .4byte 0x40820034 # bne .L_802707D4
    li 0, 0x0
    mr 3, 31
    stb 0, 0x124d(31)
    li 4, 0x34
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x418200FC # beq .L_802708B8
    li 3, 0x0
    li 0, 0x1
    stb 3, 0xcfc(31)
    stb 0, 0xd34(31)
    .4byte 0x480000E8 # b .L_802708B8
L_802707D4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    subfic 0, 0, 0x7
    cntlzw 0, 0
    extrwi. 0, 0, 8, 19
    .4byte 0x418200D0 # beq .L_802708B8
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x418200C4 # beq .L_802708B8
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x418200B8 # beq .L_802708B8
    mr 3, 31
    bl fn_8025F448
    clrlwi. 0, 3, 24
    .4byte 0x408200A8 # bne .L_802708B8
    bl fn_80239D38
    clrlwi. 0, 3, 24
    .4byte 0x4082009C # bne .L_802708B8
    lwz 3, 0x494(31)
    cmpwi 3, 0x0
    .4byte 0x40810090 # ble .L_802708B8
    subi 0, 3, 0x1
    stw 0, 0x494(31)
    lwz 0, 0x494(31)
    cmpwi 0, 0x0
    .4byte 0x4082007C # bne .L_802708B8
    bl SpatialRegistry_GetBase
    lis 4, 0x544e
    addi 4, 4, 0x474c
    bl fn_801F7A08
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80270864
    li 0, 0x1
    stw 0, 0x494(31)
    .4byte 0x48000058 # b .L_802708B8
L_80270864:
    li 0, 0x0
    li 30, 0x0
    stb 0, 0xcfc(31)
L_80270870:
    lwz 3, 0x4(31)
    mr 4, 30
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_802708AC
    mr 3, 30
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_802708AC
    mr 3, 30
    bl fn_80236AB4
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_802708AC
    mr 3, 30
    bl fn_80236350
L_802708AC:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFBC # blt .L_80270870
L_802708B8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802708D0:
    li 4, 0x1
    li 0, 0x0
    stb 4, 0xd2d(3)
    stw 0, 0xd30(3)
    stb 0, 0xcfc(3)
    blr

fn_802708E8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x1
    stw 31, 0xc(1)
    mr 31, 3
    stb 0, 0xd2d(3)
    li 0, 0x0
    stw 0, 0xd30(3)
    stb 0, 0xcfc(3)
    lwz 0, 0x1308(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80270934
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x1308(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x1308(31)
L_80270934:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80270948:
    lwz 0, 0x1244(3)
    cmpwi 0, 0x33
    .4byte 0x41820018 # beq .L_80270968
    lwz 0, 0x1240(3)
    cmpwi 0, 0x33
    .4byte 0x4182000C # beq .L_80270968
    cmpwi 0, 0x34
    .4byte 0x4082000C # bne .L_80270970
L_80270968:
    li 0, 0x1
    .4byte 0x48000008 # b .L_80270974
L_80270970:
    li 0, 0x0
L_80270974:
    clrlwi. 0, 0, 24
    beqlr
    lbz 0, 0xd2c(3)
    cmplwi 0, 0x1
    beqlr
    cmplwi 4, 0x0
    .4byte 0x4082001C # bne .L_802709A8
    psq_l 1, 0x8(3), 0, 0
    addi 4, 3, 0xd10
    lfs 0, 0x10(3)
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0xd18(3)
    .4byte 0x48000018 # b .L_802709BC
L_802709A8:
    psq_l 1, 0x0(4), 0, 0
    addi 5, 3, 0xd10
    lfs 0, 0x8(4)
    psq_st 1, 0x0(5), 0, 0
    stfs 0, 0xd18(3)
L_802709BC:
    li 0, 0x1
    stb 0, 0xd2c(3)
    blr

fn_802709C8:
    stwu 1, -0x10(1)
    mflr 0
    mr 6, 3
    li 7, 0x0
    stw 0, 0x14(1)
    addi 4, 6, 0x30c
    li 8, 0x1
    lwz 5, 0x4(6)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    lwz 6, 0x3b4(6)
    bl fn_802A20F0
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80270A04:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    li 31, 0x0
    stw 30, 0x8(1)
    mr 30, 3
    bl fn_80241864
    cmpwi 3, 0x0
    .4byte 0x41810014 # bgt .L_80270A3C
    lbz 0, 0xcfc(30)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_80270A3C
    li 31, 0x1
L_80270A3C:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80270A58:
    lbz 0, 0xd2d(3)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_80270A7C
    lwz 0, 0x1244(3)
    cmpwi 0, 0x34
    .4byte 0x41820010 # beq .L_80270A7C
    lwz 0, 0x1240(3)
    cmpwi 0, 0x34
    .4byte 0x4082000C # bne .L_80270A84
L_80270A7C:
    li 3, 0x1
    blr
L_80270A84:
    li 3, 0x0
    blr

