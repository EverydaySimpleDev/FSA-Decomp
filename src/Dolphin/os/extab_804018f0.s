# fn_804018F0 - vtable-slot function for lbl_804B0FA0 (0xB8) - locks/unlocks a mutex
.section extab, "a"
.balign 4
.global etb_8001015C
etb_8001015C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8001015C, 8

.section extabindex, "a"
.balign 4
.global eti_8001FEA0
eti_8001FEA0:
    .4byte fn_804018F0
    .4byte 0x000000B8
    .4byte etb_8001015C
.size eti_8001FEA0, 12

.text
.balign 4
.global fn_804018F0

fn_804018F0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    lwz 0, 0x1c(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8040191C
    mr 31, 0
    .4byte 0x48000008 # b .L_80401920
L_8040191C:
    .4byte 0x83ED9234 # lwz r31, lbl_8053ADF4@sda21(r0)
L_80401920:
    li 0, 0x0
    mr 7, 31
    stw 0, 0x8(1)
    li 4, 0x0
    li 5, 0x1
    li 6, 0x0
    lbz 0, 0xc(30)
    li 8, 0x2
    lwz 3, 0x10(30)
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_80401950
    li 8, 0x1
L_80401950:
    li 9, 0x0
    li 10, 0x0
    bl fn_80080828
    stw 3, 0x14(30)
    lwz 4, 0x14(30)
    cmplwi 4, 0x0
    .4byte 0x41820010 # beq .L_80401978
    mr 3, 31
    bl fn_80083A10
    stw 3, 0x18(30)
L_80401978:
    li 0, 0x1
    stb 0, 0x4(30)
    lwz 3, 0x14(30)
    lwz 31, 0x1c(1)
    neg 0, 3
    lwz 30, 0x18(1)
    or 0, 0, 3
    srwi 3, 0, 31
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

