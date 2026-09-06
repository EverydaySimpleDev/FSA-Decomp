# Fresh-gap-hunt batch 22 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_80008F14
etb_80008F14:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80008F14, 8

.global etb_80008F1C
etb_80008F1C:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_80008F1C, 8

.section extabindex, "a"
.balign 4
.global eti_80016678
eti_80016678:
    .4byte fn_801F6718
    .4byte 0x00000040
    .4byte etb_80008F14
.size eti_80016678, 12

.global eti_80016684
eti_80016684:
    .4byte fn_801F6758
    .4byte 0x000000C4
    .4byte etb_80008F1C
.size eti_80016684, 12

.text
.balign 4
.global fn_801F6718
.global fn_801F6758

fn_801F6718:
    stwu 1, -0x10(1)
    mflr 0
    lis 9, 0x5343
    stw 0, 0x14(1)
    clrlslwi 0, 4, 24, 16
    rlwimi 0, 7, 0, 16, 31
    addi 4, 9, 0x5245
    mr 7, 0
    li 9, -0x1
    rlwimi 7, 8, 24, 0, 7
    li 8, -0x1
    bl fn_801F9484
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801F6758:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stfd 31, 0x10(1)
    psq_st 31, 0x18(1), 0, 0
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    fmr 31, 1
    mr 30, 3
    mr 31, 4
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_801F6794
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801F6798
L_801F6794:
    addi 3, 3, 0xdc
L_801F6798:
    lfs 0, 0x0(3)
    lfs 1, 0x0(30)
    fsubs 0, 0, 31
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x41820044 # beq .L_801F67F0
    lfs 0, 0x8(3)
    fadds 0, 0, 31
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x41820030 # beq .L_801F67F0
    lfs 0, 0x4(3)
    lfs 1, 0x4(30)
    fsubs 0, 0, 31
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x41820018 # beq .L_801F67F0
    lfs 0, 0xc(3)
    fadds 0, 0, 31
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_801F67F8
L_801F67F0:
    li 3, 0x1
    .4byte 0x48000008 # b .L_801F67FC
L_801F67F8:
    li 3, 0x0
L_801F67FC:
    psq_l 31, 0x18(1), 0, 0
    lwz 0, 0x24(1)
    lfd 31, 0x10(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

