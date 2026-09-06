# fn_801AAC8C - GOMA (Gohma) cluster, 1/7. Vtable slot 8. Builds a
# scrambled 16-entry index buffer on the stack (values 0-15 written in a
# rotated/interleaved byte order - a "trail point order" table), computes
# per-state scale/decay constants (state 0/2 use one fixed scale, else a
# different one), resolves a related object via the per-instance lookup
# table lbl_804A3020 indexed by this->0x250 combined with the global
# registry lbl_8053AAF8->0xa4, invokes THAT object's own vtable slot 0x18
# virtual method, then calls fn_801EFD34 (an effect/trail emission
# primitive) with the scrambled buffer + counts. Likely an effect/trail
# spawn callback (leg-trail or eye-afterimage effect for the boss).
.section extab, "a"
.balign 4
.global etb_80007AAC
etb_80007AAC:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_80007AAC, 8

.section extabindex, "a"
.balign 4
.global eti_80014980
eti_80014980:
    .4byte fn_801AAC8C
    .4byte 0x000001FC
    .4byte etb_80007AAC
.size eti_80014980, 12

.text
.balign 4
.global fn_801AAC8C

fn_801AAC8C:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stw 31, 0x7c(1)
    stw 30, 0x78(1)
    li 0, -0x1
    mr 31, 3
    stw 0, 0x48(1)
    addi 9, 1, 0x38
    li 10, 0x0
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_801AAD24
L_801AACC4:
    clrlwi 0, 10, 24
    addi 7, 10, 0x5
    addi 5, 10, 0x1
    stbx 10, 9, 0
    clrlwi 0, 5, 24
    addi 3, 10, 0x2
    stbx 5, 9, 0
    clrlwi 0, 3, 24
    addi 4, 10, 0x3
    addi 8, 10, 0x4
    stbx 3, 9, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 10, 0x6
    stbx 4, 9, 0
    clrlwi 0, 8, 24
    addi 3, 10, 0x7
    clrlwi 4, 5, 24
    stbx 8, 9, 0
    clrlwi 0, 3, 24
    addi 10, 10, 0x8
    stbx 7, 9, 6
    stbx 5, 9, 4
    stbx 3, 9, 0
L_801AAD24:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801AACC4
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x48(1)
    stw 5, 0x4c(1)
    stw 5, 0x50(1)
    stb 5, 0x54(1)
    stb 5, 0x55(1)
    stb 5, 0x56(1)
    stb 4, 0x57(1)
    stb 4, 0x58(1)
    stb 5, 0x59(1)
    stb 5, 0x5a(1)
    stb 5, 0x5b(1)
    stb 5, 0x5c(1)
    stb 5, 0x5d(1)
    stb 4, 0x5e(1)
    stw 3, 0x60(1)
    stb 4, 0x64(1)
    stb 5, 0x65(1)
    stb 5, 0x66(1)
    stw 6, 0x68(1)
    stw 5, 0x6c(1)
    stw 0, 0x70(1)
    lwz 0, 0x98(31)
    lfs 2, 0x270(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_801AADB0
    .4byte 0xC002B7A0 # lfs f0, lbl_8053E740@sda21(r0)
    fmuls 2, 2, 0
L_801AADB0:
    lfs 1, 0x274(31)
    addi 0, 1, 0x8
    .4byte 0xC002B7A4 # lfs f0, lbl_8053E744@sda21(r0)
    li 30, 0x4
    stfs 2, 0x8(1)
    .4byte 0xC3E2B7A8 # lfs f31, lbl_8053E748@sda21(r0)
    stfs 0, 0xc(1)
    stfs 0, 0x10(1)
    stfs 0, 0x18(1)
    stfs 1, 0x1c(1)
    stfs 0, 0x20(1)
    stfs 0, 0x28(1)
    stfs 0, 0x2c(1)
    stfs 1, 0x30(1)
    stfs 0, 0x14(1)
    stfs 0, 0x24(1)
    stfs 0, 0x34(1)
    stw 0, 0x50(1)
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_801AAE0C
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_801AAE14
L_801AAE0C:
    li 30, 0x3
    .4byte 0xC3E2B7AC # lfs f31, lbl_8053E74C@sda21(r0)
L_801AAE14:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lis 4, lbl_804A3020@ha
    lwz 0, 0x250(31)
    lis 6, 0x5449
    lwz 3, 0xa4(3)
    addi 5, 4, lbl_804A3020@l
    slwi 0, 0, 2
    addi 4, 6, 0x4d47
    lwz 12, 0x0(3)
    lwzx 5, 5, 0
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022B7A4 # lfs f1, lbl_8053E744@sda21(r0)
    mr 4, 3
    fmr 2, 31
    mr 3, 31
    fmr 3, 1
    mr 6, 30
    addi 5, 1, 0x38
    bl fn_801EFD34
    psq_l 31, 0x88(1), 0, 0
    lwz 0, 0x94(1)
    lfd 31, 0x80(1)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

