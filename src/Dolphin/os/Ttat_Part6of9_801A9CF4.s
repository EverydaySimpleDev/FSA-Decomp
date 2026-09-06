# TTAT cluster, part 6/9 (Track A byte-match + overview - 1904B).
# update() state handler #2 - uses effect spawn fn_8013CC50, its own
# private helper fn_801AA8F4 (landed alongside), the confirmed
# knockback fn_801F3D94, the generic FourCC actor dispatcher
# fn_801F9484, fn_801F0E34/fn_801F285C/fn_801F2B7C/fn_801F37AC/
# fn_801F666C/ClassifyBamAngleToQuadrant/SpatialRegistry_GetBase, plus unfamiliar
# fn_8023B6CC/fn_80458880.
.section extab, "a"
.balign 4
.global etb_80007A84
etb_80007A84:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80007A84, 8

.section extabindex, "a"
.balign 4
.global eti_80014944
eti_80014944:
    .4byte fn_801A9CF4
    .4byte 0x00000770
    .4byte etb_80007A84
.size eti_80014944, 12

.text
.balign 4
.global fn_801A9CF4

fn_801A9CF4:
    stwu 1, -0x40(1)
    mflr 0
    li 4, 0x0
    stw 0, 0x44(1)
    li 0, 0x2710
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    stw 0, 0x108(3)
    bl fn_801F3D94
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x40810260 # ble .L_801A9F8C
    lbz 0, 0x26c(31)
    cmplwi 0, 0x0
    .4byte 0x40820254 # bne .L_801A9F8C
    lwz 30, 0x268(31)
    cmpwi 30, 0x0
    .4byte 0x41800234 # blt .L_801A9F78
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    mr. 30, 3
    .4byte 0x41820220 # beq .L_801A9F78
    lwz 0, 0x250(30)
    cmpwi 0, 0x0
    .4byte 0x40810214 # ble .L_801A9F78
    .4byte 0xC022B770 # lfs f1, lbl_8053E710@sda21(r0)
    mr 3, 31
    .4byte 0xC002B774 # lfs f0, lbl_8053E714@sda21(r0)
    li 4, 0x0
    stfs 1, 0x60(31)
    li 5, 0x0
    li 6, 0x1
    li 7, -0x1
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    bl fn_801F285C
    lwz 0, 0x264(31)
    mr. 28, 3
    slwi 29, 0, 1
    .4byte 0x418001D4 # blt .L_801A9F78
    cmpw 28, 0
    .4byte 0x408200CC # bne .L_801A9E78
    mr 3, 31
    addi 5, 31, 0xc
    li 4, 0x0
    li 6, 0x3
    li 7, 0x0
    li 8, -0x1
    bl fn_801F37AC
    .4byte 0xC022B748 # lfs f1, lbl_8053E6E8@sda21(r0)
    lis 4, 0x5
    .4byte 0xC002B778 # lfs f0, lbl_8053E718@sda21(r0)
    mr 3, 31
    stfs 1, 0x60(31)
    addi 4, 4, 0x2d
    li 5, 0x0
    stfs 0, 0x64(31)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    bl fn_801F0E34
    lis 3, lbl_804A2F18@ha
    slwi 29, 29, 1
    addi 4, 3, lbl_804A2F18@l
    lwz 3, 0x4(31)
    lhzx 5, 4, 29
    addi 4, 31, 0xc
    .4byte 0xC022B760 # lfs f1, lbl_8053E700@sda21(r0)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, lbl_804A2F18@ha
    lwz 3, 0x4(31)
    addi 0, 4, lbl_804A2F18@l
    .4byte 0xC022B760 # lfs f1, lbl_8053E700@sda21(r0)
    add 5, 0, 29
    addi 4, 31, 0xc
    lhz 5, 0x2(5)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x0
    stw 0, 0x250(31)
    lwz 3, 0x250(30)
    subi 0, 3, 0x1
    stw 0, 0x250(30)
    .4byte 0x48000074 # b .L_801A9EE8
L_801A9E78:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x6
    li 5, -0x1
    bl fn_80458880
    li 0, 0x1
    .4byte 0xC022B760 # lfs f1, lbl_8053E700@sda21(r0)
    stw 0, 0x244(31)
    addi 4, 31, 0xc
    li 5, 0x482
    li 6, 0x0
    lwz 3, 0x4(31)
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B760 # lfs f1, lbl_8053E700@sda21(r0)
    li 5, 0x483
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x1
    stb 0, 0x26c(30)
