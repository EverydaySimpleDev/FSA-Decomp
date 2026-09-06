# fn_8039F540 - component C: vtable-slot function (0x5e8)
.section extab, "a"
.balign 4
.global etb_8000F204
etb_8000F204:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000F204, 8

.section extabindex, "a"
.balign 4
.global eti_8001EF58
eti_8001EF58:
    .4byte fn_8039F540
    .4byte 0x000005E8
    .4byte etb_8000F204
.size eti_8001EF58, 12

.text
.balign 4
.global fn_8039F540

fn_8039F540:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    li 0, 0x0
    stw 31, 0x2c(1)
    mr 31, 4
    stw 30, 0x28(1)
    mr 30, 3
    stw 29, 0x24(1)
    lwz 3, 0x2d8(3)
    stb 0, 0x3ab(3)
    addi 29, 3, 0x3ab
    lwz 3, 0x2d8(30)
    lbz 4, 0x1aa(3)
    cmplwi 4, 0x0
    .4byte 0x40820300 # bne .L_8039F87C
    cmpwi 31, 0xa
    stb 0, 0x9(1)
    .4byte 0x40820064 # bne .L_8039F5EC
    lwz 3, 0x2cc(30)
    addi 0, 3, 0x1
    stw 0, 0x2cc(30)
    lwz 3, 0x2d8(30)
    lwz 4, 0x2cc(30)
    lwz 0, 0x15c(3)
    add 3, 30, 0
    lbz 0, 0x23a(3)
    extsb 3, 0
    addi 0, 3, 0x1
    cmpw 4, 0
    .4byte 0x40810554 # ble .L_8039FB0C
    li 0, 0x1
    addi 4, 1, 0x8
    stb 0, 0x2d6(30)
    stb 31, 0x8(1)
    lwz 3, 0x2c0(30)
    bl strcat
    lwz 3, 0x2c4(30)
    addi 4, 1, 0x8
    bl strcat
    lwz 3, 0x2d0(30)
    addi 0, 3, 0x1
    stw 0, 0x2d0(30)
L_8039F5EC:
    lwz 4, 0x2d8(30)
    lwz 3, 0x2cc(30)
    lwz 0, 0x15c(4)
    add 5, 30, 0
    lbz 0, 0x23a(5)
    extsb 0, 0
    cmpw 3, 0
    .4byte 0x40810504 # ble .L_8039FB0C
    lbz 0, 0x2d6(30)
    cmplwi 0, 0x0
    .4byte 0x418201F4 # beq .L_8039F808
    cmpwi 3, 0x20
    .4byte 0x4080003C # bge .L_8039F658
    li 8, 0x1
    lwz 7, 0x74(30)
    slw 5, 8, 3
    li 6, 0x0
    srawi 0, 5, 31
    and 5, 7, 5
    and 0, 6, 0
    xor 5, 5, 6
    xor 0, 0, 6
    or. 0, 5, 0
    .4byte 0x41820008 # beq .L_8039F650
    .4byte 0x48000054 # b .L_8039F6A0
L_8039F650:
    mr 8, 6
    .4byte 0x4800004C # b .L_8039F6A0
L_8039F658:
    cmpwi 3, 0x40
    .4byte 0x40800040 # bge .L_8039F69C
    subi 0, 3, 0x20
    li 8, 0x1
    slw 5, 8, 0
    lwz 7, 0x78(30)
    srawi 0, 5, 31
    li 6, 0x0
    and 5, 7, 5
    and 0, 6, 0
    xor 5, 5, 6
    xor 0, 0, 6
    or. 0, 5, 0
    .4byte 0x41820008 # beq .L_8039F694
    .4byte 0x48000010 # b .L_8039F6A0
L_8039F694:
    mr 8, 6
    .4byte 0x48000008 # b .L_8039F6A0
L_8039F69C:
    li 8, 0x0
