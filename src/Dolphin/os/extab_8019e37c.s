# SYKY (vtable lbl_804A2B18, ctor fn_80201450) cluster, part 1/10
# (260B). draw() dispatcher - calls 2 sub-pieces (fn_8019E480/
# fn_8019E7A4, landed alongside), the already-landed fn_801F02BC, and
# 2 unfamiliar helpers fn_8022F340/fn_8022F478.
.section extab, "a"
.balign 4
.global etb_800078E4
etb_800078E4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800078E4, 8

.section extabindex, "a"
.balign 4
.global eti_800146D4
eti_800146D4:
    .4byte fn_8019E37C
    .4byte 0x00000104
    .4byte etb_800078E4
.size eti_800146D4, 12

.text
.balign 4
.global fn_8019E37C

fn_8019E37C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x268(3)
    cmpwi 0, 0x3
    .4byte 0x418200D0 # beq .L_8019E468
    .4byte 0x40800014 # bge .L_8019E3B0
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8019E3BC
    .4byte 0x408000B4 # bge .L_8019E45C
    .4byte 0x480000C0 # b .L_8019E46C
L_8019E3B0:
    cmpwi 0, 0x5
    .4byte 0x408000B8 # bge .L_8019E46C
    .4byte 0x480000A4 # b .L_8019E45C
L_8019E3BC:
    .4byte 0xC022B4C0 # lfs f1, lbl_8053E460@sda21(r0)
    lis 4, lbl_80468480@ha
    lwz 5, 0x264(31)
    addi 4, 4, lbl_80468480@l
    fmr 2, 1
    li 6, 0x0
    addi 5, 5, 0x1ab
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    bl fn_801F02BC
    lbz 0, 0x28c(31)
    cmplwi 0, 0x0
    .4byte 0x4182007C # beq .L_8019E46C
    li 31, 0x0
L_8019E3F8:
    mr 3, 31
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x40820048 # bne .L_8019E44C
    mr 3, 31
    bl fn_8022F340
    .4byte 0x80ED9350 # lwz r7, lbl_8053AF10@sda21(r0)
    li 0, 0x1
    slw 0, 0, 3
    lis 4, lbl_804C6330@ha
    lbz 6, 0x2c(7)
    clrlwi 0, 0, 24
    slwi 5, 3, 2
    addi 4, 4, lbl_804C6330@l
    or 6, 6, 0
    addi 0, 3, 0x28
    stb 6, 0x2c(7)
    lwzx 4, 4, 5
    .4byte 0x806D9350 # lwz r3, lbl_8053AF10@sda21(r0)
    subfic 4, 4, 0xa
    stbx 4, 3, 0
L_8019E44C:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FFA4 # blt .L_8019E3F8
    .4byte 0x48000014 # b .L_8019E46C
L_8019E45C:
    mr 3, 31
    bl fn_8019E480
    .4byte 0x48000008 # b .L_8019E46C
L_8019E468:
    bl fn_8019E7A4
L_8019E46C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

