.section extab, "a"
.balign 4
.global etb_80006AAC
etb_80006AAC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80006AAC, 8

.section extabindex, "a"
.balign 4
.global eti_80013390
eti_80013390:
    .4byte fn_8013AC90
    .4byte 0x00000374
    .4byte etb_80006AAC
.size eti_80013390, 12

# fn_8013AC90(this=r30, gridX/Z int=r5/r6, probeTable*=r7) - closes out the
# fn_8013AB2C..AC54 cluster. Uses `this`'s position (0x0/0x4/0x8, read via
# fn_8013ABCC's transform slots) plus grid coords (r5,r6) packed via
# slwi-10/slwi-7 (x*1024 + z*128 - a probe-grid cell hash) to fetch and
# bilinearly blend a pair of paired-single probe entries out of `probeTable`,
# scale the blended color by `lbl_8053CDE0`, then build a PSMTXConcat'd
# matrix from the result. Reads a 3rd sub-object off the camera-cue singleton
# (lbl_8053AB10->0x24) and hands it to fn_8030DFE8/fn_8030DD20, then fires a
# long battery of fn_8005XXXX calls with small integer literal args - not yet
# decompiled, but the shape (many terse enum-like args, bracketed by the same
# fn_8005F4E0(1)/fn_8005F50C(0) toggle pair fn_8013AB2C uses) matches a
# hardware graphics-state push, consistent with this being an ambient
# lighting/fog-probe sampling + render-state setup routine.
.text
.balign 4
.global fn_8013AC90

fn_8013AC90:
    stwu 1, -0x80(1)
    mflr 0
    .4byte 0xC0429E3C # lfs f2, lbl_8053CDDC@sda21(r0)
    cmplwi 7, 0x0
    stw 0, 0x84(1)
    stw 31, 0x7c(1)
    mr 31, 4
    stw 30, 0x78(1)
    mr 30, 3
    stfs 1, 0x3c(1)
    stfs 2, 0x40(1)
    stfs 2, 0x44(1)
    stfs 2, 0x48(1)
    stfs 2, 0x4c(1)
    stfs 2, 0x50(1)
    stfs 1, 0x54(1)
    stfs 2, 0x58(1)
    stfs 2, 0x5c(1)
    stfs 1, 0x60(1)
    stfs 2, 0x64(1)
    stfs 2, 0x68(1)
    .4byte 0x418200B0 # beq .L_8013AD94
    lfs 0, 0x8(30)
    fcmpo cr0, 0, 2
    .4byte 0x40810014 # ble .L_8013AD04
    cmpwi 5, 0x1
    .4byte 0x4080000C # bge .L_8013AD04
    addi 5, 5, 0x1
    subi 6, 6, 0x1
L_8013AD04:
    slwi 3, 5, 10
    slwi 0, 6, 7
    add 3, 3, 0
    psq_l 0, 0x18(7), 0, 0
    xoris 4, 3, 0x8000
    lis 0, 0x4330
    stw 4, 0x74(1)
    addi 3, 1, 0xc
    psq_l 2, 0x28(7), 0, 0
    addi 4, 1, 0x3c
    stw 0, 0x70(1)
    mr 5, 4
    .4byte 0xC8229E48 # lfd f1, lbl_8053CDE8@sda21(r0)
    psq_st 0, 0x18(3), 0, 0
    lfd 0, 0x70(1)
    psq_st 2, 0x28(3), 0, 0
    fsubs 2, 0, 1
    lfs 1, 0x28(1)
    lfs 0, 0x38(1)
    psq_l 5, 0x0(7), 0, 0
    fadds 1, 1, 2
    psq_l 4, 0x8(7), 0, 0
    fadds 0, 0, 2
    psq_l 3, 0x10(7), 0, 0
    psq_l 2, 0x20(7), 0, 0
    psq_st 5, 0x0(3), 0, 0
    psq_st 4, 0x8(3), 0, 0
    psq_st 3, 0x10(3), 0, 0
    psq_st 2, 0x20(3), 0, 0
    stfs 1, 0x28(1)
    stfs 0, 0x38(1)
    bl PSMTXConcat
    lfs 3, 0x0(30)
    lfs 4, 0x4(30)
    lfs 5, 0x8(30)
    .4byte 0x48000058 # b .L_8013ADE8
