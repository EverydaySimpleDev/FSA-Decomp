/*
 * NEW ACTOR (vtable lbl_804A5A30) - fn_80206168(this). **Tiered rupee-
 * reward burst**: drains the reward pool (this->0x344, filled by
 * fn_802055A4's single-reward spawns) in randomized bursts, each tier
 * (50/20/5/1, via thresholds 0x32/0x14/0x5) determining how much value
 * to spawn per "RUPY" actor via fn_801F8544 - spawning multiple rupees
 * with PRNG-randomized launch velocities until the pool is exhausted.
 * Reads as a "large reward chest/defeat burst" mechanic distinct from
 * TINK's single-reward drop.
 */
.section extab, "a"
.balign 4
.global etb_80009C58
etb_80009C58:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80009C58, 8

.section extabindex, "a"
.balign 4
.global eti_80017608
eti_80017608:
    .4byte fn_80206168
    .4byte 0x00000294
    .4byte etb_80009C58
.size eti_80017608, 12

.text
.balign 4
.global fn_80206168

fn_80206168:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 27, 0x2c(1)
    mr 28, 3
    lwz 0, 0x344(3)
    cmplwi 0, 0x0
    .4byte 0x41820264 # beq .L_802063E8
    lwz 3, 0x4(28)
    bl fn_801CD2F8
    mr 30, 3
    li 3, 0x1f
    bl fn_801CD664
    lwz 4, 0x344(28)
    addi 0, 3, 0x14
    cmplw 4, 0
    .4byte 0x41800008 # blt .L_802061B0
    mr 4, 0
L_802061B0:
    clrlwi. 0, 30, 24
    mr 29, 4
    .4byte 0x41820028 # beq .L_802061E0
    cmplwi 4, 0x14
    .4byte 0x41800020 # blt .L_802061E0
    lis 3, 0xcccd
    subi 0, 3, 0x3333
    mulhwu 0, 0, 4
    srwi 0, 0, 4
    mulli 0, 0, 0x14
    subf 0, 0, 4
    subf 29, 0, 4
L_802061E0:
    lwz 0, 0x344(28)
    lis 31, 0x5255
    subf 0, 29, 0
    stw 0, 0x344(28)
    .4byte 0x480001F0 # b .L_802063E0
L_802061F4:
    cmplwi 29, 0x32
    .4byte 0x41800010 # blt .L_80206208
    li 27, 0x3
    subi 29, 29, 0x32
    .4byte 0x480000D4 # b .L_802062D8
L_80206208:
    cmplwi 29, 0x14
    .4byte 0x41800060 # blt .L_8020626C
    clrlwi. 0, 30, 24
    .4byte 0x4082004C # bne .L_80206260
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022C8D0 # lfs f1, lbl_8053F870@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002C8F0 # lfs f0, lbl_8053F890@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x18(1)
    lfs 2, 0x18(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8020626C
L_80206260:
    li 27, 0x2
    subi 29, 29, 0x14
    .4byte 0x48000070 # b .L_802062D8
L_8020626C:
    cmplwi 29, 0x5
    .4byte 0x41800060 # blt .L_802062D0
    clrlwi. 0, 30, 24
    .4byte 0x4082004C # bne .L_802062C4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022C8D0 # lfs f1, lbl_8053F870@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002C8F0 # lfs f0, lbl_8053F890@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 2, 0x14(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_802062D0
L_802062C4:
    li 27, 0x1
    subi 29, 29, 0x5
    .4byte 0x4800000C # b .L_802062D8
L_802062D0:
    li 27, 0x0
    subi 29, 29, 0x1
L_802062D8:
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(28)
    mr 7, 27
    addi 4, 31, 0x5059
    addi 6, 28, 0xc
    bl fn_801F8544
    mr. 27, 3
    .4byte 0x418000EC # blt .L_802063E0
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418200D8 # beq .L_802063E0
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 6, 4, 0x660d
    .4byte 0xC0A2C8D0 # lfs f5, lbl_8053F870@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC062C8D8 # lfs f3, lbl_8053F878@sda21(r0)
    mullw 4, 0, 6
    .4byte 0xC082C8F4 # lfs f4, lbl_8053F894@sda21(r0)
    .4byte 0xC002C8F8 # lfs f0, lbl_8053F898@sda21(r0)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    lwz 0, 0xb4(7)
    srwi 5, 4, 9
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0x10(1)
    lfs 1, 0x10(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 1, 1, 5
    stw 0, 0xb4(7)
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    fmuls 0, 0, 1
    lwz 4, 0xb4(7)
    lwz 0, 0xb4(8)
    srwi 5, 4, 9
    stfs 0, 0x24(1)
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 1, 1, 5
    stw 0, 0xb4(8)
    lwz 0, 0xb4(8)
    fmsubs 1, 3, 1, 5
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    fmuls 1, 4, 1
    stw 0, 0x8(1)
    lfs 2, 0x8(1)
    stfs 1, 0x20(1)
    fsubs 1, 2, 5
    fmsubs 1, 3, 1, 5
    fmuls 1, 4, 1
    stfs 1, 0x1c(1)
    psq_l 1, 0x1c(1), 0, 0
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_802063E0:
    cmplwi 29, 0x0
    .4byte 0x4082FE10 # bne .L_802061F4
L_802063E8:
    lmw 27, 0x2c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

