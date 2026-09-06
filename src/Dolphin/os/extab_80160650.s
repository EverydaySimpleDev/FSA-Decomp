/*
 * FARY actor cluster, part 1/5 - draw().
 *
 * fn_80160650(this): builds an identity-permutation joint array + a
 * render-descriptor struct (same idiom as BOYO/ZLDA's draw()). If a bit
 * near the top of the raw spawn param (this->0x90) is set, calls a
 * VIRTUAL method (this->vtable slot 0x34, i.e. index 13) - if it returns
 * true, skips drawing entirely for this frame (the same virtual-flag
 * check update(), part 2/5, and setParams(), part 5/5, both make).
 *
 * If this->0x258==2 (a "special mode" set up by setParams from the
 * spawn param): does NOT draw a 3D model at all - instead calls the
 * confirmed per-player shadow/marker registration fn_803075AC with one
 * of two marker-offset constants (0x5e or 0x7d, selected by this->0x248)
 * - i.e. this mode only shows a HUD/map marker, no visible model.
 * Otherwise: draws the real model via the confirmed universal render
 * primitive fn_801F06F0(this, jointOrder, this->0x250+0x5e, &drawDesc,
 * mode=1), then ALSO registers the same marker via fn_803075AC
 * afterward - so the normal draw path shows both a model and a marker.
 */
.section extab, "a"
.balign 4
.global etb_80007064
etb_80007064:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007064, 8

.section extabindex, "a"
.balign 4
.global eti_80013C24
eti_80013C24:
    .4byte fn_80160650
    .4byte 0x0000023C
    .4byte etb_80007064
.size eti_80013C24, 12

.text
.balign 4
.global fn_80160650

fn_80160650:
    stwu 1, -0x60(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x64(1)
    li 0, -0x1
    addi 9, 1, 0x10
    stw 31, 0x5c(1)
    mr 31, 3
    stw 0, 0x20(1)
    stw 0, 0x24(1)
    .4byte 0x48000064 # b .L_801606DC
L_8016067C:
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
L_801606DC:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8016067C
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x20(1)
    stw 5, 0x24(1)
    stw 5, 0x28(1)
    stb 5, 0x2c(1)
    stb 5, 0x2d(1)
    stb 5, 0x2e(1)
    stb 4, 0x2f(1)
    stb 4, 0x30(1)
    stb 5, 0x31(1)
    stb 5, 0x32(1)
    stb 5, 0x33(1)
    stb 5, 0x34(1)
    stb 5, 0x35(1)
    stb 4, 0x36(1)
    stw 3, 0x38(1)
    stb 4, 0x3c(1)
    stb 5, 0x3d(1)
    stb 5, 0x3e(1)
    stw 6, 0x40(1)
    stw 5, 0x44(1)
    stw 0, 0x48(1)
    lwz 0, 0x90(31)
    srwi. 0, 0, 27
    .4byte 0x41820020 # beq .L_80160778
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820104 # beq .L_80160878
L_80160778:
    lwz 0, 0x258(31)
    cmpwi 0, 0x2
    .4byte 0x418200AC # beq .L_8016082C
    lwz 0, 0x234(31)
    cmpwi 0, 0x100
    .4byte 0x4080000C # bge .L_80160798
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x408200E4 # bne .L_80160878
L_80160798:
    li 0, 0x1
    stb 0, 0x3d(1)
    lwz 0, 0x258(31)
    cmpwi 0, 0x3
    .4byte 0x40820020 # bne .L_801607C8
    lfs 0, 0x270(31)
    li 0, 0x11
    fctiwz 0, 0
    stw 0, 0x40(1)
    stfd 0, 0x50(1)
    lwz 0, 0x54(1)
    stb 0, 0x23(1)
L_801607C8:
    .4byte 0xC022A6D0 # lfs f1, lbl_8053D670@sda21(r0)
    lis 3, lbl_804661C8@ha
    lwz 5, 0x250(31)
    addi 4, 3, lbl_804661C8@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x5e
    addi 6, 1, 0x10
    li 7, 0x1
    bl fn_801F06F0
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x8(1)
    addi 5, 31, 0xc
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    li 10, 0x0
    lwz 6, 0x250(31)
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    addi 6, 6, 0x5e
    bl fn_803075AC
    .4byte 0x48000050 # b .L_80160878
L_8016082C:
    lwz 0, 0x248(31)
    li 6, 0x5e
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_80160840
    li 6, 0x7d
L_80160840:
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x8(1)
    addi 5, 31, 0xc
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    li 10, 0x1
    lwz 0, 0x250(31)
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    add 6, 6, 0
    bl fn_803075AC
L_80160878:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

