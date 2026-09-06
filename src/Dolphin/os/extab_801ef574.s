.section extab, "a"
.balign 4
.global etb_80008D7C
etb_80008D7C:
    .4byte 0x900A0000
    .4byte 0x00000000
.size etb_80008D7C, 8

.section extabindex, "a"
.balign 4
.global eti_80016414
eti_80016414:
    .4byte fn_801EF574
    .4byte 0x000002BC
    .4byte etb_80008D7C
.size eti_80016414, 12

# fn_801EF574(this, materialPtr, dataPtr) - a sibling of `fn_801F06F0`
# (see [[project_fsa_rendering_pipeline_foothold]]) confirming and
# extending the same renderer-bridge architecture. Builds a default
# material/color struct (the SAME default byte pattern `fn_801F06F0`
# builds), optionally overwritten wholesale from `materialPtr` when non-
# null, then resolves a model/mesh HANDLE via the confirmed resource-
# manager virtual call (`lbl_8053AAF8->0xa4`'s vtable slot 0x18) - always
# passing the SAME literal constant `0x534F4220` as one of its arguments,
# confirming that value is a fixed category/key parameter to the resource
# manager, not incidental - and calls `fn_802F86CC` (the confirmed
# compressed-geometry renderer) with `lbl_8053AB10->0x20` as `this`.
# Simpler than `fn_801F06F0` - no type/mode branching, always the same
# single render path.
.text
.balign 4
.global fn_801EF574

fn_801EF574:
    stwu 1, -0xb0(1)
    mflr 0
    li 12, 0x0
    stw 0, 0xb4(1)
    li 0, -0x1
    addi 11, 1, 0x10
    stmw 14, 0x68(1)
    stw 4, 0x8(1)
    stw 5, 0xc(1)
    stw 0, 0x20(1)
    stw 0, 0x24(1)
    .4byte 0x48000064 # b .L_801EF604
L_801EF5A4:
    clrlwi 0, 12, 24
    addi 9, 12, 0x5
    addi 7, 12, 0x1
    stbx 12, 11, 0
    clrlwi 0, 7, 24
    addi 4, 12, 0x2
    stbx 7, 11, 0
    clrlwi 0, 4, 24
    addi 5, 12, 0x3
    addi 10, 12, 0x4
    stbx 4, 11, 0
    clrlwi 0, 5, 24
    clrlwi 8, 9, 24
    addi 7, 12, 0x6
    stbx 5, 11, 0
    clrlwi 0, 10, 24
    addi 4, 12, 0x7
    clrlwi 5, 7, 24
    stbx 10, 11, 0
    clrlwi 0, 4, 24
    addi 12, 12, 0x8
    stbx 9, 11, 8
    stbx 7, 11, 5
    stbx 4, 11, 0
L_801EF604:
    clrlwi 0, 12, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801EF5A4
    li 7, 0x0
    li 5, 0x1
    li 8, -0x1
    li 4, 0x3
    li 0, 0x2
    cmplwi 6, 0x0
    stw 8, 0x20(1)
    stw 7, 0x24(1)
    stw 7, 0x28(1)
    stb 7, 0x2c(1)
    stb 7, 0x2d(1)
    stb 7, 0x2e(1)
    stb 5, 0x2f(1)
    stb 5, 0x30(1)
    stb 7, 0x31(1)
    stb 7, 0x32(1)
    stb 7, 0x33(1)
    stb 7, 0x34(1)
    stb 7, 0x35(1)
    stb 5, 0x36(1)
    stw 4, 0x38(1)
    stb 5, 0x3c(1)
    stb 7, 0x3d(1)
    stb 7, 0x3e(1)
    stw 8, 0x40(1)
    stw 7, 0x44(1)
    stw 0, 0x48(1)
    .4byte 0x4182011C # beq .L_801EF798
    lbz 15, 0x2d(6)
    lwz 0, 0x28(6)
    stw 15, 0x58(1)
    lbz 15, 0x2e(6)
    stw 0, 0x38(1)
    lwz 0, 0x58(1)
    stw 15, 0x4c(1)
    lwz 15, 0x30(6)
    stb 0, 0x3d(1)
    lwz 0, 0x4c(1)
    stw 15, 0x50(1)
    lwz 15, 0x34(6)
    stb 0, 0x3e(1)
    lwz 0, 0x50(1)
    lwz 16, 0x0(6)
    lwz 17, 0x4(6)
    lwz 18, 0x8(6)
    lwz 19, 0xc(6)
    lbz 20, 0x10(6)
    lbz 21, 0x11(6)
    lbz 22, 0x12(6)
    lbz 23, 0x13(6)
    lbz 24, 0x14(6)
    lbz 25, 0x15(6)
    lbz 26, 0x16(6)
    lbz 27, 0x17(6)
    lwz 28, 0x18(6)
    lbz 29, 0x1c(6)
    lbz 30, 0x1d(6)
    lbz 31, 0x1e(6)
    lbz 12, 0x1f(6)
    lbz 11, 0x20(6)
    lbz 10, 0x21(6)
    lbz 9, 0x22(6)
    lbz 8, 0x23(6)
    lbz 7, 0x24(6)
    lbz 5, 0x25(6)
    lbz 4, 0x26(6)
    lbz 14, 0x2c(6)
    lwz 6, 0x38(6)
    stw 0, 0x40(1)
    mr 0, 15
    stw 15, 0x54(1)
    stw 16, 0x10(1)
    stw 17, 0x14(1)
    stw 18, 0x18(1)
    stw 19, 0x1c(1)
    stb 20, 0x20(1)
    stb 21, 0x21(1)
    stb 22, 0x22(1)
    stb 23, 0x23(1)
    stb 24, 0x24(1)
    stb 25, 0x25(1)
    stb 26, 0x26(1)
    stb 27, 0x27(1)
    stw 28, 0x28(1)
    stb 29, 0x2c(1)
    stb 30, 0x2d(1)
    stb 31, 0x2e(1)
    stb 12, 0x2f(1)
    stb 11, 0x30(1)
    stb 10, 0x31(1)
    stb 9, 0x32(1)
    stb 8, 0x33(1)
    stb 7, 0x34(1)
    stb 5, 0x35(1)
    stb 4, 0x36(1)
    stb 14, 0x3c(1)
    stw 0, 0x44(1)
    stw 6, 0x48(1)
L_801EF798:
    lbz 0, 0x23(1)
    li 10, 0x0
    li 8, 0x1
    li 7, 0x3f
    srawi 9, 0, 1
    li 0, -0x2
    stb 10, 0x20(1)
    lis 4, 0x534f
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    mr 5, 3
    stb 10, 0x21(1)
    addi 4, 4, 0x4220
    stb 10, 0x22(1)
    stb 9, 0x23(1)
    stw 8, 0x38(1)
    stb 7, 0x3e(1)
    stb 10, 0x2c(1)
    stb 0, 0x2d(1)
    stb 10, 0x30(1)
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022C7D4 # lfs f1, lbl_8053F774@sda21(r0)
    mr 5, 3
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    addi 7, 1, 0x10
    fmr 2, 1
    lwz 4, 0xc(1)
    lwz 3, 0x20(6)
    lwz 6, 0x8(1)
    bl fn_802F86CC
    lmw 14, 0x68(1)
    lwz 0, 0xb4(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

