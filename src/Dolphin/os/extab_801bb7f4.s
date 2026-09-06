.section extab, "a"
.balign 4
.global etb_80007DEC
etb_80007DEC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80007DEC, 8

.global etb_80007DF4
etb_80007DF4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80007DF4, 8

.global etb_80007DFC
etb_80007DFC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80007DFC, 8

.global etb_80007E04
etb_80007E04:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007E04, 8

.global etb_80007E0C
etb_80007E0C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80007E0C, 8

.global etb_80007E14
etb_80007E14:
    .4byte 0x108A0000
    .4byte 0x00000000
.size etb_80007E14, 8

.global etb_80007E1C
etb_80007E1C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80007E1C, 8

.section extabindex, "a"
.balign 4
.global eti_80014E60
eti_80014E60:
    .4byte fn_801BB7F4
    .4byte 0x00000050
    .4byte etb_80007DEC
.size eti_80014E60, 12

.global eti_80014E6C
eti_80014E6C:
    .4byte fn_801BB844
    .4byte 0x00000070
    .4byte etb_80007DF4
.size eti_80014E6C, 12

.global eti_80014E78
eti_80014E78:
    .4byte fn_801BB8B4
    .4byte 0x0000006C
    .4byte etb_80007DFC
.size eti_80014E78, 12

.global eti_80014E84
eti_80014E84:
    .4byte fn_801BB920
    .4byte 0x000000EC
    .4byte etb_80007E04
.size eti_80014E84, 12

.global eti_80014E90
eti_80014E90:
    .4byte fn_801BBA0C
    .4byte 0x00000838
    .4byte etb_80007E0C
.size eti_80014E90, 12

.global eti_80014E9C
eti_80014E9C:
    .4byte fn_801BC244
    .4byte 0x00000310
    .4byte etb_80007E14
.size eti_80014E9C, 12

.global eti_80014EA8
eti_80014EA8:
    .4byte fn_801BC554
    .4byte 0x00000488
    .4byte etb_80007E1C
.size eti_80014EA8, 12

.text
.balign 4
.global fn_801BB7F4
.global fn_801BB844
.global fn_801BB8B4
.global fn_801BB920
.global fn_801BBA0C
.global fn_801BC244
.global fn_801BC554

fn_801BB7F4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x5
    .4byte 0x4182002C # beq .L_801BB834
    .4byte 0x40800010 # bge .L_801BB81C
    cmpwi 0, 0x2
    .4byte 0x40800010 # bge .L_801BB824
    .4byte 0x4800001C # b .L_801BB834
L_801BB81C:
    cmpwi 0, 0x9
    .4byte 0x40800014 # bge .L_801BB834
L_801BB824:
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    addi 4, 3, 0xc
    lwz 3, 0x24(5)
    bl fn_8030C210
L_801BB834:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801BB844:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 31, 0x4(3)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 31
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_801BB894
    lfs 1, 0x14(30)
    .4byte 0xC002BC74 # lfs f0, lbl_8053EC14@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_801BB894
    mr 3, 30
    bl fn_801CEA60
    .4byte 0x4800000C # b .L_801BB89C
L_801BB894:
    mr 3, 30
    bl fn_801CE9F8
L_801BB89C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801BB8B4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x2b8(3)
    cmpwi 3, 0x0
    .4byte 0x4180003C # blt .L_801BB90C
    bl fn_8022DCD8
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_801BB90C
    lwz 3, 0x2b8(31)
    bl fn_8022DD74
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_801BB904
    lwz 0, 0x230(31)
    ori 0, 0, 0x8000
    stw 0, 0x230(31)
    lwz 0, 0x2b8(31)
    stw 0, 0x2c4(31)
L_801BB904:
    li 0, -0x1
    stw 0, 0x2b8(31)
L_801BB90C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801BB920:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC002BC6C # lfs f0, lbl_8053EC0C@sda21(r0)
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stfs 0, 0x3c(3)
    stfs 0, 0x40(3)
    stfs 0, 0x44(3)
    lwz 0, 0x248(3)
    cmplwi 0, 0xa
    .4byte 0x418100AC # bgt .L_801BB9F8
    lis 4, jumptable_804A3EE8@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804A3EE8@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    .4byte 0xC002BC78 # lfs f0, lbl_8053EC18@sda21(r0)
    stfs 0, 0x44(31)
    lwz 4, 0x2b8(31)
    cmpwi 4, 0x0
    .4byte 0x41800080 # blt .L_801BB9F8
    .4byte 0xC022BC68 # lfs f1, lbl_8053EC08@sda21(r0)
    mr 3, 31
    addi 5, 1, 0x10
    bl fn_801D00B4
    lfs 0, 0x10(1)
    stfs 0, 0x3c(31)
    lfs 0, 0x14(1)
    stfs 0, 0x40(31)
    .4byte 0x4800005C # b .L_801BB9F8
    .4byte 0xC002BC7C # lfs f0, lbl_8053EC1C@sda21(r0)
    stfs 0, 0x44(31)
    .4byte 0x48000050 # b .L_801BB9F8
    .4byte 0xC002BC80 # lfs f0, lbl_8053EC20@sda21(r0)
    stfs 0, 0x44(31)
    .4byte 0x48000044 # b .L_801BB9F8
    .4byte 0xC022BC80 # lfs f1, lbl_8053EC20@sda21(r0)
    addi 4, 31, 0x2b0
    addi 5, 1, 0x8
    bl fn_801D01A0
    lfs 0, 0x8(1)
    stfs 0, 0x3c(31)
    lfs 0, 0xc(1)
    stfs 0, 0x40(31)
    .4byte 0x48000020 # b .L_801BB9F8
    .4byte 0xC002BC7C # lfs f0, lbl_8053EC1C@sda21(r0)
    stfs 0, 0x44(31)
    .4byte 0x48000014 # b .L_801BB9F8
    .4byte 0xC002BC84 # lfs f0, lbl_8053EC24@sda21(r0)
    stfs 0, 0x44(31)
    .4byte 0x48000008 # b .L_801BB9F8
    bl fn_801CE4E8
