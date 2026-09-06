# Fresh-gap-hunt batch 13 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_80008298
etb_80008298:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008298, 8

.global etb_800082A0
etb_800082A0:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_800082A0, 8

.global etb_800082A8
etb_800082A8:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800082A8, 8

.global etb_800082B0
etb_800082B0:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800082B0, 8

.global etb_800082B8
etb_800082B8:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800082B8, 8

.global etb_800082C0
etb_800082C0:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_800082C0, 8

.global etb_800082C8
etb_800082C8:
    .4byte 0x208A0000
    .4byte 0x00000000
.size etb_800082C8, 8

.global etb_800082D0
etb_800082D0:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800082D0, 8

.global etb_800082D8
etb_800082D8:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800082D8, 8

.section extabindex, "a"
.balign 4
.global eti_80015508
eti_80015508:
    .4byte fn_801CCB1C
    .4byte 0x000000B4
    .4byte etb_80008298
.size eti_80015508, 12

.global eti_80015514
eti_80015514:
    .4byte fn_801CCBD0
    .4byte 0x000000A8
    .4byte etb_800082A0
.size eti_80015514, 12

.global eti_80015520
eti_80015520:
    .4byte fn_801CCC78
    .4byte 0x0000004C
    .4byte etb_800082A8
.size eti_80015520, 12

.global eti_8001552C
eti_8001552C:
    .4byte fn_801CCCC4
    .4byte 0x00000070
    .4byte etb_800082B0
.size eti_8001552C, 12

.global eti_80015538
eti_80015538:
    .4byte fn_801CCD34
    .4byte 0x00000070
    .4byte etb_800082B8
.size eti_80015538, 12

.global eti_80015544
eti_80015544:
    .4byte fn_801CCDA4
    .4byte 0x00000098
    .4byte etb_800082C0
.size eti_80015544, 12

.global eti_80015550
eti_80015550:
    .4byte fn_801CCE3C
    .4byte 0x000000F8
    .4byte etb_800082C8
.size eti_80015550, 12

.global eti_8001555C
eti_8001555C:
    .4byte fn_801CCF34
    .4byte 0x00000048
    .4byte etb_800082D0
.size eti_8001555C, 12

.global eti_80015568
eti_80015568:
    .4byte fn_801CCF7C
    .4byte 0x00000068
    .4byte etb_800082D8
.size eti_80015568, 12

.text
.balign 4
.global fn_801CCB1C
.global fn_801CCBD0
.global fn_801CCC78
.global fn_801CCCC4
.global fn_801CCD34
.global fn_801CCDA4
.global fn_801CCE3C
.global fn_801CCF34
.global fn_801CCF7C

fn_801CCB1C:
    stwu 1, -0x20(1)
    mflr 0
    lfs 2, 0x4(3)
    stw 0, 0x24(1)
    lfs 1, 0x8(3)
    stw 31, 0x1c(1)
    li 31, 0x0
    fsubs 1, 2, 1
    lfs 0, 0x0(3)
    stw 30, 0x18(1)
    mr 30, 4
    stfs 0, 0x10(1)
    stfs 1, 0x14(1)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820050 # beq .L_801CCBB4
    mr 4, 30
    addi 3, 1, 0x10
    bl fn_802265FC
    clrlwi 0, 3, 16
    cmplwi 0, 0x2
    .4byte 0x40820038 # bne .L_801CCBB4
    .4byte 0xC022C000 # lfs f1, lbl_8053EFA0@sda21(r0)
    mr 4, 30
    lfs 0, 0x14(1)
    addi 3, 1, 0x8
    lfs 2, 0x10(1)
    fadds 0, 1, 0
    stfs 2, 0x8(1)
    stfs 0, 0xc(1)
    bl fn_802265FC
    clrlwi 0, 3, 16
    cmplwi 0, 0x2
    .4byte 0x40820008 # bne .L_801CCBB4
    li 31, 0x1
L_801CCBB4:
    lwz 0, 0x24(1)
    mr 3, 31
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801CCBD0:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    lfs 1, 0x0(3)
    mr 29, 4
    lfs 0, 0x4(3)
    li 31, 0x0
    stfs 1, 0x8(1)
    li 30, 0x0
    .4byte 0xC3E2C000 # lfs f31, lbl_8053EFA0@sda21(r0)
    stfs 0, 0xc(1)
L_801CCC10:
    mr 4, 29
    addi 3, 1, 0x8
    bl fn_80226998
    clrlwi 0, 3, 16
    cmpwi 0, 0x19e
    .4byte 0x40800014 # bge .L_801CCC38
    cmpwi 0, 0x19c
    .4byte 0x40800008 # bge .L_801CCC34
    .4byte 0x48000008 # b .L_801CCC38
L_801CCC34:
    li 31, 0x1
L_801CCC38:
    lfs 0, 0xc(1)
    addi 30, 30, 0x1
    cmpwi 30, 0x2
    fsubs 0, 0, 31
    stfs 0, 0xc(1)
    .4byte 0x4180FFC4 # blt .L_801CCC10
    mr 3, 31
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_801CCC78:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    li 31, 0x0
    bl fn_80226998
    clrlwi 0, 3, 16
    cmpwi 0, 0x4a
    .4byte 0x40800014 # bge .L_801CCCAC
    cmpwi 0, 0x40
    .4byte 0x40800008 # bge .L_801CCCA8
    .4byte 0x48000008 # b .L_801CCCAC
