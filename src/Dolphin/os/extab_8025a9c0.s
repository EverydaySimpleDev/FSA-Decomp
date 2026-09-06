# Fresh project-wide gap hunt (beyond the closed 901KB/dispatch-cross-
# check territories): 34 functions, 17,980 bytes, fully contiguous.
# Found+verified via a full-DOL gapcheck.py scan (both real .text
# sections) followed by spanwalk.py/resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_8000B8C4
etb_8000B8C4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000B8C4, 8

.global etb_8000B8CC
etb_8000B8CC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B8CC, 8

.global etb_8000B8D4
etb_8000B8D4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B8D4, 8

.global etb_8000B8DC
etb_8000B8DC:
    .4byte 0x08CA0000
    .4byte 0x00000000
.size etb_8000B8DC, 8

.global etb_8000B8E4
etb_8000B8E4:
    .4byte 0x08CA0000
    .4byte 0x00000000
.size etb_8000B8E4, 8

.global etb_8000B8EC
etb_8000B8EC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B8EC, 8

.global etb_8000B8F4
etb_8000B8F4:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_8000B8F4, 8

.global etb_8000B8FC
etb_8000B8FC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B8FC, 8

.global etb_8000B904
etb_8000B904:
    .4byte 0x204A0000
    .4byte 0x00000000
.size etb_8000B904, 8

.global etb_8000B90C
etb_8000B90C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B90C, 8

.global etb_8000B914
etb_8000B914:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_8000B914, 8

.global etb_8000B91C
etb_8000B91C:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_8000B91C, 8

.global etb_8000B924
etb_8000B924:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000B924, 8

.global etb_8000B92C
etb_8000B92C:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_8000B92C, 8

.global etb_8000B934
etb_8000B934:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000B934, 8

.global etb_8000B93C
etb_8000B93C:
    .4byte 0x294A0000
    .4byte 0x00000000
.size etb_8000B93C, 8

.global etb_8000B944
etb_8000B944:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000B944, 8

.global etb_8000B94C
etb_8000B94C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000B94C, 8

.global etb_8000B954
etb_8000B954:
    .4byte 0x108A0000
    .4byte 0x00000000
.size etb_8000B954, 8

.global etb_8000B95C
etb_8000B95C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B95C, 8

.global etb_8000B964
etb_8000B964:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B964, 8

.section extabindex, "a"
.balign 4
.global eti_80019EE8
eti_80019EE8:
    .4byte fn_8025A9C0
    .4byte 0x00000064
    .4byte etb_8000B8C4
.size eti_80019EE8, 12

.global eti_80019EF4
eti_80019EF4:
    .4byte fn_8025AA24
    .4byte 0x00000068
    .4byte etb_8000B8CC
.size eti_80019EF4, 12

.global eti_80019F00
eti_80019F00:
    .4byte fn_8025AA8C
    .4byte 0x00000068
    .4byte etb_8000B8D4
.size eti_80019F00, 12

.global eti_80019F0C
eti_80019F0C:
    .4byte fn_8025AB00
    .4byte 0x000003B0
    .4byte etb_8000B8DC
.size eti_80019F0C, 12

.global eti_80019F18
eti_80019F18:
    .4byte fn_8025AED0
    .4byte 0x00000348
    .4byte etb_8000B8E4
.size eti_80019F18, 12

.global eti_80019F24
eti_80019F24:
    .4byte fn_8025B22C
    .4byte 0x00000130
    .4byte etb_8000B8EC
.size eti_80019F24, 12

.global eti_80019F30
eti_80019F30:
    .4byte fn_8025B3F0
    .4byte 0x000009D8
    .4byte etb_8000B8F4
.size eti_80019F30, 12

.global eti_80019F3C
eti_80019F3C:
    .4byte fn_8025BDD8
    .4byte 0x000000D8
    .4byte etb_8000B8FC
.size eti_80019F3C, 12

.global eti_80019F48
eti_80019F48:
    .4byte fn_8025BEB0
    .4byte 0x000008EC
    .4byte etb_8000B904
.size eti_80019F48, 12

.global eti_80019F54
eti_80019F54:
    .4byte fn_8025C7BC
    .4byte 0x000000D8
    .4byte etb_8000B90C
.size eti_80019F54, 12

.global eti_80019F60
eti_80019F60:
    .4byte fn_8025C894
    .4byte 0x000007FC
    .4byte etb_8000B914
.size eti_80019F60, 12

.global eti_80019F6C
eti_80019F6C:
    .4byte fn_8025D0B0
    .4byte 0x000005F0
    .4byte etb_8000B91C
.size eti_80019F6C, 12

.global eti_80019F78
eti_80019F78:
    .4byte fn_8025D6AC
    .4byte 0x00000138
    .4byte etb_8000B924
.size eti_80019F78, 12

.global eti_80019F84
eti_80019F84:
    .4byte fn_8025D7E4
    .4byte 0x00000218
    .4byte etb_8000B92C
.size eti_80019F84, 12

.global eti_80019F90
eti_80019F90:
    .4byte fn_8025D9FC
    .4byte 0x000000D0
    .4byte etb_8000B934
.size eti_80019F90, 12

.global eti_80019F9C
eti_80019F9C:
    .4byte fn_8025DACC
    .4byte 0x00000CD0
    .4byte etb_8000B93C
.size eti_80019F9C, 12

.global eti_80019FA8
eti_80019FA8:
    .4byte fn_8025E79C
    .4byte 0x00000158
    .4byte etb_8000B944
.size eti_80019FA8, 12

.global eti_80019FB4
eti_80019FB4:
    .4byte fn_8025E8F4
    .4byte 0x00000224
    .4byte etb_8000B94C
.size eti_80019FB4, 12

.global eti_80019FC0
eti_80019FC0:
    .4byte fn_8025EB18
    .4byte 0x000002BC
    .4byte etb_8000B954
.size eti_80019FC0, 12

.global eti_80019FCC
eti_80019FCC:
    .4byte fn_8025EE48
    .4byte 0x00000120
    .4byte etb_8000B95C
.size eti_80019FCC, 12

.global eti_80019FD8
eti_80019FD8:
    .4byte fn_8025EF68
    .4byte 0x00000094
    .4byte etb_8000B964
.size eti_80019FD8, 12

.text
.balign 4
.global fn_8025A9C0
.global fn_8025AA24
.global fn_8025AA8C
.global fn_8025AAF4
.global fn_8025AB00
.global fn_8025AEB0
.global fn_8025AEC4
.global fn_8025AED0
.global fn_8025B218
.global fn_8025B22C
.global fn_8025B35C
.global fn_8025B368
.global fn_8025B3F0
.global fn_8025BDC8
.global fn_8025BDD8
.global fn_8025BEB0
.global fn_8025C79C
.global fn_8025C7BC
.global fn_8025C894
.global fn_8025D090
.global fn_8025D0B0
.global fn_8025D6A0
.global fn_8025D6AC
.global fn_8025D7E4
.global fn_8025D9FC
.global fn_8025DACC
.global fn_8025E79C
.global fn_8025E8F4
.global fn_8025EB18
.global fn_8025EDD4
.global fn_8025EE0C
.global fn_8025EE34
.global fn_8025EE48
.global fn_8025EF68

fn_8025A9C0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x0
    stw 31, 0xc(1)
    mr 31, 3
    stb 0, 0x458(3)
    bl fn_80241794
    cmpwi 3, 0x0
    .4byte 0x41810010 # bgt .L_8025A9F4
    li 0, 0x0
    stb 0, 0xb84(31)
    .4byte 0x4800000C # b .L_8025A9FC
L_8025A9F4:
    li 0, 0x1
    stb 0, 0xb84(31)