L_801BB9F8:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801BBA0C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    bl fn_801BC244
    lwz 4, 0x248(31)
    cmplwi 4, 0xa
    .4byte 0x418107FC # bgt .L_801BC22C
    lis 3, jumptable_804A3F14@ha
    slwi 0, 4, 2
    addi 3, 3, jumptable_804A3F14@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 3, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 3, 0
    .4byte 0x418007D4 # blt .L_801BC22C
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x408207C8 # bne .L_801BC22C
    .4byte 0xC022BC88 # lfs f1, lbl_8053EC28@sda21(r0)
    mr 3, 31
    addi 4, 31, 0x24
    bl fn_801D05F8
    cmpwi 3, 0x0
    .4byte 0x418007B0 # blt .L_801BC22C
    stw 3, 0x2b8(31)
    mr 3, 31
    li 4, 0x1
    bl fn_801BC554
    .4byte 0x4800079C # b .L_801BC22C
    lwz 0, 0x24c(31)
    cmpwi 0, 0x3c
    .4byte 0x41800038 # blt .L_801BBAD4
    lwz 4, 0x2b8(31)
    mr 3, 31
    .4byte 0xC022BC8C # lfs f1, lbl_8053EC2C@sda21(r0)
    addi 5, 31, 0x24
    bl fn_801D08B4
    clrlwi 0, 3, 24
    cntlzw 0, 0
    extrwi. 0, 0, 8, 19
    .4byte 0x41820014 # beq .L_801BBAD4
    mr 3, 31
    li 4, 0x5
    bl fn_801BC554
    .4byte 0x4800075C # b .L_801BC22C
L_801BBAD4:
    lfs 2, 0x14(31)
    .4byte 0xC002BC88 # lfs f0, lbl_8053EC28@sda21(r0)
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_801BBAF8
    mr 3, 31
    li 4, 0x2
    bl fn_801BC554
    .4byte 0x48000738 # b .L_801BC22C
L_801BBAF8:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x10
    .4byte 0x4180072C # blt .L_801BC22C
    lwz 0, 0x278(31)
    cmpwi 0, 0x3
    .4byte 0x418200C0 # beq .L_801BBBCC
    .4byte 0x4080071C # bge .L_801BC22C
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_801BBB20
    .4byte 0x48000710 # b .L_801BC22C
L_801BBB20:
    lwz 0, 0x248(31)
    cmpwi 0, 0x7
    .4byte 0x40800010 # bge .L_801BBB38
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801BBB48
    .4byte 0x48000024 # b .L_801BBB58
L_801BBB38:
    cmpwi 0, 0x9
    .4byte 0x4182000C # beq .L_801BBB48
    .4byte 0x40800018 # bge .L_801BBB58
    .4byte 0x4800000C # b .L_801BBB50
L_801BBB48:
    li 0, 0x0
    .4byte 0x48000054 # b .L_801BBBA0
L_801BBB50:
    li 0, 0xff
    .4byte 0x4800004C # b .L_801BBBA0
L_801BBB58:
    .4byte 0xC002BC60 # lfs f0, lbl_8053EC00@sda21(r0)
    .4byte 0xC022BC64 # lfs f1, lbl_8053EC04@sda21(r0)
    fsubs 2, 2, 0
    .4byte 0xC002BC68 # lfs f0, lbl_8053EC08@sda21(r0)
    fmuls 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_801BBB7C
    fmr 1, 0
    .4byte 0x48000014 # b .L_801BBB8C
L_801BBB7C:
    .4byte 0xC002BC6C # lfs f0, lbl_8053EC0C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_801BBB8C
    fmr 1, 0
L_801BBB8C:
    .4byte 0xC002BC70 # lfs f0, lbl_8053EC10@sda21(r0)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
