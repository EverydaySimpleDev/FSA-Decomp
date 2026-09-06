.section extab, "a"
.balign 4
.global etb_80006E2C
etb_80006E2C:
    .4byte 0x098A0000
    .4byte 0x00000000
.size etb_80006E2C, 8

.section extabindex, "a"
.balign 4
.global eti_800138D0
eti_800138D0:
    .4byte fn_8014FD5C
    .4byte 0x00000528
    .4byte etb_80006E2C
.size eti_800138D0, 12

# fn_8014FD5C - SLR1's real draw(). Fully traced structurally (not every
# constant). Builds a 16-entry local scratch buffer (a per-vertex/bone
# color or index table, filled via a small unrolled loop), then branches
# heavily on this->0x94 (category), this->0x230 (FSM state), this->0x288
# and this->0x90 (raw Type) to pick among several real sin/cos-based
# rotation computations (six trig calls building a 3x3-ish rotation basis
# from two angles at this->0x294/0x298) before finally calling the shared
# effect-spawn primitive fn_801F02BC with one of several distinct model
# tables (lbl_80465DBC / lbl_80465DD0) and sub-indices - i.e. SLR1 has
# multiple visually distinct draw paths keyed by both its color Type AND
# its current animation/FSM state, unlike HINO's single-path draw().
.text
.balign 4
.global fn_8014FD5C

fn_8014FD5C:
    stwu 1, -0xe0(1)
    mflr 0
    stw 0, 0xe4(1)
    stfd 31, 0xd0(1)
    psq_st 31, 0xd8(1), 0, 0
    stfd 30, 0xc0(1)
    psq_st 30, 0xc8(1), 0, 0
    stfd 29, 0xb0(1)
    psq_st 29, 0xb8(1), 0, 0
    stfd 28, 0xa0(1)
    psq_st 28, 0xa8(1), 0, 0
    stfd 27, 0x90(1)
    psq_st 27, 0x98(1), 0, 0
    stfd 26, 0x80(1)
    psq_st 26, 0x88(1), 0, 0
    stw 31, 0x7c(1)
    li 0, -0x1
    mr 31, 3
    stw 0, 0x48(1)
    addi 9, 1, 0x38
    li 10, 0x0
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_8014FE18
L_8014FDB8:
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
L_8014FE18:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8014FDB8
    .4byte 0xC002A2B8 # lfs f0, lbl_8053D258@sda21(r0)
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x48(1)
    li 7, 0x0
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
    stfs 0, 0x14(1)
    stfs 0, 0x24(1)
    stfs 0, 0x34(1)
    lhz 0, 0x94(31)
    cmplwi 0, 0x2
    .4byte 0x41820398 # beq .L_80150240
    lbz 0, 0x234(31)
    stb 0, 0x3a(1)
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x418201B4 # beq .L_80150070
    cmpwi 0, 0x3
    .4byte 0x418201AC # beq .L_80150070
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x41820014 # beq .L_8014FEE4
    cmplwi 0, 0x3
    .4byte 0x4182000C # beq .L_8014FEE4
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8014FEEC
L_8014FEE4:
    lbz 0, 0x234(31)
    stb 0, 0x40(1)
L_8014FEEC:
    lhz 0, 0x94(31)
    cmplwi 0, 0x6
    .4byte 0x41800014 # blt .L_8014FF08
    cmplwi 0, 0x9
    .4byte 0x4181000C # bgt .L_8014FF08
    li 0, 0xb
    stb 0, 0x3a(1)
