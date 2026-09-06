.section extab, "a"
.balign 4
.global etb_8000A9A0
etb_8000A9A0:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000A9A0, 8

.global etb_8000A9A8
etb_8000A9A8:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000A9A8, 8

.global etb_8000A9B0
etb_8000A9B0:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_8000A9B0, 8

.global etb_8000A9B8
etb_8000A9B8:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000A9B8, 8

.global etb_8000A9C0
etb_8000A9C0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A9C0, 8

.section extabindex, "a"
.balign 4
.global eti_8001897C
eti_8001897C:
    .4byte fn_8022CDD4
    .4byte 0x00000134
    .4byte etb_8000A9A0
.size eti_8001897C, 12

.global eti_80018988
eti_80018988:
    .4byte fn_8022CF08
    .4byte 0x000000E0
    .4byte etb_8000A9A8
.size eti_80018988, 12

.global eti_80018994
eti_80018994:
    .4byte fn_8022CFE8
    .4byte 0x00000384
    .4byte etb_8000A9B0
.size eti_80018994, 12

.global eti_800189A0
eti_800189A0:
    .4byte fn_8022D36C
    .4byte 0x0000012C
    .4byte etb_8000A9B8
.size eti_800189A0, 12

.global eti_800189AC
eti_800189AC:
    .4byte fn_8022D498
    .4byte 0x0000009C
    .4byte etb_8000A9C0
.size eti_800189AC, 12

.text
.balign 4
.global fn_8022CDD4
.global fn_8022CF08
.global fn_8022CFE8
.global fn_8022D36C
.global fn_8022D498

fn_8022CDD4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    .4byte 0x808D90D0 # lwz r4, lbl_8053AC90@sda21(r0)
    cmplwi 4, 0x0
    .4byte 0x418200F4 # beq .L_8022CEEC
    .4byte 0x4082000C # bne .L_8022CE08
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022CE48
L_8022CE08:
    cmpwi 29, 0x0
    .4byte 0x4080000C # bge .L_8022CE18
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022CE48
L_8022CE18:
    cmpwi 29, 0x4
    .4byte 0x4180000C # blt .L_8022CE28
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022CE48
L_8022CE28:
    slwi 0, 29, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022CE44
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022CE48
L_8022CE44:
    lbz 0, 0xcac(3)
L_8022CE48:
    clrlwi. 0, 0, 24
    .4byte 0x418200A0 # beq .L_8022CEEC
    li 30, 0x0
    li 31, 0x0
L_8022CE58:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022CE6C
    li 0, 0x0
    .4byte 0x48000040 # b .L_8022CEA8
L_8022CE6C:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022CE7C
    li 0, 0x0
    .4byte 0x48000030 # b .L_8022CEA8
L_8022CE7C:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022CE8C
    li 0, 0x0
    .4byte 0x48000020 # b .L_8022CEA8
L_8022CE8C:
    addi 0, 31, 0x4
    lwzx 3, 3, 0
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022CEA4
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022CEA8
L_8022CEA4:
    lbz 0, 0xcac(3)
L_8022CEA8:
    clrlwi. 0, 0, 24
    .4byte 0x41820030 # beq .L_8022CEDC
    cmpw 29, 30
    .4byte 0x41820018 # beq .L_8022CECC
    mr 3, 29
    mr 4, 30
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8022CEDC
L_8022CECC:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    addi 0, 31, 0x4
    lwzx 3, 3, 0
    bl ClearBusyLocked
L_8022CEDC:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF70 # blt .L_8022CE58
L_8022CEEC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8022CF08:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x418200A0 # beq .L_8022CFCC
    li 30, 0x0
    li 31, 0x0
L_8022CF38:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022CF4C
    li 0, 0x0
    .4byte 0x48000040 # b .L_8022CF88
L_8022CF4C:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022CF5C
    li 0, 0x0
    .4byte 0x48000030 # b .L_8022CF88
L_8022CF5C:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022CF6C
    li 0, 0x0
    .4byte 0x48000020 # b .L_8022CF88
L_8022CF6C:
    addi 0, 31, 0x4
    lwzx 3, 3, 0
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022CF84
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022CF88
L_8022CF84:
    lbz 0, 0xcac(3)
L_8022CF88:
    clrlwi. 0, 0, 24
    .4byte 0x41820030 # beq .L_8022CFBC
    cmpw 29, 30
    .4byte 0x41820018 # beq .L_8022CFAC
    mr 3, 29
    mr 4, 30
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8022CFBC
L_8022CFAC:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    addi 0, 31, 0x4
    lwzx 3, 3, 0
    bl SetBusyLocked
