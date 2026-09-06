# fn_803AC6FC - helper (0x29c)
.section extab, "a"
.balign 4
.global etb_8000F414
etb_8000F414:
    .4byte 0x400A0000
    .4byte 0x00000000
.size etb_8000F414, 8

.section extabindex, "a"
.balign 4
.global eti_8001F138
eti_8001F138:
    .4byte fn_803AC6FC
    .4byte 0x0000029C
    .4byte etb_8000F414
.size eti_8001F138, 12

.text
.balign 4
.global fn_803AC6FC

fn_803AC6FC:
    stwu 1, -0x40(1)
    mflr 0
    lis 4, lbl_80529DEC@ha
    stw 0, 0x44(1)
    stmw 24, 0x20(1)
    mr 24, 3
    addi 29, 4, lbl_80529DEC@l
    lis 3, 0xfff1
    mr 30, 24
    li 28, 0x0
    mr 31, 29
    subi 27, 3, 0x423f
    li 26, 0x0
    li 25, 0x0
    .4byte 0x48000104 # b .L_803AC838
L_803AC738:
    lwz 3, 0x320(30)
    lwz 0, 0x150(31)
    cmpw 3, 0
    .4byte 0x408000BC # bge .L_803AC800
    lwz 0, 0x1a8(30)
    cmplwi 0, 0x0
    .4byte 0x4082005C # bne .L_803AC7AC
    lwz 7, 0x158(30)
    addi 4, 1, 0x8
    .4byte 0xC0620448 # lfs f3, lbl_805433E8@sda21(r0)
    li 3, 0x0
    lfs 1, 0x28(7)
    li 5, 0x3dd
    lfs 0, 0x20(7)
    li 6, 0x0
    lfs 2, 0x30(7)
    li 7, 0x0
    fsubs 4, 1, 0
    .4byte 0xC0020428 # lfs f0, lbl_805433C8@sda21(r0)
    .4byte 0xC0220434 # lfs f1, lbl_805433D4@sda21(r0)
    li 8, 0x0
    stfs 0, 0xc(1)
    li 9, 0x0
    fmadds 2, 4, 3, 2
    stfs 0, 0x10(1)
    li 10, 0x1
    stfs 2, 0x8(1)
    bl fn_8013CC50
    stw 3, 0x1a8(30)
L_803AC7AC:
    lwz 3, 0x320(30)
    addi 0, 3, 0x2
    stw 0, 0x320(30)
    lwz 3, 0x320(30)
    lwz 0, 0x150(31)
    cmpw 3, 0
    .4byte 0x41800068 # blt .L_803AC82C
    lwz 5, 0x1a8(30)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_803AC7F0
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x1a8(30)
L_803AC7F0:
    lwz 0, 0x150(31)
    addi 28, 28, 0x1
    stw 0, 0x320(30)
    .4byte 0x48000030 # b .L_803AC82C
L_803AC800:
    .4byte 0x40810028 # ble .L_803AC828
    subi 0, 3, 0x2
    stw 0, 0x320(30)
    lwz 0, 0x320(30)
    lwz 3, 0x150(31)
    cmpw 0, 3
    .4byte 0x41810014 # bgt .L_803AC82C
    stw 3, 0x320(30)
    addi 28, 28, 0x1
    .4byte 0x48000008 # b .L_803AC82C
L_803AC828:
    addi 28, 28, 0x1
L_803AC82C:
    addi 31, 31, 0x4
    addi 30, 30, 0x4
    addi 25, 25, 0x1
L_803AC838:
    lwz 0, 0x454(24)
    cmpw 25, 0
    .4byte 0x4180FEF8 # blt .L_803AC738
    cmpw 28, 0
    .4byte 0x4180010C # blt .L_803AC954
    li 5, 0x0
    li 4, 0x0
    .4byte 0x4800004C # b .L_803AC8A0
L_803AC858:
    lwz 0, 0x150(29)
    cmpw 27, 0
    .4byte 0x4080001C # bge .L_803AC87C
    stb 4, 0x4c8(24)
    mr 27, 0
    lbz 3, 0x4c8(24)
    addi 0, 3, 0x4ac
    stbx 5, 24, 0
    .4byte 0x48000020 # b .L_803AC898
L_803AC87C:
    .4byte 0x4082001C # bne .L_803AC898
    lbz 3, 0x4c8(24)
    addi 0, 3, 0x1
    stb 0, 0x4c8(24)
    lbz 3, 0x4c8(24)
    addi 0, 3, 0x4ac
    stbx 5, 24, 0
L_803AC898:
    addi 29, 29, 0x4
    addi 5, 5, 0x1
L_803AC8A0:
    lwz 0, 0x454(24)
    cmpw 5, 0
    .4byte 0x4180FFB0 # blt .L_803AC858
    mr 4, 24
    li 5, 0x0
    li 3, 0x3e
    .4byte 0x4800003C # b .L_803AC8F4
L_803AC8BC:
    lbz 0, 0x4c8(24)
    cmplwi 0, 0xff
    .4byte 0x41820028 # beq .L_803AC8EC
    addi 0, 26, 0x4ac
    lbzx 0, 24, 0
    cmpw 5, 0
    .4byte 0x40820018 # bne .L_803AC8EC
    stw 3, 0x3c0(4)
    lbz 0, 0x4c8(24)
    cmpw 0, 26
    .4byte 0x40810008 # ble .L_803AC8EC
    addi 26, 26, 0x1
L_803AC8EC:
    addi 4, 4, 0x4
    addi 5, 5, 0x1
L_803AC8F4:
    lwz 0, 0x454(24)
    cmpw 5, 0
    .4byte 0x4180FFC0 # blt .L_803AC8BC
    lbz 0, 0x4c8(24)
    cmplwi 0, 0xff
    .4byte 0x41820028 # beq .L_803AC930
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xf
    li 5, -0x1
    bl fn_80458880
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x2a
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000014 # b .L_803AC940
L_803AC930:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x2d
    li 5, -0x1
    bl fn_80458880
L_803AC940:
    li 3, 0x0
    li 0, 0x1e
    stw 3, 0x438(24)
    stb 0, 0x4c1(24)
    .4byte 0x48000034 # b .L_803AC984
L_803AC954:
    lwz 0, 0x438(24)
    cmpw 28, 0
    .4byte 0x41820018 # beq .L_803AC974
    stw 28, 0x438(24)
    li 4, 0x10
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_803AC974:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xe
    li 5, -0x1
    bl fn_80458880
L_803AC984:
    lmw 24, 0x20(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

