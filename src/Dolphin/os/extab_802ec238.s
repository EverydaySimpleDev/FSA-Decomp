# fn_802EC238 - GEN3: main per-frame update() (0x270)
# 5-state machine on this->0x230. State 0: virtual slot 0x34 (room-config
# gate); on success, sets a countdown (this->0x24c) and transitions to
# state 1. State 1: on countdown expiry, searches up to 30 times for an
# actor tagged with the FourCC stored at this->0x250 (SpatialRegistry_GetBase +
# fn_801F78F4) using a search key derived from this->0x240; on success,
# copies this->0x23c into 0x248 and transitions to state 4.
.section extab, "a"
.balign 4
.global etb_8000D1AC
etb_8000D1AC:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000D1AC, 8

.section extabindex, "a"
.balign 4
.global eti_8001C3B4
eti_8001C3B4:
    .4byte fn_802EC238
    .4byte 0x00000270
    .4byte etb_8000D1AC
.size eti_8001C3B4, 12

.text
.balign 4
.global fn_802EC238

fn_802EC238:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    lwz 0, 0x230(3)
    cmpwi 0, 0x2
    .4byte 0x41820120 # beq .L_802EC37C
    .4byte 0x40800014 # bge .L_802EC274
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802EC280
    .4byte 0x4080003C # bge .L_802EC2A8
    .4byte 0x4800021C # b .L_802EC48C
L_802EC274:
    cmpwi 0, 0x4
    .4byte 0x418201F4 # beq .L_802EC46C
    .4byte 0x48000210 # b .L_802EC48C
L_802EC280:
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x418201F8 # beq .L_802EC48C
    li 0, 0x1
    stw 0, 0x230(31)
    stw 0, 0x24c(31)
    .4byte 0x480001E8 # b .L_802EC48C
L_802EC2A8:
    lwz 3, 0x24c(31)
    subi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x408200B0 # bne .L_802EC36C
    lwz 0, 0x240(31)
    li 30, 0x0
    cmpwi 0, 0x1
    .4byte 0x40820044 # bne .L_802EC310
    li 29, -0x1
L_802EC2D4:
    bl SpatialRegistry_GetBase
    lwz 4, 0x250(31)
    mr 5, 29
    bl fn_801F78F4
    cmpwi 3, 0x0
    mr 29, 3
    .4byte 0x41800024 # blt .L_802EC310
    addi 30, 30, 0x1
    cmpwi 30, 0x1e
    .4byte 0x4180FFDC # blt .L_802EC2D4
    lwz 3, 0x23c(31)
    li 0, 0x4
    stw 3, 0x248(31)
    stw 0, 0x230(31)
    .4byte 0x48000180 # b .L_802EC48C
L_802EC310:
    lwz 30, 0x4(31)
    cmpwi 30, 0x8
    .4byte 0x4180002C # blt .L_802EC344
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    mr 5, 30
    addi 4, 4, 0x5249
    addi 6, 31, 0xc
    li 7, 0x3
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800002C # b .L_802EC36C
L_802EC344:
    .4byte 0xC022E450 # lfs f1, lbl_805413F0@sda21(r0)
    mr 3, 30
    addi 4, 31, 0xc
    li 5, 0x35c
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802EC36C:
    li 0, 0x2
    stw 0, 0x230(31)
    stw 0, 0x24c(31)
    .4byte 0x48000114 # b .L_802EC48C
L_802EC37C:
    lwz 3, 0x24c(31)
    subi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x408200FC # bne .L_802EC48C
    lwz 0, 0x234(31)
    lis 3, lbl_8046F450@ha
    addi 3, 3, lbl_8046F450@l
    slwi 0, 0, 2
    lwzx 30, 3, 0
    bl SpatialRegistry_GetBase
    lwz 4, 0x250(31)
    mr 7, 30
    lwz 5, 0x4(31)
    addi 6, 31, 0xc
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lwz 4, 0x58(3)
    subis 0, 4, 0x100
    cmplwi 0, 0x21
    .4byte 0x41820034 # beq .L_802EC40C
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x1
    .4byte 0x40820024 # bne .L_802EC40C
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_802EC40C
    lis 4, 0x100
    li 5, 0x1
    addi 4, 4, 0x21
    li 6, 0x0
    bl fn_80458FF0
L_802EC40C:
    lwz 0, 0x238(31)
    stw 0, 0x24c(31)
    lwz 3, 0x248(31)
    subi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_802EC460
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802EC444
    mr 3, 31
    bl fn_801F35AC
    .4byte 0x4800004C # b .L_802EC48C
L_802EC444:
    cmpwi 0, 0x1
    .4byte 0x40820044 # bne .L_802EC48C
    lwz 3, 0x23c(31)
    li 0, 0x4
    stw 3, 0x248(31)
    stw 0, 0x230(31)
    .4byte 0x48000030 # b .L_802EC48C
L_802EC460:
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000024 # b .L_802EC48C
L_802EC46C:
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_802EC48C
    li 0, 0x0
    stw 0, 0x230(31)
L_802EC48C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