L_8039F6A0:
    cmpwi 8, 0x0
    .4byte 0x4082015C # bne .L_8039F800
    lwz 0, 0x16c(4)
    cmpwi 0, 0x0
    .4byte 0x41820094 # beq .L_8039F744
    cmpwi 3, 0x20
    .4byte 0x4080003C # bge .L_8039F6F4
    li 8, 0x1
    lwz 7, 0x74(30)
    slw 5, 8, 3
    li 6, 0x0
    srawi 0, 5, 31
    and 5, 7, 5
    and 0, 6, 0
    xor 5, 5, 6
    xor 0, 0, 6
    or. 0, 5, 0
    .4byte 0x41820008 # beq .L_8039F6EC
    .4byte 0x48000054 # b .L_8039F73C
L_8039F6EC:
    mr 8, 6
    .4byte 0x4800004C # b .L_8039F73C
L_8039F6F4:
    cmpwi 3, 0x40
    .4byte 0x40800040 # bge .L_8039F738
    subi 0, 3, 0x20
    li 8, 0x1
    slw 5, 8, 0
    lwz 7, 0x78(30)
    srawi 0, 5, 31
    li 6, 0x0
    and 5, 7, 5
    and 0, 6, 0
    xor 5, 5, 6
    xor 0, 0, 6
    or. 0, 5, 0
    .4byte 0x41820008 # beq .L_8039F730
    .4byte 0x48000010 # b .L_8039F73C
L_8039F730:
    mr 8, 6
    .4byte 0x48000008 # b .L_8039F73C
L_8039F738:
    li 8, 0x0
L_8039F73C:
    cmpwi 8, 0x0
    .4byte 0x408200B8 # bne .L_8039F7F8
L_8039F744:
    lwz 5, 0x3b8(4)
    lhz 0, 0x28(5)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x40820018 # bne .L_8039F768
    slwi 0, 3, 2
    lfs 3, 0xe8(4)
    add 3, 30, 0
    lfs 0, 0x84(3)
    .4byte 0x48000024 # b .L_8039F788
L_8039F768:
    slwi 0, 3, 2
    .4byte 0xC0220248 # lfs f1, lbl_805431E8@sda21(r0)
    add 3, 30, 0
    lfs 3, 0xf0(4)
    lfs 2, 0x12c(3)
    lfs 0, 0x84(3)
    fsubs 1, 2, 1
    fadds 0, 0, 1
L_8039F788:
    fsubs 1, 3, 0
    .4byte 0xC0020244 # lfs f0, lbl_805431E4@sda21(r0)
    fmadds 0, 1, 0, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 6, 0x14(1)
    cmpwi 6, 0x0
    .4byte 0x40810054 # ble .L_8039F7F8
    lis 3, lbl_8050E518@ha
    li 4, 0xf
    addi 3, 3, lbl_8050E518@l
    .4byte 0x38A202F8 # li r5, lbl_80543298@sda21
    crclr 6
    bl fn_8006B414
    lis 4, lbl_8050E518@ha
    lwz 3, 0x2c0(30)
    addi 4, 4, lbl_8050E518@l
    bl strcat
    lis 4, lbl_8050E518@ha
    lwz 3, 0x2c4(30)
    addi 4, 4, lbl_8050E518@l
    bl strcat
    lis 3, lbl_8050E518@ha
    addi 3, 3, lbl_8050E518@l
    bl strlen
    lwz 0, 0x2d0(30)
    add 0, 0, 3
    stw 0, 0x2d0(30)
L_8039F7F8:
    li 0, 0x0
    stb 0, 0x2d6(30)
L_8039F800:
    cmpwi 31, 0xa
    .4byte 0x41820308 # beq .L_8039FB0C
L_8039F808:
    extrwi 0, 31, 8, 16
    li 5, 0x0
    extsb. 4, 0
    .4byte 0x4182001C # beq .L_8039F830
    lwz 3, 0x2d0(30)
    clrlwi 31, 31, 24
    li 5, 0x1
    addi 0, 3, 0x1
    stw 0, 0x2d0(30)
    stb 4, 0x0(29)
