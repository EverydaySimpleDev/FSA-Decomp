.section extab, "a"
.balign 4
.global etb_80007DE4
etb_80007DE4:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80007DE4, 8

.section extabindex, "a"
.balign 4
.global eti_80014E54
eti_80014E54:
    .4byte fn_801BB618
    .4byte 0x000001DC
    .4byte etb_80007DE4
.size eti_80014E54, 12

.text
.balign 4
.global fn_801BB618

# fn_801BB618(this) - "FALL"'s real draw(). Early-returns unless
# this->0x248 (draw mode) is exactly 0 or 9. Builds the standard
# shared material struct, then computes a per-frame ALPHA/BLEND byte:
#  - mode 0 -> alpha 0 (fully transparent/invisible).
#  - a specific mid-range of mode values -> alpha 0xFF (fully opaque).
#  - otherwise -> a genuine FADE calculation: `(this->0x14 - const1) *
#    const2`, clamped into a [min,max] range (both shared constants),
#    scaled and truncated to an integer alpha - i.e. FALL fades in/out
#    over time (this->0x14 is a timer), matching a hazard that
#    materializes/dematerializes rather than popping in solid.
# Draws via the CONFIRMED 4th render-primitive family member
# (fn_801F02BC, a transform-matrix-building wrapper) using a dedicated
# model table (lbl_804693C4).
fn_801BB618:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x9
    .4byte 0x418201B8 # beq .L_801BB7E4
    .4byte 0x40800014 # bge .L_801BB644
    cmpwi 0, 0x0
    .4byte 0x418201AC # beq .L_801BB7E4
    .4byte 0x48000008 # b .L_801BB644
    .4byte 0x480001A4 # b .L_801BB7E4
L_801BB644:
    li 0, -0x1
    addi 10, 1, 0x8
    stw 0, 0x18(1)
    li 11, 0x0
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_801BB6BC
L_801BB65C:
    clrlwi 0, 11, 24
    addi 8, 11, 0x5
    addi 6, 11, 0x1
    stbx 11, 10, 0
    clrlwi 0, 6, 24
    addi 4, 11, 0x2
    stbx 6, 10, 0
    clrlwi 0, 4, 24
    addi 5, 11, 0x3
    addi 9, 11, 0x4
    stbx 4, 10, 0
    clrlwi 0, 5, 24
    clrlwi 7, 8, 24
    addi 6, 11, 0x6
    stbx 5, 10, 0
    clrlwi 0, 9, 24
    addi 4, 11, 0x7
    clrlwi 5, 6, 24
    stbx 9, 10, 0
    clrlwi 0, 4, 24
    addi 11, 11, 0x8
    stbx 8, 10, 7
    stbx 6, 10, 5
    stbx 4, 10, 0
L_801BB6BC:
    clrlwi 0, 11, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801BB65C
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 7, 0x18(1)
    stw 6, 0x1c(1)
    stw 6, 0x20(1)
    stb 6, 0x24(1)
    stb 6, 0x25(1)
    stb 6, 0x26(1)
    stb 5, 0x27(1)
    stb 5, 0x28(1)
    stb 6, 0x29(1)
    stb 6, 0x2a(1)
    stb 6, 0x2b(1)
    stb 6, 0x2c(1)
    stb 6, 0x2d(1)
    stb 5, 0x2e(1)
    stw 4, 0x30(1)
    stb 5, 0x34(1)
    stb 6, 0x35(1)
    stb 6, 0x36(1)
    stw 7, 0x38(1)
    stw 6, 0x3c(1)
    stw 0, 0x40(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x7
    .4byte 0x40800010 # bge .L_801BB748
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801BB758
    .4byte 0x48000024 # b .L_801BB768
L_801BB748:
    cmpwi 0, 0x9
    .4byte 0x4182000C # beq .L_801BB758
    .4byte 0x40800018 # bge .L_801BB768
    .4byte 0x4800000C # b .L_801BB760
L_801BB758:
    li 0, 0x0
    .4byte 0x48000058 # b .L_801BB7B4
L_801BB760:
    li 0, 0xff
    .4byte 0x48000050 # b .L_801BB7B4
L_801BB768:
    lfs 2, 0x14(3)
    .4byte 0xC002BC60 # lfs f0, lbl_8053EC00@sda21(r0)
    .4byte 0xC022BC64 # lfs f1, lbl_8053EC04@sda21(r0)
    fsubs 2, 2, 0
    .4byte 0xC002BC68 # lfs f0, lbl_8053EC08@sda21(r0)
    fmuls 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_801BB790
    fmr 1, 0
    .4byte 0x48000014 # b .L_801BB7A0
L_801BB790:
    .4byte 0xC002BC6C # lfs f0, lbl_8053EC0C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_801BB7A0
    fmr 1, 0
L_801BB7A0:
    .4byte 0xC002BC70 # lfs f0, lbl_8053EC10@sda21(r0)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x48(1)
    lwz 0, 0x4c(1)
L_801BB7B4:
    stb 0, 0x1b(1)
    lis 4, lbl_804693C4@ha
    .4byte 0xC022BC68 # lfs f1, lbl_8053EC08@sda21(r0)
    addi 4, 4, lbl_804693C4@l
    lwz 5, 0x280(3)
    addi 6, 1, 0x8
    fmr 2, 1
    li 7, 0x407
    addi 5, 5, 0x8a
    li 8, 0x0
    li 9, 0x0
    bl fn_801F02BC
L_801BB7E4:
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

