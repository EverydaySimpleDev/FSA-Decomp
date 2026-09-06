# fn_8038E0A0 - actor@lbl_804AF32C: draw() (0x2C8)
# Uses the confirmed 3D render-primitive helper (fn_801F06F0, x2) and HUD/
# map marker registration (fn_803075AC, x2). Track A: byte-match verified,
# structural overview per the large/complex-function exception.
.section extab, "a"
.balign 4
.global etb_8000EE30
etb_8000EE30:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000EE30, 8

.section extabindex, "a"
.balign 4
.global eti_8001EC4C
eti_8001EC4C:
    .4byte fn_8038E0A0
    .4byte 0x000002C8
    .4byte etb_8000EE30
.size eti_8001EC4C, 12

.text
.balign 4
.global fn_8038E0A0

fn_8038E0A0:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 3
    stw 30, 0x58(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x1
    .4byte 0x41820074 # beq .L_8038E134
    lwz 0, 0x240(31)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x41820068 # beq .L_8038E134
    lwz 0, 0x90(31)
    cmplwi 0, 0x3
    .4byte 0x4182005C # beq .L_8038E134
    .4byte 0xC0220160 # lfs f1, lbl_80543100@sda21(r0)
    lis 4, lbl_80475658@ha
    lwz 5, 0x244(31)
    addi 4, 4, lbl_80475658@l
    fmr 2, 1
    li 6, 0x0
    addi 5, 5, 0x61
    li 7, 0x7
    bl fn_801F06F0
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x0
    lwz 6, 0x244(31)
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    addi 6, 6, 0x61
    bl fn_803075AC
L_8038E134:
    lwz 3, 0x230(31)
    cmpwi 3, 0x8
    .4byte 0x41820018 # beq .L_8038E154
    subi 0, 3, 0xa
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_8038E154
    cmpwi 3, 0xc
    .4byte 0x40820200 # bne .L_8038E350
L_8038E154:
    lwz 0, 0x26c(31)
    cmpwi 0, 0x0
    .4byte 0x408201F4 # bne .L_8038E350
    lwz 0, 0x90(31)
    cmplwi 0, 0x3
    .4byte 0x408201E8 # bne .L_8038E350
    li 0, -0x1
    addi 9, 1, 0x1c
    stw 0, 0x2c(1)
    li 10, 0x0
    stw 0, 0x30(1)
    .4byte 0x48000064 # b .L_8038E1E4
L_8038E184:
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
L_8038E1E4:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8038E184
    li 6, 0x0
    li 5, 0x1
    li 8, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 8, 0x2c(1)
    lis 3, lbl_80475600@ha
    li 7, 0x7
    stw 6, 0x30(1)
    addi 3, 3, lbl_80475600@l
    stw 6, 0x34(1)
    stb 6, 0x38(1)
    stb 6, 0x39(1)
    stb 6, 0x3a(1)
    stb 5, 0x3b(1)
    stb 5, 0x3c(1)
    stb 6, 0x3d(1)
    stb 6, 0x3e(1)
    stb 6, 0x3f(1)
    stb 6, 0x40(1)
    stb 6, 0x41(1)
    stb 5, 0x42(1)
    stw 4, 0x44(1)
    stb 5, 0x48(1)
    stb 6, 0x49(1)
    stb 6, 0x4a(1)
    stw 8, 0x4c(1)
    stw 6, 0x50(1)
    stw 0, 0x54(1)
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    lwz 0, 0x29c(31)
    psq_st 1, 0x10(1), 0, 0
    slwi 0, 0, 2
    add 3, 3, 0
    stb 6, 0x39(1)
    lwz 30, -0x4(3)
    stb 6, 0x38(1)
    psq_l 2, 0x284(31), 0, 0
    lfs 1, 0x28c(31)
    stfs 0, 0x18(1)
    psq_st 2, 0xc(31), 0, 0
    stfs 1, 0x14(31)
    lwz 4, 0x230(31)
    cmpwi 4, 0xa
    .4byte 0x41820014 # beq .L_8038E2B8
    cmpwi 4, 0xb
    .4byte 0x4182000C # beq .L_8038E2B8
    cmpwi 4, 0xc
    .4byte 0x4082001C # bne .L_8038E2D0
L_8038E2B8:
    lwz 0, 0x29c(31)
    lis 3, lbl_80475600@ha
    addi 3, 3, lbl_80475600@l
    slwi 0, 0, 2
    add 3, 3, 0
    lwz 30, 0x28(3)
L_8038E2D0:
    cmpwi 4, 0xb
    .4byte 0x4182000C # beq .L_8038E2E0
    cmpwi 4, 0xc
    .4byte 0x40820014 # bne .L_8038E2F0
L_8038E2E0:
    li 0, 0x1
    li 7, -0x1
    stb 0, 0x39(1)
    stb 0, 0x38(1)
L_8038E2F0:
    .4byte 0xC0220160 # lfs f1, lbl_80543100@sda21(r0)
    lis 3, lbl_80475658@ha
    addi 4, 3, lbl_80475658@l
    mr 5, 30
    fmr 2, 1
    mr 3, 31
    addi 6, 1, 0x1c
    bl fn_801F06F0
    li 0, 0x0
    mr 6, 30
    stw 0, 0x8(1)
    addi 5, 31, 0xc
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    li 10, 0x1
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    bl fn_803075AC
    psq_l 1, 0x10(1), 0, 0
    lfs 0, 0x18(1)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
L_8038E350:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

