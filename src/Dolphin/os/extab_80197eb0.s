# Unnamed actor cluster, part 5/9 (Track A byte-match + overview -
# 0x978=2424B). update() state handler #3 - the largest of the 3
# per-state handlers. Uses the global PRNG advance, fn_800EC240 (full
# effect teardown), fn_8013C824, fn_8013CB44, fn_801F0E34, fn_801F666C/
# fn_801F6758/SpatialRegistry_GetBase/fn_801F71A4, plus 2 unfamiliar helpers
# fn_8022F3DC/fn_8022F514.
.section extab, "a"
.balign 4
.global etb_8000786C
etb_8000786C:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_8000786C, 8

.section extabindex, "a"
.balign 4
.global eti_80014620
eti_80014620:
    .4byte fn_80197EB0
    .4byte 0x00000978
    .4byte etb_8000786C
.size eti_80014620, 12

.text
.balign 4
.global fn_80197EB0

fn_80197EB0:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    mr 30, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x48
    .4byte 0x41820578 # beq .L_80198454
    .4byte 0x40800014 # bge .L_80197EF4
    cmpwi 0, 0x46
    .4byte 0x41820018 # beq .L_80197F00
    .4byte 0x4080001C # bge .L_80197F08
    .4byte 0x48000890 # b .L_80198780
L_80197EF4:
    cmpwi 0, 0x4a
    .4byte 0x40800888 # bge .L_80198780
    .4byte 0x48000870 # b .L_8019876C
L_80197F00:
    li 0, 0x47
    stw 0, 0x230(30)
L_80197F08:
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x56
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x250(30)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_80197F44
    lfs 0, 0x3c(30)
    .4byte 0xC022B3E8 # lfs f1, lbl_8053E388@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x40820010 # bne .L_80197F44
    lfs 0, 0x40(30)
    fcmpu cr0, 0, 1
    .4byte 0x41820840 # beq .L_80198780
L_80197F44:
    lwz 5, 0x30c(30)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_80197F6C
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x30c(30)
L_80197F6C:
    .4byte 0xC022B3EC # lfs f1, lbl_8053E38C@sda21(r0)
    addi 3, 30, 0xc
    lwz 4, 0x4(30)
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80197F90
    li 0, 0x0
    stw 0, 0x258(30)
    .4byte 0x480007F4 # b .L_80198780
L_80197F90:
    lwz 31, 0x25c(30)
    cmpwi 31, 0x0
    .4byte 0x418004B0 # blt .L_80198448
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182049C # beq .L_80198448
    lfs 1, 0x10(3)
    lfs 0, 0x10(30)
    lfs 3, 0xc(3)
    fsubs 2, 1, 0
    lfs 1, 0xc(30)
    .4byte 0xC002B3E8 # lfs f0, lbl_8053E388@sda21(r0)
    fsubs 1, 3, 1
    fmuls 3, 2, 2
    fmadds 31, 1, 1, 3
    fcmpo cr0, 31, 0
    .4byte 0x4081004C # ble .L_80198024
    frsqrte 3, 31
    .4byte 0xC8A2B410 # lfd f5, lbl_8053E3B0@sda21(r0)
    .4byte 0xC882B418 # lfd f4, lbl_8053E3B8@sda21(r0)
    fmul 0, 3, 3
    fmul 3, 5, 3
    fnmsub 0, 31, 0, 4
    fmul 3, 3, 0
    fmul 0, 3, 3
    fmul 3, 5, 3
    fnmsub 0, 31, 0, 4
    fmul 3, 3, 0
    fmul 0, 3, 3
    fmul 3, 5, 3
    fnmsub 0, 31, 0, 4
    fmul 0, 3, 0
    fmul 3, 31, 0
    frsp 3, 3
    .4byte 0x48000090 # b .L_801980B0
L_80198024:
    .4byte 0xC802B420 # lfd f0, lbl_8053E3C0@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40800010 # bge .L_8019803C
    lis 3, lbl_80539D38@ha
    lfs 3, lbl_80539D38@l(3)
    .4byte 0x48000078 # b .L_801980B0
