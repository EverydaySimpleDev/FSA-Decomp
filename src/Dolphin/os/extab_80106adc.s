/*
 * fn_80106ADC(this, mode): a method of the fn_80106C84-class (confirmed
 * by fn_80106C84's update(), which calls this directly with its own
 * state as `mode` - first past the fn_801068B8 __sinit boundary, no
 * dtor sighting yet). Computes an RGB
 * color triple (stack floats at +0x8/0xc/0x10) selected by `mode` (0-2)
 * and this->0x234 (a 0-4 "variant" state) - each combination picks one
 * of several color constants (lbl_8053C2A0/2A4/2A8/2AC/2B0), including
 * a negated-red variant for variant 3. Then loops over 4 candidates
 * running the SAME accept-chain fn_801056E4 used (fn_8023DE58 owner-
 * check, Player_GetCapabilityFlagByIndex confirmed-check, fn_80234D94, fn_8022D75C,
 * fn_80230188) plus an extra category check (fn_8022CAF8==4 ->
 * fn_8022F478) and a code-range check (fn_80226850 result in
 * [0x3ee,0x3ef]) before calling fn_8023DFF4(candidate, &colorRGB) - a
 * "set tint/highlight color" call. Reads as "apply a category-specific
 * tint color to all accepted targets."
 */

.section extab, "a"
.balign 4
.global etb_80005A64
etb_80005A64:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80005A64, 8

.section extabindex, "a"
.balign 4
.global eti_80011EA8
eti_80011EA8:
    .4byte fn_80106ADC
    .4byte 0x000001A8
    .4byte etb_80005A64
.size eti_80011EA8, 12

.text
.balign 4
.global fn_80106ADC

fn_80106ADC:
    stwu 1, -0x30(1)
    mflr 0
    .4byte 0xC0029300 # lfs f0, lbl_8053C2A0@sda21(r0)
    cmpwi 4, 0x1
    stw 0, 0x34(1)
    .4byte 0xC0229304 # lfs f1, lbl_8053C2A4@sda21(r0)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    mr 29, 3
    stfs 0, 0x8(1)
    stfs 0, 0xc(1)
    stfs 0, 0x10(1)
    .4byte 0x4182001C # beq .L_80106B2C
    .4byte 0x40800008 # bge .L_80106B1C
    .4byte 0x48000094 # b .L_80106BAC
L_80106B1C:
    cmpwi 4, 0x3
    .4byte 0x4080008C # bge .L_80106BAC
    .4byte 0xC0029308 # lfs f0, lbl_8053C2A8@sda21(r0)
    fmuls 1, 1, 0
L_80106B2C:
    lwz 0, 0x234(29)
    cmpwi 0, 0x2
    .4byte 0x41820038 # beq .L_80106B6C
    .4byte 0x40800014 # bge .L_80106B4C
    cmpwi 0, 0x0
    .4byte 0x4182005C # beq .L_80106B9C
    .4byte 0x40800040 # bge .L_80106B84
    .4byte 0x48000064 # b .L_80106BAC
L_80106B4C:
    cmpwi 0, 0x4
    .4byte 0x4080005C # bge .L_80106BAC
    .4byte 0xC0229300 # lfs f1, lbl_8053C2A0@sda21(r0)
    .4byte 0xC002930C # lfs f0, lbl_8053C2AC@sda21(r0)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    stfs 1, 0x10(1)
    .4byte 0x48000044 # b .L_80106BAC
L_80106B6C:
    .4byte 0xC0229300 # lfs f1, lbl_8053C2A0@sda21(r0)
    .4byte 0xC0029310 # lfs f0, lbl_8053C2B0@sda21(r0)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    stfs 1, 0x10(1)
    .4byte 0x4800002C # b .L_80106BAC
L_80106B84:
    fneg 1, 1
    .4byte 0xC0029300 # lfs f0, lbl_8053C2A0@sda21(r0)
    stfs 0, 0xc(1)
    stfs 1, 0x8(1)
    stfs 0, 0x10(1)
    .4byte 0x48000014 # b .L_80106BAC
L_80106B9C:
    .4byte 0xC0029300 # lfs f0, lbl_8053C2A0@sda21(r0)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    stfs 0, 0x10(1)
L_80106BAC:
    li 30, 0x0
L_80106BB0:
    mr 3, 30
    bl fn_8023DE58
    lwz 0, 0x4(29)
    cmpw 0, 3
    .4byte 0x4082009C # bne .L_80106C5C
    mr 3, 30
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182008C # beq .L_80106C5C
    mr 3, 30
    bl fn_80234D94
    clrlwi. 0, 3, 24
    .4byte 0x4082007C # bne .L_80106C5C
    mr 3, 30
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x4082006C # bne .L_80106C5C
    mr 3, 30
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4082005C # bne .L_80106C5C
    mr 3, 30
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820014 # bne .L_80106C24
    mr 3, 30
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x4082003C # bne .L_80106C5C
L_80106C24:
    mr 3, 30
    bl fn_8023DE58
    mr 31, 3
    mr 3, 30
    bl fn_8023E724
    mr 4, 31
    bl fn_80226850
    subi 0, 3, 0x3ee
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x40810010 # ble .L_80106C5C
    mr 3, 30
    addi 4, 1, 0x8
    bl fn_8023DFF4
L_80106C5C:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF4C # blt .L_80106BB0
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

