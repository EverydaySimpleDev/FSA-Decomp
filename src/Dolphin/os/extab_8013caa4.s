.section extab, "a"
.balign 4
.global etb_80006B8C
etb_80006B8C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006B8C, 8

.section extabindex, "a"
.balign 4
.global eti_800134E0
eti_800134E0:
    .4byte fn_8013CAA4
    .4byte 0x000000A0
    .4byte etb_80006B8C
.size eti_800134E0, 12

# fn_8013CAA4(this, timeArg=f1) - returns 0 if `this` is NULL. Otherwise
# builds a bounds/seed structure from 3 tuning constants (lbl_8053CE00/
# CE04/CE08), passes `timeArg + lbl_8053CE08` and that structure to
# fn_8010F668(outVec3*, boundsStruct*) - likely a randomized-offset
# generator (bounded jitter) given the tuning-constant shape matches other
# jitter/randomization sites this session. Scales the resulting vec3 by a
# 4th tuning constant (lbl_8053CE0C) and passes it to
# fn_800EF0A4(scaledVec3*, this->0x68) - applies the (probably jittered)
# offset to a sub-field of `this`. Returns 1 on success.
.text
.balign 4
.global fn_8013CAA4

fn_8013CAA4:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    li 0, 0x0
    stw 31, 0x4c(1)
    mr. 31, 3
    .4byte 0x41820070 # beq .L_8013CB2C
    .4byte 0xC0029E68 # lfs f0, lbl_8053CE08@sda21(r0)
    addi 3, 1, 0x14
    .4byte 0xC0629E60 # lfs f3, lbl_8053CE00@sda21(r0)
    addi 4, 1, 0x8
    .4byte 0xC0429E64 # lfs f2, lbl_8053CE04@sda21(r0)
    fadds 1, 1, 0
    stfs 3, 0x20(1)
    stfs 3, 0x30(1)
    stfs 3, 0x40(1)
    stfs 3, 0x8(1)
    stfs 2, 0xc(1)
    stfs 2, 0x10(1)
    bl fn_8010F668
    lfs 2, 0x14(1)
    addi 3, 1, 0x14
    .4byte 0xC0629E6C # lfs f3, lbl_8053CE0C@sda21(r0)
    addi 4, 31, 0x68
    lfs 1, 0x18(1)
    lfs 0, 0x1c(1)
    fmuls 2, 2, 3
    fmuls 1, 1, 3
    fmuls 0, 0, 3
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    bl fn_800EF0A4
    li 0, 0x1
L_8013CB2C:
    clrlwi 3, 0, 24
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    mtlr 0
    addi 1, 1, 0x50
    blr