L_8014FF08:
    lwz 0, 0x230(31)
    cmpwi 0, 0xe
    .4byte 0x40820160 # bne .L_80150070
    lfs 30, 0x294(31)
    lfs 29, 0x298(31)
    .4byte 0xC022A2B8 # lfs f1, lbl_8053D258@sda21(r0)
    bl sin
    frsp 28, 1
    fmr 1, 30
    bl sin
    frsp 27, 1
    .4byte 0xC022A2B8 # lfs f1, lbl_8053D258@sda21(r0)
    bl sin
    frsp 26, 1
    .4byte 0xC022A2B8 # lfs f1, lbl_8053D258@sda21(r0)
    bl cos
    frsp 31, 1
    fmr 1, 30
    bl cos
    frsp 30, 1
    .4byte 0xC022A2B8 # lfs f1, lbl_8053D258@sda21(r0)
    bl cos
    frsp 3, 1
    addi 0, 1, 0x8
    fmuls 7, 30, 26
    stw 0, 0x50(1)
    fneg 6, 27
    fmuls 10, 31, 3
    fmuls 2, 28, 27
    fmuls 9, 31, 26
    fmuls 1, 28, 26
    fmuls 0, 28, 3
    fmuls 8, 30, 3
    fmsubs 5, 2, 3, 9
    fmadds 4, 2, 26, 10
    fmuls 3, 28, 30
    fmadds 2, 10, 27, 1
    fmsubs 1, 9, 27, 0
    fmuls 0, 31, 30
    fmuls 8, 29, 8
    fmuls 7, 29, 7
    fmuls 6, 29, 6
    fmuls 5, 29, 5
    stfs 8, 0x8(1)
    fmuls 4, 29, 4
    fmuls 3, 29, 3
    stfs 7, 0x18(1)
    fmuls 2, 29, 2
    fmuls 1, 29, 1
    stfs 6, 0x28(1)
    fmuls 0, 29, 0
    stfs 5, 0xc(1)
    stfs 4, 0x1c(1)
    stfs 3, 0x2c(1)
    stfs 2, 0x10(1)
    stfs 1, 0x20(1)
    stfs 0, 0x30(1)
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x41820014 # beq .L_80150008
    cmplwi 0, 0x3
    .4byte 0x4182000C # beq .L_80150008
    cmplwi 0, 0x1
    .4byte 0x40820038 # bne .L_8015003C
L_80150008:
    .4byte 0xC022A2BC # lfs f1, lbl_8053D25C@sda21(r0)
    lis 3, lbl_80465DBC@ha
    lwz 5, 0x274(31)
    addi 4, 3, lbl_80465DBC@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x1f4
    addi 6, 1, 0x38
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    bl fn_801F02BC
    .4byte 0x48000208 # b .L_80150240
L_8015003C:
    .4byte 0xC022A2BC # lfs f1, lbl_8053D25C@sda21(r0)
    lis 3, lbl_80465DD0@ha
    lwz 5, 0x274(31)
    addi 4, 3, lbl_80465DD0@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x8f
    addi 6, 1, 0x38
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    bl fn_801F02BC
    .4byte 0x480001D4 # b .L_80150240
L_80150070:
    lwz 0, 0x90(31)
    cmplwi 0, 0x6
    .4byte 0x41820010 # beq .L_80150088
    lwz 0, 0x288(31)
    cmpwi 0, 0x3
    .4byte 0x40820044 # bne .L_801500C8
L_80150088:
    lfs 3, 0x5c(31)
    addi 0, 1, 0x8
    lfs 2, 0x58(31)
    li 7, 0x3
    lfs 1, 0x54(31)
    .4byte 0xC002A2B8 # lfs f0, lbl_8053D258@sda21(r0)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    stfs 0, 0x10(1)
    stfs 0, 0x18(1)
    stfs 2, 0x1c(1)
    stfs 0, 0x20(1)
    stfs 0, 0x28(1)
    stfs 0, 0x2c(1)
    stfs 3, 0x30(1)
    stw 0, 0x50(1)
