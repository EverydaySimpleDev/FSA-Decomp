# ZLD3 (vtable lbl_804A35AC, ctor fn_802007A0) cluster, part 1/6
# (104B). draw()-related - uses the confirmed 3D render-primitive
# fn_801F06F0.
.section extab, "a"
.balign 4
.global etb_80007B94
etb_80007B94:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80007B94, 8

.section extabindex, "a"
.balign 4
.global eti_80014ADC
eti_80014ADC:
    .4byte fn_801B0A00
    .4byte 0x00000068
    .4byte etb_80007B94
.size eti_80014ADC, 12

.text
.balign 4
.global fn_801B0A00

fn_801B0A00:
    stwu 1, -0x10(1)
    mflr 0
    li 5, 0x9b
    stw 0, 0x14(1)
    lwz 0, 0x90(3)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_801B0A58
    lwz 0, 0x250(3)
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_801B0A30
    cmpwi 0, 0x3
    .4byte 0x40820008 # bne .L_801B0A34
L_801B0A30:
    li 5, 0x274
L_801B0A34:
    .4byte 0xC022B940 # lfs f1, lbl_8053E8E0@sda21(r0)
    lis 4, lbl_804690C8@ha
    lwz 0, 0x24c(3)
    addi 4, 4, lbl_804690C8@l
    fmr 2, 1
    li 6, 0x0
    add 5, 5, 0
    li 7, 0x7
    bl fn_801F06F0
L_801B0A58:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