L_801BBBA0:
    clrlwi 0, 0, 24
    cmplwi 0, 0x96
    .4byte 0x41800684 # blt .L_801BC22C
    cmplwi 0, 0xc8
    .4byte 0x4181067C # bgt .L_801BC22C
    addi 3, 31, 0x270
    li 4, 0x3
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000664 # b .L_801BC22C
L_801BBBCC:
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820654 # beq .L_801BC22C
    addi 3, 31, 0x270
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x4800063C # b .L_801BC22C
    lwz 4, 0x2b8(31)
    mr 3, 31
    .4byte 0xC022BC8C # lfs f1, lbl_8053EC2C@sda21(r0)
    addi 5, 31, 0x24
    bl fn_801D08B4
    clrlwi 0, 3, 24
    cntlzw 0, 0
    extrwi. 0, 0, 8, 19
    .4byte 0x41820014 # beq .L_801BBC28
    mr 3, 31
    li 4, 0x5
    bl fn_801BC554
    .4byte 0x48000608 # b .L_801BC22C
L_801BBC28:
    lfs 1, 0x14(31)
    .4byte 0xC002BC90 # lfs f0, lbl_8053EC30@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820018 # bne .L_801BBC50
    stfs 0, 0x14(31)
    mr 3, 31
    li 4, 0x3
    bl fn_801BC554
    .4byte 0x480005E0 # b .L_801BC22C
L_801BBC50:
    lwz 0, 0x278(31)
    cmpwi 0, 0x3
    .4byte 0x408205D4 # bne .L_801BC22C
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x418205C4 # beq .L_801BC22C
    addi 3, 31, 0x270
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x480005AC # b .L_801BC22C
    cmpwi 4, 0xa
    li 30, 0x0
    .4byte 0x41820018 # beq .L_801BBCA4
    cmpwi 4, 0x3
    .4byte 0x408200E0 # bne .L_801BBD74
    lwz 0, 0x280(31)
    cmpwi 0, 0x1
    .4byte 0x408200D4 # bne .L_801BBD74
L_801BBCA4:
    lwz 3, 0x2b8(31)
    cmpwi 3, 0x0
    .4byte 0x418000C8 # blt .L_801BBD74
    bl fn_8022DCD8
    clrlwi. 0, 3, 24
    .4byte 0x408200BC # bne .L_801BBD74
    lwz 3, 0x4(31)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_801BBCEC
    lwz 3, 0x2ac(31)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801BBCEC
    lwz 3, 0x2b8(31)
    bl fn_801CD1D0
    clrlwi. 0, 3, 24
    .4byte 0x4082008C # bne .L_801BBD74
L_801BBCEC:
    .4byte 0xC022BC94 # lfs f1, lbl_8053EC34@sda21(r0)
    mr 3, 31
    .4byte 0xC002BC98 # lfs f0, lbl_8053EC38@sda21(r0)
    li 4, -0x1
    stfs 1, 0x60(31)
    .4byte 0xC022BC9C # lfs f1, lbl_8053EC3C@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002BCA0 # lfs f0, lbl_8053EC40@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    bl fn_801F2740
    lwz 0, 0x2b8(31)
    li 4, 0x1
    clrlwi 3, 3, 24
    slw 0, 4, 0
    and. 0, 0, 3
    .4byte 0x41820008 # beq .L_801BBD34
    mr 30, 4
L_801BBD34:
    .4byte 0xC022BCA4 # lfs f1, lbl_8053EC44@sda21(r0)
    .4byte 0xC002BCA8 # lfs f0, lbl_8053EC48@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022BCAC # lfs f1, lbl_8053EC4C@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002BC9C # lfs f0, lbl_8053EC3C@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
L_801BBD74:
    clrlwi. 0, 30, 24
    .4byte 0x41820054 # beq .L_801BBDCC
    lwz 3, 0x2b8(31)
    li 4, 0x0
    bl fn_8022DE10
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801BBDA0
    mr 3, 31
    li 4, 0x4
    bl fn_801BC554
    .4byte 0x48000490 # b .L_801BC22C
L_801BBDA0:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x40810484 # ble .L_801BC22C
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820474 # beq .L_801BC22C
    mr 3, 31
    li 4, 0x5
    bl fn_801BC554
    .4byte 0x48000464 # b .L_801BC22C
L_801BBDCC:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x40810458 # ble .L_801BC22C
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820448 # beq .L_801BC22C
    mr 3, 31
    li 4, 0x5
    bl fn_801BC554
    .4byte 0x48000438 # b .L_801BC22C
    lfs 1, 0x14(31)
    .4byte 0xC002BCB0 # lfs f0, lbl_8053EC50@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820424 # bne .L_801BC22C
    lwz 3, 0x2ac(31)
    lwz 0, 0x4(31)
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_801BBE2C
    mr 3, 31
    li 4, 0x7
    bl fn_801BC554
    .4byte 0x48000404 # b .L_801BC22C