L_801A9EE8:
    mr 3, 28
    bl fn_8023B6CC
    lwz 0, 0x260(31)
    cmpwi 0, 0x3
    .4byte 0x41820078 # beq .L_801A9F70
    li 3, 0x3
    li 0, 0x0
    stw 3, 0x260(31)
    stb 0, 0x2b0(31)
    stw 0, 0x234(31)
    stw 0, 0x240(31)
    lwz 0, 0x264(31)
    slwi 0, 0, 3
    stw 0, 0x25c(31)
    lwz 0, 0x260(31)
    cmpwi 0, 0x3
    .4byte 0x4182002C # beq .L_801A9F54
    .4byte 0x40800010 # bge .L_801A9F3C
    cmpwi 0, 0x2
    .4byte 0x40800014 # bge .L_801A9F48
    .4byte 0x48000028 # b .L_801A9F60
L_801A9F3C:
    cmpwi 0, 0x5
    .4byte 0x40800020 # bge .L_801A9F60
    .4byte 0x4800000C # b .L_801A9F50
L_801A9F48:
    stw 3, 0x240(31)
    .4byte 0x48000014 # b .L_801A9F60
L_801A9F50:
    stw 3, 0x240(31)
L_801A9F54:
    lwz 3, 0x25c(31)
    addi 0, 3, 0x4
    stw 0, 0x25c(31)
L_801A9F60:
    lwz 3, 0x25c(31)
    lwz 0, 0x240(31)
    add 0, 3, 0
    stw 0, 0x24c(31)
L_801A9F70:
    li 0, 0x7
    stw 0, 0x230(31)
L_801A9F78:
    mr 3, 31
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
L_801A9F8C:
    lwz 3, 0x230(31)
    subi 0, 3, 0x5
    cmplwi 0, 0x6
    .4byte 0x418104A4 # bgt .L_801AA43C
    lis 3, jumptable_804A3004@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A3004@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 3, 0x0
    stw 3, 0x244(31)
    lwz 0, 0x260(31)
    cmpwi 0, 0x0
    .4byte 0x41820078 # beq .L_801AA03C
    stw 3, 0x260(31)
    stb 3, 0x2b0(31)
    stw 3, 0x234(31)
    stw 3, 0x240(31)
    lwz 0, 0x264(31)
    slwi 0, 0, 3
    stw 0, 0x25c(31)
    lwz 0, 0x260(31)
    cmpwi 0, 0x3
    .4byte 0x41820034 # beq .L_801AA020
    .4byte 0x40800010 # bge .L_801AA000
    cmpwi 0, 0x2
    .4byte 0x40800014 # bge .L_801AA00C
    .4byte 0x48000030 # b .L_801AA02C
L_801AA000:
    cmpwi 0, 0x5
    .4byte 0x40800028 # bge .L_801AA02C
    .4byte 0x48000010 # b .L_801AA018
L_801AA00C:
    li 0, 0x3
    stw 0, 0x240(31)
    .4byte 0x48000018 # b .L_801AA02C
L_801AA018:
    li 0, 0x3
    stw 0, 0x240(31)
L_801AA020:
    lwz 3, 0x25c(31)
    addi 0, 3, 0x4
    stw 0, 0x25c(31)
L_801AA02C:
    lwz 3, 0x25c(31)
    lwz 0, 0x240(31)
    add 0, 3, 0
    stw 0, 0x24c(31)
L_801AA03C:
    li 0, 0x6
    stw 0, 0x230(31)
    lwz 29, 0x268(31)
    cmpwi 29, 0x0
    .4byte 0x41800024 # blt .L_801AA070
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_801AA070
    lwz 0, 0x250(3)
    cmpwi 0, 0x0
    .4byte 0x408103D0 # ble .L_801AA43C
L_801AA070:
    lbz 0, 0x26c(31)
    cmplwi 0, 0x1
    .4byte 0x408203C4 # bne .L_801AA43C
    lwz 0, 0x260(31)
    cmpwi 0, 0x1
    .4byte 0x41820080 # beq .L_801AA104
    li 3, 0x1
    li 0, 0x0
    stw 3, 0x260(31)
    stb 0, 0x2b0(31)
    stw 0, 0x234(31)
    stw 0, 0x240(31)
    lwz 0, 0x264(31)
    slwi 0, 0, 3
    stw 0, 0x25c(31)
    lwz 0, 0x260(31)
    cmpwi 0, 0x3
    .4byte 0x41820034 # beq .L_801AA0E8
    .4byte 0x40800010 # bge .L_801AA0C8
    cmpwi 0, 0x2
    .4byte 0x40800014 # bge .L_801AA0D4
    .4byte 0x48000030 # b .L_801AA0F4