L_8013AD94:
    lfs 5, 0x8(30)
    fcmpo cr0, 5, 2
    .4byte 0x40810014 # ble .L_8013ADB0
    cmpwi 5, 0x1
    .4byte 0x4080000C # bge .L_8013ADB0
    addi 5, 5, 0x1
    subi 6, 6, 0x1
L_8013ADB0:
    slwi 3, 5, 10
    slwi 0, 6, 7
    add 3, 3, 0
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    stw 0, 0x70(1)
    .4byte 0xC8429E48 # lfd f2, lbl_8053CDE8@sda21(r0)
    stw 3, 0x74(1)
    lfs 0, 0x4(30)
    lfd 1, 0x70(1)
    lfs 3, 0x0(30)
    fsubs 1, 1, 2
    fadds 4, 0, 1
    fadds 5, 5, 1
L_8013ADE8:
    lfs 2, 0x48(1)
    li 4, 0x0
    lfs 1, 0x58(1)
    lfs 0, 0x68(1)
    fadds 2, 2, 3
    fadds 1, 1, 4
    lfs 4, 0x4c(1)
    .4byte 0xC1229E40 # lfs f9, lbl_8053CDE0@sda21(r0)
    fadds 0, 0, 5
    lfs 3, 0x50(1)
    lfs 6, 0x54(1)
    lfs 5, 0x5c(1)
    fmuls 8, 4, 9
    lfs 4, 0x60(1)
    fmuls 7, 3, 9
    lfs 3, 0x64(1)
    fmuls 6, 6, 9
    fmuls 5, 5, 9
    fmuls 4, 4, 9
    stfs 8, 0x4c(1)
    fmuls 3, 3, 9
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 7, 0x50(1)
    stfs 6, 0x54(1)
    stfs 5, 0x5c(1)
    stfs 4, 0x60(1)
    stfs 3, 0x64(1)
    stfs 2, 0x48(1)
    stfs 1, 0x58(1)
    stfs 0, 0x68(1)
    lwz 3, 0x24(3)
    bl fn_8030DFE8
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 1, 0x3c
    lwz 3, 0x24(3)
    bl fn_8030DD20
    bl fn_8005AD7C
    li 3, 0x9
    li 4, 0x1
    bl fn_8005A464
    li 3, 0x0
    li 4, 0x9
    li 5, 0x1
    li 6, 0x4
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x4
    li 4, 0x1
    li 5, 0x0
    li 6, 0x0
    li 7, 0x3
    li 8, 0x2
    li 9, 0x2
    bl fn_8005D404
    li 3, 0x1
    bl fn_8005D3C8
    li 3, 0x0
    bl fn_8005B93C
    lwz 0, 0x0(31)
    addi 4, 1, 0x8
    li 3, 0x1
    stw 0, 0x8(1)
    bl fn_8005EBC4
    li 3, 0x0
    li 4, 0xff
    li 5, 0xff
    li 6, 0x4
    bl fn_8005EF80
    li 3, 0x0
    li 4, 0xf
    li 5, 0x2
    li 6, 0xa
    li 7, 0xf
    bl fn_8005EA6C
    li 3, 0x0
    li 4, 0x7
    li 5, 0x7
    li 6, 0x7
    li 7, 0x1
    bl fn_8005EAB0
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EAF4
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EB5C
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    bl fn_8005EDE8
    li 3, 0x0
    bl fn_8005E8DC
    li 3, 0x1
    bl fn_8005F11C
    li 3, 0x0
    bl fn_8005E8B8
    li 3, 0x1
    li 4, 0x4
    li 5, 0x5
    li 6, 0xf
    bl fn_8005F48C
    li 3, 0x1
    li 4, 0x3
    li 5, 0x1
    bl fn_8005F538
    li 3, 0x0
    bl fn_8005F56C
    li 3, 0x4
    li 4, 0x0
    li 5, 0x0
    li 6, 0x7
    li 7, 0x0
    bl fn_8005EEB0
    li 3, 0x1
    bl fn_8005F4E0
    li 3, 0x0
    bl fn_8005F50C
    li 3, 0x2
    bl fn_8005C46C
    li 3, 0x2
    bl fn_8005FB40
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    mtlr 0
    addi 1, 1, 0x80
    blr
