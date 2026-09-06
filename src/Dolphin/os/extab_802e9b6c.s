# fn_802E9B6C - ENDM: main per-frame update() (0x115C, largest function
# landed in this gap effort)
# 9-state machine dispatched via jumptable_804AA150 on this->0x23c, driving
# a scripted end-sequence: selects an animation via lbl_8046F280, advances a
# dialogue/line sub-state at this->0x294 (0-6, picking one of 3 line
# durations: 0x12c/0x1e0/0x1a4) and sets a global cutscene-active flag
# (lbl_8053AF30->0x14). Heavily reuses fn_802E94F4 (x3) and fn_802E9884
# (movement/facing + script-advance helpers) plus per-room config
# (GetRoomConfigRecord x9) and several unfamiliar animation/model utilities
# (fn_80119958/80119998/80119DD0, fn_8016A2B4/8016A3AC, fn_8030C7C4,
# fn_803613D0, fn_80362634, fn_8036E544). Track A: byte-match verified,
# structural overview per the large/complex-function exception - this is
# ENDM's scripted "ending sequence" director/interpreter.
.section extab, "a"
.balign 4
.global etb_8000D15C
etb_8000D15C:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000D15C, 8

.section extabindex, "a"
.balign 4
.global eti_8001C33C
eti_8001C33C:
    .4byte fn_802E9B6C
    .4byte 0x0000115C
    .4byte etb_8000D15C
.size eti_8001C33C, 12

.text
.balign 4
.global fn_802E9B6C

fn_802E9B6C:
    stwu 1, -0x100(1)
    mflr 0
    lis 5, lbl_8046F280@ha
    stw 0, 0x104(1)
    stmw 27, 0xec(1)
    mr 30, 3
    addi 31, 5, lbl_8046F280@l
    lwz 4, 0x234(3)
    addi 0, 4, 0x1
    stw 0, 0x234(3)
    lwz 0, 0x23c(3)
    cmplwi 0, 0x8
    .4byte 0x418110F0 # bgt .L_802EAC8C
    lis 4, jumptable_804AA150@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804AA150@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    lbz 0, 0x29a(30)
    cmplwi 0, 0x0
    .4byte 0x418200CC # beq .L_802E9C8C
L_802E9BC4:
    li 0, 0x0
    stb 0, 0x29a(30)
    lbz 0, 0x294(30)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_802E9BE4
    li 0, 0x12c
    stw 0, 0x27c(30)
    .4byte 0x48000020 # b .L_802E9C00
L_802E9BE4:
    cmplwi 0, 0x7
    .4byte 0x40820010 # bne .L_802E9BF8
    li 0, 0x1e0
    stw 0, 0x27c(30)
    .4byte 0x4800000C # b .L_802E9C00
L_802E9BF8:
    li 0, 0x1a4
    stw 0, 0x27c(30)
L_802E9C00:
    .4byte 0x806D9370 # lwz r3, lbl_8053AF30@sda21(r0)
    li 0, 0x1
    stb 0, 0x14(3)
    lbz 3, 0x294(30)
    addi 0, 3, 0x1
    stb 0, 0x294(30)
    lbz 0, 0x294(30)
    cmplwi 0, 0x7
    .4byte 0x4081000C # ble .L_802E9C2C
    li 0, 0x7
    stb 0, 0x294(30)
L_802E9C2C:
    li 0, 0x1
    stw 0, 0x23c(30)
    lbz 0, 0x299(30)
    cmplwi 0, 0x1
    .4byte 0x40820038 # bne .L_802E9C74
    bl fn_80119DD0
    bl fn_80119958
    bl fn_80119DD0
    li 4, 0x32
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_80119998
    li 0, 0x0
    stb 0, 0x299(30)
L_802E9C74:
    bl fn_8016A3AC
    li 0, -0x1
    stw 0, 0x1d8(3)
    bl fn_8016A3AC
    bl fn_8016A2B4
    .4byte 0x48001004 # b .L_802EAC8C
L_802E9C8C:
    .4byte 0x806D9370 # lwz r3, lbl_8053AF30@sda21(r0)
    lbz 4, 0x294(30)
    bl fn_8044B80C
    stb 3, 0x29a(30)
    lbz 0, 0x29a(30)
    cmplwi 0, 0x1
    .4byte 0x4182FF20 # beq .L_802E9BC4
    .4byte 0x48000FE4 # b .L_802EAC8C
    .4byte 0x806D9370 # lwz r3, lbl_8053AF30@sda21(r0)
    li 0, 0x1
    stb 0, 0x14(3)
    lwz 3, 0x27c(30)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_802E9CCC
    subi 0, 3, 0x1
    stw 0, 0x27c(30)
L_802E9CCC:
    lwz 0, 0x27c(30)
    cntlzw 0, 0
    extrwi. 0, 0, 8, 19
    .4byte 0x41820FB4 # beq .L_802EAC8C
    bl fn_80119DD0
    li 4, 0x64
    li 5, 0x0
    li 6, 0x2
    li 7, 0x0
    li 8, 0x0
    li 9, 0x14
    li 10, 0x0
    bl fn_80119998
    li 3, 0x3c
    li 0, 0x2
    stw 3, 0x27c(30)
    stw 0, 0x23c(30)
    .4byte 0x48000F7C # b .L_802EAC8C
    lwz 3, 0x27c(30)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_802E9D28
    subi 0, 3, 0x1
    stw 0, 0x27c(30)
