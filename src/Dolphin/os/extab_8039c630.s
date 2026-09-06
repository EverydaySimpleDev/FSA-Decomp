# fn_8039C630 - helper (0x370) - heaviest string formatting seen (strcat x36)
.section extab, "a"
.balign 4
.global etb_8000F1DC
etb_8000F1DC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000F1DC, 8

.section extabindex, "a"
.balign 4
.global eti_8001EF1C
eti_8001EF1C:
    .4byte fn_8039C630
    .4byte 0x00000370
    .4byte etb_8000F1DC
.size eti_8001EF1C, 12

.text
.balign 4
.global fn_8039C630

fn_8039C630:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    clrlwi 0, 4, 24
    cmplwi 0, 0x9
    lis 4, lbl_80475768@ha
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    addi 30, 4, lbl_80475768@l
    .4byte 0x41810330 # bgt .L_8039C988
    lis 3, jumptable_804AF5FC@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AF5FC@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    cmpwi 5, 0x1
    .4byte 0x4082002C # bne .L_8039C6A4
    lwz 3, 0x2c0(31)
    addi 4, 30, 0x788
    bl strcat
    lwz 3, 0x2c4(31)
    addi 4, 30, 0x788
    bl strcat
    lwz 3, 0x2d0(31)
    addi 0, 3, 0xa
    stw 0, 0x2d0(31)
    .4byte 0x480002E8 # b .L_8039C988
L_8039C6A4:
    lwz 3, 0x2c0(31)
    addi 4, 30, 0x794
    bl strcat
    lwz 3, 0x2c4(31)
    addi 4, 30, 0x794
    bl strcat
    lwz 3, 0x2d0(31)
    addi 0, 3, 0xb
    stw 0, 0x2d0(31)
    .4byte 0x480002C0 # b .L_8039C988
    cmpwi 5, 0x1
    .4byte 0x4082002C # bne .L_8039C6FC
    lwz 3, 0x2c0(31)
    .4byte 0x38820308 # li r4, lbl_805432A8@sda21
    bl strcat
    lwz 3, 0x2c4(31)
    .4byte 0x38820308 # li r4, lbl_805432A8@sda21
    bl strcat
    lwz 3, 0x2d0(31)
    addi 0, 3, 0x6
    stw 0, 0x2d0(31)
    .4byte 0x48000290 # b .L_8039C988
L_8039C6FC:
    lwz 3, 0x2c0(31)
    .4byte 0x38820310 # li r4, lbl_805432B0@sda21
    bl strcat
    lwz 3, 0x2c4(31)
    .4byte 0x38820310 # li r4, lbl_805432B0@sda21
    bl strcat
    lwz 3, 0x2d0(31)
    addi 0, 3, 0x6
    stw 0, 0x2d0(31)
    .4byte 0x48000268 # b .L_8039C988
    cmpwi 5, 0x1
    .4byte 0x4082002C # bne .L_8039C754
    lwz 3, 0x2c0(31)
    .4byte 0x388202B4 # li r4, lbl_80543254@sda21
    bl strcat
    lwz 3, 0x2c4(31)
    .4byte 0x388202B4 # li r4, lbl_80543254@sda21
    bl strcat
    lwz 3, 0x2d0(31)
    addi 0, 3, 0x6
    stw 0, 0x2d0(31)
    .4byte 0x48000238 # b .L_8039C988
L_8039C754:
    lwz 3, 0x2c0(31)
    addi 4, 30, 0x7a0
    bl strcat
    lwz 3, 0x2c4(31)
    addi 4, 30, 0x7a0
    bl strcat
    lwz 3, 0x2d0(31)
    addi 0, 3, 0x8
    stw 0, 0x2d0(31)
    .4byte 0x48000210 # b .L_8039C988
    cmpwi 5, 0x1
    .4byte 0x4082002C # bne .L_8039C7AC
    lwz 3, 0x2c0(31)
    .4byte 0x388202BC # li r4, lbl_8054325C@sda21
    bl strcat
    lwz 3, 0x2c4(31)
    .4byte 0x388202BC # li r4, lbl_8054325C@sda21
    bl strcat
    lwz 3, 0x2d0(31)
    addi 0, 3, 0x5
    stw 0, 0x2d0(31)
    .4byte 0x480001E0 # b .L_8039C988
