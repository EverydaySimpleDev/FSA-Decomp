# SYKY cluster, part 6/10 (112B). Small helper - calls fn_80458880
# (sound-related, unfamiliar).
.section extab, "a"
.balign 4
.global etb_8000790C
etb_8000790C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000790C, 8

.section extabindex, "a"
.balign 4
.global eti_80014710
eti_80014710:
    .4byte fn_8019EE04
    .4byte 0x00000070
    .4byte etb_8000790C
.size eti_80014710, 12

.text
.balign 4
.global fn_8019EE04

fn_8019EE04:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x268(3)
    cmpwi 0, 0x3
    .4byte 0x40820040 # bne .L_8019EE60
    lwz 0, 0x230(31)
    cmpwi 0, 0xf
    .4byte 0x41820034 # beq .L_8019EE60
    .4byte 0xC022B504 # lfs f1, lbl_8053E4A4@sda21(r0)
    li 4, 0x6
    .4byte 0xC002B508 # lfs f0, lbl_8053E4A8@sda21(r0)
    li 5, -0x1
    stfs 1, 0x290(31)
    lfs 1, 0x10(31)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    li 0, 0xf
    stw 0, 0x230(31)
L_8019EE60:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

