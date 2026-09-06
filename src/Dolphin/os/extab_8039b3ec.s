# fn_8039B3EC - component A: fused multi-entry-point body, 2nd blob (0xe6c, last vtable slot)
.section extab, "a"
.balign 4
.global etb_8000F1D4
etb_8000F1D4:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_8000F1D4, 8

.section extabindex, "a"
.balign 4
.global eti_8001EF10
eti_8001EF10:
    .4byte fn_8039B3EC
    .4byte 0x00000E6C
    .4byte etb_8000F1D4
.size eti_8001EF10, 12

.text
.balign 4
.global fn_8039B3EC

fn_8039B3EC:
    stwu 1, -0x20(1)
    clrlwi 0, 4, 24
    cmplwi 0, 0x9
    stmw 26, 0x8(1)
    .4byte 0x41810E50 # bgt .L_8039C24C
    lis 4, jumptable_804AF5D4@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804AF5D4@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    lwz 4, 0x2d0(3)
    li 9, 0x14
    lwz 6, 0x2c0(3)
    li 8, 0x20
    addi 0, 4, 0x1
    li 26, 0x2d
    stw 0, 0x2d0(3)
    li 31, -0x20
    li 7, 0x38
    li 30, 0x40
    stbx 9, 6, 4
    li 29, -0x60
    li 28, 0x34
    li 6, -0x40
    lwz 12, 0x2d0(3)
    li 4, 0x35
    lwz 27, 0x2c0(3)
    li 0, 0x0
    addi 10, 12, 0x1
    li 11, 0x30
    stw 10, 0x2d0(3)
    stbx 8, 27, 12
    lwz 12, 0x2d0(3)
    lwz 27, 0x2c0(3)
    addi 10, 12, 0x1
    stw 10, 0x2d0(3)
    stbx 26, 27, 12
    lwz 12, 0x2d0(3)
    lwz 27, 0x2c0(3)
    addi 10, 12, 0x1
    stw 10, 0x2d0(3)
    stbx 31, 27, 12
    lwz 12, 0x2d0(3)
    lwz 27, 0x2c0(3)
    addi 10, 12, 0x1
    stw 10, 0x2d0(3)
    stbx 7, 27, 12
    lwz 12, 0x2d0(3)
    lwz 27, 0x2c0(3)
    addi 10, 12, 0x1
    stw 10, 0x2d0(3)
    stbx 30, 27, 12
    lwz 12, 0x2d0(3)
    lwz 27, 0x2c0(3)
    addi 10, 12, 0x1
    stw 10, 0x2d0(3)
    stbx 7, 27, 12
    lwz 12, 0x2d0(3)
    lwz 27, 0x2c0(3)
    addi 10, 12, 0x1
    stw 10, 0x2d0(3)
    stbx 29, 27, 12
    lwz 12, 0x2d0(3)
    lwz 27, 0x2c0(3)
    addi 10, 12, 0x1
    stw 10, 0x2d0(3)
    stbx 28, 27, 12
    lwz 12, 0x2d0(3)
    lwz 27, 0x2c0(3)
    addi 10, 12, 0x1
    stw 10, 0x2d0(3)
    stbx 6, 27, 12
    lwz 12, 0x2d0(3)
    lwz 27, 0x2c0(3)
    addi 10, 12, 0x1
    stw 10, 0x2d0(3)
    stbx 4, 27, 12
    lwz 12, 0x2d0(3)
    lwz 27, 0x2c0(3)
    addi 10, 12, 0x1
    stw 10, 0x2d0(3)
    stbx 0, 27, 12
    lwz 12, 0x2d0(3)
    lwz 27, 0x2c0(3)
    addi 10, 12, 0x1
    stw 10, 0x2d0(3)
    stbx 9, 27, 12
    lwz 10, 0x2d0(3)
    lwz 12, 0x2c0(3)
    addi 9, 10, 0x1
    stw 9, 0x2d0(3)
    stbx 8, 12, 10
    lwz 9, 0x2d0(3)
    lwz 10, 0x2c0(3)
    addi 8, 9, 0x1
    stw 8, 0x2d0(3)
    stbx 11, 10, 9
    lwz 8, 0x2d0(3)
    cmpwi 5, 0x1
    lwz 9, 0x2c0(3)
    addi 5, 8, 0x1
    stw 5, 0x2d0(3)
    stbx 0, 9, 8
    lwz 8, 0x2d0(3)
    lwz 9, 0x2c0(3)
    addi 5, 8, 0x1
    stw 5, 0x2d0(3)
    stbx 4, 9, 8
    lwz 5, 0x2d0(3)
    lwz 8, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 0, 8, 5
    lwz 5, 0x2d0(3)
    lwz 8, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 7, 8, 5
    lwz 5, 0x2d0(3)
    lwz 8, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 0, 8, 5
    .4byte 0x41820C70 # beq .L_8039C24C
    lwz 4, 0x2d0(3)
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 7, 5, 4
    lwz 4, 0x2d0(3)
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 6, 5, 4
    .4byte 0x48000C44 # b .L_8039C24C
    lwz 4, 0x2d0(3)
    li 7, 0x14
    lwz 6, 0x2c0(3)
    li 28, 0x20
    addi 0, 4, 0x1
    li 27, 0x2d
    stw 0, 0x2d0(3)
    li 12, -0x80
    li 11, 0x39
    li 10, 0x0
    stbx 7, 6, 4
    li 9, 0x34
    li 8, -0x40
    li 7, 0x38
    lwz 4, 0x2d0(3)
    cmpwi 5, 0x1
    lwz 5, 0x2c0(3)
    li 6, 0x40
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 28, 5, 4
    lwz 4, 0x2d0(3)
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 27, 5, 4
    lwz 4, 0x2d0(3)
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 12, 5, 4
    lwz 4, 0x2d0(3)
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 11, 5, 4
    lwz 4, 0x2d0(3)
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 10, 5, 4
    lwz 4, 0x2d0(3)
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 9, 5, 4
    lwz 4, 0x2d0(3)
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 8, 5, 4
    lwz 4, 0x2d0(3)
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 9, 5, 4
    lwz 4, 0x2d0(3)
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 8, 5, 4
    lwz 4, 0x2d0(3)
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 7, 5, 4
    lwz 4, 0x2d0(3)
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 6, 5, 4
    .4byte 0x41820B24 # beq .L_8039C24C
    lwz 4, 0x2d0(3)
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 7, 5, 4
    lwz 4, 0x2d0(3)
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 8, 5, 4
    .4byte 0x48000AF8 # b .L_8039C24C
    lwz 4, 0x2d0(3)
    li 11, 0x14
    lwz 6, 0x2c0(3)
    li 10, 0x20
    addi 0, 4, 0x1
    li 9, 0x34
    stw 0, 0x2d0(3)
    li 8, -0x60
    li 0, -0x80
    li 7, -0x20
    stbx 11, 6, 4
    cmpwi 5, 0x1
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 10, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 9, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 8, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 9, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 0, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 9, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 7, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 9, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 7, 6, 5
    .4byte 0x40820034 # bne .L_8039B870
    lwz 5, 0x2d0(3)
    li 7, 0x39
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 7, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 0, 6, 5
    .4byte 0x480009E0 # b .L_8039C24C
