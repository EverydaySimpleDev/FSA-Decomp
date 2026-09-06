# Fresh-gap-hunt batch 28 landing (non-ctors stragglers, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000DC4C
etb_8000DC4C:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000DC4C, 8

.section extabindex, "a"
.balign 4
.global eti_8001D2D8
eti_8001D2D8:
    .4byte fn_8032D578
    .4byte 0x000000E8
    .4byte etb_8000DC4C
.size eti_8001D2D8, 12

.text
.balign 4
.global fn_8032D534
.global fn_8032D564
.global fn_8032D578

fn_8032D534:
    .4byte 0xC002EDE8 # lfs f0, lbl_80541D88@sda21(r0)
    stfs 0, 0x44(3)
    stfs 0, 0x40(3)
    stfs 0, 0x3c(3)
    lwz 0, 0x24c(3)
    cmpwi 0, 0x320
    .4byte 0x4080000C # bge .L_8032D558
    li 0, 0x320
    stw 0, 0x24c(3)
L_8032D558:
    li 0, 0x1
    stw 0, 0x230(3)
    blr

fn_8032D564:
    lis 3, lbl_804719D8@ha
    slwi 0, 4, 2
    addi 3, 3, lbl_804719D8@l
    lwzx 3, 3, 0
    blr

fn_8032D578:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    .4byte 0x80C2EDE0 # lwz r6, lbl_80541D80@sda21(r0)
    .4byte 0x8002EDE4 # lwz r0, lbl_80541D84@sda21(r0)
    stw 6, 0x8(1)
    stw 0, 0xc(1)
    lwz 31, 0x198(3)
    bl fn_8020D58C
    mr 8, 3
    mr 4, 29
    lbz 0, 0x1(3)
    mr 5, 30
    mr 6, 31
    addi 7, 1, 0x8
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 8, 3
    bl fn_8020D6AC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8032D5F4
    li 3, 0x1
    .4byte 0x48000050 # b .L_8032D640
L_8032D5F4:
    mr 3, 30
    mr 4, 29
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmpwi 0, 0x3b
    .4byte 0x4182000C # beq .L_8032D614
    cmpwi 0, 0x23
    .4byte 0x4082000C # bne .L_8032D61C
L_8032D614:
    li 3, 0x0
    .4byte 0x48000014 # b .L_8032D62C
L_8032D61C:
    mr 3, 30
    mr 4, 29
    li 5, 0x0
    bl fn_802265DC
L_8032D62C:
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8032D63C
    li 0, 0x0
    stb 0, 0x283(28)
L_8032D63C:
    clrlwi 3, 3, 24
L_8032D640:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

