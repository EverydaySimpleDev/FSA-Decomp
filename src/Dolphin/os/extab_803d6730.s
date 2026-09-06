# fn_803D6730 - BFIN: update()-related (0x27C)
# Player-validity (fn_8023E724 x2), effect spawn (fn_8013CC50 x2).
.section extab, "a"
.balign 4
.global etb_8000FA84
etb_8000FA84:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000FA84, 8

.section extabindex, "a"
.balign 4
.global eti_8001F918
eti_8001F918:
    .4byte fn_803D6730
    .4byte 0x0000027C
    .4byte etb_8000FA84
.size eti_8001F918, 12

.text
.balign 4
.global fn_803D6730

fn_803D6730:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    lwz 3, 0x23c(3)
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x234(31)
    lwz 5, 0x24(3)
    lbz 0, 0x7f5(5)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_803D6780
    li 3, 0x1
    li 0, 0x0
    stb 3, 0x7f4(5)
    stw 4, 0x7f8(5)
    stb 0, 0x7f6(5)
L_803D6780:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4181020C # bgt .L_803D6994
    lwz 3, 0x238(31)
    li 0, 0x2
    li 30, 0x0
    addi 3, 3, 0x1
    stw 3, 0x238(31)
    stw 0, 0x23c(31)
L_803D67A4:
    addi 0, 30, 0x241
    lbzx 0, 31, 0
    cmplwi 0, 0x0
    .4byte 0x4182013C # beq .L_803D68EC
    lwz 0, 0x234(31)
    cmpw 30, 0
    .4byte 0x41820018 # beq .L_803D67D4
    mr 3, 30
    bl fn_8022F3DC
    lwz 0, 0x234(31)
    cmpw 0, 3
    .4byte 0x4082011C # bne .L_803D68EC
L_803D67D4:
    mr 3, 30
    bl fn_8023E724
    lwz 5, 0x238(31)
    mr 4, 3
    mr 3, 30
    li 6, 0xff
    addi 5, 5, 0xdb
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    lwz 0, 0x238(31)
    cmpwi 0, 0x1
    .4byte 0x40820018 # bne .L_803D6820
    lis 4, 0x1
    lwz 3, 0x234(31)
    addi 4, 4, 0x1
    bl fn_80230FD0
    .4byte 0x480000D0 # b .L_803D68EC
L_803D6820:
    cmpwi 0, 0xd
    .4byte 0x408200C8 # bne .L_803D68EC
    mr 3, 30
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    addi 4, 1, 0x14
    lfs 4, 0x8(3)
    li 5, 0xcb
    psq_st 0, 0x20(1), 0, 0
    li 6, 0x1
    .4byte 0xC0620588 # lfs f3, lbl_80543528@sda21(r0)
    li 7, 0x0
    lfs 2, 0x20(1)
    li 8, 0x0
    lfs 1, 0x24(1)
    li 9, 0x0
    .4byte 0xC002058C # lfs f0, lbl_8054352C@sda21(r0)
    fadds 2, 3, 2
    stfs 4, 0x1c(1)
    li 10, 0x1
    fsubs 0, 1, 0
    .4byte 0xC0220584 # lfs f1, lbl_80543524@sda21(r0)
    stfs 2, 0x14(1)
    stfs 0, 0x18(1)
    stfs 4, 0x28(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    .4byte 0xC0620588 # lfs f3, lbl_80543528@sda21(r0)
    addi 4, 1, 0x8
    lfs 0, 0x20(1)
    li 5, 0xcc
    lfs 2, 0x24(1)
    li 6, 0x1
    .4byte 0xC022058C # lfs f1, lbl_8054352C@sda21(r0)
    fadds 3, 3, 0
    lfs 0, 0x28(1)
    li 7, 0x0
    fsubs 2, 2, 1
    .4byte 0xC0220584 # lfs f1, lbl_80543524@sda21(r0)
    stfs 3, 0x8(1)
    li 8, 0x0
    li 9, 0x0
    stfs 2, 0xc(1)
    li 10, 0x1
    stfs 0, 0x10(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    lis 4, 0x2
    lwz 3, 0x234(31)
    addi 4, 4, 0xe
    bl fn_80230FD0
L_803D68EC:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FEB0 # blt .L_803D67A4
    lwz 0, 0x238(31)
    cmpwi 0, 0xd
    .4byte 0x40820094 # bne .L_803D6994
    li 3, 0x82
    li 0, 0x5
    stw 3, 0x23c(31)
    stw 0, 0x230(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x2
    .4byte 0x4182003C # beq .L_803D6958
    .4byte 0x40800014 # bge .L_803D6934
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_803D6940
    .4byte 0x40800020 # bge .L_803D694C
    .4byte 0x4800003C # b .L_803D696C
L_803D6934:
    cmpwi 0, 0x4
    .4byte 0x40800034 # bge .L_803D696C
    .4byte 0x48000028 # b .L_803D6964
L_803D6940:
    li 0, 0x0
    stb 0, 0x240(31)
    .4byte 0x48000024 # b .L_803D696C
L_803D694C:
    li 0, 0x1
    stb 0, 0x240(31)
    .4byte 0x48000018 # b .L_803D696C
L_803D6958:
    li 0, 0x2
    stb 0, 0x240(31)
    .4byte 0x4800000C # b .L_803D696C
L_803D6964:
    li 0, 0x3
    stb 0, 0x240(31)
L_803D696C:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x2a
    li 5, -0x1
    bl fn_80458880
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x27
    li 5, 0x1
    li 6, 0x0
    bl fn_80458FF0
L_803D6994:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

