# Fresh-gap-hunt batch 22 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000A168
etb_8000A168:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A168, 8

.section extabindex, "a"
.balign 4
.global eti_80017D64
eti_80017D64:
    .4byte fn_80214578
    .4byte 0x0000012C
    .4byte etb_8000A168
.size eti_80017D64, 12

.text
.balign 4
.global fn_80214578

fn_80214578:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 3, 0x34(3)
    psq_l 1, 0xc(3), 0, 0
    lfs 0, 0x14(3)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    lwz 0, 0x98(3)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_802145F4
    .4byte 0x40800014 # bge .L_802145C0
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802145CC
    .4byte 0x40800028 # bge .L_802145E0
    .4byte 0x4800007C # b .L_80214638
L_802145C0:
    cmpwi 0, 0x4
    .4byte 0x40800074 # bge .L_80214638
    .4byte 0x48000050 # b .L_80214618
L_802145CC:
    lfs 1, 0x8(1)
    .4byte 0xC002CC08 # lfs f0, lbl_8053FBA8@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x4800005C # b .L_80214638
L_802145E0:
    lfs 1, 0x8(1)
    .4byte 0xC002CC08 # lfs f0, lbl_8053FBA8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x48000048 # b .L_80214638
L_802145F4:
    lfs 3, 0x8(1)
    .4byte 0xC042CC0C # lfs f2, lbl_8053FBAC@sda21(r0)
    lfs 1, 0xc(1)
    .4byte 0xC002CC10 # lfs f0, lbl_8053FBB0@sda21(r0)
    fadds 2, 3, 2
    fsubs 0, 1, 0
    stfs 2, 0x8(1)
    stfs 0, 0xc(1)
    .4byte 0x48000024 # b .L_80214638
L_80214618:
    lfs 3, 0x8(1)
    .4byte 0xC042CC14 # lfs f2, lbl_8053FBB4@sda21(r0)
    lfs 1, 0xc(1)
    .4byte 0xC002CC18 # lfs f0, lbl_8053FBB8@sda21(r0)
    fsubs 2, 3, 2
    fadds 0, 1, 0
    stfs 2, 0x8(1)
    stfs 0, 0xc(1)
L_80214638:
    lwz 3, 0x34(31)
    addi 4, 1, 0x8
    .4byte 0xC022CC04 # lfs f1, lbl_8053FBA4@sda21(r0)
    li 5, 0xcb
    lwz 3, 0x4(3)
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x34(31)
    addi 4, 1, 0x8
    .4byte 0xC022CC04 # lfs f1, lbl_8053FBA4@sda21(r0)
    li 5, 0xcc
    lwz 3, 0x4(3)
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

