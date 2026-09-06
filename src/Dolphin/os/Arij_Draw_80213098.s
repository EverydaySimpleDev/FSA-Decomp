.section extab, "a"
.balign 4
.global etb_8000A0F0
etb_8000A0F0:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A0F0, 8

.section extabindex, "a"
.balign 4
.global eti_80017CB0
eti_80017CB0:
    .4byte fn_80213098
    .4byte 0x00000264
    .4byte etb_8000A0F0
.size eti_80017CB0, 12

.text
.balign 4
.global fn_80213098

# fn_80213098(this) - ARIJ's real draw(). A squared-distance check
# (paired-single ps_mul/ps_madd/ps_sum0 against a threshold, the SAME
# "hide when approached" shape as ZORA/IBBM) SKIPS drawing when within
# range, UNLESS draw mode (this->0x248) >= 3. Builds the standard
# shared material struct (model index from this->0x280+0x13d, +4 more
# when flag bit 18 of this->0x230 is clear) plus a secondary "trail/
# wake" effect struct (the same convention seen in TINK/FLOR).
#
# Branches on flag bit 18: when SET and not owned by a real player
# (this->0x4 < 8), fires a sound/effect via the resource manager's
# vtable slot 0x18 (the "PEFF"-family call) and draws via the
# CONFIRMED spatial-triad helper fn_802F86CC using the camera
# manager's ambient light-probe grid. When CLEAR: computes a state
# flag (7 if this->0x14 > a threshold else -1) and draws directly via
# the CONFIRMED universal render primitive fn_801F06F0 using a
# dedicated model table (lbl_8046A564).
fn_80213098:
    stwu 1, -0x80(1)
    mflr 0
    .4byte 0xC022CBB0 # lfs f1, lbl_8053FB50@sda21(r0)
    stw 0, 0x84(1)
    stw 31, 0x7c(1)
    stw 30, 0x78(1)
    mr 30, 3
    lis 3, lbl_80539D44@ha
    psq_l 3, 0x54(30), 0, 0
    lfs 0, lbl_80539D44@l(3)
    ps_mul 3, 3, 3
    lfs 2, 0x5c(30)
    fmuls 0, 1, 0
    ps_madd 2, 2, 2, 3
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    mfcr 0
    extrwi. 0, 0, 1, 2
    .4byte 0x40820200 # bne .L_802132E4
    lwz 0, 0x248(30)
    cmpwi 0, 0x3
    .4byte 0x4080000C # bge .L_802130FC
    cmpwi 0, 0x0
    .4byte 0x408001EC # bge .L_802132E4
L_802130FC:
    lwz 0, 0x230(30)
    lwz 3, 0x280(30)
    rlwinm. 0, 0, 0, 18, 18
    addi 31, 3, 0x13d
    .4byte 0x41820008 # beq .L_80213114
    addi 31, 31, 0x4
L_80213114:
    li 0, -0x1
    addi 9, 1, 0x38
    stw 0, 0x48(1)
    li 10, 0x0
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_8021318C
L_8021312C:
    clrlwi 0, 10, 24
    addi 7, 10, 0x5
    addi 5, 10, 0x1
    stbx 10, 9, 0
    clrlwi 0, 5, 24
    addi 3, 10, 0x2
    stbx 5, 9, 0
    clrlwi 0, 3, 24
    addi 4, 10, 0x3
    addi 8, 10, 0x4
    stbx 3, 9, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 10, 0x6
    stbx 4, 9, 0
    clrlwi 0, 8, 24
    addi 3, 10, 0x7
    clrlwi 4, 5, 24
    stbx 8, 9, 0
    clrlwi 0, 3, 24
    addi 10, 10, 0x8
    stbx 7, 9, 6
    stbx 5, 9, 4
    stbx 3, 9, 0
L_8021318C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8021312C
    .4byte 0xC022CBB4 # lfs f1, lbl_8053FB54@sda21(r0)
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 3, 0x2
    stw 7, 0x48(1)
    addi 0, 1, 0x8
    stw 6, 0x4c(1)
    stw 6, 0x50(1)
    stb 6, 0x54(1)
    stb 6, 0x55(1)
    stb 6, 0x56(1)
    stb 5, 0x57(1)
    stb 5, 0x58(1)
    stb 6, 0x59(1)
    stb 6, 0x5a(1)
    stb 6, 0x5b(1)
    stb 6, 0x5c(1)
    stb 6, 0x5d(1)
    stb 5, 0x5e(1)
    stw 4, 0x60(1)
    stb 5, 0x64(1)
    stb 6, 0x65(1)
    stb 6, 0x66(1)
    stw 7, 0x68(1)
    stw 6, 0x6c(1)
    stw 3, 0x70(1)
    stfs 1, 0x14(1)
    stfs 1, 0x24(1)
    stfs 1, 0x34(1)
    lfs 3, 0x5c(30)
    lfs 2, 0x58(30)
    lfs 0, 0x54(30)
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
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820060 # beq .L_802132B0
    lwz 0, 0x4(30)
    cmpwi 0, 0x8
    .4byte 0x40800088 # bge .L_802132E4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046A564@ha
    addi 5, 3, lbl_8046A564@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022CBA8 # lfs f1, lbl_8053FB48@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 31
    fmr 2, 1
    addi 7, 1, 0x38
    lwz 3, 0x20(4)
    addi 4, 30, 0xc
    bl fn_802F86CC
    .4byte 0x48000038 # b .L_802132E4
L_802132B0:
    lfs 0, 0x14(30)
    li 7, -0x1
    fcmpo cr0, 0, 1
    .4byte 0x40810008 # ble .L_802132C4
    li 7, 0x7
L_802132C4:
    .4byte 0xC022CBA8 # lfs f1, lbl_8053FB48@sda21(r0)
    lis 3, lbl_8046A564@ha
    addi 4, 3, lbl_8046A564@l
    mr 5, 31
    fmr 2, 1
    mr 3, 30
    addi 6, 1, 0x38
    bl fn_801F06F0
L_802132E4:
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