L_801AA0C8:
    cmpwi 0, 0x5
    .4byte 0x40800028 # bge .L_801AA0F4
    .4byte 0x48000010 # b .L_801AA0E0
L_801AA0D4:
    li 0, 0x3
    stw 0, 0x240(31)
    .4byte 0x48000018 # b .L_801AA0F4
L_801AA0E0:
    li 0, 0x3
    stw 0, 0x240(31)
L_801AA0E8:
    lwz 3, 0x25c(31)
    addi 0, 3, 0x4
    stw 0, 0x25c(31)
L_801AA0F4:
    lwz 3, 0x25c(31)
    lwz 0, 0x240(31)
    add 0, 3, 0
    stw 0, 0x24c(31)
L_801AA104:
    li 0, 0xa
    stw 0, 0x230(31)
    .4byte 0x48000330 # b .L_801AA43C
    lbz 0, 0x2b0(31)
    cmplwi 0, 0x0
    .4byte 0x41820324 # beq .L_801AA43C
    lbz 0, 0x26c(31)
    cmplwi 0, 0x1
    .4byte 0x40820318 # bne .L_801AA43C
    li 0, 0x8
    stw 0, 0x230(31)
    .4byte 0x4800030C # b .L_801AA43C
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_801AA174
    lwz 29, 0x268(31)
    cmpwi 29, 0x0
    .4byte 0x41800024 # blt .L_801AA16C
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_801AA16C
    lwz 4, 0x250(3)
    addi 0, 4, 0x1
    stw 0, 0x250(3)
L_801AA16C:
    li 0, 0x1
    stw 0, 0x250(31)
L_801AA174:
    lwz 0, 0x260(31)
    cmpwi 0, 0x4
    .4byte 0x41820080 # beq .L_801AA1FC
    li 3, 0x4
    li 0, 0x0
    stw 3, 0x260(31)
    stb 0, 0x2b0(31)
    stw 0, 0x234(31)
    stw 0, 0x240(31)
    lwz 0, 0x264(31)
    slwi 0, 0, 3
    stw 0, 0x25c(31)
    lwz 0, 0x260(31)
    cmpwi 0, 0x3
    .4byte 0x41820034 # beq .L_801AA1E0
    .4byte 0x40800010 # bge .L_801AA1C0
    cmpwi 0, 0x2
    .4byte 0x40800014 # bge .L_801AA1CC
    .4byte 0x48000030 # b .L_801AA1EC
L_801AA1C0:
    cmpwi 0, 0x5
    .4byte 0x40800028 # bge .L_801AA1EC
    .4byte 0x48000010 # b .L_801AA1D8
L_801AA1CC:
    li 0, 0x3
    stw 0, 0x240(31)
    .4byte 0x48000018 # b .L_801AA1EC
L_801AA1D8:
    li 0, 0x3
    stw 0, 0x240(31)
L_801AA1E0:
    lwz 3, 0x25c(31)
    addi 0, 3, 0x4
    stw 0, 0x25c(31)
L_801AA1EC:
    lwz 3, 0x25c(31)
    lwz 0, 0x240(31)
    add 0, 3, 0
    stw 0, 0x24c(31)
L_801AA1FC:
    li 0, 0x9
    stw 0, 0x230(31)
    lbz 0, 0x2b0(31)
    cmplwi 0, 0x0
    .4byte 0x41820230 # beq .L_801AA43C
    lwz 0, 0x260(31)
    cmpwi 0, 0x1
    .4byte 0x41820080 # beq .L_801AA298
    li 3, 0x1
    li 0, 0x0
    stw 3, 0x260(31)
    stb 0, 0x2b0(31)
    stw 0, 0x234(31)
    stw 0, 0x240(31)
    lwz 0, 0x264(31)
    slwi 0, 0, 3
    stw 0, 0x25c(31)
    lwz 0, 0x260(31)
    cmpwi 0, 0x3
    .4byte 0x41820034 # beq .L_801AA27C
    .4byte 0x40800010 # bge .L_801AA25C
    cmpwi 0, 0x2
    .4byte 0x40800014 # bge .L_801AA268
    .4byte 0x48000030 # b .L_801AA288