L_8039F830:
    lwz 4, 0x2d0(30)
    addi 3, 5, 0x1
    addi 0, 4, 0x1
    stw 0, 0x2d0(30)
    stbx 31, 29, 5
    lwz 4, 0x2d8(30)
    lwz 0, 0x2d0(30)
    lwz 5, 0x170(4)
    subf 0, 3, 0
    cmpw 0, 5
    .4byte 0x41820008 # beq .L_8039F860
    stw 0, 0x170(4)
L_8039F860:
    lwz 3, 0x2c0(30)
    mr 4, 29
    bl strcat
    lwz 3, 0x2c4(30)
    mr 4, 29
    bl strcat
    .4byte 0x48000294 # b .L_8039FB0C
L_8039F87C:
    cmpwi 31, 0xa
    .4byte 0x40820070 # bne .L_8039F8F0
    lwz 3, 0x2cc(30)
    addi 0, 3, 0x1
    stw 0, 0x2cc(30)
    lwz 3, 0x2d8(30)
    lwz 4, 0x2cc(30)
    lwz 0, 0x15c(3)
    add 3, 30, 0
    lbz 0, 0x23a(3)
    extsb 3, 0
    addi 0, 3, 0x1
    cmpw 4, 0
    .4byte 0x4081025C # ble .L_8039FB0C
    lwz 4, 0x2d0(30)
    li 7, -0x1
    lwz 5, 0x2c0(30)
    li 6, -0x10
    addi 3, 4, 0x1
    li 0, 0x1
    stw 3, 0x2d0(30)
    stbx 7, 5, 4
    lwz 4, 0x2d0(30)
    lwz 5, 0x2c0(30)
    addi 3, 4, 0x1
    stw 3, 0x2d0(30)
    stbx 6, 5, 4
    stb 0, 0x2d6(30)
    .4byte 0x48000220 # b .L_8039FB0C
L_8039F8F0:
    lwz 5, 0x15c(3)
    lwz 4, 0x2cc(30)
    add 5, 30, 5
    lbz 5, 0x23a(5)
    extsb 5, 5
    cmpw 4, 5
    .4byte 0x40810204 # ble .L_8039FB0C
    lbz 5, 0x2d6(30)
    cmplwi 5, 0x0
    .4byte 0x41820180 # beq .L_8039FA94
    cmpwi 4, 0x20
    .4byte 0x40800038 # bge .L_8039F954
    li 8, 0x1
    lwz 7, 0x74(30)
    slw 6, 8, 4
    srawi 5, 6, 31
    and 6, 7, 6
    and 5, 0, 5
    xor 6, 6, 0
    xor 5, 5, 0
    or. 5, 6, 5
    .4byte 0x41820008 # beq .L_8039F94C
    .4byte 0x48000050 # b .L_8039F998
L_8039F94C:
    mr 8, 0
    .4byte 0x48000048 # b .L_8039F998
L_8039F954:
    cmpwi 4, 0x40
    .4byte 0x4080003C # bge .L_8039F994
    subi 5, 4, 0x20
    li 8, 0x1
    slw 6, 8, 5
    lwz 7, 0x78(30)
    srawi 5, 6, 31
    and 6, 7, 6
    and 5, 0, 5
    xor 6, 6, 0
    xor 5, 5, 0
    or. 5, 6, 5
    .4byte 0x41820008 # beq .L_8039F98C
    .4byte 0x48000010 # b .L_8039F998
L_8039F98C:
    mr 8, 0
    .4byte 0x48000008 # b .L_8039F998
L_8039F994:
    mr 8, 0
