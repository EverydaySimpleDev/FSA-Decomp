# fn_801AAF44 (0x764 - Track A byte-match + overview) - GOMA cluster,
# 3/7. One of GOMA's two big per-phase update() bodies, called from the
# dispatcher fn_801AAE88. A large multi-state handler using confirmed
# shared primitives: fn_801F3D94 (knockback physics), fn_801F71A4 (ease
# primitive), fn_801F9484 (generic FourCC actor dispatcher - spawns a
# companion actor/projectile), fn_80458FF0 (sound), plus several
# project-local movement/targeting helpers (fn_801EEC98/801F2618/
# 801F2B7C/801F2DB4/801F666C/801F681C/801F856C/8030C210). Byte-matched
# via direct transcription of the dtk auto-disasm; full per-state
# semantic breakdown deferred given the function's size.
.section extab, "a"
.balign 4
.global etb_80007ABC
etb_80007ABC:
    .4byte 0x28CA0000
    .4byte 0x00000000
.size etb_80007ABC, 8

.section extabindex, "a"
.balign 4
.global eti_80014998
eti_80014998:
    .4byte fn_801AAF44
    .4byte 0x00000764
    .4byte etb_80007ABC
.size eti_80014998, 12

.text
.balign 4
.global fn_801AAF44

fn_801AAF44:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stfd 29, 0x50(1)
    psq_st 29, 0x58(1), 0, 0
    stmw 27, 0x3c(1)
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    mr 28, 3
    addi 4, 28, 0xc
    lwz 3, 0x24(5)
    bl fn_8030C210
    mr 3, 28
    li 4, 0x1
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_801AAFA8
    mr 3, 28
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x480006D8 # b .L_801AB67C
L_801AAFA8:
    lwz 0, 0x108(28)
    cmpwi 0, 0x3e8
    .4byte 0x40800024 # bge .L_801AAFD4
    mr 3, 28
    lwz 12, 0x0(28)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0xb0(28)
    .4byte 0x480006AC # b .L_801AB67C
L_801AAFD4:
    lis 4, 0x4e55
    lis 5, 0x4842
    lfs 29, 0x3c(28)
    mr 3, 28
    lfs 30, 0x40(28)
    addi 4, 4, 0x4c4c
    lfs 31, 0x44(28)
    addi 5, 5, 0x4d42
    li 6, 0x0
    bl fn_801F2DB4
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_801AB01C
    stfs 29, 0x3c(28)
    li 0, 0x0
    stfs 30, 0x40(28)
    stfs 31, 0x44(28)
    stw 0, 0xd8(28)
    stw 0, 0xdc(28)
