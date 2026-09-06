# fn_804280C0 - lbl_804B15D0 family: helper (0x74), calls into the fused
# bundle below.
.section extab, "a"
.balign 4
.global etb_8001076C
etb_8001076C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8001076C, 8

.section extabindex, "a"
.balign 4
.global eti_80020578
eti_80020578:
    .4byte fn_804280C0
    .4byte 0x00000074
    .4byte etb_8001076C
.size eti_80020578, 12

.text
.balign 4
.global fn_804280C0

fn_804280C0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x880D92FD # lbz r0, lbl_8053AEBD@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x40820050 # bne .L_80428124
    .4byte 0xC0020B04 # lfs f0, lbl_80543AA4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_804280F0
    li 3, 0x7f
    .4byte 0x48000030 # b .L_8042811C
L_804280F0:
    .4byte 0xC0020B08 # lfs f0, lbl_80543AA8@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80428108
    li 3, 0x0
    .4byte 0x48000018 # b .L_8042811C
L_80428108:
    .4byte 0xC0020B0C # lfs f0, lbl_80543AAC@sda21(r0)
    fdivs 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 3, 0xc(1)
L_8042811C:
    li 4, 0x0
    bl fn_804286B4
L_80428124:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