L_8039F998:
    cmpwi 8, 0x0
    .4byte 0x408200F0 # bne .L_8039FA8C
    lwz 0, 0x16c(3)
    cmpwi 0, 0x0
    .4byte 0x41820094 # beq .L_8039FA3C
    cmpwi 4, 0x20
    .4byte 0x4080003C # bge .L_8039F9EC
    li 7, 0x1
    lwz 6, 0x74(30)
    slw 3, 7, 4
    li 5, 0x0
    srawi 0, 3, 31
    and 3, 6, 3
    and 0, 5, 0
    xor 3, 3, 5
    xor 0, 0, 5
    or. 0, 3, 0
    .4byte 0x41820008 # beq .L_8039F9E4
    .4byte 0x48000054 # b .L_8039FA34
L_8039F9E4:
    mr 7, 5
    .4byte 0x4800004C # b .L_8039FA34
L_8039F9EC:
    cmpwi 4, 0x40
    .4byte 0x40800040 # bge .L_8039FA30
    subi 0, 4, 0x20
    li 7, 0x1
    slw 3, 7, 0
    lwz 6, 0x78(30)
    srawi 0, 3, 31
    li 5, 0x0
    and 3, 6, 3
    and 0, 5, 0
    xor 3, 3, 5
    xor 0, 0, 5
    or. 0, 3, 0
    .4byte 0x41820008 # beq .L_8039FA28
    .4byte 0x48000010 # b .L_8039FA34
L_8039FA28:
    mr 7, 5
    .4byte 0x48000008 # b .L_8039FA34
L_8039FA30:
    li 7, 0x0
L_8039FA34:
    cmpwi 7, 0x0
    .4byte 0x40820054 # bne .L_8039FA8C
L_8039FA3C:
    add 3, 30, 4
    lbz 0, 0x265(3)
    extsb 0, 0
    subfic 4, 0, 0x1c
    cmpwi 4, 0x0
    .4byte 0x4081003C # ble .L_8039FA8C
    cmpwi 4, 0x1c
    .4byte 0x40800034 # bge .L_8039FA8C
    lwz 3, 0x2d0(30)
    addi 5, 4, 0xd0
    lwz 4, 0x2c0(30)
    li 6, -0x1
    addi 0, 3, 0x1
    stw 0, 0x2d0(30)
    stbx 6, 4, 3
    lwz 3, 0x2d0(30)
    lwz 4, 0x2c0(30)
    addi 0, 3, 0x1
    stw 0, 0x2d0(30)
    stbx 5, 4, 3
L_8039FA8C:
    li 0, 0x0
    stb 0, 0x2d6(30)
L_8039FA94:
    lis 3, lbl_80475830@ha
    clrlwi 0, 31, 16
    addi 3, 3, lbl_80475830@l
    li 4, 0x0
    .4byte 0x4800002C # b .L_8039FAD0
L_8039FAA8:
    cmplw 0, 5
    .4byte 0x4082001C # bne .L_8039FAC8
    lis 3, lbl_80475830@ha
    slwi 0, 4, 2
    addi 3, 3, lbl_80475830@l
    add 3, 3, 0
    lhz 6, 0x2(3)
    .4byte 0x4800001C # b .L_8039FAE0
L_8039FAC8:
    addi 3, 3, 0x4
    addi 4, 4, 0x1
L_8039FAD0:
    lhz 5, 0x0(3)
    cmplwi 5, 0xffff
    .4byte 0x4082FFD0 # bne .L_8039FAA8
    li 6, 0x1420
L_8039FAE0:
    lwz 3, 0x2d0(30)
    extrwi 5, 6, 8, 16
    lwz 4, 0x2c0(30)
    addi 0, 3, 0x1
    stw 0, 0x2d0(30)
    stbx 5, 4, 3
    lwz 3, 0x2d0(30)
    lwz 4, 0x2c0(30)
    addi 0, 3, 0x1
    stw 0, 0x2d0(30)
    stbx 6, 4, 3
L_8039FB0C:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

