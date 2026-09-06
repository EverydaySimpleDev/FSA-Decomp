.section extab, "a"
.balign 4
.global etb_80007D9C
etb_80007D9C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80007D9C, 8

.section extabindex, "a"
.balign 4
.global eti_80014DE8
eti_80014DE8:
    .4byte fn_801BA670
    .4byte 0x000001E4
    .4byte etb_80007D9C
.size eti_80014DE8, 12

.text
.balign 4
.global fn_801BA670

# fn_801BA670(this) - ZORA's real draw(). Two visibility gates BEFORE
# drawing anything - genuinely new behavior, matching Zora's classic
# "surfaces to attack, dives/hides otherwise" mechanic:
#  1. Early-returns entirely unless this->0x248 (the recurring "draw
#     mode" field) is exactly 0 or 1.
#  2. A squared-distance check (paired-single ps_mul/ps_madd/ps_sum0
#     against a threshold constant) that ALSO skips drawing when
#     within range - i.e. ZORA is invisible/culled at close range,
#     consistent with a "submerges when approached" behavior.
# Only past both gates: builds the standard shared material struct,
# copies position offsets from this->0x54/0x58/0x5c, and applies a
# special blend-flag override (forces alpha/blend byte to -1) when
# the model index (this->0x280) falls in [9,15] - likely the
# submerged/transparent variant range. Draws via the CONFIRMED
# universal render primitive fn_801F06F0 using a dedicated model
# table (lbl_80469380).
fn_801BA670:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x2
    .4byte 0x40800014 # bge .L_801BA698
    cmpwi 0, 0x0
    .4byte 0x408001B8 # bge .L_801BA844
    .4byte 0x48000008 # b .L_801BA698
    .4byte 0x480001B0 # b .L_801BA844
L_801BA698:
    psq_l 3, 0x54(3), 0, 0
    lis 4, lbl_80539D44@ha
    lfs 2, 0x5c(3)
    ps_mul 3, 3, 3
    .4byte 0xC022BC08 # lfs f1, lbl_8053EBA8@sda21(r0)
    lfs 0, lbl_80539D44@l(4)
    ps_madd 2, 2, 2, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    mfcr 0
    extrwi. 0, 0, 1, 2
    .4byte 0x40820178 # bne .L_801BA844
    li 0, -0x1
    addi 10, 1, 0x38
    stw 0, 0x48(1)
    li 11, 0x0
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_801BA748
L_801BA6E8:
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
L_801BA748:
    clrlwi 0, 11, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801BA6E8
    .4byte 0xC022BC0C # lfs f1, lbl_8053EBAC@sda21(r0)
    li 7, 0x0
    li 6, 0x1
    li 8, -0x1
    li 5, 0x3
    li 4, 0x2
    stw 8, 0x48(1)
    addi 0, 1, 0x8
    stw 7, 0x4c(1)
    stw 7, 0x50(1)
    stb 7, 0x54(1)
    stb 7, 0x55(1)
    stb 7, 0x56(1)
    stb 6, 0x57(1)
    stb 6, 0x58(1)
    stb 7, 0x59(1)
    stb 7, 0x5a(1)
    stb 7, 0x5b(1)
    stb 7, 0x5c(1)
    stb 7, 0x5d(1)
    stb 6, 0x5e(1)
    stw 5, 0x60(1)
    stb 6, 0x64(1)
    stb 7, 0x65(1)
    stb 7, 0x66(1)
    stw 8, 0x68(1)
    stw 7, 0x6c(1)
    stw 4, 0x70(1)
    stfs 1, 0x14(1)
    stfs 1, 0x24(1)
    stfs 1, 0x34(1)
    lfs 3, 0x5c(3)
    lfs 2, 0x58(3)
    lfs 0, 0x54(3)
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    stfs 1, 0x10(1)
    stfs 1, 0x18(1)
    stfs 2, 0x1c(1)
    stfs 1, 0x20(1)
    stfs 1, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 3, 0x30(1)
    stw 0, 0x50(1)
    lwz 0, 0x280(3)
    cmpwi 0, 0x10
    .4byte 0x40800014 # bge .L_801BA820
    cmpwi 0, 0x9
    .4byte 0x40800008 # bge .L_801BA81C
    .4byte 0x48000008 # b .L_801BA820
L_801BA81C:
    stb 8, 0x54(1)
L_801BA820:
    .4byte 0xC022BC10 # lfs f1, lbl_8053EBB0@sda21(r0)
    lis 4, lbl_80469380@ha
    lwz 5, 0x280(3)
    addi 4, 4, lbl_80469380@l
    fmr 2, 1
    addi 6, 1, 0x38
    addi 5, 5, 0xd5
    li 7, -0x1
    bl fn_801F06F0
L_801BA844:
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