L_801500C8:
    lwz 0, 0x230(31)
    cmpwi 0, 0x8
    .4byte 0x4082004C # bne .L_8015011C
    lwz 0, 0x248(31)
    li 3, 0x0
    cmpwi 0, 0x64
    .4byte 0x40800028 # bge .L_80150108
    cmpwi 0, 0x32
    .4byte 0x40800014 # bge .L_801500FC
    rlwinm. 0, 0, 0, 29, 29
    .4byte 0x40820018 # bne .L_80150108
    li 3, 0x1
    .4byte 0x48000010 # b .L_80150108
L_801500FC:
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x40820008 # bne .L_80150108
    li 3, 0x1
L_80150108:
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8015011C
    li 0, 0x50
    stb 0, 0x4c(1)
L_8015011C:
    lwz 0, 0x230(31)
    cmpwi 0, 0x9
    .4byte 0x40820040 # bne .L_80150164
    lfs 3, 0x5c(31)
    addi 0, 1, 0x8
    lfs 2, 0x58(31)
    lfs 1, 0x54(31)
    .4byte 0xC002A2B8 # lfs f0, lbl_8053D258@sda21(r0)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    stfs 0, 0x10(1)
    stfs 0, 0x18(1)
    stfs 2, 0x1c(1)
    stfs 0, 0x20(1)
    stfs 0, 0x28(1)
    stfs 0, 0x2c(1)
    stfs 3, 0x30(1)
    stw 0, 0x50(1)
L_80150164:
    lwz 0, 0x4(31)
    li 8, 0x0
    cmpwi 0, 0x8
    .4byte 0x41800020 # blt .L_80150190
    lwz 0, 0x90(31)
    cmplwi 0, 0x6
    .4byte 0x41820010 # beq .L_8015018C
    lwz 0, 0x288(31)
    cmpwi 0, 0x3
    .4byte 0x40820008 # bne .L_80150190
L_8015018C:
    li 8, 0x1
L_80150190:
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_801501A4
    cmpwi 0, 0x3
    .4byte 0x40820030 # bne .L_801501D0
L_801501A4:
    .4byte 0xC022A2BC # lfs f1, lbl_8053D25C@sda21(r0)
    lis 3, lbl_80465DD0@ha
    lwz 5, 0x274(31)
    addi 4, 3, lbl_80465DD0@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0xa8
    addi 6, 1, 0x38
    li 9, 0x0
    bl fn_801F02BC
    .4byte 0x48000074 # b .L_80150240
L_801501D0:
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x41820040 # beq .L_80150218
    cmplwi 0, 0x3
    .4byte 0x41820038 # beq .L_80150218
    cmplwi 0, 0x1
    .4byte 0x41820030 # beq .L_80150218
    .4byte 0xC022A2BC # lfs f1, lbl_8053D25C@sda21(r0)
    lis 3, lbl_80465DD0@ha
    lwz 5, 0x274(31)
    addi 4, 3, lbl_80465DD0@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x8f
    addi 6, 1, 0x38
    li 9, 0x0
    bl fn_801F02BC
    .4byte 0x4800002C # b .L_80150240
L_80150218:
    .4byte 0xC022A2BC # lfs f1, lbl_8053D25C@sda21(r0)
    lis 3, lbl_80465DBC@ha
    lwz 5, 0x274(31)
    addi 4, 3, lbl_80465DBC@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x1f4
    addi 6, 1, 0x38
    li 9, 0x0
    bl fn_801F02BC
L_80150240:
    psq_l 31, 0xd8(1), 0, 0
    lfd 31, 0xd0(1)
    psq_l 30, 0xc8(1), 0, 0
    lfd 30, 0xc0(1)
    psq_l 29, 0xb8(1), 0, 0
    lfd 29, 0xb0(1)
    psq_l 28, 0xa8(1), 0, 0
    lfd 28, 0xa0(1)
    psq_l 27, 0x98(1), 0, 0
    lfd 27, 0x90(1)
    psq_l 26, 0x88(1), 0, 0
    lfd 26, 0x80(1)
    lwz 0, 0xe4(1)
    lwz 31, 0x7c(1)
    mtlr 0
    addi 1, 1, 0xe0
    blr