L_801AA25C:
    cmpwi 0, 0x5
    .4byte 0x40800028 # bge .L_801AA288
    .4byte 0x48000010 # b .L_801AA274
L_801AA268:
    li 0, 0x3
    stw 0, 0x240(31)
    .4byte 0x48000018 # b .L_801AA288
L_801AA274:
    li 0, 0x3
    stw 0, 0x240(31)
L_801AA27C:
    lwz 3, 0x25c(31)
    addi 0, 3, 0x4
    stw 0, 0x25c(31)
L_801AA288:
    lwz 3, 0x25c(31)
    lwz 0, 0x240(31)
    add 0, 3, 0
    stw 0, 0x24c(31)
L_801AA298:
    li 0, 0xa
    stw 0, 0x230(31)
    lbz 0, 0x2b0(31)
    cmplwi 0, 0x0
    .4byte 0x41820194 # beq .L_801AA43C
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x408200D4 # bne .L_801AA388
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x2e
    li 5, 0x0
    bl fn_801F0E34
    bl SpatialRegistry_GetBase
    lis 4, 0x4f4b
    lwz 5, 0x4(31)
    addi 4, 4, 0x544d
    addi 6, 31, 0xc
    li 7, 0x4
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 30, 3
    .4byte 0x41800094 # blt .L_801AA388
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    mr. 30, 3
    .4byte 0x41820080 # beq .L_801AA388
    .4byte 0xC042B780 # lfs f2, lbl_8053E720@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    lfs 1, 0x2b4(31)
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC002B740 # lfs f0, lbl_8053E6E0@sda21(r0)
    fadds 1, 2, 1
    .4byte 0xC062B77C # lfs f3, lbl_8053E71C@sda21(r0)
    stfs 0, 0x10(1)
    fctiwz 1, 1
    stfd 1, 0x20(1)
    stfd 1, 0x18(1)
    lwz 0, 0x24(1)
    lwz 5, 0x1c(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 4, 0
    rlwinm 0, 5, 30, 18, 28
    lfs 1, 0x4(3)
    lfsx 2, 4, 0
    fmuls 1, 3, 1
    fmuls 2, 3, 2
    stfs 1, 0xc(1)
    stfs 2, 0x8(1)
    psq_l 1, 0x8(1), 0, 0
    psq_st 1, 0x3c(30), 0, 0
    stfs 0, 0x44(30)
    lfs 0, 0x2b4(31)
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 3, 0x2c(1)
    bl ClassifyBamAngleToQuadrant
    stw 3, 0x98(30)
L_801AA388:
    lwz 0, 0x260(31)
    cmpwi 0, 0x2
    .4byte 0x41820080 # beq .L_801AA410
    li 3, 0x2
    li 0, 0x0
    stw 3, 0x260(31)
    stb 0, 0x2b0(31)
    stw 0, 0x234(31)
    stw 0, 0x240(31)
    lwz 0, 0x264(31)
    slwi 0, 0, 3
    stw 0, 0x25c(31)
    lwz 0, 0x260(31)
    cmpwi 0, 0x3
    .4byte 0x41820034 # beq .L_801AA3F4
    .4byte 0x40800010 # bge .L_801AA3D4
    cmpwi 0, 0x2
    .4byte 0x40800014 # bge .L_801AA3E0
    .4byte 0x48000030 # b .L_801AA400
L_801AA3D4:
    cmpwi 0, 0x5
    .4byte 0x40800028 # bge .L_801AA400
    .4byte 0x48000010 # b .L_801AA3EC
L_801AA3E0:
    li 0, 0x3
    stw 0, 0x240(31)
    .4byte 0x48000018 # b .L_801AA400
L_801AA3EC:
    li 0, 0x3
    stw 0, 0x240(31)
L_801AA3F4:
    lwz 3, 0x25c(31)
    addi 0, 3, 0x4
    stw 0, 0x25c(31)
L_801AA400:
    lwz 3, 0x25c(31)
    lwz 0, 0x240(31)
    add 0, 3, 0
    stw 0, 0x24c(31)
L_801AA410:
    li 0, 0xb
    stw 0, 0x230(31)
    .4byte 0x48000024 # b .L_801AA43C
    lbz 0, 0x2b0(31)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_801AA43C
    li 3, 0x0
    li 0, 0x5
    stw 3, 0x244(31)
    stb 3, 0x26c(31)
    stw 0, 0x230(31)
L_801AA43C:
    mr 3, 31
    bl fn_801AA8F4
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