L_8022CFBC:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF70 # blt .L_8022CF38
L_8022CFCC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8022CFE8:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stw 31, 0x5c(1)
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    mr 29, 3
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8022D020
    .4byte 0xC022D068 # lfs f1, lbl_80540008@sda21(r0)
    .4byte 0x4800032C # b .L_8022D348
L_8022D020:
    .4byte 0xC3E2D068 # lfs f31, lbl_80540008@sda21(r0)
    li 30, 0x0
    li 31, 0x0
L_8022D02C:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022D040
    li 0, 0x0
    .4byte 0x48000040 # b .L_8022D07C
L_8022D040:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022D050
    li 0, 0x0
    .4byte 0x48000030 # b .L_8022D07C
L_8022D050:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022D060
    li 0, 0x0
    .4byte 0x48000020 # b .L_8022D07C
L_8022D060:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022D078
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022D07C
L_8022D078:
    lbz 0, 0xcac(4)
L_8022D07C:
    clrlwi. 0, 0, 24
    .4byte 0x418202B4 # beq .L_8022D334
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022D094
    li 3, 0x0
    .4byte 0x48000068 # b .L_8022D0F8
L_8022D094:
    .4byte 0x4082000C # bne .L_8022D0A0
    li 0, 0x0
    .4byte 0x48000040 # b .L_8022D0DC
L_8022D0A0:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022D0B0
    li 0, 0x0
    .4byte 0x48000030 # b .L_8022D0DC
L_8022D0B0:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022D0C0
    li 0, 0x0
    .4byte 0x48000020 # b .L_8022D0DC
L_8022D0C0:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022D0D8
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022D0DC
L_8022D0D8:
    lbz 0, 0xcac(4)
L_8022D0DC:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022D0EC
    li 3, 0x0
    .4byte 0x48000010 # b .L_8022D0F8
L_8022D0EC:
    addi 0, 31, 0x4
    lwzx 3, 3, 0
    bl Player_IsLinked
L_8022D0F8:
    clrlwi. 0, 3, 24
    .4byte 0x41820238 # beq .L_8022D334
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022D114
    li 3, 0x0
    .4byte 0x48000068 # b .L_8022D178
L_8022D114:
    .4byte 0x4082000C # bne .L_8022D120
    li 0, 0x0
    .4byte 0x48000040 # b .L_8022D15C
L_8022D120:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022D130
    li 0, 0x0
    .4byte 0x48000030 # b .L_8022D15C
L_8022D130:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022D140
    li 0, 0x0
    .4byte 0x48000020 # b .L_8022D15C
L_8022D140:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022D158
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022D15C
L_8022D158:
    lbz 0, 0xcac(4)
L_8022D15C:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022D16C
    li 3, 0x0
    .4byte 0x48000010 # b .L_8022D178
L_8022D16C:
    addi 0, 31, 0x4
    lwzx 3, 3, 0
    bl fn_80241380
L_8022D178:
    clrlwi. 0, 3, 24
    .4byte 0x418201B8 # beq .L_8022D334
    mr 3, 29
    mr 4, 30
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x418201A4 # beq .L_8022D334
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    addi 0, 31, 0x4
    addi 4, 1, 0x38
    lwzx 3, 3, 0
    bl fn_8027FA08
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x40820010 # bne .L_8022D1C0
    lis 3, lbl_804CF460@ha
    addi 4, 3, lbl_804CF460@l
    .4byte 0x4800006C # b .L_8022D228
L_8022D1C0:
    .4byte 0x4082000C # bne .L_8022D1CC
    li 0, 0x0
    .4byte 0x48000040 # b .L_8022D208
L_8022D1CC:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022D1DC
    li 0, 0x0
    .4byte 0x48000030 # b .L_8022D208
L_8022D1DC:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022D1EC
    li 0, 0x0
    .4byte 0x48000020 # b .L_8022D208
L_8022D1EC:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022D204
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022D208
L_8022D204:
    lbz 0, 0xcac(4)
L_8022D208:
    clrlwi. 0, 0, 24
    .4byte 0x40820010 # bne .L_8022D21C
    lis 3, lbl_804CF460@ha
    addi 4, 3, lbl_804CF460@l
    .4byte 0x48000010 # b .L_8022D228
L_8022D21C:
    addi 0, 31, 0x4
    lwzx 3, 3, 0
    addi 4, 3, 0x8
L_8022D228:
    lfs 0, 0x8(4)
    addi 3, 1, 0x2c
    psq_l 1, 0x0(4), 0, 0
    stfs 0, 0x1c(1)
    psq_l 3, 0x38(1), 0, 0
    psq_l 2, 0x1c(1), 1, 0
    psq_l 0, 0x40(1), 1, 0
    ps_sub 3, 1, 3
    psq_st 1, 0x14(1), 0, 0
    ps_sub 0, 2, 0
    psq_st 3, 0x14(1), 0, 0
    psq_st 0, 0x1c(1), 1, 0
    lfs 0, 0x1c(1)
    psq_st 3, 0x0(3), 0, 0
    stfs 0, 0x34(1)
    bl PSVECMag
    fcmpo cr0, 1, 31
    .4byte 0x408100C8 # ble .L_8022D334
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x40820010 # bne .L_8022D288
    lis 3, lbl_804CF460@ha
    addi 4, 3, lbl_804CF460@l
    .4byte 0x4800006C # b .L_8022D2F0