L_801BBE2C:
    stfs 0, 0x14(31)
    mr 3, 31
    li 4, 0x6
    bl fn_801BC554
    .4byte 0x480003F0 # b .L_801BC22C
    .4byte 0xC022BC88 # lfs f1, lbl_8053EC28@sda21(r0)
    mr 3, 31
    addi 4, 31, 0x24
    bl fn_801D05F8
    lwz 0, 0x24c(31)
    cmpwi 0, 0x64
    .4byte 0x4180002C # blt .L_801BBE84
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x40820020 # bne .L_801BBE84
    cmpwi 3, 0x0
    .4byte 0x41800018 # blt .L_801BBE84
    stw 3, 0x2b8(31)
    mr 3, 31
    li 4, 0x1
    bl fn_801BC554
    .4byte 0x480003AC # b .L_801BC22C
L_801BBE84:
    lfs 1, 0x14(31)
    .4byte 0xC002BC60 # lfs f0, lbl_8053EC00@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820398 # bne .L_801BC22C
    lwz 0, 0x2a8(31)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_801BBEB4
    mr 3, 31
    li 4, 0x0
    bl fn_801BC554
    .4byte 0x4800037C # b .L_801BC22C
L_801BBEB4:
    mr 3, 31
    li 4, 0x9
    bl fn_801BC554
    .4byte 0x4800036C # b .L_801BC22C
    lfs 1, 0x2b0(31)
    lfs 0, 0xc(31)
    .4byte 0xC042BCB4 # lfs f2, lbl_8053EC54@sda21(r0)
    fsubs 0, 1, 0
    fabs 0, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800350 # bge .L_801BC22C
    lfs 1, 0x2b4(31)
    lfs 0, 0x10(31)
    fsubs 0, 1, 0
    fabs 0, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800338 # bge .L_801BC22C
    lwz 3, 0x2b8(31)
    bl fn_8022DD74
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_801BBF1C
    lwz 0, 0x230(31)
    ori 0, 0, 0x8000
    stw 0, 0x230(31)
    lwz 0, 0x2b8(31)
    stw 0, 0x2c4(31)
L_801BBF1C:
    mr 3, 31
    li 4, 0x5
    bl fn_801BC554
    .4byte 0x48000304 # b .L_801BC22C
    lfs 1, 0x14(31)
    .4byte 0xC002BC60 # lfs f0, lbl_8053EC00@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x408202F0 # bne .L_801BC22C
    stfs 0, 0x14(31)
    addi 5, 1, 0x14
    .4byte 0xC022BC90 # lfs f1, lbl_8053EC30@sda21(r0)
    lwz 0, 0x2ac(31)
    stw 0, 0x4(31)
    lfs 0, 0x2b0(31)
    stfs 0, 0xc(31)
    lfs 0, 0x2b4(31)
    stfs 0, 0x10(31)
    lfs 3, 0x10(31)
    lfs 0, 0xc(31)
    lfs 2, 0x14(31)
    stfs 0, 0x8(1)
    fsubs 0, 2, 1
    stfs 3, 0xc(1)
    psq_l 1, 0x8(1), 0, 0
    stfs 0, 0x1c(1)
    psq_st 1, 0x0(5), 0, 0
    stfs 0, 0x10(1)
    lwz 3, 0x2b8(31)
    lwz 4, 0x2ac(31)
    bl fn_802316C8
    mr 3, 31
    li 4, 0x8
    bl fn_801BC554
    .4byte 0x48000288 # b .L_801BC22C
    lfs 1, 0x14(31)
    .4byte 0xC002BCB0 # lfs f0, lbl_8053EC50@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820274 # bne .L_801BC22C
    stfs 0, 0x14(31)
    lwz 3, 0x2b8(31)
    bl fn_8022DD74
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_801BBFE4
    lwz 0, 0x230(31)
    ori 0, 0, 0x8000
    stw 0, 0x230(31)
    lwz 0, 0x2b8(31)
    stw 0, 0x2c4(31)
L_801BBFE4:
    mr 3, 31
    li 4, 0x5
    bl fn_801BC554
    .4byte 0x4800023C # b .L_801BC22C
    lwz 3, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 3, 0
    .4byte 0x4180022C # blt .L_801BC22C
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    lwz 5, 0x4(31)
    addi 4, 4, 0x5249
    addi 6, 31, 0xc
    li 7, 0x3
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 3, 31
    li 4, 0xa
    bl fn_801BC554
    .4byte 0x480001F8 # b .L_801BC22C
    lwz 0, 0x2e4(31)
    li 6, 0x0
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_801BC050
    li 6, 0x1
    .4byte 0x4800005C # b .L_801BC0A8
L_801BC050:
    lwz 3, 0x2ec(31)
    addi 0, 3, 0x1
    stw 0, 0x2ec(31)
    lwz 4, 0x2e4(31)
    lwz 5, 0x2ec(31)
    slwi 0, 4, 2
    add 3, 31, 0
    lwz 0, 0x2d8(3)
    cmpw 5, 0
    .4byte 0x41800034 # blt .L_801BC0A8
    addi 0, 4, 0x1
    stw 0, 0x2e4(31)
    lwz 0, 0x2e4(31)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_801BC094
    li 6, 0x1
    .4byte 0x48000018 # b .L_801BC0A8