L_8039C7AC:
    lwz 3, 0x2c0(31)
    .4byte 0x388202C4 # li r4, lbl_80543264@sda21
    bl strcat
    lwz 3, 0x2c4(31)
    .4byte 0x388202C4 # li r4, lbl_80543264@sda21
    bl strcat
    lwz 3, 0x2d0(31)
    addi 0, 3, 0x6
    stw 0, 0x2d0(31)
    .4byte 0x480001B8 # b .L_8039C988
    cmpwi 5, 0x1
    .4byte 0x4082002C # bne .L_8039C804
    lwz 3, 0x2c0(31)
    .4byte 0x388202CC # li r4, lbl_8054326C@sda21
    bl strcat
    lwz 3, 0x2c4(31)
    .4byte 0x388202CC # li r4, lbl_8054326C@sda21
    bl strcat
    lwz 3, 0x2d0(31)
    addi 0, 3, 0x7
    stw 0, 0x2d0(31)
    .4byte 0x48000188 # b .L_8039C988
L_8039C804:
    lwz 3, 0x2c0(31)
    addi 4, 30, 0x7ac
    bl strcat
    lwz 3, 0x2c4(31)
    addi 4, 30, 0x7ac
    bl strcat
    lwz 3, 0x2d0(31)
    addi 0, 3, 0x8
    stw 0, 0x2d0(31)
    .4byte 0x48000160 # b .L_8039C988
    cmpwi 5, 0x1
    .4byte 0x4082002C # bne .L_8039C85C
    lwz 3, 0x2c0(31)
    .4byte 0x388202D4 # li r4, lbl_80543274@sda21
    bl strcat
    lwz 3, 0x2c4(31)
    .4byte 0x388202D4 # li r4, lbl_80543274@sda21
    bl strcat
    lwz 3, 0x2d0(31)
    addi 0, 3, 0x6
    stw 0, 0x2d0(31)
    .4byte 0x48000130 # b .L_8039C988
L_8039C85C:
    lwz 3, 0x2c0(31)
    addi 4, 30, 0x7b8
    bl strcat
    lwz 3, 0x2c4(31)
    addi 4, 30, 0x7b8
    bl strcat
    lwz 3, 0x2d0(31)
    addi 0, 3, 0x8
    stw 0, 0x2d0(31)
    .4byte 0x48000108 # b .L_8039C988
    cmpwi 5, 0x1
    .4byte 0x4082002C # bne .L_8039C8B4
    lwz 3, 0x2c0(31)
    .4byte 0x388202DC # li r4, lbl_8054327C@sda21
    bl strcat
    lwz 3, 0x2c4(31)
    .4byte 0x388202DC # li r4, lbl_8054327C@sda21
    bl strcat
    lwz 3, 0x2d0(31)
    addi 0, 3, 0x5
    stw 0, 0x2d0(31)
    .4byte 0x480000D8 # b .L_8039C988
L_8039C8B4:
    lwz 3, 0x2c0(31)
    .4byte 0x388202E4 # li r4, lbl_80543284@sda21
    bl strcat
    lwz 3, 0x2c4(31)
    .4byte 0x388202E4 # li r4, lbl_80543284@sda21
    bl strcat
    lwz 3, 0x2d0(31)
    addi 0, 3, 0x6
    stw 0, 0x2d0(31)
    .4byte 0x480000B0 # b .L_8039C988
    cmpwi 5, 0x1
    .4byte 0x4082002C # bne .L_8039C90C
    lwz 3, 0x2c0(31)
    .4byte 0x388202EC # li r4, lbl_8054328C@sda21
    bl strcat
    lwz 3, 0x2c4(31)
    .4byte 0x388202EC # li r4, lbl_8054328C@sda21
    bl strcat
    lwz 3, 0x2d0(31)
    addi 0, 3, 0x7
    stw 0, 0x2d0(31)
    .4byte 0x48000080 # b .L_8039C988
L_8039C90C:
    lwz 3, 0x2c0(31)
    addi 4, 30, 0x7c4
    bl strcat
    lwz 3, 0x2c4(31)
    addi 4, 30, 0x7c4
    bl strcat
    lwz 3, 0x2d0(31)
    addi 0, 3, 0x8
    stw 0, 0x2d0(31)
    .4byte 0x48000058 # b .L_8039C988
    cmpwi 5, 0x1
    .4byte 0x4082002C # bne .L_8039C964
    lwz 3, 0x2c0(31)
    addi 4, 30, 0x7d0
    bl strcat
    lwz 3, 0x2c4(31)
    addi 4, 30, 0x7d0
    bl strcat
    lwz 3, 0x2d0(31)
    addi 0, 3, 0x7
    stw 0, 0x2d0(31)
    .4byte 0x48000028 # b .L_8039C988
L_8039C964:
    lwz 3, 0x2c0(31)
    addi 4, 30, 0x7e0
    bl strcat
    lwz 3, 0x2c4(31)
    addi 4, 30, 0x7e0
    bl strcat
    lwz 3, 0x2d0(31)
    addi 0, 3, 0x8
    stw 0, 0x2d0(31)
L_8039C988:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