L_801AB01C:
    lfs 1, 0x264(28)
    addi 3, 28, 0x3c
    .4byte 0xC042B7B0 # lfs f2, lbl_8053E750@sda21(r0)
    .4byte 0xC062B7B4 # lfs f3, lbl_8053E754@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x268(28)
    addi 3, 28, 0x40
    .4byte 0xC042B7B0 # lfs f2, lbl_8053E750@sda21(r0)
    .4byte 0xC062B7B4 # lfs f3, lbl_8053E754@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(28), 0, 0
    mr 3, 28
    psq_l 0, 0x3c(28), 0, 0
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    ps_add 0, 1, 0
    psq_st 0, 0xc(28), 0, 0
    psq_l 1, 0x14(28), 1, 0
    psq_l 0, 0x44(28), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(28), 1, 0
    bl fn_801F2B7C
    mr 3, 28
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0xC002B7B8 # lfs f0, lbl_8053E758@sda21(r0)
    mr 31, 3
    .4byte 0xC022B7BC # lfs f1, lbl_8053E75C@sda21(r0)
    stfs 0, 0x270(28)
    .4byte 0xC002B7C0 # lfs f0, lbl_8053E760@sda21(r0)
    stfs 1, 0x274(28)
    .4byte 0xC0C2B7C4 # lfs f6, lbl_8053E764@sda21(r0)
    stfs 1, 0x278(28)
    .4byte 0xC0A2B7C8 # lfs f5, lbl_8053E768@sda21(r0)
    stfs 0, 0x60(28)
    .4byte 0xC082B7CC # lfs f4, lbl_8053E76C@sda21(r0)
    stfs 6, 0x64(28)
    .4byte 0xC062B7D0 # lfs f3, lbl_8053E770@sda21(r0)
    stfs 5, 0x68(28)
    .4byte 0xC042B7D4 # lfs f2, lbl_8053E774@sda21(r0)
    stfs 4, 0x6c(28)
    .4byte 0xC022B7D8 # lfs f1, lbl_8053E778@sda21(r0)
    stfs 0, 0x80(28)
    .4byte 0xC002B7DC # lfs f0, lbl_8053E77C@sda21(r0)
    stfs 3, 0x84(28)
    stfs 5, 0x88(28)
    stfs 2, 0x8c(28)
    stfs 1, 0x70(28)
    stfs 6, 0x74(28)
    stfs 0, 0x78(28)
    stfs 4, 0x7c(28)
    lwz 3, 0x230(28)
    subi 0, 3, 0x7
    cmplwi 0, 0x6
    .4byte 0x41810580 # bgt .L_801AB67C
    lis 3, jumptable_804A30D0@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A30D0@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x4
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    li 0, 0x8
    stw 0, 0x230(28)
    li 5, 0x0
    lis 3, 0x19
    stw 5, 0x234(28)
    lis 0, 0x4330
    addi 3, 3, 0x660d
    .4byte 0xC002B7B4 # lfs f0, lbl_8053E754@sda21(r0)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    .4byte 0xC0C2B7E0 # lfs f6, lbl_8053E780@sda21(r0)
    lwz 4, 0xb4(6)
    stw 0, 0x28(1)
    mullw 3, 4, 3
    .4byte 0xC022B7A4 # lfs f1, lbl_8053E744@sda21(r0)
    .4byte 0xC842B800 # lfd f2, lbl_8053E7A0@sda21(r0)
    .4byte 0xC062B7E8 # lfs f3, lbl_8053E788@sda21(r0)
    .4byte 0xC082B7E4 # lfs f4, lbl_8053E784@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 5, 0xc(1)
    fsubs 0, 5, 0
    fmuls 0, 6, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 3, 0x24(1)
    addi 0, 3, 0xc8
    stw 0, 0x23c(28)
    stw 5, 0x244(28)
    lwz 0, 0x260(28)
    stw 0, 0x98(28)
    lwz 0, 0x258(28)
    subfic 0, 0, 0x3
    stfs 1, 0x44(28)
    xoris 0, 0, 0x8000
    stw 0, 0x2c(1)
    lfd 0, 0x28(1)
    stfs 1, 0x40(28)
    fsubs 0, 0, 2
    stfs 1, 0x3c(28)
    fmuls 0, 3, 0
    lwz 0, 0x98(28)
    cmpwi 0, 0x2
    fadds 0, 4, 0
    .4byte 0x41820048 # beq .L_801AB238
    .4byte 0x40800014 # bge .L_801AB208
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801AB214
    .4byte 0x40800024 # bge .L_801AB224
    .4byte 0x48000054 # b .L_801AB258
L_801AB208:
    cmpwi 0, 0x4
    .4byte 0x4080004C # bge .L_801AB258
    .4byte 0x48000038 # b .L_801AB248
L_801AB214:
    stfs 0, 0x264(28)
    stfs 1, 0x268(28)
    stfs 1, 0x26c(28)
    .4byte 0x48000038 # b .L_801AB258
L_801AB224:
    fneg 0, 0
    stfs 0, 0x264(28)
    stfs 1, 0x268(28)
    stfs 1, 0x26c(28)
    .4byte 0x48000024 # b .L_801AB258
L_801AB238:
    stfs 1, 0x264(28)
    stfs 0, 0x268(28)
    stfs 1, 0x26c(28)
    .4byte 0x48000014 # b .L_801AB258
L_801AB248:
    fneg 0, 0
    stfs 1, 0x264(28)
    stfs 0, 0x268(28)
    stfs 1, 0x26c(28)