L_801BC094:
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 0, 0x2cc(3)
    stw 0, 0x2e8(31)
    stw 6, 0x2ec(31)
L_801BC0A8:
    clrlwi. 0, 6, 24
    .4byte 0x41820038 # beq .L_801BC0E4
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    lwz 5, 0x4(31)
    addi 4, 4, 0x5249
    addi 6, 31, 0xc
    li 7, 0x3
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 3, 31
    li 4, 0x9
    bl fn_801BC554
    .4byte 0x4800014C # b .L_801BC22C
L_801BC0E4:
    lwz 0, 0x2e8(31)
    mr 3, 31
    .4byte 0xC022BC88 # lfs f1, lbl_8053EC28@sda21(r0)
    addi 4, 31, 0xc
    stw 0, 0x98(31)
    bl fn_801D05F8
    stw 3, 0x2b8(31)
    lwz 3, 0x2b8(31)
    cmpwi 3, 0x0
    .4byte 0x41800124 # blt .L_801BC22C
    lwz 0, 0x248(31)
    li 30, 0x0
    cmpwi 0, 0xa
    .4byte 0x41820018 # beq .L_801BC130
    cmpwi 0, 0x3
    .4byte 0x408200DC # bne .L_801BC1FC
    lwz 0, 0x280(31)
    cmpwi 0, 0x1
    .4byte 0x408200D0 # bne .L_801BC1FC
L_801BC130:
    cmpwi 3, 0x0
    .4byte 0x418000C8 # blt .L_801BC1FC
    bl fn_8022DCD8
    clrlwi. 0, 3, 24
    .4byte 0x408200BC # bne .L_801BC1FC
    lwz 3, 0x4(31)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_801BC174
    lwz 3, 0x2ac(31)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801BC174
    lwz 3, 0x2b8(31)
    bl fn_801CD1D0
    clrlwi. 0, 3, 24
    .4byte 0x4082008C # bne .L_801BC1FC
L_801BC174:
    .4byte 0xC022BC94 # lfs f1, lbl_8053EC34@sda21(r0)
    mr 3, 31
    .4byte 0xC002BC98 # lfs f0, lbl_8053EC38@sda21(r0)
    li 4, -0x1
    stfs 1, 0x60(31)
    .4byte 0xC022BC9C # lfs f1, lbl_8053EC3C@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002BCA0 # lfs f0, lbl_8053EC40@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    bl fn_801F2740
    lwz 0, 0x2b8(31)
    li 4, 0x1
    clrlwi 3, 3, 24
    slw 0, 4, 0
    and. 0, 0, 3
    .4byte 0x41820008 # beq .L_801BC1BC
    mr 30, 4
L_801BC1BC:
    .4byte 0xC022BCA4 # lfs f1, lbl_8053EC44@sda21(r0)
    .4byte 0xC002BCA8 # lfs f0, lbl_8053EC48@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022BCAC # lfs f1, lbl_8053EC4C@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002BC9C # lfs f0, lbl_8053EC3C@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
L_801BC1FC:
    clrlwi. 0, 30, 24
    .4byte 0x4182002C # beq .L_801BC22C
    lwz 3, 0x2b8(31)
    li 4, 0x0
    bl fn_8022DE10
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_801BC22C
    li 0, 0x2
    mr 3, 31
    stw 0, 0x98(31)
    li 4, 0x4
    bl fn_801BC554
L_801BC22C:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_801BC244:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x3
    .4byte 0x408000D4 # bge .L_801BC348
    cmpwi 0, 0x1
    .4byte 0x40800008 # bge .L_801BC284
    .4byte 0x480000C8 # b .L_801BC348
L_801BC284:
    cmpwi 0, 0x7
    .4byte 0x40800010 # bge .L_801BC298
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801BC2A8
    .4byte 0x48000024 # b .L_801BC2B8
L_801BC298:
    cmpwi 0, 0x9
    .4byte 0x4182000C # beq .L_801BC2A8
    .4byte 0x40800018 # bge .L_801BC2B8
    .4byte 0x4800000C # b .L_801BC2B0
L_801BC2A8:
    li 30, 0x0
    .4byte 0x48000058 # b .L_801BC304
L_801BC2B0:
    li 30, 0xff
    .4byte 0x48000050 # b .L_801BC304
L_801BC2B8:
    lfs 2, 0x14(31)
    .4byte 0xC002BC60 # lfs f0, lbl_8053EC00@sda21(r0)
    .4byte 0xC022BC64 # lfs f1, lbl_8053EC04@sda21(r0)
    fsubs 2, 2, 0
    .4byte 0xC002BC68 # lfs f0, lbl_8053EC08@sda21(r0)
    fmuls 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_801BC2E0
    fmr 1, 0
    .4byte 0x48000014 # b .L_801BC2F0
L_801BC2E0:
    .4byte 0xC002BC6C # lfs f0, lbl_8053EC0C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_801BC2F0
    fmr 1, 0
L_801BC2F0:
    .4byte 0xC002BC70 # lfs f0, lbl_8053EC10@sda21(r0)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 30, 0x1c(1)