L_8039B870:
    lwz 5, 0x2d0(3)
    li 10, 0x35
    lwz 9, 0x2c0(3)
    li 8, 0x0
    addi 4, 5, 0x1
    li 7, 0x38
    stw 4, 0x2d0(3)
    li 6, -0x40
    stbx 10, 9, 5
    lwz 5, 0x2d0(3)
    lwz 9, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 0, 9, 5
    lwz 4, 0x2d0(3)
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 10, 5, 4
    lwz 4, 0x2d0(3)
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 8, 5, 4
    lwz 4, 0x2d0(3)
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 7, 5, 4
    lwz 4, 0x2d0(3)
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 6, 5, 4
    .4byte 0x48000954 # b .L_8039C24C
    lwz 6, 0x2d0(3)
    li 12, 0x14
    lwz 7, 0x2c0(3)
    li 11, 0x20
    addi 4, 6, 0x1
    li 0, 0x38
    stw 4, 0x2d0(3)
    li 10, -0x20
    li 9, 0x35
    li 8, -0x80
    stbx 12, 7, 6
    li 7, 0x0
    cmpwi 5, 0x1
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 11, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 0, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 10, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 9, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 8, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 0, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 7, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 9, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 7, 6, 5
    .4byte 0x41820868 # beq .L_8039C24C
    lwz 5, 0x2d0(3)
    li 6, -0x40
    lwz 7, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 0, 7, 5
    lwz 4, 0x2d0(3)
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 6, 5, 4
    .4byte 0x48000838 # b .L_8039C24C
    lwz 6, 0x2d0(3)
    li 8, 0x14
    lwz 7, 0x2c0(3)
    li 27, 0x20
    addi 0, 6, 0x1
    li 4, 0x38
    stw 0, 0x2d0(3)
    li 0, -0x40
    li 12, 0x39
    li 11, -0x80
    stbx 8, 7, 6
    li 10, -0x20
    li 9, 0x35
    li 8, 0x0
    lwz 6, 0x2d0(3)
    cmpwi 5, 0x1
    lwz 7, 0x2c0(3)
    addi 5, 6, 0x1
    stw 5, 0x2d0(3)
    stbx 27, 7, 6
    lwz 6, 0x2d0(3)
    lwz 7, 0x2c0(3)
    addi 5, 6, 0x1
    stw 5, 0x2d0(3)
    stbx 4, 7, 6
    lwz 6, 0x2d0(3)
    lwz 7, 0x2c0(3)
    addi 5, 6, 0x1
    stw 5, 0x2d0(3)
    stbx 0, 7, 6
    lwz 6, 0x2d0(3)
    lwz 7, 0x2c0(3)
    addi 5, 6, 0x1
    stw 5, 0x2d0(3)
    stbx 12, 7, 6
    lwz 6, 0x2d0(3)
    lwz 7, 0x2c0(3)
    addi 5, 6, 0x1
    stw 5, 0x2d0(3)
    stbx 11, 7, 6
    lwz 6, 0x2d0(3)
    lwz 7, 0x2c0(3)
    addi 5, 6, 0x1
    stw 5, 0x2d0(3)
    stbx 4, 7, 6
    lwz 6, 0x2d0(3)
    lwz 7, 0x2c0(3)
    addi 5, 6, 0x1
    stw 5, 0x2d0(3)
    stbx 0, 7, 6
    lwz 6, 0x2d0(3)
    lwz 7, 0x2c0(3)
    addi 5, 6, 0x1
    stw 5, 0x2d0(3)
    stbx 4, 7, 6
    lwz 6, 0x2d0(3)
    lwz 7, 0x2c0(3)
    addi 5, 6, 0x1
    stw 5, 0x2d0(3)
    stbx 10, 7, 6
    lwz 6, 0x2d0(3)
    lwz 7, 0x2c0(3)
    addi 5, 6, 0x1
    stw 5, 0x2d0(3)
    stbx 9, 7, 6
    lwz 6, 0x2d0(3)
    lwz 7, 0x2c0(3)
    addi 5, 6, 0x1
    stw 5, 0x2d0(3)
    stbx 8, 7, 6
    lwz 6, 0x2d0(3)
    lwz 7, 0x2c0(3)
    addi 5, 6, 0x1
    stw 5, 0x2d0(3)
    stbx 4, 7, 6
    lwz 6, 0x2d0(3)
    lwz 7, 0x2c0(3)
    addi 5, 6, 0x1
    stw 5, 0x2d0(3)
    stbx 8, 7, 6
    .4byte 0x418206F4 # beq .L_8039C24C
    lwz 6, 0x2d0(3)
    lwz 7, 0x2c0(3)
    addi 5, 6, 0x1
    stw 5, 0x2d0(3)
    stbx 4, 7, 6
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 0, 6, 5
    .4byte 0x480006C8 # b .L_8039C24C
    lwz 7, 0x2d0(3)
    li 9, 0x14
    lwz 8, 0x2c0(3)
    li 6, 0x20
    addi 0, 7, 0x1
    li 4, 0x38
    stw 0, 0x2d0(3)
    li 12, -0x20
    li 0, 0x35
    li 10, 0x60
    stbx 9, 8, 7
    li 9, -0x80
    cmpwi 5, 0x1
    li 11, 0x0
    lwz 7, 0x2d0(3)
    lwz 8, 0x2c0(3)
    addi 5, 7, 0x1
    stw 5, 0x2d0(3)
    stbx 6, 8, 7
    lwz 7, 0x2d0(3)
    lwz 8, 0x2c0(3)
    addi 5, 7, 0x1
    stw 5, 0x2d0(3)
    stbx 4, 8, 7
    lwz 7, 0x2d0(3)
    lwz 8, 0x2c0(3)
    addi 5, 7, 0x1
    stw 5, 0x2d0(3)
    stbx 12, 8, 7
    lwz 7, 0x2d0(3)
    lwz 8, 0x2c0(3)
    addi 5, 7, 0x1
    stw 5, 0x2d0(3)
    stbx 0, 8, 7
    lwz 7, 0x2d0(3)
    lwz 8, 0x2c0(3)
    addi 5, 7, 0x1
    stw 5, 0x2d0(3)
    stbx 10, 8, 7
    lwz 7, 0x2d0(3)
    lwz 8, 0x2c0(3)
    addi 5, 7, 0x1
    stw 5, 0x2d0(3)
    stbx 0, 8, 7
    lwz 7, 0x2d0(3)
    lwz 8, 0x2c0(3)
    addi 5, 7, 0x1
    stw 5, 0x2d0(3)
    stbx 9, 8, 7
    lwz 7, 0x2d0(3)
    lwz 8, 0x2c0(3)
    addi 5, 7, 0x1
    stw 5, 0x2d0(3)
    stbx 0, 8, 7
    lwz 7, 0x2d0(3)
    lwz 8, 0x2c0(3)
    addi 5, 7, 0x1
    stw 5, 0x2d0(3)
    stbx 11, 8, 7
    .4byte 0x40820030 # bne .L_8039BCA4
    lwz 5, 0x2d0(3)
    lwz 7, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 0, 7, 5
    lwz 4, 0x2d0(3)
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 6, 5, 4
    .4byte 0x480005AC # b .L_8039C24C