L_802E9D28:
    lwz 0, 0x27c(30)
    cntlzw 0, 0
    extrwi. 0, 0, 8, 19
    .4byte 0x41820028 # beq .L_802E9D5C
    lbz 0, 0x230(30)
    cmplwi 0, 0xf
    .4byte 0x40820010 # bne .L_802E9D50
    li 0, 0x4
    stw 0, 0x23c(30)
    .4byte 0x48000F40 # b .L_802EAC8C
L_802E9D50:
    li 0, 0x3
    stw 0, 0x23c(30)
    .4byte 0x48000F34 # b .L_802EAC8C
L_802E9D5C:
    .4byte 0x806D9370 # lwz r3, lbl_8053AF30@sda21(r0)
    li 0, 0x1
    stb 0, 0x14(3)
    .4byte 0x48000F24 # b .L_802EAC8C
    lbz 0, 0x230(30)
    addi 3, 31, 0xf0
    lbzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x40820020 # bne .L_802E9D9C
    .4byte 0x806D9330 # lwz r3, lbl_8053AEF0@sda21(r0)
    li 5, 0xc8
    li 6, 0xc8
    bl fn_804432DC
    li 0, 0x1ae
    stw 0, 0x27c(30)
    .4byte 0x4800001C # b .L_802E9DB4
L_802E9D9C:
    .4byte 0x806D9330 # lwz r3, lbl_8053AEF0@sda21(r0)
    li 5, 0x0
    li 6, 0xc8
    bl fn_804432DC
    li 0, 0xc8
    stw 0, 0x27c(30)
L_802E9DB4:
    li 0, 0x4
    stw 0, 0x23c(30)
    lbz 0, 0x230(30)
    clrlslwi 0, 0, 25, 1
    stb 0, 0x28c(30)
    .4byte 0x48000EC4 # b .L_802EAC8C
    lwz 3, 0x27c(30)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_802E9DE0
    subi 0, 3, 0x1
    stw 0, 0x27c(30)
L_802E9DE0:
    lwz 3, 0x27c(30)
    cntlzw 0, 3
    extrwi. 0, 0, 8, 19
    .4byte 0x41820354 # beq .L_802EA140
    lbz 4, 0x230(30)
    addi 3, 31, 0x104
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x41820044 # beq .L_802E9E44
    lis 3, lbl_804D56A8@ha
    slwi 9, 4, 3
    addi 8, 3, lbl_804D56A8@l
    slwi 0, 4, 1
    addi 3, 31, 0x88
    slwi 10, 4, 2
    addi 4, 31, 0x0
    addi 5, 31, 0x44
    add 7, 8, 9
    lhax 6, 3, 0
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lwzx 4, 4, 10
    lwzx 5, 5, 10
    lfsx 1, 8, 9
    lfs 2, 0x4(7)
    bl fn_8043A268
L_802E9E44:
    .4byte 0xC042E378 # lfs f2, lbl_80541318@sda21(r0)
    stfs 2, 0x274(30)
    lfs 3, 0x270(30)
    fcmpu cr0, 3, 2
    .4byte 0x41820034 # beq .L_802E9E88
    fsubs 1, 3, 2
    .4byte 0xC002E37C # lfs f0, lbl_8054131C@sda21(r0)
    fcmpo cr0, 3, 2
    fabs 1, 1
    fdivs 0, 1, 0
    .4byte 0x4080000C # bge .L_802E9E78
    stfs 0, 0x278(30)
    .4byte 0x4800000C # b .L_802E9E80
L_802E9E78:
    fneg 0, 0
    stfs 0, 0x278(30)
L_802E9E80:
    .4byte 0xC002E378 # lfs f0, lbl_80541318@sda21(r0)
    stfs 0, 0x274(30)
L_802E9E88:
    lbz 0, 0x28c(30)
    addi 4, 31, 0xac
    clrlslwi 0, 0, 24, 1
    add 3, 4, 0
    lhzx 31, 4, 0
    lhz 29, 0x2(3)
    bl GetRoomConfigRecord
    stw 31, 0x4(3)
    stw 29, 0x8(3)
    bl GetRoomConfigRecord
    bl fn_802D9CD8
    lwz 31, 0x280(30)
    lwz 29, 0x284(30)
    bl GetRoomConfigRecord
    stw 29, 0x4(3)
    stw 31, 0x8(3)
    bl SpatialRegistry_GetBase
    lwz 29, 0x1008(3)
    li 27, 0x0
    li 28, 0x0
    .4byte 0x48000254 # b .L_802EA12C
L_802E9EDC:
    bl SpatialRegistry_GetBase
    addi 0, 28, 0x8
    lwzx 0, 3, 0
    stw 0, 0x240(30)
    lwz 4, 0x240(30)
    cmplwi 4, 0x0
    .4byte 0x41820230 # beq .L_802EA124
    lwz 3, 0x1a0(4)
    subis 0, 3, 0x454f
    cmplwi 0, 0x574c
    .4byte 0x40820220 # bne .L_802EA124
    lbz 0, 0x11c(4)
    cmplwi 0, 0x1
    .4byte 0x40820214 # bne .L_802EA124
    lwz 3, 0x90(4)
    rlwinm. 0, 3, 0, 23, 23
    .4byte 0x40820208 # bne .L_802EA124
    lbz 0, 0x230(30)
    cmplwi 0, 0x4
    .4byte 0x41800014 # blt .L_802E9F3C
    cmplwi 0, 0x6
    .4byte 0x4181000C # bgt .L_802E9F3C
    clrlwi. 0, 3, 29
    .4byte 0x418201EC # beq .L_802EA124