L_801AB258:
    li 0, 0x2
    lis 3, 0x4330
    stw 0, 0x98(28)
    li 0, 0x9
    .4byte 0xC822B800 # lfd f1, lbl_8053E7A0@sda21(r0)
    lwz 4, 0x258(28)
    stw 3, 0x28(1)
    subfic 3, 4, 0x3
    .4byte 0xC042B7F0 # lfs f2, lbl_8053E790@sda21(r0)
    xoris 3, 3, 0x8000
    .4byte 0xC062B7EC # lfs f3, lbl_8053E78C@sda21(r0)
    stw 3, 0x2c(1)
    lfd 0, 0x28(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fsubs 0, 3, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 3, 0x24(1)
    stw 3, 0x238(28)
    stw 0, 0x230(28)
    clrlwi. 0, 31, 24
    .4byte 0x418200D4 # beq .L_801AB384
    lwz 3, 0x260(28)
    lis 0, 0x4330
    stw 0, 0x28(1)
    xori 0, 3, 0x1
    .4byte 0xC022B7A4 # lfs f1, lbl_8053E744@sda21(r0)
    stw 0, 0x260(28)
    .4byte 0xC842B800 # lfd f2, lbl_8053E7A0@sda21(r0)
    lwz 0, 0x260(28)
    .4byte 0xC062B7E8 # lfs f3, lbl_8053E788@sda21(r0)
    stw 0, 0x98(28)
    .4byte 0xC082B7E4 # lfs f4, lbl_8053E784@sda21(r0)
    lwz 0, 0x258(28)
    subfic 0, 0, 0x3
    stfs 1, 0x44(28)
    xoris 0, 0, 0x8000
    stw 0, 0x2c(1)
    lfd 0, 0x28(1)
    stfs 1, 0x40(28)
    fsubs 0, 0, 2
    stfs 1, 0x3c(28)
    fmuls 0, 3, 0
    lwz 0, 0x98(28)
    cmpwi 0, 0x2
    fadds 0, 4, 0
    .4byte 0x41820048 # beq .L_801AB35C
    .4byte 0x40800014 # bge .L_801AB32C
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801AB338
    .4byte 0x40800024 # bge .L_801AB348
    .4byte 0x48000054 # b .L_801AB37C
L_801AB32C:
    cmpwi 0, 0x4
    .4byte 0x4080004C # bge .L_801AB37C
    .4byte 0x48000038 # b .L_801AB36C
L_801AB338:
    stfs 0, 0x264(28)
    stfs 1, 0x268(28)
    stfs 1, 0x26c(28)
    .4byte 0x48000038 # b .L_801AB37C
L_801AB348:
    fneg 0, 0
    stfs 0, 0x264(28)
    stfs 1, 0x268(28)
    stfs 1, 0x26c(28)
    .4byte 0x48000024 # b .L_801AB37C
L_801AB35C:
    stfs 1, 0x264(28)
    stfs 0, 0x268(28)
    stfs 1, 0x26c(28)
    .4byte 0x48000014 # b .L_801AB37C
L_801AB36C:
    fneg 0, 0
    stfs 1, 0x264(28)
    stfs 0, 0x268(28)
    stfs 1, 0x26c(28)
L_801AB37C:
    li 0, 0x2
    stw 0, 0x98(28)
L_801AB384:
    lwz 0, 0x238(28)
    cmpwi 0, 0x0
    .4byte 0x4082016C # bne .L_801AB4F8
    lfs 1, 0x10(28)
    li 0, 0x0
    .4byte 0xC002B7F4 # lfs f0, lbl_8053E794@sda21(r0)
    mr 3, 28
    lfs 31, 0xc(28)
    addi 5, 1, 0x8
    fadds 0, 1, 0
    lfs 30, 0x10(28)
    lfs 29, 0x14(28)
    li 30, 0x1
    li 6, 0x0
    li 7, 0x0
    stfs 0, 0x10(28)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x4
    sth 0, 0x8(1)
    lwz 4, 0x198(28)
    bl fn_801EEC98
    lwz 0, 0x258(28)
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_801AB3F8
    lhz 3, 0x8(1)
    li 30, 0x3
    subi 0, 3, 0x2000
    sth 0, 0x8(1)
L_801AB3F8:
    li 29, 0x0
    lis 31, 0x4f4b
    .4byte 0x480000E4 # b .L_801AB4E4
L_801AB404:
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(28)
    addi 4, 31, 0x544d
    addi 6, 28, 0xc
    li 7, 0x4
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 27, 3
    .4byte 0x418000AC # blt .L_801AB4D4
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    mr. 27, 3
    .4byte 0x41820098 # beq .L_801AB4D4
    lhz 4, 0x8(1)
    lis 3, lbl_8052EBC0@ha
    addi 0, 3, lbl_8052EBC0@l
    .4byte 0xC002B7A4 # lfs f0, lbl_8053E744@sda21(r0)
    rlwinm 3, 4, 30, 18, 28
    .4byte 0xC062B7F8 # lfs f3, lbl_8053E798@sda21(r0)
    add 3, 0, 3
    stfs 0, 0x18(1)
    lfs 2, 0x0(3)
    lfs 1, 0x4(3)
    fmuls 2, 3, 2
    fmuls 1, 3, 1
    stfs 2, 0x10(1)
    stfs 1, 0x14(1)
    psq_l 1, 0x10(1), 0, 0
    psq_st 1, 0x3c(27), 0, 0
    stfs 0, 0x44(27)
    lhz 3, 0x8(1)
    bl ClassifyBamAngleToQuadrant
    stw 3, 0x98(27)
    lis 0, 0x4330
    .4byte 0xC822B800 # lfd f1, lbl_8053E7A0@sda21(r0)
    lwz 3, 0x258(28)
    stw 0, 0x28(1)
    subfic 0, 3, 0x3
    .4byte 0xC042B7F0 # lfs f2, lbl_8053E790@sda21(r0)
    xoris 0, 0, 0x8000
    .4byte 0xC062B7EC # lfs f3, lbl_8053E78C@sda21(r0)
    stw 0, 0x2c(1)
    lfd 0, 0x28(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fsubs 0, 3, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    stw 0, 0x238(28)
L_801AB4D4:
    lhz 3, 0x8(1)
    addi 29, 29, 0x1
    addi 0, 3, 0x2000
    sth 0, 0x8(1)
L_801AB4E4:
    cmpw 29, 30
    .4byte 0x4180FF1C # blt .L_801AB404
    stfs 31, 0xc(28)
    stfs 30, 0x10(28)
    stfs 29, 0x14(28)
L_801AB4F8:
    lwz 0, 0x234(28)
    cmpwi 0, 0x0
    .4byte 0x4082004C # bne .L_801AB54C
    lwz 0, 0x248(28)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_801AB520
    lwz 3, 0x244(28)
    addi 0, 3, 0x13
    stw 0, 0x250(28)
    .4byte 0x48000010 # b .L_801AB52C
L_801AB520:
    lwz 3, 0x244(28)
    addi 0, 3, 0x8
    stw 0, 0x250(28)
L_801AB52C:
    li 0, 0x5
    stw 0, 0x234(28)
    lwz 3, 0x244(28)
    addi 0, 3, 0x1
    stw 0, 0x244(28)
    lwz 0, 0x244(28)
    clrlwi 0, 0, 30
    stw 0, 0x244(28)
L_801AB54C:
    lwz 0, 0x23c(28)
    cmpwi 0, 0x0
    .4byte 0x40820128 # bne .L_801AB67C
    .4byte 0xC002B7A4 # lfs f0, lbl_8053E744@sda21(r0)
    stfs 0, 0x26c(28)
    stfs 0, 0x268(28)
    stfs 0, 0x264(28)
    stfs 0, 0x44(28)
    stfs 0, 0x40(28)
    stfs 0, 0x3c(28)
    lwz 0, 0x248(28)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_801AB58C
    li 0, 0xa
    stw 0, 0x230(28)
    .4byte 0x4800000C # b .L_801AB594
L_801AB58C:
    li 0, 0xc
    stw 0, 0x230(28)
L_801AB594:
    lwz 0, 0x248(28)
    xori 0, 0, 0x1
    stw 0, 0x248(28)
    .4byte 0x480000DC # b .L_801AB67C
    li 3, 0x0
    li 0, 0xb
    stw 3, 0x234(28)
    stw 3, 0x244(28)
    stw 0, 0x230(28)
    lwz 0, 0x234(28)
    cmpwi 0, 0x0
    .4byte 0x408200BC # bne .L_801AB67C
    li 0, 0xc
    stw 0, 0x234(28)
    lwz 3, 0x244(28)
    addi 0, 3, 0x10
    stw 0, 0x250(28)
    lwz 3, 0x244(28)
    addi 0, 3, 0x1
    stw 0, 0x244(28)
    lwz 0, 0x244(28)
    cmpwi 0, 0x2
    .4byte 0x40810090 # ble .L_801AB67C
    lis 4, 0xa04
    li 3, 0x1
    addi 4, 4, 0x10
    li 0, 0x8
    stw 4, 0xb0(28)
    stw 3, 0x248(28)
    stw 0, 0x230(28)
    .4byte 0x48000070 # b .L_801AB67C
    lis 3, 0xa04
    li 4, 0x0
    addi 0, 3, 0x4
    li 3, 0x2
    stw 0, 0xb0(28)
    li 0, 0xd
    stw 4, 0x234(28)
    stw 3, 0x244(28)
    stw 0, 0x230(28)
    lwz 0, 0x234(28)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_801AB67C
    li 0, 0xc
    stw 0, 0x234(28)
    lwz 3, 0x244(28)
    addi 0, 3, 0x10
    stw 0, 0x250(28)
    lwz 3, 0x244(28)
    subi 0, 3, 0x1
    stw 0, 0x244(28)
    lwz 0, 0x244(28)
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_801AB67C
    li 3, 0x0
    li 0, 0x8
    stw 3, 0x248(28)
    stw 0, 0x230(28)
L_801AB67C:
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    psq_l 29, 0x58(1), 0, 0
    lfd 29, 0x50(1)
    lmw 27, 0x3c(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