L_8025A9FC:
    li 3, 0x0
    li 0, -0x1
    stw 3, 0xb88(31)
    stw 0, 0xb28(31)
    stw 3, 0xb8c(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8025AA24:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    lwz 0, 0x11f8(3)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_8025AA54
    li 3, 0x0
    .4byte 0x48000024 # b .L_8025AA74
L_8025AA54:
    li 4, 0x43
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8025AA70
    stw 31, 0x11f8(30)
    li 3, 0x1
    .4byte 0x48000008 # b .L_8025AA74
L_8025AA70:
    li 3, 0x0
L_8025AA74:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8025AA8C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    lwz 0, 0x11f8(3)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_8025AABC
    li 3, 0x0
    .4byte 0x48000024 # b .L_8025AADC
L_8025AABC:
    li 4, 0x42
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8025AAD8
    stw 31, 0x11f8(30)
    li 3, 0x1
    .4byte 0x48000008 # b .L_8025AADC
L_8025AAD8:
    li 3, 0x0
L_8025AADC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8025AAF4:
    li 0, -0x1
    stw 0, 0x11f8(3)
    blr

fn_8025AB00:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stfd 29, 0x40(1)
    psq_st 29, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    mr 31, 3
    lbz 3, 0x3fc(3)
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
    lbz 0, 0x3fc(31)
    cmplwi 0, 0xa
    .4byte 0x40800010 # bge .L_8025AB50
    li 0, 0x0
    stb 0, 0x3fd(31)
    .4byte 0x48000020 # b .L_8025AB6C
L_8025AB50:
    cmplwi 0, 0xe
    .4byte 0x40800010 # bge .L_8025AB64
    li 0, 0x1
    stb 0, 0x3fd(31)
    .4byte 0x4800000C # b .L_8025AB6C
L_8025AB64:
    li 0, 0x2
    stb 0, 0x3fd(31)
L_8025AB6C:
    mr 3, 31
    bl fn_80268B3C
    lbz 0, 0xafc(31)
    cmplwi 0, 0x1
    .4byte 0x418202F4 # beq .L_8025AE70
    li 0, 0x2
    lwz 4, 0xbf0(31)
    li 3, 0x0
    mtctr 0
L_8025AB90:
    lbz 0, 0xb4(4)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_8025ABB0
    cmpwi 3, 0x2
    .4byte 0x41820028 # beq .L_8025ABC8
    subi 0, 3, 0x4
    cmplwi 0, 0x1
    .4byte 0x4081001C # ble .L_8025ABC8
L_8025ABB0:
    addi 0, 3, 0x48
    lbzx 0, 4, 0
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8025ABC8
    li 0, 0x1
    .4byte 0x480000C4 # b .L_8025AC88
L_8025ABC8:
    lbz 0, 0xb4(4)
    addi 3, 3, 0x1
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_8025ABEC
    cmpwi 3, 0x2
    .4byte 0x41820028 # beq .L_8025AC04
    subi 0, 3, 0x4
    cmplwi 0, 0x1
    .4byte 0x4081001C # ble .L_8025AC04
L_8025ABEC:
    addi 0, 3, 0x48
    lbzx 0, 4, 0
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8025AC04
    li 0, 0x1
    .4byte 0x48000088 # b .L_8025AC88
L_8025AC04:
    lbz 0, 0xb4(4)
    addi 3, 3, 0x1
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_8025AC28
    cmpwi 3, 0x2
    .4byte 0x41820028 # beq .L_8025AC40
    subi 0, 3, 0x4
    cmplwi 0, 0x1
    .4byte 0x4081001C # ble .L_8025AC40
L_8025AC28:
    addi 0, 3, 0x48
    lbzx 0, 4, 0
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8025AC40
    li 0, 0x1
    .4byte 0x4800004C # b .L_8025AC88
L_8025AC40:
    lbz 0, 0xb4(4)
    addi 3, 3, 0x1
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_8025AC64
    cmpwi 3, 0x2
    .4byte 0x41820028 # beq .L_8025AC7C
    subi 0, 3, 0x4
    cmplwi 0, 0x1
    .4byte 0x4081001C # ble .L_8025AC7C
L_8025AC64:
    addi 0, 3, 0x48
    lbzx 0, 4, 0
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8025AC7C
    li 0, 0x1
    .4byte 0x48000010 # b .L_8025AC88
L_8025AC7C:
    addi 3, 3, 0x1
    .4byte 0x4200FF10 # bdnz .L_8025AB90
    li 0, 0x0
L_8025AC88:
    clrlwi. 0, 0, 24
    .4byte 0x408201E4 # bne .L_8025AE70
    bl SpatialRegistry_GetBase
    lwz 4, 0x11f8(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418201D0 # beq .L_8025AE70
    lwz 0, 0x230(3)
    cmpwi 0, 0x0
    .4byte 0x408201C4 # bne .L_8025AE70
    lfs 0, 0x14(3)
    addi 4, 1, 0x20
    psq_l 1, 0xc(3), 0, 0
    mr 3, 4
    stfs 0, 0x10(1)
    psq_l 3, 0x8(31), 0, 0
    psq_l 2, 0x10(1), 1, 0
    psq_l 0, 0x10(31), 1, 0
    ps_sub 3, 1, 3
    psq_st 1, 0x8(1), 0, 0
    ps_sub 0, 2, 0
    psq_st 3, 0x8(1), 0, 0
    psq_st 0, 0x10(1), 1, 0
    lfs 0, 0x10(1)
    psq_st 3, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
    psq_st 3, 0x0(4), 0, 0
    stfs 0, 0x28(1)
    bl PSVECMag
    .4byte 0xC002D174 # lfs f0, lbl_80540114@sda21(r0)
    fmr 30, 1
    fcmpo cr0, 1, 0
    .4byte 0x40810008 # ble .L_8025AD10
    fmr 30, 0
L_8025AD10:
    psq_l 3, 0x20(1), 0, 0
    lis 3, lbl_80539D44@ha
    .4byte 0xC042D124 # lfs f2, lbl_805400C4@sda21(r0)
    ps_mul 3, 3, 3
    .4byte 0xC022D138 # lfs f1, lbl_805400D8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    stfs 2, 0x28(1)
    ps_madd 4, 2, 2, 3
    fmuls 0, 1, 0
    ps_sum0 4, 4, 3, 3
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820054 # beq .L_8025AD94
    fcmpo cr0, 4, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8025AD58
    fmr 29, 4
    .4byte 0x48000028 # b .L_8025AD7C
L_8025AD58:
    frsqrte 3, 4
    .4byte 0xC042D120 # lfs f2, lbl_805400C0@sda21(r0)
    .4byte 0xC002D15C # lfs f0, lbl_805400FC@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 29, 0
L_8025AD7C:
    psq_l 1, 0x20(1), 0, 0
    psq_l 0, 0x28(1), 1, 0
    ps_muls0 1, 1, 29
    ps_muls0 0, 0, 29
    psq_st 1, 0x20(1), 0, 0
    psq_st 0, 0x28(1), 1, 0
L_8025AD94:
    psq_l 3, 0x20(1), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 31, 0x28(1)
    ps_mul 3, 3, 3
    .4byte 0xC022D138 # lfs f1, lbl_805400D8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 31, 31, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x418200A4 # beq .L_8025AE64
    psq_l 1, 0x20(1), 0, 0
    psq_l 0, 0x28(1), 1, 0
    ps_muls0 2, 1, 30
    .4byte 0xC022D124 # lfs f1, lbl_805400C4@sda21(r0)
    ps_muls0 0, 0, 30
    psq_st 2, 0x20(1), 0, 0
    psq_st 0, 0x28(1), 1, 0
    psq_l 0, 0x8(31), 0, 0
    ps_add 0, 0, 2
    psq_st 0, 0x8(31), 0, 0
    psq_l 2, 0x10(31), 1, 0
    psq_l 0, 0x28(1), 1, 0
    ps_add 0, 2, 0
    psq_st 0, 0x10(31), 1, 0
    lfs 3, 0x20(1)
    lfs 2, 0x24(1)
    fadds 0, 3, 2
    fcmpo cr0, 0, 1
    .4byte 0x40800030 # bge .L_8025AE3C
    fsubs 0, 3, 2
    fcmpo cr0, 0, 1
    .4byte 0x40800014 # bge .L_8025AE2C
    li 0, 0x0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x4800003C # b .L_8025AE64
L_8025AE2C:
    li 0, 0x2
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x4800002C # b .L_8025AE64
L_8025AE3C:
    fsubs 0, 3, 2
    fcmpo cr0, 0, 1
    .4byte 0x40800014 # bge .L_8025AE58
    li 0, 0x3
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x48000010 # b .L_8025AE64
L_8025AE58:
    li 0, 0x1
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
L_8025AE64:
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    stfs 0, 0x10(31)
    .4byte 0x48000018 # b .L_8025AE84
L_8025AE70:
    li 0, 0x0
    mr 3, 31
    stb 0, 0x124d(31)
    li 4, 0x0
    bl fn_80251AEC
L_8025AE84:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    psq_l 29, 0x48(1), 0, 0
    lfd 29, 0x40(1)
    lwz 0, 0x74(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_8025AEB0:
    li 4, 0x1
    li 0, 0x0
    stb 4, 0x124d(3)
    stb 0, 0x458(3)
    blr

fn_8025AEC4:
    li 0, -0x1
    stw 0, 0x11f8(3)
    blr

fn_8025AED0:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stfd 29, 0x40(1)
    psq_st 29, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    mr 31, 3
    lbz 3, 0x3fc(3)
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
    lbz 0, 0x3fc(31)
    extrwi. 0, 0, 2, 29
    .4byte 0x40820014 # bne .L_8025AF24
    li 0, 0x0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x48000040 # b .L_8025AF60
L_8025AF24:
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_8025AF3C
    li 0, 0x2
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x48000028 # b .L_8025AF60
L_8025AF3C:
    cmpwi 0, 0x2
    .4byte 0x40820014 # bne .L_8025AF54
    li 0, 0x1
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x48000010 # b .L_8025AF60
L_8025AF54:
    li 0, 0x3
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
L_8025AF60:
    mr 3, 31
    bl fn_80268B3C
    lbz 0, 0xafc(31)
    cmplwi 0, 0x1
    .4byte 0x41820268 # beq .L_8025B1D8
    li 0, 0x2
    lwz 4, 0xbf0(31)
    li 3, 0x0
    mtctr 0
L_8025AF84:
    lbz 0, 0xb4(4)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_8025AFA4
    cmpwi 3, 0x2
    .4byte 0x41820028 # beq .L_8025AFBC
    subi 0, 3, 0x4
    cmplwi 0, 0x1
    .4byte 0x4081001C # ble .L_8025AFBC
L_8025AFA4:
    addi 0, 3, 0x48
    lbzx 0, 4, 0
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8025AFBC
    li 0, 0x1
    .4byte 0x480000C4 # b .L_8025B07C
L_8025AFBC:
    lbz 0, 0xb4(4)
    addi 3, 3, 0x1
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_8025AFE0
    cmpwi 3, 0x2
    .4byte 0x41820028 # beq .L_8025AFF8
    subi 0, 3, 0x4
    cmplwi 0, 0x1
    .4byte 0x4081001C # ble .L_8025AFF8
L_8025AFE0:
    addi 0, 3, 0x48
    lbzx 0, 4, 0
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8025AFF8
    li 0, 0x1
    .4byte 0x48000088 # b .L_8025B07C
L_8025AFF8:
    lbz 0, 0xb4(4)
    addi 3, 3, 0x1
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_8025B01C
    cmpwi 3, 0x2
    .4byte 0x41820028 # beq .L_8025B034
    subi 0, 3, 0x4
    cmplwi 0, 0x1
    .4byte 0x4081001C # ble .L_8025B034
L_8025B01C:
    addi 0, 3, 0x48
    lbzx 0, 4, 0
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8025B034
    li 0, 0x1
    .4byte 0x4800004C # b .L_8025B07C
L_8025B034:
    lbz 0, 0xb4(4)
    addi 3, 3, 0x1
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_8025B058
    cmpwi 3, 0x2
    .4byte 0x41820028 # beq .L_8025B070
    subi 0, 3, 0x4
    cmplwi 0, 0x1
    .4byte 0x4081001C # ble .L_8025B070
L_8025B058:
    addi 0, 3, 0x48
    lbzx 0, 4, 0
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8025B070
    li 0, 0x1
    .4byte 0x48000010 # b .L_8025B07C
L_8025B070:
    addi 3, 3, 0x1
    .4byte 0x4200FF10 # bdnz .L_8025AF84
    li 0, 0x0
L_8025B07C:
    clrlwi. 0, 0, 24
    .4byte 0x40820158 # bne .L_8025B1D8
    bl SpatialRegistry_GetBase
    lwz 4, 0x11f8(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820144 # beq .L_8025B1D8
    lwz 4, 0x4(3)
    lwz 0, 0x3b4(31)
    cmpw 4, 0
    .4byte 0x40820134 # bne .L_8025B1D8
    psq_l 1, 0xc(3), 0, 0
    lis 4, lbl_80539D44@ha
    psq_l 2, 0x8(31), 0, 0
    lfs 0, 0x14(3)
    ps_sub 6, 1, 2
    psq_st 1, 0x8(1), 0, 0
    psq_l 4, 0x10(31), 1, 0
    stfs 0, 0x10(1)
    ps_mul 3, 6, 6
    .4byte 0xC042D124 # lfs f2, lbl_805400C4@sda21(r0)
    psq_l 0, 0x10(1), 1, 0
    .4byte 0xC022D138 # lfs f1, lbl_805400D8@sda21(r0)
    ps_sub 5, 0, 4
    lfs 0, lbl_80539D44@l(4)
    ps_madd 4, 2, 2, 3
    psq_st 6, 0x8(1), 0, 0
    fmuls 0, 1, 0
    psq_st 5, 0x10(1), 1, 0
    ps_sum0 4, 4, 3, 3
    lfs 1, 0x10(1)
    psq_st 6, 0x14(1), 0, 0
    fcmpo cr0, 4, 0
    stfs 1, 0x28(1)
    stfs 1, 0x1c(1)
    psq_st 6, 0x20(1), 0, 0
    stfs 2, 0x28(1)
    cror eq, lt, eq
    .4byte 0x41820054 # beq .L_8025B168
    fcmpo cr0, 4, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8025B12C
    fmr 29, 4
    .4byte 0x48000028 # b .L_8025B150
L_8025B12C:
    frsqrte 3, 4
    .4byte 0xC042D120 # lfs f2, lbl_805400C0@sda21(r0)
    .4byte 0xC002D15C # lfs f0, lbl_805400FC@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 29, 0
L_8025B150:
    psq_l 1, 0x20(1), 0, 0
    psq_l 0, 0x28(1), 1, 0
    ps_muls0 1, 1, 29
    ps_muls0 0, 0, 29
    psq_st 1, 0x20(1), 0, 0
    psq_st 0, 0x28(1), 1, 0
L_8025B168:
    psq_l 3, 0x20(1), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 31, 0x28(1)
    ps_mul 3, 3, 3
    .4byte 0xC022D138 # lfs f1, lbl_805400D8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 31, 31, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x41820038 # beq .L_8025B1CC
    .4byte 0xC3C2D174 # lfs f30, lbl_80540114@sda21(r0)
    psq_l 1, 0x20(1), 0, 0
    psq_l 0, 0x28(1), 1, 0
    ps_muls0 1, 1, 30
    psq_l 2, 0x8(31), 0, 0
    ps_muls0 0, 0, 30
    ps_add 2, 2, 1
    psq_st 1, 0x20(1), 0, 0
    psq_st 0, 0x28(1), 1, 0
    psq_st 2, 0x8(31), 0, 0
    psq_l 1, 0x10(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x10(31), 1, 0
L_8025B1CC:
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    stfs 0, 0x10(31)
    .4byte 0x48000018 # b .L_8025B1EC
L_8025B1D8:
    li 0, 0x0
    mr 3, 31
    stb 0, 0x124d(31)
    li 4, 0x0
    bl fn_80251AEC
L_8025B1EC:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    psq_l 29, 0x48(1), 0, 0
    lfd 29, 0x40(1)
    lwz 0, 0x74(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_8025B218:
    li 4, 0x1
    li 0, 0x0
    stb 4, 0x124d(3)
    stb 0, 0x458(3)
    blr

fn_8025B22C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    lbz 0, 0x3fa(3)
    cmplwi 0, 0x2
    .4byte 0x40800010 # bge .L_8025B25C
    li 0, 0x0
    stb 0, 0x3fb(31)
    .4byte 0x48000034 # b .L_8025B28C
L_8025B25C:
    cmplwi 0, 0x4
    .4byte 0x40800010 # bge .L_8025B270
    li 0, 0x1
    stb 0, 0x3fb(31)
    .4byte 0x48000020 # b .L_8025B28C
L_8025B270:
    cmplwi 0, 0x6
    .4byte 0x40800010 # bge .L_8025B284
    li 0, 0x2
    stb 0, 0x3fb(31)
    .4byte 0x4800000C # b .L_8025B28C
L_8025B284:
    li 0, 0x3
    stb 0, 0x3fb(31)
L_8025B28C:
    lbz 0, 0x3fa(31)
    cmplwi 0, 0x6
    .4byte 0x40820088 # bne .L_8025B31C
    mr 3, 31
    bl fn_802415CC
    cmpwi 3, 0x2
    .4byte 0x41800040 # blt .L_8025B2E4
    lwz 30, 0x4(31)
    bl SpatialRegistry_GetBase
    lwz 4, 0x3e8(31)
    clrlwi 0, 30, 30
    lis 6, 0x424f
    lwz 5, 0x3b4(31)
    rlwimi 0, 4, 4, 25, 27
    mr 9, 30
    addi 4, 6, 0x4d45
    addi 6, 31, 0x8
    ori 7, 0, 0x100
    li 8, -0x1
    bl fn_801F9484
    stw 3, 0xb18(31)
    .4byte 0x48000050 # b .L_8025B330
L_8025B2E4:
    lwz 30, 0x4(31)
    bl SpatialRegistry_GetBase
    lwz 0, 0x3e8(31)
    lis 4, 0x424f
    lwz 5, 0x3b4(31)
    clrlwi 7, 30, 30
    mr 9, 30
    addi 4, 4, 0x4d45
    addi 6, 31, 0x8
    rlwimi 7, 0, 4, 25, 27
    li 8, -0x1
    bl fn_801F9484
    stw 3, 0xb18(31)
    .4byte 0x48000018 # b .L_8025B330
L_8025B31C:
    cmplwi 0, 0x10
    .4byte 0x40820010 # bne .L_8025B330
    mr 3, 31
    li 4, 0x0
    bl fn_80251AEC
L_8025B330:
    lbz 4, 0x3fa(31)
    mr 3, 31
    addi 0, 4, 0x1
    stb 0, 0x3fa(31)
    bl fn_80268B3C
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8025B35C:
    li 0, 0x0
    stb 0, 0x458(3)
    blr

fn_8025B368:
    li 5, 0x0
    stb 5, 0xb99(3)
    stb 5, 0xb9a(3)
    stb 5, 0xb9b(3)
    lwz 6, 0x1274(3)
    cmplwi 6, 0x0
    .4byte 0x4182002C # beq .L_8025B3AC
    lwz 4, 0xf4(6)
    li 0, 0x1
    rlwinm 4, 4, 0, 26, 24
    stw 4, 0xf4(6)
    lwz 6, 0x1274(3)
    lwz 4, 0xf4(6)
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 0, 0x24(6)
    stw 5, 0x1274(3)
L_8025B3AC:
    lwz 6, 0x128c(3)
    cmplwi 6, 0x0
    .4byte 0x41820030 # beq .L_8025B3E4
    lwz 5, 0xf4(6)
    li 4, 0x1
    li 0, 0x0
    rlwinm 5, 5, 0, 26, 24
    stw 5, 0xf4(6)
    lwz 6, 0x128c(3)
    lwz 5, 0xf4(6)
    ori 5, 5, 0x1
    stw 5, 0xf4(6)
    stw 4, 0x24(6)
    stw 0, 0x128c(3)
L_8025B3E4:
    li 0, 0x0
    stw 0, 0x40c(3)
    blr

fn_8025B3F0:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    lis 4, lbl_8046AF00@ha
    mr 30, 3
    addi 31, 4, lbl_8046AF00@l
    li 29, 0x30
    bl IsPoseOverrideEligible
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8025B430
    li 29, 0x19
L_8025B430:
    lbz 0, 0x3fa(30)
    cmplwi 0, 0x0
    .4byte 0x4082018C # bne .L_8025B5C4
    lwz 3, 0x4(30)
    bl fn_8022C274
    clrlwi. 0, 3, 24
    .4byte 0x4182017C # beq .L_8025B5C4
    mr 3, 30
    bl fn_8027EB04
    lbz 3, 0x3fc(30)
    addi 0, 3, 0x1
    stb 0, 0x3fc(30)
    lbz 4, 0x3fc(30)
    cmpw 4, 29
    .4byte 0x40820144 # bne .L_8025B5AC
    li 0, 0x1
    addi 3, 31, 0x190
    stb 0, 0xb9b(30)
    addi 4, 30, 0x12a4
    lwz 0, 0x3dc(30)
    mulli 0, 0, 0xc
    add 3, 3, 0
    lfs 0, 0x0(3)
    lfs 1, 0x4(3)
    stfs 0, 0x12a4(30)
    lfs 0, 0x8(3)
    stfs 1, 0x12a8(30)
    stfs 0, 0x12ac(30)
    psq_l 1, 0x0(4), 0, 0
    psq_l 0, 0x8(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x0(4), 0, 0
    psq_l 1, 0x8(4), 1, 0
    psq_l 0, 0x10(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(4), 1, 0
    lwz 29, 0x3b4(30)
    cmpwi 29, 0x8
    .4byte 0x408000A4 # bge .L_8025B56C
    lwz 0, 0x1274(30)
    cmplwi 0, 0x0
    .4byte 0x40820044 # bne .L_8025B518
    .4byte 0xC022D134 # lfs f1, lbl_805400D4@sda21(r0)
    mr 3, 29
    li 5, 0xcb
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x1274(30)
    lwz 3, 0x1274(30)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8025B518
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_8025B518:
    lwz 0, 0x128c(30)
    cmplwi 0, 0x0
    .4byte 0x40820078 # bne .L_8025B598
    lwz 3, 0x3b4(30)
    addi 4, 30, 0x12a4
    .4byte 0xC022D134 # lfs f1, lbl_805400D4@sda21(r0)
    li 5, 0xcc
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x128c(30)
    lwz 3, 0x128c(30)
    cmplwi 3, 0x0
    .4byte 0x41820040 # beq .L_8025B598
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
    .4byte 0x48000030 # b .L_8025B598
L_8025B56C:
    bl SpatialRegistry_GetBase
    lwz 0, 0x4(30)
    lis 4, 0x5045
    mr 5, 29
    addi 6, 30, 0x12a4
    clrlwi 0, 0, 30
    addi 4, 4, 0x4646
    ori 7, 0, 0x8
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_8025B598:
    lis 4, 0x2
    mr 3, 30
    addi 4, 4, 0xd
    bl fn_8024F0E8
    .4byte 0x48000028 # b .L_8025B5D0
L_8025B5AC:
    addi 3, 29, 0x1
    clrlwi 0, 3, 24
    cmplw 4, 0
    .4byte 0x41800018 # blt .L_8025B5D0
    stb 3, 0x3fc(30)
    .4byte 0x48000010 # b .L_8025B5D0
L_8025B5C4:
    lbz 3, 0x3fa(30)
    addi 0, 3, 0x1
    stb 0, 0x3fa(30)
L_8025B5D0:
    lbz 3, 0x3fa(30)
    cmplwi 3, 0x0
    .4byte 0x4082003C # bne .L_8025B614
    lbz 0, 0x3fc(30)
    cmplwi 0, 0x2
    .4byte 0x40800010 # bge .L_8025B5F4
    li 0, 0x2
    stb 0, 0x3fb(30)
    .4byte 0x48000214 # b .L_8025B804
L_8025B5F4:
    cmplwi 0, 0x4
    .4byte 0x40800010 # bge .L_8025B608
    li 0, 0x1
    stb 0, 0x3fb(30)
    .4byte 0x48000200 # b .L_8025B804
L_8025B608:
    li 0, 0x0
    stb 0, 0x3fb(30)
    .4byte 0x480001F4 # b .L_8025B804
L_8025B614:
    lbz 0, 0xb9b(30)
    cmplwi 0, 0x0
    .4byte 0x408200A4 # bne .L_8025B6C0
    cmplwi 3, 0x3
    .4byte 0x40800010 # bge .L_8025B634
    li 0, 0x1
    stb 0, 0x3fb(30)
    .4byte 0x48000074 # b .L_8025B6A4
L_8025B634:
    cmplwi 3, 0x5
    .4byte 0x40800010 # bge .L_8025B648
    li 0, 0x2
    stb 0, 0x3fb(30)
    .4byte 0x48000060 # b .L_8025B6A4
L_8025B648:
    cmplwi 3, 0xd
    .4byte 0x40800050 # bge .L_8025B69C
    lwz 0, 0x3b4(30)
    cmpwi 0, 0x8
    .4byte 0x40800010 # bge .L_8025B668
    li 0, 0x5
    stb 0, 0x3fb(30)
    .4byte 0x48000040 # b .L_8025B6A4
L_8025B668:
    cmplwi 3, 0x7
    .4byte 0x40800010 # bge .L_8025B67C
    li 0, 0x3
    stb 0, 0x3fb(30)
    .4byte 0x4800002C # b .L_8025B6A4
L_8025B67C:
    cmplwi 3, 0x9
    .4byte 0x40800010 # bge .L_8025B690
    li 0, 0x4
    stb 0, 0x3fb(30)
    .4byte 0x48000018 # b .L_8025B6A4
L_8025B690:
    li 0, 0x5
    stb 0, 0x3fb(30)
    .4byte 0x4800000C # b .L_8025B6A4
L_8025B69C:
    li 0, 0x6
    stb 0, 0x3fb(30)
L_8025B6A4:
    lbz 0, 0x3fa(30)
    cmplwi 0, 0x11
    .4byte 0x41800158 # blt .L_8025B804
    mr 3, 30
    li 4, 0x0
    bl fn_80251AEC
    .4byte 0x48000148 # b .L_8025B804
L_8025B6C0:
    cmplwi 3, 0x2
    .4byte 0x40800010 # bge .L_8025B6D4
    li 0, 0x1
    stb 0, 0x3fb(30)
    .4byte 0x480000E8 # b .L_8025B7B8
L_8025B6D4:
    cmplwi 3, 0x3
    .4byte 0x40800010 # bge .L_8025B6E8
    li 0, 0x2
    stb 0, 0x3fb(30)
    .4byte 0x480000D4 # b .L_8025B7B8
L_8025B6E8:
    cmplwi 3, 0x4
    .4byte 0x40800010 # bge .L_8025B6FC
    li 0, 0x3
    stb 0, 0x3fb(30)
    .4byte 0x480000C0 # b .L_8025B7B8
L_8025B6FC:
    cmplwi 3, 0x5
    .4byte 0x40800010 # bge .L_8025B710
    li 0, 0x4
    stb 0, 0x3fb(30)
    .4byte 0x480000AC # b .L_8025B7B8
L_8025B710:
    cmplwi 3, 0x6
    .4byte 0x40800010 # bge .L_8025B724
    li 0, 0x3
    stb 0, 0x3fb(30)
    .4byte 0x48000098 # b .L_8025B7B8
L_8025B724:
    cmplwi 3, 0x7
    .4byte 0x40800010 # bge .L_8025B738
    li 0, 0x4
    stb 0, 0x3fb(30)
    .4byte 0x48000084 # b .L_8025B7B8
L_8025B738:
    cmplwi 3, 0x8
    .4byte 0x40800010 # bge .L_8025B74C
    li 0, 0x3
    stb 0, 0x3fb(30)
    .4byte 0x48000070 # b .L_8025B7B8
L_8025B74C:
    cmplwi 3, 0x9
    .4byte 0x40800010 # bge .L_8025B760
    li 0, 0x4
    stb 0, 0x3fb(30)
    .4byte 0x4800005C # b .L_8025B7B8
L_8025B760:
    cmplwi 3, 0xb
    .4byte 0x40800010 # bge .L_8025B774
    li 0, 0x5
    stb 0, 0x3fb(30)
    .4byte 0x48000048 # b .L_8025B7B8
L_8025B774:
    cmplwi 3, 0xd
    .4byte 0x40800010 # bge .L_8025B788
    li 0, 0x6
    stb 0, 0x3fb(30)
    .4byte 0x48000034 # b .L_8025B7B8
L_8025B788:
    cmplwi 3, 0xf
    .4byte 0x40800010 # bge .L_8025B79C
    li 0, 0x5
    stb 0, 0x3fb(30)
    .4byte 0x48000020 # b .L_8025B7B8
L_8025B79C:
    cmplwi 3, 0x14
    .4byte 0x40800010 # bge .L_8025B7B0
    li 0, 0x6
    stb 0, 0x3fb(30)
    .4byte 0x4800000C # b .L_8025B7B8
L_8025B7B0:
    li 0, 0x7
    stb 0, 0x3fb(30)
L_8025B7B8:
    lbz 0, 0x3fa(30)
    cmplwi 0, 0x1e
    .4byte 0x41800010 # blt .L_8025B7D0
    mr 3, 30
    li 4, 0x0
    bl fn_80251AEC
L_8025B7D0:
    lwz 0, 0x3b4(30)
    cmpwi 0, 0x8
    .4byte 0x4080002C # bge .L_8025B804
    lbz 0, 0x3fb(30)
    cmplwi 0, 0x3
    .4byte 0x40820010 # bne .L_8025B7F4
    li 0, 0x5
    stb 0, 0x3fb(30)
    .4byte 0x48000014 # b .L_8025B804
L_8025B7F4:
    cmplwi 0, 0x4
    .4byte 0x4082000C # bne .L_8025B804
    li 0, 0x6
    stb 0, 0x3fb(30)
L_8025B804:
    lbz 0, 0xb9b(30)
    cmplwi 0, 0x1
    .4byte 0x40820034 # bne .L_8025B840
    lwz 3, 0x3dc(30)
    addi 4, 31, 0x1c0
    addi 0, 3, 0x4
    mulli 0, 0, 0xc
    add 4, 4, 0
    lfs 0, 0x0(4)
    lfs 1, 0x4(4)
    stfs 0, 0x5c0(30)
    lfs 0, 0x8(4)
    stfs 1, 0x5c4(30)
    stfs 0, 0x5c8(30)
    .4byte 0x4800002C # b .L_8025B868
L_8025B840:
    lwz 0, 0x3dc(30)
    addi 3, 31, 0x1c0
    mulli 0, 0, 0xc
    add 3, 3, 0
    lfs 0, 0x0(3)
    lfs 1, 0x4(3)
    stfs 0, 0x5c0(30)
    lfs 0, 0x8(3)
    stfs 1, 0x5c4(30)
    stfs 0, 0x5c8(30)
L_8025B868:
    psq_l 2, 0x5c0(30), 0, 0
    psq_l 1, 0x8(30), 0, 0
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    ps_add 1, 2, 1
    psq_st 1, 0x5c0(30), 0, 0
    psq_l 2, 0x5c8(30), 1, 0
    psq_l 1, 0x10(30), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x5c8(30), 1, 0
    stfs 0, 0x5c8(30)
    lbz 29, 0xb99(30)
    bl IsPoseOverrideEligible
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_8025B8CC
    lbz 0, 0x3fa(30)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8025B8B8
    li 0, 0x1
    stb 0, 0xb99(30)
    .4byte 0x48000040 # b .L_8025B8F4
L_8025B8B8:
    cmplwi 0, 0x3
    .4byte 0x40820038 # bne .L_8025B8F4
    li 0, 0x0
    stb 0, 0xb99(30)
    .4byte 0x4800002C # b .L_8025B8F4
L_8025B8CC:
    lbz 0, 0x3fa(30)
    cmplwi 0, 0x5
    .4byte 0x40820010 # bne .L_8025B8E4
    li 0, 0x1
    stb 0, 0xb99(30)
    .4byte 0x48000014 # b .L_8025B8F4
L_8025B8E4:
    cmplwi 0, 0x7
    .4byte 0x4082000C # bne .L_8025B8F4
    li 0, 0x0
    stb 0, 0xb99(30)
L_8025B8F4:
    lbz 0, 0xb99(30)
    cmplwi 0, 0x1
    .4byte 0x40820438 # bne .L_8025BD34
    cmplwi 29, 0x0
    .4byte 0x40820430 # bne .L_8025BD34
    bl IsPoseOverrideEligible
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_8025B930
    .4byte 0xC022D18C # lfs f1, lbl_8054012C@sda21(r0)
    .4byte 0xC002D13C # lfs f0, lbl_805400DC@sda21(r0)
    stfs 1, 0x5b0(30)
    stfs 1, 0x5b4(30)
    stfs 0, 0x5b8(30)
    stfs 0, 0x5bc(30)
    .4byte 0x4800001C # b .L_8025B948
L_8025B930:
    .4byte 0xC022D190 # lfs f1, lbl_80540130@sda21(r0)
    .4byte 0xC002D188 # lfs f0, lbl_80540128@sda21(r0)
    stfs 1, 0x5b0(30)
    stfs 1, 0x5b4(30)
    stfs 0, 0x5b8(30)
    stfs 0, 0x5bc(30)
L_8025B948:
    lfs 1, 0x5b0(30)
    addi 5, 31, 0x220
    lfs 0, 0x5c0(30)
    addi 4, 1, 0x8
    fadds 0, 1, 0
    stfs 0, 0x5b0(30)
    lfs 1, 0x5b4(30)
    lfs 0, 0x5c4(30)
    fadds 0, 1, 0
    stfs 0, 0x5b4(30)
    lfs 1, 0x5b8(30)
    lfs 0, 0x5c0(30)
    fadds 0, 1, 0
    stfs 0, 0x5b8(30)
    lfs 1, 0x5bc(30)
    lfs 0, 0x5c4(30)
    fadds 0, 1, 0
    stfs 0, 0x5bc(30)
    lwz 0, 0x3dc(30)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mulli 0, 0, 0xc
    add 5, 5, 0
    lfs 2, 0x0(5)
    lfs 1, 0x4(5)
    lfs 0, 0x8(5)
    stfs 2, 0x8(1)
    stfs 1, 0xc(1)
    stfs 0, 0x10(1)
    psq_l 2, 0x0(4), 0, 0
    psq_l 0, 0x8(30), 0, 0
    psq_l 1, 0x8(4), 1, 0
    ps_add 0, 2, 0
    psq_st 0, 0x0(4), 0, 0
    psq_l 0, 0x10(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(4), 1, 0
    lwz 5, 0x4(30)
    lwz 6, 0x3b4(30)
    bl fn_802A1D44
    .4byte 0xC3E2D134 # lfs f31, lbl_805400D4@sda21(r0)
    mr 3, 30
    bl fn_802486A0
    cmpwi 3, 0x5
    .4byte 0x4182003C # beq .L_8025BA30
    mr 3, 30
    bl fn_80240AF0
    clrlwi. 0, 3, 24
    .4byte 0x4082002C # bne .L_8025BA30
    mr 3, 30
    bl fn_802487FC
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x1c(1)
    .4byte 0xC822D198 # lfd f1, lbl_80540138@sda21(r0)
    stw 0, 0x18(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 1
    fdivs 31, 31, 0
L_8025BA30:
    mr 3, 30
    bl fn_802415CC
    cmpwi 3, 0x1
    .4byte 0x4181000C # bgt .L_8025BA48
    .4byte 0xC002D120 # lfs f0, lbl_805400C0@sda21(r0)
    fmuls 31, 31, 0
L_8025BA48:
    lbz 0, 0xb9b(30)
    cmplwi 0, 0x1
    .4byte 0x408201AC # bne .L_8025BBFC
    lwz 0, 0x3b4(30)
    cmpwi 0, 0x8
    .4byte 0x40800028 # bge .L_8025BA84
    .4byte 0xC002D128 # lfs f0, lbl_805400C8@sda21(r0)
    addi 4, 30, 0x5c0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 5, 0x2
    fmuls 2, 0, 31
    .4byte 0xC022D134 # lfs f1, lbl_805400D4@sda21(r0)
    lwz 3, 0x20(3)
    li 6, 0x0
    bl fn_802F601C
L_8025BA84:
    lis 4, 0x2
    mr 3, 30
    addi 4, 4, 0x2b
    bl fn_8024F0E8
    lwz 3, 0x3b4(30)
    addi 4, 30, 0x5c0
    .4byte 0xC022D134 # lfs f1, lbl_805400D4@sda21(r0)
    li 5, 0x23b
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x3b4(30)
    addi 4, 30, 0x5c0
    .4byte 0xC022D134 # lfs f1, lbl_805400D4@sda21(r0)
    li 5, 0x23c
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x3b4(30)
    addi 4, 30, 0x5c0
    .4byte 0xC022D194 # lfs f1, lbl_80540134@sda21(r0)
    li 5, 0x23d
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x3b4(30)
    addi 4, 30, 0x5c0
    .4byte 0xC022D128 # lfs f1, lbl_805400C8@sda21(r0)
    li 5, 0x23e
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x3b4(30)
    addi 4, 30, 0x5c0
    .4byte 0xC022D128 # lfs f1, lbl_805400C8@sda21(r0)
    li 5, 0x23f
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 4, 0x3b4(30)
    addi 3, 30, 0x5c0
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x39
    .4byte 0x4182000C # beq .L_8025BB7C
    cmplwi 0, 0xd
    .4byte 0x40820030 # bne .L_8025BBA8
L_8025BB7C:
    lwz 3, 0x3b4(30)
    addi 4, 30, 0x5c0
    .4byte 0xC022D128 # lfs f1, lbl_805400C8@sda21(r0)
    li 5, 0x3d0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800002C # b .L_8025BBD0
L_8025BBA8:
    lwz 3, 0x3b4(30)
    addi 4, 30, 0x5c0
    .4byte 0xC022D128 # lfs f1, lbl_805400C8@sda21(r0)
    li 5, 0x3cf
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_8025BBD0:
    bl GetRoomConfigRecord
    lwz 4, 0x3b4(30)
    li 5, 0x0
    .4byte 0xC022D140 # lfs f1, lbl_805400E0@sda21(r0)
    .4byte 0xC042D124 # lfs f2, lbl_805400C4@sda21(r0)
    bl fn_802D79E8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x2
    li 5, 0x0
    bl fn_80134DE4
    .4byte 0x4800013C # b .L_8025BD34
L_8025BBFC:
    lwz 0, 0x3b4(30)
    cmpwi 0, 0x8
    .4byte 0x40800024 # bge .L_8025BC28
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    fmr 2, 31
    .4byte 0xC022D128 # lfs f1, lbl_805400C8@sda21(r0)
    addi 4, 30, 0x5c0
    lwz 3, 0x20(3)
    li 5, 0x1
    li 6, 0x0
    bl fn_802F601C
L_8025BC28:
    lis 4, 0x2
    mr 3, 30
    addi 4, 4, 0x24
    bl fn_8024F0E8
    lwz 3, 0x3b4(30)
    addi 4, 30, 0x5c0
    .4byte 0xC022D134 # lfs f1, lbl_805400D4@sda21(r0)
    li 5, 0x23d
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x3b4(30)
    addi 4, 30, 0x5c0
    .4byte 0xC022D134 # lfs f1, lbl_805400D4@sda21(r0)
    li 5, 0x23e
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x3b4(30)
    addi 4, 30, 0x5c0
    .4byte 0xC022D134 # lfs f1, lbl_805400D4@sda21(r0)
    li 5, 0x23f
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 4, 0x3b4(30)
    addi 3, 30, 0x5c0
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x39
    .4byte 0x4182000C # beq .L_8025BCD0
    cmplwi 0, 0xd
    .4byte 0x40820030 # bne .L_8025BCFC
L_8025BCD0:
    lwz 3, 0x3b4(30)
    addi 4, 30, 0x5c0
    .4byte 0xC022D134 # lfs f1, lbl_805400D4@sda21(r0)
    li 5, 0x3d0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800002C # b .L_8025BD24
L_8025BCFC:
    lwz 3, 0x3b4(30)
    addi 4, 30, 0x5c0
    .4byte 0xC022D134 # lfs f1, lbl_805400D4@sda21(r0)
    li 5, 0x3cf
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_8025BD24:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1
    li 5, 0x0
    bl fn_80134DE4
L_8025BD34:
    lbz 0, 0xb9b(30)
    cmplwi 0, 0x1
    .4byte 0x4082002C # bne .L_8025BD68
    lbz 0, 0x3fa(30)
    cmplwi 0, 0x12
    .4byte 0x40820010 # bne .L_8025BD58
    li 0, 0x1
    stb 0, 0xb9a(30)
    .4byte 0x48000014 # b .L_8025BD68
L_8025BD58:
    cmplwi 0, 0x14
    .4byte 0x4082000C # bne .L_8025BD68
    li 0, 0x0
    stb 0, 0xb9a(30)
L_8025BD68:
    mr 3, 30
    bl fn_80268B3C
    lwz 3, 0x40c(30)
    cmpwi 3, 0x1e
    .4byte 0x40800010 # bge .L_8025BD88
    addi 0, 3, 0x1
    stw 0, 0x40c(30)
    .4byte 0x48000020 # b .L_8025BDA4
L_8025BD88:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x7f4(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8025BDA4
    li 0, 0x1
    stb 0, 0x7f5(3)
L_8025BDA4:
    psq_l 31, 0x38(1), 0, 0
    lwz 0, 0x44(1)
    lfd 31, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8025BDC8:
    li 0, 0x0
    stb 0, 0x458(3)
    stw 0, 0x40c(3)
    blr

fn_8025BDD8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    lwz 5, 0x12cc(3)
    cmplwi 5, 0x0
    .4byte 0x41820030 # beq .L_8025BE28
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    rlwinm 4, 4, 0, 26, 24
    stw 4, 0xf4(5)
    lwz 5, 0x12cc(31)
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x12cc(31)
L_8025BE28:
    lwz 5, 0x12e4(31)
    cmplwi 5, 0x0
    .4byte 0x41820030 # beq .L_8025BE60
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    rlwinm 4, 4, 0, 26, 24
    stw 4, 0xf4(5)
    lwz 5, 0x12e4(31)
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x12e4(31)
L_8025BE60:
    lwz 30, 0x12c0(31)
    cmpwi 30, 0x0
    .4byte 0x41800028 # blt .L_8025BE90
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8025BE88
    li 0, 0x0
    stb 0, 0x11c(3)
L_8025BE88:
    li 0, -0x1
    stw 0, 0x12c0(31)
L_8025BE90:
    li 0, 0x0
    stw 0, 0x40c(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8025BEB0:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    mr 29, 3
    lbz 3, 0x3fa(3)
    cmplwi 3, 0x3
    .4byte 0x40800018 # bge .L_8025BEF8
    addi 3, 3, 0x1
    li 0, 0x0
    stb 3, 0x3fa(29)
    stb 0, 0x3fb(29)
    .4byte 0x4800080C # b .L_8025C700
L_8025BEF8:
    cmplwi 3, 0x6
    .4byte 0x40800018 # bge .L_8025BF14
    addi 3, 3, 0x1
    li 0, 0x1
    stb 3, 0x3fa(29)
    stb 0, 0x3fb(29)
    .4byte 0x480007F0 # b .L_8025C700
L_8025BF14:
    .4byte 0x408207C0 # bne .L_8025C6D4
    lbz 3, 0x3fc(29)
    cmplwi 3, 0x30
    .4byte 0x4080019C # bge .L_8025C0BC
    addi 0, 3, 0x1
    stb 0, 0x3fc(29)
    lbz 0, 0x3fc(29)
    cmplwi 0, 0x30
    .4byte 0x40820260 # bne .L_8025C194
    lwz 5, 0x3dc(29)
    lis 3, lbl_8046B040@ha
    addi 0, 3, lbl_8046B040@l
    addi 4, 29, 0x12fc
    mulli 3, 5, 0xc
    add 3, 0, 3
    lfs 0, 0x0(3)
    lfs 1, 0x4(3)
    stfs 0, 0x12fc(29)
    lfs 0, 0x8(3)
    stfs 1, 0x1300(29)
    stfs 0, 0x1304(29)
    psq_l 1, 0x0(4), 0, 0
    psq_l 0, 0x8(29), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x0(4), 0, 0
    psq_l 1, 0x8(4), 1, 0
    psq_l 0, 0x10(29), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(4), 1, 0
    lwz 0, 0x12cc(29)
    cmplwi 0, 0x0
    .4byte 0x40820068 # bne .L_8025BFF8
    lwz 0, 0x3b4(29)
    cmpwi 0, 0x8
    .4byte 0x4080005C # bge .L_8025BFF8
    lfs 0, 0x12fc(29)
    addi 9, 29, 0x12d0
    .4byte 0xC022D134 # lfs f1, lbl_805400D4@sda21(r0)
    li 5, 0xcb
    stfs 0, 0x12d4(29)
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    lfs 0, 0x1300(29)
    li 10, 0x1
    stfs 0, 0x12d8(29)
    lfs 0, 0x1304(29)
    stfs 0, 0x12dc(29)
    lwz 3, 0x3b4(29)
    bl fn_8013CC50
    stw 3, 0x12cc(29)
    lwz 3, 0x12cc(29)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8025BFF8
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_8025BFF8:
    lwz 0, 0x12e4(29)
    cmplwi 0, 0x0
    .4byte 0x4082006C # bne .L_8025C06C
    lwz 0, 0x3b4(29)
    cmpwi 0, 0x8
    .4byte 0x40800060 # bge .L_8025C06C
    lfs 0, 0x12fc(29)
    addi 4, 29, 0x12fc
    .4byte 0xC022D134 # lfs f1, lbl_805400D4@sda21(r0)
    addi 9, 29, 0x12e8
    stfs 0, 0x12ec(29)
    li 5, 0xcc
    li 6, 0x0
    li 7, -0x1
    lfs 0, 0x1300(29)
    li 8, 0x0
    li 10, 0x1
    stfs 0, 0x12f0(29)
    lfs 0, 0x1304(29)
    stfs 0, 0x12f4(29)
    lwz 3, 0x3b4(29)
    bl fn_8013CC50
    stw 3, 0x12e4(29)
    lwz 3, 0x12e4(29)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8025C06C
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_8025C06C:
    lwz 0, 0x12c0(29)
    cmpwi 0, 0x0
    .4byte 0x40800034 # bge .L_8025C0A8
    bl SpatialRegistry_GetBase
    lwz 0, 0x4(29)
    lis 4, 0x5045
    lwz 5, 0x3b4(29)
    addi 4, 4, 0x4646
    clrlwi 0, 0, 30
    addi 6, 29, 0x12fc
    ori 7, 0, 0x8
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x12c0(29)
L_8025C0A8:
    lis 4, 0x2
    mr 3, 29
    addi 4, 4, 0xd
    bl fn_8024F0E8
    .4byte 0x480000DC # b .L_8025C194
L_8025C0BC:
    lwz 4, 0x3dc(29)
    lis 3, lbl_8046B040@ha
    addi 0, 3, lbl_8046B040@l
    addi 5, 29, 0x12fc
    mulli 3, 4, 0xc
    add 3, 0, 3
    lfs 0, 0x0(3)
    lfs 1, 0x4(3)
    stfs 0, 0x12fc(29)
    lfs 0, 0x8(3)
    stfs 1, 0x1300(29)
    stfs 0, 0x1304(29)
    psq_l 1, 0x0(5), 0, 0
    psq_l 0, 0x8(29), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x0(5), 0, 0
    psq_l 1, 0x8(5), 1, 0
    psq_l 0, 0x10(29), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(5), 1, 0
    lwz 0, 0x12cc(29)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8025C130
    lfs 0, 0x12fc(29)
    stfs 0, 0x12d4(29)
    lfs 0, 0x1300(29)
    stfs 0, 0x12d8(29)
    lfs 0, 0x1304(29)
    stfs 0, 0x12dc(29)
L_8025C130:
    lwz 0, 0x12e4(29)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8025C154
    lfs 0, 0x12fc(29)
    stfs 0, 0x12ec(29)
    lfs 0, 0x1300(29)
    stfs 0, 0x12f0(29)
    lfs 0, 0x1304(29)
    stfs 0, 0x12f4(29)
L_8025C154:
    lwz 30, 0x12c0(29)
    cmpwi 30, 0x0
    .4byte 0x41800038 # blt .L_8025C194
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_8025C18C
    addi 4, 29, 0x12fc
    psq_l 1, 0x0(4), 0, 0
    lfs 0, 0x1304(29)
    psq_st 1, 0xc(3), 0, 0
    stfs 0, 0x14(3)
    .4byte 0x4800000C # b .L_8025C194
L_8025C18C:
    li 0, -0x1
    stw 0, 0x12c0(29)
L_8025C194:
    psq_l 3, 0x344(29), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 31, 0x34c(29)
    ps_mul 3, 3, 3
    .4byte 0xC022D138 # lfs f1, lbl_805400D8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 31, 31, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_8025C1D4
    lfs 1, 0x10(29)
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810078 # ble .L_8025C248
L_8025C1D4:
    psq_l 2, 0x8(29), 0, 0
    psq_l 1, 0x344(29), 0, 0
    .4byte 0xC002D164 # lfs f0, lbl_80540104@sda21(r0)
    ps_add 2, 2, 1
    .4byte 0xC022D124 # lfs f1, lbl_805400C4@sda21(r0)
    psq_st 2, 0x8(29), 0, 0
    psq_l 3, 0x10(29), 1, 0
    psq_l 2, 0x34c(29), 1, 0
    ps_add 2, 3, 2
    psq_st 2, 0x10(29), 1, 0
    lfs 2, 0x34c(29)
    fsubs 0, 2, 0
    stfs 0, 0x34c(29)
    lfs 0, 0x10(29)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x408204B4 # bne .L_8025C6C8
    stfs 1, 0x10(29)
    li 0, 0x3
    lfs 2, 0x348(29)
    lfs 0, 0x344(29)
    stfs 0, 0x368(29)
    stfs 2, 0x36c(29)
    stfs 1, 0x370(29)
    stfs 1, 0x344(29)
    stfs 1, 0x348(29)
    stfs 1, 0x34c(29)
    stb 0, 0x43d(29)
    .4byte 0x48000484 # b .L_8025C6C8
L_8025C248:
    lbz 3, 0x43d(29)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8025C260
    subi 0, 3, 0x1
    stb 0, 0x43d(29)
    .4byte 0x4800046C # b .L_8025C6C8
L_8025C260:
    lwz 3, 0x4(29)
    bl fn_8022C274
    clrlwi. 0, 3, 24
    .4byte 0x418201B0 # beq .L_8025C41C
    mr 3, 29
    li 4, 0x20
    bl fn_80246B10
    cmplwi 3, 0x0
    .4byte 0x4182008C # beq .L_8025C30C
    mr 3, 29
    bl fn_80246F28
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x40820028 # bne .L_8025C2BC
    lwz 3, 0xbf0(29)
    lbz 0, 0xb7(3)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8025C2BC
    lfs 0, 0x368(29)
    stfs 0, 0x344(29)
    lfs 0, 0x36c(29)
    stfs 0, 0x348(29)
    .4byte 0x48000038 # b .L_8025C2F0
L_8025C2BC:
    mr 3, 29
    bl fn_80247330
    .4byte 0xC042D1A0 # lfs f2, lbl_80540140@sda21(r0)
    mr 3, 29
    lfs 0, 0x344(29)
    fmadds 0, 2, 1, 0
    stfs 0, 0x344(29)
    bl fn_8024712C
    fneg 2, 1
    .4byte 0xC022D1A0 # lfs f1, lbl_80540140@sda21(r0)
    lfs 0, 0x348(29)
    fmadds 0, 1, 2, 0
    stfs 0, 0x348(29)
L_8025C2F0:
    .4byte 0xC002D1A4 # lfs f0, lbl_80540144@sda21(r0)
    lis 4, 0x1
    mr 3, 29
    stfs 0, 0x34c(29)
    addi 4, 4, 0x2
    bl fn_8024F0E8
    .4byte 0x48000010 # b .L_8025C318
L_8025C30C:
    .4byte 0xC022D184 # lfs f1, lbl_80540124@sda21(r0)
    mr 3, 29
    bl fn_802808E8
L_8025C318:
    lis 3, lbl_80539D44@ha
    li 4, 0x0
    .4byte 0xC042D138 # lfs f2, lbl_805400D8@sda21(r0)
    mr 0, 4
    lfs 0, lbl_80539D44@l(3)
    lfs 1, 0x8(29)
    fmuls 2, 2, 0
    lfs 0, 0x14(29)
    fsubs 0, 1, 0
    fneg 3, 2
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_8025C35C
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8025C35C
    li 0, 0x1
L_8025C35C:
    clrlwi. 0, 0, 24
    .4byte 0x4182003C # beq .L_8025C39C
    lfs 1, 0xc(29)
    li 0, 0x0
    lfs 0, 0x18(29)
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_8025C390
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8025C390
    li 0, 0x1
L_8025C390:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_8025C39C
    li 4, 0x1
L_8025C39C:
    clrlwi. 0, 4, 24
    .4byte 0x41820010 # beq .L_8025C3B0
    li 0, 0x0
    stb 0, 0x3f8(29)
    .4byte 0x48000024 # b .L_8025C3D0
L_8025C3B0:
    lbz 3, 0x3f8(29)
    addi 0, 3, 0x1
    stb 0, 0x3f8(29)
    lbz 0, 0x3f8(29)
    cmplwi 0, 0xe
    .4byte 0x4180000C # blt .L_8025C3D0
    li 0, 0x0
    stb 0, 0x3f8(29)
L_8025C3D0:
    lbz 0, 0x3f8(29)
    cmplwi 0, 0x4
    .4byte 0x40800010 # bge .L_8025C3E8
    li 0, 0x0
    stb 0, 0x3f9(29)
    .4byte 0x480002E4 # b .L_8025C6C8
L_8025C3E8:
    cmplwi 0, 0x8
    .4byte 0x40800010 # bge .L_8025C3FC
    li 0, 0x1
    stb 0, 0x3f9(29)
    .4byte 0x480002D0 # b .L_8025C6C8
L_8025C3FC:
    cmplwi 0, 0xa
    .4byte 0x40800010 # bge .L_8025C410
    li 0, 0x0
    stb 0, 0x3f9(29)
    .4byte 0x480002BC # b .L_8025C6C8
L_8025C410:
    li 0, 0x2
    stb 0, 0x3f9(29)
    .4byte 0x480002B0 # b .L_8025C6C8
L_8025C41C:
    lbz 4, 0x3fa(29)
    mr 3, 29
    li 31, 0x1
    addi 0, 4, 0x1
    stb 0, 0x3fa(29)
    bl fn_802415CC
    cmpwi 3, 0x2
    .4byte 0x41800050 # blt .L_8025C488
    lbz 0, 0x3fc(29)
    cmplwi 0, 0x30
    .4byte 0x41800044 # blt .L_8025C488
    lwz 0, 0xb0c(29)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_8025C45C
    li 31, 0x0
    .4byte 0x48000034 # b .L_8025C48C
L_8025C45C:
    lwz 0, 0xb10(29)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_8025C470
    li 31, 0x0
    .4byte 0x48000020 # b .L_8025C48C
L_8025C470:
    lwz 0, 0xb14(29)
    cmpwi 0, 0x0
    .4byte 0x41800014 # blt .L_8025C48C
    li 31, 0x0
    .4byte 0x4800000C # b .L_8025C48C
    .4byte 0x48000008 # b .L_8025C48C
L_8025C488:
    li 31, 0x0
L_8025C48C:
    li 0, 0x3
    mr 3, 29
    li 30, 0x0
    mtctr 0
L_8025C49C:
    lwz 0, 0xb0c(3)
    cmpwi 0, 0x0
    .4byte 0x40800218 # bge .L_8025C6BC
    psq_l 1, 0x8(29), 0, 0
    lfs 0, 0x10(29)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    lwz 0, 0x3dc(29)
    cmpwi 0, 0x2
    .4byte 0x4182005C # beq .L_8025C51C
    .4byte 0x40800014 # bge .L_8025C4D8
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8025C4E4
    .4byte 0x40800028 # bge .L_8025C4F8
    .4byte 0x48000048 # b .L_8025C51C
L_8025C4D8:
    cmpwi 0, 0x4
    .4byte 0x40800040 # bge .L_8025C51C
    .4byte 0x4800002C # b .L_8025C50C
L_8025C4E4:
    lfs 1, 0xc(1)
    .4byte 0xC002D140 # lfs f0, lbl_805400E0@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(1)
    .4byte 0x48000028 # b .L_8025C51C
L_8025C4F8:
    lfs 1, 0xc(1)
    .4byte 0xC002D140 # lfs f0, lbl_805400E0@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(1)
    .4byte 0x48000014 # b .L_8025C51C
L_8025C50C:
    lfs 1, 0x8(1)
    .4byte 0xC002D128 # lfs f0, lbl_805400C8@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x8(1)
L_8025C51C:
    lbz 0, 0x3fc(29)
    cmplwi 0, 0x30
    .4byte 0x41800044 # blt .L_8025C568
    lwz 28, 0x4(29)
    bl SpatialRegistry_GetBase
    lwz 0, 0x3dc(29)
    lis 4, 0x5043
    lwz 5, 0x3b4(29)
    clrlwi 7, 28, 30
    mr 9, 28
    addi 4, 4, 0x444d
    addi 6, 1, 0x8
    rlwimi 7, 0, 4, 26, 27
    li 8, -0x1
    bl fn_801F9484
    slwi 0, 30, 2
    add 4, 29, 0
    stw 3, 0xb0c(4)
    .4byte 0x48000044 # b .L_8025C5A8
L_8025C568:
    lwz 28, 0x4(29)
    bl SpatialRegistry_GetBase
    lwz 0, 0x3dc(29)
    lis 4, 0x5043
    lwz 5, 0x3b4(29)
    mr 9, 28
    clrlslwi 0, 0, 30, 4
    addi 4, 4, 0x444d
    ori 7, 0, 0x100
    addi 6, 1, 0x8
    li 8, -0x1
    rlwimi 7, 28, 0, 30, 31
    bl fn_801F9484
    slwi 0, 30, 2
    add 4, 29, 0
    stw 3, 0xb0c(4)
L_8025C5A8:
    slwi 0, 30, 2
    add 5, 29, 0
    lwz 0, 0xb0c(5)
    cmpwi 0, 0x0
    .4byte 0x4180001C # blt .L_8025C5D4
    lwz 0, 0x3b4(29)
    lis 4, 0x2
    mr 3, 29
    stw 0, 0xb4c(5)
    addi 4, 4, 0x4
    bl fn_8024F0E8
L_8025C5D4:
    clrlwi 0, 31, 24
    cmplwi 0, 0x1
    .4byte 0x408200D4 # bne .L_8025C6B0
    lwz 0, 0xb10(29)
    cmpwi 0, 0x0
    .4byte 0x40800060 # bge .L_8025C648
    lwz 0, 0x3dc(29)
    lis 3, lbl_8046B070@ha
    addi 3, 3, lbl_8046B070@l
    lwz 28, 0x4(29)
    slwi 0, 0, 3
    lwzx 0, 3, 0
    clrlslwi 30, 0, 29, 4
    rlwimi 30, 28, 0, 30, 31
    bl SpatialRegistry_GetBase
    lis 4, 0x5043
    lwz 5, 0x3b4(29)
    mr 7, 30
    mr 9, 28
    addi 4, 4, 0x444d
    addi 6, 1, 0x8
    li 8, -0x1
    bl fn_801F9484
    stw 3, 0xb10(29)
    lwz 0, 0xb10(29)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_8025C648
    lwz 0, 0x3b4(29)
    stw 0, 0xb50(29)
L_8025C648:
    lwz 0, 0xb14(29)
    cmpwi 0, 0x0
    .4byte 0x40800060 # bge .L_8025C6B0
    lwz 28, 0x4(29)
    bl SpatialRegistry_GetBase
    lwz 0, 0x3dc(29)
    lis 4, lbl_8046B070@ha
    addi 4, 4, lbl_8046B070@l
    lis 6, 0x5043
    slwi 0, 0, 3
    lwz 5, 0x3b4(29)
    add 4, 4, 0
    mr 9, 28
    lwz 0, 0x4(4)
    addi 4, 6, 0x444d
    addi 6, 1, 0x8
    li 8, -0x1
    clrlslwi 7, 0, 29, 4
    rlwimi 7, 28, 0, 30, 31
    bl fn_801F9484
    stw 3, 0xb14(29)
    lwz 0, 0xb14(29)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_8025C6B0
    lwz 0, 0x3b4(29)
    stw 0, 0xb54(29)
L_8025C6B0:
    li 0, 0x0
    stb 0, 0x3fc(29)
    .4byte 0x48000010 # b .L_8025C6C8
L_8025C6BC:
    addi 3, 3, 0x4
    addi 30, 30, 0x1
    .4byte 0x4200FDD8 # bdnz .L_8025C49C
L_8025C6C8:
    li 0, 0x1
    stb 0, 0x3fb(29)
    .4byte 0x48000030 # b .L_8025C700
L_8025C6D4:
    cmplwi 3, 0xa
    .4byte 0x40800018 # bge .L_8025C6F0
    addi 3, 3, 0x1
    li 0, 0x2
    stb 3, 0x3fa(29)
    stb 0, 0x3fb(29)
    .4byte 0x48000014 # b .L_8025C700
L_8025C6F0:
    addi 3, 3, 0x1
    li 0, 0x3
    stb 3, 0x3fa(29)
    stb 0, 0x3fb(29)
L_8025C700:
    lbz 0, 0x3fa(29)
    cmplwi 0, 0xe
    .4byte 0x41800030 # blt .L_8025C738
    lwz 3, 0x4(29)
    bl fn_8022C274
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8025C72C
    li 0, 0x0
    stb 0, 0x3fa(29)
    stb 0, 0x3fb(29)
    .4byte 0x48000010 # b .L_8025C738
L_8025C72C:
    mr 3, 29
    li 4, 0x0
    bl fn_80251AEC
L_8025C738:
    mr 3, 29
    bl fn_80268B3C
    lwz 3, 0x40c(29)
    cmpwi 3, 0x1e
    .4byte 0x40800010 # bge .L_8025C758
    addi 0, 3, 0x1
    stw 0, 0x40c(29)
    .4byte 0x48000020 # b .L_8025C774
L_8025C758:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x7f4(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8025C774
    li 0, 0x1
    stb 0, 0x7f5(3)
L_8025C774:
    psq_l 31, 0x38(1), 0, 0
    lwz 0, 0x44(1)
    lfd 31, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8025C79C:
    li 0, 0x0
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    stb 0, 0x458(3)
    stfs 0, 0x344(3)
    stfs 0, 0x348(3)
    stfs 0, 0x34c(3)
    stw 0, 0x40c(3)
    blr

fn_8025C7BC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    lwz 5, 0x12cc(3)
    cmplwi 5, 0x0
    .4byte 0x41820030 # beq .L_8025C80C
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    rlwinm 4, 4, 0, 26, 24
    stw 4, 0xf4(5)
    lwz 5, 0x12cc(31)
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x12cc(31)
L_8025C80C:
    lwz 5, 0x12e4(31)
    cmplwi 5, 0x0
    .4byte 0x41820030 # beq .L_8025C844
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    rlwinm 4, 4, 0, 26, 24
    stw 4, 0xf4(5)
    lwz 5, 0x12e4(31)
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x12e4(31)
L_8025C844:
    lwz 30, 0x12c0(31)
    cmpwi 30, 0x0
    .4byte 0x41800028 # blt .L_8025C874
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8025C86C
    li 0, 0x0
    stb 0, 0x11c(3)
L_8025C86C:
    li 0, -0x1
    stw 0, 0x12c0(31)
L_8025C874:
    li 0, 0x0
    stw 0, 0x40c(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8025C894:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    mr 30, 3
    lbz 4, 0x3fa(3)
    cmplwi 4, 0x3
    .4byte 0x40800018 # bge .L_8025C8D8
    addi 3, 4, 0x1
    li 0, 0x0
    stb 3, 0x3fa(30)
    stb 0, 0x3fb(30)
    .4byte 0x4800070C # b .L_8025CFE0
L_8025C8D8:
    cmplwi 4, 0x6
    .4byte 0x40800018 # bge .L_8025C8F4
    addi 3, 4, 0x1
    li 0, 0x1
    stb 3, 0x3fa(30)
    stb 0, 0x3fb(30)
    .4byte 0x480006F0 # b .L_8025CFE0
L_8025C8F4:
    .4byte 0x408206C0 # bne .L_8025CFB4
    lbz 0, 0x3fc(30)
    cmplwi 0, 0x30
    .4byte 0x408001B8 # bge .L_8025CAB8
    bl fn_802415CC
    cmpwi 3, 0x2
    .4byte 0x41800028 # blt .L_8025C934
    lbz 3, 0x3fc(30)
    addi 0, 3, 0x2
    stb 0, 0x3fc(30)
    lbz 0, 0x3fc(30)
    cmplwi 0, 0x30
    .4byte 0x4180001C # blt .L_8025C940
    li 0, 0x30
    stb 0, 0x3fc(30)
    .4byte 0x48000010 # b .L_8025C940
L_8025C934:
    lbz 3, 0x3fc(30)
    addi 0, 3, 0x1
    stb 0, 0x3fc(30)
L_8025C940:
    lbz 0, 0x3fc(30)
    cmplwi 0, 0x30
    .4byte 0x4082023C # bne .L_8025CB84
    lwz 5, 0x3dc(30)
    lis 3, lbl_8046B010@ha
    addi 0, 3, lbl_8046B010@l
    addi 4, 30, 0x12fc
    mulli 3, 5, 0xc
    add 3, 0, 3
    lfs 0, 0x0(3)
    lfs 1, 0x4(3)
    stfs 0, 0x12fc(30)
    lfs 0, 0x8(3)
    stfs 1, 0x1300(30)
    stfs 0, 0x1304(30)
    psq_l 1, 0x0(4), 0, 0
    psq_l 0, 0x8(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x0(4), 0, 0
    psq_l 1, 0x8(4), 1, 0
    psq_l 0, 0x10(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(4), 1, 0
    lwz 0, 0x12cc(30)
    cmplwi 0, 0x0
    .4byte 0x4082005C # bne .L_8025CA00
    lfs 0, 0x12fc(30)
    addi 9, 30, 0x12d0
    .4byte 0xC022D134 # lfs f1, lbl_805400D4@sda21(r0)
    li 5, 0xcb
    stfs 0, 0x12d4(30)
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    lfs 0, 0x1300(30)
    li 10, 0x1
    stfs 0, 0x12d8(30)
    lfs 0, 0x1304(30)
    stfs 0, 0x12dc(30)
    lwz 3, 0x3b4(30)
    bl fn_8013CC50
    stw 3, 0x12cc(30)
    lwz 3, 0x12cc(30)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8025CA00
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_8025CA00:
    lwz 0, 0x12e4(30)
    cmplwi 0, 0x0
    .4byte 0x40820060 # bne .L_8025CA68
    lfs 0, 0x12fc(30)
    addi 4, 30, 0x12fc
    .4byte 0xC022D134 # lfs f1, lbl_805400D4@sda21(r0)
    addi 9, 30, 0x12e8
    stfs 0, 0x12ec(30)
    li 5, 0xcc
    li 6, 0x0
    li 7, -0x1
    lfs 0, 0x1300(30)
    li 8, 0x0
    li 10, 0x1
    stfs 0, 0x12f0(30)
    lfs 0, 0x1304(30)
    stfs 0, 0x12f4(30)
    lwz 3, 0x3b4(30)
    bl fn_8013CC50
    stw 3, 0x12e4(30)
    lwz 3, 0x12e4(30)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8025CA68
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_8025CA68:
    lwz 0, 0x12c0(30)
    cmpwi 0, 0x0
    .4byte 0x40800034 # bge .L_8025CAA4
    bl SpatialRegistry_GetBase
    lwz 0, 0x4(30)
    lis 4, 0x5045
    lwz 5, 0x3b4(30)
    addi 4, 4, 0x4646
    clrlwi 0, 0, 30
    addi 6, 30, 0x12fc
    ori 7, 0, 0x8
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x12c0(30)
L_8025CAA4:
    lis 4, 0x2
    mr 3, 30
    addi 4, 4, 0xd
    bl fn_8024F0E8
    .4byte 0x480000D0 # b .L_8025CB84
L_8025CAB8:
    lwz 4, 0x3dc(30)
    lis 3, lbl_8046B010@ha
    addi 0, 3, lbl_8046B010@l
    addi 5, 30, 0x12fc
    mulli 3, 4, 0xc
    add 3, 0, 3
    lfs 0, 0x0(3)
    lfs 1, 0x4(3)
    stfs 0, 0x12fc(30)
    lfs 0, 0x8(3)
    stfs 1, 0x1300(30)
    stfs 0, 0x1304(30)
    psq_l 1, 0x0(5), 0, 0
    psq_l 0, 0x8(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x0(5), 0, 0
    psq_l 1, 0x8(5), 1, 0
    psq_l 0, 0x10(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(5), 1, 0
    lwz 0, 0x12cc(30)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8025CB2C
    lfs 0, 0x12fc(30)
    stfs 0, 0x12d4(30)
    lfs 0, 0x1300(30)
    stfs 0, 0x12d8(30)
    lfs 0, 0x1304(30)
    stfs 0, 0x12dc(30)
L_8025CB2C:
    lwz 0, 0x12e4(30)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8025CB50
    lfs 0, 0x12fc(30)
    stfs 0, 0x12ec(30)
    lfs 0, 0x1300(30)
    stfs 0, 0x12f0(30)
    lfs 0, 0x1304(30)
    stfs 0, 0x12f4(30)
L_8025CB50:
    lwz 29, 0x12c0(30)
    cmpwi 29, 0x0
    .4byte 0x4180002C # blt .L_8025CB84
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8025CB84
    addi 4, 30, 0x12fc
    psq_l 1, 0x0(4), 0, 0
    lfs 0, 0x1304(30)
    psq_st 1, 0xc(3), 0, 0
    stfs 0, 0x14(3)
L_8025CB84:
    psq_l 3, 0x344(30), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 31, 0x34c(30)
    ps_mul 3, 3, 3
    .4byte 0xC022D138 # lfs f1, lbl_805400D8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 31, 31, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_8025CBC4
    lfs 1, 0x10(30)
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810078 # ble .L_8025CC38
L_8025CBC4:
    psq_l 2, 0x8(30), 0, 0
    psq_l 1, 0x344(30), 0, 0
    .4byte 0xC002D164 # lfs f0, lbl_80540104@sda21(r0)
    ps_add 2, 2, 1
    .4byte 0xC022D124 # lfs f1, lbl_805400C4@sda21(r0)
    psq_st 2, 0x8(30), 0, 0
    psq_l 3, 0x10(30), 1, 0
    psq_l 2, 0x34c(30), 1, 0
    ps_add 2, 3, 2
    psq_st 2, 0x10(30), 1, 0
    lfs 2, 0x34c(30)
    fsubs 0, 2, 0
    stfs 0, 0x34c(30)
    lfs 0, 0x10(30)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x408203A4 # bne .L_8025CFA8
    stfs 1, 0x10(30)
    li 0, 0x3
    lfs 2, 0x348(30)
    lfs 0, 0x344(30)
    stfs 0, 0x368(30)
    stfs 2, 0x36c(30)
    stfs 1, 0x370(30)
    stfs 1, 0x344(30)
    stfs 1, 0x348(30)
    stfs 1, 0x34c(30)
    stb 0, 0x43d(30)
    .4byte 0x48000374 # b .L_8025CFA8
L_8025CC38:
    lbz 3, 0x43d(30)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8025CC50
    subi 0, 3, 0x1
    stb 0, 0x43d(30)
    .4byte 0x4800035C # b .L_8025CFA8
L_8025CC50:
    lwz 3, 0x4(30)
    bl fn_8022C274
    clrlwi. 0, 3, 24
    .4byte 0x418201B0 # beq .L_8025CE0C
    mr 3, 30
    li 4, 0x20
    bl fn_80246B10
    cmplwi 3, 0x0
    .4byte 0x4182008C # beq .L_8025CCFC
    mr 3, 30
    bl fn_80246F28
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x40820028 # bne .L_8025CCAC
    lwz 3, 0xbf0(30)
    lbz 0, 0xb7(3)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8025CCAC
    lfs 0, 0x368(30)
    stfs 0, 0x344(30)
    lfs 0, 0x36c(30)
    stfs 0, 0x348(30)
    .4byte 0x48000038 # b .L_8025CCE0
L_8025CCAC:
    mr 3, 30
    bl fn_80247330
    .4byte 0xC042D1A0 # lfs f2, lbl_80540140@sda21(r0)
    mr 3, 30
    lfs 0, 0x344(30)
    fmadds 0, 2, 1, 0
    stfs 0, 0x344(30)
    bl fn_8024712C
    fneg 2, 1
    .4byte 0xC022D1A0 # lfs f1, lbl_80540140@sda21(r0)
    lfs 0, 0x348(30)
    fmadds 0, 1, 2, 0
    stfs 0, 0x348(30)
L_8025CCE0:
    .4byte 0xC002D1A4 # lfs f0, lbl_80540144@sda21(r0)
    lis 4, 0x1
    mr 3, 30
    stfs 0, 0x34c(30)
    addi 4, 4, 0x2
    bl fn_8024F0E8
    .4byte 0x48000010 # b .L_8025CD08
L_8025CCFC:
    .4byte 0xC022D184 # lfs f1, lbl_80540124@sda21(r0)
    mr 3, 30
    bl fn_802808E8
L_8025CD08:
    lis 3, lbl_80539D44@ha
    li 4, 0x0
    .4byte 0xC042D138 # lfs f2, lbl_805400D8@sda21(r0)
    mr 0, 4
    lfs 0, lbl_80539D44@l(3)
    lfs 1, 0x8(30)
    fmuls 2, 2, 0
    lfs 0, 0x14(30)
    fsubs 0, 1, 0
    fneg 3, 2
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_8025CD4C
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8025CD4C
    li 0, 0x1
L_8025CD4C:
    clrlwi. 0, 0, 24
    .4byte 0x4182003C # beq .L_8025CD8C
    lfs 1, 0xc(30)
    li 0, 0x0
    lfs 0, 0x18(30)
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_8025CD80
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8025CD80
    li 0, 0x1
L_8025CD80:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_8025CD8C
    li 4, 0x1
L_8025CD8C:
    clrlwi. 0, 4, 24
    .4byte 0x41820010 # beq .L_8025CDA0
    li 0, 0x0
    stb 0, 0x3f8(30)
    .4byte 0x48000024 # b .L_8025CDC0
L_8025CDA0:
    lbz 3, 0x3f8(30)
    addi 0, 3, 0x1
    stb 0, 0x3f8(30)
    lbz 0, 0x3f8(30)
    cmplwi 0, 0xe
    .4byte 0x4180000C # blt .L_8025CDC0
    li 0, 0x0
    stb 0, 0x3f8(30)
L_8025CDC0:
    lbz 0, 0x3f8(30)
    cmplwi 0, 0x4
    .4byte 0x40800010 # bge .L_8025CDD8
    li 0, 0x0
    stb 0, 0x3f9(30)
    .4byte 0x480001D4 # b .L_8025CFA8
L_8025CDD8:
    cmplwi 0, 0x8
    .4byte 0x40800010 # bge .L_8025CDEC
    li 0, 0x1
    stb 0, 0x3f9(30)
    .4byte 0x480001C0 # b .L_8025CFA8
L_8025CDEC:
    cmplwi 0, 0xa
    .4byte 0x40800010 # bge .L_8025CE00
    li 0, 0x0
    stb 0, 0x3f9(30)
    .4byte 0x480001AC # b .L_8025CFA8
L_8025CE00:
    li 0, 0x2
    stb 0, 0x3f9(30)
    .4byte 0x480001A0 # b .L_8025CFA8
L_8025CE0C:
    lbz 3, 0x3fa(30)
    mr 29, 30
    li 31, 0x0
    addi 0, 3, 0x1
    stb 0, 0x3fa(30)
L_8025CE20:
    lwz 0, 0xb00(29)
    cmpwi 0, 0x0
    .4byte 0x41800018 # blt .L_8025CE40
    mr 3, 30
    bl fn_802415CC
    cmpwi 3, 0x2
    .4byte 0x40800160 # bge .L_8025CF98
    .4byte 0x4800016C # b .L_8025CFA8
L_8025CE40:
    psq_l 1, 0x8(30), 0, 0
    lfs 0, 0x10(30)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    lwz 0, 0x3dc(30)
    cmpwi 0, 0x2
    .4byte 0x4182005C # beq .L_8025CEB4
    .4byte 0x40800014 # bge .L_8025CE70
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8025CE7C
    .4byte 0x40800028 # bge .L_8025CE90
    .4byte 0x48000048 # b .L_8025CEB4
L_8025CE70:
    cmpwi 0, 0x4
    .4byte 0x40800040 # bge .L_8025CEB4
    .4byte 0x4800002C # b .L_8025CEA4
L_8025CE7C:
    lfs 1, 0xc(1)
    .4byte 0xC002D140 # lfs f0, lbl_805400E0@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(1)
    .4byte 0x48000028 # b .L_8025CEB4
L_8025CE90:
    lfs 1, 0xc(1)
    .4byte 0xC002D140 # lfs f0, lbl_805400E0@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(1)
    .4byte 0x48000014 # b .L_8025CEB4
L_8025CEA4:
    lfs 1, 0x8(1)
    .4byte 0xC002D128 # lfs f0, lbl_805400C8@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x8(1)
L_8025CEB4:
    lbz 0, 0x3fc(30)
    cmplwi 0, 0x30
    .4byte 0x41800044 # blt .L_8025CF00
    lwz 29, 0x4(30)
    bl SpatialRegistry_GetBase
    lwz 0, 0x3dc(30)
    lis 4, 0x4152
    lwz 5, 0x3b4(30)
    clrlwi 7, 29, 30
    mr 9, 29
    addi 4, 4, 0x5257
    addi 6, 1, 0x8
    rlwimi 7, 0, 4, 26, 27
    li 8, -0x1
    bl fn_801F9484
    slwi 0, 31, 2
    add 4, 30, 0
    stw 3, 0xb00(4)
    .4byte 0x48000044 # b .L_8025CF40
L_8025CF00:
    lwz 29, 0x4(30)
    bl SpatialRegistry_GetBase
    lwz 0, 0x3dc(30)
    lis 4, 0x4152
    lwz 5, 0x3b4(30)
    mr 9, 29
    clrlslwi 0, 0, 30, 4
    addi 4, 4, 0x5257
    ori 7, 0, 0x100
    addi 6, 1, 0x8
    li 8, -0x1
    rlwimi 7, 29, 0, 30, 31
    bl fn_801F9484
    slwi 0, 31, 2
    add 4, 30, 0
    stw 3, 0xb00(4)
L_8025CF40:
    slwi 0, 31, 2
    add 5, 30, 0
    lwz 0, 0xb00(5)
    cmpwi 0, 0x0
    .4byte 0x4180003C # blt .L_8025CF8C
    lwz 0, 0x3b4(30)
    lis 4, 0x2
    mr 3, 30
    stw 0, 0xb40(5)
    addi 4, 4, 0x4
    bl fn_8024F0E8
    bl GetSessionFlag_0x6f
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8025CF84
    li 0, 0x3c
    stw 0, 0xb74(30)
    .4byte 0x4800000C # b .L_8025CF8C
L_8025CF84:
    mr 3, 30
    bl Player_IsLinked
L_8025CF8C:
    li 0, 0x0
    stb 0, 0x3fc(30)
    .4byte 0x48000014 # b .L_8025CFA8
L_8025CF98:
    addi 31, 31, 0x1
    addi 29, 29, 0x4
    cmpwi 31, 0x3
    .4byte 0x4180FE7C # blt .L_8025CE20
L_8025CFA8:
    li 0, 0x1
    stb 0, 0x3fb(30)
    .4byte 0x48000030 # b .L_8025CFE0
L_8025CFB4:
    cmplwi 4, 0xa
    .4byte 0x40800018 # bge .L_8025CFD0
    addi 3, 4, 0x1
    li 0, 0x2
    stb 3, 0x3fa(30)
    stb 0, 0x3fb(30)
    .4byte 0x48000014 # b .L_8025CFE0
L_8025CFD0:
    addi 3, 4, 0x1
    li 0, 0x3
    stb 3, 0x3fa(30)
    stb 0, 0x3fb(30)
L_8025CFE0:
    lbz 0, 0x3fa(30)
    cmplwi 0, 0xe
    .4byte 0x4180003C # blt .L_8025D024
    lwz 0, 0xb74(30)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_8025D018
    lwz 3, 0x4(30)
    bl fn_8022C274
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8025D018
    li 0, 0x0
    stb 0, 0x3fa(30)
    stb 0, 0x3fb(30)
    .4byte 0x48000010 # b .L_8025D024
L_8025D018:
    mr 3, 30
    li 4, 0x0
    bl fn_80251AEC
L_8025D024:
    mr 3, 30
    bl fn_80268B3C
    lwz 3, 0x40c(30)
    addi 0, 3, 0x1
    stw 0, 0x40c(30)
    lwz 3, 0x40c(30)
    cmpwi 3, 0x1e
    .4byte 0x40800010 # bge .L_8025D050
    addi 0, 3, 0x1
    stw 0, 0x40c(30)
    .4byte 0x48000020 # b .L_8025D06C
L_8025D050:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x7f4(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8025D06C
    li 0, 0x1
    stb 0, 0x7f5(3)
L_8025D06C:
    psq_l 31, 0x38(1), 0, 0
    lwz 0, 0x44(1)
    lfd 31, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8025D090:
    li 0, 0x0
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    stb 0, 0x458(3)
    stfs 0, 0x344(3)
    stfs 0, 0x348(3)
    stfs 0, 0x34c(3)
    stw 0, 0x40c(3)
    blr

fn_8025D0B0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stfd 31, 0x10(1)
    psq_st 31, 0x18(1), 0, 0
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0xbac(3)
    lfs 31, 0xc(3)
    cmpwi 0, 0x1
    .4byte 0x41800078 # blt .L_8025D150
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_8025D130
    .4byte 0x40800014 # bge .L_8025D0FC
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8025D108
    .4byte 0x40800028 # bge .L_8025D11C
    .4byte 0x4800058C # b .L_8025D684
L_8025D0FC:
    cmpwi 0, 0x4
    .4byte 0x40800584 # bge .L_8025D684
    .4byte 0x4800003C # b .L_8025D140
L_8025D108:
    lfs 1, 0x8(31)
    .4byte 0xC002D15C # lfs f0, lbl_805400FC@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x8(31)
    .4byte 0x4800056C # b .L_8025D684
L_8025D11C:
    lfs 1, 0x8(31)
    .4byte 0xC002D15C # lfs f0, lbl_805400FC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x8(31)
    .4byte 0x48000558 # b .L_8025D684
L_8025D130:
    .4byte 0xC002D15C # lfs f0, lbl_805400FC@sda21(r0)
    fadds 0, 31, 0
    stfs 0, 0xc(31)
    .4byte 0x48000548 # b .L_8025D684
L_8025D140:
    .4byte 0xC002D15C # lfs f0, lbl_805400FC@sda21(r0)
    fsubs 0, 31, 0
    stfs 0, 0xc(31)
    .4byte 0x48000538 # b .L_8025D684
L_8025D150:
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x2
    .4byte 0x418202DC # beq .L_8025D434
    .4byte 0x40800014 # bge .L_8025D170
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8025D17C
    .4byte 0x40800170 # bge .L_8025D2D8
    .4byte 0x48000504 # b .L_8025D670
L_8025D170:
    cmpwi 0, 0x4
    .4byte 0x408004FC # bge .L_8025D670
    .4byte 0x480003DC # b .L_8025D554
L_8025D17C:
    lwz 3, 0x4(31)
    bl fn_8022C82C
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8025D19C
    li 0, 0x1
    stw 0, 0xba8(31)
    .4byte 0x480004D8 # b .L_8025D670
L_8025D19C:
    lwz 3, 0x4(31)
    bl fn_8022C76C
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810080 # ble .L_8025D22C
    lfs 0, 0x8(31)
    .4byte 0xC022D1A8 # lfs f1, lbl_80540148@sda21(r0)
    fadds 0, 0, 1
    stfs 0, 0x8(31)
    lfs 0, 0xc(31)
    fsubs 0, 0, 1
    stfs 0, 0xc(31)
    lwz 3, 0x4(31)
    bl fn_8022C82C
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x40820494 # bne .L_8025D670
    lbz 3, 0x3fc(31)
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x8
    .4byte 0x4081047C # ble .L_8025D670
    lwz 3, 0xbf0(31)
    lbz 0, 0xb4(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8025D214
    li 0, 0x1
    stw 0, 0xba8(31)
    .4byte 0x48000460 # b .L_8025D670
L_8025D214:
    li 3, 0x3
    li 0, 0x0
    stw 3, 0x3dc(31)
    stw 3, 0x3e8(31)
    stb 0, 0x3fc(31)
    .4byte 0x48000448 # b .L_8025D670
L_8025D22C:
    lwz 3, 0x4(31)
    bl fn_8022C76C
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800080 # bge .L_8025D2BC
    lfs 0, 0x8(31)
    .4byte 0xC022D1A8 # lfs f1, lbl_80540148@sda21(r0)
    fadds 0, 0, 1
    stfs 0, 0x8(31)
    lfs 0, 0xc(31)
    fadds 0, 0, 1
    stfs 0, 0xc(31)
    lwz 3, 0x4(31)
    bl fn_8022C82C
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x40820404 # bne .L_8025D670
    lbz 3, 0x3fc(31)
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x8
    .4byte 0x408103EC # ble .L_8025D670
    lwz 3, 0xbf0(31)
    lbz 0, 0xb4(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8025D2A4
    li 0, 0x1
    stw 0, 0xba8(31)
    .4byte 0x480003D0 # b .L_8025D670
L_8025D2A4:
    li 3, 0x2
    li 0, 0x0
    stw 3, 0x3dc(31)
    stw 3, 0x3e8(31)
    stb 0, 0x3fc(31)
    .4byte 0x480003B8 # b .L_8025D670
L_8025D2BC:
    lfs 1, 0x8(31)
    li 0, 0x0
    .4byte 0xC002D15C # lfs f0, lbl_805400FC@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x8(31)
    stb 0, 0x3fc(31)
    .4byte 0x4800039C # b .L_8025D670
L_8025D2D8:
    lwz 3, 0x4(31)
    bl fn_8022C82C
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8025D2F8
    li 0, 0x1
    stw 0, 0xba8(31)
    .4byte 0x4800037C # b .L_8025D670
L_8025D2F8:
    lwz 3, 0x4(31)
    bl fn_8022C76C
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810080 # ble .L_8025D388
    lfs 0, 0x8(31)
    .4byte 0xC022D1A8 # lfs f1, lbl_80540148@sda21(r0)
    fsubs 0, 0, 1
    stfs 0, 0x8(31)
    lfs 0, 0xc(31)
    fsubs 0, 0, 1
    stfs 0, 0xc(31)
    lwz 3, 0x4(31)
    bl fn_8022C82C
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x40820338 # bne .L_8025D670
    lbz 3, 0x3fc(31)
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x8
    .4byte 0x40810320 # ble .L_8025D670
    lwz 3, 0xbf0(31)
    lbz 0, 0xb4(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8025D370
    li 0, 0x1
    stw 0, 0xba8(31)
    .4byte 0x48000304 # b .L_8025D670
L_8025D370:
    li 3, 0x3
    li 0, 0x0
    stw 3, 0x3dc(31)
    stw 3, 0x3e8(31)
    stb 0, 0x3fc(31)
    .4byte 0x480002EC # b .L_8025D670
L_8025D388:
    lwz 3, 0x4(31)
    bl fn_8022C76C
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800080 # bge .L_8025D418
    lfs 0, 0x8(31)
    .4byte 0xC022D1A8 # lfs f1, lbl_80540148@sda21(r0)
    fsubs 0, 0, 1
    stfs 0, 0x8(31)
    lfs 0, 0xc(31)
    fadds 0, 0, 1
    stfs 0, 0xc(31)
    lwz 3, 0x4(31)
    bl fn_8022C82C
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x408202A8 # bne .L_8025D670
    lbz 3, 0x3fc(31)
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x8
    .4byte 0x40810290 # ble .L_8025D670
    lwz 3, 0xbf0(31)
    lbz 0, 0xb4(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8025D400
    li 0, 0x1
    stw 0, 0xba8(31)
    .4byte 0x48000274 # b .L_8025D670
L_8025D400:
    li 3, 0x2
    li 0, 0x0
    stw 3, 0x3dc(31)
    stw 3, 0x3e8(31)
    stb 0, 0x3fc(31)
    .4byte 0x4800025C # b .L_8025D670
L_8025D418:
    lfs 1, 0x8(31)
    li 0, 0x0
    .4byte 0xC002D15C # lfs f0, lbl_805400FC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x8(31)
    stb 0, 0x3fc(31)
    .4byte 0x48000240 # b .L_8025D670
L_8025D434:
    lwz 3, 0x4(31)
    bl fn_8022C76C
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8025D454
    li 0, 0x1
    stw 0, 0xba8(31)
    .4byte 0x48000220 # b .L_8025D670
L_8025D454:
    lwz 3, 0x4(31)
    bl fn_8022C82C
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810060 # ble .L_8025D4C4
    lfs 0, 0x8(31)
    .4byte 0xC022D1A8 # lfs f1, lbl_80540148@sda21(r0)
    fadds 0, 0, 1
    stfs 0, 0x8(31)
    lfs 0, 0xc(31)
    fadds 0, 0, 1
    stfs 0, 0xc(31)
    lwz 3, 0x4(31)
    bl fn_8022C76C
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x408201DC # bne .L_8025D670
    lbz 3, 0x3fc(31)
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x8
    .4byte 0x408101C4 # ble .L_8025D670
    li 0, 0x0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    stb 0, 0x3fc(31)
    .4byte 0x480001B0 # b .L_8025D670
L_8025D4C4:
    lwz 3, 0x4(31)
    bl fn_8022C82C
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800064 # bge .L_8025D538
    lfs 0, 0x8(31)
    .4byte 0xC022D1A8 # lfs f1, lbl_80540148@sda21(r0)
    fsubs 0, 0, 1
    stfs 0, 0x8(31)
    lfs 0, 0xc(31)
    fadds 0, 0, 1
    stfs 0, 0xc(31)
    lwz 3, 0x4(31)
    bl fn_8022C76C
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x4082016C # bne .L_8025D670
    lbz 3, 0x3fc(31)
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x8
    .4byte 0x40810154 # ble .L_8025D670
    li 3, 0x1
    li 0, 0x0
    stw 3, 0x3dc(31)
    stw 3, 0x3e8(31)
    stb 0, 0x3fc(31)
    .4byte 0x4800013C # b .L_8025D670
L_8025D538:
    lfs 1, 0xc(31)
    li 0, 0x0
    .4byte 0xC002D15C # lfs f0, lbl_805400FC@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(31)
    stb 0, 0x3fc(31)
    .4byte 0x48000120 # b .L_8025D670
L_8025D554:
    lwz 3, 0x4(31)
    bl fn_8022C76C
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8025D574
    li 0, 0x1
    stw 0, 0xba8(31)
    .4byte 0x48000100 # b .L_8025D670
L_8025D574:
    lwz 3, 0x4(31)
    bl fn_8022C82C
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810060 # ble .L_8025D5E4
    lfs 0, 0x8(31)
    .4byte 0xC022D1A8 # lfs f1, lbl_80540148@sda21(r0)
    fadds 0, 0, 1
    stfs 0, 0x8(31)
    lfs 0, 0xc(31)
    fsubs 0, 0, 1
    stfs 0, 0xc(31)
    lwz 3, 0x4(31)
    bl fn_8022C76C
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x408200BC # bne .L_8025D670
    lbz 3, 0x3fc(31)
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x8
    .4byte 0x408100A4 # ble .L_8025D670
    li 0, 0x0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    stb 0, 0x3fc(31)
    .4byte 0x48000090 # b .L_8025D670
L_8025D5E4:
    lwz 3, 0x4(31)
    bl fn_8022C82C
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800064 # bge .L_8025D658
    lfs 0, 0x8(31)
    .4byte 0xC022D1A8 # lfs f1, lbl_80540148@sda21(r0)
    fsubs 0, 0, 1
    stfs 0, 0x8(31)
    lfs 0, 0xc(31)
    fsubs 0, 0, 1
    stfs 0, 0xc(31)
    lwz 3, 0x4(31)
    bl fn_8022C76C
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x4082004C # bne .L_8025D670
    lbz 3, 0x3fc(31)
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x8
    .4byte 0x40810034 # ble .L_8025D670
    li 3, 0x1
    li 0, 0x0
    stw 3, 0x3dc(31)
    stw 3, 0x3e8(31)
    stb 0, 0x3fc(31)
    .4byte 0x4800001C # b .L_8025D670
L_8025D658:
    lfs 1, 0xc(31)
    li 0, 0x0
    .4byte 0xC002D15C # lfs f0, lbl_805400FC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(31)
    stb 0, 0x3fc(31)
L_8025D670:
    lwz 3, 0xbf0(31)
    lbz 0, 0xb4(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8025D684
    stfs 31, 0xc(31)
L_8025D684:
    psq_l 31, 0x18(1), 0, 0
    lwz 0, 0x24(1)
    lfd 31, 0x10(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8025D6A0:
    li 0, 0x0
    stb 0, 0xb9c(3)
    blr

fn_8025D6AC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 0, 0x3fc(3)
    cmplwi 0, 0x4
    .4byte 0x40800010 # bge .L_8025D6D8
    li 0, 0x0
    stb 0, 0x3fd(31)
    .4byte 0x48000034 # b .L_8025D708
L_8025D6D8:
    cmplwi 0, 0x8
    .4byte 0x40800010 # bge .L_8025D6EC
    li 0, 0x1
    stb 0, 0x3fd(31)
    .4byte 0x48000020 # b .L_8025D708
L_8025D6EC:
    cmplwi 0, 0xc
    .4byte 0x40800010 # bge .L_8025D700
    li 0, 0x2
    stb 0, 0x3fd(31)
    .4byte 0x4800000C # b .L_8025D708
L_8025D700:
    li 0, 0x3
    stb 0, 0x3fd(31)
L_8025D708:
    lbz 3, 0x3fc(31)
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x2
    .4byte 0x4082000C # bne .L_8025D728
    li 0, 0x0
    stb 0, 0xb9c(31)
L_8025D728:
    psq_l 2, 0x8(31), 0, 0
    psq_l 0, 0x344(31), 0, 0
    .4byte 0xC022D164 # lfs f1, lbl_80540104@sda21(r0)
    ps_add 2, 2, 0
    .4byte 0xC002D168 # lfs f0, lbl_80540108@sda21(r0)
    psq_st 2, 0x8(31), 0, 0
    psq_l 3, 0x10(31), 1, 0
    psq_l 2, 0x34c(31), 1, 0
    ps_add 2, 3, 2
    psq_st 2, 0x10(31), 1, 0
    lfs 2, 0x34c(31)
    fsubs 1, 2, 1
    stfs 1, 0x34c(31)
    lfs 1, 0x34c(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8025D76C
    stfs 0, 0x34c(31)
L_8025D76C:
    lfs 0, 0x34c(31)
    .4byte 0xC022D124 # lfs f1, lbl_805400C4@sda21(r0)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x4082002C # bne .L_8025D7A8
    lfs 0, 0x10(31)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x4082001C # bne .L_8025D7A8
    stfs 1, 0x10(31)
    li 0, 0x0
    mr 3, 31
    li 4, 0x0
    stb 0, 0x124d(31)
    bl fn_80251AEC
L_8025D7A8:
    mr 3, 31
    bl fn_80268B3C
    mr 3, 31
    li 4, 0x1
    bl fn_8025197C
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8025D7D0
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    stfs 0, 0x344(31)
    stfs 0, 0x348(31)
L_8025D7D0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8025D7E4:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    mr 31, 3
    li 0, 0x1
    stb 0, 0x124d(3)
    li 0, 0x0
    lis 5, lbl_8046AFE0@ha
    lis 4, 0x2
    stb 0, 0x458(3)
    addi 0, 5, lbl_8046AFE0@l
    addi 4, 4, 0x10
    lwz 5, 0x3dc(3)
    mulli 5, 5, 0xc
    add 5, 0, 5
    lfs 0, 0x0(5)
    lfs 1, 0x4(5)
    stfs 0, 0x344(3)
    lfs 0, 0x8(5)
    stfs 1, 0x348(3)
    stfs 0, 0x34c(3)
    bl fn_8024F0E8
    .4byte 0xC022D124 # lfs f1, lbl_805400C4@sda21(r0)
    lfs 0, 0x348(31)
    fcmpu cr0, 1, 0
    .4byte 0x41820020 # beq .L_8025D874
    bl GetRoomConfigRecord
    lwz 4, 0x3b4(31)
    li 5, 0x0
    .4byte 0xC022D140 # lfs f1, lbl_805400E0@sda21(r0)
    .4byte 0xC042D124 # lfs f2, lbl_805400C4@sda21(r0)
    bl fn_802D79E8
    .4byte 0x4800001C # b .L_8025D88C
L_8025D874:
    bl GetRoomConfigRecord
    lwz 4, 0x3b4(31)
    li 5, 0x0
    .4byte 0xC022D124 # lfs f1, lbl_805400C4@sda21(r0)
    .4byte 0xC042D140 # lfs f2, lbl_805400E0@sda21(r0)
    bl fn_802D79E8
L_8025D88C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1
    li 5, 0x0
    bl fn_80134DE4
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8025D8B0
    cmpwi 0, 0x1
    .4byte 0x4082001C # bne .L_8025D8C8
L_8025D8B0:
    .4byte 0xC022D124 # lfs f1, lbl_805400C4@sda21(r0)
    .4byte 0xC002D190 # lfs f0, lbl_80540130@sda21(r0)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    stfs 1, 0x34(1)
    .4byte 0x48000014 # b .L_8025D8D8
L_8025D8C8:
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    stfs 0, 0x34(1)
    stfs 0, 0x30(1)
    stfs 0, 0x2c(1)
L_8025D8D8:
    lfs 1, 0x348(31)
    lis 3, lbl_80539D44@ha
    lfs 0, 0x344(31)
    fneg 4, 1
    .4byte 0xC042D124 # lfs f2, lbl_805400C4@sda21(r0)
    fneg 3, 0
    .4byte 0xC022D138 # lfs f1, lbl_805400D8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    stfs 4, 0x24(1)
    fmuls 0, 1, 0
    stfs 3, 0x20(1)
    psq_l 1, 0x20(1), 0, 0
    stfs 2, 0x28(1)
    ps_mul 1, 1, 1
    ps_madd 4, 2, 2, 1
    ps_sum0 4, 4, 1, 1
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820054 # beq .L_8025D974
    fcmpo cr0, 4, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8025D938
    fmr 31, 4
    .4byte 0x48000028 # b .L_8025D95C
L_8025D938:
    frsqrte 3, 4
    .4byte 0xC042D120 # lfs f2, lbl_805400C0@sda21(r0)
    .4byte 0xC002D15C # lfs f0, lbl_805400FC@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 31, 0
L_8025D95C:
    psq_l 1, 0x20(1), 0, 0
    psq_l 0, 0x28(1), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x20(1), 0, 0
    psq_st 0, 0x28(1), 1, 0
L_8025D974:
    lfs 0, 0x10(31)
    addi 4, 1, 0x14
    psq_l 1, 0x8(31), 0, 0
    stfs 0, 0x10(1)
    psq_l 3, 0x2c(1), 0, 0
    psq_l 2, 0x10(1), 1, 0
    psq_l 0, 0x34(1), 1, 0
    ps_add 3, 1, 3
    psq_st 1, 0x8(1), 0, 0
    ps_add 0, 2, 0
    psq_st 3, 0x0(4), 0, 0
    psq_st 0, 0x10(1), 1, 0
    lfs 0, 0x10(1)
    psq_st 3, 0x8(1), 0, 0
    stfs 0, 0x1c(1)
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x40800020 # bge .L_8025D9D8
    .4byte 0xC022D134 # lfs f1, lbl_805400D4@sda21(r0)
    addi 6, 1, 0x20
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 5, 0x3
    fmr 2, 1
    lwz 3, 0x20(3)
    bl fn_802F601C
L_8025D9D8:
    li 0, 0x1
    stb 0, 0xb9c(31)
    psq_l 31, 0x48(1), 0, 0
    lwz 0, 0x54(1)
    lfd 31, 0x40(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8025D9FC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 5, 0x1360(3)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8025DA38
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x1360(31)
L_8025DA38:
    lwz 5, 0x1368(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8025DA60
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x1368(31)
L_8025DA60:
    lwz 5, 0x1364(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8025DA88
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x1364(31)
L_8025DA88:
    lwz 0, 0xbac(31)
    cmpwi 0, 0x0
    .4byte 0x41810014 # bgt .L_8025DAA4
    mr 3, 31
    bl fn_8026FC20
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8025DAAC
L_8025DAA4:
    li 0, 0x0
    stb 0, 0xce8(31)
L_8025DAAC:
    li 0, 0x0
    stw 0, 0xbac(31)
    stw 0, 0xba8(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8025DACC:
    stwu 1, -0x100(1)
    mflr 0
    stw 0, 0x104(1)
    stfd 31, 0xf0(1)
    psq_st 31, 0xf8(1), 0, 0
    stfd 30, 0xe0(1)
    psq_st 30, 0xe8(1), 0, 0
    stfd 29, 0xd0(1)
    psq_st 29, 0xd8(1), 0, 0
    stfd 28, 0xc0(1)
    psq_st 28, 0xc8(1), 0, 0
    stfd 27, 0xb0(1)
    psq_st 27, 0xb8(1), 0, 0
    stmw 27, 0x9c(1)
    lis 4, lbl_8046AF00@ha
    mr 28, 3
    addi 31, 4, lbl_8046AF00@l
    bl fn_80276E5C
    mr 3, 28
    bl fn_802709C8
    lwz 29, 0x3b4(28)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_8025DB6C
    mr 3, 28
    addi 5, 1, 0x84
    li 4, 0x2
    bl fn_8024B298
    lfs 1, 0x88(1)
    addi 3, 1, 0x84
    .4byte 0xC002D128 # lfs f0, lbl_805400C8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x88(1)
    lwz 4, 0x3b4(28)
    bl fn_8022461C
    mr 30, 3
    .4byte 0x48000014 # b .L_8025DB7C
L_8025DB6C:
    lwz 4, 0x3b4(28)
    addi 3, 28, 0x8
    bl fn_8022461C
    mr 30, 3
L_8025DB7C:
    clrlwi 0, 30, 16
    cmplwi 0, 0x39
    .4byte 0x408200A8 # bne .L_8025DC2C
    lwz 3, 0x1368(28)
    cmplwi 3, 0x0
    .4byte 0x40820034 # bne .L_8025DBC4
    lwz 3, 0x3b4(28)
    addi 4, 28, 0x8
    .4byte 0xC022D134 # lfs f1, lbl_805400D4@sda21(r0)
    addi 8, 28, 0x13a8
    li 5, 0x3d4
    li 6, 0x0
    li 7, -0x1
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x1368(28)
    .4byte 0x48000018 # b .L_8025DBD8
L_8025DBC4:
    addi 4, 28, 0x8
    li 5, 0x0
    li 6, -0x1
    li 7, 0x1
    bl fn_8013CB44
L_8025DBD8:
    lwz 5, 0x1360(28)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8025DC00
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x1360(28)
L_8025DC00:
    lwz 5, 0x1364(28)
    cmplwi 5, 0x0
    .4byte 0x418201DC # beq .L_8025DDE4
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x1364(28)
    .4byte 0x480001BC # b .L_8025DDE4
L_8025DC2C:
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_8025DC3C
    cmplwi 0, 0x3
    .4byte 0x408200A8 # bne .L_8025DCE0
L_8025DC3C:
    lwz 3, 0x1360(28)
    cmplwi 3, 0x0
    .4byte 0x40820034 # bne .L_8025DC78
    lwz 3, 0x3b4(28)
    addi 4, 28, 0x8
    .4byte 0xC022D134 # lfs f1, lbl_805400D4@sda21(r0)
    addi 8, 28, 0x1398
    li 5, 0x116
    li 6, 0x0
    li 7, -0x1
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x1360(28)
    .4byte 0x48000018 # b .L_8025DC8C
L_8025DC78:
    addi 4, 28, 0x8
    li 5, 0x0
    li 6, -0x1
    li 7, 0x1
    bl fn_8013CB44
L_8025DC8C:
    lwz 5, 0x1364(28)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8025DCB4
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x1364(28)
L_8025DCB4:
    lwz 5, 0x1368(28)
    cmplwi 5, 0x0
    .4byte 0x41820128 # beq .L_8025DDE4
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x1368(28)
    .4byte 0x48000108 # b .L_8025DDE4
L_8025DCE0:
    lwz 3, 0x1360(28)
    cmplwi 3, 0x0
    .4byte 0x40820034 # bne .L_8025DD1C
    lwz 3, 0x3b4(28)
    addi 4, 28, 0x8
    .4byte 0xC022D134 # lfs f1, lbl_805400D4@sda21(r0)
    addi 8, 28, 0x1398
    li 5, 0x116
    li 6, 0x0
    li 7, -0x1
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x1360(28)
    .4byte 0x48000018 # b .L_8025DD30
L_8025DD1C:
    addi 4, 28, 0x8
    li 5, 0x0
    li 6, -0x1
    li 7, 0x1
    bl fn_8013CB44
L_8025DD30:
    mr 3, 28
    bl fn_8026FC20
    cmpwi 3, 0x2
    .4byte 0x40820030 # bne .L_8025DD6C
    lwz 5, 0x1364(28)
    cmplwi 5, 0x0
    .4byte 0x41820074 # beq .L_8025DDBC
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x1364(28)
    .4byte 0x48000054 # b .L_8025DDBC
L_8025DD6C:
    lwz 3, 0x1364(28)
    cmplwi 3, 0x0
    .4byte 0x40820034 # bne .L_8025DDA8
    lwz 3, 0x3b4(28)
    addi 4, 28, 0x8
    .4byte 0xC022D134 # lfs f1, lbl_805400D4@sda21(r0)
    li 5, 0x115
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x1364(28)
    .4byte 0x48000018 # b .L_8025DDBC
L_8025DDA8:
    addi 4, 28, 0x8
    li 5, 0x0
    li 6, -0x1
    li 7, 0x1
    bl fn_8013CB44
L_8025DDBC:
    lwz 5, 0x1368(28)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8025DDE4
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x1368(28)
L_8025DDE4:
    mr 3, 28
    bl fn_802415CC
    cmpwi 3, 0x2
    .4byte 0x41800440 # blt .L_8025E230
    lwz 29, 0x3b4(28)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x40820424 # bne .L_8025E230
    mr 3, 28
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x41820098 # beq .L_8025DEB4
    mr 3, 28
    bl Player_GetLinkTargetIndex
    bl fn_8023A1A4
    cmpwi 3, 0x0
    .4byte 0x40810038 # ble .L_8025DE68
    lwz 4, 0xbac(28)
    cmpwi 4, 0x0
    .4byte 0x40820020 # bne .L_8025DE5C
    lbz 0, 0xce8(28)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_8025DE5C
    li 0, 0x1
    stb 0, 0xce8(28)
    stw 3, 0xbac(28)
    .4byte 0x48000010 # b .L_8025DE68
L_8025DE5C:
    cmpwi 4, 0x0
    .4byte 0x40810008 # ble .L_8025DE68
    stw 3, 0xbac(28)
L_8025DE68:
    mr 3, 28
    bl fn_8026FC20
    cmpwi 3, 0x4
    .4byte 0x408203BC # bne .L_8025E230
    lwz 0, 0xba8(28)
    cmpwi 0, 0x0
    .4byte 0x408203B0 # bne .L_8025E230
    li 0, 0x1
    mr 3, 28
    stw 0, 0xba8(28)
    bl Player_GetLinkTargetIndex
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0x8(28)
    lfs 0, 0x4(3)
    stfs 0, 0xc(28)
    lfs 0, 0x8(3)
    stfs 0, 0x10(28)
    .4byte 0x48000380 # b .L_8025E230
L_8025DEB4:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    li 3, 0x1
    lwz 0, 0x4(28)
    lbz 4, 0x82(4)
    slw 0, 3, 0
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x41820328 # beq .L_8025E1F8
    lwz 3, 0xbf0(28)
    lbz 0, 0xb8(3)
    cmplwi 0, 0x0
    .4byte 0x41820318 # beq .L_8025E1F8
    lbz 0, 0xce8(28)
    cmplwi 0, 0x0
    .4byte 0x408201F8 # bne .L_8025E0E4
    lwz 0, 0xbac(28)
    cmpwi 0, 0x0
    .4byte 0x408201EC # bne .L_8025E0E4
    psq_l 1, 0x8(28), 0, 0
    li 29, 0x0
    lfs 0, 0x10(28)
    psq_st 1, 0x78(1), 0, 0
    stfs 0, 0x80(1)
    lwz 27, 0x3b4(28)
    bl GetRoomConfigRecord
    cmpwi 27, 0x8
    .4byte 0x4080000C # bge .L_8025DF28
    addi 6, 3, 0xcc
    .4byte 0x48000008 # b .L_8025DF2C
L_8025DF28:
    addi 6, 3, 0xdc
L_8025DF2C:
    lwz 5, 0x0(6)
    lwz 4, 0x4(6)
    lwz 3, 0x8(6)
    lwz 0, 0xc(6)
    stw 5, 0x68(1)
    .4byte 0xC062D18C # lfs f3, lbl_8054012C@sda21(r0)
    stw 4, 0x6c(1)
    lfs 0, 0x68(1)
    stw 3, 0x70(1)
    fsubs 2, 0, 3
    lfs 0, 0x6c(1)
    stw 0, 0x74(1)
    lfs 1, 0x70(1)
    fsubs 30, 0, 3
    lfs 0, 0x74(1)
    fadds 31, 1, 3
    stfs 2, 0x68(1)
    fadds 27, 0, 3
    frsp 28, 2
    stfs 30, 0x6c(1)
    stfs 31, 0x70(1)
    stfs 27, 0x74(1)
L_8025DF84:
    lwz 0, 0x3dc(28)
    cmpwi 0, 0x2
    .4byte 0x41820084 # beq .L_8025E010
    .4byte 0x40800014 # bge .L_8025DFA4
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8025DFB0
    .4byte 0x40800044 # bge .L_8025DFE0
    .4byte 0x480000CC # b .L_8025E06C
L_8025DFA4:
    cmpwi 0, 0x4
    .4byte 0x408000C4 # bge .L_8025E06C
    .4byte 0x48000094 # b .L_8025E040
L_8025DFB0:
    lfs 1, 0x78(1)
    addi 3, 1, 0x78
    .4byte 0xC002D13C # lfs f0, lbl_805400DC@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x78(1)
    lwz 4, 0x3b4(28)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x12
    .4byte 0x40820098 # bne .L_8025E06C
    li 29, 0x1
    .4byte 0x48000090 # b .L_8025E06C
L_8025DFE0:
    lfs 1, 0x78(1)
    addi 3, 1, 0x78
    .4byte 0xC002D13C # lfs f0, lbl_805400DC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x78(1)
    lwz 4, 0x3b4(28)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x13
    .4byte 0x40820068 # bne .L_8025E06C
    li 29, 0x1
    .4byte 0x48000060 # b .L_8025E06C
L_8025E010:
    lfs 1, 0x7c(1)
    addi 3, 1, 0x78
    .4byte 0xC002D13C # lfs f0, lbl_805400DC@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x7c(1)
    lwz 4, 0x3b4(28)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x10
    .4byte 0x40820038 # bne .L_8025E06C
    li 29, 0x1
    .4byte 0x48000030 # b .L_8025E06C
L_8025E040:
    lfs 1, 0x7c(1)
    addi 3, 1, 0x78
    .4byte 0xC002D13C # lfs f0, lbl_805400DC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x7c(1)
    lwz 4, 0x3b4(28)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x11
    .4byte 0x40820008 # bne .L_8025E06C
    li 29, 0x1
L_8025E06C:
    clrlwi. 0, 29, 24
    .4byte 0x40820044 # bne .L_8025E0B4
    lfs 1, 0x78(1)
    li 0, 0x0
    fcmpo cr0, 1, 28
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_8025E0AC
    lfs 0, 0x7c(1)
    fcmpo cr0, 0, 30
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_8025E0AC
    fcmpo cr0, 1, 31
    .4byte 0x40800010 # bge .L_8025E0AC
    fcmpo cr0, 0, 27
    .4byte 0x40800008 # bge .L_8025E0AC
    li 0, 0x1
L_8025E0AC:
    clrlwi. 0, 0, 24
    .4byte 0x4082FED4 # bne .L_8025DF84
L_8025E0B4:
    clrlwi. 0, 29, 24
    .4byte 0x41820178 # beq .L_8025E230
    li 0, 0x1
    mr 3, 28
    stb 0, 0xce8(28)
    li 4, 0x5
    li 5, 0x1
    bl fn_80248004
    lwz 3, 0xbac(28)
    addi 0, 3, 0x1
    stw 0, 0xbac(28)
    .4byte 0x48000150 # b .L_8025E230
L_8025E0E4:
    lwz 0, 0xbac(28)
    cmpwi 0, 0x2
    .4byte 0x40820144 # bne .L_8025E230
    psq_l 1, 0x8(28), 0, 0
    addi 3, 1, 0x5c
    lfs 0, 0x10(28)
    li 27, 0x0
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0x64(1)
    lwz 0, 0x3dc(28)
    cmpwi 0, 0x2
    .4byte 0x4182007C # beq .L_8025E18C
    .4byte 0x40800014 # bge .L_8025E128
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8025E134
    .4byte 0x40800040 # bge .L_8025E160
    .4byte 0x480000BC # b .L_8025E1E0
L_8025E128:
    cmpwi 0, 0x4
    .4byte 0x408000B4 # bge .L_8025E1E0
    .4byte 0x48000088 # b .L_8025E1B8
L_8025E134:
    lfs 1, 0x5c(1)
    .4byte 0xC002D13C # lfs f0, lbl_805400DC@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x5c(1)
    lwz 4, 0x3b4(28)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x12
    .4byte 0x4082008C # bne .L_8025E1E0
    li 27, 0x1
    .4byte 0x48000084 # b .L_8025E1E0
L_8025E160:
    lfs 1, 0x5c(1)
    .4byte 0xC002D13C # lfs f0, lbl_805400DC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x5c(1)
    lwz 4, 0x3b4(28)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x13
    .4byte 0x40820060 # bne .L_8025E1E0
    li 27, 0x1
    .4byte 0x48000058 # b .L_8025E1E0
L_8025E18C:
    lfs 1, 0x60(1)
    .4byte 0xC002D13C # lfs f0, lbl_805400DC@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x60(1)
    lwz 4, 0x3b4(28)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x10
    .4byte 0x40820034 # bne .L_8025E1E0
    li 27, 0x1
    .4byte 0x4800002C # b .L_8025E1E0
L_8025E1B8:
    lfs 1, 0x60(1)
    .4byte 0xC002D13C # lfs f0, lbl_805400DC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x60(1)
    lwz 4, 0x3b4(28)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x11
    .4byte 0x40820008 # bne .L_8025E1E0
    li 27, 0x1
L_8025E1E0:
    clrlwi. 0, 27, 24
    .4byte 0x4182004C # beq .L_8025E230
    lwz 3, 0xbac(28)
    addi 0, 3, 0x1
    stw 0, 0xbac(28)
    .4byte 0x4800003C # b .L_8025E230
L_8025E1F8:
    lwz 3, 0xbac(28)
    cmpwi 3, 0x1
    .4byte 0x40820010 # bne .L_8025E210
    addi 0, 3, 0x1
    stw 0, 0xbac(28)
    .4byte 0x48000024 # b .L_8025E230
L_8025E210:
    cmpwi 3, 0x3
    .4byte 0x4082001C # bne .L_8025E230
    addi 0, 3, 0x1
    li 3, 0x1
    stw 0, 0xbac(28)
    li 0, 0x0
    stw 3, 0xba8(28)
    stb 0, 0xce8(28)
L_8025E230:
    mr 3, 28
    bl fn_8024BAEC
    lbz 0, 0x3fa(28)
    cmplwi 0, 0xa
    .4byte 0x408000E8 # bge .L_8025E328
    clrlwi 0, 30, 16
    cmplwi 0, 0x39
    .4byte 0x4182000C # beq .L_8025E258
    cmplwi 0, 0xd
    .4byte 0x40820018 # bne .L_8025E26C
L_8025E258:
    lis 4, 0x2
    mr 3, 28
    addi 4, 4, 0x5a
    bl fn_8024F0E8
    .4byte 0x48000064 # b .L_8025E2CC
L_8025E26C:
    lwz 4, 0x3b4(28)
    addi 3, 28, 0x8
    bl fn_80224B88
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8025E294
    lis 4, 0x2
    mr 3, 28
    addi 4, 4, 0x5b
    bl fn_8024F0E8
    .4byte 0x4800003C # b .L_8025E2CC
L_8025E294:
    lwz 4, 0x3b4(28)
    addi 3, 28, 0x8
    bl fn_80224E88
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8025E2BC
    lis 4, 0x2
    mr 3, 28
    addi 4, 4, 0x5e
    bl fn_8024F0E8
    .4byte 0x48000014 # b .L_8025E2CC
L_8025E2BC:
    lis 4, 0x2
    mr 3, 28
    addi 4, 4, 0x30
    bl fn_8024F0E8
L_8025E2CC:
    lbz 3, 0x3fa(28)
    li 4, 0x0
    addi 0, 3, 0x1
    stb 0, 0x3fa(28)
    stb 4, 0x3fb(28)
    lbz 3, 0x3f8(28)
    addi 0, 3, 0x1
    stb 0, 0x3f8(28)
    lbz 0, 0x3f8(28)
    cmplwi 0, 0x10
    .4byte 0x41800008 # blt .L_8025E2FC
    stb 4, 0x3f8(28)
L_8025E2FC:
    lbz 0, 0x3f8(28)
    extrwi 0, 0, 8, 23
    stb 0, 0x3f9(28)
    lwz 3, 0x4(28)
    bl fn_8022C274
    clrlwi. 0, 3, 24
    .4byte 0x40820294 # bne .L_8025E5A8
    mr 3, 28
    li 4, 0x0
    bl fn_80251AEC
    .4byte 0x48000284 # b .L_8025E5A8
L_8025E328:
    lwz 3, 0xba8(28)
    cmpwi 3, 0x0
    .4byte 0x4181002C # bgt .L_8025E35C
    lwz 0, 0xbac(28)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_8025E37C
    lwz 3, 0x4(28)
    bl fn_8022C274
    clrlwi. 0, 3, 24
    .4byte 0x40820030 # bne .L_8025E37C
    li 0, 0x1
    stw 0, 0xba8(28)
    .4byte 0x48000024 # b .L_8025E37C
L_8025E35C:
    subi 0, 3, 0x1
    stw 0, 0xba8(28)
    lwz 0, 0xba8(28)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_8025E37C
    mr 3, 28
    li 4, 0x0
    bl fn_80251AEC
L_8025E37C:
    lwz 4, 0x3b4(28)
    addi 3, 28, 0x8
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x39
    .4byte 0x4182000C # beq .L_8025E39C
    cmplwi 0, 0xd
    .4byte 0x40820018 # bne .L_8025E3B0
L_8025E39C:
    lis 4, 0x2
    mr 3, 28
    addi 4, 4, 0x52
    bl fn_8024F0E8
    .4byte 0x48000064 # b .L_8025E410
L_8025E3B0:
    lwz 4, 0x3b4(28)
    addi 3, 28, 0x8
    bl fn_80224B88
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8025E3D8
    lis 4, 0x2
    mr 3, 28
    addi 4, 4, 0x58
    bl fn_8024F0E8
    .4byte 0x4800003C # b .L_8025E410
L_8025E3D8:
    lwz 4, 0x3b4(28)
    addi 3, 28, 0x8
    bl fn_80224E88
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8025E400
    lis 4, 0x2
    mr 3, 28
    addi 4, 4, 0x5d
    bl fn_8024F0E8
    .4byte 0x48000014 # b .L_8025E410
L_8025E400:
    lis 4, 0x2
    mr 3, 28
    addi 4, 4, 0x51
    bl fn_8024F0E8
L_8025E410:
    li 0, 0x1
    stb 0, 0x3fb(28)
    lbz 3, 0x3f8(28)
    addi 0, 3, 0x1
    stb 0, 0x3f8(28)
    lbz 0, 0x3f8(28)
    cmplwi 0, 0x10
    .4byte 0x4180000C # blt .L_8025E438
    li 0, 0x0
    stb 0, 0x3f8(28)
L_8025E438:
    lwz 5, 0x3dc(28)
    addi 4, 31, 0x30
    lbz 0, 0x3f8(28)
    mr 3, 28
    slwi 5, 5, 3
    srwi 0, 0, 1
    add 0, 5, 0
    lbzx 0, 4, 0
    stb 0, 0x3f9(28)
    bl fn_8025D0B0
    lfs 0, 0x10(28)
    lis 3, lbl_80539D44@ha
    psq_l 1, 0x8(28), 0, 0
    stfs 0, 0x1c(1)
    psq_l 3, 0x14(28), 0, 0
    psq_l 2, 0x1c(1), 1, 0
    psq_l 0, 0x1c(28), 1, 0
    ps_sub 5, 1, 3
    psq_st 1, 0x14(1), 0, 0
    ps_sub 3, 2, 0
    .4byte 0xC022D138 # lfs f1, lbl_805400D8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_mul 2, 5, 5
    psq_st 5, 0x14(1), 0, 0
    fmuls 0, 1, 0
    psq_st 3, 0x1c(1), 1, 0
    lfs 3, 0x1c(1)
    psq_st 5, 0x2c(1), 0, 0
    frsp 1, 3
    stfs 3, 0x34(1)
    ps_madd 4, 1, 1, 2
    psq_st 5, 0x50(1), 0, 0
    stfs 3, 0x58(1)
    ps_sum0 4, 4, 2, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_8025E520
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8025E4E4
    fmr 29, 4
    .4byte 0x48000028 # b .L_8025E508
L_8025E4E4:
    frsqrte 3, 4
    .4byte 0xC042D120 # lfs f2, lbl_805400C0@sda21(r0)
    .4byte 0xC002D15C # lfs f0, lbl_805400FC@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 29, 0
L_8025E508:
    psq_l 1, 0x50(1), 0, 0
    psq_l 0, 0x58(1), 1, 0
    ps_muls0 1, 1, 29
    ps_muls0 0, 0, 29
    psq_st 1, 0x50(1), 0, 0
    psq_st 0, 0x58(1), 1, 0
L_8025E520:
    addi 27, 31, 0x50
    addi 29, 1, 0x20
    li 30, 0x0
L_8025E52C:
    lfs 0, 0x8(27)
    mr 4, 29
    lfs 2, 0x10(28)
    li 7, 0x0
    stfs 0, 0x4c(1)
    li 8, 0x1
    lfs 1, 0x0(27)
    stfs 2, 0x10(1)
    lfs 0, 0x4(27)
    psq_l 4, 0x10(1), 1, 0
    psq_l 3, 0x4c(1), 1, 0
    psq_l 2, 0x8(28), 0, 0
    ps_add 3, 4, 3
    stfs 1, 0x44(1)
    lwz 6, 0x3b4(28)
    stfs 0, 0x48(1)
    lwz 5, 0x4(28)
    psq_l 0, 0x44(1), 0, 0
    psq_st 3, 0x10(1), 1, 0
    ps_add 1, 2, 0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    psq_st 2, 0x8(1), 0, 0
    lfs 0, 0x10(1)
    psq_st 1, 0x8(1), 0, 0
    psq_st 1, 0x0(29), 0, 0
    stfs 0, 0x28(1)
    bl fn_802A20F0
    addi 30, 30, 0x1
    addi 27, 27, 0xc
    cmpwi 30, 0x8
    .4byte 0x4180FF88 # blt .L_8025E52C
L_8025E5A8:
    mr 3, 28
    bl fn_80268B3C
    lbz 0, 0x3fa(28)
    cmplwi 0, 0xa
    .4byte 0x418000D0 # blt .L_8025E688
    lwz 27, 0x3b4(28)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 27
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_8025E5E8
    lwz 3, 0xbf0(28)
    lbz 0, 0xb8(3)
    cmplwi 0, 0x0
    .4byte 0x408200A4 # bne .L_8025E688
L_8025E5E8:
    lwz 0, 0x3dc(28)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_8025E614
    lwz 3, 0xbf0(28)
    lbz 0, 0x48(3)
    cmplwi 0, 0x0
    .4byte 0x41820088 # beq .L_8025E688
    mr 3, 28
    li 4, 0x41
    bl fn_80251AEC
    .4byte 0x48000078 # b .L_8025E688
L_8025E614:
    cmpwi 0, 0x1
    .4byte 0x40820024 # bne .L_8025E63C
    lwz 3, 0xbf0(28)
    lbz 0, 0x49(3)
    cmplwi 0, 0x0
    .4byte 0x41820060 # beq .L_8025E688
    mr 3, 28
    li 4, 0x41
    bl fn_80251AEC
    .4byte 0x48000050 # b .L_8025E688
L_8025E63C:
    cmpwi 0, 0x2
    .4byte 0x40820024 # bne .L_8025E664
    lwz 3, 0xbf0(28)
    lbz 0, 0x4a(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_8025E688
    mr 3, 28
    li 4, 0x41
    bl fn_80251AEC
    .4byte 0x48000028 # b .L_8025E688
L_8025E664:
    cmpwi 0, 0x3
    .4byte 0x40820020 # bne .L_8025E688
    lwz 3, 0xbf0(28)
    lbz 0, 0x4b(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8025E688
    mr 3, 28
    li 4, 0x41
    bl fn_80251AEC
L_8025E688:
    li 27, 0x0
L_8025E68C:
    lwz 3, 0x4(28)
    mr 4, 27
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_8025E6BC
    mr 3, 27
    bl fn_802350A0
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8025E6BC
    mr 3, 28
    li 4, 0x41
    bl fn_80251AEC
L_8025E6BC:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFC8 # blt .L_8025E68C
    mr 3, 28
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_8025E6F8
    mr 3, 28
    bl Player_GetLinkTargetIndex
    bl fn_802350A0
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8025E6F8
    mr 3, 28
    li 4, 0x41
    bl fn_80251AEC
L_8025E6F8:
    bl SpatialRegistry_GetBase
    lwz 4, 0xbb4(28)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820058 # beq .L_8025E760
    lwz 0, 0x3dc(28)
    addi 4, 31, 0xb0
    psq_l 2, 0x10(28), 1, 0
    mulli 0, 0, 0xc
    psq_l 4, 0x8(28), 0, 0
    add 4, 4, 0
    lfs 0, 0x8(4)
    lfs 1, 0x0(4)
    stfs 0, 0x40(1)
    lfs 0, 0x4(4)
    psq_l 3, 0x40(1), 1, 0
    stfs 1, 0x38(1)
    ps_add 1, 3, 2
    stfs 0, 0x3c(1)
    psq_l 0, 0x38(1), 0, 0
    psq_st 1, 0x40(1), 1, 0
    ps_add 0, 0, 4
    lfs 1, 0x40(1)
    psq_st 0, 0xc(3), 0, 0
    psq_st 0, 0x38(1), 0, 0
    stfs 1, 0x14(3)
L_8025E760:
    psq_l 31, 0xf8(1), 0, 0
    lfd 31, 0xf0(1)
    psq_l 30, 0xe8(1), 0, 0
    lfd 30, 0xe0(1)
    psq_l 29, 0xd8(1), 0, 0
    lfd 29, 0xd0(1)
    psq_l 28, 0xc8(1), 0, 0
    lfd 28, 0xc0(1)
    psq_l 27, 0xb8(1), 0, 0
    lfd 27, 0xb0(1)
    lmw 27, 0x9c(1)
    lwz 0, 0x104(1)
    mtlr 0
    addi 1, 1, 0x100
    blr

fn_8025E79C:
    stwu 1, -0x20(1)
    mflr 0
    li 4, 0x6
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    bl fn_8027221C
    li 0, 0x1
    mr 3, 31
    stb 0, 0x458(31)
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_8025E7F8
    mr 3, 31
    bl fn_802486A0
    cmpwi 3, 0x4
    .4byte 0x4182001C # beq .L_8025E7F8
    mr 3, 31
    bl Player_GetLinkTargetIndex
    bl fn_80230CFC
    stw 3, 0x3dc(31)
    stw 3, 0x3e8(31)
    .4byte 0x48000090 # b .L_8025E884
L_8025E7F8:
    mr 3, 31
    li 4, 0x2
    bl fn_80246B10
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_8025E81C
    li 0, 0x0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x4800006C # b .L_8025E884
L_8025E81C:
    mr 3, 31
    li 4, 0x1
    bl fn_80246B10
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_8025E840
    li 0, 0x1
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x48000048 # b .L_8025E884
L_8025E840:
    mr 3, 31
    li 4, 0x8
    bl fn_80246B10
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_8025E864
    li 0, 0x3
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x48000024 # b .L_8025E884
L_8025E864:
    mr 3, 31
    li 4, 0x4
    bl fn_80246B10
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8025E884
    li 0, 0x2
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
L_8025E884:
    lwz 0, 0x3dc(31)
    lis 3, lbl_8046AF00@ha
    addi 3, 3, lbl_8046AF00@l
    psq_l 4, 0x8(31), 0, 0
    mulli 4, 0, 0xc
    psq_l 3, 0x10(31), 1, 0
    li 0, 0x0
    stw 0, 0xba8(31)
    add 3, 3, 4
    lfs 2, 0x0(3)
    lfs 1, 0x4(3)
    lfs 0, 0x8(3)
    stfs 2, 0x8(1)
    stfs 1, 0xc(1)
    stfs 0, 0x10(1)
    psq_l 1, 0x8(1), 0, 0
    psq_l 0, 0x10(1), 1, 0
    ps_add 1, 1, 4
    stb 0, 0x3fa(31)
    ps_add 0, 0, 3
    stw 0, 0xbac(31)
    psq_st 1, 0x8(1), 0, 0
    psq_st 0, 0x10(1), 1, 0
    lwz 31, 0x1c(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8025E8F4:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CF768@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CF768@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8025E944
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x0
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_8025E944:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8025E97C
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0xc
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_8025E97C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8025E9B4
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x18
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_8025E9B4:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8025E9EC
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_8025E9EC:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8025EA24
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_8025EA24:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8025EA5C
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_8025EA5C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8025EA94
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_8025EA94:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8025EACC
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x54
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_8025EACC:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8025EB04
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_8025EB04:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8025EB18:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stfd 30, 0x20(1)
    psq_st 30, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    lbz 0, 0xd64(3)
    mr 31, 3
    subfic 0, 0, 0x1
    cntlzw 0, 0
    extrwi 0, 0, 8, 19
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_8025EB74
    lwz 0, 0xd70(31)
    cmpwi 0, 0x0
    .4byte 0x41800014 # blt .L_8025EB74
    cmpwi 0, 0x4
    .4byte 0x4080000C # bge .L_8025EB74
    li 0, 0x1
    .4byte 0x48000008 # b .L_8025EB78
L_8025EB74:
    li 0, 0x0
L_8025EB78:
    clrlwi. 0, 0, 24
    .4byte 0x4182012C # beq .L_8025ECA8
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x40820120 # bne .L_8025ECA8
    lwz 3, 0xd70(31)
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x40800110 # bge .L_8025ECA8
    psq_l 1, 0x2f4(31), 0, 0
    lfs 0, 0x2fc(31)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    lwz 3, 0xd70(31)
    bl fn_8023DE58
    mr 30, 3
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_8025EBCC
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_8025EBD0
L_8025EBCC:
    addi 3, 3, 0xdc
L_8025EBD0:
    lfs 31, 0x0(3)
    lfs 30, 0x4(3)
    lwz 30, 0x3b4(31)
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_8025EBF0
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_8025EBF4
L_8025EBF0:
    addi 3, 3, 0xdc
L_8025EBF4:
    lfs 0, 0x4(3)
    lfs 2, 0x0(3)
    fsubs 0, 30, 0
    lfs 1, 0xc(1)
    fsubs 2, 31, 2
    lfs 3, 0x8(1)
    fadds 0, 1, 0
    fadds 1, 3, 2
    stfs 0, 0xc(1)
    stfs 1, 0x8(1)
    lwz 3, 0xd70(31)
    bl fn_8023DE58
    mr 4, 3
    addi 3, 1, 0x8
    bl fn_8022461C
    mr 30, 3
    lwz 3, 0xd70(31)
    bl fn_8023DE58
    mr 4, 3
    addi 3, 1, 0x8
    li 5, 0x1
    bl fn_802265DC
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_8025EC70
    clrlwi 0, 30, 16
    cmplwi 0, 0xe
    .4byte 0x41820014 # beq .L_8025EC70
    cmplwi 0, 0x39
    .4byte 0x4182000C # beq .L_8025EC70
    cmplwi 0, 0xd
    .4byte 0x40820024 # bne .L_8025EC90
L_8025EC70:
    lwz 3, 0xd70(31)
    bl fn_8023DE58
    mr 5, 3
    mr 3, 31
    addi 4, 1, 0x8
    bl fn_802684A4
    clrlwi. 0, 3, 24
    .4byte 0x4182011C # beq .L_8025EDA8
L_8025EC90:
    lfs 0, 0x8(31)
    li 3, 0x1
    stfs 0, 0x2f4(31)
    lfs 0, 0xc(31)
    stfs 0, 0x2f8(31)
    .4byte 0x48000108 # b .L_8025EDAC
L_8025ECA8:
    lwz 4, 0x3b4(31)
    addi 3, 31, 0x2f4
    bl fn_8022461C
    lbz 0, 0xd64(31)
    mr 30, 3
    subfic 0, 0, 0x1
    cntlzw 0, 0
    extrwi 0, 0, 8, 19
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_8025ECEC
    lwz 0, 0xd70(31)
    cmpwi 0, 0x0
    .4byte 0x41800014 # blt .L_8025ECEC
    cmpwi 0, 0x4
    .4byte 0x4080000C # bge .L_8025ECEC
    li 0, 0x1
    .4byte 0x48000008 # b .L_8025ECF0
L_8025ECEC:
    li 0, 0x0
L_8025ECF0:
    clrlwi. 0, 0, 24
    .4byte 0x41820068 # beq .L_8025ED5C
    lwz 4, 0x3b4(31)
    addi 3, 31, 0x2f4
    li 5, 0x1
    bl fn_802265DC
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_8025ED2C
    clrlwi 0, 30, 16
    cmplwi 0, 0xe
    .4byte 0x41820014 # beq .L_8025ED2C
    cmplwi 0, 0x39
    .4byte 0x4182000C # beq .L_8025ED2C
    cmplwi 0, 0xd
    .4byte 0x4082001C # bne .L_8025ED44
L_8025ED2C:
    lwz 5, 0x3b4(31)
    mr 3, 31
    addi 4, 31, 0x2f4
    bl fn_802684A4
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_8025EDA8
L_8025ED44:
    lfs 0, 0x8(31)
    li 3, 0x1
    stfs 0, 0x2f4(31)
    lfs 0, 0xc(31)
    stfs 0, 0x2f8(31)
    .4byte 0x48000054 # b .L_8025EDAC
L_8025ED5C:
    bl SpatialRegistry_GetBase
    lwz 4, 0xd68(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182003C # beq .L_8025EDA8
    lwz 12, 0x0(3)
    addi 5, 31, 0x2f4
    lwz 4, 0x3b4(31)
    lwz 12, 0x4c(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8025EDA8
    lfs 0, 0x8(31)
    li 3, 0x1
    stfs 0, 0x2f4(31)
    lfs 0, 0xc(31)
    stfs 0, 0x2f8(31)
    .4byte 0x48000008 # b .L_8025EDAC
L_8025EDA8:
    li 3, 0x0
L_8025EDAC:
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    psq_l 30, 0x28(1), 0, 0
    lfd 30, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 0, 0x44(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8025EDD4:
    lwz 0, 0xd68(3)
    cmpw 0, 4
    .4byte 0x40820028 # bne .L_8025EE04
    li 0, -0x1
    psq_l 1, 0x0(5), 0, 0
    stw 0, 0xd68(3)
    addi 4, 3, 0xd78
    lfs 0, 0x8(5)
    li 3, 0x1
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x8(4)
    blr
L_8025EE04:
    li 3, 0x0
    blr

fn_8025EE0C:
    lwz 0, 0xd68(3)
    cmpw 0, 4
    bnelr
    lfs 0, 0x0(5)
    lfs 1, 0x4(5)
    stfs 0, 0x300(3)
    lfs 0, 0x8(5)
    stfs 1, 0x304(3)
    stfs 0, 0x308(3)
    blr

fn_8025EE34:
    lwz 0, 0xd68(3)
    subf 0, 0, 4
    cntlzw 0, 0
    srwi 3, 0, 5
    blr

fn_8025EE48:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    bl fn_80270A8C
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8025EE78
    li 3, 0x0
    .4byte 0x480000DC # b .L_8025EF50
L_8025EE78:
    lbz 3, 0xd64(30)
    subfic 0, 3, 0x1
    cntlzw 0, 0
    extrwi. 0, 0, 8, 19
    .4byte 0x4182000C # beq .L_8025EE94
    li 3, 0x0
    .4byte 0x480000C0 # b .L_8025EF50
L_8025EE94:
    lwz 0, 0xd70(30)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_8025EEA8
    cmpwi 0, 0x4
    .4byte 0x41800010 # blt .L_8025EEB4
L_8025EEA8:
    lwz 0, 0xd68(30)
    cmpwi 0, 0x0
    .4byte 0x41800014 # blt .L_8025EEC4
L_8025EEB4:
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8025EEC4
    li 0, 0x1
    .4byte 0x48000008 # b .L_8025EEC8
L_8025EEC4:
    li 0, 0x0
L_8025EEC8:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_8025EED8
    li 3, 0x0
    .4byte 0x4800007C # b .L_8025EF50
L_8025EED8:
    mr 3, 30
    bl Player_GetField_0xce8
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8025EEF0
    li 3, 0x0
    .4byte 0x48000064 # b .L_8025EF50
L_8025EEF0:
    mr 3, 30
    bl fn_80241230
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8025EF08
    li 3, 0x0
    .4byte 0x4800004C # b .L_8025EF50
L_8025EF08:
    mr 3, 30
    bl Player_GetField_0x454
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8025EF20
    li 3, 0x0
    .4byte 0x48000034 # b .L_8025EF50
L_8025EF20:
    lwz 0, 0xd68(30)
    cmpwi 0, 0x0
    .4byte 0x40800024 # bge .L_8025EF4C
    mr 3, 30
    li 4, 0x19
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8025EF4C
    stw 31, 0xd68(30)
    li 3, 0x1
    .4byte 0x48000008 # b .L_8025EF50
L_8025EF4C:
    li 3, 0x0
L_8025EF50:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8025EF68:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    lwz 0, 0xd88(3)
    cmpw 0, 31
    .4byte 0x4082000C # bne .L_8025EF98
    li 3, 0x1
    .4byte 0x48000050 # b .L_8025EFE4
L_8025EF98:
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_8025EFA8
    li 3, 0x0
    .4byte 0x48000040 # b .L_8025EFE4
L_8025EFA8:
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_8025EFE0
    lwz 4, 0x4(30)
    bl fn_801F36D4
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8025EFD8
    stw 31, 0xd88(30)
    li 3, 0x1
    .4byte 0x48000010 # b .L_8025EFE4
L_8025EFD8:
    li 3, 0x0
    .4byte 0x48000008 # b .L_8025EFE4
L_8025EFE0:
    li 3, 0x0
L_8025EFE4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_8025E8F4

