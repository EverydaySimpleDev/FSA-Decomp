# Fresh-gap-hunt batch 14 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_80008DF4
etb_80008DF4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008DF4, 8

.global etb_80008DFC
etb_80008DFC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80008DFC, 8

.global etb_80008E04
etb_80008E04:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80008E04, 8

.global etb_80008E0C
etb_80008E0C:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80008E0C, 8

.global etb_80008E14
etb_80008E14:
    .4byte 0x380A0000
    .4byte 0x00000000
.size etb_80008E14, 8

.global etb_80008E1C
etb_80008E1C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80008E1C, 8

.section extabindex, "a"
.balign 4
.global eti_800164C8
eti_800164C8:
    .4byte fn_801F26CC
    .4byte 0x0000004C
    .4byte etb_80008DF4
.size eti_800164C8, 12

.global eti_800164D4
eti_800164D4:
    .4byte fn_801F2718
    .4byte 0x00000028
    .4byte etb_80008DFC
.size eti_800164D4, 12

.global eti_800164E0
eti_800164E0:
    .4byte fn_801F2740
    .4byte 0x0000011C
    .4byte etb_80008E04
.size eti_800164E0, 12

.global eti_800164EC
eti_800164EC:
    .4byte fn_801F285C
    .4byte 0x000001B4
    .4byte etb_80008E0C
.size eti_800164EC, 12

.global eti_800164F8
eti_800164F8:
    .4byte fn_801F2A10
    .4byte 0x00000110
    .4byte etb_80008E14
.size eti_800164F8, 12

.global eti_80016504
eti_80016504:
    .4byte fn_801F2B20
    .4byte 0x0000005C
    .4byte etb_80008E1C
.size eti_80016504, 12

.text
.balign 4
.global fn_801F26CC
.global fn_801F2718
.global fn_801F2740
.global fn_801F285C
.global fn_801F2A10
.global fn_801F2B20

fn_801F26CC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    bl SpatialRegistry_GetBase
    lwz 6, 0x198(30)
    mr 4, 30
    .4byte 0xC022C7A8 # lfs f1, lbl_8053F748@sda21(r0)
    mr 5, 31
    bl fn_801F7F58
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801F2718:
    stwu 1, -0x10(1)
    mflr 0
    lwz 5, 0x198(3)
    stw 0, 0x14(1)
    .4byte 0xC022C7A8 # lfs f1, lbl_8053F748@sda21(r0)
    bl fn_801F8108
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801F2740:
    stwu 1, -0x30(1)
    mflr 0
    lfs 1, 0x6c(3)
    stw 0, 0x34(1)
    lfs 2, 0x10(3)
    stmw 27, 0x1c(1)
    mr 27, 3
    lfs 0, 0x64(3)
    fadds 3, 1, 2
    lfs 4, 0x14(3)
    mr 28, 4
    fadds 1, 0, 2
    lfs 2, 0x68(3)
    lfs 5, 0xc(3)
    lfs 0, 0x60(3)
    fsubs 3, 3, 4
    fadds 2, 2, 5
    fsubs 1, 1, 4
    li 30, 0x0
    fadds 0, 0, 5
    stfs 3, 0x14(1)
    li 29, 0x0
    stfs 1, 0xc(1)
    stfs 0, 0x8(1)
    stfs 2, 0x10(1)
L_801F27A4:
    cmpw 29, 28
    .4byte 0x41820090 # beq .L_801F2838
    lwz 31, 0x4(27)
    bl GetRoomConfigRecord
    addis 4, 31, 0x1
    addi 4, 4, 0x31df
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_801F27EC
    mr 3, 29
    bl fn_8023E724
    lfs 2, 0x8(3)
    lfs 1, 0x14(27)
    .4byte 0xC002C7A8 # lfs f0, lbl_8053F748@sda21(r0)
    fsubs 1, 1, 2
    fabs 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x41810050 # bgt .L_801F2838
L_801F27EC:
    mr 3, 29
    mr 4, 28
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x4082003C # bne .L_801F2838
    mr 3, 29
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x4082002C # bne .L_801F2838
    lwz 5, 0x4(27)
    mr 3, 29
    addi 4, 1, 0x8
    bl fn_8023B190
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801F2838
    li 0, 0x1
    slw 0, 0, 29
    or 0, 30, 0
    clrlwi 30, 0, 24
L_801F2838:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF64 # blt .L_801F27A4
    clrlwi 3, 30, 24
    lmw 27, 0x1c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_801F285C:
    stwu 1, -0x40(1)
    mflr 0
    lfs 1, 0x6c(3)
    stw 0, 0x44(1)
    lfs 2, 0x10(3)
    stmw 27, 0x2c(1)
    mr. 29, 7
    lfs 0, 0x64(3)
    fadds 3, 1, 2
    lfs 4, 0x14(3)
    mr 30, 3
    fadds 1, 0, 2
    lfs 2, 0x68(3)
    lfs 5, 0xc(3)
    lfs 0, 0x60(3)
    fsubs 3, 3, 4
    fadds 2, 2, 5
    fsubs 1, 1, 4
    mr 31, 4
    fadds 0, 0, 5
    stfs 3, 0x1c(1)
    mr 27, 5
    stfs 1, 0x14(1)
    li 28, -0x1
    stfs 0, 0x10(1)
    stfs 2, 0x18(1)
    .4byte 0x4180002C # blt .L_801F28F0
    lwz 5, 0x4(30)
    mr 7, 6
    mr 3, 29
    addi 4, 1, 0x10
    addi 6, 1, 0x8
    bl fn_8023B9CC
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_801F2904
    mr 28, 29
    .4byte 0x48000018 # b .L_801F2904