L_8022D288:
    .4byte 0x4082000C # bne .L_8022D294
    li 0, 0x0
    .4byte 0x48000040 # b .L_8022D2D0
L_8022D294:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022D2A4
    li 0, 0x0
    .4byte 0x48000030 # b .L_8022D2D0
L_8022D2A4:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022D2B4
    li 0, 0x0
    .4byte 0x48000020 # b .L_8022D2D0
L_8022D2B4:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022D2CC
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022D2D0
L_8022D2CC:
    lbz 0, 0xcac(4)
L_8022D2D0:
    clrlwi. 0, 0, 24
    .4byte 0x40820010 # bne .L_8022D2E4
    lis 3, lbl_804CF460@ha
    addi 4, 3, lbl_804CF460@l
    .4byte 0x48000010 # b .L_8022D2F0
L_8022D2E4:
    addi 0, 31, 0x4
    lwzx 3, 3, 0
    addi 4, 3, 0x8
L_8022D2F0:
    lfs 0, 0x8(4)
    addi 3, 1, 0x20
    psq_l 1, 0x0(4), 0, 0
    stfs 0, 0x10(1)
    psq_l 3, 0x38(1), 0, 0
    psq_l 2, 0x10(1), 1, 0
    psq_l 0, 0x40(1), 1, 0
    ps_sub 3, 1, 3
    psq_st 1, 0x8(1), 0, 0
    ps_sub 0, 2, 0
    psq_st 3, 0x8(1), 0, 0
    psq_st 0, 0x10(1), 1, 0
    lfs 0, 0x10(1)
    psq_st 3, 0x0(3), 0, 0
    stfs 0, 0x28(1)
    bl PSVECMag
    fmr 31, 1
L_8022D334:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FCEC # blt .L_8022D02C
    fmr 1, 31
L_8022D348:
    psq_l 31, 0x68(1), 0, 0
    lwz 0, 0x74(1)
    lfd 31, 0x60(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_8022D36C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    .4byte 0x808D90D0 # lwz r4, lbl_8053AC90@sda21(r0)
    cmplwi 4, 0x0
    .4byte 0x418200EC # beq .L_8022D47C
    .4byte 0x4082000C # bne .L_8022D3A0
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022D3E0
L_8022D3A0:
    cmpwi 29, 0x0
    .4byte 0x4080000C # bge .L_8022D3B0
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022D3E0
L_8022D3B0:
    cmpwi 29, 0x4
    .4byte 0x4180000C # blt .L_8022D3C0
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022D3E0
L_8022D3C0:
    slwi 0, 29, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022D3DC
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022D3E0
L_8022D3DC:
    lbz 0, 0xcac(3)
L_8022D3E0:
    clrlwi. 0, 0, 24
    .4byte 0x41820098 # beq .L_8022D47C
    li 30, 0x0
    li 31, 0x0
L_8022D3F0:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022D404
    li 0, 0x0
    .4byte 0x48000040 # b .L_8022D440
L_8022D404:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022D414
    li 0, 0x0
    .4byte 0x48000030 # b .L_8022D440
L_8022D414:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022D424
    li 0, 0x0
    .4byte 0x48000020 # b .L_8022D440
L_8022D424:
    addi 0, 31, 0x4
    lwzx 3, 3, 0
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022D43C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022D440
L_8022D43C:
    lbz 0, 0xcac(3)
L_8022D440:
    clrlwi. 0, 0, 24
    .4byte 0x41820028 # beq .L_8022D46C
    mr 3, 29
    mr 4, 30
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8022D46C
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    addi 0, 31, 0x4
    lwzx 3, 3, 0
    bl fn_8024BB88
L_8022D46C:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF78 # blt .L_8022D3F0
L_8022D47C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8022D498:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022D4B8
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022D524
L_8022D4B8:
    .4byte 0x4082000C # bne .L_8022D4C4
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022D504
L_8022D4C4:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022D4D4
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022D504
L_8022D4D4:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022D4E4
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022D504
L_8022D4E4:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022D500
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022D504
L_8022D500:
    lbz 0, 0xcac(4)
L_8022D504:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022D520
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8024BB94
    .4byte 0x48000008 # b .L_8022D524
L_8022D520:
    li 3, 0x0
L_8022D524:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