L_802E9F3C:
    li 0, 0x5
    lis 3, lbl_804D5730@ha
    stw 0, 0x23c(30)
    lis 0, 0x4330
    addi 3, 3, lbl_804D5730@l
    .4byte 0xC042E358 # lfs f2, lbl_805412F8@sda21(r0)
    lwz 5, 0x240(30)
    addi 4, 1, 0x58
    stw 0, 0xc0(1)
    psq_l 1, 0xc(5), 0, 0
    lfs 0, 0x14(5)
    .4byte 0xC862E350 # lfd f3, lbl_805412F0@sda21(r0)
    psq_st 1, 0x244(30), 0, 0
    stfs 0, 0x24c(30)
    lbz 0, 0x230(30)
    slwi 0, 0, 3
    add 3, 3, 0
    lfs 0, 0x0(3)
    stfs 0, 0x250(30)
    lfs 0, 0x4(3)
    stfs 0, 0x254(30)
    lfs 0, 0x270(30)
    lfs 1, 0x254(30)
    fctiwz 4, 0
    lfs 0, 0x250(30)
    fadds 1, 2, 1
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 0, 0x58(1)
    stfd 4, 0xb8(1)
    lwz 0, 0xbc(1)
    stfs 1, 0x5c(1)
    xoris 0, 0, 0x8000
    stw 0, 0xc4(1)
    lwz 3, 0x24(3)
    lfd 0, 0xc0(1)
    fsubs 1, 0, 3
    bl fn_8030C7C4
    lbz 4, 0x230(30)
    lis 0, 0x4330
    lis 3, lbl_804AA0B8@ha
    .4byte 0xC002E384 # lfs f0, lbl_80541324@sda21(r0)
    slwi 4, 4, 2
    stw 0, 0xd0(1)
    addi 3, 3, lbl_804AA0B8@l
    .4byte 0xC842E350 # lfd f2, lbl_805412F0@sda21(r0)
    lwzx 3, 3, 4
    .4byte 0xC082E380 # lfs f4, lbl_80541320@sda21(r0)
    stw 3, 0x290(30)
    .4byte 0xC022E388 # lfs f1, lbl_80541328@sda21(r0)
    lfs 3, 0x250(30)
    stw 0, 0xe0(1)
    fmuls 0, 3, 0
    fctiwz 0, 0
    stfd 0, 0xc8(1)
    lwz 0, 0xcc(1)
    xoris 0, 0, 0x8000
    stw 0, 0xd4(1)
    lfd 0, 0xd0(1)
    fsubs 0, 0, 2
    fmuls 0, 4, 0
    stfs 0, 0x260(30)
    lfs 0, 0x254(30)
    fdivs 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0xd8(1)
    lwz 0, 0xdc(1)
    xoris 0, 0, 0x8000
    stw 0, 0xe4(1)
    lfd 0, 0xe0(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    stfs 0, 0x264(30)
    lbz 0, 0x230(30)
    cmplwi 0, 0x5
    .4byte 0x40820018 # bne .L_802EA07C
    lfs 1, 0x26c(30)
    .4byte 0xC002E38C # lfs f0, lbl_8054132C@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x26c(30)
    .4byte 0x4800001C # b .L_802EA094
L_802EA07C:
    cmplwi 0, 0x10
    .4byte 0x40820014 # bne .L_802EA094
    lfs 1, 0x260(30)
    .4byte 0xC002E390 # lfs f0, lbl_80541330@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x260(30)
L_802EA094:
    .4byte 0xC042E380 # lfs f2, lbl_80541320@sda21(r0)
    lfs 0, 0x260(30)
    .4byte 0xC022E388 # lfs f1, lbl_80541328@sda21(r0)
    fadds 0, 2, 0
    stfs 0, 0x268(30)
    lfs 0, 0x264(30)
    fadds 0, 1, 0
    stfs 0, 0x26c(30)
    lwz 3, 0x290(30)
    lbz 0, 0x0(3)
    cmplwi 0, 0xff
    .4byte 0x41820BF4 # beq .L_802EACB4
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_802EA0DC
    lfs 0, 0x264(30)
    fsubs 0, 0, 1
    stfs 0, 0x264(30)
    .4byte 0x48000BDC # b .L_802EACB4
L_802EA0DC:
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_802EA0F4
    lfs 0, 0x26c(30)
    fadds 0, 0, 1
    stfs 0, 0x26c(30)
    .4byte 0x48000BC4 # b .L_802EACB4
L_802EA0F4:
    cmplwi 0, 0x2
    .4byte 0x40820014 # bne .L_802EA10C
    lfs 0, 0x260(30)
    fsubs 0, 0, 2
    stfs 0, 0x260(30)
    .4byte 0x48000BAC # b .L_802EACB4
L_802EA10C:
    cmplwi 0, 0x3
    .4byte 0x40820BA4 # bne .L_802EACB4
    lfs 0, 0x268(30)
    fadds 0, 0, 2
    stfs 0, 0x268(30)
    .4byte 0x48000B94 # b .L_802EACB4
L_802EA124:
    addi 28, 28, 0x4
    addi 27, 27, 0x1
L_802EA12C:
    cmpw 27, 29
    .4byte 0x4180FDAC # blt .L_802E9EDC
    li 0, 0x0
    stb 0, 0x11c(30)
    .4byte 0x48000B50 # b .L_802EAC8C
L_802EA140:
    cmpwi 3, 0x3c
    .4byte 0x40820B48 # bne .L_802EAC8C
    bl fn_80119DD0
    li 4, 0x64
    li 5, 0x0
    li 6, 0x2
    li 7, 0x0
    li 8, 0x0
    li 9, 0x14
    li 10, 0x0
    bl fn_80119998
    .4byte 0x48000B20 # b .L_802EAC8C
    lwz 4, 0x240(30)
    psq_l 1, 0xc(4), 0, 0
    lfs 0, 0x14(4)
    psq_st 1, 0x244(30), 0, 0
    stfs 0, 0x24c(30)
    lwz 4, 0x240(30)
    lwz 0, 0x230(4)
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_802EA1A4
    bl fn_802E94F4
    li 0, 0x1
    stb 0, 0x297(30)
    .4byte 0x480001A0 # b .L_802EA340
L_802EA1A4:
    li 0, 0x0
    .4byte 0xC022E34C # lfs f1, lbl_805412EC@sda21(r0)
    stb 0, 0x298(30)
    .4byte 0xC002E358 # lfs f0, lbl_805412F8@sda21(r0)
    lfs 3, 0x250(30)
    lfs 2, 0x254(30)
    fadds 5, 3, 1
    stfs 3, 0x18(1)
    fadds 4, 2, 0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0x1c(1)
    .4byte 0xC042E35C # lfs f2, lbl_805412FC@sda21(r0)
    stfs 5, 0x30(1)
    frsp 7, 5
    stfs 4, 0x34(1)
    lwz 4, 0x24(3)
    lfs 6, 0x268(30)
    lwz 3, 0x164(4)
    lwz 0, 0x16c(4)
    stw 3, 0x80(1)
    lwz 3, 0x168(4)
    stw 0, 0x88(1)
    lwz 0, 0x170(4)
    stw 3, 0x84(1)
    lfs 1, 0x88(1)
    lfs 0, 0x80(1)
    stw 0, 0x8c(1)
    fsubs 3, 1, 0
    lfs 0, 0x84(1)
    lfs 1, 0x8c(1)
    stfs 5, 0x18(1)
    fmuls 3, 3, 2
    fsubs 1, 1, 0
    stfs 4, 0x1c(1)
    fadds 0, 7, 3
    fmuls 1, 1, 2
    fcmpo cr0, 0, 6
    cror eq, gt, eq
    .4byte 0x40820010 # bne .L_802EA24C
    fsubs 0, 6, 3
    stfs 0, 0x30(1)
    .4byte 0x48000020 # b .L_802EA268
L_802EA24C:
    fsubs 0, 7, 3
    lfs 2, 0x260(30)
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_802EA268
    fadds 0, 2, 3
    stfs 0, 0x30(1)
L_802EA268:
    lfs 3, 0x34(1)
    lfs 2, 0x26c(30)
    fadds 0, 3, 1
    fcmpo cr0, 0, 2
    cror eq, gt, eq
    .4byte 0x40820010 # bne .L_802EA28C
    fsubs 0, 2, 1
    stfs 0, 0x34(1)
    .4byte 0x48000020 # b .L_802EA2A8
L_802EA28C:
    fsubs 0, 3, 1
    lfs 2, 0x264(30)
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_802EA2A8
    fadds 0, 2, 1
    stfs 0, 0x34(1)
L_802EA2A8:
    lfs 2, 0x270(30)
    lfs 0, 0x274(30)
    fcmpu cr0, 2, 0
    .4byte 0x4182004C # beq .L_802EA300
    lfs 1, 0x278(30)
    .4byte 0xC002E34C # lfs f0, lbl_805412EC@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x270(30)
    lfs 1, 0x278(30)
    fcmpo cr0, 1, 0
    .4byte 0x4080001C # bge .L_802EA2EC
    lfs 0, 0x270(30)
    lfs 1, 0x274(30)
    fcmpo cr0, 0, 1
    .4byte 0x40800020 # bge .L_802EA300
    stfs 1, 0x270(30)
    .4byte 0x48000018 # b .L_802EA300
L_802EA2EC:
    lfs 0, 0x270(30)
    lfs 1, 0x274(30)
    fcmpo cr0, 0, 1
    .4byte 0x40810008 # ble .L_802EA300
    stfs 1, 0x270(30)
L_802EA300:
    lfs 0, 0x270(30)
    lis 0, 0x4330
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 1, 0x30
    fctiwz 0, 0
    stw 0, 0xd8(1)
    .4byte 0xC822E350 # lfd f1, lbl_805412F0@sda21(r0)
    lwz 3, 0x24(3)
    stfd 0, 0xe0(1)
    lwz 0, 0xe4(1)
    xoris 0, 0, 0x8000
    stw 0, 0xdc(1)
    lfd 0, 0xd8(1)
    fsubs 1, 0, 1
    bl fn_8030C7C4
    .4byte 0x48000950 # b .L_802EAC8C
L_802EA340:
    lwz 3, 0x290(30)
    lbz 0, 0x0(3)
    stb 0, 0x28d(30)
    lbz 0, 0x28d(30)
    cmplwi 0, 0xff
    .4byte 0x40820010 # bne .L_802EA364
    li 0, 0x7
    stw 0, 0x23c(30)
    .4byte 0x4800092C # b .L_802EAC8C
L_802EA364:
    lbz 0, 0x28c(30)
    addi 4, 31, 0xac
    clrlslwi 0, 0, 24, 1
    add 3, 4, 0
    lhzx 29, 4, 0
    lhz 31, 0x2(3)
    bl GetRoomConfigRecord
    stw 29, 0x4(3)
    stw 31, 0x8(3)
    lbz 0, 0x28d(30)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_802EA3B4
    li 3, 0x0
    li 0, -0x1
    stw 3, 0x50(1)
    stw 0, 0x54(1)
    bl GetRoomConfigRecord
    addi 4, 1, 0x50
    bl fn_802DCD1C
    .4byte 0x48000078 # b .L_802EA428
L_802EA3B4:
    cmplwi 0, 0x1
    .4byte 0x40820024 # bne .L_802EA3DC
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x48(1)
    stw 0, 0x4c(1)
    bl GetRoomConfigRecord
    addi 4, 1, 0x48
    bl fn_802DCD1C
    .4byte 0x48000050 # b .L_802EA428
L_802EA3DC:
    cmplwi 0, 0x2
    .4byte 0x40820024 # bne .L_802EA404
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x40(1)
    stw 0, 0x44(1)
    bl GetRoomConfigRecord
    addi 4, 1, 0x40
    bl fn_802DCD1C
    .4byte 0x48000028 # b .L_802EA428
L_802EA404:
    cmplwi 0, 0x3
    .4byte 0x40820020 # bne .L_802EA428
    li 3, 0x1
    li 0, 0x0
    stw 3, 0x38(1)
    stw 0, 0x3c(1)
    bl GetRoomConfigRecord
    addi 4, 1, 0x38
    bl fn_802DCD1C
L_802EA428:
    lwz 31, 0x280(30)
    lwz 29, 0x284(30)
    bl GetRoomConfigRecord
    stw 29, 0x4(3)
    li 0, 0x6
    .4byte 0xC022E384 # lfs f1, lbl_80541324@sda21(r0)
    stw 31, 0x8(3)
    .4byte 0xC062E388 # lfs f3, lbl_80541328@sda21(r0)
    stw 0, 0x23c(30)
    lfs 0, 0x244(30)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0xe0(1)
    lwz 0, 0xe4(1)
    sth 0, 0x288(30)
    lfs 0, 0x248(30)
    fdivs 0, 0, 3
    fctiwz 0, 0
    stfd 0, 0xd8(1)
    lwz 0, 0xdc(1)
    sth 0, 0x28a(30)
    lwz 3, 0x290(30)
    lbz 0, 0x0(3)
    cmplwi 0, 0xff
    .4byte 0x41820134 # beq .L_802EA5BC
    lfs 0, 0x250(30)
    lis 0, 0x4330
    stw 0, 0xd8(1)
    fmuls 0, 0, 1
    .4byte 0xC822E350 # lfd f1, lbl_805412F0@sda21(r0)
    .4byte 0xC042E380 # lfs f2, lbl_80541320@sda21(r0)
    stw 0, 0xc8(1)
    fctiwz 0, 0
    stfd 0, 0xe0(1)
    lwz 0, 0xe4(1)
    xoris 0, 0, 0x8000
    stw 0, 0xdc(1)
    lfd 0, 0xd8(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    stfs 0, 0x260(30)
    lfs 0, 0x254(30)
    fdivs 0, 0, 3
    fctiwz 0, 0
    stfd 0, 0xd0(1)
    lwz 0, 0xd4(1)
    xoris 0, 0, 0x8000
    stw 0, 0xcc(1)
    lfd 0, 0xc8(1)
    fsubs 0, 0, 1
    fmuls 0, 3, 0
    stfs 0, 0x264(30)
    lfs 0, 0x260(30)
    fadds 0, 2, 0
    stfs 0, 0x268(30)
    lfs 0, 0x264(30)
    fadds 0, 3, 0
    stfs 0, 0x26c(30)
    lbz 0, 0x230(30)
    cmplwi 0, 0x5
    .4byte 0x40820018 # bne .L_802EA530
    lfs 1, 0x26c(30)
    .4byte 0xC002E38C # lfs f0, lbl_8054132C@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x26c(30)
    .4byte 0x4800001C # b .L_802EA548
L_802EA530:
    cmplwi 0, 0x10
    .4byte 0x40820014 # bne .L_802EA548
    lfs 1, 0x260(30)
    .4byte 0xC002E390 # lfs f0, lbl_80541330@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x260(30)
L_802EA548:
    lwz 3, 0x290(30)
    lbz 0, 0x0(3)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_802EA56C
    lfs 1, 0x264(30)
    .4byte 0xC002E388 # lfs f0, lbl_80541328@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x264(30)
    .4byte 0x48000054 # b .L_802EA5BC
L_802EA56C:
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_802EA588
    lfs 1, 0x26c(30)
    .4byte 0xC002E388 # lfs f0, lbl_80541328@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x26c(30)
    .4byte 0x48000038 # b .L_802EA5BC
L_802EA588:
    cmplwi 0, 0x2
    .4byte 0x40820018 # bne .L_802EA5A4
    lfs 1, 0x260(30)
    .4byte 0xC002E380 # lfs f0, lbl_80541320@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x260(30)
    .4byte 0x4800001C # b .L_802EA5BC
L_802EA5A4:
    cmplwi 0, 0x3
    .4byte 0x40820014 # bne .L_802EA5BC
    lfs 1, 0x268(30)
    .4byte 0xC002E380 # lfs f0, lbl_80541320@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x268(30)
L_802EA5BC:
    lwz 3, 0x290(30)
    addi 0, 3, 0x1
    stw 0, 0x290(30)
    .4byte 0x480006C4 # b .L_802EAC8C
    lwz 4, 0x240(30)
    psq_l 1, 0xc(4), 0, 0
    lfs 0, 0x14(4)
    psq_st 1, 0x244(30), 0, 0
    stfs 0, 0x24c(30)
    bl fn_802E94F4
    lfs 1, 0x244(30)
    .4byte 0xC002E384 # lfs f0, lbl_80541324@sda21(r0)
    lhz 3, 0x288(30)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xe0(1)
    lwz 0, 0xe4(1)
    clrlwi 0, 0, 16
    cmplw 3, 0
    .4byte 0x4082002C # bne .L_802EA634
    lfs 1, 0x248(30)
    .4byte 0xC002E388 # lfs f0, lbl_80541328@sda21(r0)
    lhz 3, 0x28a(30)
    fdivs 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xe0(1)
    lwz 0, 0xe4(1)
    clrlwi 0, 0, 16
    cmplw 3, 0
    .4byte 0x4182065C # beq .L_802EAC8C
L_802EA634:
    psq_l 1, 0x244(30), 0, 0
    addi 4, 1, 0x90
    lfs 0, 0x24c(30)
    mr 3, 30
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x98(1)
    bl fn_802E9884
    clrlwi. 0, 3, 24
    .4byte 0x41820638 # beq .L_802EAC8C
    li 3, 0x5
    li 0, 0x1
    stw 3, 0x23c(30)
    stb 0, 0x297(30)
    .4byte 0x48000624 # b .L_802EAC8C
    lbz 0, 0x29a(30)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_802EA688
    .4byte 0x806D9370 # lwz r3, lbl_8053AF30@sda21(r0)
    lbz 4, 0x294(30)
    bl fn_8044B80C
    stb 3, 0x29a(30)
L_802EA688:
    lwz 0, 0x27c(30)
    cmpwi 0, 0x0
    .4byte 0x40820048 # bne .L_802EA6D8
    lwz 4, 0x240(30)
    mr 3, 30
    psq_l 1, 0xc(4), 0, 0
    lfs 0, 0x14(4)
    psq_st 1, 0x244(30), 0, 0
    stfs 0, 0x24c(30)
    bl fn_802E94F4
    lwz 3, 0x240(30)
    lwz 0, 0x230(3)
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_802EA6C8
    cmpwi 0, 0x3
    .4byte 0x408205C8 # bne .L_802EAC8C
L_802EA6C8:
    stb 0, 0x295(30)
    li 0, 0xc8
    stw 0, 0x27c(30)
    .4byte 0x480005B8 # b .L_802EAC8C
L_802EA6D8:
    lfs 3, 0x250(30)
    lfs 2, 0x254(30)
    .4byte 0xC022E34C # lfs f1, lbl_805412EC@sda21(r0)
    .4byte 0xC002E358 # lfs f0, lbl_805412F8@sda21(r0)
    fadds 5, 3, 1
    stfs 3, 0x10(1)
    fadds 4, 2, 0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0x14(1)
    .4byte 0xC042E35C # lfs f2, lbl_805412FC@sda21(r0)
    stfs 5, 0x28(1)
    frsp 7, 5
    stfs 4, 0x2c(1)
    lwz 4, 0x24(3)
    lfs 6, 0x268(30)
    lwz 3, 0x164(4)
    lwz 0, 0x16c(4)
    stw 3, 0x70(1)
    lwz 3, 0x168(4)
    stw 0, 0x78(1)
    lwz 0, 0x170(4)
    stw 3, 0x74(1)
    lfs 1, 0x78(1)
    lfs 0, 0x70(1)
    stw 0, 0x7c(1)
    fsubs 3, 1, 0
    lfs 0, 0x74(1)
    lfs 1, 0x7c(1)
    stfs 5, 0x10(1)
    fmuls 3, 3, 2
    fsubs 1, 1, 0
    stfs 4, 0x14(1)
    fadds 0, 7, 3
    fmuls 1, 1, 2
    fcmpo cr0, 0, 6
    cror eq, gt, eq
    .4byte 0x40820010 # bne .L_802EA778
    fsubs 0, 6, 3
    stfs 0, 0x28(1)
    .4byte 0x48000020 # b .L_802EA794
L_802EA778:
    fsubs 0, 7, 3
    lfs 2, 0x260(30)
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_802EA794
    fadds 0, 2, 3
    stfs 0, 0x28(1)
L_802EA794:
    lfs 3, 0x2c(1)
    lfs 2, 0x26c(30)
    fadds 0, 3, 1
    fcmpo cr0, 0, 2
    cror eq, gt, eq
    .4byte 0x40820010 # bne .L_802EA7B8
    fsubs 0, 2, 1
    stfs 0, 0x2c(1)
    .4byte 0x48000020 # b .L_802EA7D4
L_802EA7B8:
    fsubs 0, 3, 1
    lfs 2, 0x264(30)
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_802EA7D4
    fadds 0, 2, 1
    stfs 0, 0x2c(1)
L_802EA7D4:
    lfs 2, 0x270(30)
    lfs 0, 0x274(30)
    fcmpu cr0, 2, 0
    .4byte 0x4182004C # beq .L_802EA82C
    lfs 1, 0x278(30)
    .4byte 0xC002E34C # lfs f0, lbl_805412EC@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x270(30)
    lfs 1, 0x278(30)
    fcmpo cr0, 1, 0
    .4byte 0x4080001C # bge .L_802EA818
    lfs 0, 0x270(30)
    lfs 1, 0x274(30)
    fcmpo cr0, 0, 1
    .4byte 0x40800020 # bge .L_802EA82C
    stfs 1, 0x270(30)
    .4byte 0x48000018 # b .L_802EA82C
L_802EA818:
    lfs 0, 0x270(30)
    lfs 1, 0x274(30)
    fcmpo cr0, 0, 1
    .4byte 0x40810008 # ble .L_802EA82C
    stfs 1, 0x270(30)
L_802EA82C:
    lfs 0, 0x270(30)
    lis 0, 0x4330
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 1, 0x28
    fctiwz 0, 0
    stw 0, 0xd8(1)
    .4byte 0xC822E350 # lfd f1, lbl_805412F0@sda21(r0)
    lwz 3, 0x24(3)
    stfd 0, 0xe0(1)
    lwz 0, 0xe4(1)
    xoris 0, 0, 0x8000
    stw 0, 0xdc(1)
    lfd 0, 0xd8(1)
    fsubs 1, 0, 1
    bl fn_8030C7C4
    lwz 3, 0x27c(30)
    subi 0, 3, 0x1
    stw 0, 0x27c(30)
    lwz 0, 0x27c(30)
    cmpwi 0, 0x0
    .4byte 0x4082003C # bne .L_802EA8B8
L_802EA880:
    li 0, 0x3c
    stw 0, 0x27c(30)
    bl fn_80119DD0
    li 4, 0x64
    li 5, 0x0
    li 6, 0x2
    li 7, 0x0
    li 8, 0x0
    li 9, 0x14
    li 10, 0x0
    bl fn_80119998
    li 0, 0x8
    stw 0, 0x23c(30)
    .4byte 0x480003D8 # b .L_802EAC8C
L_802EA8B8:
    lwz 7, 0x240(30)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 0, 0x90(7)
    lwz 6, 0x24(3)
    clrlwi. 0, 0, 29
    psq_l 1, 0xc(7), 0, 0
    lfs 0, 0x14(7)
    lwz 5, 0x164(6)
    lwz 4, 0x168(6)
    lwz 3, 0x16c(6)
    lwz 0, 0x170(6)
    psq_st 1, 0xac(1), 0, 0
    stfs 0, 0xb4(1)
    stw 5, 0x9c(1)
    stw 4, 0xa0(1)
    stw 3, 0xa4(1)
    stw 0, 0xa8(1)
    .4byte 0x40820038 # bne .L_802EA934
    lfs 0, 0xa4(1)
    .4byte 0xC082E394 # lfs f4, lbl_80541334@sda21(r0)
    lfs 2, 0x9c(1)
    lfs 1, 0xa8(1)
    fadds 3, 0, 4
    lfs 0, 0xa0(1)
    fsubs 2, 2, 4
    fadds 1, 1, 4
    fsubs 0, 0, 4
    stfs 3, 0xa4(1)
    stfs 2, 0x9c(1)
    stfs 1, 0xa8(1)
    stfs 0, 0xa0(1)
L_802EA934:
    lfs 2, 0xac(1)
    li 0, 0x0
    lfs 0, 0x9c(1)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_802EA97C
    lfs 1, 0xb0(1)
    lfs 0, 0xa0(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_802EA97C
    lfs 0, 0xa4(1)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_802EA97C
    lfs 0, 0xa8(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_802EA97C
    li 0, 0x1
L_802EA97C:
    clrlwi. 0, 0, 24
    .4byte 0x4182FF00 # beq .L_802EA880
    lbz 0, 0x11c(7)
    cmplwi 0, 0x0
    .4byte 0x40820300 # bne .L_802EAC8C
    .4byte 0x4BFFFEF0 # b .L_802EA880
    lwz 3, 0x27c(30)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_802EA9A8
    subi 0, 3, 0x1
    stw 0, 0x27c(30)
L_802EA9A8:
    lwz 0, 0x27c(30)
    cntlzw 0, 0
    extrwi. 0, 0, 8, 19
    .4byte 0x41820148 # beq .L_802EAAFC
    lbz 0, 0x295(30)
    cmplwi 0, 0x2
    .4byte 0x40820010 # bne .L_802EA9D0
    li 0, 0x0
    stw 0, 0x23c(30)
    .4byte 0x48000014 # b .L_802EA9E0
L_802EA9D0:
    li 3, 0x4
    li 0, 0xa
    stw 3, 0x23c(30)
    stw 0, 0x27c(30)
L_802EA9E0:
    lbz 4, 0x230(30)
    lis 3, lbl_804D5730@ha
    addi 3, 3, lbl_804D5730@l
    li 0, 0x0
    addi 4, 4, 0x1
    stb 4, 0x230(30)
    lbz 4, 0x230(30)
    clrlslwi 4, 4, 25, 1
    stb 4, 0x28c(30)
    lbz 4, 0x230(30)
    slwi 4, 4, 3
    add 3, 3, 4
    lfs 0, 0x0(3)
    stfs 0, 0x258(30)
    lfs 0, 0x4(3)
    stfs 0, 0x25c(30)
    lfs 0, 0x258(30)
    stfs 0, 0xc(30)
    lfs 0, 0x25c(30)
    stfs 0, 0x10(30)
    stw 0, 0x240(30)
    bl SpatialRegistry_GetBase
    li 29, 0x0
    lwz 31, 0x1008(3)
    mr 27, 29
    .4byte 0x480000A4 # b .L_802EAAE8
L_802EAA48:
    bl SpatialRegistry_GetBase
    addi 0, 27, 0x8
    lwzx 28, 3, 0
    cmplwi 28, 0x0
    .4byte 0x41820088 # beq .L_802EAAE0
    lbz 0, 0x11c(28)
    cmplwi 0, 0x1
    .4byte 0x4082007C # bne .L_802EAAE0
    lwz 3, 0x1a0(28)
    subis 0, 3, 0x454f
    cmplwi 0, 0x574c
    .4byte 0x40820018 # bne .L_802EAA8C
    mr 3, 28
    bl fn_803613D0
    li 0, 0x0
    stb 0, 0x11c(28)
    .4byte 0x48000058 # b .L_802EAAE0
L_802EAA8C:
    subis 0, 3, 0x4545
    cmplwi 0, 0x5443
    .4byte 0x40820018 # bne .L_802EAAAC
    mr 3, 28
    bl fn_80362634
    li 0, 0x0
    stb 0, 0x11c(28)
    .4byte 0x48000038 # b .L_802EAAE0
L_802EAAAC:
    subis 0, 3, 0x454c
    cmplwi 0, 0x4b32
    .4byte 0x40820018 # bne .L_802EAACC
    mr 3, 28
    bl fn_8036E544
    li 0, 0x0
    stb 0, 0x11c(28)
    .4byte 0x48000018 # b .L_802EAAE0
L_802EAACC:
    subis 0, 3, 0x5255
    cmplwi 0, 0x5059
    .4byte 0x4082000C # bne .L_802EAAE0
    li 0, 0x0
    stb 0, 0x11c(28)
L_802EAAE0:
    addi 27, 27, 0x4
    addi 29, 29, 0x1
L_802EAAE8:
    cmpw 29, 31
    .4byte 0x4180FF5C # blt .L_802EAA48
    li 0, 0x0
    stb 0, 0x231(30)
    .4byte 0x48000194 # b .L_802EAC8C
L_802EAAFC:
    lfs 3, 0x250(30)
    lfs 2, 0x254(30)
    .4byte 0xC022E34C # lfs f1, lbl_805412EC@sda21(r0)
    .4byte 0xC002E358 # lfs f0, lbl_805412F8@sda21(r0)
    fadds 5, 3, 1
    stfs 3, 0x8(1)
    fadds 4, 2, 0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0xc(1)
    .4byte 0xC042E35C # lfs f2, lbl_805412FC@sda21(r0)
    stfs 5, 0x20(1)
    frsp 7, 5
    stfs 4, 0x24(1)
    lwz 4, 0x24(3)
    lfs 6, 0x268(30)
    lwz 3, 0x164(4)
    lwz 0, 0x16c(4)
    stw 3, 0x60(1)
    lwz 3, 0x168(4)
    stw 0, 0x68(1)
    lwz 0, 0x170(4)
    stw 3, 0x64(1)
    lfs 1, 0x68(1)
    lfs 0, 0x60(1)
    stw 0, 0x6c(1)
    fsubs 3, 1, 0
    lfs 0, 0x64(1)
    lfs 1, 0x6c(1)
    stfs 5, 0x8(1)
    fmuls 3, 3, 2
    fsubs 1, 1, 0
    stfs 4, 0xc(1)
    fadds 0, 7, 3
    fmuls 1, 1, 2
    fcmpo cr0, 0, 6
    cror eq, gt, eq
    .4byte 0x40820010 # bne .L_802EAB9C
    fsubs 0, 6, 3
    stfs 0, 0x20(1)
    .4byte 0x48000020 # b .L_802EABB8
L_802EAB9C:
    fsubs 0, 7, 3
    lfs 2, 0x260(30)
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_802EABB8
    fadds 0, 2, 3
    stfs 0, 0x20(1)
L_802EABB8:
    lfs 3, 0x24(1)
    lfs 2, 0x26c(30)
    fadds 0, 3, 1
    fcmpo cr0, 0, 2
    cror eq, gt, eq
    .4byte 0x40820010 # bne .L_802EABDC
    fsubs 0, 2, 1
    stfs 0, 0x24(1)
    .4byte 0x48000020 # b .L_802EABF8
L_802EABDC:
    fsubs 0, 3, 1
    lfs 2, 0x264(30)
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_802EABF8
    fadds 0, 2, 1
    stfs 0, 0x24(1)
L_802EABF8:
    lfs 2, 0x270(30)
    lfs 0, 0x274(30)
    fcmpu cr0, 2, 0
    .4byte 0x4182004C # beq .L_802EAC50
    lfs 1, 0x278(30)
    .4byte 0xC002E34C # lfs f0, lbl_805412EC@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x270(30)
    lfs 1, 0x278(30)
    fcmpo cr0, 1, 0
    .4byte 0x4080001C # bge .L_802EAC3C
    lfs 0, 0x270(30)
    lfs 1, 0x274(30)
    fcmpo cr0, 0, 1
    .4byte 0x40800020 # bge .L_802EAC50
    stfs 1, 0x270(30)
    .4byte 0x48000018 # b .L_802EAC50
L_802EAC3C:
    lfs 0, 0x270(30)
    lfs 1, 0x274(30)
    fcmpo cr0, 0, 1
    .4byte 0x40810008 # ble .L_802EAC50
    stfs 1, 0x270(30)
L_802EAC50:
    lfs 0, 0x270(30)
    lis 0, 0x4330
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 1, 0x20
    fctiwz 0, 0
    stw 0, 0xd8(1)
    .4byte 0xC822E350 # lfd f1, lbl_805412F0@sda21(r0)
    lwz 3, 0x24(3)
    stfd 0, 0xe0(1)
    lwz 0, 0xe4(1)
    xoris 0, 0, 0x8000
    stw 0, 0xdc(1)
    lfd 0, 0xd8(1)
    fsubs 1, 0, 1
    bl fn_8030C7C4
L_802EAC8C:
    lwz 0, 0x240(30)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_802EACB4
    lwz 0, 0x23c(30)
    cmpwi 0, 0x7
    .4byte 0x40800014 # bge .L_802EACB4
    psq_l 1, 0x244(30), 0, 0
    lfs 0, 0x24c(30)
    psq_st 1, 0xc(30), 0, 0
    stfs 0, 0x14(30)
L_802EACB4:
    lmw 27, 0xec(1)
    lwz 0, 0x104(1)
    mtlr 0
    addi 1, 1, 0x100
    blr

