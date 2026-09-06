# Fresh-gap-hunt batch 15 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.text
.balign 4
.global DCEnable
.global DCInvalidateRange
.global DCFlushRange
.global fn_80040F90
.global DCFlushRangeNoSync
.global fn_80040FEC
.global fn_80041018
.global ICInvalidateRange
.global ICFlashInvalidate
.global ICEnable
.global fn_8004109C
.global fn_80041168
.global LCDisable
.global fn_800411C8
.global fn_800411EC
.global fn_80041298

DCEnable:
    sync
    mfspr 3, 1008
    ori 3, 3, 0x4000
    mtspr 1008, 3
    blr

DCInvalidateRange:
    cmplwi 4, 0x0
    blelr
    clrlwi 5, 3, 27
    add 4, 4, 5
    addi 4, 4, 0x1f
    srwi 4, 4, 5
    mtctr 4
L_80040F50:
    dcbi 0, 3
    addi 3, 3, 0x20
    .4byte 0x4200FFF8 # bdnz .L_80040F50
    blr

DCFlushRange:
    cmplwi 4, 0x0
    blelr
    clrlwi 5, 3, 27
    add 4, 4, 5
    addi 4, 4, 0x1f
    srwi 4, 4, 5
    mtctr 4
L_80040F7C:
    dcbf 0, 3
    addi 3, 3, 0x20
    .4byte 0x4200FFF8 # bdnz .L_80040F7C
    sc
    blr

fn_80040F90:
    cmplwi 4, 0x0
    blelr
    clrlwi 5, 3, 27
    add 4, 4, 5
    addi 4, 4, 0x1f
    srwi 4, 4, 5
    mtctr 4
L_80040FAC:
    dcbst 0, 3
    addi 3, 3, 0x20
    .4byte 0x4200FFF8 # bdnz .L_80040FAC
    sc
    blr

DCFlushRangeNoSync:
    cmplwi 4, 0x0
    blelr
    clrlwi 5, 3, 27
    add 4, 4, 5
    addi 4, 4, 0x1f
    srwi 4, 4, 5
    mtctr 4
L_80040FDC:
    dcbf 0, 3
    addi 3, 3, 0x20
    .4byte 0x4200FFF8 # bdnz .L_80040FDC
    blr

fn_80040FEC:
    cmplwi 4, 0x0
    blelr
    clrlwi 5, 3, 27
    add 4, 4, 5
    addi 4, 4, 0x1f
    srwi 4, 4, 5
    mtctr 4
L_80041008:
    dcbst 0, 3
    addi 3, 3, 0x20
    .4byte 0x4200FFF8 # bdnz .L_80041008
    blr

fn_80041018:
    cmplwi 4, 0x0
    blelr
    clrlwi 5, 3, 27
    add 4, 4, 5
    addi 4, 4, 0x1f
    srwi 4, 4, 5
    mtctr 4
L_80041034:
    dcbz 0, 3
    addi 3, 3, 0x20
    .4byte 0x4200FFF8 # bdnz .L_80041034
    blr

ICInvalidateRange:
    cmplwi 4, 0x0
    blelr
    clrlwi 5, 3, 27
    add 4, 4, 5
    addi 4, 4, 0x1f
    srwi 4, 4, 5
    mtctr 4
L_80041060:
    icbi 0, 3
    addi 3, 3, 0x20
    .4byte 0x4200FFF8 # bdnz .L_80041060
    sync
    isync
    blr

ICFlashInvalidate:
    mfspr 3, 1008
    ori 3, 3, 0x800
    mtspr 1008, 3
    blr

ICEnable:
    isync
    mfspr 3, 1008
    ori 3, 3, 0x8000
    mtspr 1008, 3
    blr

fn_8004109C:
    mfmsr 5
    ori 5, 5, 0x1000
    mtmsr 5
    lis 3, 0x8000
    li 4, 0x400
    mtctr 4
L_800410B4:
    dcbt 0, 3
    dcbst 0, 3
    addi 3, 3, 0x20
    .4byte 0x4200FFF4 # bdnz .L_800410B4
    mfspr 4, 920
    oris 4, 4, 0x100f
    mtspr 920, 4
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    lis 3, 0xe000
    ori 3, 3, 0x2
    mtdbatl 3, 3
    ori 3, 3, 0x1fe
    mtdbatu 3, 3
    isync
    lis 3, 0xe000
    li 6, 0x200
    mtctr 6
    li 6, 0x0
L_80041128:
    dcbz_l 6, 3
    addi 3, 3, 0x20
    .4byte 0x4200FFF8 # bdnz .L_80041128
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    blr

fn_80041168:
    mflr 0
    stw 0, 0x4(1)
    stwu 1, -0x10(1)
    stw 31, 0xc(1)
    bl OSDisableInterrupts
    mr 31, 3
    bl fn_8004109C
    mr 3, 31
    bl OSRestoreInterrupts
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    addi 1, 1, 0x10
    mtlr 0
    blr

LCDisable:
    lis 3, 0xe000
    li 4, 0x200
    mtctr 4
L_800411AC:
    dcbi 0, 3
    addi 3, 3, 0x20
    .4byte 0x4200FFF8 # bdnz .L_800411AC
    mfspr 4, 920
    rlwinm 4, 4, 0, 4, 2
    mtspr 920, 4
    blr

fn_800411C8:
    extrwi 6, 5, 5, 25
    clrlwi 3, 3, 4
    or 6, 6, 3
    mtspr 922, 6
    clrlslwi 6, 5, 30, 2
    or 6, 6, 4
    ori 6, 6, 0x2
    mtspr 923, 6
    blr

fn_800411EC:
    mflr 0
    stw 0, 0x4(1)
    stwu 1, -0x28(1)
    stw 31, 0x24(1)
    stw 30, 0x20(1)
    stw 29, 0x1c(1)
    stw 28, 0x18(1)
    mr 28, 3
    mr 29, 4
    addi 0, 5, 0x1f
    srwi 3, 0, 5
    addi 0, 3, 0x7f
    mr 31, 3
    srwi 30, 0, 7
    .4byte 0x48000004 # b .L_80041228
L_80041228:
    .4byte 0x48000004 # b .L_8004122C
L_8004122C:
    .4byte 0x48000040 # b .L_8004126C
L_80041230:
    cmplwi 31, 0x80
    .4byte 0x4080001C # bge .L_80041250
    mr 3, 28
    mr 4, 29
    mr 5, 31
    bl fn_800411C8
    li 31, 0x0
    .4byte 0x48000020 # b .L_8004126C
L_80041250:
    mr 3, 28
    mr 4, 29
    li 5, 0x0
    bl fn_800411C8
    subi 31, 31, 0x80
    addi 28, 28, 0x1000
    addi 29, 29, 0x1000
L_8004126C:
    cmplwi 31, 0x0
    .4byte 0x4082FFC0 # bne .L_80041230
    mr 3, 30
    lwz 0, 0x2c(1)
    lwz 31, 0x24(1)
    lwz 30, 0x20(1)
    lwz 29, 0x1c(1)
    lwz 28, 0x18(1)
    addi 1, 1, 0x28
    mtlr 0
    blr

fn_80041298:
    mfspr 4, 920
    extrwi 4, 4, 4, 4
    cmpw 4, 3
    bgt fn_80041298
    blr

