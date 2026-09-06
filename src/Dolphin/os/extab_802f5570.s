# fn_802F5570 - shared rendering infrastructure: orientation-basis builder (0x338)
# NOT an actor. Called by the confirmed spatial-triad member fn_802F86CC.
# Concatenates matrices (PSMTXConcat) after computing a basis via
# fn_802F58A8. Track A: byte-match verified, structural overview per the
# large/complex-function exception.
.section extab, "a"
.balign 4
.global etb_8000D3D4
etb_8000D3D4:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000D3D4, 8

.section extabindex, "a"
.balign 4
.global eti_8001C6C0
eti_8001C6C0:
    .4byte fn_802F5570
    .4byte 0x00000338
    .4byte etb_8000D3D4
.size eti_8001C6C0, 12

.text
.balign 4
.global fn_802F5570

fn_802F5570:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 26, 0x28(1)
    mr. 27, 5
    mr 26, 4
    mr 28, 6
    mr 29, 7
    mr 30, 8
    mr 31, 9
    .4byte 0x41820010 # beq .L_802F55A8
    lwz 0, 0x38(27)
    cmpwi 0, 0x2
    .4byte 0x4082015C # bne .L_802F5700
L_802F55A8:
    mr 4, 26
    mr 5, 30
    bl fn_802F58A8
    clrlwi. 0, 3, 24
    .4byte 0x41820128 # beq .L_802F56E0
    cmplwi 27, 0x0
    .4byte 0x41820114 # beq .L_802F56D4
    lwz 3, 0x0(27)
    lwz 0, 0x4(27)
    stw 3, 0x0(31)
    stw 0, 0x4(31)
    lwz 3, 0x8(27)
    lwz 0, 0xc(27)
    stw 3, 0x8(31)
    stw 0, 0xc(31)
    lbz 0, 0x10(27)
    stb 0, 0x10(31)
    lbz 0, 0x11(27)
    stb 0, 0x11(31)
    lbz 0, 0x12(27)
    stb 0, 0x12(31)
    lbz 0, 0x13(27)
    stb 0, 0x13(31)
    lbz 0, 0x14(27)
    stb 0, 0x14(31)
    lbz 0, 0x15(27)
    stb 0, 0x15(31)
    lbz 0, 0x16(27)
    stb 0, 0x16(31)
    lbz 0, 0x17(27)
    stb 0, 0x17(31)
    lwz 0, 0x18(27)
    stw 0, 0x18(31)
    lbz 0, 0x1c(27)
    stb 0, 0x1c(31)
    lbz 0, 0x1d(27)
    stb 0, 0x1d(31)
    lbz 0, 0x1e(27)
    stb 0, 0x1e(31)
    lbz 0, 0x1f(27)
    stb 0, 0x1f(31)
    lbz 0, 0x20(27)
    stb 0, 0x20(31)
    lbz 0, 0x21(27)
    stb 0, 0x21(31)
    lbz 0, 0x22(27)
    stb 0, 0x22(31)
    lbz 0, 0x23(27)
    stb 0, 0x23(31)
    lbz 0, 0x24(27)
    stb 0, 0x24(31)
    lbz 0, 0x25(27)
    stb 0, 0x25(31)
    lbz 0, 0x26(27)
    stb 0, 0x26(31)
    lwz 0, 0x28(27)
    stw 0, 0x28(31)
    lbz 0, 0x2c(27)
    stb 0, 0x2c(31)
    lbz 0, 0x2d(27)
    stb 0, 0x2d(31)
    lbz 0, 0x2e(27)
    stb 0, 0x2e(31)
    lwz 0, 0x30(27)
    stw 0, 0x30(31)
    lwz 0, 0x34(27)
    stw 0, 0x34(31)
    lwz 0, 0x38(27)
    stw 0, 0x38(31)
    lwz 3, 0x18(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_802F56D4
    mr 4, 30
    mr 5, 30
    bl PSMTXConcat
L_802F56D4:
    stw 30, 0x18(31)
    stw 31, 0x0(29)
    .4byte 0x48000008 # b .L_802F56E4
L_802F56E0:
    stw 27, 0x0(29)
L_802F56E4:
    lfs 0, 0x0(26)
    lfs 1, 0x4(26)
    stfs 0, 0x0(28)
    lfs 0, 0x8(26)
    stfs 1, 0x4(28)
    stfs 0, 0x8(28)
    .4byte 0x48000198 # b .L_802F5894
L_802F5700:
    cmpwi 0, 0x1
    .4byte 0x40820174 # bne .L_802F5878
    addis 4, 3, 0x1
    lfs 0, 0x8(26)
    lwz 0, -0x3de4(4)
    fmr 2, 0
    cmpwi 0, 0x0
    .4byte 0x4081013C # ble .L_802F5858
    lfs 6, 0x0(26)
    lfs 3, 0x2368(3)
    fcmpo cr0, 6, 3
    cror eq, gt, eq
    .4byte 0x40820128 # bne .L_802F5858
    lwz 0, 0x2380(3)
    lis 4, 0x4330
    stw 4, 0x8(1)
    xoris 0, 0, 0x8000
    .4byte 0xC882E568 # lfd f4, lbl_80541508@sda21(r0)
    stw 0, 0xc(1)
    .4byte 0xC0A2E570 # lfs f5, lbl_80541510@sda21(r0)
    lfd 1, 0x8(1)
    fsubs 1, 1, 4
    fmadds 1, 5, 1, 3
    fcmpo cr0, 6, 1
    .4byte 0x408000F8 # bge .L_802F5858
    lfs 9, 0x4(26)
    lfs 8, 0x236c(3)
    fcmpo cr0, 9, 8
    cror eq, gt, eq
    .4byte 0x408200E4 # bne .L_802F5858
    lwz 0, 0x2384(3)
    stw 4, 0x8(1)
    xoris 0, 0, 0x8000
    stw 0, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 4
    fmadds 1, 5, 1, 8
    fcmpo cr0, 9, 1
    .4byte 0x408000C0 # bge .L_802F5858
    fsubs 3, 6, 3
    .4byte 0xC0E2E574 # lfs f7, lbl_80541514@sda21(r0)
    fsubs 8, 9, 8
    lwz 0, 0x2388(3)
    stw 4, 0x18(1)
    fmuls 2, 7, 3
    fmuls 1, 7, 8
    slwi 0, 0, 2
    add 3, 3, 0
    stw 4, 0x20(1)
    fctiwz 2, 2
    fctiwz 1, 1
    lwz 4, 0x100(3)
    stfd 2, 0x8(1)
    .4byte 0xC0C2E578 # lfs f6, lbl_80541518@sda21(r0)
    lwz 3, 0xc(1)
    stfd 1, 0x10(1)
    xoris 0, 3, 0x8000
    stw 0, 0x1c(1)
    mulli 0, 3, 0xc
    lwz 5, 0x14(1)
    lfd 1, 0x18(1)
    xoris 3, 5, 0x8000
    fsubs 2, 1, 4
    stw 3, 0x24(1)
    mulli 3, 5, 0x30c
    lfd 1, 0x20(1)
    fnmsubs 3, 5, 2, 3
    add 3, 3, 0
    fsubs 2, 1, 4
    add 3, 4, 3
    fmuls 9, 7, 3
    lfs 1, 0x320(3)
    fnmsubs 5, 5, 2, 8
    lfs 3, 0x14(3)
    lfs 2, 0x314(3)
    fsubs 8, 6, 9
    fmuls 1, 9, 1
    lfs 4, 0x8(3)
    fmuls 7, 7, 5
    fmuls 3, 3, 9
    fmadds 1, 8, 2, 1
    fsubs 5, 6, 7
    fmadds 2, 4, 8, 3
    fmuls 1, 7, 1
    fmadds 1, 5, 2, 1
    fadds 2, 0, 1
L_802F5858:
    lfs 1, 0x0(26)
    fadds 0, 0, 2
    lfs 2, 0x4(26)
    stfs 1, 0x0(28)
    stfs 2, 0x4(28)
    stfs 0, 0x8(28)
    stw 27, 0x0(29)
    .4byte 0x48000020 # b .L_802F5894
L_802F5878:
    lfs 0, 0x0(26)
    lfs 1, 0x4(26)
    stfs 0, 0x0(28)
    lfs 0, 0x8(26)
    stfs 1, 0x4(28)
    stfs 0, 0x8(28)
    stw 27, 0x0(29)
L_802F5894:
    lmw 26, 0x28(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