L_8039BCA4:
    lwz 8, 0x2d0(3)
    li 10, 0x39
    lwz 9, 0x2c0(3)
    li 7, -0x40
    addi 5, 8, 0x1
    stw 5, 0x2d0(3)
    stbx 10, 9, 8
    lwz 8, 0x2d0(3)
    lwz 9, 0x2c0(3)
    addi 5, 8, 0x1
    stw 5, 0x2d0(3)
    stbx 6, 9, 8
    lwz 6, 0x2d0(3)
    lwz 8, 0x2c0(3)
    addi 5, 6, 0x1
    stw 5, 0x2d0(3)
    stbx 0, 8, 6
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 0, 5, 0x1
    stw 0, 0x2d0(3)
    stbx 11, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 0, 5, 0x1
    stw 0, 0x2d0(3)
    stbx 4, 6, 5
    lwz 4, 0x2d0(3)
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 7, 5, 4
    .4byte 0x48000528 # b .L_8039C24C
    lwz 6, 0x2d0(3)
    li 12, 0x14
    lwz 7, 0x2c0(3)
    li 11, 0x20
    addi 4, 6, 0x1
    li 0, 0x38
    stw 4, 0x2d0(3)
    li 10, 0x0
    li 9, 0x40
    li 8, 0x35
    stbx 12, 7, 6
    li 7, -0x20
    cmpwi 5, 0x1
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 11, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 0, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 10, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 0, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 9, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 8, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 7, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 8, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 10, 6, 5
    .4byte 0x4182043C # beq .L_8039C24C
    lwz 5, 0x2d0(3)
    li 6, -0x40
    lwz 7, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 0, 7, 5
    lwz 4, 0x2d0(3)
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 6, 5, 4
    .4byte 0x4800040C # b .L_8039C24C
    lwz 7, 0x2d0(3)
    li 9, 0x14
    lwz 8, 0x2c0(3)
    li 6, 0x20
    addi 0, 7, 0x1
    li 4, 0x38
    stw 0, 0x2d0(3)
    li 0, -0x60
    li 12, 0x35
    li 11, 0x0
    stbx 9, 8, 7
    li 10, -0x20
    li 9, 0x39
    cmpwi 5, 0x1
    lwz 7, 0x2d0(3)
    lwz 8, 0x2c0(3)
    addi 5, 7, 0x1
    stw 5, 0x2d0(3)
    stbx 6, 8, 7
    lwz 7, 0x2d0(3)
    lwz 8, 0x2c0(3)
    addi 5, 7, 0x1
    stw 5, 0x2d0(3)
    stbx 4, 8, 7
    lwz 7, 0x2d0(3)
    lwz 8, 0x2c0(3)
    addi 5, 7, 0x1
    stw 5, 0x2d0(3)
    stbx 0, 8, 7
    lwz 7, 0x2d0(3)
    lwz 8, 0x2c0(3)
    addi 5, 7, 0x1
    stw 5, 0x2d0(3)
    stbx 12, 8, 7
    lwz 7, 0x2d0(3)
    lwz 8, 0x2c0(3)
    addi 5, 7, 0x1
    stw 5, 0x2d0(3)
    stbx 11, 8, 7
    lwz 7, 0x2d0(3)
    lwz 8, 0x2c0(3)
    addi 5, 7, 0x1
    stw 5, 0x2d0(3)
    stbx 4, 8, 7
    lwz 7, 0x2d0(3)
    lwz 8, 0x2c0(3)
    addi 5, 7, 0x1
    stw 5, 0x2d0(3)
    stbx 10, 8, 7
    lwz 7, 0x2d0(3)
    lwz 8, 0x2c0(3)
    addi 5, 7, 0x1
    stw 5, 0x2d0(3)
    stbx 9, 8, 7
    lwz 7, 0x2d0(3)
    lwz 8, 0x2c0(3)
    addi 5, 7, 0x1
    stw 5, 0x2d0(3)
    stbx 11, 8, 7
    lwz 7, 0x2d0(3)
    lwz 8, 0x2c0(3)
    addi 5, 7, 0x1
    stw 5, 0x2d0(3)
    stbx 4, 8, 7
    lwz 7, 0x2d0(3)
    lwz 8, 0x2c0(3)
    addi 5, 7, 0x1
    stw 5, 0x2d0(3)
    stbx 0, 8, 7
    lwz 5, 0x2d0(3)
    lwz 7, 0x2c0(3)
    addi 0, 5, 0x1
    stw 0, 0x2d0(3)
    stbx 4, 7, 5
    lwz 5, 0x2d0(3)
    lwz 7, 0x2c0(3)
    addi 0, 5, 0x1
    stw 0, 0x2d0(3)
    stbx 6, 7, 5
    .4byte 0x418202CC # beq .L_8039C24C
    lwz 5, 0x2d0(3)
    li 6, -0x40
    lwz 7, 0x2c0(3)
    addi 0, 5, 0x1
    stw 0, 0x2d0(3)
    stbx 4, 7, 5
    lwz 4, 0x2d0(3)
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 6, 5, 4
    .4byte 0x4800029C # b .L_8039C24C
    lwz 6, 0x2d0(3)
    li 31, 0x14
    lwz 7, 0x2c0(3)
    li 12, 0x20
    addi 4, 6, 0x1
    li 0, 0x2d
    stw 4, 0x2d0(3)
    li 11, -0x20
    li 10, 0x38
    li 27, 0x40
    stbx 31, 7, 6
    li 9, -0x60
    li 8, 0x34
    li 7, -0x40
    lwz 29, 0x2d0(3)
    li 6, 0x35
    lwz 30, 0x2c0(3)
    li 4, 0x0
    addi 28, 29, 0x1
    stw 28, 0x2d0(3)
    stbx 12, 30, 29
    lwz 29, 0x2d0(3)
    lwz 30, 0x2c0(3)
    addi 28, 29, 0x1
    stw 28, 0x2d0(3)
    stbx 0, 30, 29
    lwz 29, 0x2d0(3)
    lwz 30, 0x2c0(3)
    addi 28, 29, 0x1
    stw 28, 0x2d0(3)
    stbx 11, 30, 29
    lwz 29, 0x2d0(3)
    lwz 30, 0x2c0(3)
    addi 28, 29, 0x1
    stw 28, 0x2d0(3)
    stbx 10, 30, 29
    lwz 29, 0x2d0(3)
    lwz 30, 0x2c0(3)
    addi 28, 29, 0x1
    stw 28, 0x2d0(3)
    stbx 27, 30, 29
    lwz 29, 0x2d0(3)
    lwz 30, 0x2c0(3)
    addi 28, 29, 0x1
    stw 28, 0x2d0(3)
    stbx 10, 30, 29
    lwz 29, 0x2d0(3)
    lwz 30, 0x2c0(3)
    addi 28, 29, 0x1
    stw 28, 0x2d0(3)
    stbx 9, 30, 29
    lwz 29, 0x2d0(3)
    lwz 30, 0x2c0(3)
    addi 28, 29, 0x1
    stw 28, 0x2d0(3)
    stbx 8, 30, 29
    lwz 29, 0x2d0(3)
    lwz 30, 0x2c0(3)
    addi 28, 29, 0x1
    stw 28, 0x2d0(3)
    stbx 7, 30, 29
    lwz 29, 0x2d0(3)
    lwz 30, 0x2c0(3)
    addi 28, 29, 0x1
    stw 28, 0x2d0(3)
    stbx 6, 30, 29
    lwz 29, 0x2d0(3)
    lwz 30, 0x2c0(3)
    addi 28, 29, 0x1
    stw 28, 0x2d0(3)
    stbx 4, 30, 29
    lwz 30, 0x2d0(3)
    lwz 28, 0x2c0(3)
    addi 29, 30, 0x1
    stw 29, 0x2d0(3)
    stbx 31, 28, 30
    lwz 31, 0x2d0(3)
    lwz 29, 0x2c0(3)
    addi 30, 31, 0x1
    stw 30, 0x2d0(3)
    stbx 12, 29, 31
    lwz 31, 0x2d0(3)
    lwz 30, 0x2c0(3)
    addi 12, 31, 0x1
    stw 12, 0x2d0(3)
    stbx 0, 30, 31
    lwz 12, 0x2d0(3)
    li 0, -0x80
    lwz 31, 0x2c0(3)
    cmpwi 5, 0x1
    addi 5, 12, 0x1
    stw 5, 0x2d0(3)
    stbx 11, 31, 12
    lwz 11, 0x2d0(3)
    lwz 12, 0x2c0(3)
    addi 5, 11, 0x1
    stw 5, 0x2d0(3)
    stbx 8, 12, 11
    lwz 8, 0x2d0(3)
    lwz 11, 0x2c0(3)
    addi 5, 8, 0x1
    stw 5, 0x2d0(3)
    stbx 0, 11, 8
    lwz 8, 0x2d0(3)
    lwz 11, 0x2c0(3)
    addi 5, 8, 0x1
    stw 5, 0x2d0(3)
    stbx 6, 11, 8
    lwz 8, 0x2d0(3)
    lwz 11, 0x2c0(3)
    addi 5, 8, 0x1
    stw 5, 0x2d0(3)
    stbx 0, 11, 8
    lwz 8, 0x2d0(3)
    lwz 11, 0x2c0(3)
    addi 5, 8, 0x1
    stw 5, 0x2d0(3)
    stbx 10, 11, 8
    lwz 8, 0x2d0(3)
    lwz 11, 0x2c0(3)
    addi 5, 8, 0x1
    stw 5, 0x2d0(3)
    stbx 9, 11, 8
    .4byte 0x40820034 # bne .L_8039C1D4
    lwz 5, 0x2d0(3)
    li 7, 0x39
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 7, 6, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 4, 5, 0x1
    stw 4, 0x2d0(3)
    stbx 0, 6, 5
    .4byte 0x4800007C # b .L_8039C24C
L_8039C1D4:
    lwz 8, 0x2d0(3)
    lwz 9, 0x2c0(3)
    addi 5, 8, 0x1
    stw 5, 0x2d0(3)
    stbx 6, 9, 8
    lwz 8, 0x2d0(3)
    lwz 9, 0x2c0(3)
    addi 5, 8, 0x1
    stw 5, 0x2d0(3)
    stbx 0, 9, 8
    lwz 5, 0x2d0(3)
    lwz 8, 0x2c0(3)
    addi 0, 5, 0x1
    stw 0, 0x2d0(3)
    stbx 6, 8, 5
    lwz 5, 0x2d0(3)
    lwz 6, 0x2c0(3)
    addi 0, 5, 0x1
    stw 0, 0x2d0(3)
    stbx 4, 6, 5
    lwz 4, 0x2d0(3)
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 10, 5, 4
    lwz 4, 0x2d0(3)
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 7, 5, 4
L_8039C24C:
    lmw 26, 0x8(1)
    addi 1, 1, 0x20
    blr