L_8019803C:
    stfs 31, 0x14(1)
    lis 0, 0x7f80
    lwz 4, 0x14(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_80198064
    .4byte 0x40800040 # bge .L_80198094
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_8019807C
    .4byte 0x48000034 # b .L_80198094
L_80198064:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80198074
    li 0, 0x1
    .4byte 0x48000028 # b .L_80198098
L_80198074:
    li 0, 0x2
    .4byte 0x48000020 # b .L_80198098
L_8019807C:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_8019808C
    li 0, 0x5
    .4byte 0x48000010 # b .L_80198098
L_8019808C:
    li 0, 0x3
    .4byte 0x48000008 # b .L_80198098
L_80198094:
    li 0, 0x4
L_80198098:
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_801980AC
    lis 3, lbl_80539D38@ha
    lfs 3, lbl_80539D38@l(3)
    .4byte 0x48000008 # b .L_801980B0
L_801980AC:
    fmr 3, 31
L_801980B0:
    .4byte 0xC002B428 # lfs f0, lbl_8053E3C8@sda21(r0)
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820184 # bne .L_80198240
    .4byte 0xC002B3E8 # lfs f0, lbl_8053E388@sda21(r0)
    lis 3, lbl_80534C00@ha
    addi 3, 3, lbl_80534C00@l
    stfs 0, 0x27c(30)
    stfs 0, 0x278(30)
    stfs 0, 0x274(30)
    stfs 0, 0x44(30)
    stfs 0, 0x40(30)
    stfs 0, 0x3c(30)
    bl fn_80093340
    .4byte 0xC042B404 # lfs f2, lbl_8053E3A4@sda21(r0)
    .4byte 0xC002B3E8 # lfs f0, lbl_8053E388@sda21(r0)
    fmuls 1, 1, 2
    fcmpo cr0, 31, 0
    fctiwz 0, 1
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    extsh 3, 0
    addis 3, 3, 0x1
    addi 0, 3, -0x8000
    stw 0, 0x248(30)
    .4byte 0x4081004C # ble .L_80198160
    frsqrte 1, 31
    .4byte 0xC862B410 # lfd f3, lbl_8053E3B0@sda21(r0)
    .4byte 0xC842B418 # lfd f2, lbl_8053E3B8@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 31, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 31, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 31, 0, 2
    fmul 0, 1, 0
    fmul 31, 31, 0
    frsp 31, 31
    .4byte 0x48000088 # b .L_801981E4
L_80198160:
    .4byte 0xC802B420 # lfd f0, lbl_8053E3C0@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40800010 # bge .L_80198178
    lis 3, lbl_80539D38@ha
    lfs 31, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_801981E4
L_80198178:
    stfs 31, 0x10(1)
    lis 0, 0x7f80
    lwz 4, 0x10(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_801981A0
    .4byte 0x40800040 # bge .L_801981D0
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_801981B8
    .4byte 0x48000034 # b .L_801981D0
L_801981A0:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801981B0
    li 0, 0x1
    .4byte 0x48000028 # b .L_801981D4
L_801981B0:
    li 0, 0x2
    .4byte 0x48000020 # b .L_801981D4
L_801981B8:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801981C8
    li 0, 0x5
    .4byte 0x48000010 # b .L_801981D4
L_801981C8:
    li 0, 0x3
    .4byte 0x48000008 # b .L_801981D4
L_801981D0:
    li 0, 0x4
L_801981D4:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_801981E4
    lis 3, lbl_80539D38@ha
    lfs 31, lbl_80539D38@l(3)
L_801981E4:
    fctiwz 1, 31
    li 0, 0xd
    mr 4, 30
    .4byte 0xC002B42C # lfs f0, lbl_8053E3CC@sda21(r0)
    stfd 1, 0x18(1)
    lwz 3, 0x1c(1)
    stw 3, 0x24c(30)
    mtctr 0
L_80198204:
    lwz 3, 0x304(4)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80198218
    stfs 0, 0xb0(3)
    stfs 0, 0xb4(3)
L_80198218:
    addi 4, 4, 0x4
    .4byte 0x4200FFE8 # bdnz .L_80198204
    .4byte 0xC022B430 # lfs f1, lbl_8053E3D0@sda21(r0)
    li 0, 0x48
    .4byte 0xC002B3E4 # lfs f0, lbl_8053E384@sda21(r0)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    stw 0, 0x230(30)
L_80198240:
    lwz 31, 0x25c(30)
    cmpwi 31, 0x0
    .4byte 0x41800538 # blt .L_80198780
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820524 # beq .L_80198780
    lwz 0, 0x250(30)
    cmpwi 0, 0x0
    .4byte 0x41820518 # beq .L_80198780
    lfs 1, 0x10(3)
    lfs 0, 0x10(30)
    lfs 2, 0xc(3)
    fsubs 3, 1, 0
    lfs 1, 0xc(30)
    .4byte 0xC002B3E8 # lfs f0, lbl_8053E388@sda21(r0)
    fsubs 2, 2, 1
    fmuls 1, 3, 3
    fmadds 4, 2, 2, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_801982E0
    frsqrte 1, 4
    .4byte 0xC862B410 # lfd f3, lbl_8053E3B0@sda21(r0)
    .4byte 0xC842B418 # lfd f2, lbl_8053E3B8@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_80198364
L_801982E0:
    .4byte 0xC802B420 # lfd f0, lbl_8053E3C0@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_801982F8
    lis 4, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(4)
    .4byte 0x48000070 # b .L_80198364
L_801982F8:
    stfs 4, 0xc(1)
    lis 0, 0x7f80
    lwz 5, 0xc(1)
    rlwinm 4, 5, 0, 1, 8
    cmpw 4, 0
    .4byte 0x41820014 # beq .L_80198320
    .4byte 0x40800040 # bge .L_80198350
    cmpwi 4, 0x0
    .4byte 0x41820020 # beq .L_80198338
    .4byte 0x48000034 # b .L_80198350
L_80198320:
    clrlwi. 0, 5, 9
    .4byte 0x4182000C # beq .L_80198330
    li 0, 0x1
    .4byte 0x48000028 # b .L_80198354
L_80198330:
    li 0, 0x2
    .4byte 0x48000020 # b .L_80198354
L_80198338:
    clrlwi. 0, 5, 9
    .4byte 0x4182000C # beq .L_80198348
    li 0, 0x5
    .4byte 0x48000010 # b .L_80198354
L_80198348:
    li 0, 0x3
    .4byte 0x48000008 # b .L_80198354
L_80198350:
    li 0, 0x4
L_80198354:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80198364
    lis 4, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(4)
L_80198364:
    lwz 0, 0x250(30)
    cmpwi 0, 0x1
    .4byte 0x418000D0 # blt .L_8019843C
    .4byte 0xC002B434 # lfs f0, lbl_8053E3D4@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x408200C0 # bne .L_8019843C
    li 0, 0x5
    sth 0, 0x94(3)
    lwz 3, 0x250(30)
    subi 0, 3, 0x1
    stw 0, 0x250(30)
    lwz 0, 0x250(30)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_801983A8
    li 0, 0x0
    stw 0, 0x250(30)
L_801983A8:
    lwz 3, 0x250(30)
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_801983D0
    lwz 3, 0x250(30)
    bl fn_8022F3DC
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    stw 3, 0x1a4(4)
    .4byte 0x48000014 # b .L_801983E0
L_801983D0:
    lis 3, lbl_80529DEC@ha
    lwz 0, 0x250(30)
    addi 3, 3, lbl_80529DEC@l
    stw 0, 0x1a4(3)
L_801983E0:
    li 3, 0x32
    li 0, 0x49
    stw 3, 0x238(30)
    stw 0, 0x230(30)
    lwz 0, 0x304(30)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80198414
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x304(30)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x304(30)
L_80198414:
    lwz 0, 0x308(30)
    cmplwi 0, 0x0
    .4byte 0x41820364 # beq .L_80198780
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x308(30)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x308(30)
    .4byte 0x48000348 # b .L_80198780
L_8019843C:
    li 0, 0x0
    stw 0, 0x258(30)
    .4byte 0x4800033C # b .L_80198780
L_80198448:
    li 0, 0x0
    stw 0, 0x258(30)
    .4byte 0x48000330 # b .L_80198780
L_80198454:
    lis 4, 0x3
    li 5, 0x0
    addi 4, 4, 0x56
    bl fn_801F0E34
    lwz 31, 0x25c(30)
    cmpwi 31, 0x0
    .4byte 0x418002F4 # blt .L_80198760
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    mr. 31, 3
    .4byte 0x418202E0 # beq .L_80198760
    lwz 0, 0xb0(31)
    clrlwi 0, 0, 24
    cmplwi 0, 0xe
    .4byte 0x41820010 # beq .L_801984A0
    li 0, 0x0
    stw 0, 0x258(30)
    .4byte 0x480002E4 # b .L_80198780
L_801984A0:
    lwz 0, 0x250(30)
    cmpwi 0, 0x0
    .4byte 0x408200B0 # bne .L_80198558
    lwz 5, 0x24c(30)
    lis 4, 0x4330
    lwz 0, 0x248(30)
    lis 3, lbl_8052EBC0@ha
    xoris 5, 5, 0x8000
    stw 4, 0x18(1)
    addi 4, 3, lbl_8052EBC0@l
    rlwinm 0, 0, 30, 18, 28
    stw 5, 0x1c(1)
    addi 3, 30, 0xc
    .4byte 0xC862B440 # lfd f3, lbl_8053E3E0@sda21(r0)
    lfd 2, 0x18(1)
    lfs 0, 0xc(31)
    fsubs 4, 2, 3
    lfsx 1, 4, 0
    .4byte 0xC042B438 # lfs f2, lbl_8053E3D8@sda21(r0)
    .4byte 0xC062B3E4 # lfs f3, lbl_8053E384@sda21(r0)
    fmadds 1, 4, 1, 0
    bl fn_801F71A4
    lwz 5, 0x24c(30)
    lis 4, 0x4330
    lwz 0, 0x248(30)
    lis 3, lbl_8052EBC0@ha
    xoris 5, 5, 0x8000
    stw 4, 0x20(1)
    .4byte 0xC862B440 # lfd f3, lbl_8053E3E0@sda21(r0)
    addi 3, 3, lbl_8052EBC0@l
    stw 5, 0x24(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x10(31)
    lfd 2, 0x20(1)
    lfs 1, 0x4(3)
    addi 3, 30, 0x10
    fsubs 4, 2, 3
    .4byte 0xC042B438 # lfs f2, lbl_8053E3D8@sda21(r0)
    .4byte 0xC062B3E4 # lfs f3, lbl_8053E384@sda21(r0)
    fmadds 1, 4, 1, 0
    bl fn_801F71A4
    lwz 3, 0x248(30)
    addi 0, 3, 0x150
    stw 0, 0x248(30)
    .4byte 0x4800022C # b .L_80198780
L_80198558:
    lwz 31, 0x25c(30)
    cmpwi 31, 0x0
    .4byte 0x41800220 # blt .L_80198780
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182020C # beq .L_80198780
    lwz 0, 0x250(30)
    cmpwi 0, 0x0
    .4byte 0x41820200 # beq .L_80198780
    lfs 1, 0x10(3)
    lfs 0, 0x10(30)
    lfs 2, 0xc(3)
    fsubs 3, 1, 0
    lfs 1, 0xc(30)
    .4byte 0xC002B3E8 # lfs f0, lbl_8053E388@sda21(r0)
    fsubs 2, 2, 1
    fmuls 1, 3, 3
    fmadds 4, 2, 2, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_801985F8
    frsqrte 1, 4
    .4byte 0xC862B410 # lfd f3, lbl_8053E3B0@sda21(r0)
    .4byte 0xC842B418 # lfd f2, lbl_8053E3B8@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_8019867C
L_801985F8:
    .4byte 0xC802B420 # lfd f0, lbl_8053E3C0@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_80198610
    lis 4, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(4)
    .4byte 0x48000070 # b .L_8019867C
L_80198610:
    stfs 4, 0x8(1)
    lis 0, 0x7f80
    lwz 5, 0x8(1)
    rlwinm 4, 5, 0, 1, 8
    cmpw 4, 0
    .4byte 0x41820014 # beq .L_80198638
    .4byte 0x40800040 # bge .L_80198668
    cmpwi 4, 0x0
    .4byte 0x41820020 # beq .L_80198650
    .4byte 0x48000034 # b .L_80198668
L_80198638:
    clrlwi. 0, 5, 9
    .4byte 0x4182000C # beq .L_80198648
    li 0, 0x1
    .4byte 0x48000028 # b .L_8019866C
L_80198648:
    li 0, 0x2
    .4byte 0x48000020 # b .L_8019866C
L_80198650:
    clrlwi. 0, 5, 9
    .4byte 0x4182000C # beq .L_80198660
    li 0, 0x5
    .4byte 0x48000010 # b .L_8019866C
L_80198660:
    li 0, 0x3
    .4byte 0x48000008 # b .L_8019866C
L_80198668:
    li 0, 0x4
L_8019866C:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_8019867C
    lis 4, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(4)
L_8019867C:
    lwz 0, 0x250(30)
    cmpwi 0, 0x1
    .4byte 0x418000D0 # blt .L_80198754
    .4byte 0xC002B434 # lfs f0, lbl_8053E3D4@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x408200C0 # bne .L_80198754
    li 0, 0x5
    sth 0, 0x94(3)
    lwz 3, 0x250(30)
    subi 0, 3, 0x1
    stw 0, 0x250(30)
    lwz 0, 0x250(30)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_801986C0
    li 0, 0x0
    stw 0, 0x250(30)
L_801986C0:
    lwz 3, 0x250(30)
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_801986E8
    lwz 3, 0x250(30)
    bl fn_8022F3DC
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    stw 3, 0x1a4(4)
    .4byte 0x48000014 # b .L_801986F8
L_801986E8:
    lis 3, lbl_80529DEC@ha
    lwz 0, 0x250(30)
    addi 3, 3, lbl_80529DEC@l
    stw 0, 0x1a4(3)
L_801986F8:
    li 3, 0x32
    li 0, 0x49
    stw 3, 0x238(30)
    stw 0, 0x230(30)
    lwz 0, 0x304(30)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8019872C
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x304(30)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x304(30)
L_8019872C:
    lwz 0, 0x308(30)
    cmplwi 0, 0x0
    .4byte 0x4182004C # beq .L_80198780
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x308(30)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x308(30)
    .4byte 0x48000030 # b .L_80198780
L_80198754:
    li 0, 0x0
    stw 0, 0x258(30)
    .4byte 0x48000024 # b .L_80198780
L_80198760:
    li 0, 0x0
    stw 0, 0x258(30)
    .4byte 0x48000018 # b .L_80198780
L_8019876C:
    lwz 0, 0x238(30)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_80198780
    li 0, 0x0
    stw 0, 0x258(30)
L_80198780:
    lwz 0, 0x258(30)
    cmpwi 0, 0x0
    .4byte 0x4181004C # bgt .L_801987D4
    li 0, 0xd
    mr 5, 30
    li 4, 0x1
    li 3, 0x0
    mtctr 0
L_801987A0:
    lwz 6, 0x304(5)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_801987C0
    lwz 0, 0xf4(6)
    ori 0, 0, 0x1
    stw 0, 0xf4(6)
    stw 4, 0x24(6)
    stw 3, 0x304(5)
L_801987C0:
    addi 5, 5, 0x4
    .4byte 0x4200FFDC # bdnz .L_801987A0
    li 0, 0x0
    stb 0, 0x11c(30)
    .4byte 0x48000034 # b .L_80198804
L_801987D4:
    li 29, 0x0
    mr 31, 30
L_801987DC:
    lwz 3, 0x304(31)
    addi 4, 30, 0xc
    li 5, 0x1
    li 6, 0x5
    li 7, 0x1
    bl fn_8013CB44
    addi 29, 29, 0x1
    addi 31, 31, 0x4
    cmpwi 29, 0xd
    .4byte 0x4180FFDC # blt .L_801987DC
L_80198804:
    psq_l 31, 0x48(1), 0, 0
    lwz 0, 0x54(1)
    lfd 31, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