L_801F28F0:
    lwz 4, 0x4(30)
    addi 3, 1, 0x10
    addi 5, 1, 0x8
    bl fn_8023B8E4
    mr 28, 3
L_801F2904:
    cmpwi 28, -0x1
    .4byte 0x40820060 # bne .L_801F2968
    cmpwi 29, 0x0
    .4byte 0x41800028 # blt .L_801F2938
    lwz 5, 0x4(30)
    mr 3, 29
    addi 4, 1, 0x10
    addi 6, 1, 0x8
    bl fn_8023B848
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_801F294C
    mr 28, 29
    .4byte 0x48000018 # b .L_801F294C
L_801F2938:
    lwz 4, 0x4(30)
    addi 3, 1, 0x10
    addi 5, 1, 0x8
    bl fn_8023B768
    mr 28, 3
L_801F294C:
    cmpwi 28, -0x1
    .4byte 0x41820044 # beq .L_801F2994
    cmplwi 27, 0x0
    .4byte 0x4182003C # beq .L_801F2994
    li 0, 0x0
    stw 0, 0x0(27)
    .4byte 0x48000030 # b .L_801F2994
L_801F2968:
    cmplwi 27, 0x0
    .4byte 0x41820028 # beq .L_801F2994
    mr 3, 28
    bl fn_80233DA4
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801F298C
    li 0, 0x0
    stw 0, 0x0(27)
    .4byte 0x4800000C # b .L_801F2994
L_801F298C:
    li 0, 0x1
    stw 0, 0x0(27)
L_801F2994:
    cmpwi 28, -0x1
    .4byte 0x41820048 # beq .L_801F29E0
    lwz 29, 0x4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_801F29E0
    mr 3, 28
    bl fn_8023E724
    lfs 2, 0x8(3)
    lfs 1, 0x14(30)
    .4byte 0xC002C7A8 # lfs f0, lbl_8053F748@sda21(r0)
    fsubs 1, 1, 2
    fabs 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x40810008 # ble .L_801F29E0
    li 28, -0x1
L_801F29E0:
    cmplwi 31, 0x0
    .4byte 0x41820014 # beq .L_801F29F8
    lfs 0, 0x8(1)
    stfs 0, 0x0(31)
    lfs 0, 0xc(1)
    stfs 0, 0x4(31)
L_801F29F8:
    mr 3, 28
    lmw 27, 0x2c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_801F2A10:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 25, 0x24(1)
    mr 25, 3
    mr 26, 4
    mr 27, 5
    mr 28, 6
    mr 29, 7
    li 30, 0x0
    lfs 1, 0x6c(3)
    lfs 2, 0x10(3)
    lfs 0, 0x64(3)
    fadds 3, 1, 2
    lfs 4, 0x14(3)
    fadds 1, 0, 2
    lfs 2, 0x68(3)
    lfs 5, 0xc(3)
    lfs 0, 0x60(3)
    fsubs 3, 3, 4
    fadds 2, 2, 5
    fsubs 1, 1, 4
    fadds 0, 0, 5
    stfs 3, 0x14(1)
    stfs 1, 0xc(1)
    stfs 0, 0x8(1)
    stfs 2, 0x10(1)
L_801F2A7C:
    lwz 31, 0x4(25)
    bl GetRoomConfigRecord
    addis 4, 31, 0x1
    addi 4, 4, 0x31df
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_801F2ABC
    mr 3, 30
    bl fn_8023E724
    lfs 2, 0x8(3)
    lfs 1, 0x14(25)
    .4byte 0xC002C7A8 # lfs f0, lbl_8053F748@sda21(r0)
    fsubs 1, 1, 2
    fabs 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x41810044 # bgt .L_801F2AFC
L_801F2ABC:
    mr 3, 30
    mr 4, 26
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x40820030 # bne .L_801F2AFC
    lwz 5, 0x4(25)
    mr 3, 30
    mr 6, 27
    mr 7, 28
    mr 8, 29
    addi 4, 1, 0x8
    bl fn_80239B64
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801F2AFC
    li 3, 0x1
    .4byte 0x48000014 # b .L_801F2B0C
L_801F2AFC:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF78 # blt .L_801F2A7C
    li 3, 0x0
L_801F2B0C:
    lmw 25, 0x24(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_801F2B20:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lbz 31, 0x164(3)
    stw 4, 0x168(3)
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F84C4
    lbz 0, 0x164(30)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801F2B60
    li 0, 0x0
    stb 0, 0x164(30)
L_801F2B60:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

