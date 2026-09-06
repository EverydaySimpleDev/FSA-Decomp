/*
 * GOLD (rare/golden enemy variant, likely a rich rupee-drop actor)
 * cluster, part 1/6 - draw(). Track A (byte-exact asm) + structural
 * overview.
 *
 * fn_80329468(this): only acts if this->0x230==3 (a specific state).
 * Builds a real identity matrix via the confirmed Nintendo SDK
 * `PSMTXIdentity`, combines it with a translation from this->0xc/0x10/
 * 0x14 (position), and if room<8, queries the confirmed ambient
 * light-probe grid via fn_802F86CC (see
 * [[project_fsa_shared_effect_subsystem_crossref]]) using
 * `lbl_8053AB10->0x20` - a THIRD confirmed sub-field of that global
 * registry, after ZLDA's `->0x24` and FARY/FLME/ARRW/FIRE's `->0x2c`.
 */
.section extab, "a"
.balign 4
.global etb_8000DBDC
etb_8000DBDC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DBDC, 8

.section extabindex, "a"
.balign 4
.global eti_8001D230
eti_8001D230:
    .4byte fn_80329468
    .4byte 0x000001D8
    .4byte etb_8000DBDC
.size eti_8001D230, 12

.text
.balign 4
.global fn_80329468

fn_80329468:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stw 31, 0x8c(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x3
    .4byte 0x408201A8 # bne .L_8032962C
    li 0, -0x1
    addi 9, 1, 0x44
    stw 0, 0x54(1)
    li 10, 0x0
    stw 0, 0x58(1)
    .4byte 0x48000064 # b .L_80329500
L_803294A0:
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
L_80329500:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_803294A0
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 7, 0x54(1)
    addi 3, 1, 0x14
    stw 6, 0x58(1)
    stw 6, 0x5c(1)
    stb 6, 0x60(1)
    stb 6, 0x61(1)
    stb 6, 0x62(1)
    stb 5, 0x63(1)
    stb 5, 0x64(1)
    stb 6, 0x65(1)
    stb 6, 0x66(1)
    stb 6, 0x67(1)
    stb 6, 0x68(1)
    stb 6, 0x69(1)
    stb 5, 0x6a(1)
    stw 4, 0x6c(1)
    stb 5, 0x70(1)
    stb 6, 0x71(1)
    stb 6, 0x72(1)
    stw 7, 0x74(1)
    stw 6, 0x78(1)
    stw 0, 0x7c(1)
    bl PSMTXIdentity
    lfs 1, 0x248(31)
    addi 0, 1, 0x14
    .4byte 0xC002ED70 # lfs f0, lbl_80541D10@sda21(r0)
    stfs 1, 0x14(1)
    .4byte 0xC042ED74 # lfs f2, lbl_80541D14@sda21(r0)
    stfs 0, 0x18(1)
    stfs 0, 0x1c(1)
    stfs 0, 0x24(1)
    stfs 1, 0x28(1)
    stfs 0, 0x2c(1)
    stfs 0, 0x34(1)
    stfs 0, 0x38(1)
    stfs 1, 0x3c(1)
    stw 0, 0x5c(1)
    lfs 1, 0x10(31)
    lfs 0, 0xc(31)
    lfs 3, 0x14(31)
    fadds 1, 2, 1
    fadds 0, 2, 0
    stfs 3, 0x10(1)
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_8032962C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80471930@ha
    addi 5, 3, lbl_80471930@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022ED78 # lfs f1, lbl_80541D18@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    addi 7, 1, 0x44
    fmr 2, 1
    li 6, 0x2a
    lwz 3, 0x20(4)
    addi 4, 1, 0x8
    bl fn_802F86CC
L_8032962C:
    lwz 0, 0x94(1)
    lwz 31, 0x8c(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

