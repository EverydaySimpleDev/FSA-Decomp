# Fresh-gap-hunt batch 16 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_80008F3C
etb_80008F3C:
    .4byte 0x380A0000
    .4byte 0x00000000
.size etb_80008F3C, 8

.global etb_80008F44
etb_80008F44:
    .4byte 0x408A0000
    .4byte 0x00000000
.size etb_80008F44, 8

.global etb_80008F4C
etb_80008F4C:
    .4byte 0x38080000
    .4byte 0x00000000
.size etb_80008F4C, 8

.global etb_80008F54
etb_80008F54:
    .4byte 0x38080000
    .4byte 0x00000000
.size etb_80008F54, 8

.section extabindex, "a"
.balign 4
.global eti_800166B4
eti_800166B4:
    .4byte fn_801F7274
    .4byte 0x000000B8
    .4byte etb_80008F3C
.size eti_800166B4, 12

.global eti_800166C0
eti_800166C0:
    .4byte fn_801F732C
    .4byte 0x00000138
    .4byte etb_80008F44
.size eti_800166C0, 12

.global eti_800166CC
eti_800166CC:
    .4byte fn_801F7464
    .4byte 0x000000A8
    .4byte etb_80008F4C
.size eti_800166CC, 12

.global eti_800166D8
eti_800166D8:
    .4byte fn_801F750C
    .4byte 0x000000A8
    .4byte etb_80008F54
.size eti_800166D8, 12

.text
.balign 4
.global fn_801F7274
.global fn_801F732C
.global fn_801F7464
.global fn_801F750C

fn_801F7274:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 25, 0x14(1)
    mr 25, 4
    lwz 31, 0x1008(3)
    mr 26, 5
    mr 27, 6
    mr 30, 3
    li 29, 0x0
    li 28, 0x0
    .4byte 0x4800006C # b .L_801F730C
L_801F72A4:
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820058 # beq .L_801F7304
    lbz 0, 0x11c(3)
    cmplwi 0, 0x0
    .4byte 0x4182004C # beq .L_801F7304
    lwz 0, 0x4(3)
    cmpw 25, 0
    .4byte 0x40820040 # bne .L_801F7304
    lwz 0, 0x198(3)
    cmpw 27, 0
    .4byte 0x41820034 # beq .L_801F7304
    lfs 1, 0x14(3)
    .4byte 0xC002C880 # lfs f0, lbl_8053F820@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820020 # bne .L_801F7304
    bl fn_801CC9B0
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801F7304
    lwz 0, 0x8(30)
    addi 29, 29, 0x1
    stw 0, 0x0(26)
    addi 26, 26, 0x4
L_801F7304:
    addi 30, 30, 0x4
    addi 28, 28, 0x1
L_801F730C:
    cmpw 28, 31
    .4byte 0x4180FF94 # blt .L_801F72A4
    mr 3, 29
    lmw 25, 0x14(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_801F732C:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stmw 24, 0x10(1)
    lis 8, lbl_80539D40@ha
    fmuls 31, 1, 1
    lfs 30, lbl_80539D40@l(8)
    mr 24, 4
    lwz 31, 0x1008(3)
    mr 25, 5
    mr 26, 6
    mr 27, 7
    mr 30, 3
    li 29, -0x1
    li 28, 0x0
    .4byte 0x480000BC # b .L_801F7434
L_801F737C:
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x418200A8 # beq .L_801F742C
    lbz 0, 0x11c(3)
    cmplwi 0, 0x0
    .4byte 0x4182009C # beq .L_801F742C
    lwz 0, 0x4(3)
    cmpw 24, 0
    .4byte 0x40820090 # bne .L_801F742C
    lwz 0, 0x198(3)
    cmpw 27, 0
    .4byte 0x41820084 # beq .L_801F742C
    lfs 1, 0x14(3)
    .4byte 0xC002C880 # lfs f0, lbl_8053F820@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820070 # bne .L_801F742C
    bl fn_801CC9B0
    clrlwi. 0, 3, 24
    .4byte 0x41820064 # beq .L_801F742C
    lwz 3, 0x8(30)
    lfs 1, 0x4(25)
    lfs 2, 0x10(3)
    lfs 4, 0xc(3)
    lfs 0, 0x0(25)
    fsubs 3, 2, 1
    fsubs 1, 4, 0
    fmuls 0, 3, 3
    fmuls 1, 1, 1
    fadds 0, 1, 0
    fcmpo cr0, 0, 31
    cror eq, lt, eq
    .4byte 0x40820030 # bne .L_801F742C
    lfs 1, 0x4(26)
    lfs 0, 0x0(26)
    fsubs 2, 2, 1
    fsubs 1, 4, 0
    fmuls 0, 2, 2
    fmuls 1, 1, 1
    fadds 0, 1, 0
    fcmpo cr0, 0, 30
    .4byte 0x4080000C # bge .L_801F742C
    fmr 30, 0
    lwz 29, 0x198(3)
L_801F742C:
    addi 30, 30, 0x4
    addi 28, 28, 0x1
L_801F7434:
    cmpw 28, 31
    .4byte 0x4180FF44 # blt .L_801F737C
    mr 3, 29
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    lmw 24, 0x10(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_801F7464:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 25, 0x14(1)
    mr 25, 3
    lwz 31, 0x1008(3)
    mr 26, 4
    mr 27, 5
    mr 30, 25
    li 29, -0x1
    li 28, 0x0
    .4byte 0x4800005C # b .L_801F74EC
L_801F7494:
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820048 # beq .L_801F74E4
    lbz 0, 0x11c(3)
    cmplwi 0, 0x0
    .4byte 0x4182003C # beq .L_801F74E4
    lwz 0, 0x4(3)
    cmpw 26, 0
    .4byte 0x40820030 # bne .L_801F74E4
    lwz 0, 0x198(3)
    cmpw 27, 0
    .4byte 0x41820024 # beq .L_801F74E4
    bl fn_801CC960
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_801F74E4
    slwi 0, 28, 2
    add 3, 25, 0
    lwz 3, 0x8(3)
    lwz 29, 0x198(3)
    .4byte 0x48000014 # b .L_801F74F4
L_801F74E4:
    addi 30, 30, 0x4
    addi 28, 28, 0x1
L_801F74EC:
    cmpw 28, 31
    .4byte 0x4180FFA4 # blt .L_801F7494
L_801F74F4:
    mr 3, 29
    lmw 25, 0x14(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_801F750C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 25, 0x14(1)
    mr 25, 3
    lwz 31, 0x1008(3)
    mr 26, 4
    mr 27, 5
    mr 30, 25
    li 29, -0x1
    li 28, 0x0
    .4byte 0x4800005C # b .L_801F7594
L_801F753C:
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820048 # beq .L_801F758C
    lbz 0, 0x11c(3)
    cmplwi 0, 0x0
    .4byte 0x4182003C # beq .L_801F758C
    lwz 0, 0x4(3)
    cmpw 26, 0
    .4byte 0x40820030 # bne .L_801F758C
    lwz 0, 0x198(3)
    cmpw 27, 0
    .4byte 0x41820024 # beq .L_801F758C
    bl fn_801CC910
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_801F758C
    slwi 0, 28, 2
    add 3, 25, 0
    lwz 3, 0x8(3)
    lwz 29, 0x198(3)
    .4byte 0x48000014 # b .L_801F759C
L_801F758C:
    addi 30, 30, 0x4
    addi 28, 28, 0x1
L_801F7594:
    cmpw 28, 31
    .4byte 0x4180FFA4 # blt .L_801F753C
L_801F759C:
    mr 3, 29
    lmw 25, 0x14(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

