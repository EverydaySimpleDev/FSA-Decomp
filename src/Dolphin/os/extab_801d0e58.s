# Fresh-gap-hunt batch 24 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_80008478
etb_80008478:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008478, 8

.section extabindex, "a"
.balign 4
.global eti_800157D8
eti_800157D8:
    .4byte fn_801D0E58
    .4byte 0x00000074
    .4byte etb_80008478
.size eti_800157D8, 12

.text
.balign 4
.global fn_801D0E58

fn_801D0E58:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    addi 4, 1, 0x8
    stw 31, 0x1c(1)
    mr 31, 3
    addi 3, 31, 0xc
    bl fn_801CCD34
    lfs 0, 0x8(1)
    stfs 0, 0xc(31)
    lfs 0, 0xc(1)
    stfs 0, 0x10(31)
    lfs 0, 0xc(31)
    stfs 0, 0x18(31)
    lfs 0, 0x10(31)
    stfs 0, 0x1c(31)
    lfs 0, 0x14(31)
    stfs 0, 0x20(31)
    lfs 0, 0xc(31)
    stfs 0, 0x24(31)
    lfs 0, 0x10(31)
    stfs 0, 0x28(31)
    lfs 0, 0x14(31)
    stfs 0, 0x2c(31)
    lwz 31, 0x1c(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