L_801CCCA8:
    li 31, 0x1
L_801CCCAC:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801CCCC4:
    stwu 1, -0x30(1)
    lis 0, 0x4330
    .4byte 0xC822BFD0 # lfd f1, lbl_8053EF70@sda21(r0)
    lfs 0, 0x0(3)
    stw 0, 0x10(1)
    fctiwz 0, 0
    .4byte 0xC042BFF8 # lfs f2, lbl_8053EF98@sda21(r0)
    stw 0, 0x20(1)
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    clrrwi 0, 0, 4
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fadds 0, 2, 0
    stfs 0, 0x0(3)
    lfs 0, 0x4(3)
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    clrrwi 0, 0, 4
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 1
    fadds 0, 2, 0
    stfs 0, 0x4(3)
    addi 1, 1, 0x30
    blr

fn_801CCD34:
    lfs 1, 0x0(3)
    lis 0, 0x4330
    stwu 1, -0x30(1)
    lfs 0, 0x4(3)
    fctiwz 1, 1
    stw 0, 0x10(1)
    fctiwz 0, 0
    .4byte 0xC842BFD0 # lfd f2, lbl_8053EF70@sda21(r0)
    stfd 1, 0x8(1)
    .4byte 0xC062BFF8 # lfs f3, lbl_8053EF98@sda21(r0)
    lwz 3, 0xc(1)
    stfd 0, 0x18(1)
    clrrwi 3, 3, 4
    stw 0, 0x20(1)
    lwz 0, 0x1c(1)
    stw 3, 0x14(1)
    clrrwi 0, 0, 4
    stw 0, 0x24(1)
    lfd 1, 0x10(1)
    lfd 0, 0x20(1)
    fsubs 1, 1, 2
    fsubs 0, 0, 2
    fadds 1, 3, 1
    fadds 0, 3, 0
    stfs 1, 0x0(4)
    stfs 0, 0x4(4)
    addi 1, 1, 0x30
    blr

fn_801CCDA4:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, 0x8000
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    subi 29, 4, 0x1
    li 30, -0x1
    mr 28, 29
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    mr 31, 3
    li 27, 0x0
    .4byte 0x4800003C # b .L_801CCE10
L_801CCDD8:
    mr 3, 27
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_801CCE0C
    mr 3, 27
    bl fn_80236228
    cmpw 3, 28
    .4byte 0x40800010 # bge .L_801CCE04
    mr 28, 3
    mr 30, 27
    .4byte 0x4800000C # b .L_801CCE0C
L_801CCE04:
    .4byte 0x40820008 # bne .L_801CCE0C
    mr 29, 28
L_801CCE0C:
    addi 27, 27, 0x1
L_801CCE10:
    cmpw 27, 31
    .4byte 0x4180FFC4 # blt .L_801CCDD8
    cmpw 29, 28
    .4byte 0x40820008 # bne .L_801CCE24
    li 30, -0x1
L_801CCE24:
    mr 3, 30
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801CCE3C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stfd 30, 0x20(1)
    psq_st 30, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    lis 5, lbl_80539D40@ha
    mr 28, 3
    lfs 30, lbl_80539D40@l(5)
    mr 29, 4
    li 31, -0x1
    li 30, 0x0
L_801CCE80:
    mr 3, 30
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_801CCEF4
    mr 3, 30
    bl fn_8023DE58
    cmpw 29, 3
    .4byte 0x40820058 # bne .L_801CCEF4
    mr 3, 30
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x40820048 # bne .L_801CCEF4
    mr 3, 30
    bl fn_8023E724
    lfs 1, 0x4(3)
    mr 3, 30
    lfs 0, 0x4(28)
    fsubs 31, 1, 0
    bl fn_8023E724
    lfs 2, 0x0(3)
    fmuls 0, 31, 31
    lfs 1, 0x0(28)
    fsubs 1, 2, 1
    fmuls 1, 1, 1
    fadds 0, 1, 0
    fcmpo cr0, 0, 30
    .4byte 0x4080000C # bge .L_801CCEF4
    fmr 30, 0
    mr 31, 30
L_801CCEF4:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF84 # blt .L_801CCE80
    mr 3, 31
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    psq_l 30, 0x28(1), 0, 0
    lfd 30, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x44(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_801CCF34:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801CCF60
    mr 3, 31
    bl fn_8022F3DC
    mr 31, 3
L_801CCF60:
    mr 3, 31
    bl fn_80236228
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801CCF7C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    mr 31, 3
    li 30, 0x0
    .4byte 0x48000020 # b .L_801CCFC0
L_801CCFA4:
    mr 3, 30
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_801CCFBC
    li 3, 0x0
    .4byte 0x48000014 # b .L_801CCFCC
L_801CCFBC:
    addi 30, 30, 0x1
L_801CCFC0:
    cmpw 30, 31
    .4byte 0x4180FFE0 # blt .L_801CCFA4
    li 3, 0x1
L_801CCFCC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