L_801BC304:
    mr 3, 31
    bl fn_801F1184
    clrlwi 4, 30, 24
    lis 0, 0x4330
    stw 4, 0x1c(1)
    lis 4, 0x4
    .4byte 0xC842BCC0 # lfd f2, lbl_8053EC60@sda21(r0)
    addi 4, 4, 0xa3
    stw 0, 0x18(1)
    li 5, 0x0
    .4byte 0xC002BC70 # lfs f0, lbl_8053EC10@sda21(r0)
    lfd 1, 0x18(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    stfs 0, 0x4c(3)
    mr 3, 31
    bl fn_801F0E34
L_801BC348:
    lwz 0, 0x248(31)
    cmpwi 0, 0x3
    .4byte 0x40800080 # bge .L_801BC3D0
    cmpwi 0, 0x1
    .4byte 0x40800008 # bge .L_801BC360
    .4byte 0x48000074 # b .L_801BC3D0
L_801BC360:
    lwz 5, 0x2bc(31)
    mr 3, 31
    .4byte 0xC022BC6C # lfs f1, lbl_8053EC0C@sda21(r0)
    addi 4, 31, 0xc
    addi 0, 5, 0x1
    stw 0, 0x2bc(31)
    bl fn_801D05F8
    lwz 0, 0x2b8(31)
    cmpw 3, 0
    .4byte 0x4182004C # beq .L_801BC3D0
    cmpwi 3, 0x0
    .4byte 0x4080002C # bge .L_801BC3B8
    lwz 0, 0x248(31)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_801BC3A8
    lwz 0, 0x24c(31)
    cmpwi 0, 0x3c
    .4byte 0x4180002C # blt .L_801BC3D0
L_801BC3A8:
    mr 3, 31
    li 4, 0x5
    bl fn_801BC554
    .4byte 0x4800001C # b .L_801BC3D0
L_801BC3B8:
    lwz 0, 0x2bc(31)
    cmpwi 0, 0x2d
    .4byte 0x41800010 # blt .L_801BC3D0
    stw 3, 0x2b8(31)
    li 0, 0x0
    stw 0, 0x2bc(31)
L_801BC3D0:
    lwz 0, 0x248(31)
    li 3, 0x0
    cmpwi 0, 0x5
    .4byte 0x41820020 # beq .L_801BC3FC
    .4byte 0x40800010 # bge .L_801BC3F0
    cmpwi 0, 0x4
    .4byte 0x40800010 # bge .L_801BC3F8
    .4byte 0x48000010 # b .L_801BC3FC
L_801BC3F0:
    cmpwi 0, 0x9
    .4byte 0x40800008 # bge .L_801BC3FC
L_801BC3F8:
    li 3, 0x1
L_801BC3FC:
    clrlwi. 0, 3, 24
    .4byte 0x41820094 # beq .L_801BC494
    lwz 3, 0x2b8(31)
    bl fn_8022DCD8
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_801BC424
    mr 3, 31
    li 4, 0x5
    bl fn_801BC554
    .4byte 0x48000074 # b .L_801BC494
L_801BC424:
    lwz 3, 0x2b8(31)
    bl fn_8023E724
    lfs 2, 0x8(3)
    lfs 1, 0x14(31)
    .4byte 0xC002BC90 # lfs f0, lbl_8053EC30@sda21(r0)
    fsubs 1, 1, 2
    lwz 3, 0x2b8(31)
    fsubs 30, 1, 0
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x10(31)
    lwz 3, 0x2b8(31)
    fsubs 31, 0, 1
    bl fn_8023E724
    lfs 2, 0x0(3)
    addi 4, 1, 0x8
    lfs 0, 0xc(31)
    .4byte 0xC022BCB8 # lfs f1, lbl_8053EC58@sda21(r0)
    fsubs 2, 0, 2
    stfs 31, 0xc(1)
    fmuls 0, 31, 1
    stfs 30, 0x10(1)
    fmuls 1, 2, 1
    stfs 2, 0x8(1)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    lwz 3, 0x2b8(31)
    bl fn_8023DFF4
L_801BC494:
    lwz 0, 0x248(31)
    li 3, 0x0
    cmpwi 0, 0x9
    .4byte 0x40800014 # bge .L_801BC4B4
    cmpwi 0, 0x6
    .4byte 0x40800008 # bge .L_801BC4B0
    .4byte 0x48000008 # b .L_801BC4B4
L_801BC4B0:
    li 3, 0x1
L_801BC4B4:
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_801BC4FC
    lwz 3, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2c0(31)
    lwz 0, 0x2c0(31)
    cmpwi 0, 0x78
    .4byte 0x4180002C # blt .L_801BC4FC
    lwz 3, 0x2b8(31)
    bl fn_80236228
    cmpwi 3, 0x14
    .4byte 0x41800014 # blt .L_801BC4F4
    lwz 3, 0x2b8(31)
    li 4, 0x14
    li 5, 0x1
    bl fn_80236074
L_801BC4F4:
    li 0, 0x0
    stw 0, 0x2c0(31)
L_801BC4FC:
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 16, 16
    .4byte 0x41820028 # beq .L_801BC52C
    lwz 3, 0x2c4(31)
    bl fn_8022DD74
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_801BC52C
    lwz 3, 0x230(31)
    li 0, -0x1
    rlwinm 3, 3, 0, 17, 15
    stw 3, 0x230(31)
    stw 0, 0x2c4(31)
L_801BC52C:
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 0, 0x54(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_801BC554:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    cmplwi 31, 0xa
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0x418103C8 # bgt .L_801BC93C
    lis 3, jumptable_804A3F40@ha
    slwi 0, 31, 2
    addi 3, 3, jumptable_804A3F40@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x230(30)
    li 5, -0x1
    li 4, 0x0
    .4byte 0xC022BC68 # lfs f1, lbl_8053EC08@sda21(r0)
    rlwinm 0, 0, 0, 19, 17
    .4byte 0xC002BCC8 # lfs f0, lbl_8053EC68@sda21(r0)
    stw 0, 0x230(30)
    li 0, 0x2
    li 3, 0x79
    stw 5, 0x2b8(30)
    stw 4, 0x2bc(30)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    stw 0, 0x98(30)
    bl fn_801CD664
    addi 0, 3, 0x3c
    .4byte 0xC002BC60 # lfs f0, lbl_8053EC00@sda21(r0)
    stw 0, 0x250(30)
    lfs 2, 0x28(30)
    lfs 1, 0x24(30)
    stfs 1, 0xc(30)
    stfs 2, 0x10(30)
    stfs 0, 0x14(30)
    lwz 0, 0x8(30)
    stw 0, 0x4(30)
    .4byte 0x48000320 # b .L_801BC93C
    li 0, 0x0
    .4byte 0xC022BCA4 # lfs f1, lbl_8053EC44@sda21(r0)
    stw 0, 0x2bc(30)
    addi 3, 30, 0x270
    .4byte 0xC002BCA8 # lfs f0, lbl_8053EC48@sda21(r0)
    li 4, 0x0
    stfs 1, 0x60(30)
    li 5, 0x0
    .4byte 0xC022BCAC # lfs f1, lbl_8053EC4C@sda21(r0)
    li 6, 0x0
    stfs 0, 0x64(30)
    .4byte 0xC002BC9C # lfs f0, lbl_8053EC3C@sda21(r0)
    stfs 1, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    bl fn_801D22DC
    lwz 0, 0x248(30)
    cmpwi 0, 0x5
    .4byte 0x418202B8 # beq .L_801BC93C
    lfs 2, 0x28(30)
    lfs 1, 0x24(30)
    .4byte 0xC002BC60 # lfs f0, lbl_8053EC00@sda21(r0)
    stfs 1, 0xc(30)
    stfs 2, 0x10(30)
    stfs 0, 0x14(30)
    lwz 0, 0x8(30)
    stw 0, 0x4(30)
    .4byte 0x48000294 # b .L_801BC93C
    li 0, 0x0
    .4byte 0xC022BCA4 # lfs f1, lbl_8053EC44@sda21(r0)
    stw 0, 0x2bc(30)
    addi 3, 30, 0x270
    .4byte 0xC002BCA8 # lfs f0, lbl_8053EC48@sda21(r0)
    li 4, 0x2
    stfs 1, 0x60(30)
    li 5, 0x0
    .4byte 0xC022BCAC # lfs f1, lbl_8053EC4C@sda21(r0)
    li 6, 0x0
    stfs 0, 0x64(30)
    .4byte 0xC002BC9C # lfs f0, lbl_8053EC3C@sda21(r0)
    stfs 1, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    bl fn_801D22DC
    .4byte 0x48000234 # b .L_801BC93C
    lwz 4, 0x230(30)
    li 0, 0x0
    .4byte 0xC062BCA4 # lfs f3, lbl_8053EC44@sda21(r0)
    addi 3, 30, 0x270
    ori 4, 4, 0x2000
    .4byte 0xC042BCA8 # lfs f2, lbl_8053EC48@sda21(r0)
    stw 4, 0x230(30)
    li 4, 0x1
    .4byte 0xC022BCAC # lfs f1, lbl_8053EC4C@sda21(r0)
    li 5, 0x0
    stw 0, 0x2bc(30)
    li 6, 0x0
    .4byte 0xC002BC9C # lfs f0, lbl_8053EC3C@sda21(r0)
    stfs 3, 0x60(30)
    stfs 2, 0x64(30)
    stfs 1, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    bl fn_801D22DC
    cmpwi 31, 0x4
    .4byte 0x408201C4 # bne .L_801BC93C
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x418201B8 # beq .L_801BC93C
    lwz 3, 0x2b8(30)
    bl fn_8023E604
    lfs 0, 0x0(3)
    stfs 0, 0x2b0(30)
    lfs 0, 0x4(3)
    stfs 0, 0x2b4(30)
    .4byte 0x4800019C # b .L_801BC93C
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x2b8(30)
    addi 3, 30, 0x270
    .4byte 0xC022BCA4 # lfs f1, lbl_8053EC44@sda21(r0)
    li 4, 0x0
    stw 0, 0x2bc(30)
    li 5, 0x0
    .4byte 0xC002BCA8 # lfs f0, lbl_8053EC48@sda21(r0)
    li 6, 0x0
    stfs 1, 0x60(30)
    .4byte 0xC022BCAC # lfs f1, lbl_8053EC4C@sda21(r0)
    stfs 0, 0x64(30)
    .4byte 0xC002BC9C # lfs f0, lbl_8053EC3C@sda21(r0)
    stfs 1, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    bl fn_801D22DC
    .4byte 0x48000134 # b .L_801BC93C
    lwz 0, 0x230(30)
    li 5, -0x1
    li 4, 0x0
    .4byte 0xC022BC68 # lfs f1, lbl_8053EC08@sda21(r0)
    rlwinm 0, 0, 0, 19, 17
    .4byte 0xC002BCC8 # lfs f0, lbl_8053EC68@sda21(r0)
    stw 0, 0x230(30)
    li 0, 0x2
    li 3, 0xb5
    stw 5, 0x2b8(30)
    stw 4, 0x2bc(30)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    stw 0, 0x98(30)
    bl fn_801CD664
    addi 0, 3, 0xb4
    .4byte 0xC002BC6C # lfs f0, lbl_8053EC0C@sda21(r0)
    stw 0, 0x250(30)
    stfs 0, 0x254(30)
    stfs 0, 0x258(30)
    lfs 0, 0x24(30)
    stfs 0, 0xc(30)
    lfs 0, 0x28(30)
    stfs 0, 0x10(30)
    lfs 0, 0x2c(30)
    stfs 0, 0x14(30)
    lwz 0, 0x8(30)
    stw 0, 0x4(30)
    .4byte 0x48000098 # b .L_801BC93C
    lwz 3, 0x230(30)
    li 0, -0x1
    li 7, 0x0
    .4byte 0xC082BCA4 # lfs f4, lbl_8053EC44@sda21(r0)
    rlwinm 3, 3, 0, 19, 17
    .4byte 0xC062BCA8 # lfs f3, lbl_8053EC48@sda21(r0)
    stw 3, 0x230(30)
    addi 3, 30, 0x270
    .4byte 0xC042BCAC # lfs f2, lbl_8053EC4C@sda21(r0)
    li 4, 0x4
    stw 0, 0x2b8(30)
    li 5, 0x2
    .4byte 0xC022BC9C # lfs f1, lbl_8053EC3C@sda21(r0)
    stw 7, 0x2bc(30)
    .4byte 0xC002BCCC # lfs f0, lbl_8053EC6C@sda21(r0)
    stfs 4, 0x60(30)
    stfs 3, 0x64(30)
    stfs 2, 0x68(30)
    stfs 1, 0x6c(30)
    lfs 1, 0x60(30)
    stfs 1, 0x70(30)
    lfs 1, 0x64(30)
    stfs 1, 0x74(30)
    lfs 1, 0x68(30)
    stfs 1, 0x78(30)
    lfs 1, 0x6c(30)
    stfs 1, 0x7c(30)
    stfs 0, 0x254(30)
    stfs 0, 0x258(30)
    stw 7, 0x2e4(30)
    lwz 0, 0x2e4(30)
    slwi 0, 0, 2
    add 6, 30, 0
    lwz 0, 0x2cc(6)
    stw 0, 0x2e8(30)
    stw 7, 0x2ec(30)
    bl fn_801D22A0
L_801BC93C:
    li 3, 0x0
    stw 3, 0x24c(30)
    stw 31, 0x248(30)
    lwz 0, 0x248(30)
    cmpwi 0, 0x9
    .4byte 0x40800014 # bge .L_801BC964
    cmpwi 0, 0x6
    .4byte 0x40800008 # bge .L_801BC960
    .4byte 0x48000008 # b .L_801BC964
L_801BC960:
    li 3, 0x1
L_801BC964:
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_801BC974
    li 0, 0x0
    stw 0, 0x2c0(30)
L_801BC974:
    lwz 0, 0x248(30)
    li 3, 0x0
    cmpwi 0, 0x5
    .4byte 0x41820020 # beq .L_801BC9A0
    .4byte 0x40800010 # bge .L_801BC994
    cmpwi 0, 0x4
    .4byte 0x40800010 # bge .L_801BC99C
    .4byte 0x48000010 # b .L_801BC9A0
L_801BC994:
    cmpwi 0, 0x9
    .4byte 0x40800008 # bge .L_801BC9A0
L_801BC99C:
    li 3, 0x1
L_801BC9A0:
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801BC9B8
    lis 3, 0x4
    addi 0, 3, 0x4
    stw 0, 0xb0(30)
    .4byte 0x48000010 # b .L_801BC9C4
L_801BC9B8:
    lis 3, 0x4
    addi 0, 3, 0x1101
    stw 0, 0xb0(30)
L_801BC9C4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

