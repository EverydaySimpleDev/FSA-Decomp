# Unnamed actor cluster, part 2/5 (84B). draw()-related - uses the
# confirmed 3D render-primitive fn_801F06F0.
.section extab, "a"
.balign 4
.global etb_80007BCC
etb_80007BCC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80007BCC, 8

.section extabindex, "a"
.balign 4
.global eti_80014B30
eti_80014B30:
    .4byte fn_801B2998
    .4byte 0x00000054
    .4byte etb_80007BCC
.size eti_80014B30, 12

.text
.balign 4
.global fn_801B2998

fn_801B2998:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x308(3)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_801B29B8
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x41820028 # beq .L_801B29DC
L_801B29B8:
    .4byte 0xC022B990 # lfs f1, lbl_8053E930@sda21(r0)
    lis 4, lbl_804690E0@ha
    lwz 5, 0x320(3)
    addi 4, 4, lbl_804690E0@l
    fmr 2, 1
    li 6, 0x0
    addi 5, 5, 0x9b
    li 7, 0x7
    bl fn_801F06F0
L_801B29DC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

