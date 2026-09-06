.section extab, "a"
.balign 4
.global etb_80006BAC
etb_80006BAC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80006BAC, 8

.section extabindex, "a"
.balign 4
.global eti_80013510
eti_80013510:
    .4byte fn_8013D5D4
    .4byte 0x00000110
    .4byte etb_80006BAC
.size eti_80013510, 12

# fn_8013D5D4(this) - a lighting-matrix setup method, using REAL Nintendo
# SDK functions (PSMTXIdentity/PSMTXCopy/C_MTXLightOrtho - confirms real
# GX lighting calls are genuinely present, not placeholders). Builds 4
# identity matrices on the stack, calls fn_8013B490(lbl_8053AB10) (the
# already-landed forwarder to the singleton's own `->0x10` vtable slot
# 0x14, return value unused here), copies an embedded matrix from
# `lbl_8053AB10->0x10 + 0x80` into one of the stack matrices, then reads 2
# u16 fields from the SAME data source `fn_8013BFEC`'s constructor read
# (`lbl_8053A980->0x4`, offsets 4/6) and converts them to floats to build
# light-color/attenuation params for `C_MTXLightOrtho`. Queries the
# current scene (`fn_80134CC8(lbl_8053AAF8)`, a Scene Manager method) to
# conditionally apply the light matrix via `fn_800EBF88(this->0xc, mtx,
# 2)`, then unconditionally applies it again with codes `8` and `0xa`
# (likely 3 different light slots/channels).
.text
.balign 4
.global fn_8013D5D4

fn_8013D5D4:
    stwu 1, -0xe0(1)
    mflr 0
    stw 0, 0xe4(1)
    stw 31, 0xdc(1)
    stw 30, 0xd8(1)
    mr 30, 3
    addi 3, 1, 0x68
    bl PSMTXIdentity
    addi 31, 1, 0x98
    mr 3, 31
    bl PSMTXIdentity
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    addi 3, 1, 0x8
    bl PSMTXIdentity
    addi 3, 1, 0x38
    bl PSMTXIdentity
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 1, 0x68
    lwz 3, 0x10(3)
    addi 3, 3, 0x80
    bl PSMTXCopy
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 4, 0x4330
    .4byte 0xC0A29E70 # lfs f5, lbl_8053CE10@sda21(r0)
    mr 3, 31
    lwz 5, 0x4(5)
    .4byte 0xC0229E60 # lfs f1, lbl_8053CE00@sda21(r0)
    fmr 6, 5
    lhz 0, 0x4(5)
    fmr 7, 5
    lhz 5, 0x6(5)
    fmr 3, 1
    xoris 0, 0, 0x8000
    xoris 5, 5, 0x8000
    stw 4, 0xc8(1)
    .4byte 0xC8829E78 # lfd f4, lbl_8053CE18@sda21(r0)
    fmr 8, 5
    stw 5, 0xcc(1)
    lfd 0, 0xc8(1)
    stw 0, 0xd4(1)
    fsubs 2, 0, 4
    stw 4, 0xd0(1)
    lfd 0, 0xd0(1)
    fsubs 4, 0, 4
    bl C_MTXLightOrtho
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80134CC8
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_8013D6AC
    lwz 3, 0xc(30)
    addi 4, 1, 0x68
    li 5, 0x2
    bl fn_800EBF88
L_8013D6AC:
    lwz 3, 0xc(30)
    addi 4, 1, 0x68
    li 5, 0x8
    bl fn_800EBF88
    lwz 3, 0xc(30)
    addi 4, 1, 0x68
    li 5, 0xa
    bl fn_800EBF88
    lwz 0, 0xe4(1)
    lwz 31, 0xdc(1)
    lwz 30, 0xd8(1)
    mtlr 0
    addi 1, 1, 0xe0
    blr
